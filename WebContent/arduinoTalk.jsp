<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.arm2.igbs.dao.DAOClass" %>
<%@ page import="com.arm2.igbs.bean.OfficerBean" %>
<%@ page import="com.arm2.igbs.bean.ComplaintBean" %>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
<title>Arduino Portal | Garbage Collection System</title>
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
    margin-left: 30%;
}
table{
width: 100px
}

</style>
<body>

	<!-- Header -->
	<header class="w3-container w3-khaki w3-center w3-padding-64">
		<h1 class="w3-margin w3-jumbo">
			Arduino Input Portal
		</h1>
	</header>
	<!-- First Grid -->
	<div class="w3-row-padding w3-padding-64 w3-container">
		<div class="w3-content">
			<div>
				<div class="container-fluid">
					<!-- First Row -->
					<div class="row" id="row1">
						<div class="col-xs-12">
							<div class="w3-container w3-center">
								<h3>Bin DataFeed</h3>
								<form action="arduinoForward.jsp" id="submitComplaint" method="post">
								<table class="w3-table-all">
									<tr>
									    <th class="w3-khaki w3-twothird">Bin Id</th>
											<td><input type="text" name="binId" placeholder="Only 1, 2 or 3">
											</td>
										</tr>
									<tr>
											<th class="w3-khaki w3-twothird">Bin Level</th>
											<td>
												<input type="text" name="binLevel" placeholder="Eg. 60, 75, 30,etc.">
											</td>
										</tr>
									</table>
								<input type="submit" name="inputBin" id="inputBint"
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

