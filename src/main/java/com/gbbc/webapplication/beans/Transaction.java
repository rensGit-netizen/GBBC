package com.gbbc.webapplication.beans;

import org.springframework.context.annotation.Bean;

import javax.persistence.*;

@Entity
public class Transaction {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private double amount;
    private String description;
    @ManyToOne
    private BankAccount debetAccount;
    @ManyToOne
    private BankAccount creditAccount;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BankAccount getDebetAccount() {
        return debetAccount;
    }

    public void setDebetAccount(BankAccount debetAccount) {
        this.debetAccount = debetAccount;
    }

    public BankAccount getCreditAccount() {
        return creditAccount;
    }

    public void setCreditAccount(BankAccount creditAccount) {
        this.creditAccount = creditAccount;
    }
}
