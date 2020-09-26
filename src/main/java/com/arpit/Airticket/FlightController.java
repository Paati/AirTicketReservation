package com.arpit.Airticket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arpit.Airticket.model.FlightRepo;

@Controller
public class FlightController {
	
	@Autowired
	private FlightRepo flightRepo;
	
	
	@RequestMapping("/findFlightDisplay")
	public String displayFindFlight() {
		return "findFlight";
	}
	
	
	@RequestMapping("/findFlight")
	public String findFlight(
			@RequestParam("doj") String doj,
			Model model ){
		model.addAttribute("flight",flightRepo.findByDoj(doj));
		return "flightResults";
	
				
			}
	
	
	
	
	
	

}
