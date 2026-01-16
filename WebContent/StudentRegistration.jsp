<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
    String 入学年度 = request.getParameter("year");
    String 学生番号 = request.getParameter("studentId");
    String 氏名 = request.getParameter("name");
    String クラス = request.getParameter("class");

    boolean hasError = false;
    String 年度エラー = "";
    String 番号エラー = "";
    String 氏名エラー = "";

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        if (入学年度 == null || 入学年度.isEmpty()) {
            年度エラー = "入学年度を選択してください";
            hasError = true;
        }

        if (学生番号 == null || 学生番号.isEmpty()) {
            番号エラー = "❗このフィールドを入力してください。";
            hasError = true;
        } else {
            List<String> 既存番号 = Arrays.asList("20230001", "20230002");
            if (既存番号.contains(学生番号)) {
                番号エラー = "学生番号が重複しています。";
                hasError = true;
            }
        }

        if (氏名 == null || 氏名.isEmpty()) {
            氏名エラー = "❗このフィールドを入力してください。";
            hasError = true;
        }

        if (!hasError) {
            response.sendRedirect("test.jsp");
        }
    }

    List<String> 年度一覧 = new ArrayList<>();
    for (int y = 2020; y <= 2025; y++) {
        年度一覧.add(String.valueOf(y));
    }

    List<String> クラス一覧 = Arrays.asList("101", "102", "103", "201", "202", "203", "301", "302", "303");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生情報登録</title>
<style>
        body {
            font-family: sans-serif;
        }
        .container {
            max-width: 600px;
            margin: auto;
            padding: 2rem;
        }
        label {
            display: block;
            margin-top: 1rem;
        }
        select, input[type="text"] {
            width: 100%;
            padding: 0.5rem;
            margin-top: 0.5rem;
        }
        .error {
            color: red;
            font-size: 0.9rem;
            margin-top: 0.3rem;
        }
        .submit-btn {
            background-color: gray;
            color: white;
            padding: 0.6rem 1.2rem;
            border: none;
            margin-top: 1.5rem;
            cursor: pointer;
        }
        .superlink {
            display: inline-block;
            margin-top: 1rem;
            color: blue;
            text-decoration: underline;
        }
</style>
</head>
<body>
<!-- ヘッダー -->
<div style="background-color:#f5f5f5; padding: 1rem;">
<div style="display: flex; justify-content: space-between; align-items: center;">
<h1 style="margin: 0 auto; text-align: center; flex-grow: 1;">得点管理システム</h1>
<div style="text-align: right; white-space: nowrap;">テスト様 <a href="logout.jsp">ログアウト</a></div>
</div>
</div>


<div style="display: flex; height: 100vh; font-family: sans-serif;">

    <!-- サイドメニュー（flex:3） -->
<nav style="flex: 3; padding: 1.5rem;">
<ul style="list-style: none; padding: 0; margin: 0;">
<li style="margin-bottom: 1rem;"><a href="Student_List.jsp">学生管理</a></li>

            <li>成績管理</li>
<li style="margin-left: 1.5rem; margin-top: 0.5rem;"><a href="#">成績登録</a></li>
<li style="margin-bottom: 1rem;"></li>

            <li style="margin-left: 1.5rem;"><a href="#">成績参照</a></li>
<li style="margin-bottom: 1rem;"></li>

            <li><a href="#">科目管理</a></li>
</ul>
</nav>


    <!-- 境界線 -->
<div style="width: 1px; background-color: #ccc;"></div>

    <!-- メインコンテンツ（flex:7） -->
<main style="flex: 7; padding: 2rem;">
<!-- グレー背景のヘッダー部 -->
<div style="background-color: #f5f5f5; padding: 1rem; margin-bottom: 1.5rem;">
<h2 style="margin: 0;">学生情報登録</h2>
</div>

<form method="post" action="StudentRegistration.jsp">
<!-- 入学年度 -->
<label for="year">入学年度</label>
<select name="year" id="year">
<option value="">----------</option>
<%
                            for (String y : 年度一覧) {
                                String selected = y.equals(入学年度) ? "selected" : "";
                        %>
<option value="<%= y %>" <%= selected %>><%= y %></option>
<% } %>
</select>
<div class="error"><%= 年度エラー %></div>

                    <!-- 学生番号 -->
<label for="studentId">学生番号</label>
<input type="text" name="studentId" id="studentId" value="<%= 学生番号 != null ? 学生番号 : "" %>">
<div class="error"><%= 番号エラー %></div>

                    <!-- 氏名 -->
<label for="name">氏名</label>
<input type="text" name="name" id="name" value="<%= 氏名 != null ? 氏名 : "" %>">
<div class="error"><%= 氏名エラー %></div>

                    <!-- クラス -->
<label for="class">クラス</label>
<select name="class" id="class">
<%
                            for (String cls : クラス一覧) {
                                String selected = cls.equals(クラス) ? "selected" : "";
                        %>
<option value="<%= cls %>" <%= selected %>><%= cls %></option>
<% } %>
</select>

                    <!-- 登録ボタン -->
<button type="submit" class="submit-btn"><div><a href="TestList.jsp"></a></div>登録して終了</button>

                    <!-- 戻るリンク -->
<div>
<a class="superlink" href="menu.jsp">戻る</a>
</div>
</form>
</div>
</main>
</div>



</body>
</html>