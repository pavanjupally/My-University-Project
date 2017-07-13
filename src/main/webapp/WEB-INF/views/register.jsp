<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
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
						<li class="active"><a href="register"><span
								class="fa fa-user-plus" aria-hidden="true"></span> Sign Up</a></li>
						<li><a href="login"><span class="fa fa-sign-in"
								aria-hidden="true"></span> Login</a></li>
					</ul>
				</div>
			</div>
		</nav>
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

			<h2 align="center">Registration Form</h2>
			<div class="well">
				<sf:form action="registerSubmit" method="post"
					id="registerFormSubmit" commandName="register">
					<span class="text-danger text-center">${registerError}</span>
					<div class="row">
						<div class="col-xs-6">
							<div class="form-group">

								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-asterisk"></span></span>
									<sf:input type="text" class="form-control" path="firstName"
										placeholder="Enter First Name" />
										<sf:errors path="firstName" class="text-danger text-center" />
								</div>
							</div>
						</div>
						<div class="col-xs-6">
							<div class="form-group">

								<div class="input-group">
									<span class="input-group-addon"><span
										class="fa fa-asterisk" aria-hidden="true"></span></span>
									<sf:input type="text" class="form-control" path="lastName"
										placeholder="Enter Last Name"/>
										<sf:errors path="lastName" class="text-danger text-center" />
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label" for="gender">Gender: </label>
						
							<label class="radio-inline"> <input checked="checked"
								id="gender" name="gender" type="radio" value="Male"> Male
							</label> <label class="radio-inline"> <input id="gender" name="gender"
								type="radio" value="Female"> Female
							</label>						
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><span
								class="glyphicon glyphicon-asterisk"></span></span>
							<sf:input path="email" class="form-control"
								placeholder="Enter Email" />
								<sf:errors path="email" class="text-danger text-center" />
						</div>
					</div>
					<div id="pwdGroup" class="form-group has-feedback">
					<!-- <span id="pwdError" class="text-danger text-center"></span>-->

						<div class="input-group">
							<span class="input-group-addon"><span
								class="glyphicon glyphicon-asterisk"></span></span>
							<sf:password class="form-control" path="inputPwd"
								placeholder="Enter Password" required="required" />
							<span id="pwdGlyphicon" class="glyphicon form-control-feedback"></span>
							<sf:errors path="inputPwd" class="text-danger text-center" />
						</div>
					</div>
					<div id="confirmPwdGroup" class="form-group has-feedback">
					<!--<span id="confirmPwdError" class="text-danger text-center"></span>-->

						<div class="input-group">
							<span class="input-group-addon"><span
								class="glyphicon glyphicon-asterisk"></span></span>
							<input type="password" class="form-control" id="confirmPwd" 
								name="confirmPwd" placeholder="Confirm Password" required="required" />
							<span id="confirmGlyphicon" class="glyphicon form-control-feedback"></span>
							 <div class="text-danger" id="confirmPwdError">${confirmPwdError}</div>
						</div>
					</div>
					<sf:button type="submit" class="btn btn-info">Register!</sf:button>
				</sf:form>
			</div>

		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="resources/js/register.js"></script>
</body>
</html>