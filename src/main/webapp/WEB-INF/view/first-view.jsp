<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            background-color: #f2f2f2;
            text-align: center;
            font-family: Arial, sans-serif;
        }

        h1 {
            color: #333;
            font-size: 48px;
            margin-top: 50px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .options {
            margin-top: 100px;
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            flex-wrap: wrap;
        }

        .option {
            width: 200px;
            height: 200px;
            margin: 20px;
            padding: 20px;
            background-color: #333;
            color: #fff;
            border-radius: 5px;
            font-size: 24px;
            text-transform: uppercase;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        .option:hover {
            transform: scale(1.1);
        }

        .links {
            margin-top: 50px;
        }

        .links a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            background-color: #333;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 18px;
            text-transform: uppercase;
        }
    </style>
</head>
<body>
<h1>Encrypti5</h1>
<h2>Encrypt</h2>
<div class="links">
    <a href="atbashEncrypt">Atbash</a>
    <a href="caesarEncrypt">Caesar</a>
    <a href="vigenerEncrypt">Vigenere</a>
    <a href="baconEncrypt">Bacon</a>
    <a href="a1z26Encrypt">A1Z26</a>
</div>
<br><br><br>
<h2>Decrypt</h2>
<div class="links">
    <a href="atbashDecrypt">Atbash</a>
    <a href="caesarDecrypt">Caesar</a>
    <a href="vigenerDecrypt">Vigenere</a>
    <a href="baconDecrypt">Bacon</a>
    <a href="a1z26Decrypt">A1Z26</a>
</div>
</body>
</html>
