package com.placementportal.AppController;

import ch.qos.logback.core.model.Model;
import com.placementportal.Service.AdminService;
import com.placementportal.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminController {

    @Autowired
    AdminService adminService;

    @GetMapping("/admin")
    public String doregister()
    {
        return "AdminRegister";
    }

    @PostMapping("/admin")
    public String doregister(Admin admin, Model model)
    {
        String register=adminService.doregisterAdmin(admin);

        if("error".equals(register)){
            return "<script alert('Enter Valid Email');></script>')";
        }
        else  {
            return "redirect:/admin/login";
        }
    }

    @GetMapping("/admin/login")
    public String loginAdmin()
    {
        return "loginAdmin";
    }

    @PostMapping("/admin/login")
    public String loginAdmin(Admin admin, Model model)
    {
        Boolean login=adminService.dologinAdmin(admin);
        if(login){
            return"redirect:/admin/dashboard";
        }
        else{
            return"redirect:/loginAdmin";
        }
    }
    @GetMapping("/admin/dashboard")
    public String adminDashboard(){
        return "admin-dashboard";
    }
}
