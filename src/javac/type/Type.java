package javac.type;

import javac.symbol.Symbol;

public abstract class Type {

	public static final RECORD NULL = new RECORD(Symbol.valueOf("(null)"));
	
	public boolean isNull(){
		return this == NULL;
	}
	
	public abstract boolean isArray();
	
	public abstract boolean isRecord();
	
	public abstract boolean isInt();
	
	public abstract boolean isChar();

	public abstract boolean isString();
	
	public abstract String toString();
	
}
