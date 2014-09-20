package javac.env;

import javac.type.Type;
import java.util.*;

public class FunctionEntry extends Entry
{
	public Type returnType;
	public String name;
	public ArrayList<Type> arr;
	public FunctionEntry(String n)
	{
		name = n;
		returnType = null;
		arr = new ArrayList<Type>();
	}
	public String toString()
	{
		return " FunctionEntry : " + returnType.toString() + " " 
		       + name.toString() + " " + arr.toString() + "\n";
	}
}