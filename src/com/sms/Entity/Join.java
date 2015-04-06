package com.sms.Entity;

import java.util.Date;

public class Join {
	private Long userid;
	private Long classid;
	private Date jointime;
	private int state;
	private int usertype;

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public Long getClassid() {
		return classid;
	}

	public void setClassid(Long classid) {
		this.classid = classid;
	}

	public Date getJointime() {
		return jointime;
	}

	public void setJointime(Date jointime) {
		this.jointime = jointime;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getUsertype() {
		return usertype;
	}

	public void setUsertype(int usertype) {
		this.usertype = usertype;
	}

	@Override
	public String toString() {
		return "Join [userid=" + userid + ", classid=" + classid
				+ ", jointime=" + jointime + ", state=" + state + ", usertype="
				+ usertype + "]";
	}

}
