<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>On the bridge</title>
</head>
<body>
<p>Ты поднялся на мостик<br><b>Ты кто?</b></p><br>

<form>
    <input type="radio" id="option1" name="option" value="option1">
    <label for="option1">Рассказать правду</label><br>
    <input type="radio" id="option2" name="option" value="option2">
    <label for="option2">Солгать о себе</label><br>
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
                    window.location.href = "victory.jsp";
                    break;
                case "option2":
                    window.location.href = "lie.jsp";
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