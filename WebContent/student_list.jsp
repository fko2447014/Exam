<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>成績管理 - 検索画面</title>
    <style>
        .label-row, .select-row {
            display: flex;
            gap: 20px;
            margin-bottom: 10px;
        }

        .label-row label, .select-row select {
            width: 150px;
            text-align: center;
        }

        .submit-button {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h2>成績管理</h2>

    <form action=".jsp" method="get">

        <div class="label-row">
            <label for="year">入学年度</label>
            <label for="class">クラス</label>
            <label for="subject">科目</label>
            <label for="term">回数</label>
        </div>

        <div class="select-row">
            <select name="year" id="year">
                <option value="2023">2023年</option>
                <option value="2022">2022年</option>
                <option value="2021">2021年</option>
            </select>

            <select name="class" id="class">
                <option value="A">A組</option>
                <option value="B">B組</option>
                <option value="C">C組</option>
            </select>

            <select name="subject" id="subject">
                <option value="math">数学</option>
                <option value="science">理科</option>
                <option value="japanese">国語</option>
            </select>

            <select name="term" id="term">
                <option value="1">第1回</option>
                <option value="2">第2回</option>
                <option value="3">第3回</option>
            </select>
        </div>

        <div class="submit-button">
            <button type="submit">検索</button>
        </div>
    </form>
</body>
</html>
