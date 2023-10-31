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
<form>
          <div class="container mt-4 d-flex">
            
              <!-- First card -->

                <div class="card m-2" style="width: 18rem;">
                  <img src="/images/liver.png" class="card-img-top" alt="...">

                  <input type="checkbox" id="card_checkbox_1" style="display: none;">
                  <label for="card_checkbox_1" class="card-link">
                    <div class="card-body">
                      <div class="card-title h4"><button type="submit" class="btn btn-outline" formaction="/recomm/effectflag/EFFECT_01"
                        value="EFFECT_01" name="EFFECT_FLAG">간 기능개선</button></div>
                      
                    </div>
                  </label>
                </div>

        
              <!-- Second card -->

                <div class="card m-2" style="width: 18rem;">
                  <img src="/images/recover.png" class="card-img-top" alt="...">

                  <input type="checkbox" id="card_checkbox_2" style="display: none;">
                  <label for="card_checkbox_2" class="card-link">
                    <div class="card-body">
                      <div class="card-title h4"><button type="submit" class="btn btn-outline" formaction="/recomm/effectflag/EFFECT_05"
                        value="EFFECT_05" name="EFFECT_FLAG">피로회복</button></div>
                      
                    </div>
                  </label>
                </div>


              <!-- Third card -->

                <div class="card m-2" style="width: 18rem;">
                  <img src="/images/eyes.png" class="card-img-top" alt="...">

                  <input type="checkbox" id="card_checkbox_3" style="display: none;">
                  <label for="card_checkbox_3" class="card-link">
                    <div class="card-body">
                      <div class="card-title h4"><button type="submit" class="btn btn-outline" formaction="/recomm/effectflag/EFFECT_09"
                        value="EFFECT_09" name="EFFECT_FLAG">콜레스테롤 개선</button></div>
                      
                    </div>
                  </label>
                </div>

        
              <!-- Fourth card -->

                <div class="card m-2" style="width: 18rem;">
                  <img src="/images/blood.png" class="card-img-top" alt="...">

                  <input type="checkbox" id="card_checkbox_4" style="display: none;">
                  <label for="card_checkbox_4" class="card-link">
                    <div class="card-body">
                      <div class="card-title h4"><button type="submit" class="btn btn-outline" formaction="/recomm/effectflag/EFFECT_13"
                        value="EFFECT_13" name="EFFECT_FLAG">눈 기능 향상</button></div>
                    </div>
                  </label>
                </div>           
          </div>

        </form>

        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>

    </body>

    </html>