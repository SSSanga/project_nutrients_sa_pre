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
        <link rel="stylesheet" href="/css/wholelist.css">
      </head>

      <body>
        <!-- header -->
        <%@ include file="/WEB-INF/views/project/header.jsp" %>
        <% HashMap params=(HashMap)request.getAttribute("params");
        String searchStr=(String)params.getOrDefault("search", "" );
        HashMap result=(HashMap)request.getAttribute("result"); %>
          <div class="container p-3">
            <form>
              <!-- Search bar 여긴 검색 -->
              <div class="container m-2" style="font-weight: bold;">
                <div class="d-flex m-3 align-items-center">

                  <select class="form-select mx-2" name="search"
                    style="font-size: 20px; width: 180px; height: 50px; font-weight: bold;">
                    <option>카테고리 선택</option>
                    <option value="MANUFACTURE" <%=(searchStr.equals("MANUFACTURE")) ? "selected" : "" %>>제조사</option>
                    <option value="PRODUCT" <%=(searchStr.equals("PRODUCT")) ? "selected" : "" %>>제품명</option>
                    <option value="EFFECT" <%=(searchStr.equals("EFFECT")) ? "selected" : "" %>>효과</option>
                  </select>

                  <input class="form-control me-2 mt-auto mb-auto" style="font-size: 20px; width: 150px; height: 50px; "
                    name="words" type="text" placeholder="Search..." aria-label="Search" id="keydownEnter" value='<%= params.getOrDefault("words", "") %>'>
                  <button class="btn btn-light btn-outline-secondary mt-auto mb-auto" type="submit"
                    formaction="/supp/wholelist" id="keydownEnter"
                    style="font-size: 20px; width: 100px; height: 50px;" formmethod="get">검색</button>
                </div>

                  <% Paginations paginations=(Paginations)result.get("paginations"); %>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                      <div class="card m-3 p-3 justify-content-center">
                        <div>총 레코드 수 :
                          <%= paginations.getTotalCount() %>
                        </div>
                      </div>
                    </sec:authorize>
                    <div class="container content-center p-5">
                      <table class="table table-hover p-2">
                        <thead class="table-primary">
                          <tr class="h5 align-middle">
                            <th></th>
                            <th style="font-weight: bold;">제품명</th>
                            <th style="font-weight: bold;">대표 효과</th>
                            
                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                              <th>삭제</th>
                            </sec:authorize>
                          </tr>
                        </thead>
                        <tbody class="">
                         <% ArrayList resultList=(ArrayList)result.get("resultList");
                            ArrayList totalList=(ArrayList)result.get("totalList");
                            for(int i=0; i < resultList.size(); i=i+1)
                            {
                              HashMap product=(HashMap)totalList.get(i);
                              ArrayList producteffect=(ArrayList)product.get("producteffect");
                              HashMap record=(HashMap)resultList.get(i); %>
                            <tr>

                              <td class="align-middle">
                                <img src='<%= record.get("LOCATION") %>' class="img-fluid rounded" width="200">
                              </td>
                              <td class="align-middle">
                                <button class="listProduct" type="submit" formaction='/supp/selectspec/<%= record.get("SUPP_ID") %>' value='<%= record.get("SUPP_ID") %>' name='SUPP_ID' id="suppdetail" type="hidden" formmethod="post"><%= record.get("PRODUCT") %></button>
                              </td>
                              <td class="align-middle">
                                <% for(int j=0; j < producteffect.size(); j++){
                                  HashMap effectrecord=(HashMap)producteffect.get(j); %>
                                  <div><%= effectrecord.get("EFFECT") %></div>
                                  <% } %>
                              </td>
                              
                              <sec:authorize access="hasRole('ROLE_ADMIN')">
                                <td class="align-middle"><button class="btn btn-outline-danger mt-auto mb-auto" type="submit"
                                    formaction='/supp/deleteandlist/<%= record.get("SUPP_ID") %>'
                                    value='<%= record.get("SUPP_ID") %>' name='SUPP_ID'
                                    style="font-weight: bold;"type="hidden" formmethod="post">삭제</button></td>
                              </sec:authorize>
                            </tr>
                            <% } %>
                        </tbody>
                      </table>
                    </div>
              </div>

              
                <div class="m-3">
                  <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <button class="d-block mx-auto btn btn-success align-middle p-2" type="subtmit"
                      formaction="/supp/listadd">추가</button>
                  </sec:authorize>
                  <!-- pagination을 loop로 뽑아내기 -->
                </div>
                <div class="m-3">
                  <nav aria-label="Page navigation">
                    <ul class="justify-content-center pagination align-middle p-2">
                      <li class="page-item"><button class="page-link" formaction="/supp/wholelist/<%= paginations.getFirstPage() %>">First</button></li>
                      <li class="page-item"><button class="page-link" formaction="/supp/wholelist/<%= paginations.getPreviousPage() %>">Previous</button></li>
                          <%
                          for(int i=paginations.getBlockStart();i <= paginations.getBlockEnd(); i=i+1)
                            {
                          %>
                          <li class="page-item">
                              <button class="page-link" formaction="/supp/wholelist/<%= i %>"><%= i %></button>
                          </li>
                          <%
                            }
                          %>
                          <li class="page-item"><button class="page-link" formaction="/supp/wholelist/<%= paginations.getNextPage() %>">Next</button></li>
                          <li class="page-item"><button class="page-link" formaction="/supp/wholelist/<%= paginations.getLastPage() %>">Last</button></li>
                    </ul>
                  </nav>
                </div>
            </form>
          </div>
          <!-- Footer -->
          <%@ include file="/WEB-INF/views/project/footer.jsp" %>
      </body>
      </html>