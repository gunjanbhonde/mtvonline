package org.techhub.movies_recommendation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.techhub.movies_recommendation.model.Movie;
import org.techhub.movies_recommendation.model.Rating;
import org.techhub.movies_recommendation.model.Recommendation_Model;
import org.techhub.movies_recommendation.model.UserModel;
import org.techhub.movies_recommendation.model.WatchList;
import org.techhub.movies_recommendation.repository.User_Repo;

@Service("user_service")
public class User_Service_Impl implements User_Service {

	@Autowired
	User_Repo user_repo;

	@Override
	public boolean isAddRegister_User(UserModel user) {
		// TODO Auto-generated method stub
		return user_repo.isAddRegister_User(user);
	}

	@Override
	public UserModel isValid_User_Login(UserModel user) {
		// TODO Auto-generated method stub
		return user_repo.isValidUser_Login(user);
	}

	@Override
	public boolean is_Update_user(UserModel user) {
		// TODO Auto-generated method stub
		return user_repo.Update_user(user);
	}

	@Override
	public boolean is_Delete_user(UserModel user) {
		// TODO Auto-generated method stub
		return user_repo.Delete_user(user);
	}

	@Override
	public List<Movie> Get_All_User_History(int id) {
		// TODO Auto-generated method stub
		return user_repo.Get_Alls_User_History(id);
	}
	@Override
	public boolean is_gived_rating_by_user(Rating rating) {
		// TODO Auto-generated method stub
		return user_repo.is_giveds_rating_by_user(rating);
	}

	@Override
	public List<UserModel> get_ALL_User_info() {
		// TODO Auto-generated method stub
		return user_repo.get_ALLs_User_info();
	}

	@Override
	public boolean is_user_Added_Movie_to_watchList(WatchList watchlist) {
		// TODO Auto-generated method stub
		return user_repo.is_user_Added_Movie_to_watchList(watchlist);
	}

	@Override
	public List<Movie> Get_All_User_WatchList(int id) {
		// TODO Auto-generated method stub
		return user_repo.Get_All_User_WatchList(id);
	}

	@Override
	public boolean isRecommend(Recommendation_Model r_model) {
		// TODO Auto-generated method stub
		return user_repo.isRecommend(r_model);
	}

}
