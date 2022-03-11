package fr.ChopineDuCoin.api.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import fr.ChopineDuCoin.api.model.Event;
import fr.ChopineDuCoin.api.repositories.EventRepository;




@RestController
public class EventController {

	private final SimpleDateFormat DATE_TIME_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	@Autowired 
	private EventRepository EventRepository;

	@GetMapping(path = "/event/all")
	public Iterable<Event> getAllEvent(HttpServletRequest request) {
		return EventRepository.findAll();
	}

	@GetMapping(path = "/event/futur")
	public Iterable<Event> getFuturEvent(HttpServletRequest request) {
		return EventRepository.findAllFutur();
	}

	@PutMapping(path = "/event")
	public Map<String, Boolean> addFuturEvent(@RequestBody Map<String, String> param, HttpServletRequest request) {

		Event newEvent = new Event(param.get("name"), param.get("description"), param.get("place"), parseTimestamp(param.get("date")), Integer.parseInt(param.get("creator")));
		System.out.println(newEvent.toString());
		for (String key : param.keySet()) {
			System.out.println(key + ":" + param.get(key));
		}
		EventRepository.save(newEvent);

		return Collections.singletonMap("success", true);
	}

	@DeleteMapping(path = "/event")
	public Map<String, String> deleteTransaction(@RequestBody Map<String, String> param, HttpServletRequest request) {
		int id = Integer.parseInt(param.get("id"));
		if (!EventRepository.existsById(id)) return Collections.singletonMap("error", "Event not exist");
		Event event = EventRepository.findById(id);
		event.setEnable(false);
		EventRepository.save(event);
		return Collections.singletonMap("success", "true");
	}

	private java.util.Date parseTimestamp(String timestamp) {
	    try {
	        return DATE_TIME_FORMAT.parse(timestamp);
	    } catch (ParseException e) {
	        throw new IllegalArgumentException(e);
	    }
	}
}






























