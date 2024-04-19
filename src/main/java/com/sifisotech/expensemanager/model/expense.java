package com.sifisotech.expensemanager.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name="tbl_expenses")
@Getter
@Setter
@ToString
public class expense {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long id;
    @Column(name="description")
    private String expensename;
    private BigDecimal amount;
    private String note;
    private Long createdAt;

}
