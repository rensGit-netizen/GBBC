package com.gbbc.webapplication.services;

import com.gbbc.webapplication.beans.BankAccount;
import com.gbbc.webapplication.beans.Customer;
import com.gbbc.webapplication.domain.OpenAccount;
import com.gbbc.webapplication.repository.BankaccountRepository;
import com.gbbc.webapplication.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.List;


@Service
public class OpenAccountService {

    @Autowired
    private BankaccountRepository bankaccountRepository;
    @Autowired
    private CustomerRepository customerRepository;

    public OpenAccountService(BankaccountRepository bankaccountRepository, CustomerRepository customerRepository) {
        this.bankaccountRepository = bankaccountRepository;
        this.customerRepository = customerRepository;
    }

    public void createUserAndOpenAccount(OpenAccount storeAccount) {
        //Create a check Customer
        Customer checkCustomer = customerRepository.searchByUserName(storeAccount.getUser_name());
//Check if customer exist
        if (checkCustomer != null) {
            //If exist --> generate new account
            BankAccount createBankAccount = new BankAccount();
            createBankAccount.setType(checkCustomer.getCustomer_type());
            createBankAccount.setTitle(storeAccount.getTitle());
            createBankAccount.setSector(storeAccount.getSector());
            createBankAccount.setIban(createBankAccount.generateIban());
            createBankAccount.setSaldo(1000.00);
//            Customer gemachtigde = customerRepository.searchByUserName(storeAccount.getGemachtigde());
//            createBankAccount.setGemachtigde(gemachtigde);

            //add account to customer
            List<BankAccount> allAccountsFromCustomer = checkCustomer.getBankAccount();
            allAccountsFromCustomer.add(createBankAccount);
            checkCustomer.setBankAccount(allAccountsFromCustomer);

            //add customer to account
            List<Customer> allCustomersAccount = new ArrayList<>();
            allCustomersAccount.add(checkCustomer);
            createBankAccount.setCustomer(allCustomersAccount);
            //save customer to repo
            customerRepository.save(checkCustomer);
            //save account to repo
            bankaccountRepository.save(createBankAccount);
        }

        //if not exist
        if (checkCustomer == null) {
            //create new Customer with attributes from storeAccount
            checkCustomer = new Customer();
            checkCustomer.setFirst_name(storeAccount.getFirst_name());
            checkCustomer.setLast_name(storeAccount.getLast_name());
            checkCustomer.setBsn(storeAccount.getBsn());
            checkCustomer.setDate_of_birth(storeAccount.getDate_of_birth());
            checkCustomer.setStreet(storeAccount.getStreet());
            checkCustomer.setPostal_code(storeAccount.getPostal_code());
            checkCustomer.setCity(storeAccount.getCity());
            checkCustomer.setCountry(storeAccount.getCountry());
            checkCustomer.setCustomer_type(storeAccount.getCustomer_type());
            checkCustomer.setUser_name(storeAccount.getUser_name());
            checkCustomer.setPassword(storeAccount.getPassword());

            //create new account
            BankAccount createBankAccount = new BankAccount();
            createBankAccount.setType(storeAccount.getCustomer_type());
            createBankAccount.setTitle(storeAccount.getTitle());
            createBankAccount.setSector(storeAccount.getSector());
            createBankAccount.setIban(createBankAccount.generateIban());
            createBankAccount.setSaldo(1000.00);

//            Customer gemachtigde;
//            if(gemachtigde.getGe){
//                gemachtigde = customerRepository.searchByUserName(storeAccount.getGemachtigde());
//                createBankAccount.setGemachtigde(gemachtigde);
//            }

            //add account to customer
            List<BankAccount> allAccountsFromCustomer = new ArrayList<>();
            allAccountsFromCustomer.add(createBankAccount);
            checkCustomer.setBankAccount(allAccountsFromCustomer);

            //add customer to account
            List<Customer> allCustomersAccount = new ArrayList<>();
            allCustomersAccount.add(checkCustomer);
            createBankAccount.setCustomer(allCustomersAccount);

            //save customer to repo
            customerRepository.save(checkCustomer);

            //save account to repo
            bankaccountRepository.save(createBankAccount);
        }
    }
}