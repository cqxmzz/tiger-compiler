package javac.type;

public final class STRING extends Type {

	private static STRING instance = null;

	public static synchronized STRING getInstance() {
		if (instance == null) {
			instance = new STRING();
		}
		return instance;
	}

	private STRING() {
	}

	@Override
	public boolean equals(Object other) {
		return other instanceof STRING;
	}

	@Override
	public boolean isInt() {
		return false;
	}
	@Override
	public boolean isArray() {
		return false;
	}

	@Override
	public boolean isRecord() {
		return false;
	}
	
	@Override
	public boolean isString() {
		return true;
	}
	
	@Override
	public boolean isChar() {
		return false;
	}

	public String toString() {
		return " String ";
	}
}
