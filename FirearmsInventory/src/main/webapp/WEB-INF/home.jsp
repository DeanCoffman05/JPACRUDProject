<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Firearms Inventory and Catalog</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

<style>
body{
background-image: url('https://img.freepik.com/free-photo/silver-metallic-textured-background_53876-90845.jpg?w=2000&t=st=1689598822~exp=1689599422~hmac=2187fb121277830256b944bba9ec2319b7517ef106597e33564f622a2e3eabfc');
background-size: "cover";
background-repeat: no-repeat;
}
  table {
    width: 100%;
    border-collapse:separate;
	border-radius: 6px;
	border-spacing:0 10px;
	border: 1px solid darkgray;
	align: center;
	margin-left: auto;
	margin-right: auto;
	font-weight:bold;
	background-color:rgb(10,10,10,0.6);
  }

  td {
    text-align: center;
    vertical-align: middle;
    width: 33%;
    border: 1px solid black;
  }
   ul {
    list-style-type: none;
    padding: 0;
    text-align: center;
  }
</style>
</head>

<body>
<h1 style="text-align: center;"> Welcome to the Firearms Inventory and Catalog</h1>

<br><br>

<table>
  <tr>
    <td>
      <h3>Retrieve a Firearm by ID to View and Update</h3>
      <form action="getFirearm.do" method="GET">
        <label for="id">ID NUMBER</label>
        <input type="text" id="id" name="id"> 
        <button type="submit">Search</button>
      </form>
    </td>

    <td>
      <h3>Delete a Firearm</h3>
      <form action="deleteFirearm.do" method="GET">
        <label for="id">ID NUMBER</label>
        <input type="text" id="id2" name="id">
        <button type="submit">Delete This Firearm</button>
      </form>
    </td>

    <td>
      <h3>Add a Firearm to the Database</h3>
      <form action="createFirearm.do" method="POST">
        <label for="serialNumber">Serial Number:</label>
        <input type="text" id="serialNumber" name="serialNumber" required><br>

        <label for="manufacturer">Manufacturer:</label>
        <input type="text" id="manufacturer" name="manufacturer"><br>

        <label for="model">Model:</label>
        <input type="text" id="model" name="model"><br>

        <label for="caliber">Caliber:</label>
        <input type="text" id="caliber" name="caliber"><br>

        <label for="value">Value:</label>
        <input type="text" id="value" name="value"><br>

        <button type="submit">Submit</button>
      </form>
    </td>
  </tr>
</table>

<<h3 style="text-align: center;">Current Inventory</h3>
<ul style="text-align: center;">
  <c:forEach var="firearm" items="${firearmList }">
    <li>ID: ${firearm.id}</li>
    <li>SERIAL NUMBER: ${firearm.serialNumber}</li>
    <li>MANUFACTURER: ${firearm.manufacturer}</li>
    <li>MODEL: ${firearm.model},CALIBER: ${firearm.caliber}</li>
   <li> VALUE: ${firearm.value}</li>
  </c:forEach>
</ul>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

</body>
</html>
