<%@ page import="java.util.HashMap, java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nutrient Recommendations Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <!-- <link href="./../css/main.css" rel="stylesheet" /> -->
</head>

<body>
                    <!-- header -->
    <%@ include file="/WEB-INF/views/project/header.jsp" %>
   
<% HashMap params=(HashMap)request.getAttribute("params"); 
HashMap result=(HashMap)request.getAttribute("result"); %>


    <div class="container">
        <table class="table table-bordered">

          <tr>
            <th class="text-center"></th>
            <th class="text-center">이름</th>
            <th class="text-center">제조사</th>
            <th class="text-center">사이트</th>
          </tr>
          <% ArrayList resultList=(ArrayList)result.get("resultList"); 
          for(int i=0; i < resultList.size(); i=i+1){
              HashMap record=(HashMap)resultList.get(i); %>
          <tr>
            <td><img src='<%= record.get("LOCATION") %>' alt='<%= record.get("LOCATION") %>'
              class="square-image" width="100px" height="100%" ></td>
            <td><%= record.get("PRODUCT") %></td>
            <td><%= record.get("MANUFACTURE") %></td>
            <td><a href='<%= record.get("LINK") %>'>구매사이트</a></td>
          </tr>
          <% } %>
        </table>
      </div>
      <hr>

<!-- Footer -->
<%@ include file="/WEB-INF/views/project/footer.jsp" %>
  
</body>
</html>


