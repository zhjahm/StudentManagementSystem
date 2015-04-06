package com.sms.Entity;

public class School extends IdEntity {
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "School [name=" + name + ", id=" + id + "]";
	}

}
