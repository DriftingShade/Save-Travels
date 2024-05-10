<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html data-bs-theme="dark">
<head>
<meta charset="ISO-8859-1">
<title>Save Travels</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<h1 class="text-center my-5">All Travel Expenses</h1>
	<table class="table text-center my-5">
		<thead>
			<tr>
				<th>Expense</th>
				<th>Vendor</th>
				<th>Amount</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${travels}" var="travel">
				<tr>
					<td><a href="/travels/${travel.id}/show">${travel.expense}</a></td>
					<td>${travel.vendor}</td>
					<td>${travel.amount }</td>
					<td><a href="/travels/${travel.id}/edit" class="btn btn-warning">Edit</a></td>
					<td>
						<form action="/travels/${travel.id}" method="post">
						    					<input type="hidden" name="_method" value="delete">
						    					<input type="submit" class="btn btn-danger" value="Delete">
						</form>
					</td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="container text-center my-5">
		<h2>Add An Expense:</h2>
		<form:form action="/createtravel" method="post" modelAttribute="travel">
			<p>
				<form:label path="expense">Expense Name</form:label>
				<form:errors path="expense"/>
				<form:input path="expense"/>
			</p>
			<p>
				<form:label path="vendor">Vendor</form:label>
				<form:errors path="vendor"/>
				<form:input path="vendor"/>
			</p>
			<p>
				<form:label path="amount">Amount</form:label>
				<form:errors path="amount"/>
				<form:input path="amount"/>
			</p>
			<p>
				<form:label path="description">Description</form:label>
				<form:errors path="description"/>
				<form:textarea path="description"/>
			</p>
  			<button type="submit" class="btn btn-primary">Submit</button>
		</form:form>
	</div>
</body>
</html>