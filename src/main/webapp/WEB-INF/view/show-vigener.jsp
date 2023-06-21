<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Show Details</title>
</head>
<body>
<%--@elvariable id="vigener" type="com.webapp.cipher.Vigener"--%>
<form:form action="showVigener" modelAttribute="vigener" method="post">
    Text: ${vigener.text}
    <br>
    <br>
</form:form>
<a href="/">TRY AGAIN</a><br><br><br>
</body>
</html>
