package org.techhub.movies_recommendation.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.techhub.movies_recommendation.model.Movie;
import org.techhub.movies_recommendation.model.UserModel;

@Repository("movie_repo")
public class Movie_Repo_Impl implements Movie_Repo {

	@Autowired
	JdbcTemplate jdbcTemplate;

	/* code for inserting the movie data into the movieinfo table */

	@Override
	public boolean is_add_New_movie(final Movie movie) {
		int value = jdbcTemplate.update(
				"insert into movieinfo(movie_title,movie_mapping_name,movie_desc,movie_category,movie_director_name,movie_actor_1,movie_actor_2,movie_actor_3,movie_language,movie_type,movie_trailer_link,movie_watch_link,movie_budget,movie_release_date,movie_country) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
				new PreparedStatementSetter() {

					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						ps.setString(1, movie.getMovie_title());
						ps.setString(2, movie.getMovie_mapping_name());
						ps.setString(3, movie.getMovie_desc());
						ps.setString(4, movie.getMovie_category());
						ps.setString(5, movie.getMovie_director_name());
						ps.setString(6, movie.getMovie_actor_1());
						ps.setString(7, movie.getMovie_actor_2());
						ps.setString(8, movie.getMovie_actor_3());
						ps.setString(9, movie.getMovie_language());
						ps.setString(10, movie.getMovie_type());
						ps.setString(11, movie.getMovie_trailer_link());
						ps.setString(12, movie.getMovie_watch_link());
						ps.setString(13, movie.getMovie_budget());
						ps.setString(14, movie.getMovie_release_date());
						ps.setString(15, movie.getMovie_country());

					}

				});
		return value > 0 ? true : false;
	}

	@Override
	public List<Movie> is_geting_alls_hollywood() {
		List<Movie> list = jdbcTemplate.query(
				"select  m.m_id,m.movie_title,m.movie_mapping_name,m.movie_desc,m.movie_category, m.movie_director_name, m.movie_actor_1,  m.movie_actor_2,  m.movie_actor_3,m.movie_language,m.movie_type ,m.movie_trailer_link,m.movie_watch_link,m.movie_budget, m.movie_release_date, m.movie_country, avg(r.rating) as avg_rating from  movieinfo m left join  rating_table r on m.m_id = r.m_id where  m.movie_country = 'usa' group by  m.m_id,m.movie_title,m.movie_mapping_name,m.movie_desc,m.movie_category, m.movie_director_name, m.movie_actor_1,  m.movie_actor_2,  m.movie_actor_3,m.movie_language,m.movie_type ,m.movie_trailer_link,m.movie_watch_link,m.movie_budget, m.movie_release_date, m.movie_country  order by  avg_rating desc ",
				new RowMapper<Movie>() {

					@Override
					public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {
						Movie m = new Movie();
						m.setM_id(rs.getInt(1));
						m.setMovie_title(rs.getString(2));
						m.setMovie_mapping_name(rs.getString(3));
						m.setMovie_desc(rs.getString(4));
						m.setMovie_category(rs.getString(5));
						m.setMovie_director_name(rs.getString(6));
						m.setMovie_actor_1(rs.getString(7));
						m.setMovie_actor_2(rs.getString(8));
						m.setMovie_actor_3(rs.getString(9));
						m.setMovie_language(rs.getString(10));
						m.setMovie_type(rs.getString(11));
						m.setMovie_trailer_link(rs.getString(12));
						m.setMovie_watch_link(rs.getString(13));
						m.setMovie_budget(rs.getString(14));
						m.setMovie_release_date(rs.getString(15));
						m.setMovie_country(rs.getString(16));
						m.setAverage_rating(rs.getInt(17));
						return m;

					}

				});
		return list;
	}

	@Override
	public boolean isDelete_movie_by_m_id(int mid) {
		int value = jdbcTemplate.update("delete from movieinfo where m_id=" + mid);
		return true;
	}

	@Override
	public List<Movie> get_ALl_Movies_info() {
		List<Movie> list = jdbcTemplate.query("select *from movieinfo order by m_id desc",new RowMapper<Movie>() {

			@Override
			public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {
				Movie m = new Movie();
				m.setM_id(rs.getInt(1));
				m.setMovie_title(rs.getString(2));
				m.setMovie_mapping_name(rs.getString(3));
				m.setMovie_desc(rs.getString(4));
				m.setMovie_category(rs.getString(5));
				m.setMovie_director_name(rs.getString(6));
				m.setMovie_actor_1(rs.getString(7));
				m.setMovie_actor_2(rs.getString(8));
				m.setMovie_actor_3(rs.getString(9));
				m.setMovie_language(rs.getString(10));
				m.setMovie_type(rs.getString(11));
				m.setMovie_trailer_link(rs.getString(12));
				m.setMovie_watch_link(rs.getString(13));
				m.setMovie_budget(rs.getString(14));
				m.setMovie_release_date(rs.getString(15));
				m.setMovie_country(rs.getString(16));
				
				return m;
			}
			
		});
		return list.size()>0?list:null;
	}

	@Override
	public List<Movie> is_geting_alls_new_realeses() {

		List<Movie> list = jdbcTemplate.query(
				"select  mi.*, avg(mr.rating) as avg_rating from  movieinfo mi left join rating_table mr on mi.m_id = mr.m_id group by mi.m_id order by mi.movie_release_date desc, mi.m_id desc limit 15",
				new RowMapper<Movie>() {

					@Override
					public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {

						Movie m = new Movie();
						m.setM_id(rs.getInt(1));
						m.setMovie_title(rs.getString(2));
						m.setMovie_mapping_name(rs.getString(3));
						m.setMovie_desc(rs.getString(4));
						m.setMovie_category(rs.getString(5));
						m.setMovie_director_name(rs.getString(6));
						m.setMovie_actor_1(rs.getString(7));
						m.setMovie_actor_2(rs.getString(8));
						m.setMovie_actor_3(rs.getString(9));
						m.setMovie_language(rs.getString(10));
						m.setMovie_type(rs.getString(11));
						m.setMovie_trailer_link(rs.getString(12));
						m.setMovie_watch_link(rs.getString(13));
						m.setMovie_budget(rs.getString(14));
						m.setMovie_release_date(rs.getString(15));
						m.setMovie_country(rs.getString(16));
						m.setAverage_rating(rs.getInt(17));
					

						return m;

					}

				});
		return list;

	}

	@Override
	public List<Movie> is_geting_alls_trendings() {
		List<Movie> list = jdbcTemplate.query(
		"select mi.m_id, mi.movie_title, mi.movie_mapping_name, mi.movie_desc, mi.movie_category, mi.movie_director_name, mi.movie_actor_1, mi.movie_actor_2, mi.movie_actor_3, mi.movie_language, mi.movie_type, mi.movie_trailer_link, mi.movie_watch_link, mi.movie_budget, mi.movie_release_date, mi.movie_country, avg(rt.rating) as average_rating, group_concat(distinct rt.review order by rt.rating desc separator '; ') as reviews from movieinfo mi join rating_table rt on mi.m_id = rt.m_id group by mi.m_id order by average_rating desc limit 16",
				
				new RowMapper<Movie>() {

					@Override
					public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {

						Movie m = new Movie();
						m.setM_id(rs.getInt(1));
						m.setMovie_title(rs.getString(2));
						m.setMovie_mapping_name(rs.getString(3));
						m.setMovie_desc(rs.getString(4));
						m.setMovie_category(rs.getString(5));
						m.setMovie_director_name(rs.getString(6));
						m.setMovie_actor_1(rs.getString(7));
						m.setMovie_actor_2(rs.getString(8));
						m.setMovie_actor_3(rs.getString(9));
						m.setMovie_language(rs.getString(10));
						m.setMovie_type(rs.getString(11));
						m.setMovie_trailer_link(rs.getString(12));
						m.setMovie_watch_link(rs.getString(13));
						m.setMovie_budget(rs.getString(14));
						m.setMovie_release_date(rs.getString(15));
						m.setMovie_country(rs.getString(16));
						m.setAverage_rating(rs.getInt(17));
						m.setReviews(rs.getString(18));
						return m;

					}

				});
		return list;
	}

	@Override
	public List<Movie> is_geting_alls_Action() {

		List<Movie> list = jdbcTemplate.query(
		"select mi.m_id, mi.movie_title, mi.movie_mapping_name, mi.movie_desc, mi.movie_category, mi.movie_director_name, mi.movie_actor_1, mi.movie_actor_2, mi.movie_actor_3, mi.movie_language, mi.movie_type, mi.movie_trailer_link, mi.movie_watch_link, mi.movie_budget, mi.movie_release_date, mi.movie_country, avg(rt.rating) as average_rating, group_concat(distinct rt.review order by rt.rating desc separator '; ') as reviews from movieinfo mi join rating_table rt on mi.m_id = rt.m_id where mi.movie_category like '%action%' group by mi.m_id order by average_rating desc limit 16",
		
				new RowMapper<Movie>() {

					@Override
					public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {

						Movie m = new Movie();
						m.setM_id(rs.getInt(1));
						m.setMovie_title(rs.getString(2));
						m.setMovie_mapping_name(rs.getString(3));
						m.setMovie_desc(rs.getString(4));
						m.setMovie_category(rs.getString(5));
						m.setMovie_director_name(rs.getString(6));
						m.setMovie_actor_1(rs.getString(7));
						m.setMovie_actor_2(rs.getString(8));
						m.setMovie_actor_3(rs.getString(9));
						m.setMovie_language(rs.getString(10));
						m.setMovie_type(rs.getString(11));
						m.setMovie_trailer_link(rs.getString(12));
						m.setMovie_watch_link(rs.getString(13));
						m.setMovie_budget(rs.getString(14));
						m.setMovie_release_date(rs.getString(15));
						m.setMovie_country(rs.getString(16));
						m.setAverage_rating(rs.getInt(17));
						m.setReviews(rs.getString(18));
						return m;

					}

				});
		return list;

	}

	@Override
	public List<Movie> is_geting_alls_Drama() {


		List<Movie> list = jdbcTemplate.query(
				"select mi.m_id, mi.movie_title, mi.movie_mapping_name, mi.movie_desc, mi.movie_category, mi.movie_director_name, mi.movie_actor_1, mi.movie_actor_2, mi.movie_actor_3, mi.movie_language, mi.movie_type, mi.movie_trailer_link, mi.movie_watch_link, mi.movie_budget, mi.movie_release_date, mi.movie_country, avg(rt.rating) as average_rating, group_concat(distinct rt.review order by rt.rating desc separator '; ') as reviews from movieinfo mi join rating_table rt on mi.m_id = rt.m_id where mi.movie_category like '%drama%' group by mi.m_id order by average_rating desc limit 16",
				
				new RowMapper<Movie>() {

					@Override
					public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {

						Movie m = new Movie();
						m.setM_id(rs.getInt(1));
						m.setMovie_title(rs.getString(2));
						m.setMovie_mapping_name(rs.getString(3));
						m.setMovie_desc(rs.getString(4));
						m.setMovie_category(rs.getString(5));
						m.setMovie_director_name(rs.getString(6));
						m.setMovie_actor_1(rs.getString(7));
						m.setMovie_actor_2(rs.getString(8));
						m.setMovie_actor_3(rs.getString(9));
						m.setMovie_language(rs.getString(10));
						m.setMovie_type(rs.getString(11));
						m.setMovie_trailer_link(rs.getString(12));
						m.setMovie_watch_link(rs.getString(13));
						m.setMovie_budget(rs.getString(14));
						m.setMovie_release_date(rs.getString(15));
						m.setMovie_country(rs.getString(16));
						m.setAverage_rating(rs.getInt(17));
						m.setReviews(rs.getString(18));
						
						return m;

					}

				});
		return list;

	}

	@Override
	public List<Movie> is_geting_alls_Comedy() {
		List<Movie> list = jdbcTemplate.query(
				"select mi.m_id, mi.movie_title, mi.movie_mapping_name, mi.movie_desc, mi.movie_category, mi.movie_director_name, mi.movie_actor_1, mi.movie_actor_2, mi.movie_actor_3, mi.movie_language, mi.movie_type, mi.movie_trailer_link, mi.movie_watch_link, mi.movie_budget, mi.movie_release_date, mi.movie_country, avg(rt.rating) as average_rating, group_concat(distinct rt.review order by rt.rating desc separator '; ') as reviews from movieinfo mi join rating_table rt on mi.m_id = rt.m_id where mi.movie_category like '%comedy%' group by mi.m_id order by average_rating desc limit 16",
				
				new RowMapper<Movie>() {

					@Override
					public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {

						Movie m = new Movie();
						m.setM_id(rs.getInt(1));
						m.setMovie_title(rs.getString(2));
						m.setMovie_mapping_name(rs.getString(3));
						m.setMovie_desc(rs.getString(4));
						m.setMovie_category(rs.getString(5));
						m.setMovie_director_name(rs.getString(6));
						m.setMovie_actor_1(rs.getString(7));
						m.setMovie_actor_2(rs.getString(8));
						m.setMovie_actor_3(rs.getString(9));
						m.setMovie_language(rs.getString(10));
						m.setMovie_type(rs.getString(11));
						m.setMovie_trailer_link(rs.getString(12));
						m.setMovie_watch_link(rs.getString(13));
						m.setMovie_budget(rs.getString(14));
						m.setMovie_release_date(rs.getString(15));
						m.setMovie_country(rs.getString(16));
						m.setAverage_rating(rs.getInt(17));
						m.setReviews(rs.getString(18));
						return m;

					}

				});
		return list;
	}

	@Override
	public List<Movie> Get_All_best_movies() {
		List<Movie> list = jdbcTemplate.query(
				"select mi.m_id, mi.movie_title, mi.movie_mapping_name, mi.movie_desc, mi.movie_category, mi.movie_director_name, mi.movie_actor_1, mi.movie_actor_2, mi.movie_actor_3, mi.movie_language, mi.movie_type, mi.movie_trailer_link, mi.movie_watch_link, mi.movie_budget, mi.movie_release_date, mi.movie_country, avg(rt.rating) as average_rating, group_concat(distinct rt.review order by rt.rating desc separator '; ') as reviews from movieinfo mi join rating_table rt on mi.m_id = rt.m_id group by mi.m_id order by average_rating desc limit 10",
			
				new RowMapper<Movie>() {

					@Override
					public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {

						Movie m = new Movie();
						m.setM_id(rs.getInt(1));
						m.setMovie_title(rs.getString(2));
						m.setMovie_mapping_name(rs.getString(3));
						m.setMovie_desc(rs.getString(4));
						m.setMovie_category(rs.getString(5));
						m.setMovie_director_name(rs.getString(6));
						m.setMovie_actor_1(rs.getString(7));
						m.setMovie_actor_2(rs.getString(8));
						m.setMovie_actor_3(rs.getString(9));
						m.setMovie_language(rs.getString(10));
						m.setMovie_type(rs.getString(11));
						m.setMovie_trailer_link(rs.getString(12));
						m.setMovie_watch_link(rs.getString(13));
						m.setMovie_budget(rs.getString(14));
						m.setMovie_release_date(rs.getString(15));
						m.setMovie_country(rs.getString(16));
						m.setAverage_rating(rs.getInt(17));
						m.setReviews(rs.getString(18));
						return m;

					}

				});
		return list;
	}

	@Override
	public List<Movie> Get_All_worst_movies() {
		List<Movie> list = jdbcTemplate.query(
		"select mi.m_id, mi.movie_title, mi.movie_mapping_name, mi.movie_desc, mi.movie_category, mi.movie_director_name, mi.movie_actor_1, mi.movie_actor_2, mi.movie_actor_3, mi.movie_language, mi.movie_type, mi.movie_trailer_link, mi.movie_watch_link, mi.movie_budget, mi.movie_release_date, mi.movie_country, avg(rt.rating) as average_rating, group_concat(distinct rt.review order by rt.rating asc separator '; ') as reviews from movieinfo mi join rating_table rt on mi.m_id = rt.m_id group by mi.m_id order by average_rating asc limit 10",
		
				new RowMapper<Movie>() {

					@Override
					public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {

						Movie m = new Movie();
						m.setM_id(rs.getInt(1));
						m.setMovie_title(rs.getString(2));
						m.setMovie_mapping_name(rs.getString(3));
						m.setMovie_desc(rs.getString(4));
						m.setMovie_category(rs.getString(5));
						m.setMovie_director_name(rs.getString(6));
						m.setMovie_actor_1(rs.getString(7));
						m.setMovie_actor_2(rs.getString(8));
						m.setMovie_actor_3(rs.getString(9));
						m.setMovie_language(rs.getString(10));
						m.setMovie_type(rs.getString(11));
						m.setMovie_trailer_link(rs.getString(12));
						m.setMovie_watch_link(rs.getString(13));
						m.setMovie_budget(rs.getString(14));
						m.setMovie_release_date(rs.getString(15));
						m.setMovie_country(rs.getString(16));
						m.setAverage_rating(rs.getInt(17));
						m.setReviews(rs.getString(18));
						return m;

					}

				});
		return list;
	}

	@Override
	public List<Movie> Get_All_details_whenn_click(int mid) {
		List<Movie> list = jdbcTemplate.query(
	"select m.m_id, m.movie_title, m.movie_mapping_name, m.movie_desc, m.movie_category, m.movie_director_name, m.movie_actor_1, m.movie_actor_2, m.movie_actor_3, m.movie_language, m.movie_type, m.movie_trailer_link, m.movie_watch_link, m.movie_budget, m.movie_release_date, m.movie_country, coalesce(avg(r.rating), 0) as average_rating from movieinfo m left join rating_table r on m.m_id = r.m_id where m.m_id = '"+mid+"' group by m.m_id, m.movie_title, m.movie_mapping_name, m.movie_desc, m.movie_category, m.movie_director_name, m.movie_actor_1, m.movie_actor_2, m.movie_actor_3, m.movie_language, m.movie_type, m.movie_trailer_link, m.movie_watch_link, m.movie_budget, m.movie_release_date, m.movie_country",
	
						
						
				new RowMapper<Movie>() {

					@Override
					public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {

						Movie m = new Movie();
						m.setM_id(rs.getInt(1));
						m.setMovie_title(rs.getString(2));
						m.setMovie_mapping_name(rs.getString(3));
						m.setMovie_desc(rs.getString(4));
						m.setMovie_category(rs.getString(5));
						m.setMovie_director_name(rs.getString(6));
						m.setMovie_actor_1(rs.getString(7));
						m.setMovie_actor_2(rs.getString(8));
						m.setMovie_actor_3(rs.getString(9));
						m.setMovie_language(rs.getString(10));
						m.setMovie_type(rs.getString(11));
						m.setMovie_trailer_link(rs.getString(12));
						m.setMovie_watch_link(rs.getString(13));
						m.setMovie_budget(rs.getString(14));
						m.setMovie_release_date(rs.getString(15));
						m.setMovie_country(rs.getString(16));
						m.setAverage_rating(rs.getInt(17));
						return m;

					}

				});
		return list;
	}

	@Override
	public List<UserModel> Get_All_rating_and_reviews_when_click_on_movie(int mid) {
		List<UserModel> list = jdbcTemplate.query(
				"select distinct u.user_id, u.user_name, r.rating, r.review from userinfo u join rating_table r on u.user_id = r.user_id join movieinfo m on r.m_id = m.m_id where m.m_id = '"+mid+"'",
				
                    	new RowMapper<UserModel>() {

								@Override
								public UserModel mapRow(ResultSet rs, int rowNum) throws SQLException {

									UserModel m = new UserModel();
									m.setUser_id(rs.getInt(1));
									m.setUser_name(rs.getString(2));
									m.setRating(rs.getInt(3));
									m.setReview(rs.getString(4));
									return m;

								}

							});
					return list;
	}

	@Override
	public List<Movie> Get_All_similar_movies_like_current_movie(int mid) {
		List<Movie> list = jdbcTemplate.query(
	 "select * from movieinfo where movie_country like (select concat('%', movie_country, '%') from movieinfo where m_id ='"+mid+"') and movie_category like (select concat('%', movie_category, '%') from movieinfo where m_id ='"+mid+"') and m_id !='"+mid+"'",
							
							new RowMapper<Movie>() {

								@Override
								public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {
									Movie m = new Movie();
									m.setM_id(rs.getInt(1));
									m.setMovie_title(rs.getString(2));
									m.setMovie_mapping_name(rs.getString(3));
									m.setMovie_desc(rs.getString(4));
									m.setMovie_category(rs.getString(5));
									m.setMovie_director_name(rs.getString(6));
									m.setMovie_actor_1(rs.getString(7));
									m.setMovie_actor_2(rs.getString(8));
									m.setMovie_actor_3(rs.getString(9));
									m.setMovie_language(rs.getString(10));
									m.setMovie_type(rs.getString(11));
									m.setMovie_trailer_link(rs.getString(12));
									m.setMovie_watch_link(rs.getString(13));
									m.setMovie_budget(rs.getString(14));
									m.setMovie_release_date(rs.getString(15));
									m.setMovie_country(rs.getString(16));
									return m;

								}

							});
					return list;
	}

	/*
	 * =============================================================================
	 * =========================================================
	 */
	



}
