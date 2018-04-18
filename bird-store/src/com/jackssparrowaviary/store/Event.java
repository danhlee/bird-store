package com.jackssparrowaviary.store;

public class Event {
	private String eventName;
	private int count;
	
	public Event(String eventName, int count) {
		this.eventName = eventName;
		this.count = count;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "Event [eventName=" + eventName + ", count=" + count + "]";
	}
	
	
}
