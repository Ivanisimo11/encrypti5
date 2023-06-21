<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Show Details</title>
</head>
<body>
<%--@elvariable id="caesar" type="com.webapp.cipher.Caesar"--%>
<form:form action="showCaesar" modelAttribute="caesar" method="post">
    Text: ${caesar.text}
    <br>
    <br>
</form:form>
<a href="/">TRY AGAIN</a><br><br><br>
</body>
</html>
