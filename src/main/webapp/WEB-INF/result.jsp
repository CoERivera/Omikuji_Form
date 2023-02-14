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
		<h1>Here's your Omikuji!</h1>
		<div class="card mt-5 bg-info text-white">
			<div class="card-body">
				<h2>
					In
					<c:out value="${num}" />
					years, you will live in
					<c:out value="${city}" />
					with
					<c:out value="${name}" />
					as your roommate,
					<c:out value="${hobby}" />
					for a living. The next time you see a
					<c:out value="${livingThing}" />, 
					you will have good luck. Also,
					<c:out value="${message}" />
				</h2>
			</div>
		</div>
		<a href="/omikuji">Go back</a>
	</div>
</body>
</html>