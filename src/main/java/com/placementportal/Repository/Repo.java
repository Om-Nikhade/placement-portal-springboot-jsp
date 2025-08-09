package com.placementportal.Repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.placementportal.model.User;


@Repository
public interface Repo extends JpaRepository<User, Integer>{

	Optional <User> findByEmail(String email);
	
}
