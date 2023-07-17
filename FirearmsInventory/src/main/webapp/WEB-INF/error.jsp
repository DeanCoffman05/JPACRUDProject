<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Error Page</title>
    <link rel="stylesheet" type="text/css" href="path_to_your_css_file.css">
</head>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background: #f1f1f1;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

#error-message {
    max-width: 600px;
    padding: 20px;
    text-align: center;
    margin: 0 auto;
    background-color: #ffcccc; 
    border: 1px solid #ff0000;
    color: #800000; 
    font-size: 18px;
    line-height: 24px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px 2px rgba(0,0,0,0.1);
}
</style>
<body>
    <div id="error-message">
       ERROR ERROR
        ${errorMessage}
    </div>
</body>
</html>
