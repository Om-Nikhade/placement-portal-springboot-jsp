package com.placementportal.AppController;

import org.springframework.stereotype.Controller;

@Controller
public class HomeController {

	public String Home() {
		
		return"index";
	}
}