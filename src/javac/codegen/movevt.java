package javac.codegen;

import javac.quad.*;

class movevt extends asm
{
	public Temp rd;
	
	public movevt(Temp dd)
	{
		rd = dd;
	}
	
	public String toString()
	{
		return "\tlw " + "$t0" + ", " + (rd.num*4) + "($sp)"+ "\n"
				+"\tmove " + "$v0, " + "$t0";
	}
	public String toCode()
	{
		if (rd.toCode(this) == null)
			return "\tlw $v0, " + (rd.num*4) + "($sp)";
		else
			return "\tmove $v0, " + rd.toCode(this);
	}
	public Temp[] getS()
	{
		Temp[] a = new Temp[1];
		a[0] = rd;
		return a;
	}
	public Temp[] getD()
	{
		return null;
	}
}