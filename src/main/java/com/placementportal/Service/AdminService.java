package com.placementportal.Service;

import java.util.List;
import java.util.Optional;

import com.placementportal.Repository.JobRepo;
import com.placementportal.model.Jobs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.placementportal.Repository.AdminRepo;
import com.placementportal.model.Admin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Service
public class AdminService {

	@Autowired
	AdminRepo repository;

    @Autowired
    JobRepo  jobRepo;


    public String doregisterAdmin(Admin admin) {
        Optional<Admin> adminout = repository.findByEmail(admin.getEmail());
        if (adminout.isPresent()) {
            return "error";
        } else if (admin.getPassword().equals(admin.getCpassword())) {
            repository.save(admin);
            return "success";
        }
        return "error";
    }
    public Boolean dologinAdmin(Admin admin) {
        Optional<Admin>adminlog=repository.findByEmail(admin.getEmail());
        if(adminlog.isPresent()){
            Admin admindb=adminlog.get();
            admindb.getPassword().equals(admin.getPassword());
            return true;
        }
        else{
            return false;
        }
    }

    public String addjob(Jobs jobs) {
        jobRepo.save(jobs);
        return "success";
    }

    public List<Jobs> getAlljobs() {
        return jobRepo.findAll();
    }



    public Jobs updatejob(int jobid, Jobs jobs) {
        return jobRepo.findById(jobid).map(existing -> {
            // update existing record with new values
            existing.setTitle(jobs.getTitle());
            existing.setCompany(jobs.getCompany());
            existing.setStartdate(jobs.getStartdate());
            existing.setSalary(jobs.getSalary());
            existing.setDescription(jobs.getDescription());

            return jobRepo.save(existing); // save updated record
        }).orElse(null);
    }

    public Jobs getJobById(int jobid) {
        return jobRepo.findById(jobid).orElse(null);
    }
}



