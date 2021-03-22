package com.gbbc.webapplication.repository;

import com.gbbc.webapplication.beans.Customer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TransactionRepository extends CrudRepository<Customer, Integer> {

    Customer findCustomerById(int id);
}
