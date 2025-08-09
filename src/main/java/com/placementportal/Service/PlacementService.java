package com.placementportal.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.placementportal.Repository.Repo;
import com.placementportal.model.User;

@Service
public class PlacementService {
	@Autowired
	private Repo repo;

    public String doregister(User user) {
    	Optional<User> extingEmail =repo.findByEmail(user.getEmail());
    	
    	if(extingEmail.isPresent()){
    		return"Email Already Exists";
    		}
    	else {
    		repo.save(user);
    		return"User saved sucessfully";
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
