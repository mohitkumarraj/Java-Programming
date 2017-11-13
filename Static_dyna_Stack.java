// Static and Dynamic Stack using Abstract class Stack

import java.util.Scanner;
import java.util.ArrayList;


abstract class Stack
{
	int top,arr[];
	public Stack()
	{
		top=-1;
	} 
	ArrayList<Integer> ar=new ArrayList<Integer>();
	public abstract void push(int el);
	public abstract int pop();
	public abstract void display();
}


// CLASS STATIC STACK

class StaticStack extends Stack
{
// CONSTRUCTOR STATIC STACK 
	
	public StaticStack(int n)
	{
		super();
		arr=new int[n];
	}

	public void push(int el) 
	{
		top++;
		arr[top]=el;
	}

	
	public int pop()
	{
		int el=arr[top];
		top--;
		return el;
	}
	
	public void display()
	{
		System.out.println("UR STACK is :- ");	
		for(int i=0;i<=top;i++)
			System.out.println(arr[i]);
	}
	
	public int ret_top()
	{
		return top;
	}
}


//CLASS DYNAMIC STACK
class DynamicStack extends Stack
{
	int top;
	
//DEFAULT CONSTRUCTOR DYNAMIC STACK
	public DynamicStack()
	{
		top=-1;
	}


// Dynamic PUSH FUNCTION ()
	
	public void push(int el)
	{
		top++;
		ar.add(el);
	}

//Dynamic POP FUNCTION () 
	public int pop()
	{
		int el=ar.remove(top);
		top--;
		return el;
	}

//Dynamic DISPLAY FUNCTION ()
	public void display()
	{
		System.out.println("ELEMENT IN THE STACK ARE :- ");
		System.out.println(ar);
	}

// Dynamic RETURN TOP FUNCTION () 

	public int ret_top()
	{
		return top;
	}

}


// CLASS MENU

class menu
{
	private int  ch,rs=1,el,s_size,flag=0;
	Scanner s=new Scanner(System.in);

// STATIC STACK MENU FUNCTION 
	
	public void S_STACK()
	{
		System.out.print("Enter the stack Size  ");
		s_size=s.nextInt();
		StaticStack SS=new StaticStack(s_size);
		while(rs==1)
		{
			System.out.println("\n		MENU 	");
   			System.out.println("\n1.PUSH");
			System.out.println("\n2.POP");
			System.out.println("\n3.DISPLAY ");
			System.out.println("\n4.MAIN MENU");
			System.out.println("\nENTER YOUR CHOICE ::  "); 
			ch=s.nextInt();
			switch(ch)
			{	
				case 1:	if(SS.ret_top()<s_size-1)
					{
						
						System.out.print("Enter the element for push on to the stack");
						el=s.nextInt();
						SS.push(el);
					}
					else
					 	System.out.print("Error!! Stack Overflow");
				       	break;
				case 2:	if(SS.ret_top()>=0)
				       	{
						el=SS.pop();
						System.out.print("Popped element is  "+el);
				        }
					else
						System.out.print("ERROR!!! Stack Underflow");
				       break;
				case 3:SS.display();
				       break;
				case 4:	flag=1;
					break;
			}
			if(flag==1)
			{
				flag=0;
				break;
			}
		}
	}
	
// DYNAMIC STACK MENU FUNCTION 	
	
	public void D_STACK()
	{
		DynamicStack DS=new DynamicStack();
		while(rs==1)
		{
			System.out.println("\n		MENU 	");
   			System.out.println("\n1.PUSH");
			System.out.println("\n2.POP");
			System.out.println("\n3.DISPLAY ");
			System.out.println("\n4.MAIN MENU");
			System.out.println("\nENTER YOUR CHOICE ::  "); 
			ch=s.nextInt();
			switch(ch)
			{	
				case 1:	System.out.print("Enter the element for push on to the stack");
					el=s.nextInt();
					DS.push(el);
					break;
				case 2:	if(DS.ret_top()>=0)
				       	{
						el=DS.pop();
						System.out.print("Popped element is  "+el);
				        }
					else
						System.out.print("ERROR!!! Stack Underflow");
				       break;
				case 3:DS.display();
				       break;
				case 4:	flag=1;
					break;
			}
			if(flag==1)
			{
				flag=0;
				break;
			}	
		}
	}
	
}


// CLASS ABSTRACT STACK (MAIN FUNCTION CLASS)

public class Static_dyna_Stack
{

// MAIN FUNCTION 	
	
	public static void main(String args[])
	{
		int c,rs=1,flag=0;
		menu M=new menu();
		Scanner s1=new Scanner(System.in);
		while(rs==1)
		{
			System.out.println("\n		MENU 	");
   			System.out.println("\n1.STATIC STACK");
			System.out.println("\n2.DYNAMIC STACK");
			System.out.println("\n3.EXIT");
			System.out.println("\nENTER YOUR CHOICE ::  "); 
			c=s1.nextInt();
			switch(c)
			{	
				case 1:	M.S_STACK();
				       	break;
				case 2:	M.D_STACK();
				       	break;
				case 3:	flag=1;
					break;
			}
			if(flag==1)
			{
				System.out.print("\n\n\nTHANX FOR USING OUR PROGRAM,HAVA A NICE DAY\n\n\n");
				flag=0;
				break;
			}
		}	
	}
}