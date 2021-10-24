package kr.ac.kopo.newmystudy.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Diary {
	int total;
	int dnum;
	String title;
	String content;
	String mid;
	Date regdate;
	Date updatedate;

	
	public int getDnum() {
		return dnum;
	}

	public void setDnum(int dnum) {
		this.dnum = dnum;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}
	
	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Date getUpdatedate() {
		return updatedate;
	}

	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	

}
