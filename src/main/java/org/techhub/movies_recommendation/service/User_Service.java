package org.techhub.movies_recommendation.service;

import java.util.List;

import org.techhub.movies_recommendation.model.Admin;
import org.techhub.movies_recommendation.model.Movie;
import org.techhub.movies_recommendation.model.Rating;
import org.techhub.movies_recommendation.model.Recommendation_Model;
import org.techhub.movies_recommendation.model.UserModel;
import org.techhub.movies_recommendation.model.WatchList;

public interface User_Service {

	public boolean isAddRegister_User(UserModel user);

	public List<UserModel> get_ALL_User_info();

	public UserModel isValid_User_Login(UserModel user);

	public boolean is_Update_user(UserModel user);

	public boolean is_Delete_user(UserModel user);

	public List<Movie> Get_All_User_History(int id);

	public List<Movie> Get_All_User_WatchList(int id);

	public boolean is_gived_rating_by_user(Rating rating);

	public boolean is_user_Added_Movie_to_watchList(WatchList watchlist);

	public boolean isRecommend(Recommendation_Model r_model);

}
