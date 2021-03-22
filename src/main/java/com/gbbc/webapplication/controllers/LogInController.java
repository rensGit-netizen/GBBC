package com.gbbc.webapplication.controllers;

import com.gbbc.webapplication.beans.Customer;
import com.gbbc.webapplication.repository.CustomerRepository;
import com.gbbc.webapplication.services.LogInService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LogInController {

    @Autowired
    public LogInService logInService;

    public LogInController(LogInService customerRepository) {
        super();
        this.logInService = customerRepository;
    }

    /**
     * @should get propper information and send the right information
     * @param fieldCustomer
     * @param model
     * @return
     */
    @PostMapping("/loginControle")
    public String login(@ModelAttribute("customer")Customer fieldCustomer, Model model, HttpSession session){
        String returnValue = "redirect:/account-overview";
        returnValue = logInService.compareFieldWithDatabase(fieldCustomer, model, returnValue, session);
        return returnValue;
    }

}