package javac.quad;

public class LabelQuad extends Quad {

	public LabelQuad(Label l){
		label = l;
	}
			
	public Label label;
	@Override
	public String toString() {
		return label.toString() + ":";
	}
}
