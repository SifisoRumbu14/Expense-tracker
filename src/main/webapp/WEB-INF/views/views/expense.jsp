<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

   <c:set var="contextRoot" value="${pageContext.request.contextPath}" />

 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/HTM4/loose.dtd">
 <html>
   <head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
   <title> Insert title here</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   </head>
   <body>
   <div class="container">
    <div class="card">
    <h1>Edit expense</h1>
      <div class="card-body">
        <form:form action="${contextRoot}/expense" method="post" modelAttribute="expense">

             <form:hidden path="id"/>
             <div class="form-group row">
                <label for="expensename" class="col-sm-2 col-form-label">Expense name</label>
                 <div class="col-sm-7">
                   <input type="text" class="form-control" name="expensename" value="${expense.expensename}" placeholder="enter expense name">
                 </div>
             </div>
              <div class="form-group row">
                   <label for="amount" class="col-sm-2 col-form-label">Expense amount</label>
                  <div class="col-sm-7">
                    <input type="text" class="form-control" name="amount" value="${expense.amount}" placeholder="enter expense amount">
                   </div>
                </div>
                <div class="form-group row">
                   <label for="note" class="col-sm-2 col-form-label">Expense note</label>
                  <div class="col-sm-7">
                    <input type="text" class="form-control" name="note" value="${expense.note}" placeholder="enter expense note">
                  </div>
                </div>
            <button type="submit" class="btn btn-primary">add expense</button>
            <a class="btn btn-primary" href="${contextRoot}/home">Back</a>
            </form:form>
     </div>
    </div>
   </div>
   </body>
 </html>