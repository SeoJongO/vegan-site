package com.javaex.vo;

public class UserVo {

	private int u_no;
	private String u_email;
	private String u_password;
	private String u_nickname;
	private String u_gender;
	private String u_phone;
	private String u_type;
	private String u_date;

	public UserVo() {
	}

	public UserVo(String u_email, String u_password) {
		super();
		this.u_email = u_email;
		this.u_password = u_password;
	}

	public UserVo(int u_no, String u_email, String u_password, String u_nickname, String u_gender, String u_phone,
			String u_type, String u_date) {
		super();
		this.u_no = u_no;
		this.u_email = u_email;
		this.u_password = u_password;
		this.u_nickname = u_nickname;
		this.u_gender = u_gender;
		this.u_phone = u_phone;
		this.u_type = u_type;
		this.u_date = u_date;
	}

	public int getU_no() {
		return u_no;
	}

	public void setU_no(int u_no) {
		this.u_no = u_no;
	}

	public String getU_email() {
		return u_email;
	}

	public void setU_email(String u_email) {
		this.u_email = u_email;
	}

	public String getU_password() {
		return u_password;
	}

	public void setU_password(String u_password) {
		this.u_password = u_password;
	}

	public String getU_nickname() {
		return u_nickname;
	}

	public void setU_nickname(String u_nickname) {
		this.u_nickname = u_nickname;
	}

	public String getU_gender() {
		return u_gender;
	}

	public void setU_gender(String u_gender) {
		this.u_gender = u_gender;
	}

	public String getU_phone() {
		return u_phone;
	}

	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}

	public String getU_type() {
		return u_type;
	}

	public void setU_type(String u_type) {
		this.u_type = u_type;
	}

	public String getU_date() {
		return u_date;
	}

	public void setU_date(String u_date) {
		this.u_date = u_date;
	}

	@Override
	public String toString() {
		return "UserVo [u_no=" + u_no + ", u_email=" + u_email + ", u_password=" + u_password + ", u_nickname="
				+ u_nickname + ", u_gender=" + u_gender + ", u_phone=" + u_phone + ", u_type=" + u_type + ", u_date="
				+ u_date + "]";
	}

}
