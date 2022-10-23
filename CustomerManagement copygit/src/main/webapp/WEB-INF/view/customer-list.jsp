<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
    
    <!--Stylesheet (CSS) & JSP Tag Library  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer List</title>
<meta name="viewport"
                  content="width=device-width, initial-scale=1, shrink-to-fit=no">
                
  <!--Bootstrap CSS  -->
  <link   rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
            integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0Dm4iYMj70gZWKYb1706tWS"
            crossorigin="anonymous">   
     
</head>
<body>

          <div class="container">
          <br>
          <div class="p-3 mb-2 bg-success text-black">
            <h2>CUSTOMER RELATIONSHIP MANAGEMENT</h2>
          </div>
          <br> <br> <a
                    href="/GradedAssignment3/customer/showFormForAdd"
                    class="btn btn-primary btn-sm mb-3">Add Customer</a><br>
               <table class="table table-bordered table-striped">
             <thead class="thread-dark">
             <tr>
                     <th>First Name</th>
                     <th>Last Name</th>
                     <th>Email</th>
                     <th>Action</th>
                     
              </tr>       
             
       </thead>   
       
       <tbody>
         
             <c:forEach items="${Customers}" var=customer>
             <tr>
             
                           <td><c:out value="${customer.firstName}"></c:out></td>
                           <td><c:out value="${customer.lastName}"></c:out></td>
                           <td><c:out value="${customer.email}"></c:out></td>
                           <td><a
                               href="/GradedAssignment3/customer/showFormForUpdate?id=${customer.id}"
                               class="btn btn-info btn-sm">Update</a> <a
                               href="/GradedAssignment3/customer/delete?id=${customer.id}"
                               class="btn btn-info btn-sm"
                               onclick="if(!(confirm('Are you sure to delete this Student?'))) return false">Delete</a>
                               
                               </td>
                            </tr>
                              
                          
                          </c:forEach>
       
                                 <!-- Tag lib For loop --> 
                          </tbody>   
               </table>
          </div>

</body>
</html>






