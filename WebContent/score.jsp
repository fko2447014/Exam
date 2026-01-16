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
      margin-bottom: 20px;
    }

    form {
      background-color: #f3f3f3;
      padding: 15px;
      border-radius: 8px;
      margin-bottom: 20px;
    }

    label, select, input[type="number"] {
      margin-right: 10px;
      margin-bottom: 10px;
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

    input[type="number"] {
      width: 80px;
    }

    .error {
      color: orange;
      font-size: 0.9em;
    }

    button {
      margin-top: 15px;
      padding: 8px 16px;
      font-size: 1em;
    }

    .topbar {
      text-align: right;
      margin-bottom: 10px;
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

  <!-- メインコンテンツ -->
  <div class="main">
    <div class="topbar">
      テスト様 <a href="logout.action">ログアウト</a>
    </div>

    <h2>得点管理システム</h2>

    <form action="TestRegistExecute.action" method="post">
      <label>入学年度</label>
      <select name="entYear">
        <option value="2023">2023</option>
      </select>

      <label>クラス</label>
      <select name="classNum">
        <option value="131">131</option>
      </select>

      <label>科目</label>
      <select name="subject">
        <option value="Python1">Python1</option>
      </select>

      <label>回数</label>
      <select name="times">
        <option value="1">1</option>
      </select>

      <button type="submit">検索</button>
    </form>

    <p>科目：Python1（1回）</p>

    <form action="TestRegistExecute.action" method="post">
      <table>
        <thead>
        <tr>
          <th>入学年度</th>
          <th>クラス</th>
          <th>学生番号</th>
          <th>氏名</th>
          <th>点数</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="student" items="${studentList}" varStatus="status">
          <tr>
            <td>${student.entYear}</td>
            <td>${student.classNum}</td>
            <td>${student.studentNo}</td>
            <td>${student.name}</td>
            <td>
              <input type="number" name="scores[${status.index}]" value="${student.score}" min="0" max="100" />
              <c:if test="${student.score < 0 || student.score > 100}">
                <div class="error">0～100の範囲で入力してください</div>
              </c:if>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
      <button type="submit">登録して終了</button>
    </form>
  </div>
</div>
</body>
</html>