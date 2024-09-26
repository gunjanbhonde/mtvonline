package org.techhub.movies_recommendation.repository;

import java.util.List;

import org.techhub.movies_recommendation.model.*;

public interface Admin_Repo {

	public Admin isValidAdmin(Admin admin);

	public List<Admin> get_ALl_Admin_info();

	public boolean is_Add_New_Admin(Admin admin);

	public boolean Update_Admin(Admin admin);

	public boolean Delete_Admin(Admin admin);

	public List<Admin> viewAdmin();

	public boolean isDelete_user_by_u_id(int uid);
	
	public boolean isDelete_Banner_by_b_id(int bid);

	public Movie get_Total_Movies();
	
	public UserModel get_Total_Users();
	
	public Banner get_Total_Banner();
}
