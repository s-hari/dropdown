package mypack;

import java.sql.*;
public class global
{
Connection con=null;
ResultSet rs=null;
Statement stmt=null;
public global() 
 {
   try
   {
  Class.forName("com.mysql.jdbc.Driver");
               
con = DriverManager.getConnection("jdbc:mysql:///servlet", "root", "");
   stmt = con.createStatement();
  }catch(Exception e) { System.out.println(e); }
 }
public ResultSet execute(String s) throws Exception
  {
    rs = stmt.executeQuery(s);
   return(rs);
  }
}

  