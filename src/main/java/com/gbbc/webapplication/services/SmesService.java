package com.gbbc.webapplication.services;

import com.gbbc.webapplication.beans.BankAccount;
import com.gbbc.webapplication.beans.Customer;
import com.gbbc.webapplication.domain.Business;
import com.gbbc.webapplication.domain.Sector;
import com.gbbc.webapplication.repository.BankaccountRepository;
import com.gbbc.webapplication.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SmesService {

    @Autowired
    private BankaccountRepository bankaccountRepository;
    @Autowired
    private CustomerRepository customerRepository;

    public SmesService(BankaccountRepository bankaccountRepository, CustomerRepository customerRepository) {
        this.bankaccountRepository = bankaccountRepository;
        this.customerRepository = customerRepository;
    }


    public List<Business> getBankAccounts() {
        List<Business> allBusinessSmes = new ArrayList<>();
        List<BankAccount> allBusinessAccounts = bankaccountRepository.getAllBySectorIsNot("prive");

        for (BankAccount b : allBusinessAccounts) {
            Business business = new Business();
            business.setId(b.getId());
            business.setCustomer_id(b.getCustomer().get(0).getId());
            business.setTitle(b.getTitle());
            business.setIban(b.getIban());
            business.setSaldo(b.getSaldo());
            Customer businessCustomer = customerRepository.searchCustomerById(b.getCustomer().get(1).getId());
            business.setUser_name(businessCustomer.getUser_name());
            business.setFirst_name(businessCustomer.getFirst_name());
            business.setLast_name(businessCustomer.getLast_name());
            business.setSector(businessCustomer.getCustomer_type());
            allBusinessSmes.add(business);
        }
        return allBusinessSmes;
    }

    public List<Business> getQuoteTen() {
        List<Business> quoteTenSmes = new ArrayList<>();
        List<BankAccount> quoteTenBusinessAccountIDS = bankaccountRepository.findTop10BySectorIsNotOrderBySaldoDesc("prive");
        for (BankAccount b: quoteTenBusinessAccountIDS) {
//            BankAccount bankAccount = bankaccountRepository.findBankAccountById(i.intValue());
            Business business = new Business();
            business.setId(b.getId());
            business.setCustomer_id(b.getCustomer().get(1).getId());
            business.setTitle(b.getTitle());
            business.setIban(b.getIban());
            business.setSaldo(b.getSaldo());
            Customer businessCustomer = customerRepository.searchCustomerById(b.getCustomer().get(1).getId());
            business.setUser_name(businessCustomer.getUser_name());
            business.setFirst_name(businessCustomer.getFirst_name());
            business.setLast_name(businessCustomer.getLast_name());
            business.setSector(businessCustomer.getCustomer_type());
            quoteTenSmes.add(business);
        }

        return quoteTenSmes;
    }


    public List<Business> getMostActiveAccounts() {
        List<Integer> mostActiveAccountIDs = bankaccountRepository.get50MostActiveBankAccountIds();
        List<Business> tenMostActiveBusinessAccounts = new ArrayList<>();
        int maxLengte = 10;
        int teller = 0;

        for (Integer i : mostActiveAccountIDs) {
            BankAccount bankAccount = bankaccountRepository.findBankAccountById(i);
            if (bankAccount.getType().equals("zakelijk") && teller <= maxLengte) {
                Business business = new Business();
                business.setId(bankAccount.getId());
                business.setCustomer_id(bankAccount.getCustomer().get(1).getId());
                business.setTitle(bankAccount.getTitle());
                business.setIban(bankAccount.getIban());
                business.setSaldo(bankAccount.getSaldo());
                Customer businessCustomer = customerRepository.searchCustomerById(bankAccount.getCustomer().get(1).getId());
                business.setUser_name(businessCustomer.getUser_name());
                business.setFirst_name(businessCustomer.getFirst_name());
                business.setLast_name(businessCustomer.getLast_name());
                business.setSector(businessCustomer.getCustomer_type());
                tenMostActiveBusinessAccounts.add(business);
                teller++;
            }
        }
        return tenMostActiveBusinessAccounts;
    }

    public List<Sector> getAllSectorsWithAvg() {
        List<String> sectorNames = bankaccountRepository.getAllSegmentNames();
        List<String> avgBalance = bankaccountRepository.getAllSegmentAvgs();
        List<Sector> sectorList = new ArrayList<>();
        int index = 0;
        for (String s: sectorNames) {
            Sector sector = new Sector();
            sector.setName(s);
            sector.setAvgBalance(avgBalance.get(index));
            sectorList.add(sector);
            index ++;
        }


//        Map<String, Double> sectorMap = bankaccountRepository.getAllSegmentAVGs();
//
//        for (Map.Entry<String, Double> entry: sectorMap.entrySet()) {
//            Sector sector = new Sector();
//            sector.setName(entry.getKey());
//            sector.setAvgBalance(entry.getValue());
//            sectorList.add(sector);
//        }

        return sectorList;
    }



}
