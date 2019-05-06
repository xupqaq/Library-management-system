<%@ page contentType="text/html; charset=utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Haaa</h1>
	<c:forEach items="${list }" var="temp">
		${temp.eno },${temp.ename },${temp.sal }<br>
	</c:forEach>

</body>
</html>