package com.eben.apps.eventplanner.repository;

import org.springframework.data.repository.CrudRepository;

import com.eben.apps.eventplanner.model.Item;

public interface ItemRepository extends CrudRepository<Item, Integer>{

}
