<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Show Details</title>
</head>
<body>
<%--@elvariable id="atbash" type="com.webapp.cipher.Atbash"--%>
<form:form action="showAtbash" modelAttribute="atbash" method="post">
    Text: ${atbash.text}
    <br>
    <br>
</form:form>
<a href="/">TRY AGAIN</a><br><br><br>
</body>
</html>
