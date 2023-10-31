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
    
     <main class="container">
        <% HashMap params=(HashMap)request.getAttribute("params"); String
        searchStr=(String)params.getOrDefault("search", "" );
         HashMap
        result=(HashMap)request.getAttribute("result"); %>
                                
        <table class="table mt-3" >
            <div class="mb-3">
                <input class="form-control" type="hidden" id="INQUIRY_ID" name="INQUIRY_ID">
            </div>
            <div class="container py-4">
                <h1 class="text-center" style="font-weight: bold;">Contacts</h1>
                <hr style="border-top: 4px solid;">
           

            <tbody>   
                 
                <div class="card mb-2 pt-2" >
                    <input class="form-control" type="hidden" id="REVIEW_ID" name="REVIEW_ID">
                    <div class="card-body">
                       
                        <h5 class="card-title mt-2" style="font-weight: bold;">등록일</h5>
                        <hr>
                        <span class="card-text pb-2"><%= result.get("WRITING_DATE") %></span>
                    </div>
                </div>

                <div class="card mb-2 pt-2">
                  <div class="card-body">
                        <h5 class="card-title mt-2" style="font-weight: bold;">문의내용</h5>
                        <hr>
                        <span class="card-text pb-2"><%= result.get("CONTENT") %></span>
                   </div>
                </div>

                <div class="card mb-2 pt-2">
                   <div class="card-body">
                        <h5 class="card-title mt-2" style="font-weight: bold;">관리자 댓글</h5>
                        <hr>
                       <span class="card-text pb-2"><%= result.get("RESPONSE") %></span>
                       <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <hr>
                        <h7 class="card-title mt-2" style="font-weight: bold;">관리자 댓글 작성
                        <input type="text" class ="me-4" style="width: 400px;">
                        <button type="submit" class="btn btn-outline-secondary ">저장</button>
                    </sec:authorize>
                        </h7>
                   </div>
                </div>

           
                <form> <button type="submit" class="btn btn-outline-secondary"
                formaction="/contacts/contactslist">돌아가기</button>
                </form>
            </tbody>
            </div>
        </table>
       
     </main>
    

    <!-- Footer -->
   <%@ include file="/WEB-INF/views/project/footer.jsp" %>
</body>
</html>
