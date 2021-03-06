package com.javaex.vo;

import org.springframework.web.multipart.MultipartFile;

public class MenuVo {

	private int m_no;
	private int s_no;
	private String m_name;
	private String m_imge;
	private String m_price;
	private String m_type;
	private String m_intro;
	private MultipartFile file2;
	public MenuVo() {
		super();
	}
	public MenuVo(int m_no, int s_no, String m_name, String m_imge, String m_price, String m_type, String m_intro,
			MultipartFile file2) {
		super();
		this.m_no = m_no;
		this.s_no = s_no;
		this.m_name = m_name;
		this.m_imge = m_imge;
		this.m_price = m_price;
		this.m_type = m_type;
		this.m_intro = m_intro;
		this.file2 = file2;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_imge() {
		return m_imge;
	}
	public void setM_imge(String m_imge) {
		this.m_imge = m_imge;
	}
	public String getM_price() {
		return m_price;
	}
	public void setM_price(String m_price) {
		this.m_price = m_price;
	}
	public String getM_type() {
		return m_type;
	}
	public void setM_type(String m_type) {
		this.m_type = m_type;
	}
	public String getM_intro() {
		return m_intro;
	}
	public void setM_intro(String m_intro) {
		this.m_intro = m_intro;
	}
	public MultipartFile getFile2() {
		return file2;
	}
	public void setFile2(MultipartFile file2) {
		this.file2 = file2;
	}
	@Override
	public String toString() {
		return "MenuVo [m_no=" + m_no + ", s_no=" + s_no + ", m_name=" + m_name + ", m_imge=" + m_imge + ", m_price="
				+ m_price + ", m_type=" + m_type + ", m_intro=" + m_intro + ", file2=" + file2 + "]";
	}

}
