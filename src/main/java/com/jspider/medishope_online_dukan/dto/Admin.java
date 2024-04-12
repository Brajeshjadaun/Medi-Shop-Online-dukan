package com.jspider.medishope_online_dukan.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Admin {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int admin_id;
	private String admin_name;
	@Column(unique = true)
	private String admin_email;
	@Column(unique = true, length = 16)
	private String admin_password;
	
	public Admin(String admin_name, String admin_email, String admin_password) {
		super();
		this.admin_name = admin_name;
		this.admin_email = admin_email;
		this.admin_password = admin_password;
	}
	
	

}
