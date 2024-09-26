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
import org.techhub.movies_recommendation.model.*;


@Repository("user_repo")
public class User_Repo_Impl implements User_Repo {

	@Autowired
	JdbcTemplate jdbcTemplate;

	User_Details user_details = new User_Details();
	
	Rating rating = new Rating();
	

	@Override
	public boolean isAddRegister_User(final UserModel user) {
		int value = jdbcTemplate.update(
				"insert into userinfo(user_name,user_password,user_email,user_contact,user_city) values(?,?,?,?,?)",
				new PreparedStatementSetter() {

					@Override
					public void setValues(PreparedStatement ps) throws SQLException {

						ps.setString(1, user.getUser_name());
						ps.setString(2, user.getUser_password());
						ps.setString(3, user.getUser_email());
						ps.setString(4, user.getUser_contact());
						ps.setString(5, user.getUser_city());

					}

				});

		return value > 0 ? true : false;
		
	}

	@Override
	public UserModel isValidUser_Login(UserModel user) {

		Object obj[] = { user.getUser_name(), user.getUser_password() };
		String sql = "select *from userinfo where user_name=? and user_password=?";

		UserModel getUser_Details = new UserModel();

		boolean is_value = true;
		try {
			UserModel getUserDetails = jdbcTemplate.queryForObject(sql, new RowMapper<UserModel>() {

				@Override
				public UserModel mapRow(ResultSet r, int rowNum) throws SQLException {
					UserModel get_user_Details = new UserModel();
					get_user_Details.setUser_id(r.getInt(1));
					get_user_Details.setUser_name(r.getString(2));
					get_user_Details.setUser_password(r.getString(3));
					get_user_Details.setUser_email(r.getString(4));
					get_user_Details.setUser_contact(r.getString(5));
					get_user_Details.setUser_city(r.getString(6));
					return get_user_Details;
				}

			}, obj);
			getUser_Details = getUserDetails;
		} catch (Exception ex) {
			is_value = false;
			System.out.println("Error in validate user:" + ex);
			getUser_Details = null;
		}
		return getUser_Details;

	}

	@Override
	public boolean Update_user(final UserModel user) {
		int userid = user.getUser_id();
		int value = jdbcTemplate.update(
				"update userinfo set user_name=?,user_password=?,user_email=?,user_contact=?,user_city=? where user_id='"
						+ userid + "'",
				new PreparedStatementSetter() {

					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						ps.setString(1, user.getUser_name());
						ps.setString(2, user.getUser_password());
						ps.setString(3, user.getUser_email());
						ps.setString(4, user.getUser_contact());
						ps.setString(5, user.getUser_city());

					}

				});
		return value > 0 ? true : false;
	}

	@Override
	public boolean Delete_user(UserModel user) {
		int userid = user.getUser_id();
		int value = jdbcTemplate.update("delete from userinfo where user_id='" + userid + "'");

		return value > 0 ? true : false;
	}

	@Override
	public List<Movie> Get_Alls_User_History(int id) {
		List<Movie> list = jdbcTemplate.query(
				"select distinct *from movieinfo m join rating_table r on m.m_id = r.m_id join userinfo u on u.user_id = r.user_id where r.user_id ='"+id+"' ",              
					
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
	public boolean is_giveds_rating_by_user(final Rating rating) {
		int value = jdbcTemplate.update(
				"insert into rating_table(user_id,m_id,rating,review) values(?,?,?,?)",
				new PreparedStatementSetter() {

					@Override
					public void setValues(PreparedStatement ps) throws SQLException {

						ps.setInt(1,rating.getUser_id());
						ps.setInt(2,rating.getM_id());
						ps.setInt(3,rating.getRating());
						ps.setString(4,rating.getReview());

					}

				});

		return value > 0 ? true : false;
	}

	@Override
	public List<UserModel> get_ALLs_User_info() {
		List<UserModel> list = jdbcTemplate.query("select *from userinfo order by  user_id desc",new RowMapper<UserModel>() {

			@Override
			public UserModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				UserModel m = new UserModel();
				
			m.setUser_id(rs.getInt(1));
			m.setUser_name(rs.getString(2));
			m.setUser_password(rs.getString(3));
			m.setUser_email(rs.getString(4));
			m.setUser_contact(rs.getString(5));
			m.setUser_city(rs.getString(6));
				
				return m;
			}
			
		});
		return list.size()>0?list:null;
	}

	@Override
	public boolean is_user_Added_Movie_to_watchList(final WatchList watchlist) {
		int value = jdbcTemplate.update(
				"insert into watchlist_table(user_id,m_id) values(?,?)",
				new PreparedStatementSetter() {

					@Override
					public void setValues(PreparedStatement ps) throws SQLException {

						ps.setInt(1,watchlist.getUser_id());
						ps.setInt(2,watchlist.getM_id());
						

					}

				});

		return value > 0 ? true : false;
	}

	@Override
	public List<Movie> Get_All_User_WatchList(int id) {
		List<Movie> list = jdbcTemplate.query(
				
				"select m.* from movieinfo m join watchlist_table w on m.m_id = w.m_id where w.user_id ='"+id+"' ",		
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

	@Override
	public boolean isRecommend(Recommendation_Model r_model) {
		int value = jdbcTemplate.update(
				"insert into rmodel_table(user_id,selectedlanguages,selectedactors,selectedcategories) values(?,?,?,?)",
				new PreparedStatementSetter() {

					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						ps.setInt(1,r_model.getUser_id());
						ps.setString(2,r_model.getSelectedlanguages());
						ps.setString(3,r_model.getSelectedactors());
						ps.setString(4,r_model.getSelectedcategories());

					}

				});

		return value > 0 ? true : false;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
