## 🐾 프로젝트 기간

- 기간: 7월 7일~ 7월 28일
  

## 🐾 의뢰팀 홈페이지 의뢰서
![image](https://github.com/SSSanga/project_nutrients/assets/132973456/b5a8a050-c3d5-469a-a915-7b43c4292ae0)
![image](https://github.com/SSSanga/project_nutrients/assets/132973456/1c049123-9104-4e51-98c2-f1cd241ec178)


##  🐾 ERD

![image](https://github.com/SSSanga/project_nutrients/assets/132973289/fa853d04-8e7e-4da1-bc85-1c65b701d5e6)


##


## 🐾 홈페이지 및 주요 구현 화면
[TAB_영양제 추천 사이트_guest](https://www.youtube.com/watch?v=5T-7S3QLbT8)
/[TAB_영양제 추천 사이트_user02](https://www.youtube.com/watch?v=HiZz9Xk2vTc)
/[TAB_영양제 추천 사이트_admin](https://www.youtube.com/watch?v=7gwySh57mhw)

![image](https://github.com/SSSanga/project_nutrients/assets/132973456/983f20c4-92c3-4190-8a1f-e287314b3abd)




##

## 🐾 팀원 및 역할

![image](https://github.com/SSSanga/project_nutrients/assets/132973456/658fe7fb-a8b0-45ac-9b8f-480966e21a59)


### 💊김상아 
-[PM]

<details>
<summary>영양제 검색</summary>
  
❗ [SearchController.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/controller/SearchController.java)

❗ [SearchService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/SearchService.java)
</details>

<details>
<summary>영양제 목록</summary>
  
❗ [ListController.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/controller/ListController.java)

❗ [ListService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/ListService.java)

❗ [supplementMapper.xml](https://github.com/SSSanga/project_nutrients/blob/main/src/main/resources/sqlmapper/mysql/supplementMapper.xml)
</details>

<details>
<summary>영양제 추천</summary>
  
❗ [RecommendationController.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/controller/RecommendationController.java)

❗ [RecommService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/RecommService.java) 
</details> 

### 💊나현탁
<details>
<summary>메인 페이지 기초</summary>
  
❗ [mainpage.jsp](https://github.com/SSSanga/project_nutrients/blob/main/src/main/webapp/WEB-INF/views/mainpage.jsp)

❗ [main.css](https://github.com/SSSanga/project_nutrients/tree/main/src/main/resources/static/css)

❗ [signup.css](https://github.com/SSSanga/project_nutrients/blob/main/src/main/resources/static/css/signup.css) 
</details> 

### 💊조아라
-[goorm master]
<details>
<summary>리뷰</summary>
  
❗ [ReviewsController.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/controller/ReviewsController.java)

❗ [ReviewsService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/ReviewsService.java)

❗ [ReviewMapper.xml](https://github.com/SSSanga/project_nutrients/blob/main/src/main/resources/sqlmapper/mysql/ReviewMapper.xml)
</details>

<details>
<summary>문의</summary>
  
❗ [ContactsController.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/controller/ContactsController.java)  

❗ [ContactsService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/ContactsService.java)

❗ [contactsMapper.xml](https://github.com/SSSanga/project_nutrients/blob/main/src/main/resources/sqlmapper/mysql/contactsMapper.xml)
</details>

<details>
<summary>회원목록</summary>
  
❗ [memberslist.jsp](https://github.com/SSSanga/project_nutrients/blob/main/src/main/webapp/WEB-INF/views/project/members/memberslist.jsp)
</details>

### 💊김하늘
-[code base]

<details>
<summary>메인</summary>
  
❗ [MainController.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/controller/MainController.java)

❗ [MainService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/MainService.java)

❗ [exampleMapper.xml](https://github.com/SSSanga/project_nutrients/blob/main/src/main/resources/sqlmapper/mysql/exampleMapper.xml)
</details>


<details>
<summary>관리자 회원정보조회 및 수정</summary>
  
❗ [PrincipalUserService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/security/PrincipalUserService.java)  

❗ [PrincipalUser.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/security/PrincipalUser.java)  

❗ [AuthsService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/AuthsService.java)

❗ [AuthsMapper.xml](https://github.com/SSSanga/project_nutrients/blob/main/src/main/resources/sqlmapper/mysql/AuthsMapper.xml)
</details>


<details>
<summary>회원가입/회원목록/로그인</summary>
  
❗ [MembersController.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/controller/MembersController.java)

❗ [MembersService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/MembersService.java)

❗ [membersMapper.xml](https://github.com/SSSanga/project_nutrients/blob/main/src/main/resources/sqlmapper/mysql/membersMapper.xml)
</details>

## 🐾 프로젝트 진행 소감 및 본인 Favorite Code

### 💊김상아 

![image](https://github.com/SSSanga/project_nutrients/assets/132973387/e939a42e-0edc-4173-8f13-6b0575c5bef5)


⁉️ 가장 Favorite Code 로 영양제 상세를 눌렀을때 불러오는 code를 선택했습니다. 맡은 부분의 CRUD를 작성하고 xml부터 Controller까지 만들 수 있게 Sample Code를 완벽하게 작성해준 하늘님에게 매우 큰 영광을 돌립니다. 아라님과 둘이 머리 맞대로 오류 부분 찾아서 해결 할때마다 서로 조금씩 성장해나가는것 같아 뿌듯했습니다. 앞으로 빅데이터를 배우고나서 더 발전되는 사이트를 만들기위해 우리 팀원들 모두!! 화이팅합시다!!아자 아자!!



### 💊조아라

![image](https://github.com/SSSanga/project_nutrients/assets/132973289/46de6fde-8ee5-4681-b4e4-856d958852be)


⁉️ 팀프로젝트를 통해 vscode에서 controller, service, xml,jsp와 databases 연동을 시키는 것 혼자 했으면 에러상황을 해결하지 못하고 포기했을 것 같은데 팀원들 덕분에 오류해결하는 방법들이 나에게 큰도움이 되었다.
PM님이 pagination 게시물 총개수 적용, 게시물 개수 설정 적용하는 것을 알려주었고 하늘님이 CRUD를 알려주었다. 모두들 나에게 선생님 같은 분들이다. 덕분에 탈주하지 않고 팀플을 할 수 있었다. 0124 최고당!   


### 💊김하늘

![image](https://github.com/SSSanga/project_nutrients/assets/132973456/b99ac9b9-239a-4a49-baf7-9656b80832e0)


⁉️ 저는 이번 프로젝트를 하면서 비밀번호를 암호화 하고, 회원가입시 UUID를 데이터 베이스로 받는 과정이 매우 복잡하고 어려워서 오래 붙들고 있었기 때문에 애정이 가서 Favorite 코드로 선택했습니다.
프로젝트 하는 내내 모두 각자의 자리에서 한사람도 부족함 없이 최선을 다해 본인의 역할을 해줘서 너무 고마웠습니다. 갑자기 sample code를 맡게 되서 막막했지만, 팀원들이 코드에만 집중할 수 있는 환경을 만들어 줬으며 제 컨디션을 위해 노력해줘서 너무 감동이었고 팀원들 덕분에 sample code를 완성할 수 있었습니다.
서로 설명해주고 에러를 해결하면서 많이 배우고 프로젝트 시작하기 전보다 더 똑똑한 우리팀이 된 것 같습니다. 모두 탈주하지 말고 2차 프로젝트 까지 함께해요~


### 💊나현탁

⁉️ 프로젝트를 진행하면서, 팀워크의 중요성과 소통의 가치를 깊이 이해하게 되었습니다. 이런 경험은 앞으로 제 삶에 큰 도움이 될 것입니다.
그러나 취업 준비때문에 팀원들과 많은 시간을 함께 하지 못해 아쉬웠습니다. 제가 더 적극적으로 참여하고, 더 많은 시간을 함께 할 수 있었다면 어땠을까 하는 생각이 듭니다. 그래서 이 자리를 빌어, 팀원들에게 죄송하다는 말씀을 전하고 싶습니다.
마지막으로, 이 프로젝트를 함께한 팀원들에게 감사의 말씀을 드립니다. 저의 부족한 점을 이해하고 격려해주신 모든 분들에게 정말 감사드립니다.
다시 한 번 팀원들에게 감사의 말씀을 전합니다.


