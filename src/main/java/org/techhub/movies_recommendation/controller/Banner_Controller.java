package org.techhub.movies_recommendation.controller;

import java.io.File;
import java.io.FileOutputStream;
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

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class Banner_Controller {

	@Autowired
	Banner_Service banner_service;

	@Autowired
	User_Service user_service;

	@Autowired
	Admin_Service admin_service;

	@Autowired
	Movie_Service movie_service;




	

}
