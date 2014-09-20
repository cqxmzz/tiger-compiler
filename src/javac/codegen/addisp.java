package javac.codegen;

import javac.quad.Temp;


public class addisp extends asm
{
	public int num;
	public addisp(int i)
	{
		num = i;
	}
	public String toString()
	{
		return "\taddi $sp, $sp, " + num;		
	}
	public String toCode()
	{
		return "\taddi $sp, $sp, " + num;		
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