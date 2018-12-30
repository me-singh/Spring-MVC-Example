<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>


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
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.desc}</td>
					<td><fmt:formatDate pattern="dd/MM/yyyy"
									value="${todo.targetDate}" /></td>
 					<td>${todo.done}</td> <%--isDone is equal to done("is" is dropped) --%>
 					<td><a href="/delete-todo?id=${todo.id}" class="btn btn-warning">Delete</a></td>
 					<td><a href="/update-todo?id=${todo.id}" class="btn btn-info">Update</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</div>

<div class="container">
	<a href="/add-todo" class="btn btn-success">Add Todo</a>
</div>

<%@ include file="common/footer.jspf" %>

</html>