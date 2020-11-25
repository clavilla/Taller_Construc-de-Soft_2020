<%@ include file="/WEB-INF/views/include.jsp"%>
<html>
<head>
<title>Lista de eventos</title>
</head>
<body>
	<h1>Lista de Eventos</h1>
	<c:forEach items="${model.eventsList}" var="event">
		<c:out value="${event.name}" />
		<br>
		<br>
	</c:forEach>
</html>