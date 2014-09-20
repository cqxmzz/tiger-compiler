package javac.codegen;
import javac.quad.*;
import javac.absyn.*;
public class binary extends asm
{
	public BinaryOp op;
	public Temp dst, rs1, rs2;
	public binary(BinaryOp op1, Temp t0, Temp t1, Temp t2)
	{
		rs1 = t1;
		rs2 = t2;
		dst = t0;
		op = op1;
	}
	public String getOp()
	{
		if (op == BinaryOp.AND)
			return "and";
		else if (op == BinaryOp.OR)
			return "or";
		else if (op == BinaryOp.PLUS)
			return "add";
		else if (op == BinaryOp.MINUS)
			return "sub";
		else if (op == BinaryOp.MULTIPLY)
			return "mul";
		else if (op == BinaryOp.MODULO)
			return "rem";
		else if (op == BinaryOp.EQ)
			return "seq";
		else if (op == BinaryOp.NEQ)
			return "sne";
		else if (op == BinaryOp.GREATER)
			return "sgt";
		else if (op == BinaryOp.GREATER_EQ)
			return "sge";
		else if (op == BinaryOp.LESS)
			return "slt";
		else if (op == BinaryOp.LESS_EQ)
			return "sle";
		else if (op == BinaryOp.DIVIDE)
			return "div";
		return "";
	}
	public String toString()
	{		
		return ( "\tlw " + "$t1" + ", " + ((rs1.num)*4) + "($sp)" + "\n"
				+ "\tlw " + "$t2" + ", " + ((rs2.num)*4) + "($sp)" + "\n"
				+ "\t" + getOp() + " " + "$t0" + ", " + "$t1" + ", " + "$t2" + "\n"
				+ "\tsw $t0, " + ((dst.num)*4) + "($sp)");
				
	}
	public String toCode()
	{		
		String ts1, ts2, td, re;
		re = "";
		if (rs1.toCode(this) == null)
		{
			ts1 = "$t0";
			re += "\tlw " + "$t0" + ", " + (rs1.num*4) + "($sp)\n";
		} else ts1 = rs1.toCode(this);
		if (rs2.toCode(this) == null)
		{
			ts2 = "$t1";
			re += "\tlw " + "$t1" + ", " + (rs2.num*4) + "($sp)\n";
		} else ts2 = rs2.toCode(this);
		if (dst.toCode(this) == null)
			td = "$t0";
		else td = dst.toCode(this);
		re += "\t" + getOp() + " " + td + ", " + ts1 + ", " + ts2;
		if (dst.toCode(this) == null)
			re += "\n" + "\tsw " + "$t0" + ", " + (dst.num*4) + "($sp)";
		return re;
	}
	public Temp[] getS()
	{
		Temp[] a = new Temp[2];
		a[0] = rs1;
		a[1] = rs2;
		return a;
	}
	public Temp[] getD()
	{
		Temp[] a = new Temp[1];
		a[0] = dst;
		return a;
	}
}