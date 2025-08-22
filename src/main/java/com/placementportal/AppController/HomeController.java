package com.placementportal.AppController;

import com.placementportal.Service.AdminService;
import com.placementportal.Service.AppService;
import com.placementportal.model.Jobs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HomeController {
    @Autowired
    private AdminService adminService;

    @GetMapping("/")
	public String Home(Model model,Jobs jobs) {
		List<Jobs> job=adminService.getAlljobs();
        model.addAttribute("job",job);
		return"index";
	}
}