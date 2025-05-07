<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>得点管理システム</title>
</head>
<body>
    <h2>得点管理システム</h2>
    <%
        String userid = request.getParameter("userid");
        String password = request.getParameter("password");
        boolean loginTried = (userid != null && password != null);
        boolean loginSuccess = false;

        if (loginTried) {
            // 仮のログイン認証
            if (userid.equals("admin") && password.equals("password123")) {
                loginSuccess = true;
                // ログイン成功 → home.jsp にリダイレクト（コメントなしで）
                response.sendRedirect("home.jsp");
                return;
            }
        }
    %>

    <% if (!loginSuccess) { %>
        <% if (loginTried) { %>
            <p style="color:red;">IDまたはパスワードが間違っています。</p>
        <% } %>
		<h3>ログイン</h3>
        <form action="login.jsp" method="post">
            <label for="userid"></label>
            <input type="text" id="userid" name="userid" placeholder="ID" required /><br/><br/>

            <label for="password"></label>
            <input type="password" id="password" name="password" placeholder="パスワード" required /><br/><br/>

			<input type="checkbox" onclick="togglePassword()"> パスワードを表示<br/><br/>

            <input type="submit" value="ログイン" />
        </form>
    <% } %>
    <footer>
    <p>© 2023 TIC</p><dl></dl>
    <p>大原学園</p>
    </footer>
</body>
</html>
<p>asdf</p>
