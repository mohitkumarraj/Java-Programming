/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication4;

/**
 *
 * @author Mohit
 */
import java.sql.*;
public class JavaApplication4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
     try{
         Class.forName("org.postgresql.Driver");
         try(Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","1234")){
         Statement st = con.createStatement();
         String str="insert into employee values('Kumar',9871578321,40000.8,'EX')";
         st.executeUpdate(str);
         ResultSet rs= st.executeQuery("SELECT name,mob,salary,post from employee");
        while(rs.next())
           System.out.println(rs.getString("name")+" "+rs.getString("mob")+" "+rs.getString("salary")+" "+rs.getString("post"));
     con.close();
      }//end of inner try block
  
    }catch(ClassNotFoundException | SQLException e ){
        System.out.print(e);
    
    }
       
    }// end of main
    
}// end of class
