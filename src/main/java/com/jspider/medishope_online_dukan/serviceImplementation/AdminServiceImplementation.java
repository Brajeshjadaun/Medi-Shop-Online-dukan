package com.jspider.medishope_online_dukan.serviceImplementation;

import com.jspider.medishope_online_dukan.daoImplementation.AdminDaoImplementation;
import com.jspider.medishope_online_dukan.dto.Admin;
import com.jspider.medishope_online_dukan.service.AdminService;

public class AdminServiceImplementation implements AdminService {
	
	AdminDaoImplementation adminDaoImplementation = new AdminDaoImplementation();
	
	@Override
	public Admin saveAdminService(Admin admin) {
		if(adminDaoImplementation.saveAdminDao(admin)!= null) {
			return admin;
		}else {
			return null;
		}
	}
}
