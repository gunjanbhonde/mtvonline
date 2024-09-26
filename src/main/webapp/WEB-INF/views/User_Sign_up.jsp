<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up for mtvonline</title>
<!-- Website favicon image -->
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
	font-family: Arial, sans-serif;
	background-color: #0C0F12;
}
.register_form_user {
	background-color: #20262B;
	height: 490px;
	width: 34%;
	margin-left: 33%;
	margin-top: 7%;
	border-radius: 6px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

.register_form_user h1 {
	margin-top: 20px;
	margin-bottom: 20px;
	text-align: center;
	color: #D51C53;
}

h3 {
	margin-top: 1px;
	text-align: center;
	font-weight: 200;
	color: white;
	margin-bottom: 10px;
	font-size: 13px;
}

h4 {
	margin-top: -40px;
	font-size: 14px;
	font-weight: 600;
	margin-left: 60%;
	margin-bottom: 5vh;
}

input[type="text"], input[type="password"], select, textarea {
	width: 90%;
	height: 36px;
	padding: 10px;
	margin-top: 3%;
	margin-left: 5%;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
	font-size: 16px;
	background-color: #20262B;
	color: white;
	border: 1px solid white;
}

input[type="submit"] {
	background-color: #D51C53;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
	cursor: pointer;
	font-size: 14px;
	margin-top: 2%;
	margin-left: 8%;
}

input[type="reset"] {
	background-color: #D51C53;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
	cursor: pointer;
	font-size: 14px;
	margin-left: 1%;
}

input[type="checkbox"] {
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
	cursor: pointer;
	font-size: 8px;
	margin-left: 5%;
	margin-top: 5%;
	color: white;
}

.error-message {
	color: red;
	font-size: 12px;
	margin-top: 13px;
	margin-left: 10%;
}

.more-info-section-2 {
	width: 100%;
	margin-top: 13%;
}

.more-info-section-2 h3 {
	font-size: 12px;
	font-family: "Poppins", sans-serif;
	font-weight: 100;
	text-align: center;
	color: black;
}

#alredy {
	margin-left: 20%;
	margin-top: 90%;
}

#alredy h3:hover {
	text-decoration: underline;
	color: #D51C53;
}

#check {
	color: white;
	font-size: 13px;
}

@media ( max-width : 1024px) {
	.register_form_user {
		height: 500px;
		width: 60%;
		margin-left: 20%;
		margin-top: 8%;
	}
}

@media ( max-width : 480px) {
	.register_form_user {
		height: 450px;
		width: 90%;
		margin-left: 5%;
		margin-top: 30%;
	}
	h1 {
		text-align: center;
		color: #D51C53;
		font-size: 20px;
	}
	h3 {
		text-align: center;
		font-size: 10px;
		font-weight: 700;
		margin-top: 3%;
	}
	h4 {
		margin-top: 10px;
		font-size: 10px;
		font-weight: 600;
		margin-left: 60%;
		margin-bottom: 5vh;
	}
	input[type="text"], input[type="password"], select, textarea {
		width: 90%;
		height: 30px;
		padding: 10px;
		margin-top: 1px;
		margin-left: 5%;
		border: 1px solid #ccc;
		border-radius: 5px;
		font-size: 16px;
	}
	input[type="submit"] {
		font-size: 11px;
		height: 12%;
		width: 38%;
	}
	input[type="reset"] {
		font-size: 11px;
		height: 12%;
		width: 38%;
	}
	input[type="checkbox"] {
		font-size: 8px;
	}
	.error-message {
		font-size: 11px;
		margin-top: 13px;
		margin-left: 10%;
	}
	.more-info-section-2 h3 {
		font-size: 13px;
		color: white;
	}
}
/* Eye icon styling */
.eye-icon {
            position: absolute;
            right: 15px;
            top: 39.7%;
            margin-right:35%;
            transform: translateY(-50%);
            cursor: pointer;
        }
        .eye-icon img {
            width: 20px;
            height: 20px;
           
        }
        @media ( max-width :1024px) {
.eye-icon {
            position: absolute;
            right: 15px;
            top: 36%;
            margin-right:23%;
            transform: translateY(-50%);
            cursor: pointer;
        }
}
@media ( max-width : 480px) {
.eye-icon {
            position: absolute;
            right: 15px;
            top: 29.2%;
            margin-right:12%;
            transform: translateY(-50%);
            cursor: pointer;
        }
}

</style>
</head>
<body>
	<div class="register_form_user">
		<h1>mtvonline</h1>
		<h3>Create a New Account</h3>
		<form:form name="RegForm" onsubmit="return validateForm()"
			action="saveuser" method="Post" modelAttribute="reguser" id="myForm">
			<p>
				<input type="text" id="name" name="user_name"
					placeholder="Enter your name:" maxlength="50"/> <span id="name-error"
					class="error-message"></span>
			</p>
			<p>
				<input type="password" placeholder="Enter your Password:"
					id="password" name="user_password" maxlength="50" required autocomplete="off" oncopy="return false" onpaste="return false" oncut="return false"/>
					 <span id="password-error"
					class="error-message"></span>
                <!-- Eye icon for password visibility toggle -->
                <span class="eye-icon" onclick="togglePasswordVisibility()">
                    <img id="eye-image" src="${pageContext.request.contextPath}/resources/images/open_eye.png" alt="Show Password">
                </span>							
			</p>
			<p>
				<input type="text" id="Email" name="user_email"
					placeholder="Enter your email:" maxlength="60" /> <span
					id="emailValidationMessage" class="error-message"></span>
			</p>
			<p>
				<input type="text" id="contactnumber" name="user_contact"
					placeholder="Enter your Contact Number:" required maxlength="10"/> <span
					id="validationcontactMessage" class="error-message"></span>
			</p>
			<p>
				<input type="text" id="city" name="user_city"
					placeholder="Enter your City Name:" maxlength="50" /> <span
					id="address-error" class="error-message"></span>
			</p>
			<p>
				<input type="checkbox" id="agree" name="Agree" /> <label id="check"
					for="agree">I agree to the Terms & Conditions of mtvonline</label>
				<span id="agree-error" class="error-message"></span>
			</p>	
			<p>
				<input type="submit" value="Submit" name="Submit" /> <input
					type="reset" value="Reset" name="Reset" />
			</p>
			<a id="alredy" href="userlogin"><h3>Already have an account?</h3></a>
		</form:form>
		<div class="more-info-section-2">
			<h3>
				All material<span>&copy; 2024 mtvonline company Pvt. Ltd. All
					Rights Reserved 2024</span>
			</h3>
		</div>
	</div>
	
<script>

//Toggle password visibility
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
       document.getElementById('name').value = '';
       document.getElementById('password').value = '';
       document.getElementById('Email').value = '';
       document.getElementById('contactnumber').value = '';
       document.getElementById('city').value = '';
   });

   // This will listen for when the page is loaded through back/forward navigation
   window.addEventListener('pageshow', function(event) {
       if (event.persisted) {
           // Clear the form fields if navigating back
    	   document.getElementById('name').value = '';
           document.getElementById('password').value = '';
           document.getElementById('Email').value = '';
           document.getElementById('contactnumber').value = '';
           document.getElementById('city').value = '';
       }
   });

   // Ensure form is submitted before clearing fields
   document.querySelector('#myForm').addEventListener('submit', function(event) {
       // Prevent default form submission
       event.preventDefault();
       // Perform form validation or other logic here
       
       // Submit form programmatically
       this.submit();
   });





        // Function to perform the validation
        function validateName() {
            const nameInput = document.getElementById("name").value;
            const errorMessage = document.getElementById("name-error");

            // Trim spaces from the start and end
            const trimmedName = nameInput.trim();

            // Regular expression to check for spaces in the middle of the string
            const hasMiddleSpaces = /\s{2,}/.test(trimmedName);

            // Validation: No leading/trailing/middle spaces and at least 6 characters long
            if (trimmedName.length < 6) {
                errorMessage.textContent = "Name must be at least 6 characters long.";
            } else if (hasMiddleSpaces) {
                errorMessage.textContent = "Name cannot have multiple spaces in the middle.";
            } else if (nameInput !== trimmedName) {
                errorMessage.textContent = "No leading or trailing spaces allowed.";
            } else {
                errorMessage.textContent = ""; // Clear error message
            }
        }

        // Event listener for real-time validation on input
        document.getElementById("name").addEventListener("input", validateName);

        // Optional: Prevent form submission if input is invalid
        document.getElementById("myForm").addEventListener("submit", function(event) {
            const nameInput = document.getElementById("name").value.trim();
            if (nameInput.length < 6 || /\s{2,}/.test(nameInput)) {
                event.preventDefault(); // Prevent form submission if invalid
                alert("Please correct the errors before submitting.");
            }
        });
        
        
        
        
        // Function to perform the validation
        function validatePassword() {
            const passwordInput = document.getElementById("password").value;
            const passwordError = document.getElementById("password-error");

            // Trim spaces from the start and end
            const trimmedPassword = passwordInput.trim();

            // Regular expression to check for spaces in the middle of the string
            const hasMiddleSpaces = /\s{2,}/.test(trimmedPassword);

            // Validation: No leading/trailing/middle spaces and at least 6 characters long
            if (trimmedPassword.length < 6) {
                passwordError.textContent = "Password must be at least 6 characters long.";
            } else if (hasMiddleSpaces) {
                passwordError.textContent = "Password cannot have multiple spaces in the middle.";
            } else if (passwordInput !== trimmedPassword) {
                passwordError.textContent = "No leading or trailing spaces allowed.";
            } else {
                passwordError.textContent = ""; // Clear error message
            }
        }

        // Event listener for real-time validation on input
        document.getElementById("password").addEventListener("input", validatePassword);

        // Optional: Prevent form submission if input is invalid
        document.getElementById("myForm").addEventListener("submit", function(event) {
            const passwordInput = document.getElementById("password").value.trim();
            if (passwordInput.length < 6 || /\s{2,}/.test(passwordInput)) {
                event.preventDefault(); // Prevent form submission if invalid
                alert("Please correct the errors before submitting.");
            }
        });
        
        
        
        
        // Function to perform the validation
        function validateEmail() {
            const emailInput = document.getElementById("Email").value;
            const emailError = document.getElementById("emailValidationMessage");

            // Trim spaces from the start and end
            const trimmedEmail = emailInput.trim();

            // Regular expression for valid email pattern
            const emailPattern = /^[^\s]{4,}@[\w.-]+\.[a-zA-Z]{2,}$/;

            // Validation: Check for multiple spaces in the middle
            const hasMiddleSpaces = /\s{2,}/.test(trimmedEmail);

            // Validation checks
            if (trimmedEmail.length < 4) {
                emailError.textContent = "Email must start with at least 4 characters.";
            } else if (hasMiddleSpaces) {
                emailError.textContent = "Email cannot have multiple spaces in the middle.";
            } else if (!trimmedEmail.includes("@")) {
                emailError.textContent = "Email must contain '@'.";
            } else if (!trimmedEmail.endsWith(".com")) {
                emailError.textContent = "Email must end with '.com'.";
            } else if (emailInput !== trimmedEmail) {
                emailError.textContent = "No leading or trailing spaces allowed.";
            } else if (!emailPattern.test(trimmedEmail)) {
                emailError.textContent = "Invalid email format.";
            } else {
                emailError.textContent = ""; // Clear error message
            }
        }

        // Event listener for real-time validation on input
        document.getElementById("Email").addEventListener("input", validateEmail);

        // Optional: Prevent form submission if input is invalid
        document.getElementById("myForm").addEventListener("submit", function(event) {
            const emailInput = document.getElementById("Email").value.trim();
            const emailPattern = /^[^\s]{4,}@[\w.-]+\.[a-zA-Z]{2,}$/;

            if (emailInput.length < 4 || !emailInput.includes("@") || !emailInput.endsWith(".com") || !emailPattern.test(emailInput)) {
                event.preventDefault(); // Prevent form submission if invalid
                alert("Please correct the errors before submitting.");
            }
        });
        
        
        
        // Function to perform the validation
        function validateContactNumber() {
            const contactInput = document.getElementById("contactnumber").value;
            const contactError = document.getElementById("validationcontactMessage");

            // Trim spaces from the start and end
            const trimmedContact = contactInput.trim();

            // Regular expression for valid contact number pattern
            const contactPattern = /^[789]\d{9}$/;

            // Validation: Check if the input contains only digits and starts with 7, 8, or 9
            if (contactInput !== trimmedContact) {
                contactError.textContent = "No leading or trailing spaces allowed.";
            } else if (/\s/.test(trimmedContact)) {
                contactError.textContent = "No spaces allowed in the middle.";
            } else if (!/^[789]/.test(trimmedContact)) {
                contactError.textContent = "Contact number must start with 7, 8, or 9.";
            } else if (!/^\d{10}$/.test(trimmedContact)) {
                contactError.textContent = "Contact number must be exactly 10 digits long.";
            } else if (!contactPattern.test(trimmedContact)) {
                contactError.textContent = "Invalid contact number format.";
            } else {
                contactError.textContent = ""; // Clear error message
            }
        }

        // Event listener for real-time validation on input
        document.getElementById("contactnumber").addEventListener("input", validateContactNumber);

        // Optional: Prevent form submission if input is invalid
        document.getElementById("myForm").addEventListener("submit", function(event) {
            const contactInput = document.getElementById("contactnumber").value.trim();
            const contactPattern = /^[789]\d{9}$/;

            if (!contactPattern.test(contactInput)) {
                event.preventDefault(); // Prevent form submission if invalid
                alert("Please correct the errors before submitting.");
            }
        }); 
        
        
        
        
        // Function to validate city name input
        function validateCity() {
            const cityInput = document.getElementById("city").value;
            const cityError = document.getElementById("address-error");

            // Trim spaces from the start and end
            const trimmedCity = cityInput.trim();

            // Regular expression for valid city name (only alphabets)
            const cityPattern = /^[A-Za-z\s]+$/;

            // Validation: Check if there are no leading or trailing spaces, no digits, and only alphabets
            if (cityInput !== trimmedCity) {
                cityError.textContent = "No leading or trailing spaces allowed.";
            } else if (/\s{2,}/.test(trimmedCity)) {
                cityError.textContent = "No multiple spaces are allowed in the middle.";
            } else if (!cityPattern.test(trimmedCity)) {
                cityError.textContent = "City name can only contain alphabets and single spaces between words.";
            } else {
                cityError.textContent = ""; // Clear the error message
            }
        }

        // Event listener for real-time validation on input
        document.getElementById("city").addEventListener("input", validateCity);

        // Optional: Prevent form submission if input is invalid
        document.getElementById("myForm").addEventListener("submit", function(event) {
            const cityInput = document.getElementById("city").value.trim();
            const cityPattern = /^[A-Za-z\s]+$/;

            if (!cityPattern.test(cityInput)) {
                event.preventDefault(); // Prevent form submission if invalid
                alert("Please correct the errors before submitting.");
            }
        }); 
        
    </script>
       
       <script>
       document.getElementById('myForm').addEventListener('submit', function(event) {
    	    var checkbox = document.getElementById('agree');
    	    var errorMessage = document.getElementById('agree-error');

    	    if (!checkbox.checked) {
    	        errorMessage.textContent = "You must agree to the terms and conditions.";
    	        event.preventDefault(); // Prevent form submission
    	    } else {
    	        errorMessage.textContent = ""; // Clear error message if checkbox is checked
    	    }
    	});

    </script>

</body>
</html>
