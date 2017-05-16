<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Claim Academy</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="styles.css" />
</head>
	
<body>

<form class="form-container" action="RegistrationServlet" method="post">
	<div class="form-group">
		<label for="firstName"> First Name </label>
		<input type="text" class="form-control" name="firstName" id="firstName" placeholder="First Name">
	</div>
	<div class="form-group">
		<label for="lastName"> Last Name </label>
		<input type="text" class="form-control" name="lastName" id="lastName" placeholder="Last Name">
	</div>
	<div class="form-group">
		<label for="email"> Email address </label>
		<input type="text" class="form-control" name="email" id="exampleInputEmail1" placeholder="Email address">
	</div>
	<div class="form-group">
		<label for="password"> Password </label>
		<input type="text" class="form-control" name="password" id="password" placeholder="Password">
	</div>
	<br>Address<br>
	<div class="form-group">
		<label for="street"> Street </label>
		<input type="text" class="form-control" name="street" id="street" placeholder="Street">
	</div>
	<div class="form-group">
		<label for="city"> City </label>
		<input type="text" class="form-control" name="city" id="city" placeholder="City">
	</div>
	<div class="form-group">
		<label for="state"> State </label>
		<input type="text" class="form-control" name="state" id="state" placeholder="State">
	</div>
	<div class="form-group">
		<label for="zipCode"> ZipCode </label>
		<input type="text" class="form-control" name="zipCode" id="zipCode" placeholder="ZipCode">
	</div>

	<div class="checkbox">
		<label>
			<input type="checkbox">Check me out	
		</label>
	</div>
	<button type="submit" class="btn btn-default">Submit</button>

</form>

</body>
</html>