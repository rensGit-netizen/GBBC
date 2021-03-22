package com.gbbc.webapplication.controllers;


import com.gbbc.webapplication.domain.Business;
import com.gbbc.webapplication.domain.Sector;
import com.gbbc.webapplication.services.EmployeeSessionService;
import com.gbbc.webapplication.services.SmesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class smesController {
    @Autowired
    public SmesService smesService;

    @Autowired
    EmployeeSessionService employeeSessionService;

    @GetMapping("/smes-customers")
    public String goToSmes(Model model, HttpSession employeeSession) {
        if (employeeSessionService.isLoggedIn()) {
            System.out.println("going to SMEs Customers");
            String employeeName = employeeSessionService.getLoggedInUser().getFirst_name();

            List<Business> allBusinessAccounts = smesService.getBankAccounts();

            model.addAttribute("accounts", allBusinessAccounts);
            model.addAttribute("employee", employeeName);
            return "smesView";
        } else return "inlogViewEmployee";
    }


    @GetMapping("/top10")
    public String goToTop10(Model model, HttpSession employeeSession) {
        if (employeeSessionService.isLoggedIn()) {
            System.out.println("going to top10(ibiza)");

            List<Business> top10Accounts = smesService.getQuoteTen();

            model.addAttribute("accounts", top10Accounts);
            return "smesView";
        } else return "inlogViewEmployee";
    }


    @GetMapping("/mostActive")
    public String goToMostActive(Model model, HttpSession employeeSession) {
        if (employeeSessionService.isLoggedIn()) {
            System.out.println("going to mostActive");

            List<Business> tenMostActiveBusinessAccounts = smesService.getMostActiveAccounts();

            model.addAttribute("accounts", tenMostActiveBusinessAccounts);
            return "smesView";
        } else return "inlogViewEmployee";
    }


    @GetMapping("/averageSector")
    public String goToAverageSector(Model model, HttpSession employeeSession) {
        if (employeeSessionService.isLoggedIn()) {
            System.out.println("going to AVGSectorSituation");

            List<Sector> sectorList = smesService.getAllSectorsWithAvg();

            model.addAttribute("sectors", sectorList);
            return "sector";
        } else return "inlogViewEmployee";
    }


}
