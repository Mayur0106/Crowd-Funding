<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<li class="active"><a href="UserHomePage.jsp">Home</a></li>
					
                    <li><a href="U_Fund_Show.jsp">Fund Access</a></li>
                    <li>
                      <a href="LoginPage"><label style="color: white;"><%=session.getAttribute("U_Name") %></label></a> 
                     
                    </li>
</body>
</html>