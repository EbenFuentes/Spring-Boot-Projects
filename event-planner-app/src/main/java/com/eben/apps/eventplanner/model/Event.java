package com.eben.apps.eventplanner.model;

import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class Event {

	private String eventName;
	private LocalDate eventDate;
	private String createdBy;

	@Id
	@GeneratedValue
	private Integer id;
	
	@OneToMany(mappedBy = "event")
	private List<Item> items;

	public Event() {

	}

	public Event(String eventName, String createdBy, LocalDate eventDate, List<Item> items) {

		this.eventName = eventName;
		this.createdBy = createdBy;
		this.eventDate = eventDate;
		this.items = items;
	}

	public String getEventName() {
		return eventName;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public LocalDate getEventDate() {
		return eventDate;
	}

	public void setEventName(String name) {
		this.eventName = name;
	}

	public void setEventDate(LocalDate date) {
		this.eventDate = date;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

}
