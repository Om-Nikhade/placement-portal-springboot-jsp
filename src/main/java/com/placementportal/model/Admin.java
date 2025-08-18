package com.placementportal.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

@Entity
public class Admin {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
	private  String company;
    private String designation;
    private String phone;
    @Email
    @NotBlank(message = "Enter Vaild Email")
    private String email;
    private	String password;
    private	String Cpassword;

	public Admin() {}

    public Admin(String name, int id, String company, String designation, String phone, String cpassword, String password, String email) {
        this.name = name;
        this.id = id;
        this.company = company;
        this.designation = designation;
        this.phone = phone;
        this.Cpassword = cpassword;
        this.password = password;
        this.email = email;
    }

    public String getCpassword() {
        return Cpassword;
    }

    public void setCpassword(String cpassword) {
        Cpassword = cpassword;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }
}
