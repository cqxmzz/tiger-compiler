package javac.type;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javac.symbol.Symbol;

public final class RECORD extends Type {

	public static final class RecordField {

		public Type type;
		public Symbol name;
		public int index;

		public RecordField(Type type, Symbol name, int index) {
			this.type = type;
			this.name = name;
			this.index = index;
		}
	}

	public List<RecordField> fields;
	public Symbol name;

	public RECORD(Symbol name) {
		fields = new ArrayList<RecordField>();
		this.name = name;
	}

	@Override
	public boolean equals(Object other) {
		if (other instanceof RECORD) {
			return name.equals(((RECORD) other).name);
		}
		return false;
	}
	
	public Type findSymbol(Symbol s)
	{
		Iterator<RecordField> iter = fields.iterator();
		while (iter.hasNext())
		{
			RecordField tmp = iter.next();
			if (tmp.name.equals(s)) return tmp.type;
		}
		return null;
	}

	@Override
	public boolean isArray() {
		return false;
	}

	@Override
	public boolean isRecord() {
		return true;
	}
	
	@Override
	public boolean isInt() {
		return false;
	}
	
	@Override
	public boolean isString() {
		return false;
	}
	
	@Override
	public boolean isChar() {
		return false;
	}
	
	public String toString() {
		return " " + name.toString() + " ";
	}
}
