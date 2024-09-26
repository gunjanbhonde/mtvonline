<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
	href="/movies_recommendation/resources/css/User_index.css" />
 -->
 <link type="text/css" rel="stylesheet" href="<c:url value='/resources/css/User_index.css' />" />
 
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



	<!-- --------------html for desktop starting------------- -->

	<div class="wrapper_desktop">

		<!-- website-navbar-starting -->
		<nav class="navbar navbar-expand-lg navbar-light bg-dark" id="navbar">

			<div class="website-logo">
				<a class="navbar-brand" href="#"><h2>mtvonline</h2></a>
			</div>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<div class="navbar-categories-menu">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><a class="nav-link" href="#"><h3
									class="text-white">Home</h3> <span class="sr-only">(current)</span></a></li>
						<li class="nav-item"><a class="nav-link" href="#"><h3
									class="text-white">TV shows</h3></a></li>
						<li class="nav-item"><a class="nav-link" href="#"><h3
									class="text-white">Movies</h3></a></li>
						<li class="nav-item"><a class="nav-link" href="#"><h3
									class="text-white">Web series</h3></a></li>
						<li class="nav-item"><a class="nav-link" href="#"><h3
									class="text-white">Channels</h3></a></li>


					</ul>
				</div>
				<div class="navbar-search-bar">
					<form class="form-inline my-2 my-lg-0">
						<input class="form-control mr-sm-2" type="search"
							placeholder="Search" aria-label="Search" id="search-bar-head">
						<button class="btn btn-outline-success my-2 my-sm-0" type="button">
							<h3 class="text-white">Search</h3>
						</button>
					</form>
				</div>

				<div class="navbar-profile-menu">
					<li class="nav-item dropdown"><a class="profile-section"
						aria-expanded="false"><img class="profile-img"
							src="${pageContext.request.contextPath}/resources/images/user.png" alt="">
							<h3 class="text-white">Profile</h3> </a>
						<div class="dropdown-menu">

							<a class="dropdown-item" href="profile"><button
									id="myButton-User_profile">
									<h3>Profile</h3>
								</button></a> <a class="dropdown-item" href="watchlist"><button
									id="myButton-movie_watchlist">
									<h3>Watch List</h3>
								</button></a> <a class="dropdown-item" href="#"><button
									id="myButton-User_login">
									<h3>Planes And Offers</h3>
								</button></a> <a class="dropdown-item" href="#"><button
									id="myButton-Region">
									<img
										src="${pageContext.request.contextPath}/resources/images/Indian_flag.png"
										alt="India flag">
									<h3>India</h3>
								</button></a> <a class="dropdown-item" href="#"><button
									id="myButton-User_login">
									<h3>Help And Support</h3>
								</button></a> <a class="dropdown-item" href="user_log_out"><h3>Log
									out</h3></a>

						</div></li>
				</div>

				<div class="Buy-plan">
					<a href="Buy_Plan_Page"><button class="Buy-plan-button"
							onclick="document.getElementById('#').style.display='block'">
							<img src="${pageContext.request.contextPath}/resources/images/crown.png"
								alt="Buy plan">
							<h3>BUY PLAN</h3>
						</button></a>

				</div>

				<!-- -------------- --code for buy-plan-page-starting-------------------- -->



				<!-- -------------- --code for buy-plan-page-ending-------------------- -->


			</div>
		</nav>

		<!-- website-navbar-ending -->

		<!-- website-section-1-banner-starting -->
		<div class="section-banner-1-main">
			<div id="carouselExampleCaptions" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleCaptions" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
					<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
				</ol>

				<div id="movieCarousel" class="carousel slide"
					data-bs-ride="carousel" data-bs-interval="5000" data-bs-wrap="true">
					<div class="carousel-inner">
						<c:forEach var="banner" items="${bannersList}" varStatus="status">
							<div class="carousel-item ${status.index == 0 ? 'active' : ''}">
								<img
									src="${pageContext.request.contextPath}/resources/images/${banner.getBanner_name().replace(' ','')}.jpg"
									class="d-block w-100" alt="${banner.banner_name}">
								<div class="carousel-caption d-none d-md-block">
									<a href="Buy_Plan_Page"><button class="first_banner_button">
											<img id="watch-button-carousel"
												src="${pageContext.request.contextPath}/resources/images/play_icon.png"
												alt="play-button">
											<h3>Watch</h3>
										</button></a>
									<h5>${banner.getBanner_name()}</h5>
									<p>${banner.getBanner_highlights()}</p>
								</div>
							</div>
						</c:forEach>
					</div>


				</div>

				<script type="text/javascript">
function preloadImages(imageArray, callback) {
    let imagesLoaded = 0;
    let imagesToLoad = imageArray.length;

    imageArray.forEach(function (src) {
        const img = new Image();
        img.src = src;
        img.onload = function () {
            imagesLoaded++;
            if (imagesLoaded === imagesToLoad) {
                callback();
            }
        };
    });
}

const imageUrls = ${movies.stream().map(movie -> "\"" + movie.imageUrl + "\"").collect(Collectors.joining(","))};
preloadImages(imageUrls.split(','), function () {
    $('#movieCarousel').carousel({ interval: 3000, wrap: true });
});


</script>

				<button class="carousel-control-prev" type="button"
					data-target="#carouselExampleCaptions" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-target="#carouselExampleCaptions" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</button>
			</div>

		</div>

		<!-- website-section-1-banner-ending -->


		<!-- website-section-1.5-movie_poster_scrollbar-starting -->


		<div class="section-2-Trending-Top-10-main_desktop">
			<div class="section-2-trending-1">
				<h1>Latest Releases</h1>
			</div>
			<div class="parent-2-1">
				<div class="scroll-container-2-1">
					<c:forEach var="newmovie" items="${New_Realeses}">
						<div class="child-2-1">
							<form name="watch" action="giving_rating" method="Post">
								<!-- Passing the movie id to the showMovieDetails function -->
								<input type="hidden" id="movie_watch" name="m_id"
									value="${newmovie.m_id}" />
								<button type="submit" id="select_movie">
									<img
										src="${pageContext.request.contextPath}/resources/images/${newmovie.getMovie_mapping_name().replace(' ','')}.jpg"
										alt="${newmovie.movie_mapping_name}">
									<!-- 	<img  id="second-image"
										src="/movies_recommendation/resources/images/play-circle.png"
										alt=""> -->
								</button>
							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<!-- website-section-1.5-movie_poster_scrollbar-ending -->


		<!-- website-section-2-movie_poster_scrollbar-starting -->
		<div class="section-2-Trending-Top-10-main_desktop">
			<div class="section-2-trending-1">
				<h1>Trending Top 10 on mtvonline</h1>
			</div>
			<div class="parent-2-1">
				<div class="scroll-container-2-1">
					<c:forEach var="trending" items="${TrendingList}">
						<div class="child-2-1">
							<form name="watch" action="giving_rating" method="Post">
								<!-- Passing the movie id to the showMovieDetails function -->
								<input type="hidden" id="movie_watch" name="m_id"
									value="${trending.m_id}" />
								<button type="submit" id="select_movie">
									<img
										src="${pageContext.request.contextPath}/resources/images/${trending.getMovie_mapping_name().replace(' ','')}.jpg"
										alt="${trending.movie_mapping_name}">
								</button>
							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<!-- website-section-2-movie_poster_scrollbar-ending -->


		<!-- website-section-3-movie_poster_scrollbar-starting -->

		<div class="section-2-Trending-Top-10-main_desktop">
			<div class="section-2-trending-1">
				<h1>Action</h1>
			</div>
			<div class="parent-2-1">
				<div class="scroll-container-2-1">
					<c:forEach var="Action" items="${ActionList}">
						<div class="child-2-1">
							<form name="watch" action="giving_rating" method="Post">
								<!-- Passing the movie id to the showMovieDetails function -->
								<input type="hidden" id="movie_watch" name="m_id"
									value="${Action.m_id}" />
								<button type="submit">
									<img
										src="${pageContext.request.contextPath}/resources/images/${Action.getMovie_mapping_name().replace(' ','')}.jpg"
										alt="${Action.movie_mapping_name}">
								</button>
							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<!-- website-section-3-movie_poster_scrollbar-ending -->



		<!-------------- section-4-add-section-starting----------->
	<div class="section-4-add-banner">
			<a href="https://www.getonecard.app/"><img
				src="${pageContext.request.contextPath}/resources/images/Ad_1.jpg" alt="One card Add"></a>
		</div>
		<!-------------- section-4-add-section-end--------------->



		<!-- website-section-5-movie_poster_scrollbar-starting -->
		<div class="section-2-Trending-Top-10-main_desktop">
			<div class="section-2-trending-1">
				<h1>Drama</h1>
			</div>
			<div class="parent-2-1">
				<div class="scroll-container-2-1">
					<c:forEach var="Drama" items="${DramaList}">
						<div class="child-2-1">
							<form name="watch" action="giving_rating" method="Post">
								<!-- Passing the movie id to the showMovieDetails function -->
								<input type="hidden" id="movie_watch" name="m_id"
									value="${Drama.m_id}" />
								<button type="submit">
									<img
										src="${pageContext.request.contextPath}/resources/images/${Drama.getMovie_mapping_name().replace(' ','')}.jpg"
										alt="${Drama.movie_mapping_name}">
								</button>
							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- website-section-5-movie_poster_scrollbar-ending -->

		<!-------------- section-5.5-add-section-starting----------->
		<div class="section-5_5-add-banner">
			<a
				href="https://www.sonyliv.com/shows/tanaav-1700000994?utm_source=imdb&utm_medium=paid&utm_campaign=branding_tanaav_s2&utm_term=hindi_content_ros_mobile_desktop&utm_content=india_streaming_now_970x250"><img
				src="${pageContext.request.contextPath}/resources/images/Tanaav_2_add.jpg"
				alt="Tanaav 2 Add"></a>
		</div>
		<!-------------- section-5.5-add-section-end--------------->

		<!-- website-section-6-movie_poster_scrollbar-starting -->

		<div class="section-2-Trending-Top-10-main_desktop">
			<div class="section-2-trending-1">
				<h1>Top Hollywood picks for you</h1>
			</div>
			<div class="parent-2-1">
				<div class="scroll-container-2-1">
					<c:forEach var="hollywood" items="${HollywoodList}">
						<div class="child-2-1">
							<form name="watch" action="giving_rating" method="Post">
								<!-- Passing the movie id to the showMovieDetails function -->
								<input type="hidden" id="movie_watch" name="m_id"
									value="${hollywood.m_id}" />
								<button type="submit">
									<img
										src="${pageContext.request.contextPath}/resources/images/${hollywood.getMovie_mapping_name().replace(' ','')}.jpg"
										alt="${hollywood.movie_mapping_name}">
								</button>
							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<!-- website-section-6-movie_poster_scrollbar-ending -->


		<!-- website-section-6.5-movie_poster_scrollbar-starting -->


		<div class="section-2-Trending-Top-10-main_desktop">
			<div class="section-2-trending-1">
				<h1>Comedy</h1>
			</div>
			<div class="parent-2-1">
				<div class="scroll-container-2-1">
					<c:forEach var="Comedy" items="${ComedyList}">
						<div class="child-2-1">
							<form name="watch" action="giving_rating" method="Post">
								<!-- Passing the movie id to the showMovieDetails function -->
								<input type="hidden" id="movie_watch" name="m_id"
									value="${Comedy.m_id}" />
								<button type="submit">
									<img
										src="${pageContext.request.contextPath}/resources/images/${Comedy.getMovie_mapping_name().replace(' ','')}.jpg"
										alt="${Comedy.movie_mapping_name}">
								</button>
							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>


		<!-- website-section-6.5-movie_poster_scrollbar-ending -->


		<!---------------- section-7-all-categories-start---------------->
		<div class="section-7-all-categories-name">
			<div class="section-7-main-box">
				<div class="section-7-div-1">
					<h4>Popular TV Shows in</h4>
					<h4>India</h4>
					<ul>
						<li>Mahabharat</li>
						<li>Kahan ho Tum</li>
						<li>Jhansi ki Rani</li>
						<li>Kumkum Bhagya</li>
						<li>Kundali Bhagya</li>
						<li>Bhagya Lakshmi</li>
						<li>Meet</li>
						<li>Annapoorna</li>
						<li>Indira</li>
						<li>Jodha Akbar</li>
						<li>Heer</li>


					</ul>
				</div>
				<div class="section-7-div-2">
					<h4>Premium Movies</h4>
					<ul>
						<li>kakuda</li>
						<li>Rautu ka Raaz</li>
						<li>Luv Ki Arrange marrige</li>
						<li>Baster</li>
						<li>Main Atal Hoon</li>
						<li>The Kerala Story</li>
						<li>Silence 2</li>
						<li>Sam Bahadur</li>
						<li>Kadak Singh</li>
						<li>Kabir Singh</li>
						<li>Hanu-Man</li>
						<li>RRR</li>
						<li>KGF</li>
						<li>Uri:The Surgical Strike</li>

					</ul>
				</div>

				<div class="section-7-div-3">
					<h4>Popular Live TV Channels in</h4>
					<h4>India</h4>
					<ul>
						<li>ZEE News</li>
						<li>ZEE TV HD</li>
						<li>&TV HD</li>
						<li>Zee Marathi HD</li>
					</ul>

				</div>
				<div class="section-7-div-4">
					<h4>Popular Web Series</h4>
					<ul>
						<li>Paruvu</li>
						<li>The Broken news</li>
						<li>Love Bites</li>
						<li>Black Widows</li>
						<li>Duranga 2</li>
						<li>Taj</li>
						<li>Pitchers</li>
						<li>Gaalivana</li>
					</ul>

				</div>
				<div class="section-7-div-5">
					<h4>Games & News</h4>
					<h4>Worldwide</h4>
					<ul>
						<li>Play</li>
						<li>Stories</li>
						<li>ILT20 2024</li>
						<li>ILT20 Schedule</li>
						<li>Abu Dhabi Knight Riders</li>
						<li>Desert Vipers</li>
						<li>Dubai Capitals</li>
						<li>Gulf Giants</li>
						<li>Mi Emirates</li>
						<li>Sharjah Warriors</li>
					</ul>

				</div>

			</div>
		</div>

		<!---------------- section-7-all-categories-end---------------->


		<!-----section-8-footer--- starting------------------>
		<div class="section-8-footer_desktop">
			<div class="follow-us">
				<div class="follow-us-name">
					<h3 style="color: white;">Follow us on</h3>
				</div>
				<div class="follow-us-website-logos">
					<div class="facebook">
						<img src="${pageContext.request.contextPath}/resources/images/facebook.png"
							alt="facebook">
					</div>
					<div class="twitter">
						<img src="${pageContext.request.contextPath}/resources/images/twitter.png"
							alt="twitter">
					</div>
					<div class="instagram">
						<img src="${pageContext.request.contextPath}/resources/images/instagram.png"
							alt="instagram">
					</div>
				</div>
			</div>

			<div class="more-info-section">
				<div class="more-info-section-1_desk">
					<div class="more-info-sec-1-1">
						<a href=""><h3>mtvonline</h3></a>
					</div>
					<div class="more-info-sec-1-1.2">
						<a href="adminlogin"><h5>admin</h5></a>
					</div>
					<div class="more-info-sec-1-2">
						<a href=""><h5>Privacy and Terms</h5></a>
					</div>
					<div class="more-info-sec-1-3">
						<a href="About_Us_page"><h5>About Us</h5></a>
					</div>
					<div class="more-info-sec-1-4">
						<a href=""><h5>Products</h5> </a>
					</div>
					<div class="more-info-sec-1-5">
						<a href=""><h5>Help</h5></a>
					</div>
				</div>
				<div class="more-info-section-2">
					<h3>
						All material<span>&copy; 2024 mtvonline company Pvt.Ltd.All
							Rights Reserved 2024</span>
					</h3>
				</div>
			</div>
		</div>
		<!-----------------------section-8-footer-end------------------>



	</div>
	<!-- ------------desktop html view-ending--------  -->





	<!-- html-for--tablet-starting -->


	<div class="wrapper_tablet_view">


		<!-- ----------navbar_menu_mobile_and_tablet_view-starting--------- -->

		<div class="navbar_menu_mobile_and_tablet_view">

			<nav class="navbar navbar-light bg-light fixed-top">
				<div class="container-fluid">
					<a class="navbar-brand" href="#"><h3>mtvonline</h3></a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
						aria-controls="offcanvasNavbar">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="offcanvas offcanvas-end" tabindex="-1"
						id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
						<div class="offcanvas-header">
							<h5 class="offcanvas-title" id="offcanvasNavbarLabel">Profile</h5>
							<button type="button" class="btn-close text-reset"
								data-bs-dismiss="offcanvas" aria-label="Close"></button>
						</div>
						<div class="offcanvas-body">
							<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="#">Home</a></li>
								<li class="nav-item"><a class="nav-link" href="#">TV
										shows</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Movies</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#">Web
										series</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Channels</a>
								</li>

								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									id="offcanvasNavbarDropdown" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> Profile </a>
									<ul class="dropdown-menu"
										aria-labelledby="offcanvasNavbarDropdown">
										<li><a class="dropdown-item" href="profile">
												<button id="myButton-User_profile">Profile</button>
										</a></li>
										<li><a class="dropdown-item" href="watchlist"><button
													id="myButton-watchList">Watch List</button></a></li>

										<li><a class="dropdown-item" href="#"><button
													id="myButton_plans_offer">Planes And Offers</button></a></li>

										<li><a class="dropdown-item" href="#"><button
													id="myButton-Region">India</button></a></li>


										<li><a class="dropdown-item" href="#">Help And
												Support</a></li>

										<li>
											<hr class="dropdown-divider">
										</li>
										<li><a class="dropdown-item" href="user_log_out"><button
													id="myButton-log_out">Log out</button></a></li>


									</ul></li>

							</ul>
							<form class="d-flex">
								<input class="form-control me-2" type="search"
									placeholder="Search" aria-label="Search">
								<button class="btn btn-outline-success" type="submit">Search</button>
							</form>
						</div>
					</div>
				</div>
			</nav>

		</div>
		<!-- -------navbar_menu_mobile_and_tablet_view-ending--------- -->


		<!-- -----------section_1_banner_mobile_and_tablet_view-starting----------- -->
		<div id="carouselExampleCaptions" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div id="movieCarousel" class="carousel slide"
				data-bs-ride="carousel" data-bs-interval="3000">
				<!-- auto-slide every 3 seconds -->
				<div class="carousel-inner">
					<c:forEach var="banner" items="${bannersList}" varStatus="status">
						<div class="carousel-item ${status.index == 0 ? 'active' : ''}">
							<a href="userlogin"> <img
								src="${pageContext.request.contextPath}/resources/images/${banner.getBanner_name().replace(' ','')}.jpg"
								class="d-block w-100" alt="${banner.banner_name}">
							</a>
							<div class="carousel-caption d-none d-md-block">
								<h5>${banner.getBanner_name()}</h5>
								<p>${banner.getBanner_highlights()}</p>
							</div>
						</div>
					</c:forEach>
				</div>

				<script>
    // Initialize the carousel with continuous looping
    var myCarousel = document.querySelector('#movieCarousel');
    var carousel = new bootstrap.Carousel(myCarousel, {
        interval: 3000,  // Change this value to set time between slides
        wrap: true,      // Ensure the carousel loops
        ride: 'carousel' // Start the carousel automatically
    });
</script>

				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>
		<!-- -----------section_1_banner_mobile_and_tablet_view-ending----->


		<!-- website-section-1.5-movie_poster_scrollbar-starting -->


		<div class="section-2-Trending-Top-10-main_desktop">
			<div class="section-2-trending-1">
				<h1>Latest Releases</h1>
			</div>
			<div class="parent-2-1">
				<div class="scroll-container-2-1">
					<c:forEach var="newmovie" items="${New_Realeses}">
						<div class="child-2-1">
							<form name="watch" action="giving_rating" method="Post">
								<!-- Passing the movie id to the showMovieDetails function -->
								<input type="hidden" id="movie_watch" name="m_id"
									value="${newmovie.m_id}" />
								<button type="submit" id="select_movie">
									<img
										src="${pageContext.request.contextPath}/resources/images/${newmovie.getMovie_mapping_name().replace(' ','')}.jpg"
										alt="${newmovie.movie_mapping_name}">
									<!-- 	<img  id="second-image"
										src="/movies_recommendation/resources/images/play-circle.png"
										alt=""> -->
								</button>
							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<!-- website-section-1.5-movie_poster_scrollbar-ending -->


		<!-- website-section-2-movie_poster_scrollbar-starting -->
		<div class="section-2-Trending-Top-10-main_desktop">
			<div class="section-2-trending-1">
				<h1>Trending Top 10 on mtvonline</h1>
			</div>
			<div class="parent-2-1">
				<div class="scroll-container-2-1">
					<c:forEach var="trending" items="${TrendingList}">
						<div class="child-2-1">
							<form name="watch" action="giving_rating" method="Post">
								<!-- Passing the movie id to the showMovieDetails function -->
								<input type="hidden" id="movie_watch" name="m_id"
									value="${trending.m_id}" />
								<button type="submit" id="select_movie">
									<img
										src="${pageContext.request.contextPath}/resources/images/${trending.getMovie_mapping_name().replace(' ','')}.jpg"
										alt="${trending.movie_mapping_name}">
								</button>
							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<!-- website-section-2-movie_poster_scrollbar-ending -->


		<!-- website-section-3-movie_poster_scrollbar-starting -->

		<div class="section-2-Trending-Top-10-main_desktop">
			<div class="section-2-trending-1">
				<h1>Action</h1>
			</div>
			<div class="parent-2-1">
				<div class="scroll-container-2-1">
					<c:forEach var="Action" items="${ActionList}">
						<div class="child-2-1">
							<form name="watch" action="giving_rating" method="Post">
								<!-- Passing the movie id to the showMovieDetails function -->
								<input type="hidden" id="movie_watch" name="m_id"
									value="${Action.m_id}" />
								<button type="submit">
									<img
										src="${pageContext.request.contextPath}/resources/images/${Action.getMovie_mapping_name().replace(' ','')}.jpg"
										alt="${Action.movie_mapping_name}">
								</button>
							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<!-- website-section-3-movie_poster_scrollbar-ending -->



		<!-------------- section-4-add-section-starting----------->
		<div class="section-4-add-banner">
			<a href="https://www.getonecard.app/"><img
				src="${pageContext.request.contextPath}/resources/images/Ad_1.jpg" alt="One card Add"></a>
		</div>

		<!-------------- section-4-add-section-end--------------->



		<!-- website-section-5-movie_poster_scrollbar-starting -->
		<div class="section-2-Trending-Top-10-main_desktop">
			<div class="section-2-trending-1">
				<h1>Drama</h1>
			</div>
			<div class="parent-2-1">
				<div class="scroll-container-2-1">
					<c:forEach var="Drama" items="${DramaList}">
						<div class="child-2-1">
							<form name="watch" action="giving_rating" method="Post">
								<!-- Passing the movie id to the showMovieDetails function -->
								<input type="hidden" id="movie_watch" name="m_id"
									value="${Drama.m_id}" />
								<button type="submit">
									<img
										src="${pageContext.request.contextPath}/resources/images/${Drama.getMovie_mapping_name().replace(' ','')}.jpg"
										alt="${Drama.movie_mapping_name}">
								</button>
							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- website-section-5-movie_poster_scrollbar-ending -->

		<!-------------- section-5.5-add-section-starting----------->
		<div class="section-5_5-add-banner">
			<a
				href="https://www.sonyliv.com/shows/tanaav-1700000994?utm_source=imdb&utm_medium=paid&utm_campaign=branding_tanaav_s2&utm_term=hindi_content_ros_mobile_desktop&utm_content=india_streaming_now_970x250"><img
				src="${pageContext.request.contextPath}/resources/images/Tanaav_2_add.jpg"
				alt="Tanaav 2 Add"></a>
		</div>
		<!-------------- section-5.5-add-section-end--------------->

		<!-- website-section-6-movie_poster_scrollbar-starting -->

		<div class="section-2-Trending-Top-10-main_desktop">
			<div class="section-2-trending-1">
				<h1>Top Hollywood picks for you</h1>
			</div>
			<div class="parent-2-1">
				<div class="scroll-container-2-1">
					<c:forEach var="hollywood" items="${HollywoodList}">
						<div class="child-2-1">
							<form name="watch" action="giving_rating" method="Post">
								<!-- Passing the movie id to the showMovieDetails function -->
								<input type="hidden" id="movie_watch" name="m_id"
									value="${hollywood.m_id}" />
								<button type="submit">
									<img
										src="${pageContext.request.contextPath}/resources/images/${hollywood.getMovie_mapping_name().replace(' ','')}.jpg"
										alt="${hollywood.movie_mapping_name}">
								</button>
							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<!-- website-section-6-movie_poster_scrollbar-ending -->


		<!-- website-section-6.5-movie_poster_scrollbar-starting -->


		<div class="section-2-Trending-Top-10-main_desktop">
			<div class="section-2-trending-1">
				<h1>Comedy</h1>
			</div>
			<div class="parent-2-1">
				<div class="scroll-container-2-1">
					<c:forEach var="Comedy" items="${ComedyList}">
						<div class="child-2-1">
							<form name="watch" action="giving_rating" method="Post">
								<!-- Passing the movie id to the showMovieDetails function -->
								<input type="hidden" id="movie_watch" name="m_id"
									value="${Comedy.m_id}" />
								<button type="submit">
									<img
										src="${pageContext.request.contextPath}/resources/images/${Comedy.getMovie_mapping_name().replace(' ','')}.jpg"
										alt="${Comedy.movie_mapping_name}">
								</button>
							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>


		<!-- website-section-6.5-movie_poster_scrollbar-ending -->




		<!---------------- section-7-all-categories-start---------------->
		<div class="section-7-all-categories-name">
			<div class="section-7-main-box">
				<div class="section-7-div-1">
					<h4>Popular TV Shows in</h4>
					<h4>India</h4>
					<ul>
						<li>Mahabharat</li>
						<li>Kahan ho Tum</li>
						<li>Jhansi ki Rani</li>
						<li>Kumkum Bhagya</li>
						<li>Kundali Bhagya</li>
						<li>Bhagya Lakshmi</li>
						<li>Meet</li>
						<li>Annapoorna</li>
						<li>Indira</li>
						<li>Jodha Akbar</li>
						<li>Heer</li>


					</ul>
				</div>
				<div class="section-7-div-2">
					<h4>Premium Movies</h4>
					<ul>
						<li>kakuda</li>
						<li>Rautu ka Raaz</li>
						<li>Luv Ki Arrange marrige</li>
						<li>Baster</li>
						<li>Main Atal Hoon</li>
						<li>The Kerala Story</li>
						<li>Silence 2</li>
						<li>Sam Bahadur</li>
						<li>Kadak Singh</li>
						<li>Kabir Singh</li>
						<li>Hanu-Man</li>
						<li>RRR</li>
						<li>KGF</li>
						<li>Uri:The Surgical Strike</li>

					</ul>
				</div>

				<div class="section-7-div-3">
					<h4>Popular Live TV Channels in</h4>
					<h4>India</h4>
					<ul>
						<li>ZEE News</li>
						<li>ZEE TV HD</li>
						<li>&TV HD</li>
						<li>Zee Marathi HD</li>
					</ul>

				</div>
				<div class="section-7-div-4">
					<h4>Popular Web Series</h4>
					<ul>
						<li>Paruvu</li>
						<li>The Broken news</li>
						<li>Love Bites</li>
						<li>Black Widows</li>
						<li>Duranga 2</li>
						<li>Taj</li>
						<li>Pitchers</li>
						<li>Gaalivana</li>
					</ul>

				</div>
				<div class="section-7-div-5">
					<h4>Games & News</h4>
					<h4>Worldwide</h4>
					<ul>
						<li>Play</li>
						<li>Stories</li>
						<li>ILT20 2024</li>
						<li>ILT20 Schedule</li>
						<li>Abu Dhabi Knight Riders</li>
						<li>Desert Vipers</li>
						<li>Dubai Capitals</li>
						<li>Gulf Giants</li>
						<li>Mi Emirates</li>
						<li>Sharjah Warriors</li>
					</ul>

				</div>

			</div>
		</div>

		<!---------------- section-7-all-categories-end---------------->

		<!-----section-8-footer--- starting------------------>
		<div class="section-8-footer">
			<div class="follow-us">
				<div class="follow-us-name">
					<h3 style="color: white;">Follow us on</h3>
				</div>
				<div class="follow-us-website-logos">
					<div class="facebook">
						<img src="${pageContext.request.contextPath}/resources/images/facebook.png"
							alt="facebook">
					</div>
					<div class="twitter">
						<img src="${pageContext.request.contextPath}/resources/images/twitter.png"
							alt="twitter">
					</div>
					<div class="instagram">
						<img src="${pageContext.request.contextPath}/resources/images/instagram.png"
							alt="instagram">
					</div>
				</div>
			</div>

			<div class="more-info-section">
				<div class="more-info-section-1_mob_tab">
					<div class="more-info-sec-1-1">
						<a href=""><h3>mtvonline</h3></a>
					</div>
					<div class="more-info-sec-1-2">
						<a href=""><h5>Privacy and Terms</h5></a>
					</div>
					<div class="more-info-sec-1-3">
						<a href="About_Us_page"><h5>About Us</h5></a>
					</div>
					<div class="more-info-sec-1-4">
						<a href=""><h5>Products</h5> </a>
					</div>
					<div class="more-info-sec-1-5">
						<a href=""><h5>Help</h5></a>
					</div>
				</div>
				<div class="more-info-section-2">
					<h3>
						All material<span>&copy; 2024 mtvonline company Pvt.Ltd.All
							Rights Reserved 2024</span>
					</h3>
				</div>
			</div>
		</div>
		<!-----------------------section-8-footer-end------------------>


	</div>


	<!-- html-for--tablet-ending -->







</body>
</html>