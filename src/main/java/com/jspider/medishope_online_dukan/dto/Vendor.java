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
@AllArgsConstructor
@NoArgsConstructor
public class Vendor {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int vendor_id;
	private String vendor_name;
	@Column(unique = true)
	private String vendor_email;
	@Column(unique = true, length = 16)
	private String vendor_password;
	
	public Vendor(String vendor_name, String vendor_email, String vendor_password) {
		super();
		this.vendor_name = vendor_name;
		this.vendor_email = vendor_email;
		this.vendor_password = vendor_password;
	}
}
