<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Staff Page</title>
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
						<li><a href="mainPage">My Page</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">Academics<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Master's Degree</a></li>
								<li><a href="#">Bachelor's Degree</a></li>
							</ul></li>
						<li class="active"><a href="staff">Staff</a></li>
						<li><a href="principal">Principal</a></li>
						<li><a href="contact">Contact Us</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="login"><span class="fa fa-sign-out"
								aria-hidden="true"></span> Log Out</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="bg-success">
			<h1 align="center">Hello, Welcome to Staff Page</h1>
		</div>
		<h2 align="center">Add Student marks</h2>
		<div class="col-xs-6 col-xs-offset-3">
			<span class="text-danger text-align:center">${staffSuccess}</span>
			<div class="well">
				<sf:form action="staffSubmit" method="post" id="staffFormSubmit"
					commandName="staff">
					<span class="text-danger text-center">${staffError}</span>
					<div class="form-group">
						<label class="control-label" for="subject">Select Subject: </label>					
							<label class="radio-inline"> <input checked="checked"
								id="subject" name="subject" type="radio" value="marksMaths"> Maths</label> 
							<label class="radio-inline"> <input id="subject" name="subject"
								type="radio" value="marksSocial"> Social </label>
								<label class="radio-inline"> <input
								id="subject" name="subject" type="radio" value="marksPhysics"> Physics</label> 
							<label class="radio-inline"> <input id="subject" name="subject"
								type="radio" value="marksBiology"> Biology </label>
								<label class="radio-inline"> <input
								id="subject" name="subject" type="radio" value="marksEnglish"> English</label> 
							<label class="radio-inline"> <input id="subject" name="subject"
								type="radio" value="marksChemistry"> Chemistry </label>						
					</div>
					<div class="form-group">
						<label>Enter Marks for All the 20 Students:</label>					
						<div class="input-group">					
								<sf:textarea path="marksStudents" placeholder="Enter Marks"
										class="form-control" rows="3"></sf:textarea>
								<span class="hint">Enter Comma Separated values(eg: 78,60,84,91...)</span>							
							<sf:errors path="marksStudents" class="text-danger text-center" />
						</div>
						<span class="text-danger text-center" id="marksDisplay">${marksDisplay}</span>					
					</div>
					<sf:button type="submit" class="btn btn-info">Add Marks</sf:button>
				</sf:form>
			</div>
		</div>

	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="resources/js/staff.js"></script>
</body>
</html>