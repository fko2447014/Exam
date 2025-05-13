<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../header.html" %>

<div class="menu-container">
<h2>メニュー</h2>
<nav>
<ul class="menu-list">
<li><a href="<c: url value='//'>">学生管理</a></li>
<li><a href="<c: url value='//'>">成績登録</a></li>
<div>成績管理</div>
<li><a href="<c: url value='//'>">成績参照</a></li>
<li><a href="<c: url value='//'>">科目管理</a></li>
</ul>
</nav>

</div>

<%@include file="../footer.html" %>