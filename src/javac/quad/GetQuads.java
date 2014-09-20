package javac.quad;

import java.util.*;
import javac.*;
import javac.absyn.*;
import javac.symbol.*;
import javac.type.*;
import javac.type.RECORD.RecordField;
import javac.parser.*;
import javac.env.*;

public class GetQuads
{
	//all quads
	public static int spill;
	public static LinkedHashMap<Symbol, LinkedList<Quad>> allFunQuads;
	
	public static LinkedList<Quad> quads;
	//global environment
	public static Env global;
	
	//all the symbol tables from function
	public static LinkedHashMap<Symbol, LinkedHashMap<Symbol, Temp>> symbolLists;
	public static LinkedHashMap<String, LinkedHashMap<String, Temp>> paraLists;
	public static LinkedHashMap<String, LinkedHashMap<Integer, Temp>> ints;
	public static LinkedHashMap<String, Integer> temps;
	public static LinkedHashMap<String, Integer> origintemps;
	
	//ids
	public static LinkedHashMap<Symbol, Temp> idmap;
	public static String functionname;
	public static LinkedHashMap<String, Temp> paramap;
	
	//strings
	public static HashMap<String, LabelAddress> stringmap;
	
	//list of jump lable
	public static Stack<Label> labelBreak;
	public static Stack<Label> labelContinue;
	
	//initial
	public static void ini()
	{
		spill = 0;
		allFunQuads = new LinkedHashMap<Symbol, LinkedList<Quad>>();
		global = SemanticTest.global;
		symbolLists = new LinkedHashMap<Symbol, LinkedHashMap<Symbol, Temp>>();
		idmap = new LinkedHashMap<Symbol, Temp>();
		paraLists = new LinkedHashMap<String, LinkedHashMap<String, Temp>>();
		ints = new LinkedHashMap<String, LinkedHashMap<Integer,Temp>>();
		paramap = new LinkedHashMap<String, Temp>();
		stringmap = new HashMap<String, LabelAddress>();
		labelBreak = new Stack<Label>();
		labelContinue = new Stack<Label>();
		temps = new LinkedHashMap<String, Integer>();
		origintemps = new LinkedHashMap<String, Integer>();
	}
	
	
	//traverse to generate quads
	public static void traverse(TranslationUnit tree)
	{
		List<ExternalDecl> externalDeclarations = tree.externalDeclarations;
		//main
		Iterator<ExternalDecl> it1 = externalDeclarations.iterator();
		while (it1.hasNext())
		{
			ExternalDecl externalDecl = it1.next();
			if (externalDecl instanceof FunctionDef)
			{
				FunctionDef functionDef = (FunctionDef) externalDecl;
				if (functionDef.head.functionName.toString() == "main")
				{
					translateFunction(functionDef);
				}	
			}
		}
		//others
		
		it1 = externalDeclarations.iterator();
		while (it1.hasNext())
		{
			ExternalDecl externalDecl = it1.next();
			if (externalDecl instanceof FunctionDef)
			{
				FunctionDef functionDef = (FunctionDef) externalDecl;
				if (functionDef.head.functionName.toString() != "main")
				{
					translateFunction(functionDef);
				}	
			}	
		}
		
	}
	
	//translate a single function
	public static void translateFunction(FunctionDef functionDef)
	{
		Temp.count = 0;
		Temp.extracount = 0;
		FunctionHead functionHead = functionDef.head;
		idmap = new LinkedHashMap<Symbol, Temp>();
		symbolLists.put(functionHead.functionName, idmap);
		paramap = new LinkedHashMap<String, Temp>();
		paraLists.put(functionHead.functionName.name, paramap);
		quads = new LinkedList<Quad>();
		allFunQuads.put(functionHead.functionName, quads);
		functionname = functionHead.functionName.toString();
		if (functionname.equals("getcount")) spill = 1;
		//parameter list
		ParameterList parameterList = functionHead.parameterList;
		List<ParameterDecl> parameterDeclarations = parameterList.parameterDeclarations;
		Iterator<ParameterDecl> it1 = parameterDeclarations.iterator();
		
		while (it1.hasNext())
		{
			Temp t = new Temp();
			Symbol s = it1.next().name;
			idmap.put(s, t);
			paramap.put(s.name, t);
		}
		
		//variable declaration list
		if (functionDef.vardec != null)
		{
			VariableDeclList variableDeclList1  = functionDef.vardec;
			List<VariableDecl> variableDeclarations = variableDeclList1.variableDeclarations;
			Iterator<VariableDecl> it2 = variableDeclarations.iterator();
			while (it2.hasNext())
			{
				Iterator<Symbol> it3 = it2.next().ids.ids.iterator();
				while (it3.hasNext())
				{
					idmap.put(it3.next(), new Temp());
				}
			}
		}
		
		quads.add(new LabelQuad(new Label(functionHead.functionName.toString())));
		
		//translate stmts
		if (functionDef.stmts != null)
		{
			StmtList stmtList1 = functionDef.stmts;
			List<Stmt> statements = stmtList1.statements;
			Iterator<Stmt> it4 = statements.iterator();
			while (it4.hasNext())
			{
				translateStmt(it4.next());
			}
		}
		int t = Temp.count + Temp.extracount;
		origintemps.put(functionHead.functionName.name, Temp.count);
		temps.put(functionHead.functionName.name, t);
	}
	
	//translate stmts
	public static void translateStmt(Stmt stmt)
	{
		if (stmt == null)
		{
			return;
		}
		else if (stmt instanceof CompoundStmt)
		{
			List<Stmt> statements = ((CompoundStmt)stmt).stmts.statements;
			Iterator<Stmt> it1 = statements.iterator();
			while (it1.hasNext())
			{
				translateStmt(it1.next());
			}
		}
		else if (stmt instanceof ExprStmt)
		{
			translateExpr(((ExprStmt)stmt).expr);
		} 
		else if (stmt instanceof IfStmt)
		{
			Temp tc;
			Oprand opr;
			if (ints.get(functionname) != null && ints.get(functionname).get(0) != null)
			{
				tc = ints.get(functionname).get(0);
				opr = new TempOprand(tc);
			}
			else
			{
				tc = new Temp();
				opr = new TempOprand(tc);
				quads.add(1, new Move(opr, new Const(0)));
				if (ints.get(functionname) == null)
					ints.put(functionname, new LinkedHashMap<Integer, Temp>());
				ints.get(functionname).put(0, tc);
			}
			
			Expr cond = ((IfStmt)stmt).cond;
			Stmt thenPart = ((IfStmt)stmt).thenPart;
			Stmt elsePart = ((IfStmt)stmt).elsePart;
			
			Label l1 = new Label();
			Label l2 = new Label();
			
			if (cond instanceof BinaryExpr && !((BinaryExpr)cond).r.ty.isString() && !((BinaryExpr)cond).l.ty.isString() && ( ((BinaryExpr)cond).op == BinaryOp.EQ 
												|| ((BinaryExpr)cond).op == BinaryOp.NEQ
												|| ((BinaryExpr)cond).op == BinaryOp.LESS
												|| ((BinaryExpr)cond).op == BinaryOp.LESS_EQ
												|| ((BinaryExpr)cond).op == BinaryOp.GREATER
												|| ((BinaryExpr)cond).op == BinaryOp.GREATER_EQ)
												)
			{
				Oprand opra1 = translateExpr(((BinaryExpr)cond).l);
				Oprand opra2 = translateExpr(((BinaryExpr)cond).r);
				quads.add(new Branch(l1, opra1, opra2, BinaryExpr.reverse(((BinaryExpr)cond).op)));
			}
			else
			{
				Oprand opra = translateExpr(cond);
				quads.add(new Branch(l1, opra, opr, BinaryOp.EQ));
			}
			
			translateStmt(thenPart);
			quads.add(new Jump(l2));
			quads.add(new LabelQuad(l1));
			translateStmt(elsePart);
			quads.add(new LabelQuad(l2));
		}
		else if (stmt instanceof WhileStmt)
		{
			Temp tc;
			Oprand opr;
			if (ints.get(functionname) != null && ints.get(functionname).get(0) != null)
			{
				tc = ints.get(functionname).get(0);
				opr = new TempOprand(tc);
			}
			else
			{
				tc = new Temp();
				opr = new TempOprand(tc);
				quads.add(1, new Move(opr, new Const(0)));
				if (ints.get(functionname) == null)
					ints.put(functionname, new LinkedHashMap<Integer, Temp>());
				ints.get(functionname).put(0, tc);
			}
			
			Expr cond = ((WhileStmt)stmt).cond;
	     	Stmt body = ((WhileStmt)stmt).body;
	     	
	     	Label l1 = new Label();
			Label l2 = new Label();
			
			labelContinue.add(l1);
			labelBreak.add(l2);
			quads.add(new LabelQuad(l1));
			
			if (cond instanceof BinaryExpr && !((BinaryExpr)cond).r.ty.isString() && !((BinaryExpr)cond).l.ty.isString() && ( ((BinaryExpr)cond).op == BinaryOp.EQ 
					|| ((BinaryExpr)cond).op == BinaryOp.NEQ
					|| ((BinaryExpr)cond).op == BinaryOp.LESS
					|| ((BinaryExpr)cond).op == BinaryOp.LESS_EQ
					|| ((BinaryExpr)cond).op == BinaryOp.GREATER
					|| ((BinaryExpr)cond).op == BinaryOp.GREATER_EQ)
					)
			{
				Oprand opra1 = translateExpr(((BinaryExpr)cond).l);
				Oprand opra2 = translateExpr(((BinaryExpr)cond).r);
				quads.add(new Branch(l2, opra1, opra2, BinaryExpr.reverse(((BinaryExpr)cond).op)));
				}
			else
			{ 
				Oprand opra = translateExpr(cond);
				quads.add(new Branch(l2, opra, opr, BinaryOp.EQ));
			}
			translateStmt(body);
			quads.add(new Jump(l1));
			quads.add(new LabelQuad(l2));
			
			labelBreak.pop();
			labelContinue.pop();
		}
		else if (stmt instanceof ForStmt)
		{
			Temp tc;
			Oprand opr;
			if (ints.get(functionname) != null && ints.get(functionname).get(0) != null)
			{
				tc = ints.get(functionname).get(0);
				opr = new TempOprand(tc);
			}
			else
			{
				tc = new Temp();
				opr = new TempOprand(tc);
				quads.add(1, new Move(opr, new Const(0)));
				if (ints.get(functionname) == null)
					ints.put(functionname, new LinkedHashMap<Integer, Temp>());
				ints.get(functionname).put(0, tc);
			}
			
			Expr init = ((ForStmt)stmt).init;
			Expr cond = ((ForStmt)stmt).cond;
			Expr step = ((ForStmt)stmt).step;
			Stmt body = ((ForStmt)stmt).body;
			
			Label l1 = new Label();
			Label l2 = new Label();
			Label l3 = new Label();
			
			labelContinue.add(l3);
			labelBreak.add(l2);
			
			translateExpr(init);
			quads.add(new LabelQuad(l1));
			
			if (cond instanceof BinaryExpr && !((BinaryExpr)cond).r.ty.isString() && !((BinaryExpr)cond).l.ty.isString() && ( ((BinaryExpr)cond).op == BinaryOp.EQ 
					|| ((BinaryExpr)cond).op == BinaryOp.NEQ
					|| ((BinaryExpr)cond).op == BinaryOp.LESS
					|| ((BinaryExpr)cond).op == BinaryOp.LESS_EQ
					|| ((BinaryExpr)cond).op == BinaryOp.GREATER
					|| ((BinaryExpr)cond).op == BinaryOp.GREATER_EQ)
					)
			{
				Oprand opra1 = translateExpr(((BinaryExpr)cond).l);
				Oprand opra2 = translateExpr(((BinaryExpr)cond).r);
				quads.add(new Branch(l2, opra1, opra2, BinaryExpr.reverse(((BinaryExpr)cond).op)));
				}
			else
			{ 
				Oprand opra = translateExpr(cond);
				quads.add(new Branch(l2, opra, opr, BinaryOp.EQ));
			}
			translateStmt(body);
			quads.add(new LabelQuad(l3));
			translateExpr(step);
			quads.add(new Jump(l1));
			quads.add(new LabelQuad(l2));
		
			labelBreak.pop();
			labelContinue.pop();
		
		}
		else if (stmt instanceof ReturnStmt)
		{
			Oprand e = translateExpr(((ReturnStmt)stmt).expr);
			quads.add(new Return(e));
		}
		else if (stmt instanceof BreakStmt)
		{
			quads.add(new Jump(labelBreak.peek()));
		}
		else if (stmt instanceof ContinueStmt)
		{
			quads.add(new Jump(labelContinue.peek()));
		}
		else			
		{
		    System.out.println("GetQuads error0");System.exit(1);
		}
	}
	
	//translate Exprs
	public static Oprand translateExpr(Expr expr)
	{
		if(expr instanceof BinaryExpr)
		{
			BinaryExpr binaryExpr = (BinaryExpr)expr;

			Oprand left;
			Oprand right;
			if (binaryExpr.op == BinaryOp.COMMA)
			{
				left = translateExpr(binaryExpr.l);
				right = translateExpr(binaryExpr.r);
				return right;
			}
			else if (binaryExpr.op == BinaryOp.ASSIGN)
			{
				left = translateExpr(binaryExpr.l);
				right = translateExpr(binaryExpr.r);
				quads.add(new Move(left, right));
				return left;
			}
			else if (binaryExpr.op == BinaryOp.AND)
			{	
				Temp tc1;
				Oprand opr1;
				if (ints.get(functionname) != null && ints.get(functionname).get(1) != null)
				{
					tc1 = ints.get(functionname).get(1);
					opr1 = new TempOprand(tc1);
				}
				else
				{
					tc1 = new Temp();
					opr1 = new TempOprand(tc1);
					quads.add(1, new Move(opr1, new Const(1)));
					if (ints.get(functionname) == null)
						ints.put(functionname, new LinkedHashMap<Integer, Temp>());
					ints.get(functionname).put(1, tc1);
				}
				Temp tc;
				Oprand opr;
				if (ints.get(functionname) != null && ints.get(functionname).get(0) != null)
				{
					tc = ints.get(functionname).get(0);
					opr = new TempOprand(tc);
				}
				else
				{
					tc = new Temp();
					opr = new TempOprand(tc);
					quads.add(1, new Move(opr, new Const(0)));
					if (ints.get(functionname) == null)
						ints.put(functionname, new LinkedHashMap<Integer, Temp>());
					ints.get(functionname).put(0, tc);
				}
				
				Label l1 = new Label();
				Temp tmp = new Temp();
				TempOprand oprand = new TempOprand(tmp);
				quads.add(new Move(oprand, opr));
				left = translateExpr(binaryExpr.l);
				quads.add(new Branch(l1, left, opr, BinaryOp.EQ));
				right = translateExpr(binaryExpr.r);
				quads.add(new Branch(l1, right, opr, BinaryOp.EQ));				
				quads.add(new Move(oprand, opr1));
				quads.add(new LabelQuad(l1));
				return oprand;			
			}
			else if (binaryExpr.op == BinaryOp.OR)
			{	
				Temp tc1;
				Oprand opr1;
				if (ints.get(functionname) != null && ints.get(functionname).get(1) != null)
				{
					tc1 = ints.get(functionname).get(1);
					opr1 = new TempOprand(tc1);
				}
				else
				{
					tc1 = new Temp();
					opr1 = new TempOprand(tc1);
					quads.add(1, new Move(opr1, new Const(1)));
					if (ints.get(functionname) == null)
						ints.put(functionname, new LinkedHashMap<Integer, Temp>());
					ints.get(functionname).put(1, tc1);
				}
				Temp tc;
				Oprand opr;
				if (ints.get(functionname) != null && ints.get(functionname).get(0) != null)
				{
					tc = ints.get(functionname).get(0);
					opr = new TempOprand(tc);
				}
				else
				{
					tc = new Temp();
					opr = new TempOprand(tc);
					quads.add(1, new Move(opr, new Const(0)));
					if (ints.get(functionname) == null)
						ints.put(functionname, new LinkedHashMap<Integer, Temp>());
					ints.get(functionname).put(0, tc);
				}
				Label l1 = new Label();
				Temp tmp = new Temp();
				TempOprand oprand = new TempOprand(tmp);
				quads.add(new Move(oprand, opr1));
				left = translateExpr(binaryExpr.l);
				quads.add(new Branch(l1, left, opr, BinaryOp.NEQ));
				right = translateExpr(binaryExpr.r);
				quads.add(new Branch(l1, right, opr, BinaryOp.NEQ));				
				quads.add(new Move(oprand, opr));
				quads.add(new LabelQuad(l1));
				return oprand;
			}
			else if (binaryExpr.op == BinaryOp.EQ || binaryExpr.op == BinaryOp.NEQ || binaryExpr.op == BinaryOp.LESS || binaryExpr.op == BinaryOp.GREATER || binaryExpr.op == BinaryOp.LESS_EQ || binaryExpr.op == BinaryOp.GREATER_EQ)
			{
				Temp tc;
				Oprand opr;
				if (ints.get(functionname) != null && ints.get(functionname).get(0) != null)
				{
					tc = ints.get(functionname).get(0);
					opr = new TempOprand(tc);
				}
				else
				{
					tc = new Temp();
					opr = new TempOprand(tc);
					quads.add(1, new Move(opr, new Const(0)));
					if (ints.get(functionname) == null)
						ints.put(functionname, new LinkedHashMap<Integer, Temp>());
					ints.get(functionname).put(0, tc);
				}
				
				left = translateExpr(binaryExpr.l);
				right = translateExpr(binaryExpr.r);
				Temp tmp = new Temp();

				TempOprand oprand = new TempOprand(tmp);
				if (binaryExpr.l.ty.isString())
				{
					Temp[] compare = new Temp[2];
					compare[0] = getTemp(left); 
					compare[1] = getTemp(right);
					quads.add(new Call(new Label("_strcmp"), compare, tmp));
					quads.add(new BinOp(oprand, oprand, opr, binaryExpr.op));
				}
				else
				{
					quads.add(new BinOp(oprand, left, right, binaryExpr.op));
				}
				return oprand;
			}
			else if (binaryExpr.op == BinaryOp.MULTIPLY || binaryExpr.op == BinaryOp.DIVIDE || binaryExpr.op == BinaryOp.MINUS || binaryExpr.op == BinaryOp.MODULO)
			{
				left = translateExpr(binaryExpr.l);
				right = translateExpr(binaryExpr.r);
				Temp tmp = new Temp();
				TempOprand oprand = new TempOprand(tmp);
				quads.add(new BinOp(oprand, left, right, binaryExpr.op));
				return oprand;
			}
			else if(binaryExpr.op == BinaryOp.PLUS)
			{
			
				left = translateExpr(binaryExpr.l);
				right = translateExpr(binaryExpr.r);
				Temp tmp = new Temp();
				TempOprand oprand = new TempOprand(tmp);
				if (binaryExpr.l.ty.isString() || binaryExpr.r.ty.isString())
				{
					Temp[] t = new Temp[2];
					if (binaryExpr.l.ty.isString())
					{
						t[0] = getTemp(left);
					}
					else if (binaryExpr.l.ty.isInt())
					{
						t[0] = new Temp();
						Temp[] t1 = new Temp[1];
						t1[0] = getTemp(left);
						quads.add(new Call(new Label("_intToString"), t1, t[0]));
					}
					else
					{
						t[0] = new Temp();
						Temp[] t1 = new Temp[1];
						t1[0] = getTemp(left);
						quads.add(new Call(new Label("_charToString"), t1, t[0]));
					}
					
					if (binaryExpr.r.ty.isString())
					{
						t[1] = getTemp(right);
					}
					else if (binaryExpr.r.ty.isInt())
					{
						t[1] = new Temp();
						Temp[] t1 = new Temp[1];
						t1[0] = getTemp(right);
						quads.add(new Call(new Label("_intToString"), t1, t[1]));
					}
					else
					{
						t[1] = new Temp();
						Temp[] t1 = new Temp[1];
						t1[0] = getTemp(right);
						quads.add(new Call(new Label("_charToString"), t1, t[1]));
					}
					quads.add(new Call(new Label("_strcat"), t, tmp));
					return oprand;
				}
				else 
				{
					quads.add(new BinOp(oprand, left, right, BinaryOp.PLUS));
					return oprand;
				}
			}
			else 
			{
				System.out.println("GetQuads error1");System.exit(1);
			}
		}
		else if (expr instanceof UnaryExpr)
		{
			UnaryExpr unaryExpr = (UnaryExpr)expr;
			if (unaryExpr.op == UnaryOp.PLUS)
			{
				return translateExpr(unaryExpr.expr);
			}
			else if (unaryExpr.op == UnaryOp.MINUS)
			{
				Temp tc;
				Oprand opr;
				if (ints.get(functionname) != null && ints.get(functionname).get(0) != null)
				{
					tc = ints.get(functionname).get(0);
					opr = new TempOprand(tc);
				}
				else
				{
					tc = new Temp();
					opr = new TempOprand(tc);
					quads.add(1, new Move(opr, new Const(0)));
					if (ints.get(functionname) == null)
						ints.put(functionname, new LinkedHashMap<Integer, Temp>());
					ints.get(functionname).put(0, tc);
				}
				
				Oprand oprand = translateExpr(unaryExpr.expr);
				Temp temp = new Temp();
				TempOprand opra = new TempOprand(temp);
				quads.add(new BinOp(opra, opr, oprand, BinaryOp.MINUS));
				return opra;
			}
			else if (unaryExpr.op == UnaryOp.NOT)
			{
				Temp tc;
				Oprand opr;
				if (ints.get(functionname) != null && ints.get(functionname).get(0) != null)
				{
					tc = ints.get(functionname).get(0);
					opr = new TempOprand(tc);
				}
				else
				{
					tc = new Temp();
					opr = new TempOprand(tc);
					quads.add(1, new Move(opr, new Const(0)));
					if (ints.get(functionname) == null)
						ints.put(functionname, new LinkedHashMap<Integer, Temp>());
					ints.get(functionname).put(0, tc);
				}
				
				
				Oprand oprand1 = translateExpr(unaryExpr.expr);
				quads.add(new BinOp(oprand1, opr, oprand1, BinaryOp.EQ));
				return oprand1;
			}
			else
			{
				System.out.println("GetQuads error2");System.exit(1);
			}
		}
		else if (expr instanceof NewRecord)
		{
			NewRecord newRecord = (NewRecord)expr;
			RECORD record = (RECORD)((TypeEntry)global.getEntry(((IdType)newRecord.type).sym)).type; 
			
			Temp tc1;
			Oprand opr1;
			if (ints.get(functionname) != null && ints.get(functionname).get(record.fields.size() * 4) != null)
			{
				tc1 = ints.get(functionname).get(record.fields.size() * 4);
				opr1 = new TempOprand(tc1);
			}
			else
			{
				tc1 = new Temp();
				opr1 = new TempOprand(tc1);
				quads.add(1, new Move(opr1, new Const(record.fields.size() * 4)));
				if (ints.get(functionname) == null)
					ints.put(functionname, new LinkedHashMap<Integer, Temp>());
				ints.get(functionname).put(record.fields.size() * 4, tc1);
			}
			
			Temp tmp = new Temp();
			TempOprand oprand = new TempOprand(tmp);
			Temp[] ca = new Temp[1];
			ca[0] = tc1;
			quads.add(new Call(new Label("_malloc"), ca, tmp));
			return oprand;
		}
		else if (expr instanceof SubscriptPostfix)
		{
			Temp tc;
			Oprand opr;
			if (ints.get(functionname) != null && ints.get(functionname).get(4) != null)
			{
				tc = ints.get(functionname).get(4);
				opr = new TempOprand(tc);
			}
			else
			{
				tc = new Temp();
				opr = new TempOprand(tc);
				quads.add(1, new Move(opr, new Const(4)));
				if (ints.get(functionname) == null)
					ints.put(functionname, new LinkedHashMap<Integer, Temp>());
				ints.get(functionname).put(4, tc);
			}
			
			
			SubscriptPostfix subs = (SubscriptPostfix)expr;
			Temp t1 = getTemp(translateExpr(subs.expr));
			Temp t3 = new Temp();
			//quads.add(new Move(new TempOprand(t3), new TempOprand(t1)));
			Temp t2 = getTemp(translateExpr(subs.subscript));
			Temp t4 = new Temp();
			//quads.add(new Move(new TempOprand(t4), new TempOprand(t2)));
			if (subs.expr.ty.isArray())
			{
				quads.add(new BinOp(new TempOprand(t4), opr, new TempOprand(t2), BinaryOp.MULTIPLY));
			}
			else 
			{
				quads.add(new Move(new TempOprand(t4), new TempOprand(t2)));
			}
			quads.add(new BinOp(new TempOprand(t3), new TempOprand(t1), new TempOprand(t4), BinaryOp.PLUS));
			if (subs.expr.ty.isArray())
				return new Mem(t3, 4);
			Mem nn = new Mem(t3);
			nn.length = 1;
			return nn;
		}
		else if (expr instanceof FunctionCall)
		{
			FunctionCall functionCall = (FunctionCall)expr;
			if (functionCall.args == null)
			{
				Temp tmp = new Temp();
				TempOprand oprand = new TempOprand(tmp);
				Temp[] ca = new Temp[0];
				quads.add(new Call(new Label(((Id)functionCall.expr).sym.toString()), ca, tmp));
				return oprand; 
			} 
			else
			{
				LinkedList<Temp> parameterList = new LinkedList<Temp>();
				functionFill(functionCall.args, parameterList);
				Temp[] ca = new Temp[parameterList.size()];
				Iterator<Temp> iter = parameterList.iterator();
				int i = 0;
				while (iter.hasNext()) ca[i++] = iter.next();
				Temp tmp = new Temp();
				TempOprand oprand = new TempOprand(tmp);
				quads.add(new Call(new Label(((Id)functionCall.expr).sym.toString()), ca, tmp));
				return oprand;
			}
		}
		else if (expr instanceof FieldPostfix)
		{
			FieldPostfix fieldPostfix = (FieldPostfix)expr;
			Temp t1 = getTemp(translateExpr(fieldPostfix.expr));
			Symbol sym = fieldPostfix.field;
			if ((fieldPostfix.expr.ty.isString() || fieldPostfix.expr.ty.isArray()) && sym.toString() == "length")
			{
				if (fieldPostfix.expr.ty.isArray())
				{
					return new Mem(t1);
				}
				Temp tmp = new Temp();
				Temp[] ca = new Temp[1];
				ca[0] = t1;
				quads.add(new Call(new Label("_strlen"), ca, tmp));
				return new TempOprand(tmp);
			} 
			//
			RECORD record = (RECORD)fieldPostfix.expr.ty;
			Iterator<RecordField> iter = record.fields.iterator();
			int now = 0;
			while (iter.hasNext())
			{
				RecordField tmp = iter.next();
				if (tmp.name.equals(sym)) break;
				now++;
			}
			return new Mem(t1, now * 4);
		}
		else if (expr instanceof Id)
		{
			
			Id id = (Id)expr;
			Temp tmp = idmap.get(id.sym);
			return new TempOprand(tmp);
		} 
		else if (expr instanceof Null)
		{
			Temp tc;
			Oprand opr;
			if (ints.get(functionname) != null && ints.get(functionname).get(0) != null)
			{
				tc = ints.get(functionname).get(0);
				opr = new TempOprand(tc);
			}
			else
			{
				tc = new Temp();
				opr = new TempOprand(tc);
				quads.add(1, new Move(opr, new Const(0)));
				if (ints.get(functionname) == null)
					ints.put(functionname, new LinkedHashMap<Integer, Temp>());
				ints.get(functionname).put(0, tc);
			}
			
			return opr;
		} 
		else if (expr instanceof IntLiteral)
		{
			int k = ((IntLiteral)expr).i;
			Temp tc;
			Oprand opr;
			if (ints.get(functionname) != null && ints.get(functionname).get(k) != null)
			{
				tc = ints.get(functionname).get(k);
				opr = new TempOprand(tc);
			}
			else
			{
				tc = new Temp();
				opr = new TempOprand(tc);
				quads.add(1, new Move(opr, new Const(k)));
				if (ints.get(functionname) == null)
					ints.put(functionname, new LinkedHashMap<Integer, Temp>());
				ints.get(functionname).put(k, tc);
			}
			return opr;
			
			
		} 
		else if (expr instanceof CharLiteral)
		{
			int k = ((CharLiteral)expr).c;
			Temp tc;
			Oprand opr;
			if (ints.get(functionname) != null && ints.get(functionname).get(k) != null)
			{
				tc = ints.get(functionname).get(k);
				opr = new TempOprand(tc);
			}
			else
			{
				tc = new Temp();
				opr = new TempOprand(tc);
				quads.add(1, new Move(opr, new Const(k)));
				if (ints.get(functionname) == null)
					ints.put(functionname, new LinkedHashMap<Integer, Temp>());
				ints.get(functionname).put(k, tc);
			}
			return opr;
		} 
		else if (expr instanceof StringLiteral)
		{
			String s = ((StringLiteral)expr).s;
			LabelAddress la = stringmap.get(s);
			
			Temp tmp = new Temp();
			TempOprand oprand = new TempOprand(tmp);
			if (la != null) 
			{
				quads.add(new Move(oprand, la));
				return new TempOprand(tmp);
			}
			la = new LabelAddress(new Label());
			quads.add(new Move(oprand, la));
			stringmap.put(s, la);
			return new TempOprand(tmp);
		} 
		else if (expr instanceof NewArray)
		{
			Temp tc;
			Oprand opr;
			if (ints.get(functionname) != null && ints.get(functionname).get(4) != null)
			{
				tc = ints.get(functionname).get(4);
				opr = new TempOprand(tc);
			}
			else
			{
				tc = new Temp();
				opr = new TempOprand(tc);
				quads.add(1, new Move(opr, new Const(4)));
				if (ints.get(functionname) == null)
					ints.put(functionname, new LinkedHashMap<Integer, Temp>());
				ints.get(functionname).put(4, tc);
			}
			
			Temp t1 = getTemp(translateExpr(((NewArray)expr).expr));
			Temp t4 = new Temp();
			quads.add(new BinOp(new TempOprand(t4), new TempOprand(t1), opr, BinaryOp.MULTIPLY));
			quads.add(new BinOp(new TempOprand(t4), new TempOprand(t4), opr, BinaryOp.PLUS));
			Temp tmp = new Temp();
			Temp[] ca = new Temp[1];
			ca[0] = t4;
			quads.add(new Call(new Label("_malloc"), ca, tmp));
			quads.add(new Move(new Mem(tmp), new TempOprand(t1)));
			return new TempOprand(tmp);
		}
		return null;
	}
	
	public static void functionFill(Expr e, LinkedList<Temp> parameterList)
	{
		if (e.inBracket == 1)
		{
			Temp t1 = getTemp(translateExpr(e));
			parameterList.add(t1);
			return;
		}
		if (e instanceof BinaryExpr)
		{
			BinaryExpr binary = (BinaryExpr)e;
			if (binary.op == BinaryOp.COMMA)
			{
				functionFill(binary.l, parameterList);
				Temp t1 = getTemp(translateExpr(binary.r));
				parameterList.add(t1);
				return;
			}
		}
		Temp t1 = getTemp(translateExpr(e));
		parameterList.add(t1);
	}
	
	public static Temp getTemp(Oprand oprand)
	{
		if (oprand instanceof TempOprand)
		{
			return ((TempOprand)oprand).temp;
		} 
		else
		{
			Temp tmp = new Temp();
			quads.add(new Move(new TempOprand(tmp), oprand));
			return tmp;
		}
	}
	
	public static void printQuads()
	{
		if (!labelContinue.isEmpty() ||
			!labelBreak.isEmpty())
			{
				System.err.println("Stack error");
				System.out.println("GetQuads error4");System.exit(1);
			}
		Iterator<Symbol> it = allFunQuads.keySet().iterator();
		while (it.hasNext())
		{
			quads = allFunQuads.get(it.next());
			Iterator<Quad> iter = quads.iterator();
			while (iter.hasNext())
			{
				System.out.println(iter.next().toString());
			}
		}
	}
}
