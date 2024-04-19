<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            <h1>Expense Tracker</h1>
                 <a href="${contextRoot}/expense" class="btn btn-primary" style="float:right">Add expense</a>
                    <p style="clear:right">${message}</p>
                     <table class="table table-striped">
                         <thead>
                           <th>Name</th>
                           <th>Price</th>
                           <th>Action</th>
                         </thead>
                         <tbody>
                           <c:forEach var="expense" items="${expenses}">
                               <tr>
                                 <td>${expense.expensename}</td>
                                 <td>${expense.amount}</td>
                                 <td><a href="${contextRoot}/expense/${expense.id}">Edit</a> | <a href="${context.Root}/expense/${expense.id}/delete">Delete</a> | <a href="${contextRoot}/expense/view/${expense.id}">View</a></td>
                               </tr>
                            </c:forEach>
                         </tbody>
                     </table>
       </div>
   </body>
 </html>