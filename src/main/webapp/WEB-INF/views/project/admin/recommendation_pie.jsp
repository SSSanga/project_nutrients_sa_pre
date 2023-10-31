<%@ page import="java.util.HashMap, java.util.ArrayList, com.project.project_nutrients.utils.Paginations" %>
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

        <form>
          <div class="container">
            <div class=" container content-center p-5">
              <div class="h2">추천 리스트</div>

              <div>
                <!-- Pie Chart -->
                <div id="pieChart"></div>
            </div>
              <table class="table table-hover p-2">
                <thead class="table-primary">
                  <tr class="h5 align-middle">
                    <th></th>
                    <th class="text-center" style="font-weight: bold;">이름</th>
                    <th style="font-weight: bold;">링크</th>
                  </tr>
                </thead>
                <% HashMap params=(HashMap)request.getAttribute("params"); HashMap
                  result=(HashMap)request.getAttribute("result"); %>
                  <% Paginations paginations=(Paginations)result.get("paginations"); %>
                    <% ArrayList resultList=(ArrayList)result.get("resultList"); for(int i=0; i < resultList.size();
                      i=i+1){ HashMap record=(HashMap)resultList.get(i); %>

                      <tbdoy>
                        <tr>
                          <td class="align-middle"><img src='<%= record.get("LOCATION") %>' alt="" class="square-image"
                              width="100px" height="100%"></td>
                          <td class="align-middle">
                            <%= record.get("PRODUCT") %>
                          </td>
                          <td class="align-middle"><a href='<%= record.get("LINK") %>'>추천 사이트</a></td>
                        </tr>
                        <% } %>
                      </tbdoy>
              </table>

            </div>
            <div class="m-3">
              <nav aria-label="Page navigation">
                <ul class="justify-content-center pagination align-middle p-2">
                  <li class="page-item"><button class="page-link"
                      formaction="/recomm/effectflag/<%= paginations.getFirstPage() %>">First</button></li>
                  <li class="page-item"><button class="page-link"
                      formaction="/recomm/effectflag/<%= paginations.getPreviousPage() %>">Previous</button></li>
                  <% for(int i=paginations.getBlockStart();i <=paginations.getBlockEnd(); i=i+1) { %>
                    <li class="page-item">
                      <button class="page-link" formaction="/recomm/effectflag/<%= i %>">
                        <%= i %>
                      </button>
                    </li>
                    <% } %>
                      <li class="page-item"><button class="page-link"
                          formaction="/recomm/effectflag/<%= paginations.getNextPage() %>">Next</button></li>
                      <li class="page-item"><button class="page-link"
                          formaction="/recomm/effectflag/<%= paginations.getLastPage() %>">Last</button></li>
                </ul>
              </nav>
            </div>
          </div>
        </form>
        <div class="m-3">
          <nav aria-label="Page navigation">
            <ul class="justify-content-center pagination align-middle p-2">
              <li class="page-item"><button class="page-link"
                  formaction="/recomm/effectflag/<%= paginations.getFirstPage() %>">First</button></li>
              <li class="page-item"><button class="page-link"
                  formaction="/recomm/effectflag/<%= paginations.getPreviousPage() %>">Previous</button></li>
              <% for(int i=paginations.getBlockStart();i <=paginations.getBlockEnd(); i=i+1) { %>
                <li class="page-item">
                  <button class="page-link" formaction="/recomm/effectflag/<%= i %>">
                    <%= i %>
                  </button>
                </li>
                <% } %>
                  <li class="page-item"><button class="page-link"
                      formaction="/recomm/effectflag/<%= paginations.getNextPage() %>">Next</button></li>
                  <li class="page-item"><button class="page-link"
                      formaction="/recomm/effectflag/<%= paginations.getLastPage() %>">Last</button></li>
            </ul>
          </nav>
        </div>
        <!-- JavaScript Code -->
        <script type='text/javascript'>
          // Load the Visualization API and the corechart package
          google.charts.load('current', { 'packages': ['corechart'] });

          // Set a callback to run when the Google Visualization API is loaded
          google.charts.setOnLoadCallback(drawCharts);

          // Function to draw the charts
          function drawCharts() {
            // Data for Bar Chart
            // JavaScript 변수에 데이터 할당
            let dataArray = <%= dataArrayJSON %>;

            // 데이터를 Google Charts DataTable으로 변환
            // number로 데이터타입을 지정하는 경우 .addRow에 parseInt(가져올item)이렇게 해줘야하는듯
            let data = new google.visualization.DataTable();


            // Data for Pie Chart
            let pieData = google.visualization.arrayToDataTable()

            pieData.addColumn('string', 'SHORT_PRODUCT');
            pieData.addColumn('number', 'COUNT_RESULT');

            dataArray.forEach(function (item) {
              pieData.addRow([item.SHORT_PRODUCT, parseInt(item.COUNT_RESULT)]);
            });
            // Options for Pie Chart
            let pieOptions = {
              title: 'Pie Chart'
            };

            let pieChart = new google.visualization.PieChart(document.querySelector('#pieChart'));
            pieChart.draw(pieData, pieOptions);
          }

        </script>

        <!-- Bootstrap Bundle with Popper.js and Bootstrap JS -->
        <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js'></script>
        <!-- Google Maps API Script -->
        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap" async defer></script>


        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>

    </body>

    </html>