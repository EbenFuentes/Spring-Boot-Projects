package com.eben.apps.eventplanner.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Item {

	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private String providingUser;

	private boolean isUserSignedUp;

	@ManyToOne
	private Event event;

	public Event getEvent() {
		return event;
	}

	public void setEvent(Event event) {
		this.event = event;
	}

	public Item() {
		this.setUserSignedUp(false);

	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProvidingUser() {
		return providingUser;
	}

	public void setProvidingUser(String providingUser) {
		this.providingUser = providingUser;
	}

	public boolean getIsUserSignedUp() {
		return isUserSignedUp;
	}

	public void setUserSignedUp(boolean isUserSignedUp) {
		this.isUserSignedUp = isUserSignedUp;
	}

}
