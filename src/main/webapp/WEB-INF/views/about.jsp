<%@ page import="java.util.HashMap, java.util.ArrayList" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Nutrient Recommendations Home</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    </head>

    <body>

      <!-- header -->
      <%@ include file="/WEB-INF/views/project/header.jsp" %>
        <!-- Screen adjust functions -->
        <div class="container d-flex align-items-center justify-content-center">
          <img src="../images/drug_img.png" alt="" width="400" height="400">
        </div>

        <div class="container p-3 d-flex align-items-center justify-content-center p-2">
          <div class="row">
          <div class="col-md-6 col-lg-4">
            <div class="card p-3" style="height: 520px;">
                <div class=" card-title text-center"  style=" max-width: 100%; max-height: 100%;">
                <img src='/images/about_1.png' alt='' width="300" height="300" style="width: 100%; height: 100%; object-fit: contain;">
              </div>
              
              <div class="card-header text-center">
                <i class="fas fa-star fa-4x mb-3" style="color: #fff;"></i>
                <h2 class="card-title"
                  style="font-size: 1.25rem; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">We care
                  about your health</h2>
              </div>

              <div class="card-body text-center p-4" style="font-family: 'Roboto', sans-serif; font-size: 16px; padding: 10px;">
                <p class="card-text" style="color: #555;">건강한 삶 TAB과 함께하세요!</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="card p-3" style="height: 520px;">
              <div class=" card-title text-center" style=" max-width: 100%; max-height: 100%;">
                <img src='/images/about_2.png' alt='' width="300" height="300" style="width: 100%; height: 100%; object-fit: contain;">
              </div>
              <div class="card-header text-center">
                <i class="fas fa-heart fa-4x mb-3" style="color: #fff;"></i>
                <h2 class="card-title"
                  style="font-size: 1.25rem; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">Love your
                  body</h2>
              </div>
              <div class="card-body text-center pb-2 mb-2"  style="font-family: 'Roboto', sans-serif; font-size: 16px; padding: 10px;">
                <p class="card-text" style="color: #555;"> TAB이 추천하는 영양제는 식품의약품안전처의 인증받은 제품만을 추천하고 있습니다.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="card p-3" style="height: 520px;">
              <div class=" card-title text-center" style=" max-width: 100%; max-height: 100%;">
                <img src='/images/about_3.png' alt='' width="300" height="300" style="width: 100%; height: 100%; object-fit: contain;">
              </div>
              <div class="card-header text-center ">
                <i class="far fa-lightbulb fa-4x mb-3" style="color: #fff;"></i>
                <h2 class="card-title"
                  style="font-size: 1.25rem; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">Innovative
                  products</h2>
              </div>
              <div class="card-body text-center p-2" style="font-family: 'Roboto', sans-serif; font-size: 16px; padding: 10px;">
                <p class="card-text" style="color: #555;"> TAB 사용자들의 편의성을 위해 직관적인 인터페이스와 쉬운 사용법을 제공합니다.</p>
              </div>
            </div>
          </div>
        </div>
        </div> <!-- row -->
        </div>



        <!-- Footer -->
        <div class="my-5"></div>

        <hr>

        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>

    </body>

    </html>