<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<table class="table table-bordered" style="background-color: #fsfsfs">
<thead style="background-color: tomato">
				<tr>
					<th align="center">User ID</th>
					<th align="center">FirstnName</th>
					<th align="center">Last name</th>
					<th align="center"> Email</th>
					<th align="center">User Name</th>
					<th align="center">Password</th>
				</tr>
			</thead>
		<%
Connection con=null;
Statement st=null;
ResultSet rs=null;
try {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food_order","root","L#1726@rlav");
st=con.createStatement();
String get="select * from register";
rs=st.executeQuery(get);
while(rs.next())
{
%>
<tr>
<td align="center"><%=rs.getInt(1) %></td>
<td align="center"><%=rs.getString(2) %></td>
<td align="center"><%=rs.getString(3) %></td>
<td align="center"><%=rs.getString(4) %></td>
<td align="center"><%=rs.getString(5) %></td>
<td align="center"><%=rs.getString(6) %></td>
</tr>
<% 	
}
}catch(Exception e)
{
e.printStackTrace();	
}
%>
</table>
	</center>
	

			<div class="Logo">
				<a href="index.html">Back </a>
			</div>

	
	
</body>
</html>