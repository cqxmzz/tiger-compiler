package javac.regallo;
import java.util.*;
import javac.quad.*;

public class Sets
{
	public static boolean setEqual(HashSet<Temp> h1, HashSet<Temp> h2)
	{
		return h1.equals(h2);
	}
	public static HashSet<Temp> setUnion(HashSet<Temp> h1, HashSet<Temp> h2)
	{
		HashSet<Temp> h3 = new HashSet<Temp>(h1);
		h3.addAll(h2);
		return h3;
	}
	public static HashSet<Temp> setIntersection(HashSet<Temp> h1, HashSet<Temp> h2)
	{
		HashSet<Temp> h3 = new HashSet<Temp>();		
		Iterator<Temp> iter = h1.iterator();
		while (iter.hasNext())
		{
			Temp t = iter.next();
			if (h2.contains(t)) h3.add(t);
		}
		return h3;
	}
	public static HashSet<Temp> setMinus(HashSet<Temp> h1, HashSet<Temp> h2)
	{
		HashSet<Temp> h3 = new HashSet<Temp>(h1);		
		h3.removeAll(h2);
		return h3;
	}

}