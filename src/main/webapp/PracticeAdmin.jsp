<%--
  Created by IntelliJ IDEA.
  User: FX566LI
  Date: 3/18/2023
  Time: 4:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Practice</title>
    <link rel="stylesheet" href="css/practice.css" />
    <link rel="stylesheet" href="css/adpractice.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" rel="stylesheet" />
</head>
<body>
<div class="bck">
    <button type="submit" onclick="window.location.href='HomeAdmin.jsp'" id="bckbtn">Back</button>
</div>
<div class="Heading">
    <h1>Welcome to the practice room</h1>
</div>
<div class="center">
<div class="Trackplayera">
    <div class="dinst">
        Select your Musical Instrument
        <select name="inst">
            <option value="Guitar"> Guitar </option>
            <option value="Tabala"> Tabala </option>
            <option value="Tanputa"> Tanpura </option>
        </select>
    </div>
    <br>
    <form method="post" action="Practice">
        <div class="dtrack">
            Select Track
            <select name="track">
                <option>select</option>
                <option value="easy_lifestyle"> easy_lifestyle </option>
                <option value="first_steps"> first_steps </option>
                <option value="just_relax"> just_relax </option>
                <option value="light_wind"> light_wind </option>
                <option value="river_tram"> river_tram </option>
                <option value="small_miracle"> small_miracle </option>
            </select>

        </div>

        <br>

        <div class="play" >
            <button class="playbtn" name="playb">
                Play
            </button>
            <button class="adtbtn" name="adtb">
                Add Track
            </button>
            <button class="dlbtn" name="dlb">
                Delete Track
            </button>
        </div>

        <br>
        <% String userlabel=(String)request.getAttribute("location"); %>
        <div class="auplay">
            <audio controls id="tracka">
                <source src="<%= request.getAttribute("location")%>" type="audio/mpeg" >
            </audio>
        </div>
    </form>
</div>
</div>
</body>
</html>
