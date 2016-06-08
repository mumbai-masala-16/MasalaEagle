package com.rrd.eaglemasala.dao.api;

import java.util.List;

import com.rrd.eaglemasala.domain.Customer;

public interface CustomerDAO {

	 public boolean addCustomer(Customer customer);

	    public List<Customer> listCustomer();

	    public void removeCustomer(Integer id);
}
