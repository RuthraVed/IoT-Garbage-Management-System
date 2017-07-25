<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.arm2.igbs.dao.DAOClass" %>

<!DOCTYPE html>
<html>
<title>Officer Profile | Garbage Collection System</title>
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
	width: 280px;
	padding-bottom: 20px;
	padding-top: 20px;
}
#row2 {
	background-color: darkkhaki;
	width: 480px;
	padding-bottom: 50px;
	padding-top: 10px;
	margin-bottom: 40px;
    margin-top: 40px;
}
#row3 {
	background-color: darkkhaki;
	width: 480px;
	padding-bottom: 50px;
	padding-top: 10px;
	  
}
#row4 {
	background-color: darkkhaki;
	padding-top: 20px;
	padding-bottom: 42px;
    margin-left: 200px;
    
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
		<h1 class="w3-margin w3-jumbo">	Inventory Manager</h1>
	</header>

	<!-- First Grid -->
	<div class="w3-row-padding w3-padding-64 w3-container">
		<div class="w3-content">
			<div class="w3-third">
				<div class="container-fluid">
					
					<!-- First Row -->
					<div class="row" id="row1">
						<div class="col-xs-12">
							<article class="card animated fadeInLeft">
								<div class="w3-container w3-center">
									<h3>BINS</h3>
									<button class="w3-button w3-hover-khaki" name="fireQuery" onclick="window.location.href='#';">
										<%=getBinCount()%>
									</button>
								</div>
							</article>
						</div>
					</div>
					
					<!-- Second Row -->
					<!-- 
					<div class="row" id="row2">
						<div class="col-xs-12">
							<div class="w3-container w3-center">
								<h3>BINS</h3>
								We have 3 Bins.
								<table class="w3-table">
								<col width="50">
								<col width="50">
								<col width="50">
									<tr>
										<th>BinMaxCapacity</th>
										<th>BinLocality</th>
										<th>Button</th>
									</tr>
									<tr>
										<td><input type="text" name="binCapacity" form="binAdd"></td>
										<td>
										<input type="text" name="binLocality" form="binAdd">
										</td>
										<td>
										<form action="#" id="binAdd">
										<input type="submit" name="submitBin" value="ADD">
										</form>
										</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					-------------------- -->
				</div>
			</div>
      </div>
      </div>
	 <button class="w3-button w3-hover-khaki" name="goback" onclick="window.location.href='officerProfile.jsp';">
	 BACK
	 </button>

	<%! String getBinCount() {
		int count = 0;
		try {
			DAOClass ds = new DAOClass();
			count = ds.binCount();
		} catch (Exception e) {
			System.out.println("In jsp..." + e);
			e.printStackTrace();
		}
		String content = "We have " + count + " bins.";
		return content;
	}%>
	
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
		
	</script>

</body>
</html>

