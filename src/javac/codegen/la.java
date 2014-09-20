package javac.codegen;
import javac.quad.*;
public class la extends asm
{
	Temp temp;
	Label label;
	public la(Temp dd, Label l1)
	{
		temp = dd; label = l1;
	}
	public String toString()
	{
		return ("\tla " + "$t0" + ", " + label.toString() + "\n"
				+ "\tsw $t0, " + ((temp.num)*4) + "($sp)");
	}
	public String toCode()
	{
		String ts, re;
		re = "";
		if (temp.toCode(this) == null) ts = "$t0"; else ts = temp.toCode(this);
		re += "\tla " + ts + ", " + label.toString();
		if (temp.toCode(this) == null) re += "\n\tsw " + "$t0" + ", " + (temp.num*4) + "($sp)";
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
		a[0] = temp;
		return a;
		
	}
}