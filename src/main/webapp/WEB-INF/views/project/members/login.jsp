<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.css">
    <link href="/css/main.css" rel="stylesheet" />
    <title>login</title>
  </head>

<body>
     <!-- header -->
     <%@ include file="/WEB-INF/views/project/header.jsp" %>
  <div class="d-flex text-center align-items-center justify-content-center vh-100">  
  <div class="container">
        <main class="form-signin w-50 m-auto">
            <% 
            String fail = request.getParameter("fail");
            %>
            
            <% if ("true".equals(fail)) { %>            
            <div><font color="red"> Login Fail ! </font></div>
            <% } %>
        <form class="form-signin" method="post" action="/login">
                <img class="mb-4" src="/images/drug_img.png" alt="">
                <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
                <div class="form-floating">
                    <input type="id" class="form-control" id="username" name="username">
                    <label for="floatingInput">ID</label>
                </div>
                <div class="form-floating">
                    <input type="password" class="form-control" id="password" name="password">
                    <label for="floatingPassword">Password</label>
                </div>
                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me">Remember me
                    </label>
                </div>
                <button class="w-100 btn btn-lg btn-success" type="submit">
                    Sign in
                </button>

                <p class="mt-5 mb-3 text-muted">© 2023</p>
            </form>
        </main>
    </div>
  </div>
  <!-- Footer -->
  <%@ include file="/WEB-INF/views/project/footer.jsp" %>
</body>

</html>