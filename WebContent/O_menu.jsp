<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<li><a href="NGO_Fund_Data.jsp">Add Fund</a></li>
					<li><a href="O_Fund_Show.jsp">Fund Show</a></li>
					<li class="dropdown">
                      <a href="LoginPage" class="dropdown-toggle" data-toggle="dropdown"><label style="color: white;"><%=session.getAttribute("O_Name") %></label><b class="caret"></b></a> 
                      <ul class="dropdown-menu">
                           <li><a href="Index.jsp"><label style="color: white;">Logout</label></a></li>
                         </ul>
                    </li>

</body>
</html>