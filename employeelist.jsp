<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
if(session.getAttribute("UserName") == null)
{
	response.sendRedirect("admin.jsp");
}

%>

	<div>
	    <a href="AdminWelcome.jsp" target="_blank" >Home</a>
	    <a href="employee.jsp" target="_blank" >Employee</a>
	    <form action="AdminLogout">
    		<input type="submit" value="LogOut">
		</form>
	</div>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/flyaway";
String userId = "root";
String password = "password";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>



<div>
    <h3>Employee List</h3>
 
        
        <table align="center" cellpadding="5" cellspacing="5" border="1">

<tr bgcolor="#24A19C">
		<th>SL.No</th>
        <th>FullName</th>
        <th>EMail</th>
        <th>PhoneNumber</th>
        <th>UserName</th>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM employee";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("SL_No") %></td>
<td><%=resultSet.getString("FullName") %></td>
<td><%=resultSet.getString("Email") %></td>
<td><%=resultSet.getString("PhoneNumber") %></td>
<td><%=resultSet.getString("UserName") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
                
</div>




</body>
</html>