<%@ page import="java.util.HashMap, java.util.ArrayList" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Nutrient Recommendations Home</title>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
            <!-- <link href="./../css/main.css" rel="stylesheet" /> -->
        </head>

        <body>
                  <!-- header -->
        <%@ include file="/WEB-INF/views/project/header.jsp" %>
            <!-- Screen adjust functions -->




            <div class="container">
                <div class="container center p-4">
                    <form>
                        <table>
                            <div class="mb-3">

                                <tr>
                                    <td><label for="product" class="form-label">이름:</label></td>
                                    <td><input type="text" id="product" name="product" class="form-control" required>
                                    </td>
                                </tr>
                            </div>
                            <tr>
                                <td><label for="manufacturer" class="form-label">제조사:</label></td>
                                <td><input type="text" id="manufacturer" name="manufacturer" class="form-control"
                                        required></td>
                            </tr>
                            <div class="dropdown">
                                <tr>
                                    <td>효과</td>
                                    <td>
                                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown"
                                          aria-haspopup="true" aria-expanded="false">
                                          여러개 선택 가능
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" >
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="간 건강에 도움을 줄 수 있음" id="selectedEffects"> 간 건강에 도움을 줄 수 있음
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="체내 에너지 생성에 필요" id="selectedEffects"> 체내 에너지 생성에 필요
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="대사에 필요" id="selectedEffects"> 대사에 필요
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="정상적인 면역기능에 필요" id="selectedEffects"> 정상적인 면역기능에 필요
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="스트레스로 인한 피로 개선에 도움을 줄 수 있음" id="selectedEffects"> 스트레스로 인한 피로 개선에 도움을 줄 수 있음
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="항산화 작용" id="selectedEffects"> 항산화 작용
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="유산균 증식 및 유해균 억제, 배변활동 원활, 장 건강에 도움을 줄 수 있음" id="selectedEffects"> 유산균 증식 및 유해균 억제, 배변활동 원활, 장 건강에 도움을 줄 수 있음
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="스트레스로 인한 긴장완화에 도움을 줄 수 있음" id="selectedEffects"> 스트레스로 인한 긴장완화에 도움을 줄 수 있음
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="콜레스테롤 개선" id="selectedEffects"> 콜레스테롤 개선
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="기억력 개선" id="selectedEffects"> 기억력 개선
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="혈행 개선" id="selectedEffects"> 혈행 개선
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="높은 혈압 감소" id="selectedEffects"> 높은 혈압 감소
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="시력 개선" id="selectedEffects"> 시력 개선
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="눈의 피로도 개선에 도움을 줄 수 있음" id="selectedEffects"> 눈의 피로도 개선에 도움을 줄 수 있음
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="지구력 증진에 도움을 줄 수 있음" id="selectedEffects"> 지구력 증진에 도움을 줄 수 있음
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="전립선 건강의 유지에 도움을 줄 수 있음" id="selectedEffects"> 전립선 건강의 유지에 도움을 줄 수 있음
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="노화로 인해 감소될 수 있는 황반색소밀도를 유지하여 눈 건강에 도움을 줄 수 있음" id="selectedEffects"> 노화로 인해 감소될 수 있는 황반색소밀도를 유지하여 눈 건강에 도움을 줄 수 있음
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="어두운 곳에서 시각 적응을 위해 필요" id="selectedEffects"> 어두운 곳에서 시각 적응을 위해 필요
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="피부와 점막을 형성하고 기능을 유지하는데 필요" id="selectedEffects"> 피부와 점막을 형성하고 기능을 유지하는데 필요
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="상피세포의 성장과 발달에 필요" id="selectedEffects"> 상피세포의 성장과 발달에 필요
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="칼슘과 인이 흡수되고 이용되는데 필요" id="selectedEffects"> 칼슘과 인이 흡수되고 이용되는데 필요
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="뼈의 형성과 유지에 필요" id="selectedEffects"> 뼈의 형성과 유지에 필요
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="골다공증 발생 위험 감소에 도움을 줌" id="selectedEffects"> 골다공증 발생 위험 감소에 도움을 줌
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="결합조직 형성과 기능유지에 필요" id="selectedEffects"> 결합조직 형성과 기능유지에 필요
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="effect" value="철의 흡수에 필요" id="selectedEffects"> 철의 흡수에 필요
                                          </label>
                                        </div>
                                      </td>
                                      <td id="selectedEffects">선택한 효과: </td>
                                </tr>
                            </div>

                            <tr>
                                <td><label for="effect" class="form-label">LINK:</label></td>
                                <td><input type="text" id="effect" name="effect" class="form-control" required></td>
                            </tr>

                            <div class="mb-3">
                                <tr>
                                    <td><label for="components" class="form-label">성분</label></td>
                                    <td>
                                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown"
                                          aria-haspopup="true" aria-expanded="false">
                                          여러개 선택 가능
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="실리마린"> 실리마린
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="비타민 B3"> 비타민 B3
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="로사빈"> 로사빈
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="비타민 B1"> 비타민 B1
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="비타민 C"> 비타민 C
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="비타민 E"> 비타민 E
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="코로솔산"> 코로솔산
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="비타민 B12"> 비타민 B12
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="코엔자임Q10"> 코엔자임Q10
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="카테킨"> 카테킨
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="알리인"> 알리인
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="구연산마그네슘"> 구연산마그네슘
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="비타민 A"> 비타민 A
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="비타민 D"> 비타민 D
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="루테인"> 루테인
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="아스타잔틴"> 아스타잔틴
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="오메가-3"> 오메가-3
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="비타민 B2"> 비타민 B2
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="셀레늄"> 셀레늄
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="비타민 B5"> 비타민 B5
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="L-테아닌"> L-테아닌
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="프로바이오틱스"> 프로바이오틱스
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="아연"> 아연
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="B.breve IDCC 4401 열 처리배양건조물 3.0*10^10cells/450mg"> B.breve IDCC
                                            4401 열 처리배양건조물 3.0*10^10cells/450mg
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="component" value="플라보놀 배당체"> 플라보놀 배당체
                                          </label>
                                        </div>
                                      </td>
                                      </tr>
                            </div>
                            

                            <div class="mb-3">
                                <tr>
                                    <td><label for="dosage" class="form-label">용량:</label></td>
                                    <td><input type="text" id="dosage" name="dosage" class="form-control" required></td>

                                </tr>
                            </div>

                            <div class="mb-3">
                                <tr>
                                    <td><label for="frequency" class="form-label">복용 주기:</label></td>
                                    <td><input type="text" id="frequency" name="frequency" class="form-control"
                                            required></td>
                                </tr>

                            </div>

                            <div class="dropdown">
                                <tr>
                                    <td>부작용 선택</td>
                                    <td>
                                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown"
                                          aria-haspopup="true" aria-expanded="false">
                                          여러개 선택 가능
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="구토"> 구토
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="설사"> 설사
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="복통"> 복통
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="속쓰림"> 속쓰림
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="가스 증가"> 가스 증가
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="불면증"> 불면증
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="피부 발진"> 피부 발진
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="두통"> 두통
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="어지러움"> 어지러움
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="식욕 변화"> 식욕 변화
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="신경과민성"> 신경과민성
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="지속성 복통"> 지속성 복통
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="심장 빈맥"> 심장 빈맥
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="피로감"> 피로감
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="소화 문제"> 소화 문제
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="알레르기 반응"> 알레르기 반응
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="혈압 변화"> 혈압 변화
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="신장 문제"> 신장 문제
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="간 기능 이상"> 간 기능 이상
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="뼈 손상"> 뼈 손상
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="혈액 응고 문제"> 혈액 응고 문제
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="빈혈"> 빈혈
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="면역 기능 저하"> 면역 기능 저하
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="감각 이상"> 감각 이상
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="기억력 저하"> 기억력 저하
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="항응고제 상호작용"> 항응고제 상호작용
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="호르몬 수준 변화"> 호르몬 수준 변화
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="체중 증가"> 체중 증가
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="기관지 경련"> 기관지 경련
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="간염"> 간염
                                          </label>
                                          <label class="dropdown-item">
                                            <input type="checkbox" name="sideeffect" value="부작용 없음"> 부작용 없음
                                          </label>
                                        </div>
                                      </td>
                                      
                                </tr>
                            </div>

                            <div>
                                <tr>
                                    <label for="image" class="form-label">이미지 첨부</label>
                                    <input class="form-control" type="file" id="image">
                                </tr>
                                <div class="mb-3">
                                    <div>
                                        <tr>
                                            <td><button class="btn btn-primary" type="submit"
                                                    formaction="/supp/insert">저장 이거슨
                                                    insert?</button></td>
                                        </tr>
                                    </div>

                        </table>
                    </form>
                </div>
                <hr>

                <!-- Footer -->
                <%@ include file="/WEB-INF/views/project/footer.jsp" %>

                    </body>

        </html>