<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Encrypti5 - Bacon Cipher</title>
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
    <h1>Encrypti5 - Bacon Cipher</h1>

    <%--@elvariable id="bacon" type="com.webapp.cipher.Bacon"--%>
    <form:form action="showBaconAfterDecrypt" modelAttribute="bacon" method="post">
        <label class="form-label">Text</label>
        <form:input path="text" class="form-input"/><br><br>
        <br><br>
        <input type="submit" value="DECRYPT" class="form-submit">
    </form:form>
</div>
<div class="text">
    <p>The cipher is based on the binary encoding of the alphabet with the symbols "A" and "B", which can be matched
        with "0" and "1".</p>
    <center>
        <table>
            <tr>
                <th>a -</th>
                <td>AAAAA</td>
                <th>g -</th>
                <td>AABBA</td>
                <th>m -</th>
                <td>ABBAA</td>
                <th>s -</th>
                <td>BAABA</td>
                <th>y -</th>
                <td>BBAAA</td>
            </tr>
            <tr>
                <th>b -</th>
                <td>AAAAB</td>
                <th>h -</th>
                <td>AABBB</td>
                <th>n -</th>
                <td>ABBAB</td>
                <th>t -</th>
                <td>BAABB</td>
                <th>z -</th>
                <td>BBAAB</td>
            </tr>
            <tr>
                <th>c -</th>
                <td>AAABA</td>
                <th>i -</th>
                <td>ABAAA</td>
                <th>o -</th>
                <td>ABBBB</td>
                <th>u -</th>
                <td>BABAA</td>
            </tr>
            <tr>
                <th>d -</th>
                <td>AAABB</td>
                <th>j -</th>
                <td>ABAAB</td>
                <th>p -</th>
                <td>ABBBB</td>
                <th>v -</th>
                <td>BABAB</td>
            </tr>
            <tr>
                <th>e -</th>
                <td>AABAA</td>
                <th>k -</th>
                <td>ABABA</td>
                <th>q -</th>
                <td>BAAAA</td>
                <th>w -</th>
                <td>BABBA</td>
            </tr>
            <tr>
                <th>f -</th>
                <td>AABAB</td>
                <th>l -</th>
                <td>ABABB</td>
                <th>r -</th>
                <td>BAAAB</td>
                <th>x -</th>
                <td>BABBB</td>
            </tr>
        </table>
    </center>
</div>
</body>
</html>