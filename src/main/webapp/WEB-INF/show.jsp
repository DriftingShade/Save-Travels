<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html data-bs-theme="dark">
<head>
<meta charset="ISO-8859-1">
<title>Expense Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	
	<div class="card">
		<div class="card-body">
			<div class="card-title">
				<h3>Expense Name: <c:out value="${travel.expense}"/></h3>
			</div>
			<div class="card-text">
				<p>Vendor: <c:out value="${travel.vendor}"></c:out></p>
				<p>Amount: <c:out value="${travel.amount}"></c:out></p>
				<p>Description: <c:out value="${travel.description}"></c:out></p>
			</div>
		</div>
	</div>
	<div class="container text-center">
		<a href="/" class="btn btn-primary mt-3">Back To All Expenses</a>
	</div>
</body>
</html>