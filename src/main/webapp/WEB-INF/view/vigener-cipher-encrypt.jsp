<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Vigener</title>
</head>
<body>
<br><br><br>

<%--@elvariable id="vigener" type="com.webapp.cipher.Vigener"--%>
<form:form action="showVigenerAfterEncrypt" modelAttribute="vigener" method="post">
    Text<form:input path="text"/><br><br>
    Key<form:input path="key"/><br><br>
    <br><br>
    <input type="submit" value="OK">
</form:form>

</form>
</body>
</html>
