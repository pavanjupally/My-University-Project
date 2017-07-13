<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Page</title>
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
					<a  class="navbar-brand" href="home">NWMSU</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active" ><a href="mainPage">My Page</a></li>
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
						<li><a href="login"><span class="fa fa-sign-out"
								aria-hidden="true"></span> Log Out</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="bg-success">
			<h1 align="center">Hello, Welcome to MyNorthwest Page</h1>
		</div>
		
		<div class=""row>
		<div class="col-xs-2"></div>
		<div class="col-xs-4">
		<img src="resources/images/Graduate.jpg" class="img-thumbnail" alt="Graduate Pic"
					style="width:80%" />
		</div>
		<div class="col-xs-4">
		</br>
		<table class="table table-striped table-hover">
    <tbody>
      <tr class="success">
        <td>Name</td>
        <td>Pavan Jupally</td>       
      </tr>
      <tr class="danger">
        <td>Degree</td>
        <td>Master's</td>       
      </tr>
      <tr class="info">
        <td>Major</td>
        <td>Applied Computer Science</td>       
      </tr>
      <tr class="warning">
        <td>GPA</td>
        <td>3.5/4</td>
        </tr>
        <tr class="active">
        <td>Email</td>
        <td>S525723@mai.nwmissouri.edu</td>       
      </tr>
      <tr class="default">
        <td>Student Group</td>
        <td>ISA</td>       
      </tr>
        
    </tbody>
  </table>
		
		</div>
		<div class="col-xs-2"></div>
		</div>
		
		</div>

<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>