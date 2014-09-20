package javac.codegen;

import javac.quad.*;

class movetv extends asm
{
	public Temp rd;
	
	public movetv(Temp dd)
	{
		rd = dd;
	}
	
	public String toString()
	{
		return "\tmove " + "$t0" + ", $v0" + "\n"
				+ "\tsw " + "$t0" + ", " + (rd.num*4) + "($sp)";	
	}
	public String toCode()
	{
		if (rd.toCode(this) == null)
			return "\tsw $v0, " + (rd.num*4) + "($sp)";
		else
			return "\tmove " + rd.toCode(this) + ", $v0";		
	}
	public Temp[] getS()
	{
		return null;
	}
	public Temp[] getD()
	{
		Temp[] a = new Temp[1];
		a[0] = rd;
		return a;
	}
}