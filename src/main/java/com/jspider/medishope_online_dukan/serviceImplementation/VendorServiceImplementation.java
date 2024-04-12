package com.jspider.medishope_online_dukan.serviceImplementation;

import com.jspider.medishope_online_dukan.daoImplementation.VendorDaoImplementation;
import com.jspider.medishope_online_dukan.dto.Vendor;
import com.jspider.medishope_online_dukan.service.VendorService;

public class VendorServiceImplementation implements VendorService {
	
	VendorDaoImplementation vendorDaoImplementation = new VendorDaoImplementation();

	@Override
	public Vendor saveVendorService(Vendor vendor) {
		if(vendorDaoImplementation.saveVendorDao(vendor) != null) {
			return vendor;
		}else {
			return null;
		}
	}
	
}
