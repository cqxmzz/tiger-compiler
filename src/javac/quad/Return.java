package javac.quad;

public class Return extends Quad {

	public Oprand value;
	public Return(Oprand v){
		value = v;
		if (v instanceof Mem) Temp.extracount++;
		
	}

	@Override
	public String toString() {
		return "return " + value.toString();
	}
}
