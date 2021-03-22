package com.gbbc.webapplication.beans;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "bank_account")
public class BankAccount {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String title;
    private String iban;
    //private int klant_id;
    private Double saldo;
    private String type;
    //keuzes: prive, Horeca, Gezondheidszorg, Handel en Dienstverlening, ICT, Landbouw, Onderwijs, Techniek, Transport, Toerisme, Cultuur
    private String sector;
    @ManyToMany
    private List<Transaction> transactionHistory;
    @ManyToMany(mappedBy = "bankAccount", fetch = FetchType.EAGER)
    private List<Customer> customer;
    @ManyToOne
//    @Table(name = "gemachtigde_id")
    private Customer gemachtigde;

    public BankAccount() {
    }


    public void setGemachtigde(Customer gemachtigde) {
        this.gemachtigde = gemachtigde;
    }

    public Customer getGemachtigde() {
        return gemachtigde;
    }


    public List<Customer> getCustomer() {
        return customer;
    }

    public void setCustomer(List<Customer> customer) {
        this.customer = customer;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getIban() {
        return iban;
    }

    public void setIban(String iban) {
        this.iban = iban;
    }

    public Double getSaldo() {
        return saldo;
    }

    public void setSaldo(Double saldo) {
        this.saldo = saldo;
    }

    public List<Transaction> getTransactionHistory() {
        return transactionHistory;
    }

    public void setTransactionHistory(List<Transaction> transactionHistory) {
        this.transactionHistory = transactionHistory;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSector() {
        return sector;
    }

    public void setSector(String sector) {
        this.sector = sector;
    }

    public String generateIban(){
        String iban = "";
        String firstDigits = String.valueOf((int)Math.round((Math.random()*99)-10));
        String lastDigits = String.valueOf((int)Math.round((Math.random()*9999999)+1));
        iban = "NL"+firstDigits+"GBBC000"+lastDigits;
        return iban;
    }
}
