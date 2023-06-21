<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Show Details</title>
</head>
<body>
<%--@elvariable id="a1z26" type="com.webapp.cipher.A1Z26"--%>
<form:form action="showA1Z26" modelAttribute="a1z26" method="post">
    Text: ${a1z26.text}
    <br>
    <br>
</form:form>
<a href="/">TRY AGAIN</a><br><br><br>
</body>
</html>
