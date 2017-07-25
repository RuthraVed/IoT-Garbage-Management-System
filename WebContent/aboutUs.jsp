<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>About US | Garbage Collection System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="CSS/w3.css">
<link rel="stylesheet" href="CSS/cssLato.css">
<link rel="stylesheet" href="CSS/cssMontserrat.css">
<link rel="stylesheet" href="CSS/font-awesome.min.css">
<style>
.valign {padding-top: 30px;}
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
</style>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-yellow w3-card-2 w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-yellow" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-white">Home</a>
    <a href="login.jsp?ERR=2" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Login</a>
    <a href="aboutUs.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-white">About Us</a>
  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large">Home</a>
    <a href="login.jsp?ERR=2" class="w3-bar-item w3-button w3-padding-large">Login</a>
    <a href="aboutUs.jsp" class="w3-bar-item w3-button w3-padding-large">About Us</a>
 </div>
</div>

	<!-- Header -->
	<header class="w3-container w3-yellow w3-center w3-padding-128 valign">
		<h1 class="w3-margin w3-jumbo">Who we are?</h1>
	</header>

<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
	<div class="w3-content">
		<div class="w3-half">
			<h1>Abhishek Dev</h1>
			<h5 class="w3-padding-32">Being the brain behind this project,
				he looked after the coding of front-end module, GUI,
				database-connectivity and the core logic of our project. Abhi's
				constant efforts to make things better brings the project to where
				it is today. Apart from coding, he loves to travel and play video
				games. Hitman and the Splinter Cell game series are his all time
				favourite.</h5>
		</div>

		<div class="w3-half w3-center">
			<img src="Images/Abhi.jpg"
				style="width: 360px; height: 462px; padding-right: 90px;"
				class="w3-round w3-padding w3-hover-sepia" alt="Abhishek Dev">
		</div>
	</div>
</div>

<!-- Second Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
	<div class="w3-content">
		<div class="w3-half w3-center">
			<img src="Images/Muzu.jpg"
				style="width: 360px; height: 462px; padding-right: 90px;"
				class="w3-round w3-padding w3-hover-sepia" alt="Muzammil Nadaf">
		</div>
		<div class="w3-half">
			<h1>Muzammil Nadaf</h1>
			<h5 class="w3-padding-32">Our project would not be complete
				without this guy. The hardware was his. From Arduino Mega 2560
				programming to interfacing and shouldering the components were all
				done by him. Out of modesty he might say, "My buddies helped me."
				but it was he who brought the scattered pieces together. His
				favorite pass-time includes bike riding and social media (esp.
				WhatsApp ;-P).</h5>
		</div>
	</div>
</div>

<!-- Third Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
	<div class="w3-content">
		<div class="w3-half">
			<h1>Rushabh Shah</h1>
			<h5 class="w3-padding-32">The presenter of our project, it
				wouldn't be wrong to call him the 'brand ambassador' of our project.
				He has a way with words and can convey even the complicated ideas of
				our project to the audience. Some times his criticism of our project
				resulted in heated arguments within us (project members), but at the
				end he made sure that the flaw he sees is visible to others too. By
				nature one would find him very talkative. He loves to make new
				friends and hates being alone.</h5>
		</div>

		<div class="w3-half w3-center">
			<img src="Images/Rusu.jpg"
				style="width: 360px; height: 462px; padding-right: 90px;"
				class="w3-round w3-padding w3-hover-sepia" alt="Rushabh Shah">
		</div>
	</div>
</div>

<!-- Fourth Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
	<div class="w3-content">
		<div class="w3-half w3-center">
			<img src="Images/Mani.jpg"
				style="width: 360px; height: 462px; padding-right: 90px;"
				class="w3-round w3-padding w3-hover-sepia" alt="Maneesh Jasrotia">
		</div>
		<div class="w3-half">
			<h1>Maneesh Jasrotia</h1>
			<h5 class="w3-padding-32">The chocolate boy of our group, he
				desires to serve the nation by joining Indian Army. With no interest
				in coding, he joined the group for fun. But when time demanded, even
				he learned and helped in all possible ways he could. He is an
				entertainer and kept our spirits high all the way till end. He is a
				health freak, and could be found at the gym in his free time.</h5>
		</div>
	</div>
</div>


<!-- Five Grid -->
	<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
		<div class="w3-content">
			<div class="w3-third w3-center">
				<i class="fa fa-coffee w3-padding-64 w3-text-yellow w3-margin-right"></i>
			</div>

			<div class="w3-twothird">
				<h1>Looking forward to hear your reviews</h1>

				<table style="width: 100%">
					<tr>
						<th></th>
						<th></th>
					</tr>
					<tr>
						<td><ul>
								<li>abhishek44dev@gmail.com</li>
							</ul></td>
						<td><ul>
								<li>nadafmuzammil@gmail.com</li>
							</ul></td>
					</tr>
					<tr>
						<td><ul>
								<li>rss3895pune@gmail.com</li>
							</ul></td>
						<td><ul>
								<li>maneesh95jasrotia@gmail.com</li>
							</ul></td>
					</tr>
				</table>

			</div>
		</div>
	</div>


	<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
		<h1 class="w3-margin w3-xlarge">Quote of the day: You must be the
			change you wish to see in the world.</h1>
	</div>

	<!-- Footer -->
	<footer class="w3-container w3-padding-64 w3-center w3-opacity">
		<div class="w3-xlarge w3-padding-32">
			<a href="#" class="w3-hover-text-indigo"><i
				class="fa fa-facebook-official"></i></a> <a href="#"
				class="w3-hover-text-red"><i class="fa fa-pinterest-p"></i></a> <a
				href="#" class="w3-hover-text-light-blue"><i
				class="fa fa-twitter"></i></a> <a href="#" class="w3-hover-text-grey"><i
				class="fa fa-flickr"></i></a> <a href="#" class="w3-hover-text-indigo"><i
				class="fa fa-linkedin"></i></a>
		</div>
		<p>
			Powered by <a href="http://www.w3schools.com/w3css/default.asp"
				target="_blank">w3.css</a>
		</p>
	</footer>

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

