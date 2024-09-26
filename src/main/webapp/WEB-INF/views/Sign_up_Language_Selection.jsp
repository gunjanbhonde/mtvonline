<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mtvonline - Watch Movies, Webseries</title>
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
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(to right, #141E30, #243B55);
        }

        .container {
            width: 100%;
            max-width: 1200px;
            height: 600px;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #fff;
            box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 30px;
            text-align: center;
        }

        h1 {
            color: #243B55;
            margin-bottom: 20px;
            font-size: 2em;
        }

        .language-select {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        label {
            display: flex;
            align-items: center;
            font-size: 18px;
            color: #243B55;
            cursor: pointer;
        }

        label input[type="checkbox"] {
            margin-right: 10px;
            transform: scale(1.5);
            cursor: pointer;
        }

        .submit-btn {
            padding: 15px 25px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            background-color: #243B55;
            color: white;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 20px;
            width: 100%;
            max-width: 200px;
        }

        .submit-btn:hover {
            background-color: #3A506B;
            transform: scale(1.05);
        }

        /* Tablet View */
        @media (max-width: 1024px) {
            .language-select {
                grid-template-columns: repeat(2, 1fr);
                gap: 15px;
            }

            .submit-btn {
                padding: 12px 20px;
                font-size: 16px;
                max-width: 180px;
            }

            h1 {
                font-size: 1.8em;
            }
        }

        /* Mobile View */
        @media (max-width: 768px) {
            body {
                padding: 20px;
            }

            .container {
                flex-direction: column;
                height: auto;
                padding: 20px;
            }

            h1 {
                font-size: 1.6em;
                margin-bottom: 10px;
            }

            .language-select {
                grid-template-columns: 1fr;
                gap: 10px;
            }

            label {
                font-size: 16px;
            }

            .submit-btn {
                padding: 10px 15px;
                font-size: 14px;
                max-width: 160px;
            }
        }

        /* Desktop View */
        @media (min-width: 1200px) {
            h1 {
                font-size: 2.2em;
            }

            .language-select {
                grid-template-columns: repeat(4, 1fr);
                gap: 25px;
            }

            .submit-btn {
                padding: 16px 28px;
                font-size: 18px;
            }
        }
    </style>
</head>
<body>
 <div class="container">
        <div>
            <h1>Select Your Preferred Language</h1>
            <form class="language-select" onsubmit="handleSubmit(event)" action="saveuser_language" method="POST">
                <label><input type="checkbox" value="English">English</label>
                <label><input type="checkbox" value="Marathi">Marathi</label>
                <label><input type="checkbox" value="Hindi" checked>Hindi</label>
                <label><input type="checkbox" value="Spanish">Spanish</label>
                <label><input type="checkbox" value="French">French</label>
                <label><input type="checkbox" value="German">German</label>
                <label><input type="checkbox" value="Chinese">Chinese</label>
                <label><input type="checkbox" value="Japanese">Japanese</label>
                <input type="hidden" id="languageInput" name="selectedLanguages" /> <!-- Hidden input to hold language string -->
                <button type="submit" class="submit-btn">Confirm Selection</button>
            </form>
        </div>
    </div>
    
     <script>
        function handleSubmit(event) {
            event.preventDefault(); // Prevent the default form submission
            
            const checkboxes = document.querySelectorAll('input[type="checkbox"]:checked');
            const selectedLanguages = Array.from(checkboxes).map(checkbox => checkbox.value);
            let languageString = selectedLanguages.join(', '); // Create a comma-separated string
            
            // If no checkboxes are checked, set default to Hindi
            if (selectedLanguages.length === 0) {
                languageString = "Hindi";
            }
            
            document.getElementById('languageInput').value = languageString; // Set the hidden input value
            event.target.submit(); // Submit the form
        }
    </script>
</body>
</html>
