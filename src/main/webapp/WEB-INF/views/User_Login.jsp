<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log in into mtvonline</title>
<!-- fot website fevicon image -->
<link rel="icon" type="image/x-icon"
	 href="${pageContext.request.contextPath}/resources/images/website-feviicon.png"/>



<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: Arial, sans-serif;
}

body {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #0C0F12;
}

.login-container {
	background-color: #ffffff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 100%;
	height: 374px;
	max-height: 100%;
	max-width: 460px;
	background-color: #20262B;
	/* border: 1px solid #000; */
}

h1 {
	margin-top: 10px;
	margin-bottom: 20px;
	text-align: center;
	color: #D51C53;
}

.login-container h3 {
	margin-top: 1px;
	text-align: center;
	font-weight: 200; color : #000;
	margin-bottom: 20px;
	font-size: 13px;
	color: white;
}

.login-container h4 {
	color: #000;
	text-align: right;
	margin-top: 8px;
	font-size: 14px;
}

.login-container h4:hover {
	color: #D51C53;
}

.input-group {
	margin-bottom: 15px;
}

.input-group input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	margin-top: 6px;
}

button {
	width: 100%;
	padding: 10px;
	height: 44px;
	/*    background-color: #4CAF50; */
	color: #20262B;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
	font-weight:400;
	margin-top: 20px;
	background-color:white;
	/*    background-color: #D51C53;; */
	border: 1px solid white;
}
button :hover{
	color: #D51C53;
}
a{
color:black;
margin-top:2%;
text-decoration: none;
}

#user_sign_up h4{
color: white;
	font-size: 14px;
	margin-top: 20px;
	font-weight: 10;
	margin-right: 2%;
	margin-top: -4%;
}
#user_sign_up h4:hover{
	text-decoration: underline;
	color: #D51C53;
}
#user_forgot_password h4{
color: white;
	font-size: 14px;
	margin-top: 20px;
	font-weight: 10;
	margin-right: 60%;
}
#user_forgot_password h4:hover{
	text-decoration: underline;
	color: #D51C53;
}
.more-info-section-2 {
	width: 100%;
	margin-top: 10px;
	/* border: 1px solid black; */
}

.more-info-section-2 h3 {
	font-size: 11px;
	margin-top: 10px;
	font-family: "Poppins", sans-serif;
	font-weight: 400;
	text-align: center;
		color: white;
}
input{
	background-color: #20262B;
	color: white;
	border: 1px solid white;
	
}
span{
align-items: center;
text-align: center;
}
@media ( max-width : 480px) {
	.login-container {
		padding: 15px;
	}
	h1 {
		font-size: 24px;
	}
	.login-container h3 {
		font-size: 14px
	}
	button {
		font-size: 14px;
	}
	#user_sign_up h4{
color: white;
	font-size: 11px;
	margin-top: 20px;
	font-weight: 10;
	margin-right: 2%;
	margin-top: -5%;
}
#user_forgot_password h4{
color: white;
	font-size: 10px;
	margin-top: 28px;
	font-weight: 10;
	margin-right: 60%;
}
}

/* Eye icon styling */
.eye-icon {
            position: absolute;
            right: 15px;
            top: 60%;
            transform: translateY(-50%);
            cursor: pointer;
        }

        .eye-icon img {
            width: 20px;
            height: 20px;
           
        }

        .input-group {
            position: relative;
        }

        input {
            background-color: #20262B;
            color: white;
            border: 1px solid white;
            width: 100%;
        }

        /* Additional styles for hover effects */
        button:hover {
            color: #D51C53;
        }

</style>
</head>
<body>
    <div class="login-container">
        <h1>mtvonline</h1>
        <h3>Log in into mtvonline</h3>
        <form id="loginForm" action="saveloginuser" method="post" autocomplete="off">
            <div class="input-group">
                <input type="text" id="username" name="user_name"
                    placeholder="Username" maxlength="50" required autocomplete="off">
            </div>
            <div class="input-group">
                <input type="password" id="password" name="user_password"
                    placeholder="Password" maxlength="50" required autocomplete="off" oncopy="return false" onpaste="return false" oncut="return false">
                <!-- Eye icon for password visibility toggle -->
                <span class="eye-icon" onclick="togglePasswordVisibility()">
                    <img id="eye-image" src="${pageContext.request.contextPath}/resources/images/open_eye.png" alt="Show Password">
                </span>
            </div>
            <button type="submit">Log in</button>
        </form>
        <span style="color: red;">${User_Login_msg}</span>
        <a id="user_forgot_password" href="userSignup_forgot"><h4>Forgot Password?</h4></a>
        <a id="user_sign_up" href="userSignup"><h4>Sign up for mtvonline</h4></a>
    </div>
    <div class="more-info-section-2">
        <h3>
            All material<span>&copy; 2024 mtvonline company Pvt.Ltd.All Rights Reserved 2024</span>
        </h3>
    </div>

    <script>
        // Toggle password visibility
        function togglePasswordVisibility() {
            const passwordInput = document.getElementById("password");
            const eyeImage = document.getElementById("eye-image");

            if (passwordInput.type === "password") {
                passwordInput.type = "text";
                eyeImage.src =  "${pageContext.request.contextPath}/resources/images/closed_eye.png"; // Change to hide password image
                eyeImage.alt = "Hide Password";
            } else {
                passwordInput.type = "password";
                eyeImage.src = "${pageContext.request.contextPath}/resources/images/open_eye.png"; // Change to show password image
                eyeImage.alt = "Show Password";
            }
        }

     // Disable copy, paste, and cut on the password field
        const passwordInput = document.getElementById("password");
        passwordInput.addEventListener('copy', function (e) {
            e.preventDefault();
            alert("Copying password is not allowed.");
        });
        passwordInput.addEventListener('paste', function (e) {
            e.preventDefault();
            alert("Pasting password is not allowed.");
        });
        passwordInput.addEventListener('cut', function (e) {
            e.preventDefault();
            alert("Cutting password is not allowed.");
        });
        
        
        
        
        // JavaScript to clear form after submission and prevent caching
        document.addEventListener('DOMContentLoaded', function() {
            // Clear the form inputs when the page is loaded
            document.getElementById('username').value = '';
            document.getElementById('password').value = '';
        });

        // This will listen for when the page is loaded through back/forward navigation
        window.addEventListener('pageshow', function(event) {
            if (event.persisted) {
                // Clear the form fields if navigating back
                document.getElementById('username').value = '';
                document.getElementById('password').value = '';
            }
        });

        // Ensure form is submitted before clearing fields
        document.querySelector('#loginForm').addEventListener('submit', function(event) {
            // Prevent default form submission
            event.preventDefault();
            // Perform form validation or other logic here
            
            // Submit form programmatically
            this.submit();
        });
    </script>
</body>

</html>