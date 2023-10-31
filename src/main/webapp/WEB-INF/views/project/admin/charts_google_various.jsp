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
                        <!-- Bar Chart -->
                        <div class="col" id="barChart"></div>
            
                    </div>
                    <div class="row">
                        <!-- Pie Chart and Line Chart -->
                        <div class="col-sm-6" id="pieChart"></div>
                        <div class="col-sm-6" id="lineChart"></div>
                    </div>
            
                    <!-- Google Maps Container -->
                    <div class="row">
                        <div class="col" id="map"></div>
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
            let dataArray = <%= dataArrayJSON %>; 
    
            // 데이터를 Google Charts DataTable으로 변환
            let data = new google.visualization.DataTable();
            // DataTable에 열(column) 추가
            data.addColumn('string', 'STAR');
            data.addColumn('number', 'CNT');

            // 데이터 추가
            // dataArray.forEach(function(item) {
            //     data.addRow([item.STAR, item.CNT]);
            // });
            // 데이터 추가
            dataArray.forEach(function(item) {
                data.addRow([item.STAR, parseInt(item.CNT)]);
            });

            // Options for Bar Chart
            let barOptions = {
                title: 'Bar Chart',
                orientation: 'vertical'
            };
            // 차트를 그리기
            let chart = new google.visualization.BarChart(document.getElementById('barChart'));
            chart.draw(data, barOptions);

            // Data for Pie Chart
            let pieData = google.visualization.arrayToDataTable([
                ['Fruit', 'Quantity'],
                ['Apple', 30],
                ['Banana', 20],
                ['Orange', 50]
            ]);

            // Options for Pie Chart
            let pieOptions = {
                title: 'Pie Chart'
            };

            // Data for Line Chart
            let lineData = new google.visualization.DataTable();
            lineData.addColumn('number', 'X');
            lineData.addColumn('number', 'Line1');
            lineData.addColumn('number', 'Line2');

            lineData.addRows([
                [1, 5, 7],
                [2, 9, 3],
                [3, 2, 6]
            ]);

            let lineOptions = {
                title: 'Line Chart',
                curveType: 'function',
                legend: { position: 'bottom' }
            };

            let barChart = new google.visualization.BarChart(document.querySelector('#barChart'));
            barChart.draw(barData, barOptions);

            let pieChart = new google.visualization.PieChart(document.querySelector('#pieChart'));
            pieChart.draw(pieData, pieOptions);

            let lineChart = new google.visualization.LineChart(document.querySelector('#lineChart'));
            lineChart.draw(lineData, lineOptions);
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