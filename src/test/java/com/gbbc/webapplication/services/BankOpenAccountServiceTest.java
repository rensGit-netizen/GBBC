package com.gbbc.webapplication.services;

import com.gbbc.webapplication.repository.BankaccountRepository;
import com.gbbc.webapplication.repository.CustomerRepository;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(MockitoExtension.class)
@ExtendWith(SpringExtension.class)
public class BankOpenAccountServiceTest {

    // arrange
    @MockBean
    BankaccountRepository bankaccountRepository = Mockito.mock(BankaccountRepository.class);
    @MockBean
    CustomerRepository customerRepository = Mockito.mock(CustomerRepository.class);
    // SUT
    @InjectMocks
    OpenAccountService bankOpenAccountService;

    /**
     * @verifies store a new customer
     * @see OpenAccountService#storeCustomer(com.gbbc.webapplication.beans.Customer)
     */
    @Test
    public void storeCustomer_shouldStoreANewCustomer() throws Exception {
        //TODO auto-generated
        // Arrange
        // Act
        // Assert
        Assertions.fail("Not yet implemented");
    }

    /**
     * @verifies generate a new bank account
     * @see OpenAccountService#storeCustomer(com.gbbc.webapplication.beans.Customer)
     */
    @Test
    public void storeCustomer_shouldGenerateANewBankAccount() throws Exception {
        //TODO auto-generated
        // Arrange
        // Act
        // Assert
        Assertions.fail("Not yet implemented");
    }
}
