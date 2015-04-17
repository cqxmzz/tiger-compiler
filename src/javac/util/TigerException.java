package javac.util;

import javac.absyn.Node;
import javac.symbol.Symbol;

public class TigerException extends Exception
{
	public TigerException(int i, String s, Symbol syn, Node n)
	{
		super(i + s + " " + syn.name + " at: " + n.position());
	}
	
	public TigerException(int i, String s, Node n)
	{
		super(i + s + " " + n.toString() + " at: " + n.position());
	}
	
	public TigerException(int i, String s)
	{
		super(i + s);
	}
	
	public TigerException(String s)
	{
		super(s);
	}
}
