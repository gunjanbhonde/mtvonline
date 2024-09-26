package org.techhub.movies_recommendation.service;

import java.util.List;

import org.techhub.movies_recommendation.model.Admin;
import org.techhub.movies_recommendation.model.Banner;
import org.techhub.movies_recommendation.model.Movie;
import org.techhub.movies_recommendation.model.UserModel;

public interface Movie_Service {

	public boolean isADD_NEW_Movie(Movie movie);

	public boolean isDelete_movie_by_m_id(int mid);

	public List<Movie> is_geting_all_Hollywood();

	public List<Movie> get_ALL_Movies_info();

	public List<Movie> is_geting_all_new_releases();

	public List<Movie> is_geting_all_trendings();

	public List<Movie> is_geting_all_Action();

	public List<Movie> is_geting_all_Drama();

	public List<Movie> is_geting_all_Comedy();

	public List<Movie> Get_Alls_best_movies();

	public List<Movie> Get_Alls_worst_movies();

	public List<Movie> Get_All_details_when_click(int mid);
	
	public List<UserModel> Get_All_rating_and_reviews_when_click_on_movie(int mid);
	
	public List<Movie> Get_All_similar_movies_like_current_movie(int mid);

}
