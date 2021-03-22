package com.gbbc.webapplication.controllers;

import com.gbbc.webapplication.services.StatementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class AccountStatementController {

    @Autowired
    public StatementService statementService;

    /**
     * Rekening:    Toon geselecteerde rekening
     *
     * @return accountStatementView.jsp
     */
    @GetMapping("/account-statement")
    public String goToAccountStatement(HttpSession session, Model model)
    {
        System.out.println("in selected account statement view");
        return "accountStatementView";
    }

}
