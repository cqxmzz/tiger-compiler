package javac.quad;

import javac.quad.Label;

public class LabelAddress extends Oprand {

	public Label label;
	public LabelAddress(Label name) {
		label = name;
	}
	@Override
	public String toString() {
		return label.toString();
	}

}
