<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dbrat
  Date: 23.07.2017
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Good</title>
    <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>
<body>
<div class="well lead">New Good Form</div>
<form:form method="POST" modelAttribute="good" class="form-horizontal">
    <form:input type="hidden" path="id" id="id"/>
    <div class="row">
        <div class="form-group col-md-12">
            <label class="col-md-3 control-lable" for="Name">Name</label>
            <div class="col-md-7">
                <form:input type="text" path="Name" id="Name" class="form-control input-sm"/>
                <div class="has-error">
                    <form:errors path="Name" class="help-inline"/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group col-md-12">
            <label class="col-md-3 control-lable" for="Description">Description</label>
            <div class="col-md-7">
                <form:input type="text" path="Description" id="Description" class="form-control input-sm"/>
                <div class="has-error">
                    <form:errors path="Description" class="help-inline"/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group col-md-12">
            <label class="col-md-3 control-lable" for="Typeid">Type id</label>
            <div class="col-md-7">
                <form:input type="text" path="Typeid" id="Typeid" class="form-control input-sm"/>
                <div class="has-error">
                    <form:errors path="Typeid" class="help-inline"/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-actions floatRight">
                    <input type="submit" value="Save" class="btn btn-primary btn-sm"/> or <a
                        href="<c:url value='/newGoodSuccess' />">Cancel</a>

        </div>
    </div>
</form:form>
</body>
</html>
