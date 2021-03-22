package com.gbbc.webapplication.controllers;

import com.gbbc.webapplication.beans.Customer;
import com.gbbc.webapplication.beans.Employee;
import com.gbbc.webapplication.domain.OpenAccount;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class DefaultModuleAttributeController {

    @ModelAttribute("customer")
    public Customer getDefaultCustomer(){return new Customer();}

    @ModelAttribute("employee")
    public Employee getDefaultEmployee(){return new Employee();}

    @ModelAttribute("openAccount")
    public OpenAccount getDefaultOpenAccount(){return new OpenAccount();}

}
