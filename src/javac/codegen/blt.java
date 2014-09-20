package javac.codegen;
import javac.quad.*;
public class blt extends asm
{
	Temp temp1;
	Temp temp2;
	public Label label;
	public blt(Temp t1,Temp t2, Label l)
	{
		temp1 = t1;
		temp2 = t2;
		label = l;
	}
	public String toString()
	{
		return 
		(	"\tlw " + "$t0" + ", " + (temp1.num*4) + "($sp)" + "\n"	
			+"\tlw " + "$t1" + ", " + (temp2.num*4) + "($sp)" + "\n"		
			+	"\tblt " + "$t0" + ", " + "$t1" + ", " + label); 
	}
	public String toCode()
	{
		String ts1, ts2, re;
		re = "";
		if (temp1.toCode(this) == null) 
		{
			ts1 = "$t0";
			re += "\tlw " + "$t0" + ", " + (temp1.num*4) + "($sp)\n";
		} 
		else 
			ts1 = temp1.toCode(this);
		
		if (temp2.toCode(this) == null) 
		{
			ts2 = "$t1";
			re += "\tlw " + "$t1" + ", " + (temp2.num*4) + "($sp)\n";
		} 
		else 
			ts2 = temp2.toCode(this);
		re += "\tblt " + ts1 + ", " + ts2 + ", " + label;
		return re;
	}
	public Temp[] getS()
	{
		Temp[] a = new Temp[2];
		a[0] = temp1;
		a[1] = temp2;
		return a;
	}
	public Temp[] getD()
	{
		return null;
	}
}