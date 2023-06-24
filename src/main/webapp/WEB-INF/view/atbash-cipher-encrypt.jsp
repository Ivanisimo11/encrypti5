<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Encrypti5 - Atbash Cipher</title>
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
    <h1>Encrypti5 - Atbash Cipher</h1><%--@elvariable id="atbash" type="com.webapp.cipher.Atbash"--%>
    <form:form action="showAtbash" modelAttribute="atbash" method="post">
        <label class="form-label">Text</label>
        <form:input path="text" class="form-input"/><br><br>
        <label class="form-label">Alphabet</label>
        <form:input path="alphabet" class="form-input"/><br><br>
        <br><br>
        <input type="submit" value="ENCRYPT" class="form-submit">
    </form:form>
</div>
<div class="text">
    <p> A simple substitution cipher, used for any given alphabet and getting its name from there.</p>
    <p> Encryption is performed by replacing the first letter of the alphabet with the last, the second with the
        penultimate. </p>
    <p> The encryption rule is to replace the i-th letter of the alphabet with a letter number n - i + 1 where n is the
        number of letters in the alphabet. </p>
    <p> The Atbash cipher for the English alphabet: </p>
    <p> The original alphabet: A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z. </p>
    <p> Replacement alphabet: Z, Y, X, W, V, U, T, S, R, Q, P, O, N, M, L, K, J, I, H, G, F, E, D, C, B, A. </p>
</div>
</body>
</html>