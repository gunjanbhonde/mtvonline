package org.techhub.movies_recommendation.model;

public class User_Details {
	   private int user_id;
	    private String user_name;
	    private String user_password;
	    private String user_email;
	    private String user_contact;
	    private String user_city;
		public int getUser_id() {
			return user_id;
		}
		public void setUser_id(int user_id) {
			this.user_id = user_id;
		}
		public String getUser_name() {
			return user_name;
		}
		public void setUser_name(String user_name) {
			this.user_name = user_name;
		}
		public String getUser_password() {
			return user_password;
		}
		public void setUser_password(String user_password) {
			this.user_password = user_password;
		}
		public String getUser_email() {
			return user_email;
		}
		public void setUser_email(String user_email) {
			this.user_email = user_email;
		}
		public String getUser_contact() {
			return user_contact;
		}
		public void setUser_contact(String user_contact) {
			this.user_contact = user_contact;
		}
		public String getUser_city() {
			return user_city;
		}
		public void setUser_city(String user_city) {
			this.user_city = user_city;
		}
		@Override
		public String toString() {
			return "y [user_id=" + user_id + ", user_name=" + user_name + ", user_password=" + user_password
					+ ", user_email=" + user_email + ", user_contact=" + user_contact + ", user_city=" + user_city
					+ "]";
		}
}
