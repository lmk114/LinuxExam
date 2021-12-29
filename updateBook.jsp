<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息修改页面</title>
    <style>
        body {
            /*让背景图片拉伸且占据整个屏幕*/

            background-size: 100%;
            background-repeat: no-repeat;
        }
        .divcenter {
            width: 850px;
            height: 400px;
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
    <form action="/BkController" style="text-align: center">
        <table align="center">
            <tr>
                <td colspan="2" style="text-align: center">
                    <font color="red">*代表必填项</font>
                </td>
            </tr>
            <tr>
                <td>书号：</td>
                <%-- readonly属性规定字段只能读，不能编辑修改--%>
                <td><input id="id" name="id" value="<%=request.getParameter("id")%>" required readonly onclick="alert('学号不可修改')"></td>
            </tr>
            <tr>
                <td>书名：</td>
                <%--  required 属性规定必需在提交表单之前填写输入字段  --%>
                <td><input id="name" name="name" value="<%=request.getParameter("name")%>" required><font
                        color="red">*</font></td>
            </tr>
            <tr>
                <td>出版社：</td>
                <td><input id="fromPlace" name="fromPlace" value="<%=request.getParameter("fromPlace")%>"></td>
            </tr>
            <tr>
                <td>作者：</td>
                <td><input id="author" name="author" value="<%=request.getParameter("author")%>"></td>
            </tr>

        </table>
        <table align="center">
            <tr style="text-align: center">
                <td>
                    <input class="fun" type="submit" value="确认修改">
                </td>
                <td>
                    <input name="temp" value="update" hidden>
                </td>
                <td>
                    <input class="fun" type="button" value="返回" onclick="window.location.href='book.jsp'">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
