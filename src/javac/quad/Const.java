package javac.quad;

public class Const extends Oprand {

	public int value;
	public Const(int v) {
		value = v;
	}

	@Override
	public String toString() {
		return value + "";
	}

}
