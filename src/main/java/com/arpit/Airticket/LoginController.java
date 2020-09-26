package com.arpit.Airticket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.client.RestTemplate;

import com.arpit.Airticket.model.BookingRepo;
import com.arpit.Airticket.model.FlightRepo;
import com.arpit.Airticket.model.User;
import com.arpit.Airticket.model.UserRepo;

@Controller
public class LoginController 
{
	@Autowired
	private UserRepo userRepo;

	@Autowired
	private BookingRepo bookrepo;

	@Autowired
	private FlightRepo flighRepo;

	static {

	}
	
	@RequestMapping("/")
	public String check() 
	{ 
		return "login";
	}
	//logging in
	@RequestMapping("/login")
	public String loginHomePage(@RequestParam("userName") String userName,@RequestParam("password") String password,Model model) 
	{
		String password1=null;
		try 
		{
			User u=new User();
			u=userRepo.findByName(userName);
			password1=u.getPassword();
			if(password1.equals(password)) 
			{
				model.addAttribute("UserName", userName);
				return "homepage";
			}
			else 
			{
				model.addAttribute("error", "username or password incorrect" );
				return "login";
			}
		}
		catch (Exception e) 
		{
			System.out.println("User doesn't exist ! ..please Register");
			return "login";
		}
	}
	//Register a user
	@RequestMapping("/set-user")
	public String registerUser(@RequestParam("userName") String userName,@RequestParam("password1") String password1, @RequestParam("password2")
	String password2, Model model) 
	{
		String userName1=null;
		try 
		{
			User v=new User();
			v=userRepo.findByName(userName);
			userName1=v.getName();
			if(userName1.equals(userName))
			{
				model.addAttribute("registrationError"," already exist !!");
			}
			return "register";
		} 
		catch (Exception e) {
			// TODO: handle exception
			if (password1.equals(password2)) {

				User u=new User(); //creating a user
				u.setName(userName);
				u.setPassword(password1);

				userRepo.save(u);//saving user to database 
				//using jpa
				model.addAttribute("registersuccess","Registration successful , Login to continue");
				return "login";
			}

			else {
				model.addAttribute("registrationError", "Passwords do not match..");
				return "register";
			}
		}
	}
	@RequestMapping("/register")
	public String goToRegisterationPage() 
	{
		return "register";
	}

	//Extra Added
	@RequestMapping("/homepage")
	public String helloHomePage() 
	{
		return "homepage";
	}
}




