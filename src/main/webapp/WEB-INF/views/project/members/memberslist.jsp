<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <link href="/css/main.css" rel="stylesheet" />
    <title>memberslist</title>

</head>

<body>
<!-- header -->
<%@ include file="/WEB-INF/views/project/header.jsp" %>

  <div class="container">
    <form>
    <table class="table table-bordered">
      <tr>
        <th class="text-center">회원번호</th>
        <th class="text-center">아이디</th>
        <th class="text-center">이름</th>
        <th class="text-center">상세정보</th>
        <th class="text-center">삭제</th>
      </tr>
      <tr>
        <td>MEMB_01</td>
        <td>김영수</td>
        <td>kimys</td>
        <td><button class="btn btn-success" type="submit" formaction="/members/membersinfoForm">상세정보</button></td>
        <td><button class="btn btn-danger" type="submit">삭제</button></td>
    </tr>
    <tr>
        <td>MEMB_02</td>
        <td>이지현</td>
        <td>eejh</td>
        <td><button class="btn btn-success" type="submit" formaction="/members/membersinfoForm">상세정보</button></td>
        <td><button class="btn btn-danger" type="submit">삭제</button></td>
    </tr>
    <tr>
        <td>MEMB_03</td>
        <td>박준호</td>
        <td>parkjh</td>
        <td><button class="btn btn-success" type="submit" formaction="/members/membersinfoForm">상세정보</button></td>
        <td><button class="btn btn-danger" type="submit">삭제</button></td>
    </tr>
    <tr>
        <td>MEMB_04</td>
        <td>송지은</td>
        <td>songje</td>
        <td><button class="btn btn-success" type="submit" formaction="/members/membersinfoForm">상세정보</button></td>
        <td><button class="btn btn-danger" type="submit">삭제</button></td>
    </tr>
    <tr>
        <td>MEMB_05</td>
        <td>최민준</td>
        <td>choimj</td>
        <td><button class="btn btn-success" type="submit" formaction="/members/membersinfoForm">상세정보</button></td>
        <td><button class="btn btn-danger" type="submit">삭제</button></td>
    </tr>
    <tr>
      <td>0000</td>
      <td>0000</td>
      <td>0000</td>
      <td><button class="btn btn-success" type="submit" formaction="/members/membersinfoForm">상세정보</button></td>
      <td><button class="btn btn-danger" type="submit">삭제</button></td>
  </tr>
</table>
</form>

      <hr>
     <!-- Footer -->
     <%@ include file="/WEB-INF/views/project/footer.jsp" %>
  
</body>

</html>