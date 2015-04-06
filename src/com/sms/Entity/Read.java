package com.sms.Entity;

import java.util.Date;

public class Read {
	private Long informid;
	private Long userid;
	private int state;
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

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public Date getDatetime() {
		return datetime;
	}

	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}

	@Override
	public String toString() {
		return "read [informid=" + informid + ", userid=" + userid + ", state="
				+ state + ", datetime=" + datetime + "]";
	}

}
