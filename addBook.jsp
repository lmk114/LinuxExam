<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加学生信息页面</title>
    <style>

        <%--  div块居中显示  --%>
        .divcenter {
            width: 1000px;
            height: 600px;
            /* margin: auto;使div块居中显示 */
            margin: auto;
        }
        body {
            /*让背景图片拉伸且占据整个屏幕*/
            background-image: url("img/1.jpeg");
            background-size: 100%;
            background-repeat: no-repeat;
        }
        input{
            outline-style: none ;

            border: 1px solid #ccc;

            border-radius: 3px;

            padding: 13px 14px;

            width: 420px;

            font-size: 14px;

            font-weight: 700;

            font-family: "Microsoft soft"
        }
        .fun{
            outline-style: none ;

            border: 1px solid #ccc;

            border-radius: 3px;

            padding: 13px 14px;

            width: 120px;

            font-size: 14px;

            font-weight: 700;

            font-family: "Microsoft soft"
        }
    </style>
</head>
<body>
<div class="divcenter">
    <div style="height: 10px"></div>
    <%--  使用<form>标签创建表单，在表单中使用<table>标签进行页面布局，使用<input>标签搜集用户输入的数据  --%>
    <form action="/BkController" style="text-align: center;">
        <%-- 表格使用align="center"居中显示 --%>
        <table align="center">
            <tr>
                <td colspan="2" style="text-align: center">
                    <font style="color: red">* 代表必填项</font>
                </td>
            </tr>
            <tr>
                <td>书号：</td>
                <td>
                    <input id="id" name="id" placeholder="请输入书号" required>
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>书名：</td>
                <td><input id="name" name="name" placeholder="请输入书名" required>
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>出版社：</td>
                <td><input id="fromPlace" name="fromPlace" placeholder="请输入出版社" required >
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>作者：</td>
                <td><input id="author" name="author" placeholder="请输入作者" required>
                    <font style="color: red">*</font>
                </td>
            </tr>

        </table>
        <table align="center">
            <tr style="text-align: center">
                <td>
                    <input class="fun"  type="submit" value="增加">
                </td>
                <td>
                    <input  name="temp" value="add" hidden>
                </td>
                <td>
                    <input  class="fun" type="reset" value="重置">
                </td>
                <td>
                    <input class="fun" type="button" value="返回" onclick="window.location.href='/BkController'">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
