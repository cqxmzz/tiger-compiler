package javac.quad;

public class Call extends Quad {

	public Call(Label name, Temp[] p, Temp r) {
		function = name;
		params = p;
		result = r;
	}
	public Label function;
	public Temp[] params;
	public Temp result;
	@Override
	public String toString() 
	{
	String call = result.toString() + "<-" + function + "(";
		if (params != null)
			for (int i = 0; i < params.length; i++) {
				call += params[i].toString() + ',';
			}
		call += ")";
		return call;
	}
}
