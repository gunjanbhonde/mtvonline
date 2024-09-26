
package org.techhub.movies_recommendation.service;

import java.util.List;

import org.techhub.movies_recommendation.model.*;

public interface Admin_Service {

	public Admin isValidAdmin(Admin admin);

	public List<Admin> get_ALL_Admin_info();

	public boolean isADD_NEW_AdMIN(Admin admin);

	public boolean is_Update_AdMIN(Admin admin);

	public boolean is_Delete_AdMIN(Admin admin);

	public List<Admin> viewAdmin();
	
	public boolean isDelete_user_by_u_id(int uid);
	
	public boolean isDelete_Banner_by_b_id(int bid);

	public Movie get_Total_Movies();
	
	public UserModel get_Total_Users();
	
	public Banner get_Total_Banner();
	
	
	

}
