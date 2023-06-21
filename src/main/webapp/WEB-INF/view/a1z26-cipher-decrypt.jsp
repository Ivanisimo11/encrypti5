<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Atbash</title>
</head>
<body>

<br><br><br>

<%--@elvariable id="a1z26" type="com.webapp.cipher.A1Z26"--%>
<form:form action="showA1Z26AfterDecrypt" modelAttribute="a1z26" method="post">
    Text<form:input path="text"/><br><br>
    <br><br>
    <input type="submit" value="OK">
</form:form>

</form>
</body>
</html>
