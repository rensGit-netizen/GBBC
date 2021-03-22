package com.gbbc.webapplication.controllers;

import com.gbbc.webapplication.beans.BankAccount;
import com.gbbc.webapplication.beans.Customer;
import com.gbbc.webapplication.repository.BankaccountRepository;
import com.gbbc.webapplication.repository.TransactionRepository;
import com.gbbc.webapplication.services.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class TransactionController {

    @Autowired
    TransactionService transactionService;

    @PostMapping("/linkAccount")
    public String linkAccount(HttpSession session){
        String returnValue = "homeView";
        returnValue = transactionService.linkAccountToCustomer(returnValue);
        return returnValue;
    }

}
