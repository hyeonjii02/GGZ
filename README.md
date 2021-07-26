# GGZ : 그땐 그랬지
# 기획방향
- 자유게시판에서 서로 이야기를 나누며 공감할 수 있도록 글을 쓸 수 있습니다.
- 퀴즈&모의고사에서 문제를 풀고 등급을 공유를 할 수 있습니다.
- 퀴즈를 풀며 쌓은 포인트를 이용해 문방구에서 물건을 구매할 수 있습니다.


-----------------
# 기술 스택 
- JSP
- Mybatis
- MySQL
- Java Script

-----------------
# 프로젝트 구조
![데이터구조](https://user-images.githubusercontent.com/70155543/126999700-9151af52-f93e-477d-839d-6fc9acb59b2c.PNG)

- 회원 데이터 정보를 중심으로 주문, 게시판, 댓글, 물건 정보 테이블이 외래키로 묶여 해당 정보를
받아옵니다

![설계구조](https://user-images.githubusercontent.com/70155543/126999856-e8c3006c-62b7-40e7-a3a2-50d9a433bf89.PNG)

- Member_J : 회원 데이터 테이블
- ORDERLIST: 회원 주문 상품 정보 테이블
- MALL: 물건 데이터 테이블
- FREEBOARD: 게시판 테이블
- BOARD_COMENT: 게시판 댓글 테이블

- Model 2 버전으로 뷰를 담당하는 JSP 페이지와 로직을 위한 서블릿 클래스로 나누어 브라우저의
요청을 처리하였다.
- 요청이 들어오면 로직 처리는 모델이 담당하고 요청결과를 보여주는 뷰는 JSP가 담당하고, 이를
위한 흐름제어를 컨트롤러인 서블릿이 담당한다.
-----------------
#사용법
## 1. 메인화면
  ![사용법1](https://user-images.githubusercontent.com/70155543/126999788-f3ffb691-61ac-43c8-a1ee-bc4e415a7ea0.PNG)


## 2. 자유 게시판 
![사용법2](https://user-images.githubusercontent.com/70155543/126999822-f5adf1b4-2b4d-48de-92eb-221245c55132.PNG)

![사용법3](https://user-images.githubusercontent.com/70155543/126999830-b6bcca76-2dc9-490f-843f-30de758c5af2.PNG)

## 3.퀴즈&모의고사 
![사용법4](https://user-images.githubusercontent.com/70155543/126999673-bfc2dfd4-ce28-49ce-8645-2c94ab88b87f.PNG)

- 퀴즈와 모의고사 중에 선택하여 문제를 풀 수 있습니다.
- 등급에 따라 포인트가 적립됩니다.
- 카카오톡으로 등급을 공유할 수 있도록 하였습니다.

![사용법5](https://user-images.githubusercontent.com/70155543/126999706-0d14f439-55e2-478b-9d34-d90e899a3c36.PNG)

## 4.문방구
![사용법6](https://user-images.githubusercontent.com/70155543/126999718-70f4c920-f2a3-4099-807e-1103e80b179a.PNG)

- 게시판에 쓰이는 페이징 객체로 Mall DB에 있는 데이터를 가져와 List.jsp를 출력해줍니다.
- 물건을 선택하면 물건의 idx로 데이터를 가져와 상세정보 뷰를 띄워줍니다.
- 현재 로그인한 계정이 관리자 계정일 경우 상품 수정,삭제 기능을 출력해줍니다
![사용법7](https://user-images.githubusercontent.com/70155543/126999708-70cc7ca5-b1ff-4d50-9110-f5d1cc1bed2b.PNG)




- 퀴즈를 풀고 쌓은 포인트로 물건 구매가 가능한 시스템
