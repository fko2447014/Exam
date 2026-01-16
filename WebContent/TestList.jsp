<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>得点管理システム</title>
    <style>
        body {
            margin: 0;
            font-family: "メイリオ", sans-serif;
            background-color: #fff;
        }

        .header {
            background-color: #e7edf6;
            padding: 10px 20px;
            font-size: 24px;
            font-weight: bold;
        }

        .top-right {
            position: absolute;
            top: 10px;
            right: 20px;
            font-size: 14px;
        }

        .container {
            display: flex;
        }

        .sidebar {
            width: 200px;
            padding: 20px;
        }

        .sidebar a {
            display: block;
            margin: 10px 0;
            color: #3366cc;
            text-decoration: none;
            font-size: 14px;
        }

        .content {
            flex: 1;
            padding: 20px;
        }

        .box {
            border: 1px solid #ccc;
            padding: 20px;
        }

        .box h3 {
            margin: -20px -20px 20px -20px;
            background-color: #f5f5f5;
            padding: 10px 20px;
            font-size: 18px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            margin-right: 10px;
        }

        select, input[type="text"] {
            padding: 5px;
            margin-right: 10px;
        }

        .search-button {
            background-color: #ccc;
            border: none;
            padding: 5px 15px;
            cursor: pointer;
        }

        .message {
            color: #3366cc;
            font-size: 13px;
            margin-top: 10px;
        }

        footer {
            text-align: center;
            padding: 20px;
            font-size: 12px;
            color: #777;
        }
    </style>
</head>
<body>
    <div class="header">
        得点管理システム
        <div class="top-right">
            大原 太郎様　<a href="#">ログアウト</a>
        </div>
    </div>

    <div class="container">
        <!-- サイドバー -->
        <div class="sidebar">
            <a href="#">学生管理</a>
            <a href="#">成績登録</a>
            <a href="#">成績参照</a>
            <a href="#">科目管理</a>
        </div>

        <!-- メインコンテンツ -->
        <div class="content">
            <div class="box">
                <h3>成績参照</h3>

                <!-- 科目情報 -->
                <div class="form-group">
                    <label>入学年度：</label>
                    <select name="entYear">
                        <option>------</option>
                    </select>

                    <label>クラス：</label>
                    <select name="className">
                        <option>------</option>
                    </select>

                    <label>科目：</label>
                    <select name="subject">
                        <option>------</option>
                    </select>

                    <button class="search-button">検索</button>
                </div>

                <!-- 学生情報 -->
                <div class="form-group">
                    <label>学生番号：</label>
                    <input type="text" placeholder="学生番号を入力してください" />
                    <button class="search-button">検索</button>
                </div>

                <div class="message">
                    科目情報を選択または学生情報を入力して検索ボタンをクリックしてください
                </div>
            </div>
        </div>
    </div>

    <footer>
        © 2023 TIC<br>大原学園
    </footer>
</body>
</html>