
CREATE TABLE Admin
(
  Admin_ID VARCHAR(500) NOT NULL COMMENT '관리자_ID',
  Name     VARCHAR(500) NULL     COMMENT '이름',
  E-mail   VARCHAR(500) NULL     COMMENT '이메일',
  PRIMARY KEY (Admin_ID)
) COMMENT '관리자';

CREATE TABLE Inquiry
(
  Inquiry_ID    VARCHAR(500) NOT NULL COMMENT '댓글_ID',
  Date          VARCHAR(500) NULL     COMMENT '작성일자',
  Content       VARCHAR(500) NULL     COMMENT '내용',
  User_ID       VARCHAR(500) NOT NULL COMMENT '작성자_ID',
  Response      VARCHAR(500) NULL     COMMENT '응답',
  Response_Date VARCHAR(500) NULL     COMMENT '응답_일자',
  Admin_ID      VARCHAR(500) NOT NULL COMMENT '관리자_ID',
  PRIMARY KEY (Inquiry_ID)
) COMMENT '문의';

CREATE TABLE User
(
  User_ID VARCHAR(500) NOT NULL COMMENT '작성자_ID',
  Name    VARCHAR(500) NULL     COMMENT '이름',
  E-mail  VARCHAR(500) NULL     COMMENT '이메일',
  PRIMARY KEY (User_ID)
) COMMENT '작성자';

ALTER TABLE Inquiry
  ADD CONSTRAINT FK_User_TO_Inquiry
    FOREIGN KEY (User_ID)
    REFERENCES User (User_ID);

ALTER TABLE Inquiry
  ADD CONSTRAINT FK_Admin_TO_Inquiry
    FOREIGN KEY (Admin_ID)
    REFERENCES Admin (Admin_ID);
