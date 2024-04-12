package com.jspider.medishope_online_dukan.daoImplementation;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.jspider.medishope_online_dukan.dao.VendorDao;
import com.jspider.medishope_online_dukan.dto.Vendor;

public class VendorDaoImplementation implements VendorDao{
	EntityManager em = Persistence.createEntityManagerFactory("medishope").createEntityManager();
	
	EntityTransaction et = em.getTransaction();
	
	@Override
	public Vendor saveVendorDao(Vendor vendor) {
		et.begin();
		em.persist(vendor);
		et.commit();
		
		return vendor;
	}

}
