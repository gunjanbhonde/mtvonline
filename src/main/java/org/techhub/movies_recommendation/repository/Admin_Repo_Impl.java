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
import org.techhub.movies_recommendation.model.Admin;
import org.techhub.movies_recommendation.model.Banner;
import org.techhub.movies_recommendation.model.Movie;
import org.techhub.movies_recommendation.model.UserModel;

@Repository("admin_repo")

public class Admin_Repo_Impl implements Admin_Repo {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public Admin isValidAdmin(Admin admin) {

		Object obj[] = { admin.getAdminname(), admin.getAdminpassword() };
		String sql = "select *from admininfo where adminname=? and adminpassword=?";

		Admin getAdm = new Admin();
		boolean value = true;
		try {
			Admin getAdminDetails = jdbcTemplate.queryForObject(sql, new RowMapper<Admin>() {

				@Override
				public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
					Admin getDetails = new Admin();
					getDetails.setAid(rs.getInt(1));
					getDetails.setAdminname(rs.getString(2));
					getDetails.setAdminpassword(rs.getString(3));

					return getDetails;
				}

			}, obj);
			getAdm = getAdminDetails;
		} catch (Exception ex) {
			value = false;
			System.out.println("error in validate admin :" + ex);
			getAdm = null;

		}

		return getAdm;

	}

	@Override
	public boolean is_Add_New_Admin(final Admin admin) {

		int value = jdbcTemplate.update("insert into admininfo(adminname,adminpassword,superadmin) values(?,?,?)",
				new PreparedStatementSetter() {

					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						ps.setString(1, admin.getAdminname());
						ps.setString(2, admin.getAdminpassword());
						ps.setString(3, admin.getSuperadmin());

					}

				});
		return value > 0 ? true : false;
	}

	@Override
	public boolean Update_Admin(final Admin admin) {
		int Aid = admin.getAid();
		int value = jdbcTemplate.update("update admininfo set adminname=?,adminpassword=?,superadmin=? where aid='"
				+ Aid + "' and superadmin!='superadmin'", new PreparedStatementSetter() {

					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						ps.setString(1, admin.getAdminname());
						ps.setString(2, admin.getAdminpassword());
						ps.setString(3, admin.getSuperadmin());

					}

				});
		return value > 0 ? true : false;

	}

	@Override
	public boolean Delete_Admin(Admin admin) {
		int Aid = admin.getAid();
		int value = jdbcTemplate.update("delete from admininfo where aid='" + Aid + "' and superadmin!='superadmin'");

		return value > 0 ? true : false;

	}

	// -----------view--Admin--------------------------//

	public List<Admin> viewAdmin() {

		List<Admin> list = jdbcTemplate.query("select *from admininfo", new RowMapper<Admin>() {

			public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {

				Admin aModel = new Admin();
				aModel.setAid(rs.getInt(1));
				aModel.setAdminname(rs.getString(2));
				aModel.setAdminpassword(rs.getString(3));
				aModel.setSuperadmin(rs.getString(4));
				return aModel;

			}
		});

		return list.size() > 0 ? list : null;
	}

	@Override
	public List<Admin> get_ALl_Admin_info() {
		List<Admin> list = jdbcTemplate.query("select *from admininfo",new RowMapper<Admin>() {

			@Override
			public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
				Admin m = new Admin();
				m.setAid(rs.getInt(1));
				m.setAdminname(rs.getString(2));
				m.setAdminpassword(rs.getString(3));
				m.setSuperadmin(rs.getString(4));
				
				return m;
			}
			
		});
		return list.size()>0?list:null;
	}

	@Override
	public boolean isDelete_user_by_u_id(int uid) {
		int value = jdbcTemplate.update("delete from userinfo where user_id=" + uid);
		return true;
	}

	@Override
	public Movie get_Total_Movies() {
		Movie movie=new Movie();
		 
		String sql = "select count(m_id) as total_movies from movieinfo";
				

		    int totalMovie = jdbcTemplate.queryForObject(sql, Integer.class);

		    movie.setTotal_movies(totalMovie);

		    return movie;
	}


	@Override
	public Banner get_Total_Banner() {
		Banner banner=new Banner();
		 
		String sql = "select count(b_id) as total_banners from banner";

		    int totalbanner = jdbcTemplate.queryForObject(sql, Integer.class);

		    banner.setTotal_banners(totalbanner);

		    return banner;
	}

	
	public UserModel get_Total_Users() {
		UserModel user = new UserModel();
		
	    String sql = "select count(user_id) as total_users from userinfo";

	    int totalUsers = jdbcTemplate.queryForObject(sql, Integer.class);

	    user.setTotal_users(totalUsers);

	    return user;
	}

	@Override
	public boolean isDelete_Banner_by_b_id(int bid) {
		int value = jdbcTemplate.update("delete from banner where b_id=" + bid);
		return true;
	}


}
