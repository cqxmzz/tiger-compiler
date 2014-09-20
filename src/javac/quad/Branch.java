package javac.quad;

import javac.absyn.BinaryOp;

public class Branch extends Quad {
	public Branch(){
		
	}
	public Branch(Label la, Oprand l, Oprand r, BinaryOp o) {
		label = la;
		left = l;
		right = r;
		op = o;
		if (left instanceof Mem) Temp.extracount++;
	}
	public Oprand left;
	public Oprand right;
	public BinaryOp op;
	public Label label;
	@Override
	public String toString() {
		return left.toString() + BinOp.trans(op) + right.toString() + "? goto " + label.toString();
	}
}
