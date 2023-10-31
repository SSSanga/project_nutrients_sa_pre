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

                    <form>
                        <div class="container text-center ">
                            <h1 class="mb-0">자주하는 질문</h1>
                        </div>

                        <main class="container p-3">
                            <div class="d-flex align-items-center mx-2">
                                <select class="form-select mx-2" name="searchType" style="font-size: 15px; width: 100px; height: 40px; font-weight: bold;">
                                    <option value="CONTENT">내용</option>
                                </select>
                                <input type="search" name="words" value="" class="form-control me-2 mt-auto mb-auto" placeholder="Search..." 
                                style="font-size: 15px; height: 40px; font-weight: bold;" aria-label="Search" id="keydownEnter">
                                <button class="btn btn-outline-secondary mt-auto mb-auto font-weight-bold" type="submit" 
                                formaction="/contacts/contactsselectSearch" style="font-size: 15px; width: 100px; height: 40px; font-weight: bold;">검색</button>
                            </div>
                            <% HashMap params=(HashMap)request.getAttribute("params"); String
                                        searchStr=(String)params.getOrDefault("search", "" ); HashMap
                                        result=(HashMap)request.getAttribute("result"); %>
                                    
                                    <% Paginations paginations=(Paginations)result.get("paginations"); %>
                                               <sec:authorize access="hasRole('ROLE_ADMIN')">
                                                <div class="card m-3 p-3 justify-content-center" style="font-weight: bold">
                                                    <div>총 문의 수 :
                                                      <%= paginations.getTotalCount() %>
                                                    </div>
                                                  </div>
                                                </sec:authorize>
                            <div class="d-flex justify-content-center align-items-end m-3">
                            
                            <table class="table table-sm">
                                <thead>
                                    <tr>
                                        <th scope="col">번호</th>
                                        <th scope="col">내용</th>
                                        <th scope="col">등록일</th>
                                        <th scope="col">상세</th>
                                        <sec:authorize access="hasRole('ROLE_ADMIN')">  
                                        <th scope="col">삭제</th>
                                        </sec:authorize>
                                    </tr>
                                </thead>

                                <tbody id="postTable">
                                    


                                        <% ArrayList resultList=(ArrayList)result.get("resultList"); for(int i=0; i <
                                            resultList.size(); i=i+1){ HashMap record=(HashMap)resultList.get(i); %>
    
                                            <!-- Here is where the posts will go -->
                                            <tr>
                                                <td class="align-middle">
                                                    <%= record.get("INQUIRY_ID") %>
                                                </td>
                                                <!-- <td><%= record.get("CONTENT") %></td> -->
                                                <td class="align-middle">
                                                    <%= record.get("CONTENT") %>
                                                </td>
                                                <td class="align-middle">
                                                    <%= record.get("WRITING_DATE") %>
                                                </td>
                                                <td><button class="btn btn-outline-secondary mt-auto mb-auto"
                                                        formaction='/contacts/contactsselectDetail/<%= record.get("INQUIRY_ID") %>'
                                                        value='<%= record.get("INQUIRY_ID") %>' name='INQUIRY_ID'>상세
                                                    </button></td>
                                                <sec:authorize access="hasRole('ROLE_ADMIN')">    
                                                <td><button class="btn btn-outline-secondary mt-auto mb-auto"
                                                        formaction='/contacts/contactsdeleteAndSelectSearch/<%= record.get("INQUIRY_ID") %>'
                                                        value='<%= record.get("INQUIRY_ID") %>' name='INQUIRY_ID'>삭제
                                                    </button></td>
                                                </sec:authorize>
                                            </tr>
                                            <% } %>
                                </tbody>

                            </table>
                        </div>

                            <div class="d-flex justify-content-end align-items-end">
                                <button type="submit" class="btn btn-outline-secondary" formaction="/contacts/contactswrite">문의 작성
                                </button>
                            </div>

                            <div class="d-flex justify-content-center mt-4">

                                <nav aria-label="Page navigation">
                                    <ul class="pagination">
                                        <li class="page-item"><a class="page-link" href="/contacts/contactslist?currentPage=<%= paginations.getPreviousPage() %>"
                                                style="padding: 10px 20px; border: 1px solid #6c757d; color: red; background-color: transparent; text-align: center; text-decoration: none; display: inline-block; font-size: 14px; cursor: pointer; border-radius: 4px; font-weight: bold;">Previous</a></li>
                                        <% for (int i=paginations.getBlockStart(); i
                                            <=paginations.getBlockEnd() ; i=i+1){ %>
                                            <li class="page-item"><a class="page-link"
                                                    href="/contacts/contactslist?currentPage=<%= i %>"
                                                    style="padding: 10px 20px; border: 1px solid #6c757d; color: red;  background-color: transparent; text-align: center; text-decoration: none; display: inline-block; font-size: 14px; cursor: pointer; border-radius: 4px; font-weight: bold;">
                                                    <%= i %>
                                                </a></li>
                                            <% } %>
                                                <li class="page-item"><a class="page-link"
                                                        href="/contacts/contactslist?currentPage=<%= paginations.getNextPage() %>"
                                                        style="padding: 10px 20px; border: 1px solid #6c757d; color: red; background-color: transparent; text-align: center; text-decoration: none; display: inline-block; font-size: 14px; cursor: pointer; border-radius: 4px; font-weight: bold;">Next</a>
                                                </li>

                                    </ul>
                                </nav>
                            </div>
                        </main>
                    </form>
                    <hr>
                    <!-- Footer -->
                    <%@ include file="/WEB-INF/views/project/footer.jsp" %>


            </body>

            </html>