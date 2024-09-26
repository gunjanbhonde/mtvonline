package org.techhub.movies_recommendation.service;

import java.util.List;

import org.techhub.movies_recommendation.model.Admin;
import org.techhub.movies_recommendation.model.Banner;
import org.techhub.movies_recommendation.model.Movie;

public interface Banner_Service {

	public boolean isADD_NEW_banner(Banner banner);

	public List<Banner> is_geting_all_banners();

	public List<Banner> get_ALL_banner_info();

}
