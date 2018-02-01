<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
<div align="center">


     <h1>New Ninja </h1>
	<form:form method="POST" action="/ninjas/new" modelAttribute="ninja">
		<form:hidden path="id"/>
		<p>
		<form:label path="dojo">Dojo: 
			<form:select path="dojo">
				<c:forEach items="${dojos}" var="dojo" >
					<form:option value="${ dojo }">${ dojo.name }</form:option>
				</c:forEach>
			</form:select>
		</form:label>
		</p>
	    <p>
		<form:label path="firstName">First name: 
		<form:errors path="firstName"/>
		<form:input path="firstName"/>
		</form:label>
		</p>
		<p>
		<form:label path="lastName">Last name: 
		<form:errors path="lastName"/>
		<form:input path="lastName"/>
		</form:label>
		</p>
		<p>
		<form:label path="age">Age: 
		<form:errors path="age"/>
		<form:input path="age" value="18"/>
		</form:label>
		</p>
		
		<input type="submit" value="Create" />
	</form:form>
</div>
</body>
</html>