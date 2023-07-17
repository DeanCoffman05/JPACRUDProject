<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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


<body>
<h1>Successfully Deleted!</h1>
  <a href="${pageContext.request.contextPath}/home.do">Return Home</a>

</body>
</html>