package com.gbbc.webapplication.repository;

import com.gbbc.webapplication.beans.BankAccount;
import com.gbbc.webapplication.beans.Customer;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerRepository extends CrudRepository<Customer, Integer> {

    @Query("select c from Customer c where c.user_name = :user_name")
    Customer searchByUserName(@Param("user_name") String user_name);

    @Query("select c from Customer c where c.id = :id")
    Customer searchCustomerById(@Param("id") int id);

    @Query("select c from Customer c where c.customer_type = 'Zakelijk'")
    List<Customer> getAllBusinessCustomers();

    List<Customer> findCustomerById(int id);

//    Customer findCustomerByUsername(String username);

/*    @Query(value = "INSERT INTO customer(id, bsn, city, country, customer_type, date_of_birth, first_name, last_name, password, postal code, street, user_name) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)", nativeQuery = true)
    Customer storeCustomer(Customer customer);*/

}
