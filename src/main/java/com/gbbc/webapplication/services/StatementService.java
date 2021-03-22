package com.gbbc.webapplication.services;

import com.gbbc.webapplication.beans.BankAccount;
import com.gbbc.webapplication.beans.Customer;
import com.gbbc.webapplication.repository.BankaccountRepository;
import com.gbbc.webapplication.repository.CustomerRepository;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class StatementService {

    @Autowired
    public BankaccountRepository bankaccountRepository;

    @Autowired
    private CustomerRepository customerRepository;

    public StatementService(BankaccountRepository bankaccountRepository, CustomerRepository customerRepository) {
        this.bankaccountRepository = bankaccountRepository;
        this.customerRepository = customerRepository;
    }

    public List<BankAccount> getCustomerAccounts(Customer customer){
        List <BankAccount> allAccountsToDisplay = new ArrayList<>();
        List<BankAccount> allCustomerAccounts = bankaccountRepository.findBankAccountsByCustomer(customer);
        allAccountsToDisplay.addAll(allCustomerAccounts);
        List<BankAccount> allAuthorizedAccounts = bankaccountRepository.findBankAccountsByGemachtigde(customer);
        allAccountsToDisplay.addAll(allAuthorizedAccounts);

        return allAccountsToDisplay;
    }
}
