<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="com.arm2.igbs.dao.DAOClass" %>
<%@ page import="com.arm2.igbs.bean.OfficerBean" %>
<%@ page import="com.arm2.igbs.bean.ComplaintBean" %>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
<title>Get Bin Status | Garbage Collection System</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="CSS/w3.css">
<link rel="stylesheet" href="CSS/cssLato.css">
<link rel="stylesheet" href="CSS/cssMontserrat.css">
<link rel="stylesheet" href="CSS/font-awesome.min.css">
<style>
body, h1, h2, h3, h4, h5, h6 { font-family: "Lato", sans-serif}
.w3-navbar, h1, button { font-family: "Montserrat", sans-serif}
.fa-anchor, .fa-coffee { font-size: 200px}
#row1 {
	background-color: darkkhaki;
	width: 450px;
    padding-bottom: 20px;
    padding-top: 20px;
    margin-left: 10%;
}
table{
width: 100px
}

</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-khaki w3-card-2 w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-purple" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="officerProfile.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-white">Dashboard</a>
    <a href="thanks.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Logout</a>
  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="citizenProfile.jsp" class="w3-bar-item w3-button w3-padding-large">Dashboard</a>
    <a href="thanks.jsp" class="w3-bar-item w3-button w3-padding-large">Logout</a>
  </div>
</div>

	<!-- Header -->
	<header class="w3-container w3-khaki w3-center w3-padding-64">
		<h1 class="w3-margin w3-jumbo">
			Complaints
		</h1>
	</header>
<%DAOClass dao = new DAOClass();
	ArrayList<String[]> resultStatus = dao.showBinStatus();
%>
<%DAOClass dao2 = new DAOClass();
	ArrayList<String[]> resultFull = dao.showBinFull();
%>
	<!-- First Grid -->
	<div class=" w3-padding-64 w3-container">
		<div class="w3-content">
			<div class="w3-twothird halign">
				<div class="container-fluid">
					<!-- First Row -->
					
							<div class="w3-container w3-center ">
								<h3>Bins' For Pickup</h3>
								<table class="w3-table-all w3-khaki">
									<tr>
										<th class="w3-khaki">Sr No.</th>
										<th class="w3-khaki">BinStatusID</th>
										<th class="w3-khaki">BinLevel</th>
										<th class="w3-khaki w3-center">BinTime</th>
										<th class="w3-khaki">BinCleared</th>
										<th class="w3-khaki">Pickup?</th>
									</tr>
									<%
										for (String[] d : resultFull) {
									%>

									<tr>
										<%
											for (String s1 : d) {
													out.println("<td>" + s1 + "</td>");
												}
										%>
										<td><button name="pickup" onclick="picking(<% out.print(d[0]);%>)">Pickup</button><td>
									</tr>

									<%
										}
									%>
								</table>
							</div>
						

				</div>
			</div>
			
		<div class="w3-third">
				<div class="container-fluid">
					<!-- Second Row -->
					<div class="row" id="row1">
						<div class="col-xs-12">
							<div class="w3-container w3-center">
								<h3>Bins' Current Status</h3>
								<table class="w3-table-all w3-khaki">
									<tr>
										<th class="w3-khaki">Sr No.</th>
										<th class="w3-khaki">BinID</th>
										<th class="w3-khaki">BinLevel</th>
										<th class="w3-khaki w3-center">BinTime</th>
									</tr>
									<%
										for (String[] d2 : resultStatus) {
									%>

									<tr>
										<%
											for (String s2 : d2) {
													out.println("<td>" + s2 + "</td>");
												}
										%>
									</tr>

									<%
										}
									%>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<button class="w3-button w3-hover-khaki" name="goback"
				onclick="window.location.href='officerProfile.jsp';">BACK</button>

	<script>
		// Used to toggle the menu on small screens when clicking on the menu button
		function myFunction() {
			var x = document.getElementById("navDemo");
			if (x.className.indexOf("w3-show") == -1) {
				x.className += " w3-show";
			} else {
				x.className = x.className.replace(" w3-show", "");
			}
		}
		function picking(bfId){
			window.location="binPickup.jsp?BFULL="+bfId;			
		}
	</script>

</body>
</html>

