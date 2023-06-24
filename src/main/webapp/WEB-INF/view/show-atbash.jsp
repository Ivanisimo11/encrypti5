<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Atbash Result</title>
    <style>
        body {
            background-image: url("https://img.freepik.com/free-vector/modern-desktop-background-geometric-blue-design-vector_53876-135923.jpg?w=1380&t=st=1687613700~exp=1687614300~hmac=6258e150e3e146f3bda7c7dd01122fb9f67fdb4d70fb02bac18028711dda423e");
            background-size: cover;
            color: white;
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 150px;
        }

        h1 {
            font-size: 32px;
            margin-bottom: 40px;
        }

        .result {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .try-again {
            font-size: 18px;
            margin-top: 50px;
            text-decoration: none;
            color: white;
            border: 1px solid white;
            padding: 10px 20px;
            border-radius: 5px;
        }

        .try-again:hover {
            background-color: white;
            color: #1f1f1f;
        }
    </style>
</head>
<body>
<%--@elvariable id="atbash" type="com.webapp.cipher.Atbash"--%>
<h1>Result:</h1>

<div class="result">
    ${atbash.text}
</div>
<br>
<br>
<br>
<br>
<br>

<a class="try-again" href="/">TRY ANOTHER CIPHER</a>
<br>
<br>
<br>
<br>
<a class="try-again" href="/atbashEncrypt">TRY ENCRYPT WITH ATBASH</a>
<br>
<br>
<br>
<br>
<a class="try-again" href="/atbashDecrypt">TRY DECRYPT WITH ATBASH</a>
</body>
</html>
