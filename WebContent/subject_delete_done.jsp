<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>科目情報削除完了</title>
    <style>
        body { font-family: 'Meiryo', sans-serif; }
        .container { width: 80%; margin: auto; }
        .title { font-size: 24px; font-weight: bold; margin-top: 20px; }
        .message { background-color: #a5d6a7; padding: 10px; margin-top: 20px; }
        .menu a { display: block; margin: 5px 0; }
        .link { margin-top: 20px; }
    </style>
</head>
<body>
    <div class="container">
        <div style="background-color: #e3f2fd; padding: 10px;">
            <span style="font-size: 28px;">得点管理システム</span>
            <span style="float:right;">大原 太郎様　<a href="Logout.action">ログアウト</a></span>
        </div>

        <div class="menu" style="float:left; width: 20%;">
            <a href="#">学生管理</a>
            <a href="#">成績管理</a>
            <a href="#">成績登録</a>
            <a href="#">成績参照</a>
            <a href="#">科目管理</a>
        </div>

        <div style="float:left; width: 75%; padding-left: 20px;">
            <div class="title">① 科目情報削除</div>
            <div class="message">② 削除が完了しました</div>
            <div class="link">
                <a href="SubjectList.action">③ 科目一覧</a>
            </div>
        </div>

        <div style="clear:both;"></div>

        <div style="text-align: center; margin-top: 40px; background-color: #eee; padding: 10px;">
            © 2023 TIC<br>大原学園
        </div>
    </div>
</body>
</html>
