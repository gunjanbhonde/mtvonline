<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Panel</title>
<!-- fot website fevicon image -->
<link rel="icon" type="image/x-icon"
	 href="${pageContext.request.contextPath}/resources/images/website-feviicon.png"/>

<!-- ------css file link---- -->
<!--  <link type="text/css" rel="stylesheet"
	href="/movies_recommendation/resources/css/Admin_Panel.css" />
 -->
 <link type="text/css" rel="stylesheet" href="<c:url value='/resources/css/Admin_Panel.css' />" />
 
<!--  ---------------google-fonts--------------- -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">

<style type="text/css">
/* Styling for the entire dashboard section */
#dashboard {
	font-family: 'Arial', sans-serif;
	padding: 20px;
	background-color: #f9f9f9;
}

/* Table headings */
#dashboard h3 {
	color: #333;
	font-size: 24px;
	margin-bottom: 10px;
}

/* Common styles for both tables */
#dashboard table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 30px;
	background-color: #fff;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

/* Header row styles */
#dashboard table thead {
	background-color: #4CAF50;
	color: white;
}

#dashboard table thead th {
	padding: 12px;
	text-align: left;
	font-weight: bold;
}

/* Table body styling */
#dashboard table tbody tr {
	border-bottom: 1px solid #ddd;
	transition: background-color 0.3s ease;
}

#dashboard table tbody tr:hover {
	background-color: #f1f1f1;
}

#dashboard table tbody td {
	padding: 12px;
	text-align: left;
}

/* Styling for alternate row colors */
#dashboard table tbody tr:nth-child(even) {
	background-color: #f2f2f2;
}

/* Add padding for table cells */
#dashboard table td, #dashboard table th {
	padding: 15px;
}

/* Responsive table adjustments */
@media screen and (max-width: 768px) {
	#dashboard table {
		display: block;
		overflow-x: auto;
	}
	#dashboard table thead, #dashboard table tbody, #dashboard table th,
		#dashboard table td, #dashboard table tr {
		display: block;
	}
	#dashboard table thead {
		float: left;
	}
	#dashboard table tbody {
		width: auto;
		position: relative;
		overflow-x: auto;
		white-space: nowrap;
	}
}

h3 {
	text-align: center;
	font-size: 24px;
	color: #333;
}

/* Table Styles */
table {
	width: 100%;
	border-collapse: collapse;
	margin: 20px 0;
	box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
}

table, th, td {
	border: 1px solid #ddd;
	padding: 12px;
}

thead {
	background-color: #4CAF50;
	color: white;
}

th {
	font-weight: bold;
	text-align: center;
	font-size: 16px;
}

tbody tr {
	text-align: center;
}

tbody tr:nth-child(even) {
	background-color: #f2f2f2;
}

tbody tr:hover {
	background-color: #f1f1f1;
}

/* Image Styles */
img {
	border-radius: 4px;
}

/* Link styles */
a {
	color: #4CAF50;
	text-decoration: none;
	padding: 5px 10px;
	border-radius: 4px;
}

a:hover {
	background-color: #4CAF50;
	color: white;
}

/* Update and Delete Button Styles */
td a {
	display: inline-block;
	padding: 8px 16px;
	border: 1px solid #ddd;
	border-radius: 4px;
	transition: background-color 0.3s ease;
}

td a.update {
	background-color: #2196F3;
	color: white;
}

td a.delete {
	background-color: #f44336;
	color: white;
}

td a.update:hover {
	background-color: #0b7dda;
}

td a.delete:hover {
	background-color: #d32f2f;
}

/* Responsive adjustments */
@media ( max-width : 768px) {
	table, th, td {
		font-size: 14px;
		padding: 10px;
		text-align: center;
	}
}

.Admin_panel_main_div {
	width: 100%;
	height: 694px;
	flex-direction: column;
	display: flex;
}

/* for delete pop up confirmation */
</style>
</head>
<body>

	<div class="Admin_panel_main_div">
		<div class="Admin_panel_main_div_1">
			<div class="Admin_panel_main_div_1_Current_Admin_Name">
				<h3>
					Admin id: <span style="color: red; font-size: 13px;">${admin_id}</span>
				</h3>
				<h4>
					Admin name: <span style="color: red; font-size: 13px;">${admin_name}</span>
				</h4>
			</div>
			<div class="Admin_panel_main_div_1_Log_out_Admin">
				<button>
					<a href="index_page"><h3>Log Out</h3></a>
				</button>
			</div>
		</div>
		<div class="Admin_panel_main_div_2">
			<div class="parent">
				<div class="sidebar">
					<button onclick="openSection('add-banner')">
						<h3>Movie Banner</h3>
					</button>
					<button onclick="openSection('movie')">
						<h3>Movie</h3>
					</button>
					<button onclick="openSection('users')">
						<h3>Users</h3>
					</button>
					<button onclick="openSection('dashboard')">
						<h3>DashBoard</h3>
					</button>
					<button onclick="openSection('Sponser_Add')">
						<h3>Sponser Add's</h3>
					</button>
					<button onclick="openSection('admin')">
						<h3>Admin</h3>
					</button>

				</div>
				<div class="content">
					<!-- Add Banner Section -->
					<div id="add-banner" class="section">
						<div class="section-buttons">
							<button onclick="showForm('add-banner-search')">
								<h3>Search add-banner</h3>
							</button>
							<button onclick="showForm('add-banner-add')">
								<h3>Add add-banner</h3>
							</button>
							<button onclick="showForm('add-banner-update')">
								<h3>Update add-banner</h3>
							</button>
							<button onclick="showForm('add-banner-delete')">
								<h3>Delete add-banner</h3>
							</button>
						</div>
						<div id="add-banner-search" class="form-section">
							<form>
								<label for="search-banner"><h4>Search Movie Banner
										by Name:</h4></label> <input type="text" id="search-banner"
									name="search-banner">
								<div id="search-results">Movie banner details appear
									here...</div>
							
							<table>
								<thead>
									<tr>
										<th>Banner ID</th>
										<th>banner Name</th>
										<th>Banner Image</th>
										<th>Highlights</th>
										<th>Update</th>
										<th>Delete</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="get_all_banner_info"
										items="${get_all_Banner_info}">
										<tr>
											<td>${get_all_banner_info.b_id}</td>
											<td>${get_all_banner_info.banner_name}</td>
											<td><img
												src="${pageContext.request.contextPath}/resources/images/${get_all_banner_info.getBanner_name().replace(' ','')}.jpg"
												style="height: 100px; width: 180px;" class="d-block w-100"
												alt="${get_all_banner_info.banner_name}"></td>
											<td>${get_all_banner_info.banner_highlights}</td>
											<td><a href=''>Update</a></td>
											<td><a
													href='delete_banner_by_b_id?b_id=${get_all_banner_info.b_id}'>Delete</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
                               </form>

						</div>

						<div id="add-banner-add" class="form-section">
							<form:form name="frm" action="add_new_banner" method="Post"
								modelAttribute="add_banner" enctype="multipart/form-data">
								<label for="banner-name"><h4>Movie Banner Name:</h4></label>
								<input type="text" id="banner-name" maxlength="100"
									name="banner_name" required>
								<label for="banner-highlights"><h4>Movie
										Highlights:</h4></label>
								<input required type="text" id="banner-highlights"
									maxlength="200" name="banner_highlights">
								<label for="banner-image"><h4>Upload Image:</h4></label>
								<input required name="banner" type="file" id="banner-image">
								<button type="submit" onclick="solve()" name="s"
									value="Add banner">
									<h3>Add Movie Banner</h3>
								</button>

							</form:form>
						</div>



						<div id="add-banner-update" class="form-section">
							<form>
								<label for="banner-id"><h4>Update Movie Banner by
										ID:</h4></label> <input type="text" id="banner-id"> <label
									for="banner-name-update"><h4>Movie Banner Name:</h4></label> <input
									type="text" id="banner-name-update" maxlength="50"> <label
									for="banner-highlights-update"><h4>Movie
										Highlights:</h4></label> <input type="text" id="banner-highlights-update"
									maxlength="50"> <label for="banner-image-update"><h4>Upload
										Image:</h4></label> <input type="file" id="banner-image-update">
								<button type="submit">
									<h3>Update Movie Banner</h3>
								</button>
							</form>
						</div>
						<div id="add-banner-delete" class="form-section">
							<form>
								<label for="delete-banner-id"><h4>Delete Movie
										Banner by ID:</h4></label> <input type="text" id="delete-banner-id">
								<button type="submit">
									<h3>Delete Movie Banner</h3>
								</button>
							</form>
						</div>
					</div>

					<!-- Movie Section -->
					<div id="movie" class="section">
						<div class="section-buttons">
							<button onclick="showForm('movie-search')">
								<h3>Search Movie</h3>
							</button>
							<button onclick="showForm('movie-add')">
								<h3>Add Movie</h3>
							</button>
							<button onclick="showForm('movie-update')">
								<h3>Update Movie</h3>
							</button>
							<button onclick="showForm('movie-delete')">
								<h3>Delete Movie</h3>
							</button>
						</div>
						<div id="movie-search" class="form-section">
							<form>
								<label for="search-movie"><h4>Search Movie by Name:</h4></label>
								<input type="text" id="movieSearch" name="movie_name"
									placeholder="Search movie by name"
									onkeyup="searchMovies(this.value)">


								<table>
									<thead>
										<tr>
											<th>ID</th>
											<th>Movie Name</th>
											<th>Movie Image</th>
											<th>Movie Mapping name</th>
											<th>Movie Desc</th>
											<th>Category</th>
											<th>Director</th>
											<th>Actor 1</th>
											<th>Actor 2</th>
											<th>Actor 3</th>
											<th>language</th>
											<th>Type</th>
											<th>Trailer link</th>
											<th>Watch link</th>
											<th>Budget</th>
											<th>Release Date</th>
											<th>Country</th>
											<th>Update</th>
											<th>Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="get_all_Movie_data"
											items="${get_all_movie_info}">
											<tr>
												<td>${get_all_Movie_data.m_id}</td>
												<td>${get_all_Movie_data.movie_title}</td>
												<td><img
													src="${pageContext.request.contextPath}/resources/images/${get_all_Movie_data.getMovie_mapping_name().replace(' ','')}.jpg"
													style="height: 90px; width: 80px;" class="d-block w-100"
													alt="${get_all_Movie_data.movie_mapping_name}"></td>
												<td>${get_all_Movie_data.movie_mapping_name}</td>
												<td>${get_all_Movie_data.movie_desc}</td>
												<td>${get_all_Movie_data.movie_category}</td>
												<td>${get_all_Movie_data.movie_director_name}</td>
												<td>${get_all_Movie_data.movie_actor_1}</td>
												<td>${get_all_Movie_data.movie_actor_2}</td>
												<td>${get_all_Movie_data.movie_actor_3}</td>
												<td>${get_all_Movie_data.movie_language}</td>
												<td>${get_all_Movie_data.movie_type}</td>
												<td>${get_all_Movie_data.movie_trailer_link}</td>
												<td>${get_all_Movie_data.movie_watch_link}</td>
												<td>${get_all_Movie_data.movie_budget}</td>
												<td>${get_all_Movie_data.movie_release_date}</td>
												<td>${get_all_Movie_data.movie_country}</td>
												<td><a href=''>Update</a></td>
												<td><a
													href='delete_movie_by_m_id?m_id=${get_all_Movie_data.m_id}'>Delete</a></td>
											</tr>

										</c:forEach>
									</tbody>
								</table>

							</form>
						</div>

						<!-- 	=====================================================================================================================================	 -->
						<style>
.container {
	width: 90%;
	margin-left: 5%;
	margin: 20px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #333;
}

.form-group {
	margin-bottom: 15px;
}

label {
	font-size: 1rem;
	margin-bottom: 5px;
	display: block;
	color: #333;
}

input, select, textarea {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	border: 1px solid #ddd;
	border-radius: 5px;
	font-size: 1rem;
}

button {
	background-color: #7433F5;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 1rem;
}

button:hover {
	background-color: #5b29c3;
}

.error {
	color: red;
	font-size: 0.9rem;
}

.popup {
	display: none;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: #fff;
	width: 400px;
	padding: 20px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
	z-index: 10;
	border-radius: 10px;
}

.popup h3 {
	text-align: center;
	margin-bottom: 15px;
	color: #333;
}

.popup .checkbox-list {
	max-height: 200px;
	overflow-y: auto;
}

.popup label {
	display: block;
	margin-bottom: 5px;
}

.popup button {
	display: block;
	margin: 20px auto 0;
	width: 100%;
}

#overlay {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	z-index: 5;
}

.selected-categories {
	margin-top: 10px;
	font-size: 0.9rem;
	color: #333;
}

.popup .error {
	color: red;
	font-size: 0.9rem;
	text-align: center;
	margin-top: 10px;
}

/* Responsive */
@media ( max-width : 768px) {
	.container {
		padding: 15px;
	}
}

.error-message {
	color: red;
	font-size: 12px;
	margin-top: 13px;
	margin-left: 10%;
}

.checkbox-list h5 {
	margin-top: -30px;
}
</style>

						<div id="movie-add" class="form-section">

							<div class="container">
								<h2>Add New Movie</h2>

								<form:form id="movieForm" name="frm" action="add_new_movie"
									method="Post" modelAttribute="add_movie"
									enctype="multipart/form-data">
									<!-- Movie Title -->
									<div class="form-group">
										<label for="movie_title">Movie Title:</label> <input
											type="text" id="movie_title" name="movie_title"
											maxlength="500" required>
									</div>

									<!-- Movie Mapping Name -->
									<div class="form-group">
										<label for="movie_mapping_name">Movie Mapping Name:</label> <input
											type="text" id="movie_mapping_name" name="movie_mapping_name"
											maxlength="500" required>
										<p class="error" id="movie_mapping_name_error"></p>
									</div>

									<!-- Movie Description -->
									<div class="form-group">
										<label for="movie_desc">Movie Description:</label>
										<textarea id="movie_desc" name="movie_desc" rows="4"
											maxlength="800" required></textarea>
									</div>

									<!-- Movie Category -->
									<div class="form-group">
										<label for="movie_category">Movie Category:</label>
										<button type="button" id="categoryBtn">Select Movie
											Category</button>
										<div class="selected-categories" id="selectedCategories">Action</div>
										<!-- Hidden input to store selected categories -->
										<input type="hidden" id="movie_category" name="movie_category"
											value="Action">
									</div>

									<!-- Movie Director Name -->
									<div class="form-group">
										<label for="movie_director_name">Movie Director Name:</label>
										<input type="text" id="movie_director_name"
											name="movie_director_name" maxlength="100" required>
									</div>

									<!-- Movie Actors -->
									<div class="form-group">
										<label for="movie_actor_1">Actor 1:</label> <input type="text"
											id="movie_actor_1" name="movie_actor_1" maxlength="100"
											required>
									</div>
									<div class="form-group">
										<label for="movie_actor_2">Actor 2:</label> <input type="text"
											id="movie_actor_2" name="movie_actor_2" maxlength="100">
									</div>
									<div class="form-group">
										<label for="movie_actor_3">Actor 3:</label> <input type="text"
											id="movie_actor_3" name="movie_actor_3" maxlength="100">
									</div>

									<!-- Movie Language -->
									<div class="form-group">
										<label for="movie_language">Movie Language:</label> <select
											id="movie_language" name="movie_language">
											<option value="Hindi" selected>Hindi</option>
											<option value="English">English</option>
											<option value="Marathi">Marathi</option>
										</select>
									</div>

									<!-- Movie Type -->
									<div class="form-group">
										<label for="movie_type">Movie Type:</label> <select
											id="movie_type" name="movie_type">
											<option value="Free" selected>Free</option>
											<option value="Premium">Premium</option>
											<option value="Rent">Rent</option>
										</select>
									</div>

									<!-- Movie Trailer Link -->
									<div class="form-group">
										<label for="movie_trailer_link">Movie Trailer Link:</label> <input
											type="text" id="movie_trailer_link" name="movie_trailer_link"
											maxlength="1000">
									</div>

									<!-- Movie Watch Link -->
									<div class="form-group">
										<label for="movie_watch_link">Movie Watch Link:</label> <input
											type="text" id="movie_watch_link" name="movie_watch_link"
											maxlength="1000">
									</div>

									<!-- Movie Budget -->
									<div class="form-group">
										<label for="movie_budget">Movie Budget:</label> <input
											type="text" id="movie_budget" name="movie_budget"
											maxlength="20" required>
									</div>

									<!-- Movie Release Date -->
									<div class="form-group">
										<label for="movie_release_date">Movie Release Date:</label> <input
											type="date" id="movie_release_date" name="movie_release_date"
											required>
									</div>

									<!-- Movie Country -->
									<div class="form-group">
										<label for="movie_country">Movie Country:</label> <input
											type="text" id="movie_country" name="movie_country"
											maxlength="120" required>
									</div>

									<!-- Upload Image -->
									<div class="form-group">
										<label for="movie_image">Upload Movie Image:</label> <input
											type="file" id="movie_image" name="movie_image"
											accept=".jpg, .jpeg" required>
										<p class="error" id="movie_image_error"></p>
									</div>

									<!-- Submit Button -->
									<button type="submit" onclick="solve()" name="s"
										value="Add Movie">Add Movie</button>

								</form:form>
							</div>
							<!-- Movie Category Popup -->
							<div id="overlay"></div>
							<div class="popup" id="categoryPopup">
								<h3>Select Movie Categories</h3>
								<div class="checkbox-list">
									<label><input type="checkbox" value="Action" checked>
									<h5>Action</h5></label> <label><input type="checkbox"
										value="Horror">
									<h5>Horror</h5></label> <label><input type="checkbox"
										value="Drama">
										<h5>Drama</h5></label> <label><input type="checkbox"
										value="Science Fiction">
									<h5>Science Fiction</h5></label> <label><input type="checkbox"
										value="Comedy">
									<h5>Comedy</h5></label> <label><input type="checkbox"
										value="Adventure">
									<h5>Adventure</h5></label> <label><input type="checkbox"
										value="Animation">
									<h5>Animation</h5></label> <label><input type="checkbox"
										value="Thriller">
									<h5>Thriller</h5></label> <label><input type="checkbox"
										value="Epic">
									<h5>Epic</h5></label> <label><input type="checkbox"
										value="History">
									<h5>History</h5></label> <label><input type="checkbox"
										value="War">
									<h5>War</h5></label> <label><input type="checkbox"
										value="Crime">
									<h5>Crime</h5></label> <label><input type="checkbox"
										value="Fantasy">
									<h5>Fantasy</h5></label> <label><input type="checkbox"
										value="Mystery">
									<h5>Mystery</h5></label> <label><input type="checkbox"
										value="Children's">
									<h5>Children's</h5></label> <label><input type="checkbox"
										value="Television">
									<h5>Television</h5></label> <label><input type="checkbox"
										value="Martial Arts">
									<h5>Martial Arts</h5></label> <label><input type="checkbox"
										value="Romance">
									<h5>Romance</h5></label> <label><input type="checkbox"
										value="Western">
									<h5>Western</h5></label> <label><input type="checkbox"
										value="Documentary">
									<h5>Documentary</h5></label> <label><input type="checkbox"
										value="Experimental">
									<h5>Experimental</h5></label> <label><input type="checkbox"
										value="Noir">
									<h5>Noir</h5></label> <label><input type="checkbox"
										value="Historical">
									<h5>Historical</h5></label> <label><input type="checkbox"
										value="Comedy drama">
									<h5>Comedy drama</h5></label> <label><input type="checkbox"
										value="Art">
									<h5>Art</h5></label> <label><input type="checkbox"
										value="Narrative">
									<h5>Narrative</h5></label> <label><input type="checkbox"
										value="Historical drama">
									<h5>Historical drama</h5> </label><label><input type="checkbox"
										value="Political drama">
									<h5>Political drama</h5> </label>
								</div>
								<p class="error" id="category_error"></p>
								<button type="button" id="addCategoriesBtn">Add
									Categories</button>
							</div>

							<script>
        const categoryBtn = document.getElementById('categoryBtn');
        const overlay = document.getElementById('overlay');
        const categoryPopup = document.getElementById('categoryPopup');
        const addCategoriesBtn = document.getElementById('addCategoriesBtn');
        const selectedCategories = document.getElementById('selectedCategories');
        const categoryError = document.getElementById('category_error');
        const movieCategoryInput = document.getElementById('movie_category');  // Hidden input field

        const defaultCategory = 'Action';
        let categories = [defaultCategory];

        categoryBtn.addEventListener('click', () => {
            overlay.style.display = 'block';
            categoryPopup.style.display = 'block';
        });

        addCategoriesBtn.addEventListener('click', () => {
            const checkboxes = document.querySelectorAll('#categoryPopup input[type="checkbox"]');
            categories = [];
            checkboxes.forEach(checkbox => {
                if (checkbox.checked) {
                    categories.push(checkbox.value);
                }
            });
            if (categories.length === 0) {
                categories.push(defaultCategory);
                categoryError.textContent = 'Please select the category';
            } else {
                categoryError.textContent = '';
            }
            selectedCategories.textContent = 'Selected Categories: ' + categories.join(', ');
            movieCategoryInput.value = categories.join(', ');  // Set value of hidden input field

            overlay.style.display = 'none';
            categoryPopup.style.display = 'none';
        });

        overlay.addEventListener('click', () => {
            overlay.style.display = 'none';
            categoryPopup.style.display = 'none';
        });

        document.getElementById('movie_mapping_name').addEventListener('input', function() {
            const error = document.getElementById('movie_mapping_name_error');
            if (this.value.trim() !== this.value) {
                error.textContent = 'Leading, trailing, or multiple spaces are not allowed.';
            } else {
                error.textContent = '';
            }
        });

        document.getElementById('movieForm').addEventListener('submit', function(e) {
            // Validate image upload
            const imageInput = document.getElementById('movie_image');
            const imageError = document.getElementById('movie_image_error');
            const file = imageInput.files[0];

            // Check if the uploaded file is a valid .jpg or .jpeg image
            if (file && !['image/jpeg', 'image/jpg'].includes(file.type)) {
                imageError.textContent = 'Invalid file format. Only .jpg or .jpeg is allowed.';
                e.preventDefault();  // Prevent form submission if validation fails
            } else {
                imageError.textContent = '';
                // If validation passes, the form will be submitted
            }
        });
    </script>
						</div>


						<!-- 	=====================================================================================================================================	 -->
						<div id="movie-update" class="form-section"></div>

						<div id="movie-delete" class="form-section"></div>
					</div>
					<!-- end movie siss -->

					<!-- Users Section -->
					<div id="users" class="section">
						<div id="user-message">

							<form>
								<label for="search-User"><h4>Search User by Name:</h4></label> <input
									type="text" id="search-user">

							</form>
							<form>
								<table>
									<thead>
										<tr>
											<th>User ID</th>
											<th>Name</th>
											<th>Email</th>
											<th>Contact</th>
											<th>City Name</th>
											<th>Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="get_All_userr_info"
											items="${get_all_user_info}">
											<tr>
												<td>${get_All_userr_info.user_id}</td>
												<td>${get_All_userr_info.user_name}</td>
												<td>${get_All_userr_info.user_email}</td>
												<td>${get_All_userr_info.user_contact}</td>
												<td>${get_All_userr_info.user_city}</td>
												<td><a
													href='delete_user_by_u_id?user_id=${get_All_userr_info.user_id}'>Delete</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</form>
						</div>

					</div>

					<div id="dashboard" class="section">

						<h3 style="color:black; font-size: 14px;text-align: left;" >
						     Total Movies: <span style="color: red; font-size: 14px;">${get_total_Movie}</span>
						</h3>
						<h3 style="color:black; font-size: 14px;text-align: left;">
							Total Banners: <span style="color: red; font-size: 14px;">${get_total_Banner}</span>
						</h3>
						<h3 style="color:black; font-size: 14px;text-align: left;">
							Total Users: <span style="color: red; font-size: 14px;">${get_total_user}</span>
						</h3>


						<div id="dashboardd">
							<!-- Good Movies Table -->
							<h3>Good Movies</h3>
							<table>
								<thead>
									<tr>
										<th>ID</th>
										<th>Movie Name</th>
										<th>Movie Image</th>
										<th>Movie Mapping name</th>
										<th>Movie Desc</th>
										<th>Category</th>
										<th>Director</th>
										<th>Actor 1</th>
										<th>Actor 2</th>
										<th>Actor 3</th>
										<th>language</th>
										<th>Type</th>
										<th>Trailer link</th>
										<th>Watch link</th>
										<th>Budget</th>
										<th>Release Date</th>
										<th>Country</th>
										<th>Rating</th>
										<th>reviews</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="good" items="${goodMovies}">
										<tr>
											<td>${good.m_id}</td>
											<td>${good.movie_title}</td>
											<td><img
												src="${pageContext.request.contextPath}/resources/images/${good.getMovie_mapping_name().replace(' ','')}.jpg"
												style="height: 90px; width: 80px;" class="d-block w-100"
												alt="${good.movie_mapping_name}"></td>
											<td>${good.movie_mapping_name}</td>
											<td>${good.movie_desc}</td>
											<td>${good.movie_category}</td>
											<td>${good.movie_director_name}</td>
											<td>${good.movie_actor_1}</td>
											<td>${good.movie_actor_2}</td>
											<td>${good.movie_actor_3}</td>
											<td>${good.movie_language}</td>
											<td>${good.movie_type}</td>
											<td>${good.movie_trailer_link}</td>
											<td>${good.movie_watch_link}</td>
											<td>${good.movie_budget}</td>
											<td>${good.movie_release_date}</td>
											<td>${good.movie_country}</td>
											<td>${good.average_rating}</td>
											<td>${good.reviews}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

							<!-- Worst Movies Table -->
							<h3>Worst Movies</h3>
							<table>
								<thead>
									<tr>
										<th>ID</th>
										<th>Movie Name</th>
										<th>Movie Image</th>
										<th>Movie Mapping name</th>
										<th>Movie Desc</th>
										<th>Category</th>
										<th>Director</th>
										<th>Actor 1</th>
										<th>Actor 2</th>
										<th>Actor 3</th>
										<th>language</th>
										<th>Type</th>
										<th>Trailer link</th>
										<th>Watch link</th>
										<th>Budget</th>
										<th>Release Date</th>
										<th>Country</th>
										<th>Rating</th>
										<th>reviews</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="worst" items="${worstMovies}">
										<tr>
											<td>${worst.m_id}</td>
											<td>${worst.movie_title}</td>
											<td><img
												src="${pageContext.request.contextPath}/resources/images/${worst.getMovie_mapping_name().replace(' ','')}.jpg"
												style="height: 90px; width: 80px;" class="d-block w-100"
												alt="${worst.movie_mapping_name}"></td>
											<td>${worst.movie_mapping_name}</td>
											<td>${worst.movie_desc}</td>
											<td>${worst.movie_category}</td>
											<td>${worst.movie_director_name}</td>
											<td>${worst.movie_actor_1}</td>
											<td>${worst.movie_actor_2}</td>
											<td>${worst.movie_actor_3}</td>
											<td>${worst.movie_language}</td>
											<td>${worst.movie_type}</td>
											<td>${worst.movie_trailer_link}</td>
											<td>${worst.movie_watch_link}</td>
											<td>${worst.movie_budget}</td>
											<td>${worst.movie_release_date}</td>
											<td>${worst.movie_country}</td>
											<td>${worst.average_rating}</td>
											<td>${worst.reviews}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div id="Sponser_Add" class="section">
						<div id="Sponser_Add-message">Hi!</div>
					</div>

					<!-- Admin Section -->
					<div id="admin" class="section">
						<div class="section-buttons">
							<button onclick="showForm('admin-search')">
								<h3>View All Admins</h3>
							</button>
							<button onclick="showForm('admin-add')">
								<h3>Add Admin</h3>
							</button>
							<button onclick="showForm('admin-update')">
								<h3>Update Yourself</h3>
							</button>
							<button onclick="showForm('admin-delete')">
								<h3>Delete Yourself</h3>
							</button>
						</div>
						<div id="admin-search" class="form-section">
							<form>
								<!-- <label for="search-admin"><h4>Search Admin by Name:</h4></label>
								<input type="text" id="search-admin" placeholder="Search....."
									name="adminname" onkeyup="Searchadmin(this.value)">
								<div id="Admin_show"></div> -->
							</form>
							<table>
								<thead>
									<tr>
										<th>Admin Name</th>
										<th>SuperAdmin</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="get_all_Admmin_info"
										items="${get_all_admmin_info}">
										<tr>
											<td>${get_all_Admmin_info.adminname}</td>
											<td>${get_all_Admmin_info.superadmin}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- 	==================================================================================				 -->


						<div id="admin-add" class="form-section" style="margin-top: 5%">
							<h4 style="margin-bottom: 5%">Add New Admin</h4>
							<form:form name="frm" action="add_new_admin" method="Post"
								id="myForm" modelAttribute="add_admin">
								<input type="text" id="admin-name" name="adminname"
									maxlength="50" placeholder="Admin Name: " required />
								<span id="name-error" class="error-message"></span>
								<input type="password" id="admin-password" name="adminpassword"
									maxlength="50" placeholder="Admin Password:" required
									autocomplete="off" oncopy="return false" onpaste="return false"
									oncut="return false" />
								<span id="password-error" class="error-message"></span>

								<input type="submit" value="Add Admin" name="Submit" />
							</form:form>
							<%--     ${Add_New_Admin_msg} --%>
						</div>

						<script type="text/javascript">
					

					// Disable copy, paste, and cut on the password field
					   const passwordInput = document.getElementById("admin-password");
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
					   
					
					   // Function to perform the validation
				        function validateName() {
				            const nameInput = document.getElementById("admin-name").value;
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
				        document.getElementById("admin-name").addEventListener("input", validateName);

				        // Optional: Prevent form submission if input is invalid
				        document.getElementById("myForm").addEventListener("submit", function(event) {
				            const nameInput = document.getElementById("admin-name").value.trim();
				            if (nameInput.length < 6 || /\s{2,}/.test(nameInput)) {
				                event.preventDefault(); // Prevent form submission if invalid
				                alert("Please correct the errors before submitting.");
				            }
				        });
				        	   
					   
					   
				        // Function to perform the validation
				        function validatePassword() {
				            const passwordInput = document.getElementById("admin-password").value;
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
				        document.getElementById("admin-password").addEventListener("input", validatePassword);

				        // Optional: Prevent form submission if input is invalid
				        document.getElementById("myForm").addEventListener("submit", function(event) {
				            const passwordInput = document.getElementById("admin-password").value.trim();
				            if (passwordInput.length < 6 || /\s{2,}/.test(passwordInput)) {
				                event.preventDefault(); // Prevent form submission if invalid
				                alert("Please correct the errors before submitting.");
				            }
				        }); 
					      
					   
					
					</script>
						<!-- 	==================================================================================				 -->
						<div id="admin-update" class="form-section" style="margin-top: 5%">
							<h4 style="margin-bottom: 6%;">Update the Admin Credentials</h4>
							<h5 style="margin-top: -5%; margin-bottom: 3%;">Important
								note:Super Admin cannot be updated or Deleted.</h5>
							<form:form name="frm" action="update_admin" method="Post"
								modelAttribute="Update_admin" id="my_update_Form">

								<input type="hidden" id="admin-id" name="aid" maxlength="6"
									value="${admin_id}" />
								<input type="text" id="admin-name" name="adminname"
									maxlength="50" value="${admin_name}" required />
								<span id="name-error" class="error-message"></span>
								<input type="password" id="admin-password" name="adminpassword"
									maxlength="50" value="${admin_password}" required
									autocomplete="off" oncopy="return false" onpaste="return false"
									oncut="return false" />
								<span id="password-error" class="error-message"></span>
								<input type="submit" value="Update" name="Submit" />

							</form:form>
						</div>

						<script type="text/javascript">
					

					// Disable copy, paste, and cut on the password field
					   const passwordInput = document.getElementById("admin-password");
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
					   
					
					   // Function to perform the validation
				        function validateName() {
				            const nameInput = document.getElementById("admin-name").value;
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
				        document.getElementById("admin-name").addEventListener("input", validateName);

				        // Optional: Prevent form submission if input is invalid
				        document.getElementById("my_update_Form").addEventListener("submit", function(event) {
				            const nameInput = document.getElementById("admin-name").value.trim();
				            if (nameInput.length < 6 || /\s{2,}/.test(nameInput)) {
				                event.preventDefault(); // Prevent form submission if invalid
				                alert("Please correct the errors before submitting.");
				            }
				        });
				        	   
					   
					   
				        // Function to perform the validation
				        function validatePassword() {
				            const passwordInput = document.getElementById("admin-password").value;
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
				        document.getElementById("admin-password").addEventListener("input", validatePassword);

				        // Optional: Prevent form submission if input is invalid
				        document.getElementById("my_update_Form").addEventListener("submit", function(event) {
				            const passwordInput = document.getElementById("admin-password").value.trim();
				            if (passwordInput.length < 6 || /\s{2,}/.test(passwordInput)) {
				                event.preventDefault(); // Prevent form submission if invalid
				                alert("Please correct the errors before submitting.");
				            }
				        }); 
					      
					   
					
					</script>


						<!-- 	==================================================================================				 -->

						<div id="admin-delete" class="form-section">
							<h4 style="margin-bottom: 6%;">Delete Your Admin Profile</h4>
							<h5 style="margin-top: -5%; margin-bottom: 3%;">Important
								note:Super Admin cannot be updated or Deleted.</h5>
							<form:form name="frm" action="Delete_admin" method="Post"
								modelAttribute="delete_admin">
								<input type="hidden" id="admin-id" name="aid" maxlength="5"
									value="${admin_id}" />
								<button type="submit" onclick="solve()">Delete</button>
							</form:form>
						</div>
					</div>
				</div>
			</div>



		</div>
	</div>



	<script>
    function openSection(sectionId) {
        document.querySelectorAll('.section').forEach(section => {
            section.style.display = 'none';
        });
        document.getElementById(sectionId).style.display = 'block';
    }
    
    function showForm(formId) {
        document.querySelectorAll('.form-section').forEach(form => {
            form.style.display = 'none';
        });
        document.getElementById(formId).style.display = 'flex';
    }
    </script>

	<!-- <script type="text/javascript">
function Searchadmin(name)
{
	let xhttp=new XMLHttpRequest();
	xhttp.onreadystatechange=function(){
		if(this.readystate==4 && this.status==200){
			document.getElementById("Admin_show").innerHTML=this.responseText;
		}
	};
	xhttp.open("GET","searchbyadminname?n="+name,true);
	xhttp.send();
	
	}
</script>

 -->
</body>
</html>