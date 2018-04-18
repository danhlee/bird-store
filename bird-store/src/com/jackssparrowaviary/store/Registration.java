package com.jackssparrowaviary.store;

public class Registration {
	private int id;
	private String email;
	private String eventName;
	private String registrationDate;
	
	// use for displaying in view
	public Registration(int id, String email, String eventName, String registrationDate) {
		this.id = id;
		this.email = email;
		this.eventName = eventName;
		this.registrationDate = registrationDate;
	}

	// use for inserting into DB
	public Registration(String email, String eventName) {
		this.email = email;
		this.eventName = eventName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(String registrationDate) {
		this.registrationDate = registrationDate;
	}
	
	@Override
	public boolean equals(Object obj) {
		boolean isEqual = false;
		
		if (obj instanceof Registration) {
			isEqual = this.id == ((Registration) obj).getId();
		}
		
		return isEqual;
	}

	@Override
	public String toString() {
		return "Registration [id=" + id + ", email=" + email + ", eventName=" + eventName + ", registrationDate="
				+ registrationDate + "]";
	}
	
	
	
}
