<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Пролог</title>
</head>
<body>
<p>
<h1><b>Пролог</b></h1>
Ты стоиш в космическом порту и готов подняться на борт<br>
свого корабля. Разве ты не об этом мечтал? Стать капитаном<br>
галактического судна с экипажем, который будет совершать<br>
подвиги под твоим командованием.<br>
Так что вперед!<br><br></p>
<p>
<h1><b>Знакомство с экипажем</b></h1>
Когда ты поднялся на борт корабля, тебя поприветствувала девушка с черной папкой в руках:<br>
- Здравствуйте, командир! Я Зинаида - ваша помошница. Видите? Там в углу пъет кофе<br>
наш штурман - суржант Перегарный Шлейф, под штурвалом спит наш бортмеханик - Чорный Богдан,<br>
а фотографирует его Сергей Стальная Пятка - наш навигатор.<br>
А как обращаться к Вам?
</p><br>

<br/>
<form>
    <input type="text" id="nameInput">
    <button type="button" onclick="saveName()">Представиться</button>
</form>

<script>
    function saveName() {
        var name = document.getElementById("nameInput").value;
        localStorage.setItem("name", name);
        localStorage.setItem("numberOfGames", "1");
        window.location.href = "beginning.jsp";
    }
</script>
</body>
</html>