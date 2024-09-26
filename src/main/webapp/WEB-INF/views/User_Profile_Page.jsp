<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mtvonline -Watch Movies,Webseries</title>
<!-- fot website fevicon image -->
<link rel="icon" type="image/x-icon"
	 href="${pageContext.request.contextPath}/resources/images/website-feviicon.png"/>


<!-- ------cdn link of bootstrp 4.6.2---- -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<!-- ------cdn link of bootstrp 5.1.3---- -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


<!-- ------css file link---- -->
<!-- <link type="text/css" rel="stylesheet"
	href="/movies_recommendation/resources/css/User_Profile_Page.css" /> -->
 <link type="text/css" rel="stylesheet" href="<c:url value='/resources/css/User_Profile_Page.css' />" />

<!-- --------------google font-poppins-link------- -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">

</head>



<body>



	<!-- ----------------bootstrp 4.6.2------------ -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
		integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
		crossorigin="anonymous"></script>


	<!-- ----------------bootstrp 5.1.3------------ -->

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>




	<div class="Wrapper_User_profile">
		<div class="Wrapper_User_profile_1">
			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton2" data-bs-toggle="dropdown"
					aria-expanded="false">Settings</button>
				<ul class="dropdown-menu dropdown-menu-dark"
					aria-labelledby="dropdownMenuButton2">
					<li><a class="dropdown-item active" href="#">Profile</a></li>
					<li><a class="dropdown-item" href="watchlist">Watch List</a></li>
					<li><a class="dropdown-item" href="update_user">
							<button id="toggleButton" style="width: auto;">Update
								Profile</button>
					</a></li>
					<li><a class="dropdown-item" href="#">
							<button id="toggleButton"
								onclick="document.getElementById('id02').style.display='block'"
								style="width: auto;">Delete Account</button>
					</a></li>
					<li><a class="dropdown-item" href="user_log_out">
							<button id="toggleButton"
								onclick="document.getElementById('').style.display='block'"
								style="width: auto;">Log Out</button>
					</a></li>
				</ul>
			</div>


			<script>
				// Get the modal
				var modal = document.getElementById('id01');

				// When the user clicks anywhere outside of the modal, close it
				window.onclick = function(event) {
					if (event.target == modal) {
						modal.style.display = "none";
					}
				}
			</script>






			<div id="id02" class="modal_2">
				<form class="modal-content animate" action="Delete_user"
					method="post" id="main_2">
					<div class="imgcontainer">
						<span
							onclick="document.getElementById('id02').style.display='none'"
							class="close" title="Close Modal">&times;</span>
					</div>
					<div class="container_3">
						<h4>Do you Want Delete Your Account ?</h4>
						<input type="hidden" id="uid" name="user_id"
							placeholder="Enter your name:" value="${user_id}" /> <a
							href=""><button type="reset"
								onclick="document.getElementById('id02').style.display='none'"
								class="cancelbtn_1">
								<h3>Cancel</h3>
							</button></a> <a href=""><button class="Deletebutton" type="submit">
								<H3>Delete</H3>
							</button></a>
					</div>

				</form>
			</div>

			<script>
				// Get the modal
				var modal = document.getElementById('id02');

				// When the user clicks anywhere outside of the modal, close it
				window.onclick = function(event) {
					if (event.target == modal) {
						modal.style.display = "none";
					}
				}
			</script>





		</div>


		<div class="Wrapper_User_profile_2">
			<div class="w1">
				<h3>
					Name: <span style="color: red; font-size: 13px;">${user_name}</span>
				</h3>
			</div>
			<div class="w2">
				<h3>
					Email: <span style="color: red; font-size: 13px;">${user_email}</span>
				</h3>
			</div>
			<div class="w2">
				<h3>
					Contact number: <span style="color: red; font-size: 13px;">${user_contact}</span>
				</h3>
			</div>
			<div class="w2">
				<h3>
					City: <span style="color: red; font-size: 13px;">${user_city}</span>
				</h3>
			</div>

		</div>
		<div class="Wrapper_User_profile_3">
		
	<!-- website-section-2-movie_poster_scrollbar-starting -->
      <div class="section-2-Trending-Top-10-main_desktop">
			<div class="section-2-trending-1">
				<h1>Watch List</h1>
			</div>
			<div class="parent-2-1">
				<div class="scroll-container-2-1">
					<c:forEach var="userhistory" items="${Watch_History}">
						<div class="child-2-1">
							<form name="watch" action="giving_mid" method="Post">
								<!-- Passing the movie id to the showMovieDetails function -->
								<input type="hidden" id="movie_watch" name="m_id"
									value="${userhistory.m_id}" />
								<button type="submit" id="select_movie">
									<img
										src="${pageContext.request.contextPath}/resources/images/${userhistory.getMovie_mapping_name().replace(' ','')}.jpg"
										alt="${userhistory.movie_mapping_name}">
										
								</button>
							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</div> 
      <!-- website-section-2-movie_poster_scrollbar-ending -->

		</div>
	</div>




</body>
</html>