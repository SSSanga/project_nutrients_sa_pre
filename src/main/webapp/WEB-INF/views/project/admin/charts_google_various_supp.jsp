<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="java.util.HashMap, java.util.ArrayList, com.project.project_nutrients.utils.Paginations" %>
  <%@ page import="com.google.gson.Gson" %>
  <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Google Charts API -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <style>
        #map {
          height: 400px;
          width: 100%;
        }
      </style>
</head>
    
    <!-- Screen adjust functions -->
    
        
        
        <%
        String dataArrayJSON = (String) request.getAttribute("dataArray");
        %>
        

 <body>
                <!-- header -->
                <%@ include file="/WEB-INF/views/project/header.jsp" %>
                <!-- Screen adjust functions -->
                <div class="container mt-4">
                    <div class="row">
                        <!-- Pie Chart and Line Chart -->
                        <div class="col-sm-6" id="pieChart"></div>
                        
                    </div>
            
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
            // 데이터 배열을 JSON으로 파싱
            let dataArray = JSON.parse('<%= dataArrayJSON %>');

            // Data for Pie Chart
            let pieData = new google.visualization.DataTable();

            // 열 추가
            pieData.addColumn('string', 'Fruit');
            pieData.addColumn('number', 'Quantity');

            // 데이터 배열 반복 및 행 추가
            dataArray.forEach(function(item) {
                pieData.addRow([item.SHORT_PRODUCT, parseInt(item.COUNT_RESULT)]);
            });

            // Options for Pie Chart
            let pieOptions = {
                title: 'Pie Chart'
            };

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