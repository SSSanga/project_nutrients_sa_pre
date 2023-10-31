<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap, java.util.ArrayList, com.project.project_nutrients.utils.Paginations" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap 5 Template</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>

<body>

<!-- header -->
<%@ include file="/WEB-INF/views/project/header.jsp" %>

    <% HashMap params=(HashMap)request.getAttribute("params"); String searchStr=(String)params.getOrDefault("search", ""
        ); HashMap result=(HashMap)request.getAttribute("result"); %>
        
        <% Paginations paginations=(Paginations)result.get("paginations"); %>
          
                                
        <form action="" method="">
        <div class="container">
            <h2>MembersList</h2>
            <div class="card m-3 p-3 justify-content-center">
                <div>총 회원 수 : <%= paginations.getTotalCount() %> 명
                </div>
              </div>  
                        
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>UNIQUE_ID</th>
                                    <th>NAME</th>
                                    <th>ID</th>
                                    <th>BIRTHDATE</th>
                                    <th>AGE</th>
                                    <th>SEX</th>
                                    <th>ADDRESS</th>
                                    <th>PHONE</th>
                                    <th>REGISTRATIONDATE</th>
                                    <th>EMAIL</th>
                                    <th>HISTORY_ID</th>
                                    <th>Auths Delete</th> 
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% ArrayList resultList=(ArrayList)result.get("resultList"); 
                                    for(int i=0; i < resultList.size(); i=i+1){
                                        HashMap record=(HashMap)resultList.get(i); %>
                                    <tr>
                                        <td>
                                            <%= record.get("UNIQUE_ID") %>
                                        </td>
                                        <td>
                                            <%= record.get("NAME") %>
                                        </td>
                                        <td>
                                            <%= record.get("ID") %>
                                        </td>
                                        <td>
                                            <%= record.get("BIRTHDATE") %>
                                        </td>
                                        <td>
                                            <%= record.get("AGE") %>
                                        </td>
                                        <td>
                                            <%= record.get("SEX") %>
                                        </td>
                                        <td>
                                            <%= record.get("ADDRESS") %>
                                        </td>
                                        <td>
                                            <%= record.get("PHONE") %>
                                        </td>
                                        <td>
                                            <%= record.get("REGISTRATIONDATE") %>
                                        </td>
                                        <td>
                                            <%= record.get("EMAIL") %>
                                        </td>
                                        <td>
                                            <%= record.get("HISTORY_ID") %>
                                        </td>
                                        <td>
                                            <button class="btn btn-none" formaction='/members/deleteAndmemberauths/<%= record.get("UNIQUE_ID") %>' formmethod="post"> Del</button>
                                        </td>
                                        <td>
                                            <button class="btn btn-none" formaction='/members/deleteAndmemberList/<%= record.get("UNIQUE_ID") %>' formmethod="post">Del</button>
                                        </td>
                                    </tr>
                                    <% } %>
                                        <!-- Empty -->
                            </tbody>
                        </table>
                        <nav aria-label="Page navigation">
                            <ul class="pagination justify-content-center">
                                <li class="page-item"><a class="page-link" href='/members/memberList?currentPage=<%= paginations.getPreviousPage() %>'>Previous</a></li>
                                <% for (int i=paginations.getBlockStart(); i <=paginations.getBlockEnd() ; i=i+1){ %>
                                <li class="page-item"><a class="page-link" href='/members/memberList?currentPage=<%= i %>'><%= i %></a></li>
                                <% } %>
                                <li class="page-item"><a class="page-link" href='/members/memberList?currentPage=<%= paginations.getNextPage() %>'>Next</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        </form>

        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>
</body>
        <script src="/JS/commonWithJs.js"></script>
</html>
