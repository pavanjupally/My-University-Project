<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
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
						<li class="active"><a href="login"><span
								class="fa fa-sign-in" aria-hidden="true"></span> Login</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="bg-success">
			<h1 align="center">Hello, Welcome to Northwest Missouri State
				University</h1>
		</div>
		<div class="col-xs-1"></div>
		<div class="col-xs-7">
			<img src="resources/images/admin.jpg" alt="Graduate Pic"
				style="width: 100%" />
		</div>
		<div class="col-xs-4">
			<span class="text-danger text-align:center">${contactSuccess}</span>

			<h2 align="center">Login Form</h2>
			<div class="well">
				<sf:form class="form-horizontal" action="loginSubmit" method="post"
					id="loginFormSubmit" commandName="login">
					<span class="text-danger text-center">${loginError}</span>

					<div id="emailGroup" class="form-group has-feedback">
						<div class="row">
							<div class="col-xs-2">
								<label class="control-label" for="email">Email:</label>
							</div>
							<div class="col-xs-6">
								<sf:input class="form-control" path="email"
									placeholder="Enter email" />
								<span id="emailGlyphicon"
									class="glyphicon form-control-feedback"></span>
							</div>
							<sf:errors path="email" class="text-danger col-xs-4" />
						</div>
					</div>
					<div id="pwdGroup" class="form-group has-feedback">
						<div class="row">
							<div class="col-xs-2">
								<label class="control-label" for="pwd">Password:</label>
							</div>
							<div class="col-xs-6">
								<sf:input type="password" class="form-control" path="pwd"
									placeholder="Enter Password" required="required" />
								<span id="pwdGlyphicon" class="glyphicon form-control-feedback"></span>
							</div>
							<sf:errors path="pwd" class="text-danger col-xs-4" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<div class="checkbox">
								<label><input type="checkbox" /> Remember me</label>
							</div>
						</div>
					</div>

					<div class="row">

						<div class=" col-sm-offset-2 col-sm-3">
							<sf:button type="submit" class="btn btn-default">Submit</sf:button>
						</div>
						<div class="col-sm-7">
							<a href="#">Forgot Password?</a><br />
							<p>
								Not a Member?&nbsp;&nbsp;<a href="register">Register</a>
							</p>
						</div>
					</div>
				</sf:form>

			</div>

		</div>

	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="resources/js/login.js"></script>
</body>
</html>