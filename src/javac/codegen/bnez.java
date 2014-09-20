package javac.codegen;
import javac.quad.*;
public class bnez extends asm
{
	Temp temp;
	public Label label;
	public bnez(Temp t, Label l)
	{
		temp = t;
		label = l;
	}
	public String toString()
	{
		return (	"\tlw " + "$t0" + ", " + (temp.num*4) + "($sp)" + "\n"	
					+	"\tbnez " + "$t0" + ", " + label); 
	}
	public String toCode()
	{
		String ts, re;
		re = "";
		if (temp.toCode(this) == null) {
			ts = "$t1";
			re += "\tlw " + "$t1" + ", " + (temp.num*4) + "($sp)\n";
		} else ts = temp.toCode(this);
		re += "\tbnez " + ts + ", " + label;
		return re;
		}
	public Temp[] getS()
	{
		Temp[] a = new Temp[1];
		a[0] = temp;
		return a;
	}
	public Temp[] getD()
	{
		return null;
	}
}