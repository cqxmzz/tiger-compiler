import org.apache.commons.lang3.SystemUtils;

import javac.absyn.TranslationUnit;
import javac.codegen.GetCode;
import javac.parser.*;
import javac.quad.GetQuads;
import javac.regallo.RegAllocate;
public class Tiger
{
	public static void main(String[] args)
	{
		try 
		{
			String test = "test.java";
			if (args.length != 0) test = args[0];
			ParserTest.parse(test);
			ParserTest parser1 = new ParserTest();
			TranslationUnit tree = parser1.getTree(test);
			SemanticTest.firstTraverse(tree);
			SemanticTest.secondTraverse(tree);
			SemanticTest.thirdTraverse(tree);

			GetQuads.ini();
			GetQuads.traverse(tree);
			
			GetCode.initialize();
			GetCode.genCode();
			if (GetQuads.spill == 1)
			{
				GetCode.output(test);
			}
			else 
			{
				RegAllocate.registerAllocate();	
				RegAllocate.output(test);
				System.exit(0);
			}
		} 
		catch (Exception e) 
		{
			System.out.println("error!");
			e.printStackTrace();
			System.exit(1);
		}
	}
}