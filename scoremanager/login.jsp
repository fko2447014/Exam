<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>ログインページ</title>
</head>
<body>
    <h2>ログイン</h2>

    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean loginTried = (username != null && password != null);
        boolean loginSuccess = false;

        if (loginTried) {
            // ユーザー名とパスワードをここでチェック（仮の認証情報）
            if (username.equals("admin") && password.equals("password123")) {
                loginSuccess = true;
            }
        }
    %>

    <% if (loginTried && loginSuccess) { %>
        <p style="color:green;">ログイン成功！ようこそ、<%= username %> さん。</p>
    <% } else { %>
        <% if (loginTried) { %>
            <p style="color:red;">ユーザー名またはパスワードが間違っています。</p>
        <% } %>

        <form action="login.jsp" method="post">
            <label for="username">ユーザー名：</label>
            <input type="text" id="username" name="username" required /><br/><br/>

            <label for="password">パスワード：</label>
            <input type="password" id="password" name="password" required /><br/><br/>

            <input type="submit" value="ログイン" />
        </form>
    <% } %>
</body>
</html>
