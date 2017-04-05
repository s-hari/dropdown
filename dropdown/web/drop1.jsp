<script language="javascript">
function show(f1)
{
f1.action="drop1.jsp";
f1.submit();
}
</script>
<%@page import="java.sql.*" %>
<jsp:useBean id="cn"  class="mypack.global" scope="page" />

<form action=result.jsp>
Empno
<select name="eno1"   onchange="show(this.form)">
<option> Select the empno </option>
<%
  ResultSet rs = cn.execute("select * from employee");
  while(rs.next())
  {
    %>
<option> <%=rs.getString("empno")%> </option>
<%
  }
%>
</select>
<br>
</form>


<%
String eno = request.getParameter("eno1");
if(eno!=null)
{
 rs = cn.execute("select * from employee where empno="+eno);
if(rs.next())
 {
   %>
  Empno <input type = text  value=<%=rs.getString("empno")%> >
 <br>
 Name <input type = text  value=<%=rs.getString("name")%> >
 <br>
  Salary <input type = text  value=<%=rs.getString("salary")%> >
 <br>
  Designation <input type = text  value=<%=rs.getString("desg")%> >
 <br>
<%
 }
else
 out.println("sorry no record is found");

}
%>





