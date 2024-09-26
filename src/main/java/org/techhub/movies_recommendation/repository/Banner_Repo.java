package org.techhub.movies_recommendation.repository;

import java.util.List;

import org.techhub.movies_recommendation.model.Banner;

public interface Banner_Repo {

	public boolean isADD_NEW_Banner(Banner banner);

	public List<Banner> is_geting_alls_banners();
	
	public List<Banner> get_ALL_banners_info();

}
