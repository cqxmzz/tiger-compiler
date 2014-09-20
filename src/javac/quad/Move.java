package javac.quad;

public class Move extends Quad {
	
	public Oprand src;
	public Oprand dst;
	public Move(Oprand d, Oprand s) {
		dst = d;
		src = s;
		if (src instanceof Mem) Temp.extracount++;
	}
	@Override
	public String toString() {
		return dst.toString() + " <- " + src.toString();
	}
}
