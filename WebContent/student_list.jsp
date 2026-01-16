<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>得点管理システム</title>
  <style>
    body {
      font-family: "メイリオ", sans-serif;
      margin: 0;
      background-color: #f5f5f5;
    }

    .wrapper {
      display: flex;
      min-height: 100vh;
    }

    .sidebar {
      width: 200px;
      background-color: #2c3e50;
      color: white;
      padding: 20px;
    }

    .sidebar h2 {
      color: #ecf0f1;
      font-size: 20px;
    }

    .sidebar a {
      display: block;
      color: #ecf0f1;
      text-decoration: none;
      margin: 10px 0;
    }

    .sidebar a:hover {
      text-decoration: underline;
    }

    .main {
      flex: 1;
      padding: 20px;
      background-color: #fff;
    }

    h2 {
      text-align: center;
      color: #333;
    }

    .topbar {
      text-align: right;
      margin-bottom: 10px;
    }

    form {
      background-color: #f9f9f9;
      padding: 15px;
      border-radius: 8px;
      margin-bottom: 20px;
    }

    label, select, input[type="checkbox"], button {
      margin-right: 10px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 10px;
    }

    th, td {
      border: 1px solid #ccc;
      padding: 8px;
      text-align: center;
    }

    th {
      background-color: #e0e0e0;
    }

    tr:nth-child(even) {
      background-color: #f9f9f9;
    }

    a.button-link {
      color: #007BFF;
      text-decoration: none;
      margin-left: 15px;
    }

    a.button-link:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
<div class="wrapper">
  <!-- 左側サイドバー -->
  <div class="sidebar">
    <h2>メニュー</h2>
    <a href="student_list.jsp">学生管理</a>
    <a href="ScoreInput.action">成績登録</a>
    <a href="ScoreView.action">成績参照</a>
    <a href="SubjectManage.action">科目管理</a>
  </div>

  <!-- 右側メインコンテンツ -->
  <div class="main">
    <div class="topbar">
      大原 太郎様 <a href="logout.action">ログアウト</a>
    </div>

    <h2>得点管理システム</h2>
    <h3>学生管理</h3>

    <form action="StudentList.action" method="post">
      <label>入学年度</label>
      <select name="entYear">
        <option value="">------</option>
        <option value="2021">2021</option>
        <option value="2022">2022</option>
      </select>

      <label>クラス</label>
      <select name="classNum">
        <option value="">------</option>
        <option value="201">201</option>
        <option value="202">202</option>
      </select>

      <label>在学中</label>
      <input type="checkbox" name="isEnrolled" value="true" />

      <button type="submit">絞込み</button>
      <a href="StudentRegistration.jsp" class="button-link">新規登録</a>
    </form>

    <div>検索結果：<strong>${count}</strong>件</div>

    <table>
      <thead>
      <tr>
        <th>入学年度</th>
        <th>学生番号</th>
        <th>氏名</th>
        <th>クラス</th>
        <th>在学中</th>
        <th></th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="student" items="${studentList}">
        <tr>
          <td>${student.entYear}</td>
          <td>${student.studentNo}</td>
          <td>${student.name}</td>
          <td>${student.classNum}</td>
          <td>
            <c:choose>
              <c:when test="${student.isEnrolled}">○</c:when>
              <c:otherwise>×</c:otherwise>
            </c:choose>
          </td>
          <td><a href="StudentRegistration.jsp" class="button-link">変更</a>
          <a href="subject_delete.jsp" class="button-link">変更</a>
           </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
</div>
</body>
</html>