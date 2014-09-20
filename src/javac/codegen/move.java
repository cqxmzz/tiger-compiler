package javac.codegen;
import javac.quad.*;
public class move extends asm
{
	Temp rs, rd;
	public move(Temp rd1, Temp rs1)
	{
		rs = rs1; rd = rd1;
	}
	public String toString()
	{
		return "\tlw $t0, " + (4*(rs.num)) + "($sp)\n" + 
				   "\tsw $t0, " + (4*(rd.num)) + "($sp)";
	}
	public String toCode()
	{
		if (rs.num == rd.num) return null;
		
		if (rs.toCode(this) == null && rd.toCode(this) == null) {
			return "\tlw $t0, " + (rs.num*4) + "($sp)\n" + 
			       "\tsw $t0, " + (rd.num*4) + "($sp)";
		} 
		else if (rs.toCode(this) == null && rd.toCode(this) != null) {
			return "\tlw " + rd.toCode(this) + ", " + (rs.num*4) + "($sp)"; 
		} 
		else if (rs.toCode(this) != null && rd.toCode(this) == null) {
			return "\tsw " + rs.toCode(this) + ", " + (rd.num*4) + "($sp)"; 
		} 
		else 
		{
			if (rs.toCode(this) == rd.toCode(this)) return null;
			return "\tmove " + rd.toCode(this) + ", " + rs.toCode(this);
		}
	}
	public Temp[] getS()
	{
		Temp[] a = new Temp[1];
		a[0] = rs;
		return a;
	}
	public Temp[] getD()
	{
		Temp[] a = new Temp[1];
		a[0] = rd;
		return a;
	}
}