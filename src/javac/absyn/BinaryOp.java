package javac.absyn;

	public enum BinaryOp {
		MULTIPLY, DIVIDE, MODULO, PLUS, MINUS, LESS, LESS_EQ, GREATER, GREATER_EQ, EQ, NEQ, AND, OR, ASSIGN, COMMA;
	}
/*
	public static BinaryOp reverse(BinaryOp op)
	{
		if (op == EQ) return NEQ;
		if (op == NEQ) return EQ;
		if (op == LESS) return GREATER_EQ;
		if (op == LESS_EQ) return GREATER;
		if (op == GREATER) return LESS_EQ;
		if (op == GREATER_EQ) return LESS;
		else return null;
	}
*/