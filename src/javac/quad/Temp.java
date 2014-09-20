package javac.quad;

import javac.codegen.asm;
import javac.regallo.RegAllocate;

public class Temp {

	public Temp() {
		num = count++;
	}
	public Temp(int i)
	{
		num = i;
	}
	@Override
	public String toString()
	{
		return "$t" + num;
	}
	public String toCode(asm code)
	{
		if (code.tempname != null && code.tempname.get(this) != null && code.tempname.get(this) < RegAllocate.regs.size())
			return RegAllocate.regs.get(code.tempname.get(this));
		else 
		{
			//System.out.println("~");
			return null;
		}
	}
	public int num;
	public static int count = 0;
	public static int extracount = 0;
}
