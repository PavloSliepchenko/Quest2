<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deny going on the bridge</title>
</head>
<body>
<p>Ты не пошел на переговоры<br><b>Поражение</b></p>
<img id="lose" src=""><br>
<script>
    var pictureLink = localStorage.getItem("pictureLink");
    document.getElementById("lose").src = pictureLink;
</script>
<br>
<button type="button" onclick="tryAgain()">Try again</button>
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

    function tryAgain() {
        var numberOfGamesRevised = parseInt(numberOfGames) + 1;
        localStorage.setItem("numberOfGames", numberOfGamesRevised.toString());
        window.location.href = "beginning.jsp";
    }
</script>
</body>
</html>