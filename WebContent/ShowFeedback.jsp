<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
</head>
<link type="text/css" rel="stylesheet" href="History.css" />
<body>
	
	
		<jsp:include page="header.jsp" />
	
	
	<%@ page import="java.util.*" %>
		<%@ page import="java.io.*" %>
		<%@ page import="java.sql.*" %>
		<%@ page import="usermodule.DatabaseConnector" %>
		<%
		
			
			ResultSet rs=(ResultSet)session.getAttribute("rs");       
		      
			%>
			<div id="list1">
			<table id="table1">
				<tr>
					<th>FEEDBACK</th>
					
				</tr>	
			
			
			<% while(rs.next()){ %>
					<tr>
						
						<td id="td1"  style="height:80px;"><%=rs.getString(2) %></td>
					</tr>			
						
			<%} %>
				
			</table>
			
	</div>
			<center><div id="feed"><a style="color:white;text-decoration:none;" href="Feedback.jsp">Add feedback</a></div></center>
			
</body>
</html>