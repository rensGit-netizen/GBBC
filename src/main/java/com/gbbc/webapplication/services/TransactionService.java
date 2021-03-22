package com.gbbc.webapplication.services;

import com.gbbc.webapplication.beans.BankAccount;
import com.gbbc.webapplication.beans.Customer;
import com.gbbc.webapplication.repository.BankaccountRepository;
import com.gbbc.webapplication.repository.TransactionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;

@Service
public class TransactionService {

    @Autowired
    TransactionRepository transactionRepository;

    @Autowired
    BankaccountRepository bankaccountRepository;

    public String linkAccountToCustomer(String returnValue) {
        List<Customer> customerList = new ArrayList<>();
        Customer customer = transactionRepository.findCustomerById(2);
        List<BankAccount> bankAccountList = new ArrayList<>();
        BankAccount bankAccount = bankaccountRepository.findBankAccountById(3);
        if ((customer!=null) && (bankAccount!=null)) {
            customerList.add(customer);
            bankAccountList.add(bankAccount);
            customer.setBankAccount(bankAccountList);
            bankAccount.setCustomer(customerList);
            transactionRepository.save(customer);
            bankaccountRepository.save(bankAccount);
            returnValue = "accountOverviewView";
        }
        return returnValue;
    }
}
