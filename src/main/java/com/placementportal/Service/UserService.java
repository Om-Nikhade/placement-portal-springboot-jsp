package com.placementportal.Service;

import java.util.Optional;

import com.placementportal.Repository.AdminRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.placementportal.Repository.Repo;
import com.placementportal.model.User;

@Service
public class UserService {
	@Autowired
	private Repo repo;
    private AdminRepo adminRepo;

    public String doregister(User user) {
        Optional<User> extingEmail = repo.findByEmail(user.getEmail());

        if (extingEmail.isPresent()) {
            return "error";
        } else if (user.getPassword().equals(user.getCpassword())) {
            repo.save(user);
            return "success";
        } else {
            return "error";
        }

    }
	public boolean dologin(String email ,String password) {
		Optional<User> userlog=repo.findByEmail(email);

		if(userlog.isPresent()) {
			User user=userlog.get();
			return user.getPassword().equals(password);
		}
		return false;
	}








}

