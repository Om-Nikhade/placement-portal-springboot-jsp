package com.placementportal.Repository;

import java.util.Optional;

import com.placementportal.model.Jobs;
import org.springframework.data.jpa.repository.JpaRepository;

import com.placementportal.model.Admin;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminRepo extends JpaRepository<Admin, Integer>{
	
	Optional <Admin> findByEmail(String email);
}
