<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="home">NWMSU</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li><a href="login">My Page</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">Academics<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Master's Degree</a></li>
								<li><a href="#">Bachelor's Degree</a></li>
							</ul></li>
						<li><a href="staff">Staff</a></li>
						<li><a href="principal">Principal</a></li>
						<li><a href="contact">Contact Us</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="register"><span class="fa fa-user-plus"
								aria-hidden="true"></span> Sign Up</a></li>
						<li><a href="login"><span class="fa fa-sign-in"
								aria-hidden="true"></span> Login</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="bg-success">
			<h1 align="center">Hello, Welcome to Northwest Missouri State
				University</h1>
		</div>
		
		<div class="container">
		<div class="col-xs-4">
			<h2 align="center"><span class="label label-success">Current News</span></h2>
				<div class="well">
					<h2>Connect</h2>
					<div class="list-group">
						<a href="#" class="list-group-item list-group-item active">Admissions <span class="badge">10</span></a>
						<a href="#" class="list-group-item list-group-item-success">Sports <span class="badge">5</span></a>
						<a href="#" class="list-group-item list-group-item-info">International Students <span class="badge">3</span></a>
						<a href="#" class="list-group-item list-group-item-default">Alumni Meet <span class="badge">7</span></a>
						<a href="#" class="list-group-item list-group-item-danger">Research <span class="badge">2</span></a>
						<a href="#" class="list-group-item list-group-item-error">Upcoming Events <span class="badge">8</span></a>
						<a href="#" class="list-group-item list-group-item-warning">Missouri Academy <span class="badge">6</span></a>
						<a href="#" class="list-group-item list-group-item-success">Online Learnng <span class="badge">4</span></a>
					</div>
				</div>
			</div>
			<div class="col-xs-8">

				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
						<li data-target="#myCarousel" data-slide-to="3"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img src="resources/images/welcome.JPG" class="img-rounded"
								alt="Welcome board" style="width: 100%; height: 70%;">
							<div class="carousel-caption">
								<h3>Welcome Board</h3>
								<p>Display's announcements and temperature</p>
							</div>
						</div>
						<div class="item">
							<img src="resources/images/coldenPond.jpg" class="img-rounded"
								alt="Colden Pond" style="width: 100%; height: 70%;">
							<div class="carousel-caption">
								<h3>Colden Pond</h3>
								<p>A pleasant pond in the university</p>
							</div>
						</div>
						<div class="item">
							<img src="resources/images/stadium.jpg" class="img-rounded"
								alt="Stadium" style="width: 100%; height: 70%;">
							<div class="carousel-caption">
								<h3>Bearcat Arena</h3>
								<p>Football Stadium, Pride of the university</p>
							</div>
						</div>
						<div class="item">
							<img src="resources/images/flashMob.jpg" class="img-rounded"
								alt="Flash Mob" style="width: 100%; height: 70%;">
							<div class="carousel-caption">
								<h3>Flash Mob</h3>
								<p>Flash mob by Indian students y</p>
							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
			
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
