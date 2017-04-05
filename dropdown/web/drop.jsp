<script language="javascript">
function show(f1)
{
f1.action="result.jsp";
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






