package javac.codegen;
import javac.quad.*;
public class j extends asm
{
	public Label label;
	public j(Label l1)
	{
		label = l1;
	}
 	public String toString()
	{
		return "\tj " + label;
	}
 	public String toCode()
	{
		return "\tj " + label;
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