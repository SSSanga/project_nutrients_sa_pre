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

    <div class="container">
        <div class="container py-4">
            <h1 class="text-center" style="font-weight: bold;">Contacts writing</h1>
            <hr style="border-top: 4px solid;">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <form>
                        <div class="mb-3">
                            <input class="form-control" id="content" rows="5" name="INQUIRY_ID" type="hidden">
                        </div>
                        <div class="mb-3">
                            <label for="content" class="form-label">내용</label>
                            <input class="form-control" id="content" rows="5" style="height: 300px;" name="CONTENT">
                        </div>
                        <div class="mb-3">
                            <label for="content" class="form-label">회원 아이디</label>
                            <div class="form-control" id="content" rows="5" name="UNIQUE_ID" value="${userDetailsBean.username}">
                                ${userDetailsBean.memberID}  </div>
                            </div>
                        
                        <button type="submit"  class="btn btn-outline-secondary" formaction="/contacts/contactsinsertAndSelect">저장하기</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <%@ include file="/WEB-INF/views/project/footer.jsp" %>
</body>
</html>