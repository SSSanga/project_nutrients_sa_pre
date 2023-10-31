<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ page import="java.util.HashMap, java.util.ArrayList" %>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

            <sec:authentication property="principal" var="userDetailsBean" />
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
            <script src="https://kit.fontawesome.com/cbad40f422.js" crossorigin="anonymous"></script>
            <link href="/css/main.css" rel="stylesheet" />
            <script src="/JS/commonWithJs.js"></script>

            <script>var zoom = 1;</script>

            <div class="container">
                <nav class="navbar navbar-expand">
                    <div class="container-fluid">
                        <form action="" method="">
                            <div class="d-flex m-3">
                                <!-- Brand image -->
                                <div class="d-flex ms-3">
                                    <div class="navbar-brand">
                                        <button class="nav-link btn btn-none" formaction="/">
                                            <img src="/images/drug_img.png" alt="" width="200" height="200">
                                        </button>
                                    </div>
                                </div>
                                <!-- Navigation Links -->
                                <div class="d-flex m-2">
                                    <div class="navbar navbar-expand" id="navbarSupportedContent">
                                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                            <li class="nav-item">
                                                <button class="nav-link btn btn-none"
                                                    formaction="/supp/about">About</button>
                                            </li>
                                            <li class="nav-item">
                                                <button class="nav-link btn btn-none"
                                                    formaction="/supp/wholelist">List</button>
                                            </li>
                                            <li class="nav-item">
                                                <button class="nav-link btn btn-none"
                                                    formaction="/recomm/list">Recommendation</button>
                                            </li>
                                            <li class="nav-item">
                                                <button id="reviewButton" class="nav-link btn btn-none"
                                                    formaction="/reviews/reviewlist">Reviews</button>
                                            </li>
                                            <sec:authorize access="hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')">
                                                <li class="nav-item">
                                                    <button id="contactsButton" class="nav-link btn btn-none"
                                                        formaction="/contacts/contactslist">Contacts</button>
                                                </li>
                                            </sec:authorize>
                                        </ul>
                                    </div>
                                </div>




                                <!-- User management dropdown 여긴 회원관리 -->
                                <div class="container d-flex ml-auto ">

                                    <div class="container collapse navbar-collapse">
                                        <div class="dropdown">
                                            <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton"
                                                data-bs-toggle="dropdown" aria-expanded="false"
                                                style="font-size: 20px;">
                                                <sec:authorize access="isAuthenticated()">
                                                    ${userDetailsBean.memberName} 님
                                                </sec:authorize>
                                                <sec:authorize access="isAnonymous()">
                                                    회원관리
                                                </sec:authorize>
                                            </button>
                                            </button>
                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <sec:authorize access="isAuthenticated()">
                                                    <li class="dropdown-item"><button id="mypageButton"
                                                            class="dropdown-item" formaction="/members/mypageForm"
                                                            style="font-size: 20px; font-weight: bold;">마이페이지</button>
                                                    </li>
                                                </sec:authorize>
                                                <sec:authorize access="isAnonymous()">
                                                    <li class="dropdown-item"><button id="loginButton"
                                                            class="dropdown-item" formaction="/members/loginForm"
                                                            style="font-size: 20px; font-weight: bold;">로그인</button>
                                                    </li>
                                                    <li class="dropdown-item"><button id="singupButton"
                                                            class="dropdown-item" formaction="/members/signupForm"
                                                            style="font-size: 20px; font-weight: bold;">회원가입</button>
                                                    </li>
                                                </sec:authorize>

                                                <sec:authorize access="isAuthenticated()">
                                                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                                                        <li class="dropdown-item"><button id="singupButton"
                                                                class="dropdown-item" formaction="/members/memberList"
                                                                style="font-size: 20px;">회원
                                                                List</button>
                                                        </li>
                                                        <li class="dropdown-item"><button id="singupButton"
                                                            class="dropdown-item" formaction="/mem/charts/google_charts_scatter"
                                                            style="font-size: 20px;">차트</button>
                                                    </li>
                                                    </sec:authorize>
                                                    <li class="dropdown-item"><button id="singupButton"
                                                            class="dropdown-item" method="post" formaction="/logout"
                                                            style="font-size: 20px;">로그아웃</button>
                                                    </li>
                                                </sec:authorize>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </form>
                    </div>

                    <!-- 이건 줌인아웃 -->
                    <!-- Screen adjust buttons -->

                    <div class="container navbar justify-content-center">
                        <div id="zoom-display" class="me-3 text-danger font-weight zoomText">100%</div>
                        <button class="me-2 btn btn-outline-secondary btn-lg" onclick="increaseSize()"
                            style="font-size: 15px;"><i class="fa-solid fa-magnifying-glass-plus zoom"></i></button>
                        <button class="btn btn-outline-secondary btn-lg" onclick="decreaseSize()"
                            style="font-size: 15px;"><i class="fa-solid fa-magnifying-glass-minus zoom"></i></button>
                    </div>

                </nav>
            </div>