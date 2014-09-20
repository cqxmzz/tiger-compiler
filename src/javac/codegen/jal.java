package javac.codegen;
import java.util.Iterator;

import javac.env.Entry;
import javac.quad.*;
public class jal extends asm
{
	Label label;
	int n;
	int x;
	public jal(Label l, int nn, int xx)
	{
		label = l;
		n = nn;
		x = xx;
	}
	public String toString()
	{
		 return "\taddi $sp, $sp, " + (-n) + "\n"
					+"\tjal " + label + "\n"
					+"\taddi $sp, $sp, " + (n);
	}
	public String toCode()
	{
		String s = "";
		Iterator<java.util.Map.Entry<Temp, Integer>> it0 = this.tempname.entrySet().iterator();
		while (it0.hasNext())
		{
			java.util.Map.Entry<Temp, Integer> en = it0.next();
			Temp tmp = en.getKey();
			int in = en.getValue();
			s += "\tsw " + tmp.toCode(this) + ", " + (4*x + 4 + 4*in) + "($sp)\n";
		}
		
		String ss = "";
		Iterator<java.util.Map.Entry<Temp, Integer>> it1 = this.tempname.entrySet().iterator();
		while (it1.hasNext())
		{
			java.util.Map.Entry<Temp, Integer> en = it1.next();
			Temp tmp = en.getKey();
			int in = en.getValue();
			ss += "\n\tlw " + tmp.toCode(this) + ", " + (4*x + 4 + 4*in) + "($sp)";
		}
		
		return s 
				+ "\taddi $sp, $sp, " + (-n) + "\n"
				+"\tjal " + label + "\n"
				+"\taddi $sp, $sp, " + (n)
				+ ss; 
	}
	public Temp[] getS()
	{
		return null;
	}
 	public Temp[] getD()
	{
		return null;
	}
}