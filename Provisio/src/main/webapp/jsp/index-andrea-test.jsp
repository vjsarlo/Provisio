<%@ page language="java" contentType="text/html; "
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/Provisio/css/homepre.css" type="text/css">
    <title>Load Up Page</title>
</head>

<body style="background-color: #d9d9d9;">
  <!-- CONTAINER DIV START -->
  <div class="container">
    <!-- HEADER (Pre-Login) START -->
    <!-- MAIN HEADER START -->
    <%@include file="header_pre.jsp"%>
    
    <!-- MAIN PHOTO START -->
    <div class="main-photo-div">
      <img
        class="main-photo"
        src="/Provisio/images/Photos/MainPhoto.jpeg"
      />
    </div>
    <!-- MAIN PHOTO END -->

    <!-- MAIN SECTION START -->
    <div class="main-section-div">      
      <div class="main-section-text">
        Pack Your Luggage, Not Your Worries. We'll Handle Everything You Need!
      </div>
      <div class="main-section-login-button-div">
        <a class="login-button-main login-button-style" href="./PreLogin/loginpage.html">Login</a>
      </div>
    </div>
    <!-- MAIN SECTION END-->

    <!-- MAIN CONTENT START -->

    <!-- MAIN CONTENT END -->

    <%@include file="footer_pre.jsp"%>

  </div>
  <!-- CONTAINER DIV END -->
</body>
</html>