package com.gbbc.webapplication.repository;

import com.gbbc.webapplication.beans.BankAccount;
import com.gbbc.webapplication.beans.Customer;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BankaccountRepository extends CrudRepository<BankAccount, Integer>{

//    @Query(value = "select b.id from Customer c join bank_account b on c.id = b.customer_id where customer_type = 'zakelijk' order by b.saldo desc limit 10", nativeQuery=true)
//    List<Integer> top10zakelijkBankAccount();
//    List<BankAccount> findTop10ByBankAccountBySectorIsNotOrderBySaldoDesc(String sector);
List<BankAccount> findTop10BySectorIsNotOrderBySaldoDesc(String sector);

/*    @Query(value = "select * from bank_account b where b.id = :id", nativeQuery=true)
    BankAccount getBankAccountsById(@Param("id")int id);
    */
    BankAccount findBankAccountById(int id);

/*
    @Query(value= "select * from bank_account where customer_id in (select id from customer where customer_type = 'zakelijk')", nativeQuery=true)
    List<BankAccount> getAllBusinessAccounts();
*/
    List<BankAccount> getAllBySectorIsNot(String sector);

    List<BankAccount> findBankAccountsByCustomer(Customer customer);

    List<BankAccount> findBankAccountsByGemachtigde(Customer gemachtigde);

//    @Query(value = "INSERT INTO bank_account(id, iban, klant_id, saldo, title, type) VALUES(?,?,?,?,?,?)", nativeQuery = true)
//    BankAccount storeBankAccount(); --> in plaats hiervan
    // in AccountServiceImpl         bankaccountRepository.save(createdBankAccount);

//    BankAccount findBankAccountByIban();

    @Query(value = "select bank_account_id from bank_account_transaction_history group by bank_account_id order by count(transaction_history_id) desc limit 50", nativeQuery=true)
    List<Integer> get50MostActiveBankAccountIds();


    @Query(value = "select sector from bank_account where not sector like 'prive' group by sector order by AVG(saldo) desc", nativeQuery = true)
    public List<String> getAllSegmentNames();


    @Query(value = "select round(AVG(saldo),2) from bank_account where not sector like 'prive' group by sector order by AVG(saldo) desc", nativeQuery = true)
    public List<String> getAllSegmentAvgs();

    //List<AccountsOverview> getBankAccountByCustomer(List<Customer> customer);

}
