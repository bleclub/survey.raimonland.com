<?php
	if (isset($_SESSION[_ss . 'msg_result'])) {
    $msg_result = $_SESSION[_ss . 'msg_result'];
    unset($_SESSION[_ss . 'msg_result']);
	} else {
		$msg_result = false;
	}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link href="<?php echo $baseUrl.'/assets/css/bootstrap.min.css'; ?>" rel="stylesheet">   
    <style>
        /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
        @import url(https://fonts.googleapis.com/css?family=Open+Sans);
        .btn {
          display: inline-block;
          *display: inline;
          *zoom: 1;
          padding: 4px 10px 4px;
          margin-bottom: 0;
          font-size: 13px;
          line-height: 18px;
          color: #333333;
          text-align: center;
          text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
          vertical-align: middle;
          background-color: #f5f5f5;
          background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
          background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6);
          background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6));
          background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
          background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
          background-image: linear-gradient(top, #ffffff, #e6e6e6);
          background-repeat: repeat-x;
          filter: progid: dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0);
          border-color: #e6e6e6 #e6e6e6 #e6e6e6;
          border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
          border: 1px solid #e6e6e6;
          -webkit-border-radius: 4px;
          -moz-border-radius: 4px;
          border-radius: 4px;
          -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
          -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
          box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
          cursor: pointer;
          *margin-left: .3em;
      }
      .btn:hover,
      .btn:active,
      .btn.active,
      .btn.disabled,
      .btn[disabled] {
          background-color: #e6e6e6;
      }
      .btn-large {
          padding: 9px 14px;
          font-size: 15px;
          line-height: normal;
          -webkit-border-radius: 5px;
          -moz-border-radius: 5px;
          border-radius: 5px;
      }
      .btn:hover {
          color: #333333;
          text-decoration: none;
          background-color: #e6e6e6;
          background-position: 0 -15px;
          -webkit-transition: background-position 0.1s linear;
          -moz-transition: background-position 0.1s linear;
          -ms-transition: background-position 0.1s linear;
          -o-transition: background-position 0.1s linear;
          transition: background-position 0.1s linear;
      }
      .btn-primary,
      .btn-primary:hover {
          text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
          color: #ffffff;
      }
      .btn-primary.active {
          color: rgba(255, 255, 255, 0.75);
      }
      .btn-primary {
          background: #0e8ce4 none repeat scroll 0 0;
          border: 0 none;
          text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.4);
          box-shadow: none;
      }
      .btn-primary:hover,
      .btn-primary:active,
      .btn-primary.active,
      .btn-primary.disabled,
      .btn-primary[disabled] {
          filter: none;
          background-color: #0e8ce4;
      }
      .btn-block {
          width: 100%;
          display: block;
      }
      * {
          -webkit-box-sizing: border-box;
          -moz-box-sizing: border-box;
          -ms-box-sizing: border-box;
          -o-box-sizing: border-box;
          box-sizing: border-box;
      }
      html {
          width: 100%;
          height: 100%;
          overflow: hidden;
      }
  
          body { 
              width: 100%;
              height:100%;
              font-family: 'Open Sans', sans-serif;
              background-image:url(<?php echo $baseUrl.'/assets/img/bg_login.jpg'; ?>);
              background-size:cover;
              background-position:center;
          }
          .overlay{
              background-color:rgba(0,0,0,0.4);
              width:100%;
              height: 100%;
          }
          .login { 
              position: absolute;
              top: 50%;
              left: 50%;
              margin: -150px 0 0 -150px;
              width:300px;
              height:300px;
          }
          .login h1 { color: #fff; text-shadow: 0 0 10px rgba(0,0,0,0.3); letter-spacing:1px; text-align:center; }
  
          input { 
              width: 100%; 
              margin-bottom: 10px; 
              background: rgba(0,0,0,0.3);
              border: none;
              outline: none;
              padding: 10px;
              font-size: 13px;
              color: #fff;
              text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
              border: 1px solid rgba(0,0,0,0.3);
              border-radius: 4px;
              box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
              -webkit-transition: box-shadow .5s ease;
              -moz-transition: box-shadow .5s ease;
              -o-transition: box-shadow .5s ease;
              -ms-transition: box-shadow .5s ease;
              transition: box-shadow .5s ease;
          }
          input:focus { box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2); }
  
          .copyright {
              bottom: 50px;
              color: #ffffff;
              font-size: 10px;
              left: 0;
              letter-spacing: 0.8px;
              position: absolute;
              text-align: center;
              text-transform: uppercase;
              width: 100%;
          }
          .animated {
                -webkit-animation-duration: 1s;
                animation-duration: 1s;
                -webkit-animation-fill-mode: both;
                animation-fill-mode: both;
              }
              
              @-webkit-keyframes fadeInUp {
                0% {
                  opacity: 0;
                  -webkit-transform: translateY(20px);
                  transform: translateY(20px);
                }
              
                100% {
                  opacity: 1;
                  -webkit-transform: translateY(0);
                  transform: translateY(0);
                }
              }
              
              @keyframes fadeInUp {
                0% {
                  opacity: 0;
                  -webkit-transform: translateY(20px);
                  -ms-transform: translateY(20px);
                  transform: translateY(20px);
                }
              
                100% {
                  opacity: 1;
                  -webkit-transform: translateY(0);
                  -ms-transform: translateY(0);
                  transform: translateY(0);
                }
              }
              
              .fadeInUp {
                -webkit-animation-name: fadeInUp;
                animation-name: fadeInUp;
              }
              
              .alert {
                  border: 0 none;
                  border-radius: 4px;
                  margin-bottom: 20px;
                  padding: 15px;
                  text-align: center;
              }
  
              .logo{
                  width: 120px;
              }

                .invalid-feedback {
                    display: none;
                    width: 100%;
                    margin: 0 0 8px;
                    font-size: 80%;
                    color: #f44336;
                }
                .was-validated .f-control:invalid ~ .invalid-feedback{
                    display: block;
                }
                .was-validated .f-control:invalid {
                    border-color: #f44336;
                }
  
      </style>
  
  
      <!-- Favicon -->
      <link rel="icon" href="<?php echo $baseUrl.'/assets/img/favicon.png'; ?>" type="image/x-icon">
      <link rel="mask-icon" href="<?php echo $baseUrl.'/assets/img/favicon.png'; ?>" color="#ffffff">
      <title>Login - Raimon Land eSurvey</title>
</head>
<body>
        <div class="login">
             <h1>Login</h1>
            <?php if ($msg_result == true) { ?>
                  <div id="output" class="alert alert-danger animated fadeInUp">Username or Password is incorrect!</div>
            <?php } ?>
            <form method="POST" action="<?php echo $baseUrl; ?>/back/user/form_login/1" class="login-form" id="needs-validation" novalidate enctype="multipart/form-data">
                    
                    <input type="text" name="username" value="" placeholder="Username" class="f-control" required="required">
                    <div class="invalid-feedback">Please enter your correct username.</div>
                    <input type="password" name="password" value="" placeholder="Password" class="f-control" required="required">
                    <div class="invalid-feedback">Please enter your correct password.</div>
                    <button type="submit" class="btn btn-primary btn-block btn-large">Let me in.</button>
                    <script>!function () { "use strict"; window.addEventListener("load", function () { var e = document.getElementById("needs-validation"); e.addEventListener("submit", function (t) { !1 === e.checkValidity() && (t.preventDefault(), t.stopPropagation()), e.classList.add("was-validated") }, !1) }, !1) }()</script>
            </form>
        </div>
        <div class="container">   
            <div class="copyright text-center">© Copyright <?php echo date('Y'); ?> Raimon Land Plc., All rights reserved</div> 
        </div>
        <div class="overlay"></div>

        <script src="<?php echo $baseUrl.'/assets/js/jquery.min.js'; ?>"></script>
        <script src="<?php echo $baseUrl.'/assets/js/bootstrap.min.js'; ?>"></script>
    </body>
</html>
