<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" type="text/css" href="/css/main.css" />
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Omikuji Form</title>
</head>
<body>
	<div class="container mt-5">
		<h1>Send an Omikuji!</h1>
		<div class="card mt-5">
			<div class="card-body">
				<form action="/send" method="post">
					<div class="form-group mt-3">
						<label for="num">Pick any number from 5 to 25:</label> <input
							type="number" id="num" name="num" min="5" max="25"
							class="form-control mt-1" placeholder="5">
					</div>
					<div class="form-group mt-3">
						<label for="city">Enter the name of any city:</label> <input
							type="text" id="city" name="city" class="form-control mt-1"
							placeholder="Name of city">
					</div>
					<div class="form-group mt-3">
						<label for="name">Enter the name of any real person:</label> <input
							type="text" id="name" name="name" class="form-control mt-1"
							placeholder="Name of person">
					</div>
					<div class="form-group mt-3">
						<label for="hobby">Enter professional endeavor or hobby:</label> <input
							type="text" id="hobby" name="hobby" class="form-control mt-1"
							placeholder="Name of hobby">
					</div>
					<div class="form-group mt-3">
						<label for="livingThing">Enter any type of living thing:</label> <input
							type="text" id="livingThing" name="livingThing"
							class="form-control mt-1" placeholder="Name of living thing">
					</div>
					<div class="form-group mt-3">
						<label for="message">Say something nice to someone:</label>
						<textarea id="message" name="message" class="form-control mt-1"
							rows="3" placeholder="Enter your message here"
							style="resize: none;"></textarea>

					</div>
					<p class="mt-2">
						<i>Send and show a friend</i>
					</p>
					<div class="container d-flex justify-content-end">
						<button type="submit" class="btn btn-success mt-1">Send</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>