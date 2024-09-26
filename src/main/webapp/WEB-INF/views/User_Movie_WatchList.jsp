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




<!-- --------------google font-poppins-link------- -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">


<style type="text/css">
*{
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  background-color:#0C0F12;
}
@media (min-width:1024px) and (max-width:1540px){

.Wrapper_User_profile{
  height: 694px;
  width: 100%;
  border: 1px solid white;
  display: flex;
  flex-direction: column;
    background-color:#0C0F12;
}
}
</style>

	<style>
/* <!-- website-section-2-movie_poster_scrollbar-starting --> */
.section-2-Trending-Top-10-main_desktop {
	height: 46vh;
	width: 97%;
	margin-top: 4px;
	margin-left: 2%;
}

.section-2-trending-1 {
	height: 8%;
	width: 98%;
	margin-left: 1%;
	border-radius: 5px;
}

.section-2-trending-1 h1 {
	margin-left: 5px;
	margin-top: 7px;
	font-size: 109%;
	font-weight: 500;
	color: white;
	background-color: transparent;
	font-family: "Poppins", sans-serif;
}

.parent-2-1 {
	width: 98%;
	height: 91%;
	margin-top: 1px;
	margin-left: 1%;
	overflow-x: auto; /* Allow horizontal scrolling */
	overflow-y: hidden; /* Hide vertical overflow */
	white-space: nowrap; /* Prevent content from wrapping */
	position: relative;
}

.scroll-container-2-1 {
	display: inline-flex;
}

.child-2-1 {
	flex: 0 0 auto;
	margin-right: 10px;
	margin-top: 1.6%;
	height: 50%;
	width: 11.2%;
	margin-left: 12px;
	/* border: 1px solid white; */
	transition: transform .2s; /* Animation */
	position: relative;
}

#select_movie {
	border-radius: 4px;
}

.child-2-1 img {
	/* height: 100%;
  width: auto; */
	height: 100%;
	width: 100%;
	display: block;
}
/* 	#second-image{
	dispaly:none;
	background-color: transparent;
	} */
.child-2-1 :hover {
	transform: scale(1.05);
	/* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
	border: 1px solid white;
	border-radius: 8px;
}

.child-2-1 a button {
	height: 100%;
	width: 100%;
	border-radius: 4px;
	background-color: black;
}

/* Customize the scrollbar */
.parent::-webkit-scrollbar {
	height: 8px;
}

.parent::-webkit-scrollbar-track {
	background-color: #0C0F12;
}

.parent::-webkit-scrollbar-thumb {
	background-color: #0C0F12;
	border-radius: 10px;
}

.parent::-webkit-scrollbar-thumb:hover {
	background-color: #0C0F12;
}

@media ( max-width : 768px) {
	.child {
		margin-right: 5px;
	}
	.child img {
		border-radius: 4px;
	}
}
/* <!-- website-section-2-movie_poster_scrollbar-ending --> */

@media ( min-width :1px) and (max-width:1024px) {
.section-2-Trending-Top-10-main_desktop {
		height: 36vh;
		width: 97%;
		margin-top: 4px;
		margin-left: 2%;
	
	}
	.section-2-trending-1 {
		height: 8%;
		width: 100%;
		border-radius: 5px;
		/* background-color: antiquewhite; */
	
	}
	.section-2-trending-1 h1 {
		margin-left: 5px;
		margin-top: 1px;
		font-size: 100%;
		font-weight: 500;
		color: white;
		background-color: transparent;
		font-family: "Poppins", sans-serif;
	}
	.parent-2-1 {
		width: 98%;
		height: 91%;
		margin-top: 1px;
		margin-left: 1%;
		overflow-x: auto; /* Allow horizontal scrolling */
		overflow-y: hidden; /* Hide vertical overflow */
		white-space: nowrap; /* Prevent content from wrapping */
		position: relative;
	
	}
	.scroll-container-2-1 {
		display: inline-flex;
	}
	.child-2-1 {
		flex: 0 0 auto;
		margin-right: 10px;
		margin-top: 1.7%;
		height: 50%;
		width: 13.4%;
		margin-left: 12px;
		/* border: 1px solid white; */
		transition: transform .2s; /* Animation */
		position: relative;
	}
	#select_movie {
		border-radius: 4px;
	}
	.child-2-1 img {
		/* height: 100%;
  width: auto; */
		height: 100%;
		width: 100%;
		display: block;
	}
	.child-2-1 :hover {
		transform: scale(1.05);
		/* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
		border: 1px solid white;
		border-radius: 8px;
	}
	.child-2-1 a button {
		height: 100%;
		width: 100%;
		border-radius: 4px;
		background-color: black;
	}

	/* Customize the scrollbar */
	.parent::-webkit-scrollbar {
		height: 8px;
	}
	.parent::-webkit-scrollbar-track {
		background-color: #0C0F12;
	}
	.parent::-webkit-scrollbar-thumb {
		background-color: #0C0F12;
		border-radius: 10px;
	}
	.parent::-webkit-scrollbar-thumb:hover {
		background-color: #0C0F12;
	}
	@media ( max-width : 768px) {
		.child {
			margin-right: 5px;
		}
		.child img {
			border-radius: 4px;
		}

}

@media ( max-width :480px) {
		.section-2-Trending-Top-10-main_desktop {
			height: 24vh;
			width: 100%;
			margin-top: 4px;
		}
		.section-2-trending-1 {
			height: 14%;
			width: 98%;
			margin-left: 1%;
			border-radius: 5px;
		}
		.section-2-trending-1 h1 {
			margin-left: 5px;
			margin-top: 7px;
			font-size: 65%;
			font-weight: 500;
			color: white;
			background-color: transparent;
			font-family: "Poppins", sans-serif;
		}
		.parent-2-1 {
			width: 98%;
			height: 20vh;
			margin-top: 1px;
			margin-left: 1%;
			overflow-x: auto; /* Allow horizontal scrolling */
			overflow-y: hidden; /* Hide vertical overflow */
			white-space: nowrap; /* Prevent content from wrapping */
			position: relative;
		}
		.scroll-container-2-1 {
			display: inline-flex;
		}
		.child-2-1 {
			flex: 0 0 auto;
			margin-right: 10px;
			margin-top: 1.8%;
			height: 10%;
			width: 29%;
			margin-left: 3px;
			/* border: 1px solid white; */
			transition: transform .2s; /* Animation */
			position: relative;
			border-radius: 4px;
		}
		.child-2-1 img {
			/* height: 100%;
  width: auto; */
			height: 100%;
			width: 100%;
			display: block;
			border-radius: 4px;
		}
		.child-2-1 a button {
			height: 100%;
			width: 100%;
			border-radius: 4%;
		}
	}

</style>
</head>
<body>

<div class="Wrapper_User_profile">

<!-- website-section-1.5-movie_poster_scrollbar-starting -->
		<div class="section-2-Trending-Top-10-main_desktop">
			<div class="section-2-trending-1">
				<h1>Movie WatchList</h1>
			</div>
			<div class="parent-2-1">
				<div class="scroll-container-2-1">
					<c:forEach var="m_watchlist" items="${movie_watchlist}">
						<div class="child-2-1">
							<form name="watch" action="giving_mid" method="Post">
								<!-- Passing the movie id to the showMovieDetails function -->
								<input type="hidden" id="movie_watch" name="m_id"
									value="${m_watchlist.m_id}" />
								<button type="submit" id="select_movie">
									<img
										src="${pageContext.request.contextPath}/resources/images/${m_watchlist.getMovie_mapping_name().replace(' ','')}.jpg"
										alt="${m_watchlist.movie_mapping_name}">
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




</div>




</body>
</html>