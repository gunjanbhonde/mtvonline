package org.techhub.movies_recommendation.model;

public class Recommendation_Model {

	private int r_id;
	private int user_id;
	private String selectedlanguages;
	private String selectedactors;
	private String selectedcategories;
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getSelectedlanguages() {
		return selectedlanguages;
	}
	public void setSelectedlanguages(String selectedlanguages) {
		this.selectedlanguages = selectedlanguages;
	}
	public String getSelectedactors() {
		return selectedactors;
	}
	public void setSelectedactors(String selectedactors) {
		this.selectedactors = selectedactors;
	}
	public String getSelectedcategories() {
		return selectedcategories;
	}
	public void setSelectedcategories(String selectedcategories) {
		this.selectedcategories = selectedcategories;
	}
	@Override
	public String toString() {
		return "Recommendation_Model [r_id=" + r_id + ", user_id=" + user_id + ", selectedlanguages="
				+ selectedlanguages + ", selectedactors=" + selectedactors + ", selectedcategories="
				+ selectedcategories + "]";
	}


	
	
	
	
	
}
