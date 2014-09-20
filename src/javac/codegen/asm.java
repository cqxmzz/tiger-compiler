package javac.codegen;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;

import javac.quad.Temp;
import javac.regallo.basicblock;

public class asm
{
	public basicblock bb;
	public HashSet<Temp> liveSet;
	public LinkedHashMap<Temp, Integer> liveTime;
	public LinkedHashMap<Temp, Integer> tempname;
	public asm()
	{
		tempname = new LinkedHashMap<Temp, Integer>();
	}
	public void setBlock(basicblock bbb)
	{
		bb = bbb;
	}
	@Override
	public String toString()
	{
		return null;
	}
	public String toCode()
	{
		return null;
	}
	
	public Temp[] getD()
	{
		return null;
	}
	
	public Temp[] getS()
	{
		return null;
	}
}