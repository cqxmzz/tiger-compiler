package javac.codegen;

import javac.quad.Temp;

class lwra extends asm
{
	int offset;
	
	public lwra(int of)
	{
		offset = of;
	}
	
	public String toString()
	{
		return "\tlw $ra, " + offset + "($sp)";
	}
	public String toCode()
	{
		return "\tlw $ra, " + offset + "($sp)";
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