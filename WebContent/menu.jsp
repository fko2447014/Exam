<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>得点管理システム</title>
    <style>
        .menu-box {
            display: inline-block;
            width: 180px;
            height: 120px;
            margin: 20px;
            text-align: center;
            padding: 10px;
            font-size: 16px;
            border-radius: 10px;
            box-shadow: 3px 3px 5px #ccc;
        }
        .box1 { background-color: #eaa; }
        .box2 { background-color: #aea; }
        .box3 { background-color: #aaf; }
        a { text-decoration: none; color: blue; }
    </style>
</head>
<body>
    <h2>得点管理システム</h2>
    <div>大原 太郎様　<a href="logout.jsp">ログアウト</a></div>

    <div style="margin-top:20px;">
        <h3>メニュー</h3>
        <div class="menu-box box1">
            <a href="student_list.jsp">② 学生管理</a>
        </div>
        <div class="menu-box box2">
            <div><a href="test_list_student.jsp">③ 成績管理</a></div>
            <div><a href="StudentRegistration.jsp">④ 成績登録</a></div>
            <div><a href="TestList.jsp">⑤ 成績参照</a></div>
        </div>
        <div class="menu-box box3">
            <a href=".jsp">⑥ 科目管理</a>
        </div>
    </div>

    <footer>
        <hr/>
        <p>&copy; 2023 TIC<br/>太原学園</p>
    </footer>
</body>
</html>