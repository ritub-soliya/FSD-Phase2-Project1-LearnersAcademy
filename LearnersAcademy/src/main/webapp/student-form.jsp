<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Form </title>
</head>
<body>
	<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost/learners" user="root" password="root" />

	<sql:query dataSource="${db}" var="ListClasses">
	select * from class;
	</sql:query>
		<form action="addNewStudent" method="post" align="center">

			Student Name: <input type="text" name="studentName" required><br>
			Class Name: <select name="classes">
				<c:forEach items="${ListClasses.rows}" var="classes">
					<option value="${classes.class_id}">${classes.class_name}</option>
				</c:forEach>
			</select> <input type="submit" value="submit">
		</form>
</body>
</html>