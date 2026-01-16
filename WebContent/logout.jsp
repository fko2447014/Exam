<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>得点管理システム</title>
    <style>
        body {
            font-family: "メイリオ", sans-serif;
            background-color: #ffffff;
            margin: 0;
        }
        header {
            background: linear-gradient(to bottom, #e0ecff, #ffffff);
            padding: 20px;
            text-align: center;
        }
        .container {
            margin: 30px auto;
            width: 600px;
            text-align: center;
        }
        .box {
            background-color: #f2f2f2;
            padding: 15px;
            margin-bottom: 10px;
            font-size: 20px;
            font-weight: bold;
        }
        .message {
            background-color: #a5d6a7;
            color: #000;
            padding: 15px;
            margin-bottom: 10px;
        }
        .login-link {
            font-size: 16px;
        }
        footer {
            background-color: #eeeeee;
            padding: 20px;
            text-align: center;
            margin-top: 50px;
            font-size: 14px;
        }
        .number {
            color: red;
            font-weight: bold;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <header>
        <h1>得点管理システム</h1>
    </header>

    <div class="container">
        <div class="box"><span class="number"></span>ログアウト</div>
        <div class="message"><span class="number"></span>ログアウトしました</div>
        <div class="login-link"><span class="number"></span><a href="login.jsp">ログイン</a></div>
    </div>

    <footer>
        &copy; 2023 TIC<br>
        大原学園
    </footer>
</body>
</html>