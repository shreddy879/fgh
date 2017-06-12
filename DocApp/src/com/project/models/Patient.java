//Patient Class File

package com.project.models;

public class Patient {

	private int pId;
	private String Name;
	private int Age;
	private String Gender;
	private String Addr;
	private String Cont;
	private String Disease;
	
	public Patient() {}

	public Patient(int pId, String name, int age, String gender, String addr,
			String cont, String disease) {
		super();
		this.pId = pId;
		Name = name;
		Age = age;
		Gender = gender;
		Addr = addr;
		Cont = cont;
		Disease = disease;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
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
		return "Patient [pId=" + pId + ", Name=" + Name + ", Age=" + Age
				+ ", Gender=" + Gender + ", Addr=" + Addr + ", Cont=" + Cont
				+ ", Disease=" + Disease + "]";
	}

}
