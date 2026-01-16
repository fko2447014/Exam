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
    <nav style="flex: 3; padding: 1.5rem;">
<ul style="list-style: none; padding: 0; margin: 0;">
<li style="margin-bottom: 1rem;"><a href="#">学生管理</a></li>

            <li>成績管理</li>
<li style="margin-left: 1.5rem; margin-top: 0.5rem;"><a href="#">成績登録</a></li>
<li style="margin-bottom: 1rem;"></li>

            <li style="margin-left: 1.5rem;"><a href="#">成績参照</a></li>
<li style="margin-bottom: 1rem;"></li>

            <li><a href="#">科目管理</a></li>
</ul>
</nav>
</head>
<body>
    <div class="container">
        <h2>学生情報削除</h2>
        <p>
            「${subject.name}（${subject.code}）」を削除してもよろしいですか？
        </p>
        <form action="SubjectDelete.action" method="post">
            <input type="hidden" name="code" value="${subject.code}" />
            <input type="submit" value="削除" class="button" />
        </form>
        <a href="Student_list" class="link">戻る</a>
    </div>
</body>

</html>
<div style="background-color: #f0f0f0; padding: 10px; text-align: center; margin-top: 30px;">
    &copy; 2023 TIC<br>大原学園
</div>