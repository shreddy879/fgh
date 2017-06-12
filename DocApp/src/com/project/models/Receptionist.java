//Receptionist class file

package com.project.models;

public class Receptionist {

	
	private String rName;
	private String rpwd;
	
	public Receptionist() {	}

	public Receptionist(String rName, String rpwd) {
		super();
		this.rName = rName;
		this.rpwd = rpwd;
	}
	
	public String getrName() {
		return rName;
	}
	public void setrName(String rName) {
		this.rName = rName;
	}
	public String getRpwd() {
		return rpwd;
	}
	public void setRpwd(String rpwd) {
		this.rpwd = rpwd;
	}
	@Override
	public String toString() {
		return "Receptionist [rName=" + rName + ", rpwd=" + rpwd + "]";
	}

}
