//Receptionist class file

package com.project.Bean;

public class Receptionist {

	private String rName;
	private String rpwd;
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
