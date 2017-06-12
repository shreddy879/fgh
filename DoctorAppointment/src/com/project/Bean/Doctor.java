//Doctor Class File

package com.project.Bean;

public class Doctor {

	private int dNo;
	private String dName;
	private String dPwd;
	public int getdNo() {
		return dNo;
	}
	public void setdNo(int dNo) {
		this.dNo = dNo;
	}
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	public String getdPwd() {
		return dPwd;
	}
	public void setdPwd(String dPwd) {
		this.dPwd = dPwd;
	}
	@Override
	public String toString() {
		return "Doctor [dNo=" + dNo + ", dName=" + dName
				+ ", dPwd=" + dPwd + "]";
	}
	
	}
