package javac.codegen;

import javac.quad.Temp;

class swra extends asm
{
	int offset;
	
	public swra(int of)
	{
		offset = of;
	}
	
	public String toString()
	{
		return "\tsw $ra, " + offset + "($sp)";
	}
	public String toCode()
	{
		return "\tsw $ra, " + offset + "($sp)";
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