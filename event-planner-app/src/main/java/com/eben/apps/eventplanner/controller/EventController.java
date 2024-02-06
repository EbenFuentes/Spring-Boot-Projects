package com.eben.apps.eventplanner.controller;

import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.eben.apps.eventplanner.model.Event;
import com.eben.apps.eventplanner.model.Item;
import com.eben.apps.eventplanner.model.UserSession;
import com.eben.apps.eventplanner.repository.EventRepository;
import com.eben.apps.eventplanner.repository.ItemRepository;

@Controller
public class EventController {

	private final EventRepository eventRepo;
	private final ItemRepository itemRepo;

	@Autowired
	private UserSession userSession;

	public EventController(EventRepository eventRepo, ItemRepository itemRepo) {
		this.eventRepo = eventRepo;
		this.itemRepo = itemRepo;
	}

	@RequestMapping("/")
	public String index(Model model) {
		model.addAttribute("events", eventRepo.findAll());
		return "index";
	}

	@RequestMapping("/viewEvent/{id}")
	public String viewEvent(@PathVariable int id, Model model) {

		Event event = eventRepo.findById(id).orElse(null);
		model.addAttribute("event", event);

		if (event != null) {
			model.addAttribute("items", event.getItems());
		} else {
			return "index";
		}

		return "viewEvent";
	}

	@GetMapping("/addEvent")
	public String addEvent() {
		return "addEvent";
	}

	@PostMapping("/addEvent")
	public String result(Event entry) {
		eventRepo.save(entry);
		return "redirect:/";
	}

	@GetMapping("/edit/{id}")
	public String edit(@PathVariable int id, Model model) {
		Event entry = eventRepo.findById(id).orElse(null);
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String formattedDate = entry.getEventDate().format(formatter);

		model.addAttribute("entry", entry);
		model.addAttribute("formattedDate", formattedDate);

		return "edit";
	}

	@PostMapping("/edit/{id}")
	public String edit(@PathVariable int id, Event newEntry) {
		System.out.print("post in /edit");
		Event entry = eventRepo.findById(id).orElse(null);

		entry.setEventName(newEntry.getEventName());
		entry.setCreatedBy(newEntry.getCreatedBy());
		entry.setEventDate(newEntry.getEventDate());
		eventRepo.save(entry);

		return "redirect:/";
	}

	@GetMapping("/addItem/{eventId}")
	public String addItem(@PathVariable int eventId, Model model) {
		Event event = eventRepo.findById(eventId).orElse(null);
		if (event != null) {
			model.addAttribute("event", event);
			model.addAttribute("item", new Item());
			return "addItem";
		} else {
			return "redirect:/";
		}
	}

	@PostMapping("/addItem/{eventId}")
	public String addItem(@PathVariable int eventId, Item item) {
		Event event = eventRepo.findById(eventId).orElse(null);
		if (event != null) {
			Item newItem = new Item();
			newItem.setName(item.getName());
			newItem.setProvidingUser(item.getProvidingUser());
			newItem.setEvent(event);
			itemRepo.save(newItem);
			eventRepo.save(event);
			return "redirect:/viewEvent/" + eventId;
		} else {

			return "redirect:/";
		}

	}

	@GetMapping("/signupForItem/{eventId}/{itemId}")
	public String signupForItem(@PathVariable int eventId, @PathVariable int itemId, Model model) {
		Item item = itemRepo.findById(itemId).orElse(null);
		Event event = eventRepo.findById(eventId).orElse(null);
		if (event != null && item != null) {
			model.addAttribute("event", event);
			model.addAttribute("item", item);
			if (userSession.getUserName() != null) {
				item.setProvidingUser(userSession.getUserName());
				item.setUserSignedUp(true);
				itemRepo.save(item);
				return "redirect:/viewEvent/" + eventId;
			}
			return "signUpForItem";

		} else {
			return "redirect:/";
		}

	}

	@PostMapping("/signupForItem/{eventId}/{itemId}")
	public String signupForItem(@PathVariable int eventId, @PathVariable int itemId, @RequestParam String userName) {
		Item item = itemRepo.findById(itemId).orElse(null);
		if (item != null) {
			item.setProvidingUser(userName);
			item.setUserSignedUp(true);
			itemRepo.save(item);

			userSession.setUserName(userName);

			return "redirect:/viewEvent/" + eventId;
		} else {
			return "redirect:/";
		}
	}

	@GetMapping("/deleteItem/{eventId}/{itemId}")
	public String deleteItem(@PathVariable int eventId, @PathVariable int itemId) {
		itemRepo.deleteById(itemId);
		return "redirect:/viewEvent/" + eventId;
	}

}
