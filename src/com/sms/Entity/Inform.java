package com.sms.Entity;

import java.util.Date;

public class Inform extends IdEntity {
	private String title;
	private String content;
	private Long authorid;
	private Date datetime;
	private Date endtime;
	private int type;
	private int level;

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

	public Long getAuthorid() {
		return authorid;
	}

	public void setAuthorid(Long authorid) {
		this.authorid = authorid;
	}

	public Date getDatetime() {
		return datetime;
	}

	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}

	public Date getEndtime() {
		return endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	@Override
	public String toString() {
		return "Inform [title=" + title + ", content=" + content
				+ ", authorid=" + authorid + ", datetime=" + datetime
				+ ", endtime=" + endtime + ", type=" + type + ", level="
				+ level + ", id=" + id + "]";
	}

}
