<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <form class="d-flex" action="" method="">
    <div class="container py-4">
        <h1 class="text-center" style="font-weight: bold;">Reviews</h1>
        <hr style="border-top: 4px solid;">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card mb-3">
                    <div class="card-body">
                        <h5 class="card-title mt-2" style="font-weight: bold;">코큐텐 한달복용 후기</h5>
                    </div>
                </div>
                <div class="card mb-4 pt-4">
                    <img src="/images/re_2.png" alt="vitaminb3" class="card-img-top" style="width: 100px;">
                    <div class="card-body">
                        <td class="card-text pb-2"> 30대 이후로 점점 체력이 약해지고 노화가 빨리 진행되는게 피부로 느껴져 코큐텐 구매했어요. 
                                   한달 꾸준히 복용했는데 피로 회복에 효과 너무 좋습니다. 
                                   남편도 같이 복용하고 있는데 몸이 가벼워 졌다고 다음엔 넉넉하게 구매하라고 하네요. 
                                   만성피로있는 분들 꼭 한번 드셔보세요 !!!</td>
                    </div>
                </div>
                <div>
                <h4 class=" pt-5 mb-3" style="font-weight: bold;">Comment</h4>
                <hr style="border-top: 3px solid;">
                <!-- 여기에 댓글을 보여주는 부분을 추가하세요 (생략됨) -->
                    <div class="mb-3">
                        <h6 class=" pt-5 mb-3" style="font-weight: bold;">Comment</h6>
                        <input type="text" class="form-control" id="comment" rows="3"></input>
                    </div>
                    <button type="submit" class="btn btn-primary">댓글 등록</button>
                    <button type="submit" class="btn btn-primary" formaction="/reviews/reviewlist">돌아가기</button>
                    <!-- 이게 댓글로 어떻게 달리는거지? -->
                <!-- Add more comments as needed -->
            </div>
        </div>
        </div>
    </div>
</form>

    <!-- Footer -->
    <%@ include file="/WEB-INF/views/project/footer.jsp" %>
</body>

</html>