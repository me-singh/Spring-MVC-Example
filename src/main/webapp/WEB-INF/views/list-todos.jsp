<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<title>Yahoo!!</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>

<div class="container">
	<h3>Hi ${name}</h3>
</div>

<br>

<div class="container">

	<table border="1" class="table table-striped">
		<caption>Your Todos are:</caption>
		<thead>
			<tr>
				<th>Description</th>
				<th>Date</th>
				<th>Is Completed?</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.desc}</td>
					<td>${todo.targetDate}</td>
 					<td>${todo.done}</td> <%--isDone is equal to done("is" is dropped) --%>
 					<td><a href="/delete-todo?id=${todo.id}" class="btn btn-warning">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</div>

<div class="container">
	<a href="/add-todo" class="btn btn-success">Add Todo</a>
</div>

<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>

</body>

</html>