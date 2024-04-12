package com.jspider.medishope_online_dukan.daoImplementation;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.jspider.medishope_online_dukan.dao.AdminDao;
import com.jspider.medishope_online_dukan.dto.Admin;

public class AdminDaoImplementation implements AdminDao {
	
	EntityManager em = Persistence.createEntityManagerFactory("medishope").createEntityManager();
	
	EntityTransaction et = em.getTransaction();
	
	@Override
	public Admin saveAdminDao(Admin admin) {
		et.begin();
		em.persist(admin);
		et.commit();
		
		return admin;
	}
}
