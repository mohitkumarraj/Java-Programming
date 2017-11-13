package c3;

import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;

public class Revtag extends SimpleTagSupport
{
	private String input;
	public void setInput(String i)
	{
		input=i;
	}
	public void doTag() throws JspException,IOException
	{
		JspWriter out=getJspContext().getOut();
		if(input!="null")
		{
			StringBuffer rev=new StringBuffer(input).reverse();
			out.println("THE REVERSE STRING IS    " +rev);
		}
		else
			out.println("PLZ PROVIDE AN INPUT");
	}
}