import java.util.regex.*;  
public class RegexTest3
{  
public static void main(String...sandeep)
{ 
	
System.out.println(Pattern.matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
		+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$","mkyong@1.com"));
	
}
}  