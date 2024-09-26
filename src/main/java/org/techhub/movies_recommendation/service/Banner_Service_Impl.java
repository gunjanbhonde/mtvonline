package org.techhub.movies_recommendation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.techhub.movies_recommendation.model.Admin;
import org.techhub.movies_recommendation.model.Banner;
import org.techhub.movies_recommendation.repository.Admin_Repo;
import org.techhub.movies_recommendation.repository.Banner_Repo;

@Service("banner_service")
public class Banner_Service_Impl implements Banner_Service {

	@Autowired
	Banner_Repo banner_repo;

	@Override
	public boolean isADD_NEW_banner(Banner banner) {
		// TODO Auto-generated method stub
		return banner_repo.isADD_NEW_Banner(banner);
	}

	@Override
	public List<Banner> is_geting_all_banners() {

		return banner_repo.is_geting_alls_banners();
	}

	@Override
	public List<Banner> get_ALL_banner_info() {
		// TODO Auto-generated method stub
		return banner_repo.get_ALL_banners_info();
	}

}
