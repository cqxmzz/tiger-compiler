package javac.codegen;

import javac.absyn.*;
import javac.env.Entry;
import javac.quad.*;
import javac.symbol.Symbol;

import java.io.*;
import java.util.*;


public class GetCode
{
	public static ArrayList<asm> asmlist;
	public static LinkedHashMap<String, ArrayList<asm>> allLists;
	public static Symbol functionName;

	public static void initialize()
	{	
		allLists = new LinkedHashMap<String, ArrayList<asm>>();
	}
	public static void output(String in)
	{
		try
		{
			String inn = in.substring(0, in.length()-5) + ".s";
			PrintWriter outt = new PrintWriter(inn);
			Iterator<String> it = allLists.keySet().iterator();
			while (it.hasNext())
			{
				asmlist = allLists.get(it.next());
				Iterator<asm> iter = asmlist.iterator();

				iter = asmlist.iterator();
				while (iter.hasNext())
				{
					outt.println(iter.next().toString());
				}
			}
			outt.close();
		}
        catch (Exception e)   
        {  
            e.printStackTrace();  
        }  
	}
	public static void loadNative()
	{
		Scanner in = new Scanner(new BufferedInputStream(GetCode.class.getResourceAsStream("native.eee")));
		while (in.hasNext())
		{
			asmlist.add(new stri(in.nextLine()));
		}
		in.close();
	}
	public static void translateQuad(Quad quad)
	{
		if (quad instanceof BinOp)
		{
			BinOp binaryOp = (BinOp)quad;
			Temp t0 = toTemp(binaryOp.dst);
			Temp t1 = toTemp(binaryOp.left);
			Temp t2 = toTemp(binaryOp.right);
			asmlist.add(new binary(binaryOp.op, t0, t1, t2));
		}
		else if (quad instanceof Branch)
		{
			Branch branch = (Branch)quad;
			Temp t1 = toTemp(branch.left);
			Temp t2 = toTemp(branch.right);
			if (branch.op == BinaryOp.NEQ)
				asmlist.add(new bne(t1, t2, branch.label));
			else if (branch.op == BinaryOp.EQ)
				asmlist.add(new beq(t1, t2, branch.label));
			else if (branch.op == BinaryOp.LESS)
				asmlist.add(new blt(t1, t2, branch.label));
			else if (branch.op == BinaryOp.LESS_EQ)
				asmlist.add(new ble(t1, t2, branch.label));
			else if (branch.op == BinaryOp.GREATER)
				asmlist.add(new bgt(t1, t2, branch.label));
			else if (branch.op == BinaryOp.GREATER_EQ)
				asmlist.add(new bge(t1, t2, branch.label));
			
		}
		else if (quad instanceof Jump)
		{
			Jump jump = (Jump)quad;
			asmlist.add(new j(jump.label));
		}
		else if (quad instanceof LabelQuad)
		{
			asmlist.add(new label(((LabelQuad)quad).label));
		}
		else if (quad instanceof Move)
		{
			Move move = (Move)quad;
			if (move.dst instanceof Mem)
			{
				Mem mem = (Mem)(move.dst);
				Temp t0 = toTemp(move.src);
				asmlist.add(new sw(t0, mem.offset, mem.base));
			}
			else if (move.src instanceof Mem)
			{
				Mem mem = (Mem)(move.src);
				Temp t0 = toTemp(move.dst);
				if (mem.length != 1)
					asmlist.add(new lw(t0, mem.offset, mem.base));
				else
					asmlist.add(new lb(t0, mem.offset, mem.base));
			}
			else if (move.src instanceof LabelAddress)
			{
				Temp t0 = toTemp(move.dst);
				Label l0 = ((LabelAddress)(move.src)).label;
				asmlist.add(new la(t0, l0));
			}
			else if (move.src instanceof TempOprand)
			{
				Temp t0 = toTemp(move.dst);
				Temp t1 = toTemp(move.src);
				asmlist.add(new move(t0, t1));
			}
			else if (move.src instanceof Const)
			{
				Temp t0 = ((TempOprand)(move.dst)).temp;
				int i = ((Const)(move.src)).value;
				asmlist.add(new li(t0, i));	
			}
		}
		else if (quad instanceof Call)
		{
			Call call = (Call)quad;
			int t = 100;
			int x = GetQuads.temps.get(functionName.name);
			int n = call.params.length;
			int k = 10;
			if (GetQuads.temps.get(call.function.name) != null)
				k = GetQuads.temps.get(call.function.name);
			asmlist.add(new swra(4*x));
			for (int i = 0;i < n; i++)
			{
				asmlist.add(new swsp(call.params[i], -4*k - t - 4 + i * 4));
			}
			asmlist.add(new jal(call.function, 4*k + t + 4, x));
			
			asmlist.add(new movetv(call.result));
			asmlist.add(new lwra(4*x));
		}
		else if (quad instanceof Return)
		{
			Return ret = (Return)quad;
			Temp t0 = toTemp(ret.value);
			asmlist.add(new movevt(t0));
			
			asmlist.add(new j(new Label("_" + functionName + "_exit")));
		}
		else
		{
			System.out.println("GetCode error");
			System.exit(1);
		}
	}
	public static void genCode()
	{
		try 
		{	
			asmlist = new ArrayList<asm>();
			allLists.put("_head", asmlist);
			asmlist.add(new stri("\t.text"));
			asmlist.add(new stri("\t.align 2"));
			asmlist.add(new stri("\t.globl main"));
			//asmlist.add(new stri("\t.globl __start"));
			//asmlist.add(new stri("\t__start:"));
			int k = GetQuads.temps.get( "main");
			Iterator<Symbol> it = GetQuads.allFunQuads.keySet().iterator();
			
			while (it.hasNext())
			{
				functionName = it.next();
				LinkedList<Quad> quads = GetQuads.allFunQuads.get(functionName);
				Iterator<Quad> iter = quads.iterator();
				asmlist = new ArrayList<asm>();
				allLists.put(functionName.name, asmlist);
				
				translateQuad(iter.next());
				if (functionName.name == "main") asmlist.add(new addisp(-(4*k + 104)));
				Temp.count = GetQuads.origintemps.get(functionName.name);
				if (GetQuads.paraLists.get(functionName.name) != null)
				{
					Iterator<java.util.Map.Entry<String, Temp>> it1 = GetQuads.paraLists.get(functionName.name).entrySet().iterator();
					int n = GetQuads.paraLists.get(functionName.name).size();
					for (int i = 0;i < n; i++)
					{
						asmlist.add(new lwsp(it1.next().getValue(), i * 4));
					}
				}
				
				while (iter.hasNext())
					translateQuad(iter.next());
				
				asmlist.add(new label(new Label("_" + functionName + "_exit")));
				asmlist.add(new jr());
			}
			
			loadNative();
			asmlist.add(new stri(""));
			asmlist.add(new stri("\t.data"));
			Iterator<String> iter3 = GetQuads.stringmap.keySet().iterator();
			while (iter3.hasNext())
			{
				String s = iter3.next();
				asmlist.add(new stri(GetQuads.stringmap.get(s).label + ":"));
				asmlist.add(new stri("\t.asciiz " + "\"" + s + "\""));
			}
		}
        catch (Exception e)   
        {  
            e.printStackTrace();  
        }  
	}
	public static Temp toTemp(Oprand op)
	{
		if (op instanceof Mem)
		{
			Mem mem = (Mem)op;
			Temp t1 = toTemp(new TempOprand(mem.base));
			Temp t0 = new Temp();
			if (mem.length == 1)
				asmlist.add(new lb(t0, mem.offset, t1));
			else
				asmlist.add(new lw(t0, mem.offset, t1));
			return t0;
		}
		else if (op instanceof TempOprand)
		{
			return ((TempOprand)op).temp;
		}		
		return new Temp();
	}

}
