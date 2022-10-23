package com.greatlearning.CustomerManagement.service;

import java.util.List;

import com.greatlearning.CustomerManagement.entity.Customer;

public interface CustomerService {
	
	public List<Customer> getAllCustomers();
	
	public void save(Customer customer);
	
	public Customer getCustomerById(int id);
	
	public void deleteCustomerById(int id);

}
