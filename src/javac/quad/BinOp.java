package javac.quad;
import javac.absyn.BinaryOp;

public class BinOp extends Quad {

	public Oprand left;
	public Oprand right;
	public Oprand dst;
	public BinaryOp op;
	@Override
	public String toString() {
		return dst.toString() + "<-" + left.toString() + trans(op) +right.toString();
	}

	public BinOp(Oprand d, Oprand l, Oprand r, BinaryOp o) {
		dst = d;
		left = l;
		right = r;
		op = o;
		if (left instanceof Mem) Temp.extracount++;
		if (right instanceof Mem) Temp.extracount++;
		
		
	}

	static String trans(BinaryOp o) { 
		switch(o) {
		case PLUS: 
			return "+";
		case MINUS: 
			return "-";
		case MULTIPLY:
			return "*";
		case DIVIDE:
			return "/";
		case MODULO:
			return "%";
		case LESS:
			return "<";
		case LESS_EQ:
			return "<=";
		case GREATER:
			return ">";
		case GREATER_EQ:
			return ">=";
		case EQ:
			return "=";
		case NEQ:
			return "!=";
		case AND:
			return "&&";
		case OR:
			return "||";
		default:
			return "error";
		}
	}
}
