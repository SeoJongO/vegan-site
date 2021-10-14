package com.javaex.vo;

public class ReviewPageVo {

	private int u_no;
	private int s_no;
	private int r_no;
	private String s_name;
	private String r_contents;
	private String r_date;
	private int star;
	private String savename;

	public ReviewPageVo() {
	}

	public ReviewPageVo(int u_no, int s_no, int r_no, String s_name, String r_contents, String r_date, int star,
			String savename) {
		this.u_no = u_no;
		this.s_no = s_no;
		this.r_no = r_no;
		this.s_name = s_name;
		this.r_contents = r_contents;
		this.r_date = r_date;
		this.star = star;
		this.savename = savename;
	}

	public int getU_no() {
		return u_no;
	}

	public void setU_no(int u_no) {
		this.u_no = u_no;
	}

	public int getS_no() {
		return s_no;
	}

	public void setS_no(int s_no) {
		this.s_no = s_no;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getR_contents() {
		return r_contents;
	}

	public void setR_contents(String r_contents) {
		this.r_contents = r_contents;
	}

	public String getR_date() {
		return r_date;
	}

	public void setR_date(String r_date) {
		this.r_date = r_date;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public String getSavename() {
		return savename;
	}

	public void setSavename(String savename) {
		this.savename = savename;
	}

	@Override
	public String toString() {
		return "ReviewPageVo [u_no=" + u_no + ", s_no=" + s_no + ", r_no=" + r_no + ", s_name=" + s_name
				+ ", r_contents=" + r_contents + ", r_date=" + r_date + ", star=" + star + ", savename=" + savename
				+ "]";
	}

}
