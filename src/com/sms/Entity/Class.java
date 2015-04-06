package com.sms.Entity;

public class Class extends IdEntity {
	private String name;
	private Long schoolid;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getSchoolid() {
		return schoolid;
	}

	public void setSchoolid(Long schoolid) {
		this.schoolid = schoolid;
	}

	@Override
	public String toString() {
		return "Class [name=" + name + ", schoolid=" + schoolid + ", id=" + id
				+ "]";
	}

}
