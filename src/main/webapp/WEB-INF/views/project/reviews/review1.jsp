<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
                    
                    <% HashMap params=(HashMap)request.getAttribute("params"); String
                        searchStr=(String)params.getOrDefault("search", "" ); HashMap
                        result=(HashMap)request.getAttribute("result"); %>

                        <div class="mb-3">
                            <input class="form-control" type="hidden" id="REVIEW_ID" name="REVIEW_ID">
                        </div>
                        <div class="container py-4">
                            <h1 class=" text-center mt-2" style="font-weight: bold;">Review</h1>
                            <hr style="border-top: 4px solid;">

                            <div class="row">
                                <div class="mb-3 pt-3 ">
                                    <input class="form-control" type="hidden" id="REVIEW_ID" name="REVIEW_ID">
                                </div>
                                
                                    <div class="card mb-3 pt-3">
                                        <div class="card-body">
                                            <h5 class="card-title mt-2" style="font-weight: bold;">
                                                <%= result.get("TITLE") %>
                                            </h5>
                                        </div>
                                    </div>
                              
                                <div class="card mb-3 pt-3">
                                    <td>
                                    <img src='<%= result.get("IMAGES") %>' id="IMAGES" name="IMAGES" alt='<%= result.get("REVIEW_ID") %>' class="card-img-top"
                                            style="width: 200px;">
                                    </td>

                                      </td>

                                    <div class="card-body">
                                        <td class="card-text pb-2">
                                            <%= result.get("CONTENT") %>
                                        </td>
                                    </div>
                                </div>
                            <div>
                                    <h4 class=" pt-5 mb-3" style="font-weight: bold;">Comment</h4>
                                    <hr style="border-top: 3px solid;">
                                    <!-- 여기에 댓글을 보여주는 부분을 추가하세요 (생략됨) -->
                                    <div class="mb-3">
                                        <p class="mb-0">작성자1: 효과 좋은가요?</p>
                                        <small class="text-muted">작성일: 2023-07-13</small>
                                    </div>
                                    <div class="mb-3">
                                        <p class="mb-0">작성자2: 저도 먹어봤는데 너무 좋았어요^^/</p>
                                        <small class="text-muted">작성일: 2023-07-12</small>
                                    </div>
                                    <div class="mb-3">
                                        <h6 class=" pt-5 mb-3" style="font-weight: bold;">Comment</h6>
                                        <input type="text" class="form-control" id="comment" rows="3"></input>
                                    </div>
                                    <button type="submit" class="btn btn-outline-secondary">댓글 등록</button>
                                    <button type="submit" class="btn btn-outline-secondary"
                                        formaction="/reviews/reviewlist">돌아가기</button>
                                    <!-- 이게 댓글로 어떻게 달리는거지? -->
                                    <!-- Add more comments as needed -->
                                </div>
                            </div>
                        </div>
                        </div>
                </form>

        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>
        </body>
        </html>