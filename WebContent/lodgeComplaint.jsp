<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.arm2.igbs.dao.DAOClass" %>
<%@ page import="com.arm2.igbs.bean.CitizenBean" %>

<!DOCTYPE html>
<html>
<title>Submit Complaint | Garbage Collection System</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="CSS/w3.css">
<link rel="stylesheet" href="CSS/cssLato.css">
<link rel="stylesheet" href="CSS/cssMontserrat.css">
<link rel="stylesheet" href="CSS/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 { font-family: "Lato", sans-serif }
.w3-navbar,h1,button { font-family: "Montserrat", sans-serif }
.fa-anchor,.fa-coffee { font-size:200px }
#row {
	background-color: orchid;
	width: 50%;
}

</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-purple w3-card-2 w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-purple" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="citizenProfile.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-white">Dashboard</a>
    <a href="thanks.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Logout</a>
  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="citizenProfile.jsp" class="w3-bar-item w3-button w3-padding-large">Dashboard</a>
    <a href="thanks.jsp" class="w3-bar-item w3-button w3-padding-large">Logout</a>
  </div>
</div>

	<!-- Header -->
	<header class="w3-container w3-purple w3-center w3-padding-64">
	<% CitizenBean currentUser = (CitizenBean) (session.getAttribute("currentSessionUser")); %>
		<h1 class="w3-margin w3-jumbo">
			Submit Complaint
		</h1>
	</header>

	<!-- First Grid -->
	<div class="w3-row-padding w3-padding-64 w3-container">
		<div class="w3-content">
			<div class="w3-full">
				<div class="container-fluid">
					<!-- First Right Row -->
					<div class="row" id="row1">
						<div class="col-xs-12">
							<div class="w3-container w3-center">
								<h3>COMPLAINT BOX</h3>
								<form action="complaintForward.jsp" id="submitComplaint" method="post">
								<table class="w3-table-all">
									<tr>
									    <th class="w3-purple w3-twothird">Complaint Type </th>
											<td><select name="complaintType">
													<option value="1">Bin Full/ Bins Not Emptied On Time</option>
													<option value="2">Damaged Hardware</option>
													<option value="3">An Suggestion for Improvement</option>
													<option value="4">Others</option>
											</select></td>
										</tr>
									<tr>
									    <th class="w3-purple w3-twothird"></th>
									    <th class="w3-purple w3-twothird">Content</th>
									    <th class="w3-purple w3-twothird"></th>
										<td><textarea name="complaintContent" rows="3" cols="30" placeholder="Max. 100 words" required></textarea></td>
									</tr>
										<!-- <tr>
											<th class="w3-purple w3-twothird">Image</th>
											<td>
												<input type="file" name="pic" accept="image/*" disabled>
											</td>
										</tr>  remove later -->
									</table>
								<input type="submit" name="complaint-submit" id="complaint-submit"
															class="form-control btn btn-login"	value="Submit">
									</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
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

