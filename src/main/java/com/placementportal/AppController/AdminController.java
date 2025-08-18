package com.placementportal.AppController;

import com.placementportal.Service.AdminService;
import com.placementportal.model.Admin;
import com.placementportal.model.Jobs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.batch.BatchProperties;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    AdminService adminService;

    @GetMapping("/admin")
    public String doregister() {
        return "AdminRegister";
    }

    @PostMapping("/admin")
    public String doregister(Admin admin, Model model) {
        String register = adminService.doregisterAdmin(admin);

        if ("error".equals(register)) {
            return "<script alert('Enter Valid Email');></script>')";
        } else {
            return "redirect:/admin/login";
        }
    }

    @GetMapping("/admin/login")
    public String loginAdmin() {
        return "loginAdmin";
    }

    @PostMapping("/admin/login")
    public String loginAdmin(Admin admin, Model model) {
        Boolean login = adminService.dologinAdmin(admin);
        if (login) {
            return "redirect:/admin/dashboard";
        } else {
            return "redirect:/admin/dashboard";
        }
    }

    @GetMapping("/admin/dashboard")
    public String adminDashboard(Model model) {
        model.addAttribute("jobs",adminService.getAlljobs());
        return "admin-dashboard";
    }

    @PostMapping("/admin/addjob")
    public String addJob(@ModelAttribute Jobs jobs, Model model) {
        String Result = adminService.addjob(jobs);
    return "redirect:/admin/dashboard";
        }
    @GetMapping ("admin/editJob/{jobid}")
    public String getJobById(@PathVariable int jobid, Model model) {
       Jobs job =adminService.getJobById(jobid);
        model.addAttribute("job", job);
        return "editjob";
    }

    @PostMapping("admin/editJob/{jobid}")
    public String editJob(Model model , @PathVariable int jobid,@ModelAttribute Jobs jobs) {
        adminService.updatejob(jobid,jobs);
        return "redirect:/admin/dashboard";
    }

}