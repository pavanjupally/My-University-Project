<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
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
						<li class="active"><a href="contact">Contact Us</a></li>
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
		<span class="text-danger text-align:center">${contactSuccess}</span>

		<div class="row">
			<div class="col-xs-2"></div>
			<div class="col-xs-4">

				<h3 align="center">Contact Us</h3>
				<p align="center">We are happy to answer any question you have
					or provide you with an estimate.Just send us a message in the form
					below with any questions you have.</p>
				<div class="well">
					<sf:form action="contactUsSubmit" method="post"
						id="contactUsFormSubmit" commandName="contact">
						<span class="text-danger text-center">${contactError}</span>
						<div class="row">						
								<div class="form-group col-xs-8">
									<sf:input class="form-control" path="email"
										placeholder="Enter email" />
								</div>
								<sf:errors path="email" class="text-danger col-xs-4" />
								</div>
								<div class="row">
								<div class="form-group col-xs-8">
									<sf:input class="form-control" path="name"
										placeholder="Enter name" />
								</div>
								<sf:errors path="name" class="text-danger col-xs-4" />
								</div>
								<div class="row">
								<div id="subGroup" class="form-group has-feedback col-xs-8">
									<sf:input class="form-control" path="subject"
										placeholder="Enter subject" />
									<span id="subGlyphicon" class="glyphicon form-control-feedback"></span>
								</div>
								<sf:errors path="subject" class="text-danger col-xs-4" />
								</div>
								<div class="row">
								<div class="form-group col-xs-8">
									<span id="msgError" class="text-danger text-center"></span>
									<sf:textarea path="message" placeholder="Enter Message"
										class="form-control" rows="2"></sf:textarea>
								</div>
								<sf:errors path="message" class="text-danger col-xs-4" />
								</div>
								<button type="submit" class="btn btn-info">Send</button>		
					</sf:form>
				</div>

				<div class="row">
					<i class="fa fa-facebook-square col-xs-3" style="font-size: 400%;"
						aria-hidden="true"></i> <i class="fa fa-twitter col-xs-3"
						style="font-size: 400%;" aria-hidden="true"></i> <i
						class="fa fa-instagram col-xs-3" style="font-size: 400%;"
						aria-hidden="true"></i> <i class="fa fa-linkedin col-xs-3"
						style="font-size: 400%;" aria-hidden="true"></i>
				</div>

			</div>
			<div class="col-xs-6">
				<br />

				<h2 align="center">
					<span class="label label-success">Directories</span>
				</h2>
				<button type="submit" class="btn btn-info col-xs-3">Students</button>
				<button type="submit" class="btn btn-info col-xs-3">Faculty/Staff</button>
				<button type="submit" class="btn btn-info col-xs-3">Departments</button>
				<button type="submit" class="btn btn-info col-xs-3">Regents</button>
				<br></br>
				<h3 align="center">
					<span class="label label-success">General Inquires</span>
				</h3>
				<h5 align="center">
					Phone: <a href="#">660.562.1212</a>
				</h5>
				<h3 align="center">
					<span class="label label-success">Admissions</span>
				</h3>
				<p align="center">Northwest Missouri State University</p>
				<p align="center">Office of Admissions</p>
				<p align="center">800 University Drive</p>
				<p align="center">Maryville, MO 64468</p>
				<p align="center">660.562.1562</p>
				<p align="center">
					<a href="#">admissions@nwmissouri.edu</a>
				</p>
			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="resources/js/contact.js"></script>
</body>
</html>