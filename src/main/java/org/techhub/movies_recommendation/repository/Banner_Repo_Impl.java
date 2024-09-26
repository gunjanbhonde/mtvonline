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

import com.mysql.cj.x.protobuf.MysqlxResultset.Row;

@Repository("banner_repo")
public class Banner_Repo_Impl implements Banner_Repo {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public boolean isADD_NEW_Banner(final Banner banner) {

		int value = jdbcTemplate.update("insert into banner(banner_name,banner_highlights) values(?,?)",
				new PreparedStatementSetter() {

					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						ps.setString(1, banner.getBanner_name());
						ps.setString(2, banner.getBanner_highlights());

					}

				});
		return value > 0 ? true : false;

	}

	@Override
	public List<Banner> is_geting_alls_banners() {

		List<Banner> list = jdbcTemplate.query("select *from banner", new RowMapper<Banner>() {

			@Override
			public Banner mapRow(ResultSet rs, int rowNum) throws SQLException {

				Banner r = new Banner();
				r.setB_id(rs.getInt(1));
				r.setBanner_name(rs.getString(2));
				r.setBanner_highlights(rs.getString(3));
				return r;

			}

		});

		return list;

	}

	@Override
	public List<Banner> get_ALL_banners_info() {
		List<Banner> list = jdbcTemplate.query("select *from banner",new RowMapper<Banner>() {

			@Override
			public Banner mapRow(ResultSet rs, int rowNum) throws SQLException {
				Banner m = new Banner();
				m.setB_id(rs.getInt(1));
				m.setBanner_name(rs.getString(2));
				m.setBanner_highlights(rs.getString(3));
		
				
				return m;
			}
			
		});
		return list.size()>0?list:null;
	
	}

}
