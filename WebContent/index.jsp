<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Home | Garbage Management Portal</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="CSS/w3.css">
<link rel="stylesheet" href="CSS/cssLato.css">
<link rel="stylesheet" href="CSS/cssMontserrat.css">
<link rel="stylesheet" href="CSS/font-awesome.min.css">
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
  <div class="w3-bar w3-green w3-card-2 w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-green" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="login.jsp?ERR=2" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Login</a>
    <a href="aboutUs.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">About Us</a>
  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large">Home</a>
    <a href="login.jsp?ERR=2" class="w3-bar-item w3-button w3-padding-large">Login</a>
    <a href="aboutUs.jsp" class="w3-bar-item w3-button w3-padding-large">About Us</a>
 </div>
</div>

	<!-- Header -->
	<header class="w3-container w3-green w3-center w3-padding-128 valign">
		<h1 class="w3-margin w3-jumbo">Waste Collection and Management</h1>
		<!--<p class="w3-xlarge"></p> -->
		<button class="w3-btn w3-padding-16 w3-large w3-margin-top"
			onclick="window.location.href='login.jsp?ERR=2';">Get Started</button>
	</header>

	<!-- First Grid -->
	<div class="w3-row-padding w3-padding-64 w3-container">
		<div class="w3-content">
			<div class="w3-twothird">
				<h1>The Waste Problem</h1>
				<h5 class="w3-padding-32">Trash and garbage is a common sight
					in urban and rural areas of India. It is a major source of
					pollution. Indian cities alone generate more than 100 million tons
					of solid waste a year. Street corners are piled with trash. Public
					places and sidewalks are despoiled with filth and litter, rivers
					and canals act as garbage dumps. In part, India's garbage crisis is
					from rising consumption. India's waste problem also points to a
					stunning failure of governance. The tourism regions in the country
					mainly hill stations are also facing this issue in the recent
					years.</h5>
				<p class="w3-text-grey">In 2000, India's Supreme Court directed
					all Indian cities to implement a comprehensive waste-management
					programme that would include household collection of segregated
					waste, recycling and composting. These directions have simply been
					ignored. No major city runs a comprehensive programme of the kind
					envisioned by the Supreme Court.</p>
			</div>
			<div class="w3-third w3-center">
				<img src="Images/Bin_2.jpg"
					style="width: 320px; height: 400px; padding-left: 70px;"
					class="w3-round" alt="Garbage Bin">
			</div>
		</div>
	</div>

	<!-- Second Grid -->
	<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
		<div class="w3-content">
			<div class="w3-third w3-center">
				<img src="Images/cost-efficient-waste-collection.svg"
					style="width: 370px; height: 350px; padding-right: 70px;"
					class="w3-round" alt="Smart Solution">
			</div>
			<div class="w3-twothird">
				<h1>A Smart Solution</h1>
				<h5 class="w3-padding-32">This project Smart Garbage Collection
					System using IOT is a very innovative system which will help to
					keep the cities clean. This system monitors the garbage bins and
					informs about the level of garbage collected in the garbage bins
					via a web page. For this the system uses ultrasonic sensors placed
					over the bins to detect the garbage level and compare it with the
					garbage bins depth. The system makes use of Arduino Mega VR family
					microcontroller, LCD screen, Wifi modem for sending data and a
					buzzer. The system is powered by a 12V transformer. The LCD screen
					is used to display the status of the level of garbage collected in
					the bins. Whereas a web page is built to show the status to the
					user monitoring it. The web page gives a graphical view of the
					garbage bins and highlights the garbage collected in color in order
					to show the level of garbage collected. The LCD screen shows the
					status of the garbage level. The system puts on the buzzer when the
					level of garbage collected crosses the set limit. Thus this system
					helps to keep the city clean by informing about the garbage levels
					of the bins by providing graphical image of the bins via IOT web
					development platform.</h5>
			</div>
		</div>
	</div>

	<!-- Third Grid -->
	<div class="w3-row-padding w3-padding-64 w3-container">
		<div class="w3-content">
			<h1>How Citizens Can Contribute?</h1>
			<h5 class="w3-padding-32">Citizens can have an account on this
				wesite by signing up and then logging in to issue a complaint report
				directly to the official authority regarding certain area's trash
				bins garbage levels and its situation. This is an indirect way of
				reminding the authorities to kindly collect waste from a certain
				area as reported by the citizen.</h5>
			<div class="w3-third w3-center">
				<img src="Images/Smart-City.png"
					style="width: 1000px; height: 345px;align=center" class="w3-round"
					alt="Smart Solution">
			</div>
		</div>
	</div>

	<!-- Fourth Grid -->
	<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
		<div class="w3-content">
			<div class="w3-third w3-center">
				<img src="Images/Swachh_Bharat_Abhiyan_logo.svg"
					style="width: 360px; height: 350px; padding-right: 70px;"
					class="w3-round" alt="Swachh Bharat Logo">
			</div>

			<div class="w3-twothird">
				<h1>Swach Bharat Abhiyaan</h1>
				<h5 class="w3-padding-32">Take a Pledge.</h5>

				<p class="w3-text-grey">Prime Minister Shri Narendra Modi
					exhorted people to fulfill Mahatma Gandhi's vision of Clean India.
					The 'Swachh Bharat Abhiyan' is a massive mass movement that seeks
					to create a Clean India. Cleanliness was very close to Mahatma
					Gandhi's heart. A clean India is the best tribute we can pay to
					Bapu when we celebrate his 150th birth anniversary in 2019. Mahatma
					Gandhi devoted his life so that India attains 'Swarajya'. Now the
					time has come to devote ourselves towards 'Swachchhata'
					(cleanliness) of our motherland.</p>
			</div>
		</div>
	</div>

	<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
		<h1 class="w3-margin w3-xlarge">Towards A Smarter World</h1>
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
