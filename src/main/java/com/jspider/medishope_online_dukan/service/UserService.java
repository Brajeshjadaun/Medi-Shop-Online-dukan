package com.jspider.medishope_online_dukan.service;

import com.jspider.medishope_online_dukan.dto.User;

public interface UserService {
	
	public User saveUserService(User user);
	
	public User getUserByIdService(int userId);
	
}
