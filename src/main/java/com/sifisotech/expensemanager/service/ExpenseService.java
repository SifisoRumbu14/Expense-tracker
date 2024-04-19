package com.sifisotech.expensemanager.service;

import com.sifisotech.expensemanager.model.expense;

import java.util.List;

public interface ExpenseService {
    List<expense> findAll();
    void save(expense expense);
    expense findById(Long id);
    void deleteById(Long id);
}
