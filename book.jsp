<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书管理页面</title>

    <style>
        body {
            /*让背景图片拉伸且占据整个屏幕*/
            background-image: url("img/1.jpeg");
            background-size: 100%;
            background-repeat: no-repeat;
        }
        td, th {
            /* white-space: nowrap; 文本不换行显示 */
            white-space: nowrap;
            width: 70px;
            height: 35px;
            /*text-align: center;文本居中显示*/
            text-align: center;
            padding: 4px 8px;
        }

        .search{
            outline-style: none ;
                margin-left: 440px;
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
<body  >

<div class="div_middle1">
    <%-- style="text-align: center; 使form表单居中显示 --%>
    <form action="/BkController" class="text_center" style="margin-top: 10px">
        <input class="search" id="name" name="name" placeholder="按书名查询">
        <input class="fun" type="submit" value="查询">
        <input class="fun" type="button" value="增加图书" onclick="window.location.href='addBook.jsp'">
    </form>
    <table border="2" cellspacing="0" align="center">
        <tr>
            <th>书号 </th>
            <th>书名</th>
            <th>出版社</th>
            <th>作者</th>
            <%--  colspan属性用于将指定的横向单元格合并  --%>
            <th colspan="2">操作</th>
        </tr>
        <c:forEach items="${sessionScope.lb}" var="b">

        <tr id="${b.id}">
                <td>${b.id}</td>
                <td>${b.name}</td>
                <td>${b.fromPlace}</td>
                <td>${b.author}</td>
                <td>
                    <a href="updateBook.jsp?id=${b.id}&name=${b.name}&fromPlace=${b.fromPlace}&author=${b.author}"
                       style="text-decoration: none;color: blue">修改</a>
                </td>
                <td>
                    <a href="/BkController?id=${b.id}&temp=delete" style="text-decoration: none;color:orangered">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
