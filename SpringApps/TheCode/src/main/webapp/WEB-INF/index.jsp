<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align:center; margin-top:200px;">
	<form action="/code" method="POST">
		<p style="color:red">
			${errors}
		</p>
			What is the code?
		<p>
			<input type="text" name="codeInput" >
		</p>
		<input type="submit" value="Try Code">
	</form>
</h1>

</body>
</html>