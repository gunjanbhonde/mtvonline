package org.techhub.movies_recommendation.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.techhub.movies_recommendation.model.Banner;
import org.techhub.movies_recommendation.model.Movie;
import org.techhub.movies_recommendation.model.Rating;
import org.techhub.movies_recommendation.model.Recommendation_Model;
import org.techhub.movies_recommendation.model.UserModel;
import org.techhub.movies_recommendation.model.User_Details;
import org.techhub.movies_recommendation.model.WatchList;
import org.techhub.movies_recommendation.service.Banner_Service;
import org.techhub.movies_recommendation.service.Movie_Service;
import org.techhub.movies_recommendation.service.User_Service;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class User_Controller extends HttpServlet {

	int Current_user_id;
	String Current_user_name;
	String Current_user_password;
	String Current_user_email;
	String Current_user_contact;
	String Current_user_city;

	User_Details user_details = new User_Details();

	Rating rating = new Rating();

	@Autowired
	User_Service user_service;

	@Autowired
	Banner_Service banner_Service;

	@Autowired
	Movie_Service movie_service;

	@RequestMapping("/User_Sign_up")
	public String savadata(@ModelAttribute("reguser") UserModel user, Model model) {

		return "User_Login";

	}

	@RequestMapping("/saveuser")
	public String saveUser(UserModel user) {

		boolean flag = user_service.isAddRegister_User(user);
		if (flag) {
			System.out.println(user.getUser_id());
			return "Sign_up_Language_Selection";
			/* return "redirect:/User_Sign_up"; */
		} else {
			return "Error";
		}
	}

	@RequestMapping("/saveuser_language")
	public String savalang(Recommendation_Model r_model, Model model) {
		return "Sign_up_Category_Selection";
	}

	@RequestMapping("/saveuser_categories")
	public String savacategory(Recommendation_Model r_model, Model model) {
		return "Sign_up_Actors_Selection";
	}

	@RequestMapping("/saveuser_actors")
	public String savaActors(Recommendation_Model r_model, Model model) {
		return "User_Login";
	}

	@RequestMapping("/userlogin")
	public String UserLogin(@ModelAttribute("loginuser") UserModel user) {
		return "User_Login";
	}

	@RequestMapping("/userSignup")
	public String user_Sign_up() {
		return "User_Sign_up";
	}

	@RequestMapping("/saveloginuser")
	public String saveUser_Login(UserModel user, Recommendation_Model r_model, Model model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) throws ServletException, IOException {

		UserModel User_flag = user_service.isValid_User_Login(user);

		if (User_flag == null) {
			model.addAttribute("User_Login_msg", "Invalid Credentials");
			return "User_Login";

		} else {
			int id = User_flag.getUser_id();

			session.setAttribute("Current_User_id", id);
			session.setAttribute("Current_User_name", User_flag.getUser_name());
			session.setAttribute("Current_User_password", User_flag.getUser_password());
			session.setAttribute("Current_User_email", User_flag.getUser_email());
			session.setAttribute("Current_User_contact", User_flag.getUser_contact());
			session.setAttribute("Current_User_city", User_flag.getUser_city());

			String uid = session.getAttribute("Current_User_id").toString();
			int user_id = Integer.parseInt(uid);

			/*
			 * =============================================================================
			 */

			List<Banner> getallbanners = banner_Service.is_geting_all_banners();
			model.addAttribute("bannersList", getallbanners);

			List<Movie> getAllnew_movie = movie_service.is_geting_all_new_releases();
			model.addAttribute("New_Realeses", getAllnew_movie);

			List<Movie> getAllTrendings = movie_service.is_geting_all_trendings();
			model.addAttribute("TrendingList", getAllTrendings);

			List<Movie> getAllAction = movie_service.is_geting_all_Action();
			model.addAttribute("ActionList", getAllAction);

			List<Movie> getAllDrama = movie_service.is_geting_all_Drama();
			model.addAttribute("DramaList", getAllDrama);

			List<Movie> getAllhollywood = movie_service.is_geting_all_Hollywood();
			model.addAttribute("HollywoodList", getAllhollywood);

			List<Movie> getAllComedy = movie_service.is_geting_all_Comedy();
			model.addAttribute("ComedyList", getAllComedy);

			return "User_index";
		}

	}

	/* =================================================== */

	@RequestMapping("/saveloginuser_watch_movie")
	public String User_Login_to_watch(UserModel user, Model model, Movie movie, HttpSession session)
			throws ServletException, IOException {

		UserModel User_flag = user_service.isValid_User_Login(user);

		if (User_flag == null) {
			model.addAttribute("User_Login_msg", "Invalid Credentials");
			return "Login_to_watch_movie";

		} else {

			int id = User_flag.getUser_id();

			session.setAttribute("Current_User_id", id);
			session.setAttribute("Current_User_name", User_flag.getUser_name());
			session.setAttribute("Current_User_password", User_flag.getUser_password());
			session.setAttribute("Current_User_email", User_flag.getUser_email());
			session.setAttribute("Current_User_contact", User_flag.getUser_contact());
			session.setAttribute("Current_User_city", User_flag.getUser_city());

			/*
			 * =============================================================================
			 * =============
			 */

			List<Banner> getallbanners = banner_Service.is_geting_all_banners();
			model.addAttribute("bannersList", getallbanners);

			List<Movie> getAllnew_movie = movie_service.is_geting_all_new_releases();
			model.addAttribute("New_Realeses", getAllnew_movie);

			List<Movie> getAllTrendings = movie_service.is_geting_all_trendings();
			model.addAttribute("TrendingList", getAllTrendings);

			List<Movie> getAllAction = movie_service.is_geting_all_Action();
			model.addAttribute("ActionList", getAllAction);

			List<Movie> getAllDrama = movie_service.is_geting_all_Drama();
			model.addAttribute("DramaList", getAllDrama);

			List<Movie> getAllhollywood = movie_service.is_geting_all_Hollywood();
			model.addAttribute("HollywoodList", getAllhollywood);

			List<Movie> getAllComedy = movie_service.is_geting_all_Comedy();
			model.addAttribute("ComedyList", getAllComedy);

			List<UserModel> Get_info_rating_review_of_movie = movie_service
					.Get_All_rating_and_reviews_when_click_on_movie(movie.getM_id());
			model.addAttribute("selected_movie_rating_reviews", Get_info_rating_review_of_movie);

			List<Movie> Similar_movie_like_Current_movie = movie_service
					.Get_All_similar_movies_like_current_movie(movie.getM_id());
			model.addAttribute("Similar_Like_Movies", Similar_movie_like_Current_movie);

			String mid = session.getAttribute("M_id").toString();
			int md = Integer.parseInt(mid);

			String uid = session.getAttribute("Current_User_id").toString();
			int user_id = Integer.parseInt(uid);

			model.addAttribute("Current_user_id", user_id);

			List<Movie> Get_info_movie = movie_service.Get_All_details_when_click(md);
			model.addAttribute("Details_of_Movies", Get_info_movie);

			return "Give_Rating";
		}
	}

	/*---------------for---updating user calling form--------*/

	@RequestMapping("/update_user")
	public String Update_user(UserModel user, Model model, HttpSession session) throws ServletException, IOException {

		String ssid = session.getAttribute("Current_User_id").toString();
		int iid = Integer.parseInt(ssid);

		String nname = session.getAttribute("Current_User_name").toString();
		String npassword = session.getAttribute("Current_User_password").toString();
		String nemail = session.getAttribute("Current_User_email").toString();
		String ncontact = session.getAttribute("Current_User_contact").toString();
		String ncity = session.getAttribute("Current_User_city").toString();

		model.addAttribute("user_id", iid);
		model.addAttribute("user_namen", nname);
		model.addAttribute("user_passwordn", npassword);
		model.addAttribute("user_emailn", nemail);
		model.addAttribute("user_contactn", ncontact);
		model.addAttribute("user_cityn", ncity);

		return "Update_User";
	}

	/*---------------for---updating user getting details--------*/
	@RequestMapping("/Update_User_Again")
	public String finalUpdate(UserModel user, Model model, HttpSession session) throws ServletException, IOException {

		String ssid = session.getAttribute("Current_User_id").toString();
		int iid = Integer.parseInt(ssid);

		/*
		 * String nname=session.getAttribute("Current_User_name").toString(); String
		 * npassword=session.getAttribute("Current_User_password").toString(); String
		 * nemail=session.getAttribute("Current_User_email").toString(); String
		 * ncontact=session.getAttribute("Current_User_contact").toString(); String
		 * ncity=session.getAttribute("Current_User_city").toString();
		 */

		/* model.addAttribute("user_id",id ); */
		/*
		 * model.addAttribute("user_namen",nname);
		 * model.addAttribute("user_passwordn",npassword);
		 * model.addAttribute("user_emailn",nemail);
		 * model.addAttribute("user_contactn",ncontact);
		 * model.addAttribute("user_cityn",ncity );
		 */

		/* int get_id = user_details.getUser_id(); */
		user.setUser_id(iid);
		boolean u = user_service.is_Update_user(user);

		List<Banner> getallbanners = banner_Service.is_geting_all_banners();
		model.addAttribute("bannersList", getallbanners);

		List<Movie> getAllnew_movie = movie_service.is_geting_all_new_releases();
		model.addAttribute("New_Realeses", getAllnew_movie);

		List<Movie> getAllTrendings = movie_service.is_geting_all_trendings();
		model.addAttribute("TrendingList", getAllTrendings);

		List<Movie> getAllAction = movie_service.is_geting_all_Action();
		model.addAttribute("ActionList", getAllAction);

		List<Movie> getAllDrama = movie_service.is_geting_all_Drama();
		model.addAttribute("DramaList", getAllDrama);

		List<Movie> getAllhollywood = movie_service.is_geting_all_Hollywood();
		model.addAttribute("HollywoodList", getAllhollywood);

		List<Movie> getAllComedy = movie_service.is_geting_all_Comedy();
		model.addAttribute("ComedyList", getAllComedy);

		session.invalidate();

		return "index";
	}

	/*---------------for---Deleting user--------*/
	@RequestMapping("/Delete_user")
	public String Delete_User(UserModel user, Model model, HttpSession session) throws ServletException, IOException {

		boolean i = user_service.is_Delete_user(user);

		List<Banner> getallbanners = banner_Service.is_geting_all_banners();
		model.addAttribute("bannersList", getallbanners);

		List<Movie> getAllnew_movie = movie_service.is_geting_all_new_releases();
		model.addAttribute("New_Realeses", getAllnew_movie);

		List<Movie> getAllTrendings = movie_service.is_geting_all_trendings();
		model.addAttribute("TrendingList", getAllTrendings);

		List<Movie> getAllAction = movie_service.is_geting_all_Action();
		model.addAttribute("ActionList", getAllAction);

		List<Movie> getAllDrama = movie_service.is_geting_all_Drama();
		model.addAttribute("DramaList", getAllDrama);

		List<Movie> getAllhollywood = movie_service.is_geting_all_Hollywood();
		model.addAttribute("HollywoodList", getAllhollywood);

		List<Movie> getAllComedy = movie_service.is_geting_all_Comedy();
		model.addAttribute("ComedyList", getAllComedy);

		session.invalidate();

		return "index";
	}

	/*---------------for---profile -out-button--------*/
	@RequestMapping("/profile")
	public String is_User_Profile(Model model, HttpSession session) throws ServletException, IOException {

		String sid = session.getAttribute("Current_User_id").toString();
		int id = Integer.parseInt(sid);

		String name = session.getAttribute("Current_User_name").toString();
		String password = session.getAttribute("Current_User_password").toString();
		String email = session.getAttribute("Current_User_email").toString();
		String contact = session.getAttribute("Current_User_contact").toString();
		String city = session.getAttribute("Current_User_city").toString();

		model.addAttribute("user_id", id);
		model.addAttribute("user_name", name);
		model.addAttribute("user_password", password);
		model.addAttribute("user_email", email);
		model.addAttribute("user_contact", contact);
		model.addAttribute("user_city", city);

		/*
		 * model.addAttribute("user_id", user_details.getUser_id());
		 * model.addAttribute("user_name", user_details.getUser_name());
		 * model.addAttribute("user_password", user_details.getUser_password());
		 * model.addAttribute("user_email", user_details.getUser_email());
		 * model.addAttribute("user_contact", user_details.getUser_contact());
		 * model.addAttribute("user_city", user_details.getUser_city());
		 */
		List<Movie> User_History = user_service.Get_All_User_History(id);
		model.addAttribute("Watch_History", User_History);

		return "User_Profile_Page";
	}

	@RequestMapping("/watchlist")
	public String is_User_watchlist(Model model, HttpSession session) throws ServletException, IOException {

		String sid = session.getAttribute("Current_User_id").toString();
		int id = Integer.parseInt(sid);

		List<Movie> Movie_WatchList = user_service.Get_All_User_WatchList(id);
		model.addAttribute("movie_watchlist", Movie_WatchList);

		return "User_Movie_WatchList";
	}

	/*---------------for-user--log----out-button--------*/
	@RequestMapping("/user_log_out")
	public String is_User_log_out(Model model, HttpSession session) throws ServletException, IOException {

		List<Banner> getallbanners = banner_Service.is_geting_all_banners();
		model.addAttribute("bannersList", getallbanners);

		List<Movie> getAllnew_movie = movie_service.is_geting_all_new_releases();
		model.addAttribute("New_Realeses", getAllnew_movie);

		List<Movie> getAllTrendings = movie_service.is_geting_all_trendings();
		model.addAttribute("TrendingList", getAllTrendings);

		List<Movie> getAllAction = movie_service.is_geting_all_Action();
		model.addAttribute("ActionList", getAllAction);

		List<Movie> getAllDrama = movie_service.is_geting_all_Drama();
		model.addAttribute("DramaList", getAllDrama);

		List<Movie> getAllhollywood = movie_service.is_geting_all_Hollywood();
		model.addAttribute("HollywoodList", getAllhollywood);

		List<Movie> getAllComedy = movie_service.is_geting_all_Comedy();
		model.addAttribute("ComedyList", getAllComedy);

		session.invalidate();

		return "index";
	}

	/* this is for when user click cancel on the pop up movie info div */
	@RequestMapping("/index_pagee")
	public String hoepage(Model model) {

		List<Banner> getallbanners = banner_Service.is_geting_all_banners();
		model.addAttribute("bannersList", getallbanners);

		List<Movie> getAllnew_movie = movie_service.is_geting_all_new_releases();
		model.addAttribute("New_Realeses", getAllnew_movie);

		List<Movie> getAllTrendings = movie_service.is_geting_all_trendings();
		model.addAttribute("TrendingList", getAllTrendings);

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

	@RequestMapping("/cancel_button_back")
	public String back_to_index(Model model) {

		List<Banner> getallbanners = banner_Service.is_geting_all_banners();
		model.addAttribute("bannersList", getallbanners);

		List<Movie> getAllnew_movie = movie_service.is_geting_all_new_releases();
		model.addAttribute("New_Realeses", getAllnew_movie);

		List<Movie> getAllTrendings = movie_service.is_geting_all_trendings();
		model.addAttribute("TrendingList", getAllTrendings);

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

	@RequestMapping("/cancel_button_to_User_index_page")
	public String back_to_User_index(Model model) {

		List<Banner> getallbanners = banner_Service.is_geting_all_banners();
		model.addAttribute("bannersList", getallbanners);

		List<Movie> getAllnew_movie = movie_service.is_geting_all_new_releases();
		model.addAttribute("New_Realeses", getAllnew_movie);

		List<Movie> getAllTrendings = movie_service.is_geting_all_trendings();
		model.addAttribute("TrendingList", getAllTrendings);

		List<Movie> getAllAction = movie_service.is_geting_all_Action();
		model.addAttribute("ActionList", getAllAction);

		List<Movie> getAllDrama = movie_service.is_geting_all_Drama();
		model.addAttribute("DramaList", getAllDrama);

		List<Movie> getAllhollywood = movie_service.is_geting_all_Hollywood();
		model.addAttribute("HollywoodList", getAllhollywood);

		List<Movie> getAllComedy = movie_service.is_geting_all_Comedy();
		model.addAttribute("ComedyList", getAllComedy);

		return "User_index";
	}

	@RequestMapping("/Current_user_giving_rating")
	public String after_giving_rating_back_to_user_index(Model model, Rating rating) {

		boolean rating_flag = user_service.is_gived_rating_by_user(rating);

		List<Banner> getallbanners = banner_Service.is_geting_all_banners();
		model.addAttribute("bannersList", getallbanners);

		List<Movie> getAllnew_movie = movie_service.is_geting_all_new_releases();
		model.addAttribute("New_Realeses", getAllnew_movie);

		List<Movie> getAllTrendings = movie_service.is_geting_all_trendings();
		model.addAttribute("TrendingList", getAllTrendings);

		List<Movie> getAllAction = movie_service.is_geting_all_Action();
		model.addAttribute("ActionList", getAllAction);

		List<Movie> getAllDrama = movie_service.is_geting_all_Drama();
		model.addAttribute("DramaList", getAllDrama);

		List<Movie> getAllhollywood = movie_service.is_geting_all_Hollywood();
		model.addAttribute("HollywoodList", getAllhollywood);

		List<Movie> getAllComedy = movie_service.is_geting_all_Comedy();
		model.addAttribute("ComedyList", getAllComedy);

		return "User_index";
	}

	@RequestMapping("/Current_user_Add_movie_to_watchlist")
	public String after_adding_movie_to_watchlist_back_to_user_index(Model model, WatchList watchlist) {

		boolean watchlist_flag = user_service.is_user_Added_Movie_to_watchList(watchlist);

		List<Banner> getallbanners = banner_Service.is_geting_all_banners();
		model.addAttribute("bannersList", getallbanners);

		List<Movie> getAllnew_movie = movie_service.is_geting_all_new_releases();
		model.addAttribute("New_Realeses", getAllnew_movie);

		List<Movie> getAllTrendings = movie_service.is_geting_all_trendings();
		model.addAttribute("TrendingList", getAllTrendings);

		List<Movie> getAllAction = movie_service.is_geting_all_Action();
		model.addAttribute("ActionList", getAllAction);

		List<Movie> getAllDrama = movie_service.is_geting_all_Drama();
		model.addAttribute("DramaList", getAllDrama);

		List<Movie> getAllhollywood = movie_service.is_geting_all_Hollywood();
		model.addAttribute("HollywoodList", getAllhollywood);

		List<Movie> getAllComedy = movie_service.is_geting_all_Comedy();
		model.addAttribute("ComedyList", getAllComedy);

		return "User_index";
	}

	@RequestMapping("/in")
	public String hopage() {
		return "User_Login";
	}

}
