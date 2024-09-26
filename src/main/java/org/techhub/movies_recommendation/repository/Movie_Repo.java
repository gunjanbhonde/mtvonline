package org.techhub.movies_recommendation.repository;

import java.util.List;

import org.techhub.movies_recommendation.model.Admin;
import org.techhub.movies_recommendation.model.Movie;
import org.techhub.movies_recommendation.model.UserModel;

public interface Movie_Repo {

	public boolean is_add_New_movie(Movie movie);

	public boolean isDelete_movie_by_m_id(int mid);

	public List<Movie> is_geting_alls_hollywood();

	public List<Movie> get_ALl_Movies_info();

	public List<Movie> is_geting_alls_new_realeses();

	public List<Movie> is_geting_alls_trendings();

	public List<Movie> is_geting_alls_Action();

	public List<Movie> is_geting_alls_Drama();

	public List<Movie> is_geting_alls_Comedy();

	public List<Movie> Get_All_best_movies();

	public List<Movie> Get_All_worst_movies();

	public List<Movie> Get_All_details_whenn_click(int mid);
	
	public List<UserModel> Get_All_rating_and_reviews_when_click_on_movie(int mid);
	
	public List<Movie> Get_All_similar_movies_like_current_movie(int mid);

}
