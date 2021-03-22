package com.gbbc.webapplication.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HomeController {

    /**
     * Home Pagina
     *
     * @return homeView.jsp
     */
    @GetMapping("/home")
    public String goHome() {
        System.out.println("GoldBarBankingCo");
        return "homeView";
    }

    /**
     * Bezoeker: Open rekening pagina
     *
     * @return openAccountView.jsp
     */
    @GetMapping("/open-account")
    public String goToOpenAccount() {
        System.out.println("In open account view");
        return "openAccountView";
    }


    /**
     * Login Pagina
     *
     * @return inlogView.jsp
     */
    @GetMapping("/login")
    public String goToLogin() {
        System.out.println("in login view");
        return "inlogView";
    }

    /**
     * Rekening:    overzicht van alle rekeningen van ingelogde klant
     *
     * @return accountOverviewView.jsp
     */
    @GetMapping("/account-overview")
    public String goToAccountOverview(Model model) {
        System.out.println("in account overview view");

        List<String> namen = List.of("Piet", "Truus", "Peter", "Ferry", "Lorenzo");
        int index = (int) (Math.random() * namen.size());

        model.addAttribute("client", namen.get(index));
        return "accountOverviewView";
    }


    /**
     * Rekening:    Toon geselecteerde rekening
     *
     * @return accountStatementView.jsp
     */
    @GetMapping("/authorize")
    public String goToAuthorize() {
        System.out.println("in selected authorize view");
        return "authorizeUserView";
    }


    /**
     * Rekening:    Koppel rekening
     *
     * @return linkAccountView.jsp
     */
    @GetMapping("/account-link")
    public String goToLinkAccount() {
        System.out.println("in link account view");
        return "linkAccountView";
    }

    /**
     * Transactie:  Doe transactie pagina
     *
     * @return transactionView.jsp
     */
    @GetMapping("/transaction")
    public String goToTransaction() {
        System.out.println("in do transaction view");
        return "transactionView";
    }

    /**
     * Transactie:  Doe transactie pagina
     *
     * @return transactionView.jsp
     */
    @GetMapping("/employeeControle")
    public String goToInLogViewEmployee() {
        System.out.println("in employeeControle");
        return "inlogViewEmployee";
    }


    /**
     * Transactie:  Overzicht van de te maken transactie,
     * bevestig of annuleer transactie
     *
     * @return transactionConfirmationView.jsp
     */
    @GetMapping("/transaction-confirmation")
    public String goToTransactionConfirmation() {
        System.out.println("in transaction confirmation");
        return "transactionConfirmationView";
    }

    /**
     * Transactie:  Bevestiging van geslaagde transactie
     *
     * @return transactionSucceedView
     */
    @GetMapping("/transaction-succeeded")
    public String goToTransactionSucceeded() {
        System.out.println("in transaction succeeded");
        return "transactionSucceededView";
    }

    /**
     * Medewerker Hoofd Particulieren: Particulieren overzichtspagina
     *
     * @return privateBankingView.jsp
     */
    @GetMapping("/private-banking-customers")
    public String goToPrivateBanking(Model model) {
        System.out.println("going to Customers");

        List<String> namen = List.of("Piet", "Truus", "Peter", "Ferry", "Lorenzo");
        int index = (int) (Math.random() * namen.size());

        model.addAttribute("client", namen.get(index));
        return "privateBankingView";
    }


    /**
     * Medewerker:  Pagina overzicht Terminals
     *
     * @return bankEmployeeView.jsp
     */
    @GetMapping("/connect-terminal")
    public String goToConnectTerminal() {
        System.out.println("in connect Terminal");
        return "bankEmployeeView";
    }
}
