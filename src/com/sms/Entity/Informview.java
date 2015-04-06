package com.sms.Entity;

public class Informview {
	private Long informid;
	private Long classid;
	private int state;

	public Long getInformid() {
		return informid;
	}

	public void setInformid(Long informid) {
		this.informid = informid;
	}

	public Long getClassid() {
		return classid;
	}

	public void setClassid(Long classid) {
		this.classid = classid;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "Informview [informid=" + informid + ", classid=" + classid
				+ ", state=" + state + "]";
	}

}
