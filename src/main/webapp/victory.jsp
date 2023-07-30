<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Victory</title>
</head>
<body>
<p>Тебя вернули домой<br><b>Победа</b></p>
<img src="https://cdn.dribbble.com/users/6212/screenshots/3868985/flag_dr.gif">

<br/><br/><br/><br/><br/>
<p>
    Статистика:<br/>
    Имя в игре: <span id="nameOutput"></span><br/>
    Количество игр: <span id="NumberOfGames"></span><br/>
</p>

<script>
    var savedName = localStorage.getItem("name");
    document.getElementById("nameOutput").textContent = savedName;

    var numberOfGames = localStorage.getItem("numberOfGames");
    document.getElementById("NumberOfGames").textContent = numberOfGames;
</script>
</body>
</html>