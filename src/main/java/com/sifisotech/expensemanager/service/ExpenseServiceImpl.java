package com.sifisotech.expensemanager.service;

import com.sifisotech.expensemanager.model.expense;
import com.sifisotech.expensemanager.repository.ExpenseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ExpenseServiceImpl implements ExpenseService {
    @Autowired
    ExpenseRepository expenseRepository;
    @Override
    public List<expense> findAll(){
        return expenseRepository.findAll();
    }

    @Override
    public void save(expense expense) {
        expense.setCreatedAt(System.currentTimeMillis());
        expenseRepository.save(expense);
    }
    public expense findById(Long id) {
         if(expenseRepository.findById(id).isPresent()){
             return expenseRepository.findById(id).get();
         }
        return null;
    }
    public void deleteById(Long id){
        expenseRepository.deleteById(id);
    }


}
