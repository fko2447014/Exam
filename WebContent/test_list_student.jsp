<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<title>成績管理システム</title>
<style>
        body { font-family: sans-serif; margin: 0; padding: 0; }
        .container { padding: 20px; }
        .title { background-color: #e0f0ff; padding: 10px; font-size: 24px; }
        .nav { float: left; width: 150px; margin-top: 20px; }
        .nav a { display: block; margin-bottom: 10px; }
        .content { margin-left: 170px; padding: 20px; }
        .search-box { background-color: #f9f9f9; padding: 15px; border-radius: 5px; }
        table { border-collapse: collapse; width: 100%; margin-top: 20px; }
        th, td { border: 1px solid #ccc; padding: 8px; text-align: center; }
        th { background-color: #f0f0f0; }
</style>
</head>
<body>
<div class="title">得点管理システム</div>
<div class="nav">
<a href="#">メニュー</a>
<a href="#">学生管理</a>
<a href="#">成績登録</a>
<a href="#">成績参照</a>
<a href="#">科目管理</a>
</div>

    <div class="content">
<div class="search-box">
<form action="TestList.action" method="get">
<label>科目情報</label>
<select name="f1">
<option value="2021">2021</option>
<!-- 他の年も追加 -->
</select>
<select name="f2">
<option value="201">201</option>
<!-- 他のクラス -->
</select>
<select name="f3">
<option value="E02">情報処理基礎知識Ⅰ</option>
</select>
<input type="text" name="f" placeholder="学生番号を入力してください" />
<button type="submit">検索</button>
</form>
</div>

        <p>科目：情報処理基礎知識Ⅰ</p>

        <table>
<thead>
<tr>
<th>入学年度</th>
<th>クラス</th>
<th>学生番号</th>
<th>氏名</th>
<th>1回</th>
<th>2回</th>
</tr>
</thead>
<tbody>
<c:forEach var="student" items="${studentList}">
<tr>
<td>${student.enrollmentYear}</td>
<td>${student.classCode}</td>
<td>${student.studentId}</td>
<td>${student.name}</td>
<td>${student.score1}</td>
<td>${student.score2}</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>