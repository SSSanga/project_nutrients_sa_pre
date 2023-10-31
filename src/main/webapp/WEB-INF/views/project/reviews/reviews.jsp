<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ page import="java.util.HashMap, java.util.ArrayList, com.project.project_nutrients.utils.Paginations" %>
            <sec:authentication property="principal" var="userDetailsBean" />
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Nutrient Recommendations Home</title>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
                <link href="/css/main.css" rel="stylesheet" />
            </head>

            <body>
                <!-- header -->
                <%@ include file="/WEB-INF/views/project/header.jsp" %>

                    <form class="d-flex" action="" method="">
                    
                            <div class="container p-3">
                                <div class="h1 text-center" style="font-weight: bold;">Review list</div>
                                <hr style="border-top: 4px solid;">

                                <% HashMap params=(HashMap)request.getAttribute("params"); String
                                    searchStr=(String)params.getOrDefault("search", "" ); HashMap
                                    result=(HashMap)request.getAttribute("result"); %>

                                    <% Paginations paginations=(Paginations)result.get("paginations"); %>
                                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                                      <div class="card m-3 p-3 justify-content-center" style="font-weight: bold">
                                        <div>총 레코드 수 :
                                          <%= paginations.getTotalCount() %>
                                        </div>
                                      </div>
                                    </sec:authorize>


                                        <div class="row">
                                            <% ArrayList resultList=(ArrayList)result.get("resultList"); for(int i=0; i
                                                < resultList.size(); i=i+1){ HashMap record=(HashMap)resultList.get(i);%>
                                                <a href='/reviews/reviewselectDetail/<%= record.get("REVIEW_ID") %>'
                                                    class="col-md-6 mx-auto btn btn-none btn-sm">
                                                    <div class="card mb-4">
                                                        <div class="card-body">
                                                            <div class="row">
                                                                <div class="col">
                                                                    <h5 class="card-title" style="font-weight: bold;">
                                                                        <%= record.get("TITLE") %>
                                                                    </h5>
                                                                </div>
                                                                
                                                                <div class="p-3">
                                                                    <div>
                                                                        <p class="card-text">
                                                                            <%= record.get("CONTENT") %>
                                                                        </p>
                                                                    </div>
                                                                    <div><small class="text-muted">
                                                                            <%= record.get("WRITING_DATE") %>
                                                                        </small></div>
                                                                    
                                                                   <sec:authorize access="hasRole('ROLE_ADMIN')">
                                                                    <div class="col-12">
                                                                        <button
                                                                            class="btn btn-outline-secondary"
                                                                            formaction='/reviews/reviewdeleteAndSelectSearch/<%= record.get("REVIEW_ID") %>'>삭제</button>
                                                                    </div>
                                                                  </sec:authorize>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </a>
                                                <% } %>
                                                    <sec:authorize
                                                        access="hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')">
                                                        <div class="d-flex justify-content-end align-items-end">
                                                            <button type="submit" class="btn btn-outline-secondary"
                                                                formaction="/reviews/reviewwrite">후기 작성</button>
                                                        </div>
                                                    </sec:authorize>

                                        </div>
                                        <div class="d-flex justify-content-center mt-4">

                                            <nav aria-label="Page navigation">
                                                <ul class="pagination">
                                                    <li class="page-item"><a class="page-link" href="/reviews/reviewlist?currentPage=<%= paginations.getPreviousPage() %>"
                                                            style="padding: 10px 20px; border: 1px solid #6c757d; color: red; background-color: transparent; text-align: center; text-decoration: none; display: inline-block; font-size: 14px; cursor: pointer; border-radius: 4px; font-weight: bold;">Previous</a></li>
                                                    <% for (int i=paginations.getBlockStart(); i
                                                        <=paginations.getBlockEnd() ; i=i+1){ %>
                                                        <li class="page-item"><a class="page-link"
                                                                href="/reviews/reviewlist?currentPage=<%= i %>"
                                                                style="padding: 10px 20px; border: 1px solid #6c757d; color: red;  background-color: transparent; text-align: center; text-decoration: none; display: inline-block; font-size: 14px; cursor: pointer; border-radius: 4px; font-weight: bold;">
                                                                <%= i %>
                                                            </a></li>
                                                        <% } %>
                                                            <li class="page-item"><a class="page-link"
                                                                    href="/reviews/reviewlist?currentPage=<%= paginations.getNextPage() %>"
                                                                    style="padding: 10px 20px; border: 1px solid #6c757d; color: red; background-color: transparent; text-align: center; text-decoration: none; display: inline-block; font-size: 14px; cursor: pointer; border-radius: 4px; font-weight: bold;">Next</a>
                                                            </li>

                                                </ul>
                                            </nav>
                                        </div>
                            </div>
                        
                    </form>
                    <!-- Footer -->
                    <%@ include file="/WEB-INF/views/project/footer.jsp" %>



            </body>

            </html>