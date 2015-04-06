package com.sms.Entity;

public class Userdata {
	private Long userid;
	private int sex;
	private String imageurl;
	private String phone;
	private String address;

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getImageurl() {
		return imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "userdata [userid=" + userid + ", sex=" + sex + ", imageurl="
				+ imageurl + ", phone=" + phone + ", address=" + address + "]";
	}

}
