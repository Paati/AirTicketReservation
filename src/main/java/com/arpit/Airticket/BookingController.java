package com.arpit.Airticket;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.arpit.Airticket.model.Booking;
import com.arpit.Airticket.model.BookingRepo;

@Controller
public class BookingController {

	@Autowired
	private BookingRepo bookingRepo;

//	@RequestMapping(value = "/viewBooking", method = RequestMethod.GET)
//	public String showBooking(ModelMap model) {
//		//List<Booking> b = bookingRepo.findAll();
//		model.addAttribute("booking", bookingRepo.findAll());
//		return "viewBooking";
//	}
	
	@RequestMapping(value="/viewBooking", method = RequestMethod.GET)
	public String listEmployee(ModelMap model){    
	    System.out.println("controler viewBooking");
	   List<Booking> bookingList = bookingRepo.findAll();
	    model.addAttribute("bookings", bookingList);
	    System.out.println(bookingList);
	    return "viewBooking";
	}
	
	@RequestMapping(value = "/addBooking", method = RequestMethod.GET)
	public String addBooking() {
		return "addBooking";
	}

	
	// Add booking
	@RequestMapping(value = "/addBooking", method = RequestMethod.POST)
	public String addBooking(@RequestParam("name") String name, @RequestParam("doj") String doj,
			@RequestParam("flightId") String flightId, Model model) {

		Booking b = new Booking();

		b.setName(name);
		b.setDoj(doj);
		b.setFlightId(flightId);

		bookingRepo.save(b);

		int a = b.getId();
		model.addAttribute("bookingId", a);
		model.addAttribute("message", "Success !! Your booking Id is " + a);
		return "addBooking";
	}

	// opening page for deleteId
	@RequestMapping(value = "/deleteBooking", method = RequestMethod.GET)
	public String deleteId() {
		return "deleteBooking";
	}

	// delete booking
	@RequestMapping(value = "/deleteBooking", method = RequestMethod.POST)
	public String deleteBooking(@RequestParam("deleteId") String deleteId, Model model) {
		int a = Integer.parseInt(deleteId);
		bookingRepo.deleteById(a);
		model.addAttribute("message", "Your BookingID " + a + " is Cancelled !!");
		return "deleteBooking";
	}

	// logout
	@RequestMapping("/logout")
	public String logout() {
		return "logout";
	}

}
