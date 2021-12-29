<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>学生信息管理系统</title>
    <style>
      body {
        /*让背景图片拉伸且占据整个屏幕*/
        background-image: url("WEB-INF/img/2.png");
        background-size: 100%;
        background-repeat: no-repeat;
      }
        body {
            /*让背景图片拉伸且占据整个屏幕*/
            background-image: url("img/1.jpeg");
            background-size: 100%;
            background-repeat: no-repeat;
        }
      .myButton {
        box-shadow:inset 0px -3px 7px 0px #29bbff;
        background:linear-gradient(to bottom, #2dabf9 5%, #0688fa 100%);
        background-color:#2dabf9;
        border-radius:22px;
        border:4px solid #0b0e07;
        display:inline-block;
        cursor:pointer;
        color:#ffffff;
        font-family:Arial;
        font-size:15px;
        padding:12px 40px;
        text-decoration:none;
        text-shadow:-2px -1px 0px #263666;
        margin-left: 40%;
        margin-top: 5%;
      }
      .myButton:hover {
        background:linear-gradient(to bottom, #0688fa 5%, #2dabf9 100%);
        background-color:#0688fa;
      }
      .myButton:active {
        position:relative;
        top:1px;
      }
      h1{
        margin-left:40%;
        margin-top: 8%;
      }
    </style>
</head>
<body>

  <h1>学生信息管理系统</h1>
  <br>
  <button class="myButton" onclick="window.location.href='BkController'">跳转到学生信息显示页面</button>

</body>
</html>
