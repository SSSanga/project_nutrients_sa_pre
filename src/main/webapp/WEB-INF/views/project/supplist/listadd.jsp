<%@ page import="java.util.HashMap, java.util.ArrayList" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Nutrient Recommendations Home</title>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
        </head>

        <body>
        <!-- header -->
        <%@ include file="/WEB-INF/views/project/header.jsp" %>
           
            <div class="container">
                <div class="container center p-4">
                    <form>
                        <table>
                          <div class="mb-3">
                            <tr>
                                <td><label for="SUPP_ID" class="form-label">SUPP_ID</label></td>
                                <td><input type="text" value="" id="SUPP_ID" name="SUPP_ID" class="form-control" required>
                                </td>
                            </tr>
                          </div>
                            <div class="mb-3">
                                <tr>
                                    <td><label for="PRODUCT" class="form-label">이름:</label></td>
                                    <td><input type="text" value="" id="PRODUCT" name="PRODUCT" class="form-control" required>
                                    </td>
                                </tr>
                              </div>
                              <div class="mb-3">
                            <tr>
                                <td><label for="MANUFACTURE" class="form-label">제조사:</label></td>
                                <td><input type="text" value="" id="MANUFACTURE" name="MANUFACTURE" class="form-control"
                                        required></td>
                            </tr>
                          </div>
                            <div class="dropdown mb-3">
                              <tr>
                                  <td>효과</td>
                                  <td><label></label>
                                    <select name="EFFECT_ID" multiple>
                                      <option value="EFFECT_01" name="EFFECT_ID">간 건강에 도움을 줄 수 있음</option>
                                      <option value="EFFECT_02" name="EFFECT_ID">체내 에너지 생성에 필요</option>
                                      <option value="EFFECT_03" name="EFFECT_ID">대사에 필요</option>
                                      <option value="EFFECT_04" name="EFFECT_ID">정상적인 면역기능에 필요</option>
                                      <option value="EFFECT_05" name="EFFECT_ID">스트레스로 인한 피로 개선에 도움을 줄 수 있음</option>
                                      <option value="EFFECT_06" name="EFFECT_ID">항산화 작용</option>
                                      <option value="EFFECT_07" name="EFFECT_ID">유산균 증식 및 유해균 억제, 배변활동 원활, 장 건강에 도움을 줄 수 있음</option>
                                      <option value="EFFECT_08" name="EFFECT_ID">스트레스로 인한 긴장완화에 도움을 줄 수 있음</option>
                                      <option value="EFFECT_09" name="EFFECT_ID">콜레스테롤 개선</option>
                                      <option value="EFFECT_10" name="EFFECT_ID">기억력 개선</option>
                                      <option value="EFFECT_11" name="EFFECT_ID">혈행 개선</option>
                                      <option value="EFFECT_12" name="EFFECT_ID">높은 혈압 감소</option>
                                      <option value="EFFECT_13" name="EFFECT_ID">시력 개선</option>
                                      <option value="EFFECT_14" name="EFFECT_ID">눈의 피로도 개선에 도움을 줄 수 있음</option>
                                      <option value="EFFECT_15" name="EFFECT_ID">지구력 증진에 도움을 줄 수 있음</option>
                                      <option value="EFFECT_16" name="EFFECT_ID">전립선 건강의 유지에 도움을 줄 수 있음</option>
                                      <option value="EFFECT_17" name="EFFECT_ID">노화로 인해 감소될 수 있는 황반색소밀도를 유지하여 눈 건강에 도움을 줄 수 있음</option>
                                      <option value="EFFECT_18" name="EFFECT_ID">어두운 곳에서 시각 적응을 위해 필요</option>
                                      <option value="EFFECT_19" name="EFFECT_ID">피부와 점막을 형성하고 기능을 유지하는데 필요</option>
                                      <option value="EFFECT_20" name="EFFECT_ID">상피세포의 성장과 발달에 필요</option>
                                      <option value="EFFECT_21" name="EFFECT_ID">칼슘과 인이 흡수되고 이용되는데 필요</option>
                                      <option value="EFFECT_22" name="EFFECT_ID">뼈의 형성과 유지에 필요</option>
                                      <option value="EFFECT_23" name="EFFECT_ID">골다공증 발생 위험 감소에 도움을 줌</option>
                                      <option value="EFFECT_24" name="EFFECT_ID">결합조직 형성과 기능유지에 필요</option>
                                      <option value="EFFECT_25" name="EFFECT_ID">철의 흡수에 필요</option>
                                    </select>
                                    </td>
                                </tr>
                          </div>
                          <div class="mb-3">
                            <tr>
                                <td><label for="LINK" class="form-label">LINK:</label></td>
                                <td><input type="text" value="" id="LINK" name="LINK" class="form-control" required></td>
                            </tr>
                        </div>
                        <div class="dropdown mb-3">
                          <tr>
                            <td>성분 : </td>
                          <td>  <label></label>
                          <select name="COMPONENT_ID" multiple>
                            <option value="COMP_01" name="COMPONENT_ID">실리마린</option>
                            <option value="COMP_02" name="COMPONENT_ID">비타민 B3</option>
                            <option value="COMP_03" name="COMPONENT_ID">로사빈</option>
                            <option value="COMP_04" name="COMPONENT_ID">비타민 B1</option>
                            <option value="COMP_05" name="COMPONENT_ID">비타민 C</option>
                            <option value="COMP_06" name="COMPONENT_ID">비타민 E</option>
                            <option value="COMP_07" name="COMPONENT_ID">코로솔산</option>
                            <option value="COMP_08" name="COMPONENT_ID">비타민 B12</option>
                            <option value="COMP_09" name="COMPONENT_ID">코엔자임Q10</option>
                            <option value="COMP_10" name="COMPONENT_ID">카테킨</option>
                            <option value="COMP_11" name="COMPONENT_ID">알리인</option>
                            <option value="COMP_12" name="COMPONENT_ID">구연산마그네슘</option>
                            <option value="COMP_13" name="COMPONENT_ID">비타민 A</option>
                            <option value="COMP_14" name="COMPONENT_ID">비타민 D</option>
                            <option value="COMP_15" name="COMPONENT_ID">루테인</option>
                            <option value="COMP_16" name="COMPONENT_ID">아스타잔틴</option>
                            <option value="COMP_17" name="COMPONENT_ID">오메가-3</option>
                            <option value="COMP_18" name="COMPONENT_ID">비타민 B2</option>
                            <option value="COMP_19" name="COMPONENT_ID">셀레늄</option>
                            <option value="COMP_20" name="COMPONENT_ID">비타민 B5</option>
                            <option value="COMP_21" name="COMPONENT_ID">L-테아닌</option>
                            <option value="COMP_22" name="COMPONENT_ID">프로바이오틱스</option>
                            <option value="COMP_23" name="COMPONENT_ID">아연</option>
                            <option value="COMP_24" name="COMPONENT_ID">B.breve IDCC 4401 열 처리배양건조물 3.0*10^10cells/450mg</option>
                            <option value="COMP_25" name="COMPONENT_ID">플라보놀 배당체</option>
                          </select></td>

                        </tr>
                          </div>
                            

                            <div class="mb-3">
                                <tr>
                                    <td><label for="DOSAGE" class="form-label">용량:</label></td>
                                    <td><input type="text"value="" id="DOSAGE" name="DOSAGE" class="form-control" required></td>

                                </tr>
                            </div>

                            <div class="mb-3">
                                <tr>
                                    <td><label for="frequency" class="form-label">복용 주기:</label></td>
                                    <td><input type="text" value="" id="FREQUENCY" name="FREQUENCY" class="form-control"
                                            required></td>
                                </tr>

                            </div>
                            <div class="dropdown mb-3">
                              <tr>
                                <td>부작용 : </td>
                            <td><label></label>
                              <select name="SIDEEFFECT_ID" multiple>
                                <option value="SIDE_01" name="SIDEEFFECT_ID">구토</option>
                                <option value="SIDE_02" name="SIDEEFFECT_ID">설사</option>
                                <option value="SIDE_03" name="SIDEEFFECT_ID">복통</option>
                                <option value="SIDE_04" name="SIDEEFFECT_ID">속쓰림</option>
                                <option value="SIDE_05" name="SIDEEFFECT_ID">가스 증가</option>
                                <option value="SIDE_06" name="SIDEEFFECT_ID">불면증</option>
                                <option value="SIDE_07" name="SIDEEFFECT_ID">피부 발진</option>
                                <option value="SIDE_08" name="SIDEEFFECT_ID">두통</option>
                                <option value="SIDE_09" name="SIDEEFFECT_ID">어지러움</option>
                                <option value="SIDE_10" name="SIDEEFFECT_ID">식욕 변화</option>
                                <option value="SIDE_11" name="SIDEEFFECT_ID">신경과민성</option>
                                <option value="SIDE_12" name="SIDEEFFECT_ID">지속성 복통</option>
                                <option value="SIDE_13" name="SIDEEFFECT_ID">심장 빈맥</option>
                                <option value="SIDE_14" name="SIDEEFFECT_ID">피로감</option>
                                <option value="SIDE_15" name="SIDEEFFECT_ID">소화 문제</option>
                                <option value="SIDE_16" name="SIDEEFFECT_ID">알레르기 반응</option>
                                <option value="SIDE_17" name="SIDEEFFECT_ID">혈압 변화</option>
                                <option value="SIDE_18" name="SIDEEFFECT_ID">신장 문제</option>
                                <option value="SIDE_19" name="SIDEEFFECT_ID">간 기능 이상</option>
                                <option value="SIDE_20" name="SIDEEFFECT_ID">뼈 손상</option>
                                <option value="SIDE_21" name="SIDEEFFECT_ID">혈액 응고 문제</option>
                                <option value="SIDE_22" name="SIDEEFFECT_ID">빈혈</option>
                                <option value="SIDE_23" name="SIDEEFFECT_ID">면역 기능 저하</option>
                                <option value="SIDE_24" name="SIDEEFFECT_ID">감각 이상</option>
                                <option value="SIDE_25" name="SIDEEFFECT_ID">기억력 저하</option>
                                <option value="SIDE_26" name="SIDEEFFECT_ID">항응고제 상호작용</option>
                                <option value="SIDE_27" name="SIDEEFFECT_ID">호르몬 수준 변화</option>
                                <option value="SIDE_28" name="SIDEEFFECT_ID">체중 증가</option>
                                <option value="SIDE_29" name="SIDEEFFECT_ID">기관지 경련</option>
                                <option value="SIDE_30" name="SIDEEFFECT_ID">간염</option>
                                <option value="SIDE_31" name="SIDEEFFECT_ID">부작용 없음</option>
                              </select>
                              </td>
                          </tr>
                          </div>
                            

                            <div class="mb-3">
                                <tr>
                                    <td><label for="image" class="form-label">이미지 첨부</label></td>
                                    <td><input class="form-control" type="file" value="" id="LOCATION" name="LOCATION"></td>
                                </tr>
                                <div class="mb-3">
                                    <div>
                                        <tr>
                                            <td><button class="btn btn-primary" type="submit"
                                                    formaction="/supp/insertandselect">DB 저장</button></td>
                                        </tr>
                                    </div>
                                    </div>

                        </table>
                    </form>
                </div>
                </div>
                <hr>

                <!-- Footer -->
                <%@ include file="/WEB-INF/views/project/footer.jsp" %>

        </body>

        </html>