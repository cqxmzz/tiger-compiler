package javac.quad;

public class Mem extends Oprand {

	public int offset;
	public int length = 4;
	public Temp base;
	public Mem(Temp t) {
		base = t;
	}
	
	public Mem(Temp t, int o) {
		base = t;
		offset = o;
	}
	
	public Mem(int o) {
		this(null, o);
	}
	
	@Override
	public String toString() {
		if (base == null) {
			return offset + "($zero)";
		}
		else return offset + "(" + base.toString() + ")";
	}

}
