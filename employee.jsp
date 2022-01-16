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
	    <form action="AdminLogout">
    		<input type="submit" value="LogOut">
		</form>
	</div>


<div>
    
    <h3>Register Employee</h3>
    <form action="EmployeeServlet">
        <table>
            <tr>
                <td>FullName :</td>
                <td>
                    <input type="text" name="FullName" id="" placeholder="Rajashekhar">
                </td>
            </tr>
            
            <tr>
                <td>Email :</td>
                <td>
                    <input type="email" name="Email" id="" placeholder="abc@gmail.com">
                </td>
            </tr>
            <tr>
                <td>Phone Number :</td>
                <td>
                    <input type="text" name="PhoneNumber" id="" placeholder="9632587410">
                </td>
            </tr>
            <tr>
                <td>UserName :</td>
                <td>
                    <input type="text" name="UserName" id="" placeholder="raja24">
                </td>
            </tr>

        </table>
       <input type="hidden" name="modalForm" value="register"/>
       <br>

       <b > <input type="submit" value="Save" ></b> 
            </form>
</div>

<hr>
<br>
<br>

<div>
 <h3>Company Employee List</h3>

   <form action="EmployeeServlet">
        <input type="hidden" name="modalForm" value="lists"/>
        <input type="submit" value="EmployeeList">
   </form>

</div>

<hr>
<br>
<br>

<div>
 <h3>Search Employee Details :</h3>
    <form action="EmployeeServlet">
        UserName:
        <input type="text" name="username" placeholder="raja24" >
        <input type="hidden" name="modalForm" value="search"/>
        <input type="submit" value ="Search">
    </form>

</div>

<hr>
<br>
<br>

<div>
    <h3>Delete</h3>
    <form action="EmployeeServlet">
        UserName :
        <input type="text" name="username" id="" placeholder="raja24">
        <input type="hidden" name="modalForm" value="delete"/>
        <input type="submit" value="Delete">

    </form>
</div>
	
</body>
</html>