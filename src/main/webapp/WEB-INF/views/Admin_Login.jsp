<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
     <!-- fot website fevicon image -->
     <link
     rel="icon"
     type="image/x-icon"
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
    background-color: #f2f2f2;
}

.login-container {
    background-color: #ffffff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    height: 340px;
    max-height: 100%;
    max-width: 460px;
    /* border: 1px solid #000; */
}

h1 {
    margin-top: 10px;
    margin-bottom: 20px;
    text-align: center;
    color: #6B2BEA;
}
.login-container h3{
    margin-top: 13px;
    text-align: center;
    color: #000;
    margin-bottom: 20px;
    font-size: 18px;
}
.login-container h4{
color: #000;
text-align: right;
margin-top: 8px;
font-size: 14px;
}
.login-container h4:hover{
color: #6B2BEA;
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
span{
    text-align: center;
}

button {
    width: 100%;
    padding: 10px;
    height: 44px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    margin-top: 20px;
    background-color:#6B2BEA;
}

.more-info-section-2{
    width: 100%;
  margin-top: 10px;
    /* border: 1px solid black; */
  }
  .more-info-section-2 h3{
    font-size:11px;
    margin-top: 10px;
    font-family: "Poppins", sans-serif;
    font-weight: 400;
    text-align: center;
    color: black;
  }

@media (max-width: 480px) {
    .login-container {
        padding: 15px;
    }

    h1 {
        font-size: 24px;
    }
.login-container h3{
font-size: 14px
}
    button {
        font-size: 14px;
    }
}

/* Eye icon styling */
.eye-icon {
            position: absolute;
            right:38%;
            top: 54%;
            transform: translateY(-50%);
            cursor: pointer;
        }

        .eye-icon img {
            width: 20px;
            height: 20px;
           
        }
@media ( max-width : 480px) {
/* Eye icon styling */
.eye-icon {
            position: absolute;
            right:13%;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
        }

}
@media ( min-width :480px) and (max-width:1024px) {
/* Eye icon styling */
.eye-icon {
            position: absolute;
            right:30%;
            top: 54%;
            transform: translateY(-50%);
            cursor: pointer;
        }

}
</style>
</head>
<body>
    <div class="login-container">
        <h1>mtvonline</h1>
        <h3>Admin Login</h3>
        <form:form name="frm" id="loginAdmin"  action="saveadmin" method="Post"  modelAttribute="loginadmin" autocomplete="off">
            <div class="input-group">
               
                <input type="text" 
                         id="first" 
                         name="adminname" 
                         placeholder="Adminname" maxlength="50" required autocomplete="off">

            </div>
            <div class="input-group">
                 <input type="password"
                         id="password" 
                         name="adminpassword"
                         placeholder="Password" maxlength="50" required autocomplete="off" oncopy="return false" onpaste="return false" oncut="return false">
                         
                 <!-- Eye icon for password visibility toggle -->
                <span class="eye-icon" onclick="togglePasswordVisibility()">
                    <img id="eye-image" src="${pageContext.request.contextPath}/resources/images/open_eye.png" alt="Show Password">
                </span>         
         
            </div>
            <button type="submit"
            onclick="solve()">
          Log in
    </button>
</form:form>
<span style="color:red;">${msg}</span>
    </div>

    <div class="more-info-section-2">
        <h3>All material<span>&copy; 2024 mtvonline company Pvt.Ltd.All Rights Reserved 2024</span> </h3>
      </div>
      
      
    
    <script>
        // Toggle password visibility
        function togglePasswordVisibility() {
            const passwordInput = document.getElementById("password");
            const eyeImage = document.getElementById("eye-image");

            if (passwordInput.type === "password") {
                passwordInput.type = "text";
                eyeImage.src = "${pageContext.request.contextPath}/resources/images/closed_eye.png"; // Change to hide password image
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
            document.getElementById('first').value = '';
            document.getElementById('password').value = '';
        });

        // This will listen for when the page is loaded through back/forward navigation
        window.addEventListener('pageshow', function(event) {
            if (event.persisted) {
                // Clear the form fields if navigating back
                document.getElementById('first').value = '';
                document.getElementById('password').value = '';
            }
        });

        // Ensure form is submitted before clearing fields
        document.querySelector('#loginAdmin').addEventListener('submit', function(event) {
            // Prevent default form submission
            event.preventDefault();
            // Perform form validation or other logic here
            
            // Submit form programmatically
            this.submit();
        });
    </script>
      
      
      
      
      
      
      
      
</body>
</html>