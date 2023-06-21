<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Atbash</title>
</head>
<body>

<br><br><br>

<%--@elvariable id="atbash" type="com.webapp.cipher.Atbash"--%>
<form:form action="showAtbash" modelAttribute="atbash" method="post">
    Text<form:input path="text"/><br><br>
    Alphabet<form:input path="alphabet"/><br><br>
    <br><br>
    <input type="submit" value="OK">
</form:form>

</form>
</body>
</html>
