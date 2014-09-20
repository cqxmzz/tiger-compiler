package javac.absyn;

import javac.util.Position;

public class BinaryExpr extends Expr {
	
	public Expr l, r;
	public BinaryOp op;

	public BinaryExpr(Position pos, Expr lhs, BinaryOp op, Expr rhs) {
		super(pos);
		l = lhs;
		r = rhs;
		this.op = op;
	}

	@Override
	public void accept(NodeVisitor visitor) {
		l.accept(visitor);
		r.accept(visitor);
		visitor.visit(this);
	}
	
	public static BinaryOp reverse(BinaryOp op)
	{
		if (op == BinaryOp.EQ) return BinaryOp.NEQ;
		if (op == BinaryOp.NEQ) return BinaryOp.EQ;
		if (op == BinaryOp.LESS) return BinaryOp.GREATER_EQ;
		if (op == BinaryOp.LESS_EQ) return BinaryOp.GREATER;
		if (op == BinaryOp.GREATER) return BinaryOp.LESS_EQ;
		if (op == BinaryOp.GREATER_EQ) return BinaryOp.LESS;
		else return null;
	}
}
