package javac.codegen;

import javac.quad.*;

class swsp extends asm
{
	public Temp rs;
	int offset;
	
	public swsp(Temp ss, int of)
	{
		rs = ss; offset = of;
	}
	
	public String toString()
	{
		return "\tlw " + "$t0" + ", " + (4*rs.num) + "($sp)"+"\n" 
				+ "\tsw " + "$t0" + ", " + offset + "($sp)";
	}
	public String toCode()
	{
		String ts, re;
		re = "";
		if (rs.toCode(this) == null) {
			ts = "$t0";
			re += "\tlw " + "$t0" + ", " + (rs.num*4) + "($sp)\n";
		} else ts = rs.toCode(this);
		re += "\tsw " + ts + ", " + offset + "($sp)";
		return re;
	}
	public Temp[] getS()
	{
		Temp[] a = new Temp[1];
		a[0] = rs;
		return a;
	}
	public Temp[] getD()
	{
		return null;
	}
}