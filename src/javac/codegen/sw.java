package javac.codegen;
import javac.quad.*;
public class sw extends asm
{
	Temp rd, rs;
	int offset;
	public sw(Temp rs1, int of, Temp dd)
	{
		rs = rs1; offset = of; rd = dd;
	}
	public String toString()
	{
		return "\tlw " + "$t0" + ", " + (rs.num*4) + "($sp)\n" +
				   "\tlw " + "$t1" + ", " + (rd.num*4) + "($sp)\n" + 
				   "\tsw " + "$t0" + ", " + offset + "($t1)";		   
	}
	public String toCode()
	{
		String ts, td;
		String re = "";
		if (rs.toCode(this) == null) {
			ts = "$t0";
			re += "\tlw " + "$t0" + ", " + (rs.num*4) + "($sp)\n";
		} else ts = rs.toCode(this);
		if (rd.toCode(this) == null) {
			td = "$t1";
			re += "\tlw " + "$t1" + ", " + (rd.num*4) + "($sp)\n";
		} else td = rd.toCode(this);
		re += "\tsw " + ts + ", " + offset + "(" + td + ")";
		return re;	}
	public Temp[] getS()
	{
		Temp[] a = new Temp[2];
		a[0] = rs;
		a[1] = rd;
		return a;
	}
	public Temp[] getD()
	{
		return null;
	}
}