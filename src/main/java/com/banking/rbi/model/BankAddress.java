package com.banking.rbi.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;


@Entity
@Table(name = "bank_address")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BankAddress {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id ;
    private String address_line_1;
    private String address_line_2 ;
    private String city ;
    private String state;
    private int zip;
    private String country;
}
