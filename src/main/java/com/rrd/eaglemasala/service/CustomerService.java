package com.rrd.eaglemasala.service;


import java.util.List;

import com.rrd.eaglemasala.domain.Customer;

public interface CustomerService {

    public boolean addCustomer(Customer customer);

    public List<Customer> listCustomer();

    public void removeCustomer(Integer id);
}
