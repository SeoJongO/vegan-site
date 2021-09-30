package com.javaex.vo;

public class ServiceCenterVo {

	//필드
	private int c_no;
	private int s_no;
	private int u_no;
	private String c_title;
	private String c_content;
	private String c_date;
	
	
	//생성자
	
	
	
	
	public ServiceCenterVo(int c_no, String c_title, String c_content, String c_date) {
		super();
		this.c_no = c_no;
		this.c_title = c_title;
		this.c_content = c_content;
		this.c_date = c_date;
	}
	
	

	
	public ServiceCenterVo() {
		super();
	}




	public ServiceCenterVo(int c_no, String c_title, String c_content) {
		super();
		this.c_no = c_no;
		this.c_title = c_title;
		this.c_content = c_content;
	}
	
	
	public ServiceCenterVo(String c_title, String c_content) {
		super();
		this.c_title = c_title;
		this.c_content = c_content;
	}



	//겟셋 
	
	public int getC_no() {
		return c_no;
	}




	public void setC_no(int c_no) {
		this.c_no = c_no;
	}




	public int getS_no() {
		return s_no;
	}




	public void setS_no(int s_no) {
		this.s_no = s_no;
	}




	public int getU_no() {
		return u_no;
	}




	public void setU_no(int u_no) {
		this.u_no = u_no;
	}




	public String getC_title() {
		return c_title;
	}




	public void setC_title(String c_title) {
		this.c_title = c_title;
	}




	public String getC_content() {
		return c_content;
	}




	public void setC_content(String c_content) {
		this.c_content = c_content;
	}




	public String getC_date() {
		return c_date;
	}




	public void setC_date(String c_date) {
		this.c_date = c_date;
	}


	
	
	
	//to string

	@Override
	public String toString() {
		return "ServiceCenterVo [c_no=" + c_no + ", s_no=" + s_no + ", u_no=" + u_no + ", c_title=" + c_title + ", c_content=" + c_content + ", c_date=" + c_date + "]";
	}


	

	



	

	
	
	
}
