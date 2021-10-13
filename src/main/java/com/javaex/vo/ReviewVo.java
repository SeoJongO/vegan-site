package com.javaex.vo;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVo {

	private int r_no;
	private int s_no;
	private int u_no;
	private String r_contents;
	private String r_date;
	private String star;
	private MultipartFile file;
	private String saveName;
	private String u_nickName;
	private String u_type;
	private int count;
	private String hart;
	private String avg;

	public ReviewVo() {
		super();
	}

	public ReviewVo(int r_no, int s_no, int u_no, String r_contents, String r_date, String star, MultipartFile file,
			String saveName, String u_nickName, String u_type, int count, String hart, String avg) {
		super();
		this.r_no = r_no;
		this.s_no = s_no;
		this.u_no = u_no;
		this.r_contents = r_contents;
		this.r_date = r_date;
		this.star = star;
		this.file = file;
		this.saveName = saveName;
		this.u_nickName = u_nickName;
		this.u_type = u_type;
		this.count = count;
		this.hart = hart;
		this.avg = avg;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
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

	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getSaveName() {
		return saveName;
	}

	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}

	public String getU_nickName() {
		return u_nickName;
	}

	public void setU_nickName(String u_nickName) {
		this.u_nickName = u_nickName;
	}

	public String getU_type() {
		return u_type;
	}

	public void setU_type(String u_type) {
		this.u_type = u_type;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getHart() {
		return hart;
	}

	public void setHart(String hart) {
		this.hart = hart;
	}

	public String getAvg() {
		return avg;
	}

	public void setAvg(String avg) {
		this.avg = avg;
	}

	@Override
	public String toString() {
		return "ReviewVo [r_no=" + r_no + ", s_no=" + s_no + ", u_no=" + u_no + ", r_contents=" + r_contents
				+ ", r_date=" + r_date + ", star=" + star + ", file=" + file + ", saveName=" + saveName
				+ ", u_nickName=" + u_nickName + ", u_type=" + u_type + ", count=" + count + ", hart=" + hart + ", avg="
				+ avg + "]";
	}

}
