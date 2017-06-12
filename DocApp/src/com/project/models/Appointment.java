
package com.project.models;

public class Appointment {

	private int pId;
	private int dNo;
	private int slots;
	private String bookingDate;
	private String couponNo;
	
	public Appointment() {}
	
	public Appointment(int pId, int dNo, int slots, String bookingDate,
			String couponNo) {
		super();
		this.pId = pId;
		this.dNo = dNo;
		this.slots = slots;
		this.bookingDate = bookingDate;
		this.couponNo = couponNo;
	}

	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}

	public int getdNo() {
		return dNo;
	}

	public void setdNo(int dNo) {
		this.dNo = dNo;
	}

	public int getSlots() {
		return slots;
	}
	public void setSlots(int slots) {
		this.slots = slots;
	}
	public String getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(String bookingDate) {
		this.bookingDate = bookingDate;
	}
	public String getCouponNo() {
		return couponNo;
	}
	public void setCouponNo(String couponNo) {
		this.couponNo = couponNo;
	}
	@Override
	public String toString() {
		return "Appointment [pId=" + pId + ", dNo=" + dNo + ", slots=" + slots
				+ ", bookingDate=" + bookingDate + ", couponNo=" + couponNo
				+ "]";
	}
	
}
