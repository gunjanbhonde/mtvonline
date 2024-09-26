package org.techhub.movies_recommendation.model;

public class Rating {

	private int rating_id;

	private int user_id;

	private int m_id;

	private int rating;

	private String review;

	public int getRating_id() {
		return rating_id;
	}

	public void setRating_id(int rating_id) {
		this.rating_id = rating_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getM_id() {
		return m_id;
	}

	public void setM_id(int m_id) {
		this.m_id = m_id;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	@Override
	public String toString() {
		return "Rating [rating_id=" + rating_id + ", user_id=" + user_id + ", m_id=" + m_id + ", rating=" + rating
				+ ", review=" + review + "]";
	}

}
