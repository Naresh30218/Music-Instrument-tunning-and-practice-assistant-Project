<%--
  Created by IntelliJ IDEA.
  User: FX566LI
  Date: 3/13/2023
  Time: 5:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quiz</title>
    <link rel="stylesheet" href="css/quiz.css" />
</head>
<body>
<div class="heading">
    <h1>Be Ready for Quiz</h1>
</div>
<div class="qestions">
    <span id="ques">Q. </span>
</div>
<div class="options">
    <input type="radio" id="optionA" name="options" value="optionA">
    <label for="optionA">OptionA</label><br>
    <input type="radio" id="optionb" name="options" value="optionB">
    <label for="optionB">OptionB</label><br>
    <input type="radio" id="optionC" name="options" value="optionC">
    <label for="optionC">OptionC</label><br>
    <input type="radio" id="optionD" name="options" value="optionD">
    <label for="optionD">OptionD</label>
</div>
<div class="btns">
    <button class="backbtn" name="backb">
        Back
    </button>
    <button class="nextbtn" name="nextb">
        Next
    </button>
    <button class="submitbtn" name="submitb">
        Submit
    </button>

</div>
</body>
</html>
