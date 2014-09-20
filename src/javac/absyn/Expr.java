package javac.absyn;

import javac.type.Type;
import javac.util.Position;

public abstract class Expr extends Node {
	
	public Type ty;
	public int assignable;
	public int inBracket;
	public Expr(Position pos) {
		super(pos);
		assignable = 0;
		inBracket = 0;
	}
}
