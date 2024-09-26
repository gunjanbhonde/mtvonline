package org.techhub.movies_recommendation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.techhub.movies_recommendation.model.Movie;
import org.techhub.movies_recommendation.model.UserModel;
import org.techhub.movies_recommendation.repository.Admin_Repo;
import org.techhub.movies_recommendation.repository.Movie_Repo;

@Service("movie_service")
public class Movie_Service_Impl implements Movie_Service {

	@Autowired
	Movie_Repo movie_repo;

	@Override
	public boolean isADD_NEW_Movie(Movie movie) {
		// TODO Auto-generated method stub

		return movie_repo.is_add_New_movie(movie);
	}

	@Override
	public boolean isDelete_movie_by_m_id(int mid) {
		// TODO Auto-generated method stub
		return movie_repo.isDelete_movie_by_m_id(mid);
	}

	@Override
	public List<Movie> is_geting_all_Hollywood() {
		// TODO Auto-generated method stub
		return movie_repo.is_geting_alls_hollywood();
	}

	@Override
	public List<Movie> get_ALL_Movies_info() {
		// TODO Auto-generated method stub
		return movie_repo.get_ALl_Movies_info();
	}

	@Override
	public List<Movie> is_geting_all_new_releases() {
		// TODO Auto-generated method stub
		return movie_repo.is_geting_alls_new_realeses();
	}

	@Override
	public List<Movie> is_geting_all_trendings() {
		// TODO Auto-generated method stub
		return movie_repo.is_geting_alls_trendings();
	}

	@Override
	public List<Movie> is_geting_all_Action() {
		// TODO Auto-generated method stub
		return movie_repo.is_geting_alls_Action();
	}

	@Override
	public List<Movie> is_geting_all_Drama() {
		// TODO Auto-generated method stub
		return movie_repo.is_geting_alls_Drama();
	}

	@Override
	public List<Movie> is_geting_all_Comedy() {
		// TODO Auto-generated method stub
		return movie_repo.is_geting_alls_Comedy();
	}

	@Override
	public List<Movie> Get_Alls_best_movies() {
		// TODO Auto-generated method stub
		return movie_repo.Get_All_best_movies();
	}

	@Override
	public List<Movie> Get_Alls_worst_movies() {
		// TODO Auto-generated method stub
		return movie_repo.Get_All_worst_movies();
	}

	@Override
	public List<Movie> Get_All_details_when_click(int mid) {
		// TODO Auto-generated method stub
		return movie_repo.Get_All_details_whenn_click(mid);
	}

	@Override
	public List<UserModel> Get_All_rating_and_reviews_when_click_on_movie(int mid) {
		// TODO Auto-generated method stub
		return movie_repo.Get_All_rating_and_reviews_when_click_on_movie(mid);
	}

	@Override
	public List<Movie> Get_All_similar_movies_like_current_movie(int mid) {
		// TODO Auto-generated method stub
		return movie_repo.Get_All_similar_movies_like_current_movie(mid);
	}

}
