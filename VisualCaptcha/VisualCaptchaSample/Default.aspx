﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VisualCaptchaSample.Default" %>
<!DOCTYPE html>
<html>
<head>
    <title>visualCaptcha ASP.NET and jQuery Demo - The best captcha alternative</title>
    <meta charset="utf-8">
    <meta name="keywords" content="visualcaptcha, captcha, asp.net, mvc, .net, jQuery, turing test, mobile-friendly, accessible, accessibility, retina-friendly, better captcha, fancy captcha, captcha alternative, demo">
    <meta name="description" content="A cool visual captcha jQuery plugin. Mobile-friendly. Retina-ready. Accessible.">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- favicon.ico and apple-touch-icon.png  -->
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="../../img/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="57x57" href="../../img/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="../../img/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="../../img/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="../../img/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="../../img/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="../../img/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="../../img/apple-touch-icon-152x152.png" />

    <!-- CSS -->
    <link href="../../css/demo.css" media="all" rel="stylesheet">
    <link href="/css/visualcaptcha.css" rel="stylesheet" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="wrap">
        <a href="/" target="_blank" class="logo"><img src="../../img/logo.png" alt="visualCaptcha"></a>
        <div class="pre-captcha-wrapper">
            <div class="captcha-wrapper">
                <h1>Fill in the form and submit it</h1>
                <form id="form-sample" class="frm-sample" onsubmit="return false;">
                    <input type="text" class="form-control" placeholder="Name">
                    <div id="status-message" class="hidden">
                        <div id="status" class="status">
                            <div id="status-icon"></div>
                            <p id="status-text"></p>
                        </div>
                    </div>
                    <div id="sample-captcha"></div>
                    <a id="check-is-filled" class='info-btn'>Check if visualCaptcha is filled</a>
                    <button type="submit" name="submit-bt" class="submit">Submit form</button>
                </form>
            </div>
        </div>
        <div class="links">
            <p class="txt-center">
                <a href="/" target="_blank"><b>visualCaptcha</b></a> by <a href="http://emotionloop.com/" target="_blank"><b>emotionLoop</b></a>
                <br />
                View other demos:
                <br />
                <a href="http://demo.visualcaptcha.net/"><strong>PHP</strong></a> |
                <a href="http://ruby.demo.visualcaptcha.net/"><strong>Ruby</strong></a> |
                <a href="http://meteor.demo.visualcaptcha.net/"><strong>Meteor</strong></a> |
                <a href="http://multiple.demo.visualcaptcha.net/"><strong>Multiple</strong></a>
                <br />
                You can get it at <a href="https://github.com/emotionLoop/visualCaptcha" target="_blank"><b>GitHub</b></a>
            </p>
        </div>
    </div>
    
    <script src="http://emotionloop.github.io/visualCaptcha-frontend-core/libs/jquery/jquery.min.js"></script>
    <script src="http://emotionloop.github.io/visualCaptcha-frontend-core/dist/visualcaptcha.jquery.js"></script>
    <script src="../../js/main.js"></script>
</body>
</html>