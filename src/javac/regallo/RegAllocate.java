package javac.regallo;

import java.io.PrintWriter;
import java.util.*;
import javac.quad.*;
import javax.tools.JavaCompiler;

import javac.codegen.*;
import javac.env.Entry;
import javac.quad.GetQuads;
import javac.symbol.Symbol;

public class RegAllocate
{
	//public static ArrayList<asm> asmlist;
	public static ArrayList<asm> asmlist;
	public static basicblock currentBlock;
	public static LinkedHashMap<String, ArrayList<basicblock>> allblocks;
	public static ArrayList<basicblock> blocks;
	public static ArrayList<String> regs;
	public static String name;
	public static void registerAllocate()
	{
		allblocks = new LinkedHashMap<String, ArrayList<basicblock>>();
		Iterator<Symbol> it = GetQuads.allFunQuads.keySet().iterator();
		while(it.hasNext())
		{
			name = it.next().name;
			RegAllocate.ini(name);
			RegAllocate.setBlockGoto(name);
			Iterator<basicblock> it1 = blocks.iterator();
			while (it1.hasNext())
			{
				basicblock b = it1.next();
				b.setDef();
				b.setUse();
			}
			computeInOut(name);
			it1 = blocks.iterator();
			while (it1.hasNext())
				it1.next().computeLiveness();
			
		}
		linearScan();
	}
	public static void ini(String st)
	{
		asmlist = GetCode.allLists.get(st);
		basicblock.count = 0;
		blocks = new ArrayList<basicblock>();
		allblocks.put(st, blocks);
		Iterator<asm> it1 = asmlist.iterator();
		while (it1.hasNext())
		{
			asm code = it1.next();
			if (code instanceof label)
			{
				if (currentBlock == null || (!currentBlock.asmlist.isEmpty()))
				{
					currentBlock = new basicblock();
					blocks.add(currentBlock);
				}
				currentBlock.asmlist.add(code);
				code.setBlock(currentBlock);
			}
			else if (code instanceof beqz || code instanceof bnez || code instanceof jr || code instanceof j
					|| code instanceof bne
					|| code instanceof beq
					|| code instanceof bgt
					|| code instanceof blt
					|| code instanceof ble
					|| code instanceof bge
					)
			{
				currentBlock.asmlist.add(code);
				code.setBlock(currentBlock);
				if (it1.hasNext())
				{
					currentBlock = new basicblock();
					blocks.add(currentBlock);
				}
			}
			else 
			{
				currentBlock.asmlist.add(code);
				code.setBlock(currentBlock);
			}
		}
	}
	public static void setBlockGoto(String name)
	{
		for (int i = 0;i < blocks.size();i++)
		{
			basicblock block = blocks.get(i);
			asm code = block.asmlist.get(block.asmlist.size()-1);
			Label label = null;
			if (code instanceof jr)
				continue;
			if (!(code instanceof j))
			{
				if (i < blocks.size() - 1)
					block.gotoList.add(blocks.get(i + 1));
			} else label = ((j)code).label;
			if (code instanceof beqz) label = ((beqz)code).label;
			if (code instanceof bnez) label = ((bnez)code).label;
			if (code instanceof beq) label = ((beq)code).label;
			if (code instanceof bne) label = ((bne)code).label;
			if (code instanceof bgt) label = ((bgt)code).label;
			if (code instanceof bge) label = ((bge)code).label;
			if (code instanceof ble) label = ((ble)code).label;
			if (code instanceof blt) label = ((blt)code).label;
			if (label != null) block.gotoList.add(getBlock(label));
		}
	}
	static public basicblock getBlock(Label label)
	{
		Iterator<basicblock> iter = blocks.iterator();
		
		while (iter.hasNext())
		{
			basicblock block = iter.next();
			if (block.asmlist.get(0) != null && block.asmlist.get(0) instanceof label && ((label)block.asmlist.get(0)).label.name.equals(label.toString()))
				return block;
		}
		return null;
	}
	static public void computeInOut(String name)
	{		
		boolean change = true;
		while (change)
		{
			change = false;
			for (int i = 0;i < blocks.size();i++)
			{
				basicblock block = blocks.get(i);
				block.outSet.clear();
				for (int j = 0;j < block.gotoList.size();j++)
				{
					block.outSet.addAll(block.gotoList.get(j).inSet);
				}
				HashSet<Temp> newIn;
				newIn = Sets.setUnion(block.useSet, Sets.setMinus(block.outSet, block.defSet));
				if (!newIn.equals(block.inSet))
				{
					change = true;
					block.inSet = newIn;
				}
			}
		}

	}
	public static void output(String in)
	{
		try
		{
			String inn = in.substring(0, in.length()-5) + ".s";
			PrintWriter outt = new PrintWriter(inn);
			Iterator<String> it = GetCode.allLists.keySet().iterator();
			while (it.hasNext())
			{
				asmlist = GetCode.allLists.get(it.next());
				Iterator<asm> iter = asmlist.iterator();
				iter = asmlist.iterator();
				while (iter.hasNext())
				{
					asm code = iter.next();
					if (code.toCode() != null)
					outt.println(code.toCode());
				}
			}
			outt.close();
		}
        catch (Exception e)   
        {  
            e.printStackTrace();  
        }  
	}
	
	public static void linearScan()
	{
		regs = new ArrayList<String>();
		
		regs.add("$s0");
		regs.add("$s1");
		regs.add("$s2");
		regs.add("$s3");
		regs.add("$s4");
		regs.add("$s5");
		regs.add("$s6");
		regs.add("$s7");
		
		regs.add("$t2");
		regs.add("$t3");
		regs.add("$t4");
		regs.add("$t5");
		regs.add("$t6");
		regs.add("$t7");
		regs.add("$t8");
		regs.add("$t9");
		
		regs.add("$a0");
		regs.add("$a1");
		regs.add("$a2");
		regs.add("$a3");
		
		//regs.add("$k0");
		//regs.add("$k1");
		
		//regs.add("$v1");
		//regs.add("$gp");
		//regs.add("$fp");
		
		int regnum = regs.size();
		
		//ok
		Iterator<String> it = GetCode.allLists.keySet().iterator();
		while (it.hasNext())
		{
			asmlist = GetCode.allLists.get(it.next());
			HashMap<Temp, Integer> birth = new HashMap<Temp, Integer>();
			HashMap<Temp, Integer> death = new HashMap<Temp, Integer>();
			for (int i = 0; i <= asmlist.size()-1; ++i)
			{
				asm code = asmlist.get(i);
				if (code.liveSet != null)
				{
					Iterator<Temp> it1 = code.liveSet.iterator();
					while (it1.hasNext())
					{
						Temp tmp = it1.next();
						if (!birth.containsKey(tmp))
							birth.put(tmp, i);
					}
				}
			}
			for (int i = asmlist.size()-1; i >= 0; --i)
			{
				asm code = asmlist.get(i);
				if (code.liveSet != null)
				{
					Iterator<Temp> it1 = code.liveSet.iterator();
					while (it1.hasNext())
					{
						Temp tmp = it1.next();
						if (!death.containsKey(tmp))
							death.put(tmp, i);
					}
				}
			}
			for (int i = 0; i <= asmlist.size()-1; ++i)
			{
				asm code = asmlist.get(i);
				code.liveTime = new LinkedHashMap<Temp, Integer>();
				asm oldcode = new asm();
				if (i != 0) 
					oldcode = asmlist.get(i-1);
				else
					oldcode = null;
				if (oldcode != null && oldcode.liveSet != null)
				{
					Iterator<java.util.Map.Entry<Temp, Integer>> it1 = oldcode.liveTime.entrySet().iterator();
					while (it1.hasNext())
					{
						Temp tmp = it1.next().getKey();
						int t = death.get(tmp);
						if (t >= i)
							code.liveTime.put(tmp, t-i);
					}
					Iterator<Temp> it2 = code.liveSet.iterator();
					while (it2.hasNext())
					{
						Temp tmp = it2.next();
						if (!code.liveTime.containsKey(tmp))
							code.liveTime.put(tmp, death.get(tmp)- i);
					}
				}
			}
			
			//ok
			
			for (int i = 0; i < asmlist.size(); ++i)
			{
				asm code = asmlist.get(i);
				LinkedHashMap<Temp, Integer> sortedLiveTime = new LinkedHashMap<Temp, Integer>();
				while (sortedLiveTime.size() != code.liveTime.size())
				{
					Temp tmpmin = new Temp();
					Integer min = 1000000;
					Iterator<Temp> it2 = code.liveTime.keySet().iterator();
					while (it2.hasNext())
					{
						Temp tmp = it2.next();
						int k = code.liveTime.get(tmp);
						if (k < min && !sortedLiveTime.containsKey(tmp))
						{
							min = k;
							tmpmin = tmp;
						}
					}
					sortedLiveTime.put(tmpmin, min);
				}
				code.liveTime = sortedLiveTime;
			}
			//sort ok
			
			for (int i = 0; i < asmlist.size(); ++i)
			{
				asm code = asmlist.get(i);
				asm oldcode;
				if (i != 0) 
					oldcode = asmlist.get(i-1);
				else
					oldcode = null;
				
				if (oldcode != null)
				{
					Iterator<java.util.Map.Entry<Temp, Integer>> it0 = oldcode.tempname.entrySet().iterator();
					while (it0.hasNext())
					{
						Temp tmp = it0.next().getKey();
						if (oldcode.liveTime.containsKey(tmp) || code.liveTime.containsKey(tmp))
							code.tempname.put(tmp, oldcode.tempname.get(tmp));
					}
				}
				
				
				Iterator<java.util.Map.Entry<Temp, Integer>> it2 = code.liveTime.entrySet().iterator();
				while (it2.hasNext())
				{
					java.util.Map.Entry<Temp, Integer> entry = it2.next();
					Temp tmp = entry.getKey();
					Integer k = entry.getValue();
					if (oldcode == null || !oldcode.tempname.keySet().contains(tmp) && !oldcode.liveTime.containsKey(tmp))
					{
						if (code.tempname.size() < regnum && GetQuads.ints.get(name).get(0) == tmp)
						{
							for (int j = 0; j < regnum; ++j)
							{
								if (!code.tempname.containsValue(j))
								{
									code.tempname.put(tmp, j);
									break;
								}
							}
						}
						if (code.tempname.size() < regnum && GetQuads.ints.get(name).get(1) == tmp)
						{
							for (int j = 0; j < regnum; ++j)
							{
								if (!code.tempname.containsValue(j))
								{
									code.tempname.put(tmp, j);
									break;
								}
							}
						}
						if (code.tempname.size() < regnum && GetQuads.ints.get(name).get(2) == tmp)
						{
							for (int j = 0; j < regnum; ++j)
							{
								if (!code.tempname.containsValue(j))
								{
									code.tempname.put(tmp, j);
									break;
								}
							}
						}
						if (code.tempname.size() < regnum && GetQuads.ints.get(name).get(4) == tmp)
						{
							for (int j = 0; j < regnum; ++j)
							{
								if (!code.tempname.containsValue(j))
								{
									code.tempname.put(tmp, j);
									break;
								}
							}
						}
					}
				}
				
				Iterator<java.util.Map.Entry<Temp, Integer>> it21 = code.liveTime.entrySet().iterator();
				while (it21.hasNext())
				{
					java.util.Map.Entry<Temp, Integer> entry = it21.next();
					Temp tmp = entry.getKey();
					Integer k = entry.getValue();
					if (oldcode == null || !oldcode.tempname.keySet().contains(tmp) && !oldcode.liveTime.containsKey(tmp))
					if (code.tempname.size() < regnum && k <= 500)
					{
						for (int j = 0; j < regnum; ++j)
						{
							if (!code.tempname.containsValue(j))
							{
								code.tempname.put(tmp, j);
								break;
							}
						}
					}
				}
			}
		}
	}
}