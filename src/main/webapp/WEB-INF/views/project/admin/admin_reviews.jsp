<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.util.HashMap, java.util.ArrayList, com.project.project_nutrients.utils.Paginations" %>


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
                    <div class="container">
                        <div class="container py-4">
                            <h1 class="text-center" style="font-weight: bold;">Reviews</h1>
                            <hr style="border-top: 4px solid;">
    
                                <div class="row">
                                <% HashMap params=(HashMap)request.getAttribute("params"); String
                                searchStr=(String)params.getOrDefault("search", "" ); HashMap
                                result=(HashMap)request.getAttribute("result"); %>
                                <% ArrayList resultList=(ArrayList)result.get("resultList"); for(int i=0; i <
                                    resultList.size(); i=i+1){ HashMap record=(HashMap)resultList.get(i); %>
                                        <button formaction='/reviews/reviewselectDetail/<%= record.get("REVIEW_ID") %>'
                                            class="col-md-6 mx-auto btn btn-none">
                                            <div class="card mb-4">
                                                <div class="card-body">
                                                    <h5 class="card-title" style="font-weight: bold;">
                                                        <%= record.get("TITLE") %>
                                                    </h5>
                                                    <hr>
                                                    <p class="card-text">
                                                        <%= record.get("CONTENT") %>
                                                    </p>
                                                    <small class="text-muted">
                                                        <%= record.get("WRITING_DATE") %>
                                                    </small>
                                                </div>
                                            </div>

                                        </button>
                                        <% } %>
                                            <div class="p-3 justify-content-end">
                                                <button type="submit" class="btn btn-primary"
                                                    formaction="/reviews/reviewdeleteAndSelectSearch/{REVIEW_ID}">삭제</button>
                                            </div>

                                    </div>

                </form>

                <!-- <script src="../js/carinforwithfunction.js"></script> -->
                <!-- <script src="../js/carinforwithrest.js"></script> -->
        </body>
        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>

        </html>