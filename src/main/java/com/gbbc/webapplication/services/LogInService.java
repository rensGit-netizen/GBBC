package com.gbbc.webapplication.services;

import com.gbbc.webapplication.beans.Customer;
import com.gbbc.webapplication.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

@Service
public class LogInService {

    @Autowired
    private CustomerRepository customerRepository;

    public String compareFieldWithDatabase(Customer fieldCustomer, Model model, String returnValue, HttpSession session) {
        Customer checkCustomer = customerRepository.searchByUserName(fieldCustomer.getUser_name());
        if (checkCustomer==null)
        {
            model.addAttribute("invalidLogin", "Controleer je wachtwoord en gebruikersnaam.");
            model.addAttribute("customer", new Customer());
            returnValue = "inlogView";
        }
        else if (!fieldCustomer.getPassword().equals(checkCustomer.getPassword()))
        {
            model.addAttribute("invalidLogin", "Controleer je wachtwoord en gebruikersnaam.");
            model.addAttribute("customer", new Customer());
            returnValue = "inlogView";
        }
        else {
            session.setAttribute("userSession", checkCustomer);
            model.addAttribute("customer", checkCustomer);
        }
            return returnValue;

    }

}
