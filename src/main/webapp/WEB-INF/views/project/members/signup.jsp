<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.css">
        <script src="/JS/signup.js"></script>
        <link href="/css/main.css" rel="stylesheet" />
        <title>signup form</title>
    </head>

    <body>
        <!-- header -->
        <%@ include file="/WEB-INF/views/project/header.jsp" %>
            <div class="container">
                <div class="text-center mt-4 mb-4 h1 register">회원가입</div>
            </div>
            <div class="container registerMain">
                <form class="form-signin" action="/members/signupProc" method="post">
                    <div class="mb-3">
                        <input class="form-control" type="hidden" id="commonCodeId" name="UNIQUE_ID">
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for=""><strong>NAME</strong></label>
                        <input class="form-control" type="text" id="name" name="NAME" placeholder="이름을 입력해 주세요.">
                        <div id="nameError" class="error"></div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="id"><strong>ID</strong></label>
                        <input class="form-control" id="id" type="text" name="ID" placeholder="아이디를 입력해 주세요.">
                        <div id="idError" class="error"></div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="r"><strong>PASSWORD</strong></label>
                        <input class="form-control" id="password" type="password" name="PASSWORD"
                            placeholder="비밀번호를 입력해 주세요.">
                        <div id="passwordError" class="error"></div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for=""><strong>PASSWORD CHECK</strong></label>
                        <input class="form-control" id="passwordCheck" type="password" name=""
                            placeholder="비밀번호를 다시 입력해 주세요.">
                        <div id="passwordCheckError" class="error"></div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="r"><strong>BIRTHDATE</strong></label>
                        <input class="form-control" id="BIRTHDATE" type="date" name="BIRTHDATE"
                            placeholder="생년월일을 입력해 주세요.">
                        <div id="BIRTHDATEError" class="error"></div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="r"><strong>E-mail</strong></label>
                        <input class="form-control" id="e-mail" type="email" name="EMAIL"
                            placeholder="ex) 1234@example.com">
                        <div id="emailError" class="error"></div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="systemCodeYn"><strong>PHONE NUMBER</strong></label>
                        <input class="form-control" type="tel" id="tel" name="PHONE" placeholder="휴대폰 번호를 입력해 주세요.">
                        <div id="telError" class="error"></div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="systemCodeYn"><strong>질병 이력</strong></label>
                        <div class="radio-field mb-4">
                            <div>
                                <input id="gender_woman1" type="checkbox" name="HISTORY_ID" , value="history_01">
                                <label for="gender_woman1">고혈압</label>
                                <input id="gender_woman2" type="checkbox" name="HISTORY_ID" , value="history_02">
                                <label for="gender_woman2">심장병</label>
                                <input id="gender_woman3" type="checkbox" name="HISTORY_ID" , value="history_03">
                                <label for="gender_woman3">당뇨</label>
                                <input id="gender_woman4" type="checkbox" name="HISTORY_ID" , value="history_04">
                                <label for="gender_woman4">계란알레르기</label>
                                <input id="gender_woman5" type="checkbox" name="HISTORY_ID" , value="history_05">
                                <label for="gender_woman5">해산물알레르기</label>
                                <input id="gender_woman6" type="checkbox" name="HISTORY_ID" , value="history_06">
                                <label for="gender_woman6">갑각류알레르기</label>
                                <input id="gender_woman7" type="checkbox" name="HISTORY_ID" , value="history_07">
                                <label for="gender_woman7">견과류알레르기</label>
                                <input id="gender_woman8" type="checkbox" name="HISTORY_ID" , value="history_08">
                                <label for="gender_woman8">천식</label>
                            </div>
                            <div>
                                <input id="gender_woman9" type="checkbox" name="HISTORY_ID" , value="history_09">
                                <label for="gender_woman9">신장질환</label>
                                <input id="gender_woman10" type="checkbox" name="HISTORY_ID" , value="history_10">
                                <label for="gender_woman10">간질환</label>
                                <input id="gender_woman11" type="checkbox" name="HISTORY_ID" , value="history_11">
                                <label for="gender_woman11">혈관질환</label>
                                <input id="gender_woman12" type="checkbox" name="HISTORY_ID" , value="history_12">
                                <label for="gender_woman12">비염</label>
                                <input id="gender_woman13" type="checkbox" name="HISTORY_ID" , value="history_13">
                                <label for="gender_woman13">꽃가루알레르기</label>
                                <input id="gender_woman14" type="checkbox" name="HISTORY_ID" , value="history_14">
                                <label for="gender_woman14">등푸른생선알레르기</label>
                                <input id="gender_woman15" type="checkbox" name="HISTORY_ID" , value="history_15">
                                <label for="gender_woman15">과일알레르기</label>
                            </div>
                        </div>
                    </div>
                    <!-- 수정해야 합니다. -->
                    <div class="mb-3">
                        <label class="form-label" for="useYn"><strong>ADDRESS</strong></label>
                        <input class="form-control" type="text" id="addre" name="ADDRESS">
                        <div id="addreError" class="error"></div>
                    </div>
                    <!-- 여기까지 -->
                    <label class="form-label" for="systemCodeYn"><strong>성별 선택</strong></label>
                    <div class="radio-field mb-4">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="SEX" id="male" value="남성">
                            <label class="form-check-label gender" for="male">남성</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="SEX" id="female" value="여성">
                            <label class="form-check-label gender" for="female">여성</label>
                        </div>
                    </div>
                    <hr class="my-3">
                    <label for="auth" class="sr-only"><strong>Auth</strong></label>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="auth" id="ROLE_ADMIN" value="ROLE_ADMIN">
                        <label class="form-check-label" for="ROLE_ADMIN">ADMIN</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="auth" id="USER" value="ROLE_USER">
                        <label class="form-check-label" for="USER">USER</label>
                    </div>
                    <div class="text-center mb-4">
                        <button class="btn btn-primary" type="submit" id="submit" onclick="checkForm()">Submit</button>
                    </div>
                </form>
            </div>
            <!-- Footer -->
            <%@ include file="/WEB-INF/views/project/footer.jsp" %>
    </body>

    </html>