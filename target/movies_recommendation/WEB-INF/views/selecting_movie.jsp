<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mtvonline</title>

<!-- for website fevicon image -->
<link rel="icon" type="image/x-icon"
	href="/movies_recommendation/resources/images/website-feviicon.png" />

<!-- ------css file link---- -->
<!-- <link type="text/css" rel="stylesheet"
	href="/movies_recommendation/resources/css/selecting_movie.css" />
 -->

<!-- --------------google font-poppins-link------- -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">

</head>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: Arial, sans-serif;
	background-color: #0C0F12;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.main-div {
	width: 100%;
	height: 2400px;
	display: flex;
	flex-direction: column;
}

.video-container {
	position: relative;
	width: 100%;
	height: 739px;
	margin-top: 852px;
	overflow: hidden;
}

.youtube-video {
	width: 100%;
	height: 100%;
	border: none;
}

.button-container {
	position: absolute;
	bottom: 70px;
	left: 50px;
	height: 260px;
	width: 680px;
	display: none;
}

#mname {
	margin-left: 12%;
	margin-top: -100px;
	color: white;
	font-size: 24px;
	font-weight: 550;
	font-family: "Poppins", sans-serif;
	color: white;
}
#mcategory{
 color: white;
  margin-left: 13%;
   font-size: 13px;
}
.pop_up_second_container {
	width: 100%; /* Could be more or less, depending on screen size */
	height: 71%;
	margin-top: 1%;
	display: flex;
	flex-direction: column;
}

.pop_up_second_container_button_watch {
	height: 25%;
	width: 56%;
	border: 1px solid white;
	border-radius: 4px;
	margin-top: 2%;
	margin-left: 7%;
	flex-direction: row;
	display: flex;
	/* background-color: white; */
}

.pop_up_second_container_button_watch_1 {
	height: 100%;
	width: 20%;
	background-color: white;
}

.pop_up_second_container_button_watch_1 img {
	height: 38%;
	width: 36%;
	margin-left: 25%;
	margin-top: 19%;
	border: none;
}

.pop_up_second_container_button_watch_2 {
	height: 100%;
	width: 80%;
	/* border: 1px solid white; */
	background-color: white;
}

.pop_up_second_container_button_watch_2 button {
	height: 100%;
	width: 100%;
	cursor: pointer;
	background-color: transparent;
	border: none;
}

.pop_up_second_container_button_watch_2 h3 {
	margin-left: 3%;
	color: black;
	font-size: 15px;
	font-weight: 550;
	text-align:left;
	margin-top:3.5%;
	font-family: "Poppins", sans-serif;
}

.pop_up_second_container_button_watchList {
	height: 25%;
	width: 56%;
	border: 1px solid white;
	border-radius: 4px;
	margin-top:3%;
	margin-left: 7%;
	flex-direction: row;
	display: flex;
	/* background-color: white; */
}

.pop_up_second_container_button_watchList_1 {
	height: 100%;
	width: 20%;
	background-color: white;
}

.pop_up_second_container_button_watchList_1 img {
	height: 38%;
	width: 36%;
	margin-left: 25%;
	margin-top: 19%;
	border: none;
}

.pop_up_second_container_button_watchList_2 {
	height: 100%;
	width: 80%;
	/* border: 1px solid white; */
	background-color: white;
}

.pop_up_second_container_button_watchList_2 button {
	height: 100%;
	width: 100%;
	cursor: pointer;
	background-color: transparent;
	border: none;
	border: 1px solid white;
}

.pop_up_second_container_button_watchList_2 h3 {
	margin-left: 3%;
	color: black;
	font-size: 15px;
	font-weight: 550;
	text-align:left;
	margin-top:0.5%;
	font-family: "Poppins", sans-serif;
}

.btn {
	padding: 10px 20px;
	background-color: #007BFF;
	color: white;
	border: none;
	border-radius: 4px;
	margin-right: 10px;
	cursor: pointer;
	font-size: 16px;
	transition: background-color 0.3s ease;
}

.btn:hover {
	background-color: #0056b3;
}

.video-container:hover .button-container {
	display: block;
}

/* Responsive Styles */
@media ( max-width : 768px) {
	.video-container {
		height: 300px;
	}
	.btn {
		padding: 8px 16px;
		font-size: 14px;
	}
}
@media ( min-width :1px) and (max-width:480px) {
.main-div {
	width: 100%;
	height: 2400px;
	display: flex;
	flex-direction: column;
}
.video-container {
	position: relative;
	width: 100%;
	height: -94px;
	margin-top: 852px;
	overflow: hidden;
}
}
@media ( min-width :1px) and (max-width:480px) {

	.video-container {
		height: 250px;
	}
	.btn {
		padding: 6px 12px;
		font-size: 12px;
	}
	.button-container {
	position: absolute;
	bottom: 90px;
	left: 50px;
	height:40%;
	width: 80%;
	display: none;

}
#mname {
	margin-left: 12%;
	margin-top: -100px;
	color: white;
	font-size: 14px;
	font-weight: 550;
	font-family: "Poppins", sans-serif;
	color: white;
}
#mcategory {
 color: white;
  margin-left: 13%;
   font-size: 7px;
   margin-top: -13%;
}
.pop_up_second_container {
	width: 100%; /* Could be more or less, depending on screen size */
	height: 71%;
	margin-top: 4%;
	display: flex;
	flex-direction: column;
}

.pop_up_second_container_button_watch {
	height: 45%;
	width: 56%;
	border: 1px solid white;
	border-radius: 4px;
	margin-top: 2%;
	margin-left: 7%;
	flex-direction: row;
	display: flex;
	/* background-color: white; */
}

.pop_up_second_container_button_watch_1 {
	height: 100%;
	width: 20%;
	background-color: white;
}

.pop_up_second_container_button_watch_1 img {
	height: 38%;
	width: 36%;
	margin-left: 25%;
	margin-top: 25%;
	border: none;
}

.pop_up_second_container_button_watch_2 {
	height: 100%;
	width: 80%;
	/* border: 1px solid white; */
	background-color: white;
}

.pop_up_second_container_button_watch_2 button {
	height: 100%;
	width: 100%;
	cursor: pointer;
	background-color: transparent;
	border: none;
}

.pop_up_second_container_button_watch_2 h3 {
	margin-left: 3%;
	color: black;
	font-size: 10px;
	font-weight: 550;
	text-align: left;
	margin-top:6%;
	font-family: "Poppins", sans-serif;
}

.pop_up_second_container_button_watchList {
	height: 45%;
	width: 56%;
	border: 1px solid white;
	border-radius: 4px;
	margin-top: 2%;
	margin-left: 7%;
	flex-direction: row;
	display: flex;
	border: 1px solid white;
	border-radius: 4px;
	margin-top: 2%;
}

.pop_up_second_container_button_watchList_1 {
	height: 100%;
	width: 20%;
	background-color: white;
}

.pop_up_second_container_button_watchList_1 img {
	height: 38%;
	width: 36%;
	margin-left: 25%;
	margin-top: 19%;
	border: none;
}

.pop_up_second_container_button_watchList_2 {
	height: 100%;
	width: 80%;
	/* border: 1px solid white; */
	background-color: white;
}

.pop_up_second_container_button_watchList_2 button {
	height: 100%;
	width: 100%;
	cursor: pointer;
	background-color: transparent;
	border: none;
	border: 1px solid white;
}

.pop_up_second_container_button_watchList_2 h3 {
	margin-left: 3%;
	color: black;
	font-size: 10px;
	font-weight: 550;
	text-align: left;
	font-family: "Poppins", sans-serif;
}			
}

.m1 {
	width: 100%;
	height: 270px;
	margin-top: 0%;
	display: flex;
	flex-direction: row;
}

.m12 {
	height: 100%;
	width: 50%;
	display: flex;
	flex-direction: column;
}
.m12 div {
	margin-left: 7%;
}
.m121 {
	/* border: 1px solid white; */
	margin-top: 3%;
	height: 12%;
	width: 100%;
	height: 12%;
}

.m12 h3 {
	color: white;
	font-size: 13px;
	margin-top: 8px;
	font-weight: 400;
	font-family: "Poppins", sans-serif;
}

.m13 {
	height: 100%;
	width: 50%;
	/* border: 1px solid white; */
	display: flex;
	margin-left: 3%;
	flex-direction: column;
}

.m13 h3 {
	color: white;
	font-size: 13px;
	margin-top: 8px;
	font-weight: 400;
	font-family: "Poppins", sans-serif;
}

.m13 div {
	height: 10%;
	width: 100%;
	margin-top: 0.3%;
	margin-left: 3%;
	/* border: 1px solid white; */
}

@media ( min-width :1px) and (max-width:480px) {

.m1 {
	width: 100%;
	height: 450px;
	margin-top: 0%;
	display: flex;
	flex-direction:column;

}

.m12 {
	height: 100%;
	width: 100%;
	display: flex;
	flex-direction: column;
}
.m12 div {
	margin-left: 7%;
}
.m121 {
	/* border: 1px solid white; */
	margin-top: 3%;
	height: 12%;
	width: 100%;
	height: 12%;
}

.m12 h3 {
	color: white;
	font-size: 13px;
	margin-top: 8px;
	font-weight: 400;
	font-family: "Poppins", sans-serif;
}

.m13 {
	height: 100%;
	width: 100%;
	/* border: 1px solid white; */
	display: flex;
	flex-direction: column;
	margin-left: 0px;
}

.m13 h3 {
	color: white;
	font-size: 13px;
	margin-top: 8px;
	font-weight: 400;
	font-family: "Poppins", sans-serif;
}

.m13 div {
	height: 10%;
	width: 100%;
	margin-top: 0.3%;
	margin-left: 3%;
	/* border: 1px solid white; */
}
}
/* section-7-all-categories-start----------------> */
.section-7-all-categories-name {
	/* border: 1px solid white; */
	height: 50vh;
	width: 100%;
	margin-top: 10px;
	/* background-color: #E9EBEE; */
}

.section-7-main-box {
	/* border: 1px solid #000; */
	height: 100%;
	width: 80%;
	margin-left: 10%;
	display: flex;
	flex-direction: row;
	justify-content: space-evenly;
}

.section-7-main-box div {
	height: 90%;
	width: 19%;
	margin-top: 2%;
	/* border: 1px solid #000; */
}

.section-7-main-box h4 {
	font-family: "Poppins", sans-serif;
	font-size: 12px;
	font-weight: 520;
	margin-top: 3px;
	margin-bottom: 5px;
	color: white;
}

.section-7-main-box div ul {
	list-style-type: none;
}

.section-7-main-box div ul li {
	cursor: pointer;
	font-family: "Poppins", sans-serif;
	font-size: 11px;
	font-weight: 400;
	margin-top: 2px;
	color: white;
}

.section-7-main-box div ul li:hover {
	color: #D51C53;
}

@media ( min-width :1px) and (max-width:480px) {
		.section-7-all-categories-name {
			/* border: 1px solid white; */
			height: 50vh;
			width: 100%;
			display:none;
			margin-top: 10px;
			/*   border: 1px solid white; */
		}
		.section-7-main-box {
			/* border: 1px solid #000;
            height: 100%;
            width: 80%;
            margin-left: 10%;
            display: flex;
            flex-direction:column;
            justify-content: space-evenly; */
			display: flex;
			flex-wrap: wrap;
			justify-content: space-around;
			padding: 10px;
			gap: 10px;
		}
		.section-7-main-box div {
			/* height: 90%;
            width: 19%;
            margin-top: 2%;
            border: 1px solid #000; */
			flex-grow: 1;
			min-width: 150px;
			max-width: 300px;
			/*     border: 1px solid white; */
			height: 300px;
		}
		.section-7-main-box h4 {
			font-family: "Poppins", sans-serif;
			font-size: 12px;
			font-weight: 520;
			margin-top: 3px;
			margin-bottom: 5px;
			color: white;
		}
		.section-7-main-box div ul {
			list-style-type: none;
		}
		.section-7-main-box div ul li {
			cursor: pointer;
			font-family: "Poppins", sans-serif;
			font-size: 11px;
			font-weight: 400;
			margin-top: 2px;
			color: white;
		}
		.section-7-main-box div ul li:hover {
			color: #D51C53;
		}
	}

/* 
      <!---------------- section-7-all-categories-end----------------> */

/* <!------section-8-footer-starting------------------> */
@import url(https://fonts.googleapis.com/css?family=Open+Sans:600);

.section-8-footer_desktop {
	height: 38vh;
	width: 100%;
	/* background-color:#F1F3F4 ; */
	/* border: 1px solid white; */
	display: flex;
	flex-direction: column;
}

.follow-us {
	height: 110px;
	width: 30%;
	margin-top: 12px;
	/* background-color:goldenrod; */
	margin-left: 60%;
	border-radius: 4px;
	/* border: 1px solid white; */
}

.follow-us-name {
	height: 20px;
	width: 30%;
	margin-left: 40px;
	margin-top: 2px;
	font-family: sans-serif;
	/* border: 1px solid white; */
	/* background-color: gold; */
}

.follow-us-name h3 {
	/* border-radius: 4px;
       padding-left: 7px; */
	margin-top: -3px;
	font-size: 17px;
}

.follow-us-website-logos {
	height: 50px;
	width: 60%;
	margin-left: 40px;
	margin-top: 1px;
	/* background-color: aqua; */
	display: flex;
	justify-content: space-around;
	border-radius: 8px;
}

.follow-us-website-logos div img {
	margin-top: 4px;
	height: 32px;
	width: 32px;
	margin-top: 10px;
	cursor: pointer;
	/* border: 1px solid #000; */
}

.more-info-section {
	height: 18vh;
	width: 100%;
	display: flex;
	flex-direction: column;
	margin-top: 10px;
	/* border: 1px solid white; */
}

.more-info-section-1_desk {
	width: 100%;
	height: 60%;
	/* border: 1px solid #000; */
	display: flex;
	flex-direction: row;
	text-decoration: none;
}

.more-info-section-1_desk div {
	height: 76%;
	width: 12%;
	margin-top: 6px;
	margin-left: 3%;
	/* border: 1px solid #000; */
}

.more-info-section-1_desk div h3 {
	font-size: 20px;
	margin-top: 20px;
	font-family: "Poppins", sans-serif;
	font-weight: 400;
	cursor: pointer;
	color: white;
	/* text-decoration:underline; */
}

.more-info-section-1-1  a h3:hover {
	text-decoration: none;
	color: yellow;
}

.more-info-section-1_desk div h5 {
	font-size: 15px;
	margin-top: 24px;
	font-family: "Poppins", sans-serif;
	font-weight: 400;
	cursor: pointer;
	color: white;
	text-decoration: none;
}

.more-info-section-1_desk a {
	text-decoration: none;
	color: inherit;
}

.more-info-section-1_desk a:hover {
	color: transparent;
}

.more-info-section-2 {
	width: 100%;
	height: 40%;
	/* border: 1px solid white; */
}

.more-info-section-2 h3 {
	font-size: 11px;
	margin-top: 10px;
	font-family: "Poppins", sans-serif;
	font-weight: 400;
	text-align: center;
	color: white;
}

@media ( min-width :1px) and (max-width:480px) {
		.section-8-footer {
			height: 43vh;
			width: 100%;
			margin-top: 1230px;
			/* background-color:#F1F3F4 ; */
			display: flex;
			flex-direction: column;
		}
		.follow-us {
			height: 24%;
			width: 70%;
			margin-top: 1px;
			/* background-color:goldenrod; */
			margin-left: 1%;
			border-radius: 4px;
			/* border: 1px solid white; */
		}
		.follow-us-name {
			height: 20px;
			width: 60%;
			margin-left: 4px;
			margin-top: 2px;
			font-family: sans-serif;
			/* border: 1px solid white; */
			/* background-color: gold;  */
		}
		.follow-us-name h3 {
			/* border-radius: 4px;
         padding-left: 7px; */
			margin-top: -3px;
			font-size: 13px;
		}
		.follow-us-website-logos {
			height: 50px;
			width: 60%;
			margin-left: 4px;
			margin-top: 1px;
			/* background-color: aqua; */
			display: flex;
			justify-content: space-around;
			border-radius: 8px;
		}
		.follow-us-website-logos div img {
			margin-top: 4px;
			height: 28px;
			width: 28px;
			margin-top: 10px;
			cursor: pointer;
			/* border: 1px solid #000; */
		}
		.more-info-section {
			height: 18vh;
			width: 100%;
			display: flex;
			flex-direction: column;
			margin-top: 1px;
			border: none;
		}
		.more-info-section-1_mob_tab {
			width: 100%;
			height: 60%;
			display: flex;
			flex-direction: column;
		}
		.more-info-section-1_mob_tab div {
			height: 26%;
			width: 60%;
			margin-top: 4px;
			margin-left: 3%;
		}
		.more-info-section-1_mob_tab div h3 {
			font-size: 15px;
			margin-top: 1px;
			font-family: "Poppins", sans-serif;
			font-weight: 400;
			cursor: pointer;
			color: white;
		}
		.more-info-section-1_mob_tab h5 {
			font-size: 12px;
			margin-top: -24px;
			font-family: "Poppins", sans-serif;
			font-weight: 400;
			cursor: pointer;
			color: white;
		}
		.more-info-section-2 {
			width: 100%;
			height: 40%;
			margin-top: 80px;
		}
		.more-info-section-2 h3 {
			font-size: 11px;
			margin-top: 10px;
			font-family: "Poppins", sans-serif;
			font-weight: 400;
			text-align: center;
			color: white;
		}
	}
/* <!-------section-8-footer-end------------------> */
</style>

<body>

	<div class="main-div">


		<c:forEach var="m" items="${Details_of_Movies}">
			<div class="video-container">
				<iframe class="youtube-video"
					src="https://www.youtube.com/embed/${m.movie_trailer_link}?autoplay=1&mute=0&controls=1"
					allow="autoplay; encrypted-media" frameborder="0" allowfullscreen>
				</iframe>

				<!-- <iframe class="youtube-video"
				src="https://www.youtube.com/embed/wV4FmpYabq8?autoplay=1&mute=0&controls=1"
				allow="autoplay; encrypted-media" frameborder="0" allowfullscreen>
			</iframe> -->

				<div class="button-container">
					<h3>
						<span id="mname">${m.movie_title}</span>
					</h3>

					<h3>
						<span  id ="mcategory">${m.movie_category}</span>
					</h3>

					<div class="pop_up_second_container">
						<div class="pop_up_second_container_button_watch">
							<div class="pop_up_second_container_button_watch_1">
								<img
									src="/movies_recommendation/resources/images/play-button.png"
									alt="">
							</div>
							<div class="pop_up_second_container_button_watch_2">
								<form name="watch" action="login_to_watch_movie" method="Post">
									<input type="hidden" id="movie_watch" name="m_id"
										value="${m.m_id}" /> 
										<a href="userlogin"><button
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
									src="/movies_recommendation/resources/images/add_to_watchlist.png"
									alt="">
							</div>
							<div class="pop_up_second_container_button_watchList_2">
								<a href="userlogin"><button type="button"
										class="pop_up_second_container_watchlist_button">
										<h3>Add to WatchList</h3>
									</button></a>
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
						<img src="/movies_recommendation/resources/images/facebook.png"
							alt="">
					</div>
					<div class="twitter">
						<img src="/movies_recommendation/resources/images/twitter.png"
							alt="">
					</div>
					<div class="instagram">
						<img src="/movies_recommendation/resources/images/instagram.png"
							alt="">
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