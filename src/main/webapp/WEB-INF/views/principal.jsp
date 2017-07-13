<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Principal Page</title>
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
						<li><a href="staff">Staff</a></li>
						<li class="active"><a href="principal">Principal</a></li>
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
			<h1 align="center">Hello, Welcome to Principal Page</h1>
		</div>
		<div class="row">
		<div class="col-xs-12">
		<div class="well well-lg">
		<table class="table table-responsive table-hover">
		<thead>
		<tr>
		<th>Roll Number</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Email Id</th>
		<th>Marks in Maths</th>
		<th>Marks in Social</th>
		<th>Marks in Physics</th>
		<th>Marks in Biology</th>
		<th>Marks in English</th>
		<th>Marks in Chemistry</th>
		</tr>
		</thead>
		<tbody>
		
		<c:forEach var="student" items="${allStudentInfo}">
		<tr>
		<th>${student.getRollNumber()}</th>
		<th>${student.getFirstName()}</th>
		<th>${student.getLastName()}</th>
		<th>${student.getEmail()}</th>
		<th>${student.getMarksMaths()}</th>
		<th>${student.getMarksSocial()}</th>
		<th>${student.getMarksPhysics()}</th>
		<th>${student.getMarksBiology()}</th>
		<th>${student.getMarksEnglish()}h</th>
		<th>${student.getMarksChemistry()}</th>
		</tr>
		</c:forEach>
		</tbody>
		</table>
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