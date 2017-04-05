
<%@page import="java.sql.*" %>
<jsp:useBean id="cn"  class="mypack.global" scope="page" />

<%
String eno = request.getParameter("eno1");//101
  ResultSet rs = cn.execute("select * from employee where empno="+eno);
if(rs.next())
 {
   %>
  Empno <input type = text  value=<%=rs.getString("empno")%> >
 <br>
 Name <input type = text  value=<%=rs.getString("name")%> >
 <br>
  Salary <input type = text  value=<%=rs.getString("salary")%> >
 
<%
 }
else
 out.println("sorry no record is found");
%>







    





