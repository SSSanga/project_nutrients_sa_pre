<%@ page import="java.util.HashMap, java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.css">
    <title>Update Form</title>
</head>

<body>
    <% HashMap params=(HashMap)request.getAttribute("params"); String searchStr=(String)params.getOrDefault("search", ""
    ); HashMap result=(HashMap)request.getAttribute("result"); %>
    <div class="container">
        <div class="text-center mt-4 mb-4 h1">회원정보 수정</div>
    </div>
    <div class="container">
        <form id="updateForm" action="/members/updateForm" method="post">
            <div class="mb-3">
                <label class="form-label" for="name">NAME</label>
                <input class="form-control" type="text" id="name" name="NAME" placeholder='<%= result.get("NAME") %>'>
            </div>
            <div class="mb-3">
                <label class="form-label" for="ID">ID</label>
                <input class="form-control" type="text" id="ID" name="ID" placeholder='<%= result.get("ID") %>'>
            </div>
            <div class="mb-3">
                <label class="form-label" for="PASSWORD">PASSWORD</label>
                <input class="form-control" type="text" id="PASSWORD" name="PASSWORD" placeholder='<%= result.get("PASSWORD") %>'>
            </div>
            <div class="mb-3">
                <label class="form-label" for="BIRTHDATE">BIRTHDATE</label>
                <input class="form-control" type="text" id="BIRTHDATE" name="BIRTHDATE" placeholder='<%= result.get("BIRTHDATE") %>'>
            </div>
            <div class="mb-3">
                <label class="form-label" for="SEX">SEX</label>
                <div class="radio-field mb-4 border rounded p-2">
                    <input id="gender_man" type="radio" name="SEX", value="남성">
                    <label for="gender_man h1">남성</label>
                    <input id="gender_woman" type="radio" name="SEX", value="여성">
                    <label for="gender_woman h1">여성</label>
                </div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="ADDRESS">ADDRESS</label>
                <input class="form-control" type="text" id="ADDRESS" name="ADDRESS" placeholder='<%= result.get("ADDRESS") %>'>
            </div>
            <div class="mb-3">
                <label class="form-label" for="PHONE">PHONE</label>
                <input class="form-control" type="text" id="PHONE" name="PHONE" placeholder='<%= result.get("PHONE") %>'>
            </div>
            <div class="mb-3">
                <label class="form-label" for="EMAIL">EMAIL</label>
                <input class="form-control" type="text" id="EMAIL" name="EMAIL" placeholder='<%= result.get("EMAIL") %>'>
            </div>
            <div class="mb-3">
                <label class="form-label" for="HISTORY_ID">질병 또는 알레르기</label>
                <div class="radio-field mb-4  border rounded p-2">
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_01">
                    <label for="gender_woman h1 " class="me-4">고혈압</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_02">
                    <label for="gender_woman h1" class="me-4">심장병</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_03">
                    <label for="gender_woman h1" class="me-4">당뇨</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_04">
                    <label for="gender_woman h1" class="me-4">계란알레르기</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_05">
                    <label for="gender_woman h1" class="me-4">해산물알레르기</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_06">
                    <label for="gender_woman h1" class="me-4">갑각류알레르기</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_07">
                    <label for="gender_woman h1" class="me-4">견과류알레르기</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_08">
                    <label for="gender_woman h1" class="me-4">천식</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_09">
                    <label for="gender_woman h1" class="me-4">신장질환</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_10">
                    <label for="gender_woman h1" class="me-4">간질환</label>
                    <div class="mt-3">
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_11">
                    <label for="gender_woman h1" class="me-4">혈관질환</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_12">
                    <label for="gender_woman h1" class="me-4">비염</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_13">
                    <label for="gender_woman h1" class="me-4">꽃가루알레르기</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_14">
                    <label for="gender_woman h1" class="me-4">등푸른생선알레르기</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_15">
                    <label for="gender_woman h1" class="me-4">과일알레르기</label>
                </div>
            </div>
            <div class="text-center">
                <button class="btn btn-primary" type="submit" formaction='/members/memberUpdateAndMypage/<%= result.get("UNIQUE_ID") %>'>Submit</button>
                <button class="btn btn-primary" type="submit" formaction="/members/mypageForm">back</button>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>