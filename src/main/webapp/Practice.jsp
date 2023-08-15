<%--
  Created by IntelliJ IDEA.
  User: FX566LI
  Date: 2/24/2023
  Time: 10:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="myRhythm.Classes.Practice"%>
<html>
<head>
    <title>Practice</title>
    <link rel="stylesheet" href="css/practice.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" rel="stylesheet" />
</head>
<body>
    <div class="bck">
        <button type="submit" onclick="window.location.href='Home.jsp'" id="bckbtn">Back</button>
    </div>
    <div class="Heading">
        <h1>Welcome to the practice room</h1>
    </div>
    <div class="fbox">
    <div class="Trackplayer">
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

    <div class="mic-container">
        <div class="display">
            <h3>Press the start button to start recording</h3>
        </div>
        <div class="controllers">
            <a id="record" class="circle" onclick="record()"><i class="fas fa-microphone"></i></a>


            </i>
        </div>
    </div>
    </div>
    <script src="js/recscript.js"></script>

</body>
</html>
