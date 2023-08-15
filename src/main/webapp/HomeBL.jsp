<%--
  Created by IntelliJ IDEA.
  User: FX566LI
  Date: 3/15/2023
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <title>Home</title>


  <link rel="stylesheet"  href="css/home1.css" />


  <link href="css/home.css" rel="stylesheet" />

  <link href="css/homer.css" rel="stylesheet" />
</head>

<body>
<div class="hero_area">

  <header class="header_section">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-8">
          <nav class="navbar navbar-expand-lg custom_nav-container ">
            <a class="navbar-brand" href="HomeBL.jsp">
                <span>
                  <img src="images/icons/useric.png">
                </span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <div class="d-flex  flex-column flex-lg-row align-items-center">
                <ul class="navbar-nav  ">
                  <li class="nav-item active">
                    <a class="nav-link" href="Home.jsp">Home <span class="sr-only">(current)</span></a>
                  </li>

                  <li class="nav-item">
                    <a class="nav-link" href="Login.jsp"> Login</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="reg.jsp"> Register </a>
                  </li>
                </ul>
                <form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0" >
                  <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
                </form>
              </div>
            </div>
          </nav>
        </div>
      </div>
    </div>
  </header>

  <section class=" slider_section ">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

      <div class="carousel-inner">
        <div class="carousel-item active">
          <div class="container">
            <div class="row">
              <div class="col-lg-5 col-md-6">
                <div class="slider_detail-box">
                  <h1>
                    Start your journey <br />
                    to be a  <br />
                    Professional Musician
                  </h1>
                  <p>

                  </p>

                </div>
              </div>
              <div class="col-md-6">
                <div class="slider_img-box">
                  <img src="images/homeimg.png" alt="" />
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </section>

</div>

</body>

</html>

