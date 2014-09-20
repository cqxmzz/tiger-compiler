package javac.regallo;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

import javac.codegen.*;
import javac.quad.Temp;

import java.util.*;

public class basicblock
{
	static public int count;
	public ArrayList<asm> asmlist;
	public ArrayList<basicblock> gotoList;
	
	public HashSet<Temp> useSet;
	public HashSet<Temp> defSet;
	public HashSet<Temp> inSet;
	public HashSet<Temp> outSet;
	
	public basicblock() 
	{
		inSet = new HashSet<Temp>();
		outSet = new HashSet<Temp>();
		useSet = new HashSet<Temp>();
		defSet = new HashSet<Temp>();
		gotoList = new ArrayList<basicblock>();
		asmlist = new ArrayList<asm>();
	}
	public void setUse()
	{
		Iterator<asm> iter = asmlist.iterator();
		int num = 0;
		while (iter.hasNext())
		{
			num++;
			asm code = iter.next();
			Temp[] a = code.getS();
			if (a == null) continue;
			for (int i = 0;i < a.length;i++)
			{
				Temp temp = a[i]; 
				if (useSet.contains(temp)) continue;
				boolean use = true;
				for (int j = 0; j < num-1; j++)
					if (asmlist.get(j).getD() != null && (asmlist.get(j).getD())[0].equals(temp))
					{
						use = false;
						break;
					}
				if (use) useSet.add(temp);
			}
		}
	}
	public void setDef()
	{
		Iterator<asm> iter = asmlist.iterator();
		int num = 0;
		while (iter.hasNext())
		{
			num++;
			asm code = iter.next();
			if (code.getD() == null) continue;
			Temp temp = (code.getD())[0]; 
			if (defSet.contains(temp)) continue;
			boolean def = true;
			for (int i = 0; i <= num-1; i++)
			{
				Temp[] b = asmlist.get(i).getS();
				if (b == null) continue;
				for (int j = 0;j < b.length;j++)
					if (b[j].equals(temp))
					{
						def = false;
						break;
					}
			}
			if (def) defSet.add(temp);
		}
	}
	public void computeLiveness()
	{
		HashSet<Temp> nowLive = (HashSet<Temp>)outSet.clone();
		for (int i = asmlist.size() - 1;i >= 0;i--)
		{
			asm code = asmlist.get(i);
			code.liveSet = (HashSet<Temp>)nowLive.clone();
			if (code.getD() != null)
				for (int j = 0;j < code.getD().length;j++)
					nowLive.remove(code.getD()[j]);
			if (code.getS() != null)
				for (int j = 0;j < code.getS().length;j++)
					nowLive.add(code.getS()[j]);
		}
	}
}