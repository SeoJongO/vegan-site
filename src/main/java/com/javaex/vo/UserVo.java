package com.javaex.vo;

public class UserVo {

	private int user_No;
	private String email;
	private String password;
	private String nickname;
	private String gender;
	private String phonenumber;
	private String vegan_type;

	public UserVo() {
	}
	
	public UserVo(String email, String password) {
		this.email = email;
		this.password = password;
	}
	
	public UserVo(String password, String nickname, String gender, String phonenumber, String vegan_type, String email) {
		this.password = password;
		this.nickname = nickname;
		this.gender = gender;
		this.phonenumber = phonenumber;
		this.vegan_type = vegan_type;
		this.email = email;
	}

	public UserVo(int user_No, String email, String password, String nickname, String gender, String phonenumber, String vegan_type) {
		this.user_No = user_No;
		this.email = email;
		this.password = password;
		this.nickname = nickname;
		this.gender = gender;
		this.phonenumber = phonenumber;
		this.vegan_type = vegan_type;
	}

	public int getUser_No() {
		return user_No;
	}

	public void setUser_No(int user_No) {
		this.user_No = user_No;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getVegan_type() {
		return vegan_type;
	}

	public void setVegan_type(String vegan_type) {
		this.vegan_type = vegan_type;
	}

	@Override
	public String toString() {
		return "userVo [user_No=" + user_No + ", email=" + email + ", password=" + password + ", nickname=" + nickname
				+ ", gender=" + gender + ", phonenumber=" + phonenumber + ", vegan_type=" + vegan_type + "]";
	}

}
