package com.gbbc.webapplication.services;

import com.gbbc.webapplication.beans.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class EmployeeSessionService {

    @Autowired
    HttpSession session;

    public Boolean isLoggedIn(){
        boolean isLoggedIn = false;
        if(session.getAttribute("isLoggedIn") != null)
            isLoggedIn = (boolean)session.getAttribute("isLoggedIn");
        return isLoggedIn;
    }

    public Employee getLoggedInUser(){
        Employee employee = new Employee();
        if(session.getAttribute("employee") != null)
        employee = (Employee)session.getAttribute("employee");
        return employee;
    }

}
