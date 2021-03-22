package com.gbbc.webapplication.controllers;

import com.gbbc.webapplication.beans.BankAccount;
import com.gbbc.webapplication.repository.BankaccountRepository;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.boot.test.mock.mockito.MockBean;

import java.util.ArrayList;
import java.util.List;

@ExtendWith(MockitoExtension.class)
public class smesControllerTest {
    @MockBean
    BankaccountRepository bankaccountRepository = Mockito.mock(BankaccountRepository.class);

    @MockBean
    List<BankAccount> bankAccounts = new ArrayList<>();

    @InjectMocks
    smesController smesController;


    /**
     * @verifies get a list of bankAccount objects from bankRepository
     * @see smesController#goToSmes(org.springframework.ui.Model)
     */
    @Test
    public void goToSmes_shouldGetAListOfBankAccountObjectsFromBankRepository() throws Exception {
        // Arrange

        // Act

        // Assert
    }

    /**
     * @verifies add this list to the Model
     * @see smesController#goToSmes(org.springframework.ui.Model)
     */
    @Test
    public void goToSmes_shouldAddThisListToTheModel() throws Exception {
        //TODO auto-generated
        Assertions.fail("Not yet implemented");
    }

    /**
     * @verifies return smesView.jsp
     * @see smesController#goToSmes(org.springframework.ui.Model)
     */
    @Test
    public void goToSmes_shouldReturnSmesViewjsp() throws Exception {
        //TODO auto-generated
        Assertions.fail("Not yet implemented");
    }

    /**
     * @verifies get a list of bankAccount ID's(Integer) from bankRepository
     * @see smesController#goToTop10(org.springframework.ui.Model)
     */
    @Test
    public void goToTop10_shouldGetAListOfBankAccountIDsIntegerFromBankRepository() throws Exception {
        //TODO auto-generated
        Assertions.fail("Not yet implemented");
    }

    /**
     * @verifies get a list of 10 accounts
     * @see smesController#goToTop10(org.springframework.ui.Model)
     */
    @Test
    public void goToTop10_shouldGetAListOf10Accounts() throws Exception {
        //TODO auto-generated
        Assertions.fail("Not yet implemented");
    }

    /**
     * @verifies get a the bankAccount object(s) from bankReposity with the bankAccount ID
     * @see smesController#goToTop10(org.springframework.ui.Model)
     */
    @Test
    public void goToTop10_shouldGetATheBankAccountObjectsFromBankReposityWithTheBankAccountID() throws Exception {
        //TODO auto-generated
        Assertions.fail("Not yet implemented");
    }

    /**
     * @verifies add this list to the Model
     * @see smesController#goToTop10(org.springframework.ui.Model)
     */
    @Test
    public void goToTop10_shouldAddThisListToTheModel() throws Exception {
        //TODO auto-generated
        Assertions.fail("Not yet implemented");
    }

    /**
     * @verifies return smesView.jsp
     * @see smesController#goToTop10(org.springframework.ui.Model)
     */
    @Test
    public void goToTop10_shouldReturnSmesViewjsp() throws Exception {
        //TODO auto-generated
        Assertions.fail("Not yet implemented");
    }

    /**
     * @verifies get a list of bankAccount ID's(Integer) from bankRepository
     * @see smesController#goToMostActive(org.springframework.ui.Model)
     */
    @Test
    public void goToMostActive_shouldGetAListOfBankAccountIDsIntegerFromBankRepository() throws Exception {
        //TODO auto-generated
        Assertions.fail("Not yet implemented");
    }

    /**
     * @verifies get a list of 10 accounts
     * @see smesController#goToMostActive(org.springframework.ui.Model)
     */
    @Test
    public void goToMostActive_shouldGetAListOf10Accounts() throws Exception {
        //TODO auto-generated
        Assertions.fail("Not yet implemented");
    }

    /**
     * @verifies get a the bankAccount object(s) from bankReposity with the bankAccount ID
     * @see smesController#goToMostActive(org.springframework.ui.Model)
     */
    @Test
    public void goToMostActive_shouldGetATheBankAccountObjectsFromBankReposityWithTheBankAccountID() throws Exception {
        //TODO auto-generated
        Assertions.fail("Not yet implemented");
    }

    /**
     * @verifies add this list to the Model
     * @see smesController#goToMostActive(org.springframework.ui.Model)
     */
    @Test
    public void goToMostActive_shouldAddThisListToTheModel() throws Exception {
        //TODO auto-generated
        Assertions.fail("Not yet implemented");
    }

    /**
     * @verifies return smesView.jsp
     * @see smesController#goToMostActive(org.springframework.ui.Model)
     */
    @Test
    public void goToMostActive_shouldReturnSmesViewjsp() throws Exception {
        //TODO auto-generated
        Assertions.fail("Not yet implemented");
    }
}
