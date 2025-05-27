<%@ page contentType="text/html; charset=UTF-8" %>


<div style="background-color: #e0f0ff; padding: 10px; border-bottom: 1px solid #ccc;">
    <h1>得点管理システム</h1>
    <div style="text-align: right;">
        大原 太郎様 | <a href="logout.action">ログアウト</a>
    </div>
</div><html>
<head>
    <title>科目情報削除 | 得点管理システム</title>
    <style>
        body { font-family: 'Meiryo', sans-serif; margin: 20px; }
        .container { width: 60%; margin: auto; }
        h2 { border-bottom: 2px solid #ccc; padding-bottom: 5px; }
        .button { background-color: red; color: white; padding: 8px 16px; border: none; border-radius: 5px; }
        .link { margin-top: 15px; display: block; }
    </style>
</head>
<body>
    <div class="container">
        <h2>科目情報削除</h2>
        <p>
            「${subject.name}（${subject.code}）」を削除してもよろしいですか？
        </p>
        <form action="SubjectDelete.action" method="post">
            <input type="hidden" name="code" value="${subject.code}" />
            <input type="submit" value="削除" class="button" />
        </form>
        <a href="SubjectList.action" class="link">戻る</a>
    </div>
</body>
</html>
<div style="background-color: #f0f0f0; padding: 10px; text-align: center; margin-top: 30px;">
    &copy; 2023 TIC<br>大原学園
</div>