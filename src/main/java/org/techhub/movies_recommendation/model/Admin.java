package org.techhub.movies_recommendation.model;

public class Admin {
	private int aid;
	private String adminname;
	private String adminpassword;
	private String superadmin="subAdmin";
	public int getAid() {
		return aid;
	}
	public String getSuperadmin() {
		return superadmin;
	}
	public void setSuperadmin(String superadmin) {
		this.superadmin = superadmin;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getAdminpassword() {
		return adminpassword;
	}
	public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
		
	}
	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", adminname=" + adminname + ", adminpassword=" + adminpassword + ", superadmin="
				+ superadmin + "]";
	}




}




