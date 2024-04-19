package com.sifisotech.expensemanager.repository;

import com.sifisotech.expensemanager.model.expense;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ExpenseRepository extends JpaRepository<expense, Long> {
}
