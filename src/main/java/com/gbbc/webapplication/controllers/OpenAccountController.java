package com.gbbc.webapplication.controllers;

import com.gbbc.webapplication.domain.OpenAccount;
import com.gbbc.webapplication.services.OpenAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class OpenAccountController {

    @Autowired
    public OpenAccountService openAccountService;

    /**
     * Bezoeker:    Rekening is succesvol aangemaakt
     * Laat overzicht zien van ingevulde gegevens
     *
     * @return succesfullyRegisteredAccountView.jsp
     */
    @GetMapping("/account-created-succes")
    public String goToAccountCreated(Model model) {
        System.out.println("In succesfully created account");

        return "succesfullyRegisteredAccountView";
    }

    @PostMapping("/account-created-succes")
    public String createCustomer(@ModelAttribute("openAccount") OpenAccount openAccount, ModelMap model) {
        // check form
        openAccountService.createUserAndOpenAccount(openAccount);

        return "succesfullyRegisteredAccountView";
    }

}
