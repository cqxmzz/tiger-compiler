package javac.parser;

import javac.absyn.*;
import javac.env.*;
import java.util.*;
import javac.symbol.*;
import javac.type.*;

public class SemanticTest
{
	public static Env global = new Env();
	public static void functionCallTest(Iterator<Type> iter, Expr e, Env local) throws Exception
	{
		if (!iter.hasNext())
			throw new Exception("0");
		if (e.inBracket == 1)
		{
			fillExprType(e, local);
			return;
		}
		if (e instanceof BinaryExpr)
		{
			BinaryExpr bin = (BinaryExpr)e;
			if (bin.op == BinaryOp.COMMA)
			{
				functionCallTest(iter, bin.l, local);
				SemanticTest.fillExprType(bin.r, local);
				if (!iter.hasNext())
					throw new Exception("1");
				if (!iter.next().equals(bin.r.ty))
					throw new Exception("2");				
				return;
			}
		}
		fillExprType(e, local);
		if (!iter.next().equals(e.ty))
			throw new Exception("3");
	}
	
	public static void fillExprType(Expr e, Env local) throws Exception
	{
		if (e instanceof Id)
		{
			Entry entry = local.getEntry(((Id)e).sym);
			if (entry == null)
			{
				System.out.println(e);
				throw new Exception("4");
			}
			else if (entry instanceof VariableEntry)
			{
				e.ty = ((VariableEntry)entry).type;
				e.assignable = 1;
			}
			else e.ty = ((TypeEntry)entry).type;
		}
		else if (e instanceof Null)
		{
			e.ty = Type.NULL;
		}
		else if (e instanceof CharLiteral)
		{
			e.ty = CHAR.getInstance();
		}
		else if (e instanceof IntLiteral)
		{
			e.ty = INT.getInstance();
		}
		else if (e instanceof StringLiteral)
		{
			e.ty = STRING.getInstance();
		}
		else if (e instanceof NewArray)
		{
			NewArray newArray = (NewArray)e;
			fillExprType(newArray.expr, local);
			if (!newArray.expr.ty.equals(INT.getInstance()))
				throw new Exception("5");
			Type type = newArray.type.toType(local);
			if (type == null)
				throw new Exception("6");
			e.ty = new ARRAY(type);
		}
		else if (e instanceof NewRecord)
		{
			NewRecord newRec = (NewRecord)e;
			e.ty = newRec.type.toType(local);
			if (e.ty == null)
				throw new Exception("7");
		}
		else if (e instanceof SubscriptPostfix)
		{
			SubscriptPostfix sub = (SubscriptPostfix)e;
			fillExprType(sub.expr, local);
			if (!sub.expr.ty.isArray() && !sub.expr.ty.isString())
				throw new Exception("8");
			fillExprType(sub.subscript, local);
			if (!sub.subscript.ty.equals(INT.getInstance()))
				throw new Exception("9");
			if (sub.expr.ty instanceof ARRAY)
			{
				e.ty = ((ARRAY)sub.expr.ty).elementType;
				e.assignable = 1;
			}
			else e.ty = CHAR.getInstance();
	
		}
		else if (e instanceof FunctionCall)
		{
			FunctionCall fun = (FunctionCall)e;
			if (!(fun.expr instanceof Id))
				throw new Exception("10");
			Entry entry = local.getEntry(((Id)fun.expr).sym); 
			if (entry == null || (!(entry instanceof FunctionEntry)))
				throw new Exception("11");
			if (fun.args != null)
			{
				if (((FunctionEntry)entry).arr.isEmpty())
					throw new Exception("12");
				Iterator<Type> it = ((FunctionEntry)entry).arr.iterator();
				functionCallTest(it, fun.args, local);
				if (it.hasNext())
					throw new Exception("13");
			}
			e.ty = ((FunctionEntry)entry).returnType;
		}
		else if (e instanceof FieldPostfix)
		{
			FieldPostfix fiel = (FieldPostfix) e;
			fillExprType(fiel.expr, local);
			if (fiel.expr.ty.isString() && (fiel.field.toString() == "length"))
			{ 
				e.ty = INT.getInstance(); 
				return; 
			} 
			else if (fiel.expr.ty.isArray() && (fiel.field.toString() == "length"))
			{ 
				e.ty = INT.getInstance(); 
				return; 
			} 
			else if (!fiel.expr.ty.isRecord())
				throw new Exception("14");
			Type type = ((RECORD)fiel.expr.ty).findSymbol(fiel.field);
			if (type == null)
				throw new Exception("15");
			e.ty = type;
			e.assignable = 1;
		}
		else if (e instanceof UnaryExpr)
		{
			UnaryExpr unar = (UnaryExpr)e;
			fillExprType(unar.expr, local);
			if (unar.expr.ty != INT.getInstance())
			throw new Exception("16");
			e.ty = INT.getInstance();
		}
		else if (e instanceof BinaryExpr)
		{
			BinaryExpr bin = (BinaryExpr)e;
			fillExprType(bin.l, local);
			fillExprType(bin.r, local);
			Type leftType = bin.l.ty;
			Type rightType = bin.r.ty;
			if (bin.op == BinaryOp.DIVIDE || bin.op == BinaryOp.MODULO || bin.op == BinaryOp.MULTIPLY || bin.op == BinaryOp.MINUS)
			{
				if (!(leftType.isInt() && rightType.isInt()))
					throw new Exception("17");
				e.ty = INT.getInstance();
				return;
			}
			else if (bin.op == BinaryOp.PLUS)
			{
				if (leftType.isArray() || leftType.isRecord() || leftType.isNull() || rightType.isArray() || rightType.isRecord() || rightType.isNull()) 
				{
					throw new Exception("18");
				}
				else if (leftType.isString() || rightType.isString()) 
				{
					e.ty = STRING.getInstance();
				}
				else e.ty = INT.getInstance(); 
				return;
			} 
			else if (bin.op == BinaryOp.LESS || bin.op == BinaryOp.LESS_EQ || bin.op == BinaryOp.GREATER || bin.op == BinaryOp.GREATER_EQ)
			{
				e.ty = INT.getInstance();
				if (leftType.isInt() && rightType.isInt() || leftType.isChar() && rightType.isChar() || leftType.isString() && rightType.isString()) 
				{
					return;
				}
				else throw new Exception("19");
			}
			else if (bin.op == BinaryOp.EQ || bin.op == BinaryOp.NEQ)
			{
				e.ty = INT.getInstance();				
				if (leftType.isInt() && rightType.isInt() || leftType.isChar() && rightType.isChar() || leftType.isString() && rightType.isString() || leftType.isArray() && rightType.isArray() || leftType.isRecord() && rightType.isRecord() && (leftType.equals(rightType) || rightType.equals(RECORD.NULL))) 
				{
					return;
				}
				else throw new Exception("20");
			}
			else if (bin.op == BinaryOp.AND || bin.op == BinaryOp.OR)
			{
				if ((!leftType.isInt()) || (!rightType.isInt()))
				{
					throw new Exception("21");
				}
				e.ty = INT.getInstance();
				return;
			}
			else if (bin.op == BinaryOp.ASSIGN)
			{
				if (bin.l.assignable == 0)
					throw new Exception("22");
				if (!leftType.equals(rightType) && !((leftType instanceof RECORD) && rightType == Type.NULL))
				{
					throw new Exception("23");
				}
				e.ty = leftType;
				e.assignable = 0;
				return;
			}
			else if (bin.op == BinaryOp.COMMA)
			{
				e.ty = rightType;
				return;
			}
			else throw new Exception("24");
		}
		else throw new Exception("25");
	}
	
	public static void stmtCheck(Stmt s, Env local, boolean inLoop, Type funReturnType) throws Exception
	{
		if (s instanceof CompoundStmt)
		{
			StmtList stmtList = ((CompoundStmt)s).stmts;
			Iterator<Stmt> it = stmtList.statements.iterator();
			while (it.hasNext())
				stmtCheck(it.next(), local, inLoop, funReturnType);
		}
		else if (s instanceof ExprStmt)
		{
			Expr e = ((ExprStmt)s).expr;
			fillExprType(e, local);
		}
		else if (s instanceof IfStmt)
		{
			IfStmt ifStmt = (IfStmt)s;
			fillExprType(ifStmt.cond, local);
			if (!ifStmt.cond.ty.isInt())
				throw new Exception("26");
			stmtCheck(ifStmt.thenPart, local, inLoop, funReturnType);
			if (ifStmt.elsePart != null)
				stmtCheck(ifStmt.elsePart, local, inLoop, funReturnType);
		}
		else if (s instanceof WhileStmt)
		{
			WhileStmt whileStmt = (WhileStmt)s;
			fillExprType(whileStmt.cond, local);
			if (!whileStmt.cond.ty.isInt())
				throw new Exception("27");
			stmtCheck(whileStmt.body, local, true, funReturnType);
		}
		else if (s instanceof ForStmt)
		{
			ForStmt forStmt = (ForStmt)s;
			if (forStmt.init != null)
				fillExprType(forStmt.init, local);
			if (forStmt.cond != null)	
			{
				fillExprType(forStmt.cond, local);
				if (!forStmt.cond.ty.isInt())
					throw new Exception("28");
			}
			if (forStmt.step != null)
				fillExprType(forStmt.step, local);
			stmtCheck(forStmt.body, local, true, funReturnType);
		}
		else if (s instanceof BreakStmt)
		{
			if (!inLoop)
				throw new Exception("29");
		}
		else if (s instanceof ContinueStmt)
		{
			if (!inLoop)
				throw new Exception("30");
		}
		else if (s instanceof ReturnStmt)
		{
			ReturnStmt returnStmt = (ReturnStmt)s;
			fillExprType(returnStmt.expr, local);
			if (!funReturnType.equals(returnStmt.expr.ty))
				throw new Exception("31");
		}
		else
		{
			throw new Exception("32");
		}
	}
	
	public static void firstTraverse(TranslationUnit t) throws Exception
	{
		Iterator<ExternalDecl> it = (t.externalDeclarations).iterator();
		int Main = 0;
		while (it.hasNext())
		{
			ExternalDecl externalDecl = it.next();
			if (externalDecl instanceof FunctionDef)
			{
				if (((FunctionDef)externalDecl).head.functionName.toString() == "main")
					Main++;
			} else
			if (externalDecl instanceof RecordDef)
			{
				if (global.getEntry(((RecordDef)externalDecl).name) != null)
				{
					throw new Exception("33");
				}
				global.putEntry(((RecordDef)externalDecl).name, new TypeEntry(((RecordDef)externalDecl).name.toString()));
			}
		}
		if (Main != 1) 
			throw new Exception("34");
	}

	public static void secondTraverse(TranslationUnit t) throws Exception
	{
		Iterator<ExternalDecl> it = (t.externalDeclarations).iterator();
		while (it.hasNext())
		{
			ExternalDecl externalDecl = it.next();
			if (externalDecl instanceof FunctionDef)
			{
				FunctionDef fun = (FunctionDef)externalDecl;
				Symbol funcName = fun.head.functionName;
				if (global.getEntry(funcName) != null)
					throw new Exception("35");
				FunctionEntry functionEntry = new FunctionEntry(funcName.toString());
				if (fun.head.type.toType(global) == null)
					throw new Exception("36");
				functionEntry.returnType = fun.head.type.toType(global);
				Iterator<ParameterDecl> it1 = fun.head.parameterList.parameterDeclarations.iterator();
				while (it1.hasNext())
				{
					ParameterDecl parameterDecl = it1.next();
					if (parameterDecl.type.toType(global) == null) 
						throw new Exception("37");
					functionEntry.arr.add(parameterDecl.type.toType(global));
				}
				global.putEntry(funcName, functionEntry);
			}
			else if (externalDecl instanceof RecordDef)
			{
				RecordDef recordDef = (RecordDef)externalDecl;
				Symbol name = recordDef.name;
				RECORD record = (RECORD)((TypeEntry)global.getEntry(name)).type;
				Iterator<VariableDecl> it1 = ((RecordDef)externalDecl).fields.variableDeclarations.iterator();
				int flag = 0;
				while (it1.hasNext())
				{
					VariableDecl variableDecl = it1.next();
					Iterator<Symbol> it2 = variableDecl.ids.ids.iterator();
					Type type = variableDecl.type.toType(global);
					if (type == null)
						throw new Exception("38");
					while (it2.hasNext())
					{
						Symbol symbol = it2.next();
						if (record.findSymbol(symbol) != null) 
							throw new Exception("39");
						record.fields.add(new RECORD.RecordField(type, symbol, flag++));
					}
				}
			}
			else if (externalDecl instanceof PrototypeDecl)
			{
				Symbol funcName = ((PrototypeDecl)externalDecl).head.functionName;
				if (global.getEntry(funcName) != null)
					throw new Exception("40");
				FunctionEntry functionEntry = new FunctionEntry(funcName.toString());
				if (((PrototypeDecl)externalDecl).head.type.toType(global) == null)
					throw new Exception("41");
				functionEntry.returnType = ((PrototypeDecl)externalDecl).head.type.toType(global);
				Iterator<ParameterDecl> it1 = ((PrototypeDecl)externalDecl).head.parameterList.parameterDeclarations.iterator();
				while (it1.hasNext())
				{
					ParameterDecl parameterDecl = it1.next();
					if (parameterDecl.type.toType(global) == null) 
						throw new Exception("42");
					functionEntry.arr.add(parameterDecl.type.toType(global));
				}
				global.putEntry(funcName, functionEntry);
			}
		}
	}

	public static void thirdTraverse(TranslationUnit t) throws Exception
	{
		Iterator<ExternalDecl> it = t.externalDeclarations.iterator();
		while (it.hasNext())
		{
			ExternalDecl externalDecl = it.next();
			if (externalDecl instanceof FunctionDef)
			{
				Env local = global.clone();
				FunctionDef functionDef = (FunctionDef)externalDecl;
				Type funReturnType = functionDef.head.type.toType(local);
				Iterator<ParameterDecl> it1 = functionDef.head.parameterList.parameterDeclarations.iterator();
				while (it1.hasNext())
				{
					ParameterDecl parameterDecl = it1.next();
					Symbol name = parameterDecl.name;
					if (local.getEntry(name) != null) 
					{
						throw new Exception("44");
					}
					local.putEntry(name, new VariableEntry(name, parameterDecl.type.toType(local)));
				}
				if (functionDef.vardec != null)
				{
					Iterator<VariableDecl> it2 = functionDef.vardec.variableDeclarations.iterator();
					while (it2.hasNext())
					{
						VariableDecl varDecl = it2.next();
						if (varDecl.type.toType(local) == null)
							throw new Exception("45");
						Iterator<Symbol> it3 = varDecl.ids.ids.iterator();
						while (it3.hasNext())
						{
							Symbol name = it3.next();
							if (local.getEntry(name) != null)
								throw new Exception("46");
							local.putEntry(name, new VariableEntry(name, varDecl.type.toType(local)));
						}
					}
				}
				Iterator<Stmt> it2 = functionDef.stmts.statements.iterator();
				while (it2.hasNext())
				{
					Stmt stmt = it2.next();
					stmtCheck(stmt, local, false, funReturnType);
				}
			}
			else if (externalDecl instanceof PrototypeDecl)
			{
				Iterator<ParameterDecl> it1 = ((PrototypeDecl)externalDecl).head.parameterList.parameterDeclarations.iterator();
				while (it1.hasNext())
				{
					ParameterDecl parameterDecl = it1.next();
					if (global.getEntry(parameterDecl.name) != null) 
						throw new Exception("47");
				}
			}
		}
	}
}