package javac.codegen;

import javac.quad.*;

class lwsp extends asm
{
	public Temp rd;
	int offset;
	
	public lwsp(Temp dd, int of)
	{
		rd = dd; offset = of;
	}
	
	public String toString()
	{
		return "";
	}
	public String toCode()
	{
		String td;
		String re = "";
		if (rd.toCode(this) == null) td = "$t0"; 
		else td = rd.toCode(this);
		re += "\tlw " + td + ", " + offset + "($sp)";
		if (rd.toCode(this) == null) re += "\n\tsw " + "$t0" + ", " + (rd.num*4) + "($sp)";
		return re;
	}
	public Temp[] getS()
	{
		return null;
	}
	public Temp[] getD()
	{
		Temp[] a;
		a = new Temp[1];
		a[0] = rd;
		return a;
	}
}