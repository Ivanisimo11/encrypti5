<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Show Details</title>
</head>
<body>
<%--@elvariable id="bacon" type="com.webapp.cipher.Bacon"--%>
<form:form action="showBacon" modelAttribute="bacon" method="post">
    Text: ${bacon.text}
    <br>
    <br>
</form:form>
<a href="/">TRY AGAIN</a><br><br><br>
</body>
</html>
