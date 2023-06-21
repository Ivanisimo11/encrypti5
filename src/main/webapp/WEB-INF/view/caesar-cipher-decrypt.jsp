<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Caesar</title>
</head>
<body>

<br><br><br>

<%--@elvariable id="caesar" type="com.webapp.cipher.Caesar"--%>
<form:form action="showCaesarAfterDecrypt" modelAttribute="caesar" method="post">
    Text<form:input path="text"/><br><br>
    Shift<form:input path="shift"/><br><br>
    <br><br>
    <input type="submit" value="OK">
</form:form>

</form>
</body>
</html>
