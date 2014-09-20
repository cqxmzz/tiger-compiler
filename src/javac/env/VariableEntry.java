package javac.env;

import javac.type.Type;
import javac.symbol.*;

public class VariableEntry extends Entry
{
	public Type type;
	public Symbol name;
	public VariableEntry(Symbol n, Type type2)
	{
		name = n;
		type = type2;
	}
	public String toString()
	{
		return "VariableEntry : " + type.toString() + name.toString() + "\n";
	}
}