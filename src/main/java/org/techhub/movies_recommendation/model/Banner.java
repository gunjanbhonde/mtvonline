package org.techhub.movies_recommendation.model;

public class Banner {

	private int b_id;
	private String banner_name;
	private String banner_highlights;
	private int  total_banners;
	public int getB_id() {
		return b_id;
	}
	public void setB_id(int b_id) {
		this.b_id = b_id;
	}
	public String getBanner_name() {
		return banner_name;
	}
	public void setBanner_name(String banner_name) {
		this.banner_name = banner_name;
	}
	public String getBanner_highlights() {
		return banner_highlights;
	}
	public void setBanner_highlights(String banner_highlights) {
		this.banner_highlights = banner_highlights;
	}
	public int getTotal_banners() {
		return total_banners;
	}
	public void setTotal_banners(int total_banners) {
		this.total_banners = total_banners;
	}
	@Override
	public String toString() {
		return "Banner [b_id=" + b_id + ", banner_name=" + banner_name + ", banner_highlights=" + banner_highlights
				+ ", total_banners=" + total_banners + "]";
	}

	
	
	
	
}
