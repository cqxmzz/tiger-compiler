package javac.codegen;
import javac.quad.*;
public class li extends asm
{
	int im;
	Temp temp;
	public li(Temp t, int ii)
	{
		temp = t;
		im = ii;
	}
	public String toString()
	{
		return ("\tli " + "$t0" + ", " + im + "\n"
				+ "\tsw $t0, " + ((temp.num)*4) + "($sp)");
	}
	public String toCode()
	{
		String ts, re;
		re = "";
		if (temp.toCode(this) == null) ts = "$t0"; else ts = temp.toCode(this);
		re += "\tli " + ts + ", " + im;
		if (temp.toCode(this) == null) re += "\n\tsw " + "$t0" + ", " + (temp.num*4) + "($sp)";
		return re;
	}
	public Temp[] getS()
	{
		return null;
	}
	public Temp[] getD()
	{
		Temp[] a = new Temp[1];
		a[0] = temp;
		return a;
	}
}