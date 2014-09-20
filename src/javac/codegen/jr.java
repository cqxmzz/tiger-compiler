package javac.codegen;
import javac.quad.*;
public class jr extends asm
{
	Label label;
	public jr()
	{
	}
	public String toString()
	{
		return "\tjr $ra"; 
	}
	public String toCode()
	{
		return "\tjr $ra"; 
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