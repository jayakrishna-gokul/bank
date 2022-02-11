package com.banking.rbi.dao;

import com.banking.rbi.model.BankDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RBIRepo extends JpaRepository<BankDetails, Integer> {

    public List<BankDetails> findAll();

}
