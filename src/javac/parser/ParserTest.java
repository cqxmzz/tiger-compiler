package javac.parser;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.InputStream;

import javac.absyn.TranslationUnit;
import javac.util.AbsynFormatter;

public final class ParserTest {
	
	public static void parse(String filename) throws Exception {
		final InputStream in = new FileInputStream(filename);
		final Parser parser = new Parser(new Yylex(in));
		final java_cup.runtime.Symbol parseTree = parser.parse();
		in.close();
		final TranslationUnit translationUnit = (TranslationUnit) parseTree.value;
		//System.out.println(AbsynFormatter.format(translationUnit.toString()));
	}
	
	public TranslationUnit getTree(String filename) throws Exception {
		final InputStream in = new FileInputStream(filename);
		final Parser parser = new Parser(new Yylex(in));
		final java_cup.runtime.Symbol parseTree = parser.parse();
		in.close();
		final TranslationUnit translationUnit1 = (TranslationUnit) parseTree.value;
		final InputStream in2 = new BufferedInputStream(getClass().getResourceAsStream("contrib.eee"));
		final Parser parser2 = new Parser(new Yylex(in2));
		final java_cup.runtime.Symbol parseTree2 = parser2.parse();
		in2.close();
		final TranslationUnit translationUnit2 = (TranslationUnit) parseTree2.value;
		translationUnit1.externalDeclarations.addAll(
		translationUnit2.externalDeclarations);
		return translationUnit1;
		}
}
