<%--
  Created by IntelliJ IDEA.
  User: dbrat
  Date: 04.06.2017
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <title>Upload Multiple File Request Page</title>
</head>
<body>
<form method="POST" action="uploadMultipleFile" enctype="multipart/form-data">
    File1 to upload: <input type="file" name="file">

    Name1: <input type="text" name="name">


    File2 to upload: <input type="file" name="file">

    Name2: <input type="text" name="name">


    <input type="submit" value="Upload"> Press here to upload the file!
</form>
</body>
</html>
