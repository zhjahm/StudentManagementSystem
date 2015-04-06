package com.sms.Entity;

import java.util.Date;

public class Message extends IdEntity {
	private Long informid;
	private Long userid;
	private String content;
	private Date datetime;

	public Long getInformid() {
		return informid;
	}

	public void setInformid(Long informid) {
		this.informid = informid;
	}

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDatetime() {
		return datetime;
	}

	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}

	@Override
	public String toString() {
		return "Message [informid=" + informid + ", userid=" + userid
				+ ", content=" + content + ", datetime=" + datetime + ", id="
				+ id + "]";
	}

}
