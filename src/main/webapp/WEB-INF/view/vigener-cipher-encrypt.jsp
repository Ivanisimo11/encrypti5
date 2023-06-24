<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Encrypti5 - Vigener Cipher</title>
    <style>
        body {
            background-image: url("https://img.freepik.com/free-vector/modern-desktop-background-geometric-blue-design-vector_53876-135923.jpg?w=1380&t=st=1687613700~exp=1687614300~hmac=6258e150e3e146f3bda7c7dd01122fb9f67fdb4d70fb02bac18028711dda423e");
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #ffffff;
        }

        .container {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.6);
            border-radius: 5px;
            margin-top: 100px;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
        }

        .form-label {
            display: block;
            margin-bottom: 10px;
        }

        .form-input {
            width: 100%;
            padding: 8px;
            border-radius: 3px;
            border: none;
        }

        .text {
            margin-top: 100px;
            font-size: 24px;
            text-align: center;
        }

        .form-submit {
            width: 100%;
            padding: 10px;
            border-radius: 3px;
            border: none;
            background-color: #4CAF50;
            color: #ffffff;
            font-weight: bold;
            cursor: pointer;
        }

        .form-submit:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Encrypti5 - Vigener Cipher</h1>

    <%--@elvariable id="vigener" type="com.webapp.cipher.Vigener"--%>
    <form:form action="showVigenerAfterEncrypt" modelAttribute="vigener" method="post">
        <label class="form-label">Text</label>
        <form:input path="text" class="form-input"/><br><br>
        <label class="form-label">Key</label>
        <form:input path="key" class="form-input"/><br><br>
        <br><br>
        <input type="submit" value="ENCRYPT" class="form-submit">
    </form:form>
</div>
<div class="text">
    <p>The Vigener Cipher is a sequence of Caesar ciphers with different shift values.</p>
    <p>That is, a transformation is applied to the first letter of the text, for example, ROT5, to the second, for example, ROT17, and so on.</p>
    <p>The sequence of transformations to be applied is determined by the key phrase, in which each letter of the word denotes the required shift.</p>
</div>
</body>
</html>