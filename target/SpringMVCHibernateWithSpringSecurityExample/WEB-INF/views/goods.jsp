<%--
  Created by IntelliJ IDEA.
  User: dbrat
  Date: 04.06.2017
  Time: 15:34
  To change this template use File | Settings | File Templates.
  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Title</title>
    <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
    <link rel="stylesheet" type="text/css"
          href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css"/>
</head>
<body>
<td><a href="<c:url value='http://localhost:8081/'/>" class="btn btn-success custom-width" method="GET">BACK</a>
</td>
<div class="generic-container">
    <div class="panel panel-default">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>

            </tr>
            </thead>
            <h2>Redirected Page</h2>
            <tbody>
            <div class="well">
                <a href="<c:url value='/newGoods' />" class="btn btn-success">Add new Good</a>
            </div>
            <c:forEach items="${goods}" var="goods">
                <tr>
                    <td>${goods.id}</td>
                    <td>${goods.name}</td>
                    <td>${goods.description}</td>
                    <td><a href="<c:url value='/delete-good-${goods.id}' />" class="btn btn-success custom-width">edit</a>
                    </td>
                    <td><a href="<c:url value='/delete-good-${goods.id}' />"
                           class="btn btn-danger custom-width">delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>

