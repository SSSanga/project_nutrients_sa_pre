<%@ page import="java.util.HashMap, java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.css">
    <title>Detail Form</title>
</head>

<body>
    <div class="container">
        <div class="text-center mt-4 mb-4 h1">Detail Form</div>
    </div>
    <div class="container">
        <form id="selectDetail" action="/main/selectDetail" method="get">
            <div class="mb-3">
                <input class="form-control" type="hidden" id="commonCodeId" name="COMMON_CODE_ID">
            </div>
            <% HashMap params=(HashMap)request.getAttribute("params"); String searchStr=(String)params.getOrDefault("search", ""
            ); HashMap result=(HashMap)request.getAttribute("result"); %>
            <div class="mb-1">
                <label class="form-label" for="name">NAME:</label>
                </div>
                <div class="mb-3 border rounded p-2">
                <div><%= result.get("NAME") %></div>
            </div>
            <div class="mb-1">
                <label class="form-label" for="orderNumber">ORDER_NUMBER:</label>
            </div>
            <div class="mb-3 border rounded p-2">
                <div><%= result.get("ORDER_NUMBER") %></div>
            </div>
            <div class="mb-1">
                <label class="form-label" for="description">DESCRIPTION:</label>
            </div>
            <div class="mb-3 border rounded p-2">
                <div><%= result.get("DESCRIPTION") %></div>
            </div>
            <div class="mb-1">
                <label class="form-label" for="description">REGISTRY_DATE:</label>
            </div>
            <div class="mb-3 border rounded p-2">
                <div><%= result.get("REGISTRY_DATE") %></div>
            </div>
            <div class="mb-1">
                <label class="form-label" for="description">MODIFY_DATE:</label>
            </div>
            <div class="mb-3 border rounded p-2">
                <div><%= result.get("MODIFY_DATE") %></div>
            </div>
            <div class="text-center">
                <button class="btn btn-primary" type="submit" formaction="/main/selectSearch">back</button>
                <button class="btn btn-primary" formaction='/main/updateForm/<%= result.get("COMMON_CODE_ID") %>'>updete</button>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>