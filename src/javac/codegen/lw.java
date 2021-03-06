package javac.codegen;
import javac.quad.*;
public class lw extends asm
{
	Temp rd, rs;
	int offset;
	public lw(Temp dd, int of, Temp rs1)
	{
		rd = dd; offset = of; rs = rs1;
	}
	public String toString()
	{
		return "\tlw " + "$t1" + ", " + (4*rs.num) + "($sp)\n" +
				   "\tlw " + "$t0" + ", " + offset + "($t1)\n" + 
				   "\tsw " + "$t0" + ", " + (4*rd.num) + "($sp)";
	}
	public String toCode()
	{
		String td, ts;
		String re = "";
		if (rd.toCode(this) == null) {
			td = "$t0";
		} else td = rd.toCode(this);
		if (rs.toCode(this) == null) {
			ts = "$t1";
			re += "\tlw " + "$t1" + ", " + (rs.num*4) + "($sp)\n";
		} else ts = rs.toCode(this);
		re += "\tlw " + td + ", " + offset + "(" + ts + ")";
		if (rd.toCode(this) == null)
			re += "\n\tsw " + "$t0" + ", " + (rd.num*4) + "($sp)";
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
		Temp[] a = new Temp[1];
		a[0] = rd;
		return a;
	}
}