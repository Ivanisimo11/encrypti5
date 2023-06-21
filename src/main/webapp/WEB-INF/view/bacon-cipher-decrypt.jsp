<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bacon</title>
</head>
<body>
<br><br><br>

<%--@elvariable id="bacon" type="com.webapp.cipher.Bacon"--%>
<form:form action="showBaconAfterDecrypt" modelAttribute="bacon" method="post">
    Text<form:input path="text"/><br><br>
    <br><br>
    <input type="submit" value="OK">
</form:form>

</form>
</body>
</html>
