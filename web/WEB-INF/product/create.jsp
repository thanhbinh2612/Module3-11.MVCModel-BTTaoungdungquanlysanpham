<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/29/2020
  Time: 3:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
    <style>
        .message{
            color: green;
        }
    </style>
</head>
<body>
    <h1> Create new product</h1>
    <p>
        <c:if test="${requestScope['message'] != null}">
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <p>
        <a href="/products">Back to product list</a>
    </p>
<form method="post">
    <fieldset>
        <legend>Product infomation</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="text" name="price"></td>
            </tr>
            <tr>
                <td>Desc:</td>
                <td><input type="text" name="desc"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
