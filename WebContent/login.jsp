<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Login | Garbage Collection System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="CSS/bootstrap.min.css">
<link rel="stylesheet" href="CSS/w3.css">
<link rel="stylesheet" href="CSS/cssLato.css">
<link rel="stylesheet" href="CSS/cssMontserrat.css">
<link rel="stylesheet" href="CSS/font-awesome.min.css">
<link rel="stylesheet" href="CSS/myStyle.css">

<style>
div { text-align: justify; text-justify: inter-word;}
.valign {padding-top: 30px;}
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
</style>
  
  <body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-purple w3-card-2 w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-purple" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-white">Home</a>
    <a href="login.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-white">Login</a>
    <a href="aboutUs.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">About Us</a>
  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large">Home</a>
    <a href="login.jsp" class="w3-bar-item w3-button w3-padding-large">Login</a>
    <a href="aboutUs.jsp" class="w3-bar-item w3-button w3-padding-large">About Us</a>
 </div>
</div>

	<!-- Header -->
	<header class="w3-container w3-purple w3-center w3-padding-64">
		<h1 class="w3-margin w3-jumbo">
			Login Page
		</h1>
	</header>

	<!-- First Grid -->
	<div class="w3-row-padding w3-padding-64 w3-container">
		<div class="w3-content">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div class="panel panel-login">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-6">
										<a href="#" class="active" id="login-form-link">Login</a>
									</div>
									<div class="col-xs-6">
										<a href="#" id="register-form-link">Register</a>
									</div>
								</div>
								<hr>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12">
										<form id="login-form" action="loginCitizen.jsp" method="post"
											role="form" style="display: block;">
											<div class="form-group">
												<input type="text" name="citizenEmail" id="cEmail"
													tabindex="1" class="form-control" placeholder="Username"
													value="">
											</div>
											<div class="form-group">
												<input type="password" name="citizenPassword" id="cPassword"
													tabindex="2" class="form-control" placeholder="Password">
											</div>
											<div class="form-group text-center">
												<input type="checkbox" tabindex="3" class="" name="remember"
													id="remember"> <label for="remember">
													Remember Me</label>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-6 col-sm-offset-3">
														<input type="submit" name="login-submit" id="login-submit"
															tabindex="4" class="form-control btn btn-login"
															value="Log In">
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-lg-12">
														<div class="text-center">
															<a href="officeLogin.jsp?ERR=2" tabindex="5"
																class="forgot-password">An Officer?</a>
														</div>
													</div>
												</div>
											</div>
										</form>
										
										<form id="register-form" action="newCitizen.jsp" method="post"
											role="form" style="display: none;">
											<div class="form-group">
												<input type="text" name="citizenFname" id="cFname"
													tabindex="1" class="form-control" placeholder="First Name"
													value="">
											</div>
											<div class="form-group">
												<input type="text" name="citizenLname" id="cLname"
													tabindex="2" class="form-control" placeholder="Last Name"
													value="">
											</div>
											<div class="form-group">
												<input type="date" name="citizenDOB" id="cDOB" tabindex="3"
													class="form-control" placeholder="yyyy-MM-dd" value=""
													min="1950-01-01">
											</div>
											<div class="form-group">
												<input type="text" name="citizenAddress" id="cAddress"
													tabindex="4" class="form-control" placeholder="Address"
													value="">
											</div>
											<div class="form-group">
												<div tabindex="5" class="form-control">
													<span>Postal ZIP</span> <select name="citizenZip">
														<option value="411040">411040</option>
														<option value="411046">411046</option>
														<option value="411048">411048</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<input type="email" name="citizenEmail" id="cEmail"
													tabindex="6" class="form-control"
													placeholder="Email Address" value="">
											</div>
											<div class="form-group">
												<input type="password" name="citizenPassword" id="cPassword"
													tabindex="7" class="form-control" placeholder="Password">
											</div>
											<div class="form-group">
												<input type="password" name="confirm-password"
													id="confirm-password" tabindex="8" class="form-control"
													placeholder="Confirm Password">
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-6 col-sm-offset-3">
														<input type="submit" name="register-submit"
															id="register-submit" tabindex="9"
															class="form-control btn btn-register"
															value="Register Now">
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
		<h1 class="w3-margin w3-xlarge">Quote of the day: You miss 100
			percent of the shots you never take.</h1>
	</div>

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32 w3-center">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
 </div>
 <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>

<% int err=Integer.parseInt(request.getParameter("ERR"));
   if(err==1)
	   response.sendRedirect("citizenProfile.jsp");
   else if (err==0){%>
   		<script type="text/javascript">alert("Incorrect Credentials !!!")</script>
   	<%
     }
   else {}
   %>
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
	<script src="JS/jquery-3.1.1.min.js"></script>
	<script src="JS/bootstrap.min.js"></script>
	<script src="JS/myScript.js"></script>

</body>
</html>

