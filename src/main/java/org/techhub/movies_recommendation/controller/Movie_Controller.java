package org.techhub.movies_recommendation.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.techhub.movies_recommendation.model.Admin;
import org.techhub.movies_recommendation.model.Banner;
import org.techhub.movies_recommendation.model.Movie;
import org.techhub.movies_recommendation.model.UserModel;
import org.techhub.movies_recommendation.service.Admin_Service;
import org.techhub.movies_recommendation.service.Banner_Service;
import org.techhub.movies_recommendation.service.Movie_Service;
import org.techhub.movies_recommendation.service.User_Service;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class Movie_Controller extends HttpServlet {

	/*---------------for---Adding -new movie--------*/

	@Autowired
	User_Service user_service;

	@Autowired
	Admin_Service admin_service;

	@Autowired
	Movie_Service movie_service;

	@Autowired
	Banner_Service banner_Service;

	@RequestMapping("/")
	public String homepage(Model model) {

		List<Banner> getallbanners = banner_Service.is_geting_all_banners();
		model.addAttribute("bannersList", getallbanners);

		List<Movie> getAllnew_movie = movie_service.is_geting_all_new_releases();
		model.addAttribute("New_Realeses", getAllnew_movie);

		List<Movie> getAllTrendings = movie_service.is_geting_all_trendings();
		model.addAttribute("TrendingList", getAllTrendings);
		/* System.out.println(getAllTrendings); */

		List<Movie> getAllAction = movie_service.is_geting_all_Action();
		model.addAttribute("ActionList", getAllAction);

		List<Movie> getAllDrama = movie_service.is_geting_all_Drama();
		model.addAttribute("DramaList", getAllDrama);

		List<Movie> getAllhollywood = movie_service.is_geting_all_Hollywood();
		model.addAttribute("HollywoodList", getAllhollywood);

		List<Movie> getAllComedy = movie_service.is_geting_all_Comedy();
		model.addAttribute("ComedyList", getAllComedy);

		return "index";
	}

	/*
	 * @RequestMapping("/add_new_movie") public String add_New_Movie(Movie
	 * movie, @RequestParam("movie_image") CommonsMultipartFile file,
	 * HttpServletRequest request, HttpSession session, Model model) {
	 * 
	 * boolean m = movie_service.isADD_NEW_Movie(movie);
	 * 
	 * System.out.println(file.getOriginalFilename());
	 * System.out.println(file.getContentType()); byte[] bytes = file.getBytes();
	 * 
	 * String path = session.getServletContext().getRealPath("/") + "resources" +
	 * File.separator + "images" + File.separator + file.getOriginalFilename();
	 * System.out.println("Path is: " + path);
	 * 
	 * try { FileOutputStream fos = new FileOutputStream(path); fos.write(bytes);
	 * fos.close(); System.out.println("File upload suuuuu.....");
	 * 
	 * } catch (Exception ex) { ex.printStackTrace(); }
	 * 
	 * model.addAttribute("imagename", file.getOriginalFilename());
	 * 
	 * List<Movie> Get_BEst = movie_service.Get_Alls_best_movies();
	 * model.addAttribute("goodMovies", Get_BEst);
	 * 
	 * List<Movie> Get_worst = movie_service.Get_Alls_worst_movies();
	 * model.addAttribute("worstMovies", Get_worst);
	 * 
	 * List<Movie> get_All_movie_info = movie_service.get_ALL_Movies_info();
	 * model.addAttribute("get_all_movie_info", get_All_movie_info);
	 * 
	 * List<Admin> get_All_Admin_info = admin_service.get_ALL_Admin_info();
	 * model.addAttribute("get_all_admmin_info", get_All_Admin_info);
	 * 
	 * List<UserModel> get_All_user_info = user_service.get_ALL_User_info();
	 * model.addAttribute("get_all_user_info", get_All_user_info);
	 * 
	 * List<Banner> get_All_banner_info = banner_Service.get_ALL_banner_info();
	 * model.addAttribute("get_all_Banner_info", get_All_banner_info);
	 * 
	 * UserModel user = admin_service.get_Total_Users();
	 * model.addAttribute("get_total_user", user.getTotal_users());
	 * 
	 * Movie mmovie = admin_service.get_Total_Movies();
	 * model.addAttribute("get_total_Movie", mmovie.getTotal_movies());
	 * 
	 * Banner banner = admin_service.get_Total_Banner();
	 * model.addAttribute("get_total_Banner", banner.getTotal_banners());
	 * 
	 * return "Admin_Panel";
	 * 
	 * }
	 */
	@RequestMapping("/giving_mid")
	public String is_user_getting_movie(Movie movie, Model model) {

		List<Movie> Get_info_movie = movie_service.Get_All_details_when_click(movie.getM_id());
		model.addAttribute("Details_of_Movies", Get_info_movie);

		List<UserModel> Get_info_rating_review_of_movie = movie_service
				.Get_All_rating_and_reviews_when_click_on_movie(movie.getM_id());
		model.addAttribute("selected_movie_rating_reviews", Get_info_rating_review_of_movie);

		List<Movie> Similar_movie_like_Current_movie = movie_service
				.Get_All_similar_movies_like_current_movie(movie.getM_id());
		model.addAttribute("Similar_Like_Movies", Similar_movie_like_Current_movie);

		return "selecting_movie";
	}

	@RequestMapping("/login_to_watch_movie")
	public String is_user_login_to_watch_movie(Movie movie, Model model, HttpSession session) {

		int mid = movie.getM_id();

		session.setAttribute("M_id", mid);

		return "Login_to_watch_movie";
	}

	@RequestMapping("/giving_rating")
	public String user_watching_movie(Movie movie, Model model, HttpSession session)
			throws ServletException, IOException {

		List<Movie> Get_info_movie = movie_service.Get_All_details_when_click(movie.getM_id());
		model.addAttribute("Details_of_Movies", Get_info_movie);

		List<UserModel> Get_info_rating_review_of_movie = movie_service
				.Get_All_rating_and_reviews_when_click_on_movie(movie.getM_id());
		model.addAttribute("selected_movie_rating_reviews", Get_info_rating_review_of_movie);

		List<Movie> Similar_movie_like_Current_movie = movie_service
				.Get_All_similar_movies_like_current_movie(movie.getM_id());
		model.addAttribute("Similar_Like_Movies", Similar_movie_like_Current_movie);

		String ssid = session.getAttribute("Current_User_id").toString();
		int iid = Integer.parseInt(ssid);

		model.addAttribute("Current_user_id", iid);
		model.addAttribute("Current_movie_m_id", movie.getM_id());

		return "Give_Rating";
	}

}