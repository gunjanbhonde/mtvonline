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

<!-- for website fevicon image -->
<link rel="icon" type="image/x-icon"
	  href="${pageContext.request.contextPath}/resources/images/website-feviicon.png"/>

<!-- ------css file link---- -->
<!-- <link type="text/css" rel="stylesheet"
	href="/movies_recommendation/resources/css/selecting_movie.css" />
 -->
 <link type="text/css" rel="stylesheet" href="<c:url value='/resources/css/selecting_movie.css' />" />
<!-- --------------google font-poppins-link------- -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">

</head>



<body>

	<div class="main-div">


		<c:forEach var="m" items="${Details_of_Movies}">
			<div class="video-container">
				<iframe class="youtube-video"
					src="https://www.youtube.com/embed/${m.movie_trailer_link}?autoplay=1&mute=0&controls=1"
					allow="autoplay; encrypted-media" frameborder="0" allowfullscreen>
				</iframe>

				
				<div class="button-container">
					<h3>
						<span id="mname">${m.movie_title}</span>
					</h3>

					<h3>
						<span id="mcategory">${m.movie_category}</span>
					</h3>

					<div class="pop_up_second_container">
						<div class="pop_up_second_container_button_watch">
							<div class="pop_up_second_container_button_watch_1">
								<img
									src="${pageContext.request.contextPath}/resources/images/play_icon.png"
									alt="play icon">
							</div>
							<div class="pop_up_second_container_button_watch_2">
								<form name="watch" action="login_to_watch_movie" method="Post">
									<input type="hidden" id="movie_watch" name="m_id"
										value="${m.m_id}" /> <a href="userlogin"><button
											type="submit"
											class="pop_up_second_container_watch_Now_button">
											<h3>Login to Watch</h3>
										</button></a>

								</form>
							</div>
						</div>
						<div class="pop_up_second_container_button_watchList">
							<div class="pop_up_second_container_button_watchList_1">
								<img
									src="${pageContext.request.contextPath}/resources/images/add_to_watchlist.png"
									alt="watchlist icon">
							</div>
							<div class="pop_up_second_container_button_watchList_2">
								<form name="watch" action="login_to_watch_movie" method="Post">
									<input type="hidden" id="movie_watch" name="m_id"
										value="${m.m_id}" /> <a href="userlogin"><button
											type="submit"
											class="pop_up_second_container_watchlist_button">
											<h3>Add to WatchList</h3>
										</button></a>
								</form>
							</div>
						</div>
					</div>

				</div>

			</div>



			<div class="m1">

				<div class="m12">

					<div class="m122">
						<h3>
							Movie Description: <span style="color: #D51C53; font-size: 14px;">${m.movie_desc}</span>
						</h3>
					</div>

					<div class="m124">
						<h3>
							language: <span style="color: #D51C53; font-size: 14px;">${m.movie_language}</span>
						</h3>
					</div>
					<div class="m125">
						<h3>
							Movie Type: <span style="color: #D51C53; font-size: 14px;">${m.movie_type}</span>
						</h3>
					</div>
				</div>
				<div class="m13">
					<div class="m131">

						<h3>
							Director: <span style="color: #D51C53; font-size: 14px;">${m.movie_director_name}</span>
						</h3>
					</div>
					<div class="m132">
						<h3>
							Actors: <span style="color: #D51C53; font-size: 14px;">${m.movie_actor_1}</span>
						</h3>
					</div>
					<div class="m133">
						<h3>
							Actors: <span style="color: #D51C53; font-size: 14px;">${m.movie_actor_2}</span>
						</h3>
					</div>
					<div class="m134">

						<h3>
							Actors: <span style="color: #D51C53; font-size: 14px;">${m.movie_actor_3}</span>
						</h3>
					</div>
					<div class="m135">
						<h3>
							Budget: <span style="color: #D51C53; font-size: 14px;">${m.movie_budget}</span>
						</h3>
					</div>
					<div class="m136">
						<h3>
							Release Date: <span style="color: #D51C53; font-size: 14px;">${m.movie_release_date}</span>
						</h3>
					</div>
					<div class="m137">
						<h3>
							Country: <span style="color: #D51C53; font-size: 14px;">${m.movie_country}</span>
						</h3>
					</div>
					<div class="m138">
						<h3>
							Rating: <span style="color: yellow; font-size: 14px;">${m.average_rating}/5</span>
						</h3>
					</div>
				</div>

			</div>
		</c:forEach>


		<div class="rating_review_section">
		     <div class="rating_review_section-1">
				<h1>Reviews</h1>
			</div>
		     <div class="parentt-2-1">
				<div class="scroll-containerr-2-1">
					<c:forEach var="rating_and_review" items="${selected_movie_rating_reviews}">
						<div class="childd-2-1">					
							<h3>
							User: <span style="color: #D51C53; font-size: 14px;">${rating_and_review.user_name}</span>
					    	</h3>

					    	<h3>
							Rating: <span style="color: #D51C53; font-size: 14px;">${rating_and_review.rating}</span>
					    	</h3>
					    	    	
					    	<h3>
							Review: <span style="color: #D51C53; font-size: 14px;">${rating_and_review.review}</span>
					    	</h3>

						</div>
					</c:forEach>
				</div>
			</div>	
		</div>



		<!-- website-section-1.5-movie_poster_scrollbar-starting -->
		<div class="section-2-Trending-Top-10-main_desktop">
			<div class="section-2-trending-1">
				<h1>More Like this</h1>
			</div>
			<div class="parent-2-1">
				<div class="scroll-container-2-1">
					<c:forEach var="similar" items="${Similar_Like_Movies}">
						<div class="child-2-1">
							<form name="watch" action="giving_mid" method="Post">
								<!-- Passing the movie id to the showMovieDetails function -->
								<input type="hidden" id="movie_watch" name="m_id"
									value="${similar.m_id}" />
								<button type="submit" id="select_movie">
									<img
										src="${pageContext.request.contextPath}/resources/images/${similar.getMovie_mapping_name().replace(' ','')}.jpg"
										alt="${similar.movie_mapping_name}">
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



</body>
</html>