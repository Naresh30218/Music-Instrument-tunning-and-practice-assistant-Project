<%--
  Created by IntelliJ IDEA.
  User: FX566LI
  Date: 2/5/2023
  Time: 9:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title> Login </title>

    <link rel="stylesheet" type="text/css" href="css/login2.css">
    <link rel="stylesheet" type="text/css" href="css/login1.css">

    <script>
        function validatef(){
            var uname = document.logform.username.value;
            var upass = document.logform.pass.value;
            var unameRegex = /^[a-zA-Z\-]+$/;
            var validUsername = uname.match(unameRegex);
            if (uname==null || uname== ""){
                alert("Username can't be blank.");
                document.logform.username.focus();
                return false;
            }
            else if (validUsername == null){
                alert("Username is not valid only characters are allowed.");
                document.logform.username.focus();
                return false;
            }
            else if (upass==null || upass==""){
                alert("Password can't be blank.");
                document.logform.pass.focus();
                return false;
            }
            else if (upass.length<6){
                alert("Password must be at least 6 characters long");
                document.logform.pass.focus();
                return false;
            }
        }
    </script>

</head>
<body>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-pic js-tilt" data-tilt>
                <img src="images/img-01.png" alt="IMG">
            </div>

            <form class="login100-form validate-form" action="Login" method="post" name="logform" >

					<span class="login100-form-title">
						Member Login
					</span>

                <div class="wrap-input100 validate-input" >
                    <input class="input100" type="text" name="username" placeholder="Username">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
                </div>

                <div class="wrap-input100 validate-input" data-validate = "Password is required">
                    <input class="input100" type="password" name="pass" placeholder="Password">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                </div>

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn" onclick="return validatef()">
                        Login
                    </button>
                </div>

                <div class="errorm">
                    <%Object msg = request.getAttribute("errorMessage");
                    if (msg != null){ %>
                    <span id="emsg"><%=msg%></span>
                    <%}%>
                </div>

                <div class="text-center p-t-136">
                    <a class="txt2" href="reg.jsp">
                        Create your Account
                        <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>






</body>
</html>
