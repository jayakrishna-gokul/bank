package com.banking.rbi.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "bank_details")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BankDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String bank_name;
    private int bank_address_id;
}
