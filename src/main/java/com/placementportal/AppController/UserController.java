package com.placementportal.AppController;


import com.placementportal.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.placementportal.model.User;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class UserController {

    @Autowired
     public UserService service;

    @GetMapping("/registerUser")
    public String Showregister() {

    	return "UserRegister";
    }

    @PostMapping("/registerUser")
    @ResponseBody
    public String register(@ModelAttribute User user, Model model) {
    	String result= service.doregister(user);

        if(result.equals("error")){
            return "<script>alert('Email already exists!');windows.history.back(); </script>";
        }
        else if(result.equals("success")){
            return "<script>alert('User registered successfully!'); window.location.href='/loginn';</script>";
        }
        else {
            return "<script>alert('the password you entered is not matching');windows.history.back(); </script>";
        }
    }

    @GetMapping("/loginn")
    public String showloginn() {
    	return "Userlogin";
    }

    @PostMapping("/loginn")
    public String loginn(@RequestParam("email") String email, @RequestParam("password") String password, Model model, RedirectAttributes redirectAttributes) {

        boolean isValid = service.dologin(email, password);
        if (isValid) {
            return "redirect:/dashboard";
        } else {
            redirectAttributes.addFlashAttribute("errorMessage","Login Unsucessful Try again");
            return "Userlogin";
        }
    }
    @GetMapping("/dashboard")
    public String ShowDashBorad() {
    	return "user-dashboard";

    }
}
