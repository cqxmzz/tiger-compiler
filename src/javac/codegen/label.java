package javac.codegen;
import javac.quad.*;
public class label extends asm
{
	public Label label;
	public label(Label l)
	{
		label = l;
	}
	public String toString()
	{
		return label + ":";
	}
	public String toCode()
	{
		return label + ":";
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