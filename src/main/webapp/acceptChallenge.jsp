<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Accepted challenge</title>
</head>
<body>
<p>Ты принял вызов<br><b>Поднимаешся на мостик к капитану?</b></p>
<br/>
<form>
    <input type="radio" id="option1" name="option" value="option1">
    <label for="option1">Подняться на мостик</label><br>
    <input type="radio" id="option2" name="option" value="option2">
    <label for="option2">Отказаться подниматься на мостик</label><br>
    <button type="button" onclick="confirmChoice()">Ответить</button>
</form>
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

    function confirmChoice() {
        var selectedOption = document.querySelector('input[name="option"]:checked');
        if (selectedOption) {
            var selectedValue = selectedOption.value;
            switch (selectedValue) {
                case "option1":
                    window.location.href = "goUpOnBridge.jsp";
                    break;
                case "option2":
                    window.location.href = "denyGoingOnBridge.jsp";
                    break;
                default:
                    alert("Please select an option.");
            }
        } else {
            alert("Please select an option.");
        }
    }
</script>
</body>
</html>