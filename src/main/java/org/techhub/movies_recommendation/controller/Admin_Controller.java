package org.techhub.movies_recommendation.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller

public class Admin_Controller extends HttpServlet {

	int Current_Admin_id;
	String Current_Admin_name;
	String Current_Admin_password;

	@Autowired
	User_Service user_service;

	@Autowired
	Admin_Service admin_service;

	@Autowired
	Movie_Service movie_service;

	@Autowired
	Banner_Service banner_service;

	@RequestMapping("/adminlogin")
	public String adminLogin(@ModelAttribute("loginadmin") Admin admin) {
      
		return "Admin_Login";
	}

	@RequestMapping("/saveadmin")
	public String saveAdmin(Admin admin, Model model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws ServletException, IOException {

		Admin flag = admin_service.isValidAdmin(admin);

		if (flag == null) {

			model.addAttribute("msg", "Invalid Credentials");

			return "Admin_Login";
		} else {

			Current_Admin_id = flag.getAid();
			Current_Admin_name = flag.getAdminname();
			Current_Admin_password = flag.getAdminpassword();

			session.setAttribute("A_id", Current_Admin_id);
			session.setAttribute("A_name", Current_Admin_name);
			session.setAttribute("A_pass", Current_Admin_password);

			String aid = session.getAttribute("A_id").toString();
			int adminid = Integer.parseInt(aid);
			String aname = session.getAttribute("A_name").toString();
			String apass = session.getAttribute("A_pass").toString();

			model.addAttribute("admin_id", adminid);
			model.addAttribute("admin_name", aname);
			model.addAttribute("admin_password", apass);
			model.addAttribute("updateinfo", flag);

			List<Movie> Get_BEst = movie_service.Get_Alls_best_movies();
			model.addAttribute("goodMovies", Get_BEst);

			List<Movie> Get_worst = movie_service.Get_Alls_worst_movies();
			model.addAttribute("worstMovies", Get_worst);

			List<Movie> get_All_movie_info = movie_service.get_ALL_Movies_info();
			model.addAttribute("get_all_movie_info", get_All_movie_info);

			List<Admin> get_All_Admin_info = admin_service.get_ALL_Admin_info();
			model.addAttribute("get_all_admmin_info", get_All_Admin_info);

			List<UserModel> get_All_user_info = user_service.get_ALL_User_info();
			model.addAttribute("get_all_user_info", get_All_user_info);

			List<Banner> get_All_banner_info = banner_service.get_ALL_banner_info();
			model.addAttribute("get_all_Banner_info", get_All_banner_info);

			UserModel user = admin_service.get_Total_Users();
			model.addAttribute("get_total_user", user.getTotal_users());

			Movie movie = admin_service.get_Total_Movies();
			model.addAttribute("get_total_Movie", movie.getTotal_movies());

			Banner banner = admin_service.get_Total_Banner();
			model.addAttribute("get_total_Banner", banner.getTotal_banners());

			return "Admin_Panel";
		}

	}

	@RequestMapping("/delete_movie_by_m_id")
	public String DeleteMovie_by_m_id(@RequestParam("m_id") Integer m_id, Model model, Map map,HttpSession session) throws ServletException, IOException {

		boolean flag = movie_service.isDelete_movie_by_m_id(m_id);

		if (flag) {

			map.put("truemoviedelete", "Movie Deleted Successfully");

			List<Movie> Get_BEst = movie_service.Get_Alls_best_movies();
			model.addAttribute("goodMovies", Get_BEst);

			List<Movie> Get_worst = movie_service.Get_Alls_worst_movies();
			model.addAttribute("worstMovies", Get_worst);

			List<Movie> get_All_movie_info = movie_service.get_ALL_Movies_info();
			model.addAttribute("get_all_movie_info", get_All_movie_info);

			List<Admin> get_All_Admin_info = admin_service.get_ALL_Admin_info();
			model.addAttribute("get_all_admmin_info", get_All_Admin_info);

			List<UserModel> get_All_user_info = user_service.get_ALL_User_info();
			model.addAttribute("get_all_user_info", get_All_user_info);

			List<Banner> get_All_banner_info = banner_service.get_ALL_banner_info();
			model.addAttribute("get_all_Banner_info", get_All_banner_info);
			
			UserModel user = admin_service.get_Total_Users();
			model.addAttribute("get_total_user", user.getTotal_users());

			Movie movie = admin_service.get_Total_Movies();
			model.addAttribute("get_total_Movie", movie.getTotal_movies());

			Banner banner = admin_service.get_Total_Banner();
			model.addAttribute("get_total_Banner", banner.getTotal_banners());
			
			
			
			String aid = session.getAttribute("A_id").toString();
			int adminid = Integer.parseInt(aid);
			String aname = session.getAttribute("A_name").toString();

			model.addAttribute("admin_id", adminid);
			model.addAttribute("admin_name", aname);

			return "Admin_Panel";
		}

		else {
			map.put("falsemoviedelete", "Problem in Movie Deletion");

			List<Movie> Get_BEst = movie_service.Get_Alls_best_movies();
			model.addAttribute("goodMovies", Get_BEst);

			List<Movie> Get_worst = movie_service.Get_Alls_worst_movies();
			model.addAttribute("worstMovies", Get_worst);

			List<Movie> get_All_movie_info = movie_service.get_ALL_Movies_info();
			model.addAttribute("get_all_movie_info", get_All_movie_info);

			List<Admin> get_All_Admin_info = admin_service.get_ALL_Admin_info();
			model.addAttribute("get_all_admmin_info", get_All_Admin_info);

			List<UserModel> get_All_user_info = user_service.get_ALL_User_info();
			model.addAttribute("get_all_user_info", get_All_user_info);

			List<Banner> get_All_banner_info = banner_service.get_ALL_banner_info();
			model.addAttribute("get_all_Banner_info", get_All_banner_info);
			
			UserModel user = admin_service.get_Total_Users();
			model.addAttribute("get_total_user", user.getTotal_users());

			Movie movie = admin_service.get_Total_Movies();
			model.addAttribute("get_total_Movie", movie.getTotal_movies());

			Banner banner = admin_service.get_Total_Banner();
			model.addAttribute("get_total_Banner", banner.getTotal_banners());
			
			
			String aid = session.getAttribute("A_id").toString();
			int adminid = Integer.parseInt(aid);
			String aname = session.getAttribute("A_name").toString();

			model.addAttribute("admin_id", adminid);
			model.addAttribute("admin_name", aname);

		

			return "Admin_Panel";
		}

	}

	@RequestMapping("/delete_user_by_u_id")
	public String Delete_User_by_u_id(@RequestParam("user_id") Integer u_id, Model model,HttpSession session) throws ServletException, IOException {

		boolean flag = admin_service.isDelete_user_by_u_id(u_id);

		List<Movie> Get_BEst = movie_service.Get_Alls_best_movies();
		model.addAttribute("goodMovies", Get_BEst);

		List<Movie> Get_worst = movie_service.Get_Alls_worst_movies();
		model.addAttribute("worstMovies", Get_worst);

		List<Movie> get_All_movie_info = movie_service.get_ALL_Movies_info();
		model.addAttribute("get_all_movie_info", get_All_movie_info);

		List<Admin> get_All_Admin_info = admin_service.get_ALL_Admin_info();
		model.addAttribute("get_all_admmin_info", get_All_Admin_info);

		List<UserModel> get_All_user_info = user_service.get_ALL_User_info();
		model.addAttribute("get_all_user_info", get_All_user_info);

		List<Banner> get_All_banner_info = banner_service.get_ALL_banner_info();
		model.addAttribute("get_all_Banner_info", get_All_banner_info);
		
		UserModel user = admin_service.get_Total_Users();
		model.addAttribute("get_total_user", user.getTotal_users());

		Movie movie = admin_service.get_Total_Movies();
		model.addAttribute("get_total_Movie", movie.getTotal_movies());

		Banner banner = admin_service.get_Total_Banner();
		model.addAttribute("get_total_Banner", banner.getTotal_banners());
		
		String aid = session.getAttribute("A_id").toString();
		int adminid = Integer.parseInt(aid);
		String aname = session.getAttribute("A_name").toString();

		model.addAttribute("admin_id", adminid);
		model.addAttribute("admin_name", aname);

		return "Admin_Panel";
	}

	
	
	
	@RequestMapping("/delete_banner_by_b_id")
	public String Delete_Banner_by_b_id(@RequestParam("b_id") Integer b_id, Model model,HttpSession session) throws ServletException, IOException {
	
		 boolean flag = admin_service.isDelete_Banner_by_b_id(b_id);

		List<Movie> Get_BEst = movie_service.Get_Alls_best_movies();
		model.addAttribute("goodMovies", Get_BEst);

		List<Movie> Get_worst = movie_service.Get_Alls_worst_movies();
		model.addAttribute("worstMovies", Get_worst);

		List<Movie> get_All_movie_info = movie_service.get_ALL_Movies_info();
		model.addAttribute("get_all_movie_info", get_All_movie_info);

		List<Admin> get_All_Admin_info = admin_service.get_ALL_Admin_info();
		model.addAttribute("get_all_admmin_info", get_All_Admin_info);

		List<UserModel> get_All_user_info = user_service.get_ALL_User_info();
		model.addAttribute("get_all_user_info", get_All_user_info);

		List<Banner> get_All_banner_info = banner_service.get_ALL_banner_info();
		model.addAttribute("get_all_Banner_info", get_All_banner_info);
		
		UserModel user = admin_service.get_Total_Users();
		model.addAttribute("get_total_user", user.getTotal_users());

		Movie movie = admin_service.get_Total_Movies();
		model.addAttribute("get_total_Movie", movie.getTotal_movies());

		Banner banner = admin_service.get_Total_Banner();
		model.addAttribute("get_total_Banner", banner.getTotal_banners());
		
		
		String aid = session.getAttribute("A_id").toString();
		int adminid = Integer.parseInt(aid);
		String aname = session.getAttribute("A_name").toString();

		model.addAttribute("admin_id", adminid);
		model.addAttribute("admin_name", aname);
	
	
		return "Admin_Panel";
	}

	
	@RequestMapping("/searchByName")
	@ResponseBody
	public String searchByname(@RequestParam("n") String name) {

		System.out.println(name);

		return "Admin_Paneljhjk";
	}

	/*---------------for---Adding -new admin--------*/

	@RequestMapping("/add_new_admin")
	public String Add_New_Admin(Admin admin, Model model,HttpSession session) throws ServletException, IOException {

		boolean m = admin_service.isADD_NEW_AdMIN(admin);

		List<Banner> getallbanners = banner_service.is_geting_all_banners();
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

	/*---------------for---updating admin--------*/

	@RequestMapping("/update_admin")
	public String Update_Admin(Admin admin, Model model,HttpSession session) throws ServletException, IOException {

		boolean u = admin_service.is_Update_AdMIN(admin);

		List<Banner> getallbanners = banner_service.is_geting_all_banners();
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

	/*---------------for---Deleting admin--------*/
	@RequestMapping("/Delete_admin")
	public String Delete_Admin(Admin admin, Model model,HttpSession session) throws ServletException, IOException {

		boolean i = admin_service.is_Delete_AdMIN(admin);

		List<Banner> getallbanners = banner_service.is_geting_all_banners();
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

	/*---------------for---log----out-button--------*/
	@RequestMapping("/index_page")
	public String About_Us_Page(Model model) {

		List<Banner> getallbanners = banner_service.is_geting_all_banners();
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

}
