package javac.quad;

public class TempOprand extends Oprand{
	public Temp temp;
	public TempOprand(Temp t) {
		temp = t;
	}
	public String toString() {
		return temp.toString();
	}
}
