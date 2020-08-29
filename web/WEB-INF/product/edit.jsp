
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
    <title>Update product</title>
</head>
<body>
<h1>Edit product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"> </td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"> </td>
            </tr>
            <tr>
                <td>Desc: </td>
                <td><input type="text" name="desc" id="desc" value="${requestScope["product"].getDescript()}"> </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update product"> </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
