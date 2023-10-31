
CREATE TABLE Comment
(
  Comment_ID VARCHAR(500) NOT NULL COMMENT '댓글_ID',
  Date       VARCHAR(500) NULL     COMMENT '작성일자',
  Content    VARCHAR(500) NULL     COMMENT '내용',
  Review_ID  VARCHAR(500) NOT NULL COMMENT '작성자_ID',
  User_ID    VARCHAR(500) NOT NULL COMMENT '사용자_ID',
  PRIMARY KEY (Comment_ID)
) COMMENT '댓글';

CREATE TABLE Review
(
  Review_ID  VARCHAR(500) NOT NULL COMMENT '리뷰_ID',
  Date       VARCHAR(500) NULL     COMMENT '작성일자',
  Content    VARCHAR(500) NULL     COMMENT '내용',
  View_Count VARCHAR(500) NULL     COMMENT '조회수',
  User_ID    VARCHAR(500) NOT NULL COMMENT '사용자_ID',
  PRIMARY KEY (Review_ID)
) COMMENT '리뷰';

CREATE TABLE User
(
  User_ID VARCHAR(500) NOT NULL COMMENT '사용자_ID',
  Name    VARCHAR(500) NULL     COMMENT '이름',
  E-mail  VARCHAR(500) NULL     COMMENT '이메일',
  PRIMARY KEY (User_ID)
) COMMENT '사용자';

ALTER TABLE Review
  ADD CONSTRAINT FK_User_TO_Review
    FOREIGN KEY (User_ID)
    REFERENCES User (User_ID);

ALTER TABLE Comment
  ADD CONSTRAINT FK_Review_TO_Comment
    FOREIGN KEY (Review_ID)
    REFERENCES Review (Review_ID);

ALTER TABLE Comment
  ADD CONSTRAINT FK_User_TO_Comment
    FOREIGN KEY (User_ID)
    REFERENCES User (User_ID);
