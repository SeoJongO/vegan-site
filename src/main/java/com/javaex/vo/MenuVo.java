package com.javaex.vo;

public class MenuVo {

	private int m_no;
	private String m_name;
	private String m_imge;
	private String m_price;
	private int m_type;
	private String m_intro;

	public MenuVo() {
		super();
	}

	public MenuVo(int m_no, String m_name, String m_imge, String m_price, int m_type, String m_intro) {
		super();
		this.m_no = m_no;
		this.m_name = m_name;
		this.m_imge = m_imge;
		this.m_price = m_price;
		this.m_type = m_type;
		this.m_intro = m_intro;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
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

	public int getM_type() {
		return m_type;
	}

	public void setM_type(int m_type) {
		this.m_type = m_type;
	}

	public String getM_intro() {
		return m_intro;
	}

	public void setM_intro(String m_intro) {
		this.m_intro = m_intro;
	}

}
