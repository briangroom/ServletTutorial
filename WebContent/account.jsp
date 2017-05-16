<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.user.Student" %>
    
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Claim Academy</title>
	<link rel="stylesheet" type="text/css" href="./styles/styles.css">
    <link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+
    PmSTsz/K68vbdEjh4u" crossorigin+"anonymous">
</head>
<body>
    <%
    Student student = (Student)session.getAttribute("student");
    
     %>

<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle-collapsed" data-toggle="collapse"
		data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			<span class="sr-only">Togglenavigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
			Welcome To <% out.print(student.getSchoolName()); %>
	</div>
	<div id="navbar" class="navbar-collapse collapse">
	</div><!-- /.navbar-collapse -->
</div>
</nav>
<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
	<div class="container">
		<h1>Hello, <% out.print(student.getFirstName()); %></h1>
		<p>This is a simple java servlet program for a functional website.</p>
	</div>
</div>
<div class="container">
<!-- Example row of columns -->
	<div class="row">
		<div class="col-md-4">
			<h2>My GPA </h2>
			<p><% out.print(student.getGpa()); %></p>
				<!-- <p><a class="btn btn-default"href="GpaServlet" role="button">View  GPA </a></p>  -->
		</div>
		<div class="col-md-4">
			<h2>Enter Grades</h2>
			<form action="GpaServlet" method="post">
			<div class="form-group">
				<label for="gradeOne">GradeOne</label>
				<input type="text" class="form-control" name="gradeOne" id="gradeOne" placeholder="Grade One">
			</div>
			<div class="form-group">
				<label for="gradeTwo">GradeTwo</label>
				<input type="text" class="form-control" name="gradeTwo" id="gradeTwo" placeholder="Grade Two">
			</div>
			<div class="form-group">
				<label for="gradeThree">GradeThree</label>
				<input type="text" class="form-control" name="gradeThree" id="gradeThree" placeholder="Grade Three">
			</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-4">
			<h2>My BMI </h2>
			<p>
			
			<% if (session.getAttribute("bmi") != null) { %>
   				 <p> <% out.print(session.getAttribute("bmi")); %></p>
			<% } %>
			</p> 
				<!-- <p><a class="btn btn-default"href="GpaServlet" role="button">View  GPA </a></p>  -->
		</div>
		<div class="col-md-4">
			<h2>Enter BMI Factors</h2>
			<form action="BmiServlet" method="post">
			<div class="form-group">
				<label for="weight">Weight</label>
				<input type="text" class="form-control" name="weight" id="weight" placeholder="Weight">
			</div>
			<div class="form-group">
				<label for="height">Height</label>
				<input type="text" class="form-control" name="height" id="height" placeholder="Height">
			</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
		
		<hr>
		<footer>
			<p>&copy; 2017 Company, Inc. </p>
		</footer>

	</div>	<!-- /container -->
</div>
</body>
</html>