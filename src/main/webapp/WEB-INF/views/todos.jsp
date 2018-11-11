<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Yahoo!!</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
<div class="container">
	<h1>ADD NEW TODO</h1>
	<form:form action="/add-todo" method="post" commandName="todo">
		<fieldset class="form-group">
			<form:label path="desc">Description</form:label>
			<form:input path="desc" type="text" class="form-control" required="required"/>
			<form:errors path="desc" cssClass="text-warning" />
		</fieldset>
		<input type="submit" value="ADD" class="btn btn-success" />
	</form:form>
</div>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
</body>
</html>