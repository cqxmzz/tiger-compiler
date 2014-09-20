package javac.quad;

public class Label {
	public String name;
	public Label() {
		name = "_L" + count++;
	}
	
	public Label(String s) {
		name = s;
	}
	
	public String toString() {
		return name;
	}
	
	static int count = 0;
}
