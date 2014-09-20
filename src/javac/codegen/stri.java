package javac.codegen;
import javac.quad.*;
public class stri extends asm
{
	String st;
	public stri(String s)
	{
		st = s;
	}
	public String toString()
	{
		return st; 
	}
	public String toCode()
	{
		return st; 
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