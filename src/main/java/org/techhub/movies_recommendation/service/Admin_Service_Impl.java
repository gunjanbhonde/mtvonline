package org.techhub.movies_recommendation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.techhub.movies_recommendation.model.*;
import org.techhub.movies_recommendation.repository.Admin_Repo;

@Service("admin_service")
public class Admin_Service_Impl implements Admin_Service {

	@Autowired
	Admin_Repo admin_repo;

	@Override
	public Admin isValidAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return admin_repo.isValidAdmin(admin);
	}

	@Override
	public boolean isADD_NEW_AdMIN(Admin admin) {
		// TODO Auto-generated method stub
		return admin_repo.is_Add_New_Admin(admin);
	}

	@Override
	public boolean is_Update_AdMIN(Admin admin) {
		// TODO Auto-generated method stub
		return admin_repo.Update_Admin(admin);
	}

	@Override
	public boolean is_Delete_AdMIN(Admin admin) {
		// TODO Auto-generated method stub
		return admin_repo.Delete_Admin(admin);
	}

	@Override
	public List<Admin> viewAdmin() {
		return admin_repo.viewAdmin();
	}

	@Override
	public List<Admin> get_ALL_Admin_info() {
		// TODO Auto-generated method stub
		return admin_repo.get_ALl_Admin_info();
	}

	@Override
	public boolean isDelete_user_by_u_id(int uid) {
		// TODO Auto-generated method stub
		return admin_repo.isDelete_user_by_u_id(uid);
	}

	@Override
	public Movie get_Total_Movies() {
		// TODO Auto-generated method stub
		return admin_repo.get_Total_Movies();
	}

	@Override
	public UserModel get_Total_Users() {
		// TODO Auto-generated method stub
		return admin_repo.get_Total_Users();
	}

	@Override
	public Banner get_Total_Banner() {
		// TODO Auto-generated method stub
		return admin_repo.get_Total_Banner();
	}

	@Override
	public boolean isDelete_Banner_by_b_id(int bid) {
		// TODO Auto-generated method stub
		return admin_repo.isDelete_Banner_by_b_id(bid);
	}

	
	

	
	
	

}
