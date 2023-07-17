<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Complete List of Inventory</title>
</head>
<body>
<c:forEach var="firearm" items="${firearmList }">
<li>${firearm.serialNumber},${firearm.manufacturer},${firearm.model},${firearm.caliber}, ${firearm.value}</li>
</c:forEach>
</body>
</html>