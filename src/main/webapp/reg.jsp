<%--
  Created by IntelliJ IDEA.
  User: FX566LI
  Date: 2/2/2023
  Time: 8:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html >

<head>
    <title>Registration</title>
    <link href="css/regd.css" rel="stylesheet" media="all">
    <script>
        function validatef(){
            var uname = document.regform.name.value;
            var upass = document.regform.password.value;
            var minst = document.regform.mInstrument.value;
            var unameRegex = /^[a-zA-Z\-]+$/;
            var validUsername = uname.match(unameRegex);
            var validInst = minst.match(unameRegex);
            if (uname==null || uname== ""){
                alert("Username can't be blank");
                return false;
            }
            else if (validUsername == null){
                alert("Username is not valid only characters are allowed.");
                document.regform.name.focus();
                return false;
            }
            else if (upass.length<6){
                alert("Password must be at least 6 characters long");
                return false;
            }
            else if (validInst == null){
                alert("Instrument name is not valid only characters are allowed.");
                document.regform.name.focus();
                return false;
            }

        }
    </script>
</head>

<body>

<div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
    <div class="wrapper wrapper--w780">
        <div class="card card-3">
            <div class="card-heading"></div>
            <div class="card-body">
                <h2 class="title">Registration Info</h2>
                <form name="regform" action="Register" method="post" onsubmit="return validatef()">

                    <div class="input-group">
                        <input class="input--style-3" type="text" placeholder="User Name" name="name" >
                    </div>
                    <div class="input-group">
                        <input class="input--style-3 js-datepicker" type="password" placeholder="Password" name="password" required>

                    </div>

                    <div class="input-group">
                        <input class="input--style-3" type="email" placeholder="Email" name="email" required>
                    </div>
                    <div class="input-group">
                        <input class="input--style-3" type="text" placeholder="Music Instrument" name="mInstrument" required>
                    </div>
                    <div class="p-t-10">
                        <button class="btn btn--pill btn--green" type="submit" value="Resgister Now">Submit</button>
                    </div>
                    <br><br>
                    <div class="loglink">
                        <a class="linkt" href="Login.jsp">
                            Login
                        </a>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
</body>

</html>

