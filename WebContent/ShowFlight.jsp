<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Schedule Flights</title>

<link type="text/css" rel="stylesheet" href="schedule.css" />
<script type="text/javascript">
	
</script>

</head>

<body>
	<jsp:include page="header.jsp" />


	<div
		style="margin: auto; width: 50%; margin-top: 40px; padding: 15px;background-color:#F0F8FF;">
		<h1
			style="margin-left: 20px; text-align: center; margin-top: 70px; color: #660099; background-color: #E6E6FA;">FLIGHT
			SCHEDULES</h1>
		<%@ page import="ReservationandCancellationModule.reservation"%>
		<%@ page import="java.util.*"%>
		<%@ page import="java.io.*"%>
		<%@ page import="java.sql.*"%>


		<%
			
			ResultSet rs = (ResultSet)session.getAttribute("rs");
			//System.out.println("hello query");
		
		%>
		<div id="list">
			<table>

				<%					
					while(rs.next()){ 
					 String s1 = rs.getString(3);
						System.out.println("hello query");%>

				<center>
					<b> <%out.println("FlightId " + "                  ");%>
					</b><%=rs.getString(1)%>
					<% out.print("<br/>"); %>
					<b> <% 	out.println(" FlightName:" + "             ");%>
					</b>
					<%=rs.getString(2)%>
					<% out.print("<br/>"); %>
					<b>
						<%out.println(" Source:" + "                    ");%>
					</b><%=rs.getString(3)%>
					<% out.print("<br/>"); %>
					<b>
						<%out.println(" Destination:" + "               ");%>
					</b><%=rs.getString(4)%>
					<% out.print("<br/>"); %>
					<b>
						<%out.println("date: " + "                      ");%>
					</b>
					<%=rs.getString(5)%>
					<% out.print("<br/>"); %>
					<b>
						<%out.println(" type: " + "                     ");%>
					</b><%=rs.getString(6)%>
					<% out.print("<br/>"); %>
					<b>
						<%out.println(" NOofseats: " + "                ");%>
					</b>
					<%=rs.getString(7)%>
					<% out.print("<br/>"); %>
					<b> <%out.println(" AvailableSeats: " + "          ");%>
					</b><%=rs.getString(8)%>
					<% out.print("<br/>"); %>
					<b>
						<%out.println(" Price: " + "                    ");%>
					</b>
					<%=rs.getString(9)%>
					<% out.print("<br/>"); %>
					<b>
						<%out.println(" Time: " + "                ");%>
					</b>
					<%=rs.getString(10)%>

					<form action="reservation" method="post">
						<input type="hidden" name="FlightId" value="<%=rs.getString(1)%>"><br>
						<input type="hidden" name="Type" value="<%=rs.getString(6)%>"><br>
						<input type="submit" value="RESERVE">
					</form>

				</center>
				<% String AvailableSeat = rs.getString(8);
					String  NoofSeats = rs.getString(7);
					String  FlightName = rs.getString(2);
					String  Type = rs.getString(6);
					String  Price = rs.getString(9);
					String time=rs.getString(10);
					session.setAttribute("AvailableSeat",AvailableSeat);
					session.setAttribute("NoofSeats",NoofSeats);
					session.setAttribute("FlightName",FlightName);
					session.setAttribute("Type",Type);
					session.setAttribute("Price",Price);
					session.setAttribute("Time",time );
					
						}
			
					%>
			</table>

		</div>
</body>
</html>