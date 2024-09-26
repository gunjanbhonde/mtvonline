package org.techhub.movies_recommendation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.techhub.movies_recommendation.model.Banner;
import org.techhub.movies_recommendation.model.Movie;
import org.techhub.movies_recommendation.service.Admin_Service;
import org.techhub.movies_recommendation.service.Banner_Service;
import org.techhub.movies_recommendation.service.Movie_Service;
import org.techhub.movies_recommendation.service.User_Service;
@Controller
public class Error_Controller {
	
	@Autowired
	User_Service user_service;

	@Autowired
	Admin_Service admin_service;

	@Autowired
	Movie_Service movie_service;

	@Autowired
	Banner_Service banner_Service;
	
	@RequestMapping("/userSignup_forgot")
	public String Forgot_Password_Error() {
		return "Error";
	}

	
	
	@RequestMapping("/back_to_home")
	public String Back_to_Home(Model model) {
		

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

	
	
	
	
	
	
	
	
	
}
