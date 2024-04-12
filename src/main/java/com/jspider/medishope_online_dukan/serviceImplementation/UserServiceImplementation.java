package com.jspider.medishope_online_dukan.serviceImplementation;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.jspider.medishope_online_dukan.daoImplementation.UserDaoImplementation;
import com.jspider.medishope_online_dukan.dto.User;
import com.jspider.medishope_online_dukan.service.UserService;

public class UserServiceImplementation implements UserService {
	
	UserDaoImplementation userDaoImplementation = new UserDaoImplementation();
	
	@Override
	public User saveUserService(User user) {
		if(userDaoImplementation.saveUserDao(user)!=null) {
			return user;
		}else {
			return null;
		}
	}

	@Override
	public User getUserByIdService(int userId) {
		return null;
	}
	
}
