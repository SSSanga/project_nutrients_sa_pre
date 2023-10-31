<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="java.util.HashMap, java.util.ArrayList, com.project.project_nutrients.utils.Paginations" %>

  <!DOCTYPE html>
  <html lang="en">
  
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nutrient Recommendations Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <link href="./../css/main.css" rel="stylesheet" />
  </head>
  
      <body>
        <!-- header -->
        <%@ include file="/WEB-INF/views/project/header.jsp" %>
        <!-- Screen adjust functions -->
        <script>
          var zoom = 1;
  
          function increaseSize() {
            zoom += 0.1;
            document.getElementById('zoom-display').innerText = Math.round(zoom * 100) + '%';
            document.body.style.zoom = zoom;
          }
  
          function decreaseSize() {
            zoom -= 0.1;
            document.getElementById('zoom-display').innerText = Math.round(zoom * 100) + '%';
            document.body.style.zoom = zoom;
          }
        </script>

      
        <div class="container p-3">
          <form>
            <table class="table table-striped table-sm">
              <thead>
                <tr>
                  <th></th>
                  <th>제품명</th>
                  <th>대표 효과</th>
                  <th>상세</th>
                  <th>삭제</th>
                </tr>
              </thead>
              <tbody class="mt-auto mb-auto">
                <% HashMap params=(HashMap)request.getAttribute("params"); String searchStr=(String)params.getOrDefault("search", ""
                ); HashMap result=(HashMap)request.getAttribute("result"); %>
                  <% ArrayList resultList=(ArrayList)result.get("resultList"); for(int i=0; i < resultList.size();
                    i=i+1) { HashMap record=(HashMap)resultList.get(i); %>
                    <tr>
                      <td><img src="<%= record.get("LOCATION") %>" alt="<%= record.get("PRODUCT") %>"
                          class="square-image" width="100px" height="100%" ></td>
                      <td>
                        <%= record.get("PRODUCT") %>
                      </td>
                      <td>
                        <%= record.get("EFFECT") %>
                      </td>
                      <td><button class="btn btn-success mt-auto mb-auto" type="submit" formaction='/supp/selectspec/<%= record.get("SUPP_ID") %>' value='<%= record.get("SUPP_ID") %>' name='SUPP_ID'>상세</button></td>
                      <td><button class="btn btn-success mt-auto mb-auto" type="submit" formaction='/supp/deleteandlist/<%= record.get("SUPP_ID") %>'value='<%= record.get("SUPP_ID") %>' name='SUPP_ID'>삭제</button></td>

                    </tr>
                    <% } %>
              </tbody>
            </table>

            <div class="container-fluid">
              <div class="row justify-content-start align-items-center">
                <div class="col-3">
                  <button class="btn btn-success mt-auto mb-auto" type="subtmit" formaction="/supp/listadd">추가</button>
                </div>
              </div>
            </div>
            <!-- pagination을 loop로 뽑아내기 -->

            <% Paginations paginations=(Paginations)result.get("paginations"); %>
              <div> 총 레코드 수 : <%= paginations.getTotalCount() %>
              </div>
              <nav aria-label="Page navigation">
                <ul class="pagination">
                  <li class="page-item"><a class="page-link" href='/supp/adminwholelist?currentPage=<%= paginations.getPreviousPage() %>'>Previous</a></li>
                  <% for (int i=paginations.getBlockStart(); i <= paginations.getBlockEnd() ; i=i+1){ %>
                    <li class="page-item"><a class="page-link" href='/supp/adminwholelist?currentPage=<%= i %>'>
                        <%= i %>
                      </a></li>
                      <% } %>
                      <li class="page-item"><a class="page-link"
                          href='/supp/adminwholelist?currentPage=<%= paginations.getNextPage() %>'>Next</a>
                      </li>
                      
                </ul>
              </nav>

              
          </form>

        </div>

        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>


      </body>

    </html>