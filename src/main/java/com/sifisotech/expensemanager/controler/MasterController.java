package com.sifisotech.expensemanager.controler;

import com.sifisotech.expensemanager.model.expense;
import com.sifisotech.expensemanager.service.ExpenseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class MasterController {
    @Autowired
    ExpenseService expenseService;
    @RequestMapping("/home")
    public ModelAndView home(){
        ModelAndView mv = new ModelAndView("home");
        mv.addObject("message","List of expenses");
        List<expense> expenses = expenseService.findAll();
        mv.addObject("expenses", expenses);
        return mv;
    }
    @RequestMapping("/expense")
    public ModelAndView addexpense(){
        ModelAndView mv = new ModelAndView("expense");
        mv.addObject("expense",new expense());
        return mv;
    }
    @RequestMapping(value="/expense", method= RequestMethod.POST)
    public String save(@ModelAttribute("expense") expense expense){
        expenseService.save(expense);
        return"redirect:/home";
    }
    @RequestMapping(value="/expense/{id}", method= RequestMethod.GET)
    public ModelAndView edit(@PathVariable("id") Long id){
        ModelAndView mv = new ModelAndView("expense");
        expense expense = expenseService.findById(id);
        mv.addObject("expense", expense);
        mv.addObject("disabledFlag", false);
        return mv;
    }
    @RequestMapping(value="/expense/view/{id}", method= RequestMethod.GET)
    public ModelAndView view(@PathVariable("id") Long id){
        ModelAndView mv = new ModelAndView("view");
        expense expense = expenseService.findById(id);
        mv.addObject("expense", expense);
        mv.addObject("disabledFlag", true);
        return mv;
    }
    @RequestMapping(value="/expense/{id}/delete")
    public String delete(@PathVariable("id") Long id){
        expenseService.deleteById(id);
        return "redirect:/home";
    }


}
