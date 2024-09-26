<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mtvonline -Watch Movies,Webseries</title>
<!-- Website favicon image -->
<link rel="icon" type="image/x-icon"
  href="${pageContext.request.contextPath}/resources/images/website-feviicon.png"/>
 <style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    font-family: 'Arial', sans-serif;
    background-color: black;
}

.error-container {
    text-align: center;
    background-color: white;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
    background-color: #0C0F12;
}

.error-text {
    font-size: 3em;
    color: #ff4f5e;
    margin-bottom:40px;
}

.back-button {
    padding: 12px 30px;
    background-color: #007bff;
    color: white;
    text-decoration: none;
    font-size: 1.2em;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.back-button:hover {
    background-color: #0056b3;
}

/* Responsiveness for tablets and smaller screens */
@media (max-width: 768px) {
    .error-text {
        font-size: 2.5em;
    }
    
    .back-button {
        font-size: 1em;
    }
}

/* Responsiveness for mobile phones */
@media (max-width: 480px) {
    .error-text {
        font-size: 2em;
    }

    .back-button {
        font-size: 0.9em;
        padding: 10px 20px;
    }
}

   </style>

</head>
<body>
  <div class="error-container">
        <h1 class="error-text">System Error</h1>
        <a href="back_to_home" class="back-button">Back to Home</a>
    </div>
</body>
</html>