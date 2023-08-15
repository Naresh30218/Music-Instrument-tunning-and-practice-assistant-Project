<%--
  Created by IntelliJ IDEA.
  User: FX566LI
  Date: 2/23/2023
  Time: 8:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8" />
  <meta
          name="viewport"
          content="width=device-width,initial-scale=1,user-scalable=no"
  />
  <title>Tuner</title>
  <link rel="stylesheet" href="css/tuner.css" />
</head>
<body>
<canvas class="frequency-bars"></canvas>
<div class="meter">
  <div class="meter-dot"></div>
  <div class="meter-pointer"></div>
</div>
<div class="notes">
  <div class="notes-list"></div>
  <div class="frequency">
    <span>Hz</span>
  </div>
</div>
<div class="bck">
  <button type="submit" onclick="window.location.href='Home.jsp'" id="bckbtn">Back</button>
</div>
<div class="a4">A<sub>4</sub> = <span>440</span> Hz</div>
<label class="auto">
  Auto
  <input type="checkbox" checked />
</label>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="https://cdn.jsdelivr.net/npm/aubiojs@0.1.1/build/aubio.min.js"></script>
<script src="js/tuner.js"></script>
<script src="js/meter.js"></script>
<script src="js/frequency-bars.js"></script>
<script src="js/notes.js"></script>
<script src="js/app.js"></script>
</body>
</html>

