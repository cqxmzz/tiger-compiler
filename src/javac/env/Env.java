package javac.env;
import javac.symbol.*;
import java.util.*;

public class Env implements Cloneable
{
	public HashMap<Symbol, Entry> map;
	
	public Env()
	{
		map = new HashMap<Symbol, Entry>();
	}
	
	public Entry getEntry(Symbol s)
	{
		return map.get(s);
	}
	
	public Entry putEntry(Symbol s, Entry e)
	{
		return map.put(s, e);
	}
	
	@SuppressWarnings("unchecked")
	public Env clone()
	{
		Env tmp = new Env();
		tmp.map = (HashMap<Symbol, Entry>)this.map.clone();
		return tmp;
	}
	
	public String toString()
	{
		return map.toString();
	}
}