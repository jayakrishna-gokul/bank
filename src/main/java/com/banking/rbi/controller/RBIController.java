package com.banking.rbi.controller;

import com.banking.rbi.model.BankDetails;
import com.banking.rbi.service.RBIService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController("/")
public class RBIController {

    @Autowired
    RBIService rbiService;

    @GetMapping("get-banks")
    public ResponseEntity<List<BankDetails>> getBanksUnderRBI(){

        List<BankDetails> banksList = rbiService.banksList();
        return new ResponseEntity<>(banksList, HttpStatus.OK);


    }
}
