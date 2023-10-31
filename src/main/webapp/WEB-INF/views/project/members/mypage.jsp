<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap, java.util.ArrayList, com.project.project_nutrients.utils.Paginations" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <link href="/css/main.css" rel="stylesheet" />
    <title>mypage form</title>
</head>

<body>
    <!-- header -->
    <%@ include file="/WEB-INF/views/project/header.jsp" %>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header text-center" style="font-size: 1.5em;">회원정보</div>
            <div class="card-body">
                <form action="#" method="post">
                    <% HashMap params=(HashMap)request.getAttribute("params"); String searchStr=(String)params.getOrDefault("search", ""
                    ); HashMap result=(HashMap)request.getAttribute("result"); %>
                    <div class="mb-3">
                        <input class="form-control" type="hidden" id="UNIQUEID" name="UNIQUE_ID">
                    </div>
                    <div class="form-group">
                        <label for="name">이름</label>
                        <div class="mb-3 border rounded p-2">
                            <div><%= result.get("NAME") %></div>
                    </div>
                </div>
                    <div class="form-group">
                        <label for="id">아이디</label>
                        <div class="mb-3 border rounded p-2">
                            <div><%= result.get("ID") %></div>
                    </div>
                </div>
                    <div class="form-group">
                        <label for="phone">핸드폰 번호</label>
                        <div class="mb-3 border rounded p-2">
                            <div><%= result.get("PHONE") %></div>
                    </div>
                </div>
                    <div class="form-group">
                        <label for="dob">생년월일</label>
                        <div class="mb-3 border rounded p-2">
                            <div><%= result.get("BIRTHDATE") %></div>
                    </div>
                </div>
                    <div class="form-group">
                        <label for="address">주소</label>
                        <div class="mb-3 border rounded p-2">
                            <div><%= result.get("ADDRESS") %></div>
                    </div>
                </div>
                    <div class="form-group">
                        <label for="medicalHistory">질병/알레르기</label>
                        <div class="mb-3 border rounded p-2">
                            <div><%= result.get("DISEASE") %></div>
                    </div>
                    <div class="form-group">
                        <label for="email">E-mail:</label>
                        <div class="mb-3 border rounded p-2">
                            <div><%= result.get("EMAIL") %></div>
                    </div>
                </div>
                    <div class="text-center">
                        <button class="btn btn-primary" type="submit" formaction="/">뒤로</button>
                        <button class="btn btn-primary" method="post" formaction='/members/memberUpdateForm'>수정</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <%@ include file="/WEB-INF/views/project/footer.jsp" %>
</body>


</html>