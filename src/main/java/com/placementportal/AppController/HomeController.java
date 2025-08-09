package com.placementportal.AppController;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.placementportal.Service.PlacementService;
import com.placementportal.model.User;

@Controller
public class HomeController {

    @Autowired
    private PlacementService service;
    
    @GetMapping("/register")
    public String Showregister() {
    	
    	return "register";
    }
    
    @PostMapping("/register")
    public String register(@ModelAttribute User user, Model m) {    	
    	String result=service.doregister(user);
    	
    	if(result.equals("Email Already Exists")) {
    		m.addAttribute("error", result);
    	}
    	else {
    		m.addAttribute("sucess", result);
    	}
    	
    	return "redirect:/register";
    }
    
    @GetMapping("/loginn")
    public String showloginn() {
    	return"loginn";	
    }
    
    @PostMapping("/loginn")
    public String loginn(@RequestParam("email")String email, @RequestParam("password")String password ,Model m) {
    	
    	boolean isValid=service.dologin(email , password);
    	
    	if(isValid) {
    		m.addAttribute("sucess", "LoginSucessful");
    		return "redirect:/dashboard";
    	}
    	else {
    		m.addAttribute("error", "LoginUncessful");
    	}
    	return"";
    }
    
    @GetMapping("/dashboard")
    public String ShowDashBorad() {
    	
    	return"dashboard";
    	
    }
   
}
