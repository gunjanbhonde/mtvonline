package org.techhub.movies_recommendation.model;

public class Movie {

	private int m_id;
	private String movie_title;
	private String movie_mapping_name;
	private String movie_desc;
	private String movie_category;
	private String movie_director_name;
	private String movie_actor_1;
	private String movie_actor_2;
	private String movie_actor_3;
	private String movie_language;
	private String movie_type;
	private String movie_trailer_link;
	private String movie_watch_link;
	private String movie_budget;
	private String movie_release_date;
	private String movie_country;
	private int  total_movies;
	
	public int getTotal_movies() {
		return total_movies;
	}
	public void setTotal_movies(int total_movies) {
		this.total_movies = total_movies;
	}
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public String getMovie_title() {
		return movie_title;
	}
	public void setMovie_title(String movie_title) {
		this.movie_title = movie_title;
	}
	public String getMovie_mapping_name() {
		return movie_mapping_name;
	}
	public void setMovie_mapping_name(String movie_mapping_name) {
		this.movie_mapping_name = movie_mapping_name;
	}
	public String getMovie_desc() {
		return movie_desc;
	}
	public void setMovie_desc(String movie_desc) {
		this.movie_desc = movie_desc;
	}
	public String getMovie_category() {
		return movie_category;
	}
	public void setMovie_category(String movie_category) {
		this.movie_category = movie_category;
	}
	public String getMovie_director_name() {
		return movie_director_name;
	}
	public void setMovie_director_name(String movie_director_name) {
		this.movie_director_name = movie_director_name;
	}
	public String getMovie_actor_1() {
		return movie_actor_1;
	}
	public void setMovie_actor_1(String movie_actor_1) {
		this.movie_actor_1 = movie_actor_1;
	}
	public String getMovie_actor_2() {
		return movie_actor_2;
	}
	public void setMovie_actor_2(String movie_actor_2) {
		this.movie_actor_2 = movie_actor_2;
	}
	public String getMovie_actor_3() {
		return movie_actor_3;
	}
	public void setMovie_actor_3(String movie_actor_3) {
		this.movie_actor_3 = movie_actor_3;
	}
	public String getMovie_language() {
		return movie_language;
	}
	public void setMovie_language(String movie_language) {
		this.movie_language = movie_language;
	}
	public String getMovie_type() {
		return movie_type;
	}
	public void setMovie_type(String movie_type) {
		this.movie_type = movie_type;
	}
	public String getMovie_trailer_link() {
		return movie_trailer_link;
	}
	public void setMovie_trailer_link(String movie_trailer_link) {
		this.movie_trailer_link = movie_trailer_link;
	}
	public String getMovie_watch_link() {
		return movie_watch_link;
	}
	public void setMovie_watch_link(String movie_watch_link) {
		this.movie_watch_link = movie_watch_link;
	}
	public String getMovie_budget() {
		return movie_budget;
	}
	public void setMovie_budget(String movie_budget) {
		this.movie_budget = movie_budget;
	}
	public String getMovie_release_date() {
		return movie_release_date;
	}
	public void setMovie_release_date(String movie_release_date) {
		this.movie_release_date = movie_release_date;
	}
	public String getMovie_country() {
		return movie_country;
	}
	public void setMovie_country(String movie_country) {
		this.movie_country = movie_country;
	}
	public int getAverage_rating() {
		return average_rating;
	}
	public void setAverage_rating(int average_rating) {
		this.average_rating = average_rating;
	}
	public String getReviews() {
		return reviews;
	}
	public void setReviews(String reviews) {
		this.reviews = reviews;
	}
	private int average_rating;
	private String reviews;

	@Override
	public String toString() {
		return "Movie [m_id=" + m_id + ", movie_title=" + movie_title + ", movie_mapping_name=" + movie_mapping_name
				+ ", movie_desc=" + movie_desc + ", movie_category=" + movie_category + ", movie_director_name="
				+ movie_director_name + ", movie_actor_1=" + movie_actor_1 + ", movie_actor_2=" + movie_actor_2
				+ ", movie_actor_3=" + movie_actor_3 + ", movie_language=" + movie_language + ", movie_type="
				+ movie_type + ", movie_trailer_link=" + movie_trailer_link + ", movie_watch_link=" + movie_watch_link
				+ ", movie_budget=" + movie_budget + ", movie_release_date=" + movie_release_date + ", movie_country="
				+ movie_country + ", total_movies=" + total_movies + ", average_rating=" + average_rating + ", reviews="
				+ reviews + "]";
	}

}
