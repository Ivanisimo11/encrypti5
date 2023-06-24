<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Encrypti5 - Caesar Cipher</title>
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
    <h1>Encrypti5 - Caesar Cipher</h1>

    <%--@elvariable id="caesar" type="com.webapp.cipher.Caesar"--%>
    <form:form action="showCaesarAfterDecrypt" modelAttribute="caesar" method="post">
        <label class="form-label">Text</label>
        <form:input path="text" class="form-input"/><br><br>
        <label class="form-label">Shift</label>
        <form:input path="shift" class="form-input"/><br><br>
        <br><br>
        <input type="submit" value="DECRYPT" class="form-submit">
    </form:form>
</div>
<div class="text">
    <p>The encryption scheme is very simple: it uses a shift of an alphabet letter by a fixed number of positions.</p>
    <p>The conversion used is usually denoted as ROTN, where N is shift, ROT is an abbreviation of the word ROTATE, in this case "cyclic shift".</p>
    <p>The alphabet is really looped, that is the letters at the end of the alphabet are converted to the letters of the beginning of the alphabet.</p>
    <p>For example, the designation ROT2 means a shift by 2 positions, that is, "A" turns into "C", "B" into "D", and so on, and at the end "Y" turns into "A" and "Z" into "B".</p>
</div>
</body>
</html>