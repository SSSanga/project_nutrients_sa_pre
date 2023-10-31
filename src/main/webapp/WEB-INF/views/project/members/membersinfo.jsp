<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <link href="/css/main.css" rel="stylesheet" />
    <title>memberinfo</title>
</head>

<body>
<!-- header -->
<%@ include file="/WEB-INF/views/project/header.jsp" %>

<div class="container mt-5">
        <div class="card">
            <div class="card-header text-center" style="font-size: 1.5em;">회원상세정보</div>
            <div class="card-body">
                <form action="#">
                    <div class="form-group">
                        <label for="name">이름:</label>
                        <input class="form-control" type="text" id="name" name="NAME" value="resultget(NAME)">
                    </div>
                    <div class="form-group">
                        <label for="id">아이디:</label>
                        <input class="form-control" type="text" id="id" name="ID" value="resultget(ID)">
                    </div>
                    <div class="form-group">
                        <label for="pwd">비밀번호:</label>
                        <input class="form-control" type="password" id="password" name="PASSWORD" value="resultget(PASS)">
                    </div>
                    <div class="form-group">
                        <label for="phone">핸드폰 번호:</label>
                        <input class="form-control" type="tel" id="phone" name="PHONE" value="resultget(PHON)">
                    </div>
                    <div class="form-group">
                        <label for="dob">생년월일:</label>
                        <input class="form-control" type="date" id="birthdate" name="BIRTHDATE" value="resultget(BIRTH)">
                    </div>
                    <div class="form-group">
                        <label for="address">주소:</label>
                        <input class="form-control" type="text" id="address" name="ADDRESS" value="resultget(ADDR)">
                    </div>
                    <div class="form-group">
                        <label for="medicalHistory">질병력:</label>
                        <select id="historydisease" name="HISTROYDISEASE" class="form-control">
                            <option value="resultget(HIST)">없음</option>
                            <option value="resultget(HIST)">당뇨</option>
                            <option value="resultget(HIST)">고혈압</option>
                            <option value="resultget(HIST)">암</option>
                            <!-- Add more options as needed -->
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="allergyHistory">알레르기 반응:</label>
                       <select id="allergies" name="ALLERGIES" class="form-control">
                            <option value="resultget(ALLE)">없음</option>
                            <option value="resultget(ALLE)">견과류</option>
                            <option value="resultget(ALLE)">유제품</option>
                            <option value="resultget(ALLE)">갑각류</option>
                            <!-- Add more options as needed -->
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="email">E-mail:</label>
                        <input class="form-control" type="email" id="name" name="EMAIL" value="resultget(EMAIL)">
                    </div>
                    <div class="form-group">
                        <label for="paymentInfo">지불 정보:</label>
                        <input class="form-control" type="text" id="paymentInformation" name="PAYMENTINFORMATION" value="resultget(PAYM)">
                    </div>
                    <button type="submint" class="btn btn-success mt-3" value="memberslist" formaction="/members/memberslistForm">돌아가기</button>
                </form>
            </div>
        </div>
    </div>


    <hr>
   <!-- Footer -->
   <%@ include file="/WEB-INF/views/project/footer.jsp" %>

</body>

</html>