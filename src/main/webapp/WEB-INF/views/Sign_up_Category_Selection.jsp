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

    .category-select {
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
        .category-select {
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

        .category-select {
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

        .category-select {
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
        <h1>Select Your Preferred Movie Categories</h1>
        <form class="category-select" onsubmit="handleSubmit(event)" action="saveuser_categories" method="POST">
            <label><input type="checkbox" value="Action"> Action</label>
            <label><input type="checkbox" value="Comedy" checked> Comedy</label>
            <label><input type="checkbox" value="Drama"> Drama</label>
            <label><input type="checkbox" value="Horror"> Horror</label>
            <label><input type="checkbox" value="Romance"> Romance</label>
            <label><input type="checkbox" value="Sci-Fi"> Sci-Fi</label>
            <label><input type="checkbox" value="Fantasy"> Fantasy</label>
            <label><input type="checkbox" value="Thriller"> Thriller</label>
            <input type="hidden" id="categoryInput" name="selectedCategories" /> <!-- Hidden input to hold category string -->
            <button type="submit" class="submit-btn">Confirm Selection</button>
        </form>
    </div>   
    <script>
    function handleSubmit(event) {
        event.preventDefault(); // Prevent the default form submission
        
        const checkboxes = document.querySelectorAll('input[type="checkbox"]:checked');
        const selectedCategories = Array.from(checkboxes).map(checkbox => checkbox.value);
        let categoryString = selectedCategories.join(', '); // Create a comma-separated string
        
        // If no checkboxes are checked, set default to Comedy
        if (selectedCategories.length === 0) {
            categoryString = "Action";
        }
        
      
       
         document.getElementById('categoryInput').value = categoryString; // Set the hidden input value
         event.target.submit(); // Submit the form
    }
</script>
</div>
</body>
</html>
