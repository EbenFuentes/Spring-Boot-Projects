package com.eben.apps.eventplanner.repository;

import org.springframework.data.repository.CrudRepository;

import com.eben.apps.eventplanner.model.Event;


public interface EventRepository extends CrudRepository<Event, Integer>{

}
