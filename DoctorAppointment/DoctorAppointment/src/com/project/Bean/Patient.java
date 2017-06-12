//Patient Class File

package com.project.Bean;

public class Patient {

	private int pId;
	private String FName;
	private String LName;
	private int Age;
	private String Gender;
	private String Addr;
	private String Cont;
	private String Disease;
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getFName() {
		return FName;
	}
	public void setFName(String fName) {
		FName = fName;
	}
	public String getLName() {
		return LName;
	}
	public void setLName(String lName) {
		LName = lName;
	}
	public int getAge() {
		return Age;
	}
	public void setAge(int age) {
		Age = age;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getAddr() {
		return Addr;
	}
	public void setAddr(String addr) {
		Addr = addr;
	}
	public String getCont() {
		return Cont;
	}
	public void setCont(String cont) {
		Cont = cont;
	}
	public String getDisease() {
		return Disease;
	}
	public void setDisease(String disease) {
		Disease = disease;
	}
	@Override
	public String toString() {
		return "Patient [pId=" + pId + ", FName=" + FName + ", LName=" + LName
				+ ", Age=" + Age + ", Gender=" + Gender + ", Addr=" + Addr
				+ ", Cont=" + Cont + ", Disease=" + Disease + "]";
	}
}
