package org.techhub.movies_recommendation.model;

public class WatchList {

	private int w_id;
	
	private int user_id;
	
	private int m_id;

	public int getW_id() {
		return w_id;
	}

	public void setW_id(int w_id) {
		this.w_id = w_id;
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

	@Override
	public String toString() {
		return "WatchList [w_id=" + w_id + ", user_id=" + user_id + ", m_id=" + m_id + "]";
	}

	
	
	
	
	
}
