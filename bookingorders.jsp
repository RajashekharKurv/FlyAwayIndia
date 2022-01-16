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
	    <a href="AdminWelcome.jsp" target="_blank">Home</a>
	    <a href="employee.jsp" target="_blank" >EmployeeDetails</a>
	    <a href="FlightRoutes.jsp" target="_blank" >FlightRoutes</a>
	    <a href="bookingorders.jsp" >BookingOrders</a>
	    <form action="AdminLogout">
    		<input type="submit" value="LogOut">
		</form>
	</div>
	
	Booking Orders ......
</body>
</html>