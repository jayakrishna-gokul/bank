package com.banking.rbi.service;

import com.banking.rbi.dao.RBIRepo;
import com.banking.rbi.model.BankDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RBIService {

    @Autowired
    RBIRepo rbiRepo;

    public List<BankDetails> banksList(){
        return rbiRepo.findAll();

    }
}
