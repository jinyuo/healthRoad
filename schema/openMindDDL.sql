DROP TABLE USE_DETAIL;
DROP TABLE REVIEW;
DROP TABLE GYM;
DROP TABLE MEMBER;

--헬스장 PK를 위한 시퀀스
CREATE SEQUENCE GYM_CODE_SEQ;
CREATE SEQUENCE REVIEW_CODE_SEQ;
CREATE SEQUENCE USE_DETAIL_SEQ;

drop sequence gym_code_seq;
drop sequence review_code_seq;
drop sequence use_detail_seq;

--헬스장 테이블
CREATE TABLE GYM(
    CODE NUMBER PRIMARY KEY,
    NAME VARCHAR2(120),
    ADDR VARCHAR2(300),
    PHONE_NUM VARCHAR2(30),
    FILE_NAME VARCHAR2(300),
    GYM_CAPACITY NUMBER,
    PRICE NUMBER,
    GYM_COMMENT VARCHAR2(4000),
    WEEKDAY_HOUR VARCHAR2(20),
    WEEKEND_HOUR VARCHAR2(20),
    STAR_SCORE NUMBER
);

--사업자 체크
INSERT INTO GYM(CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE) 
VALUES(-1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL); 

--회원 테이블
CREATE TABLE MEMBER(
    ID VARCHAR2(120) NOT NULL,
    PWD VARCHAR(210) NOT NULL,
    NAME VARCHAR2(120),
    PHONE_NUM VARCHAR2(30),
    GYM_CODE NUMBER,
    BALANCE NUMBER,

    CONSTRAINT MEMBER_PK PRIMARY KEY (ID),
    CONSTRAINT MEMBER_GYM_CODE_FK FOREIGN KEY (GYM_CODE) REFERENCES GYM(CODE)
);

--리뷰 테이블
CREATE TABLE REVIEW(
    CODE NUMBER,
    GYM_CODE NUMBER NOT NULL,
    MEMBER_ID VARCHAR2(120) NOT NULL,
    REG_DATE VARCHAR2(120),
    STAR_SCORE NUMBER,
    CONTENT VARCHAR2(4000),
    FILE_NAME VARCHAR2(200),
    
    CONSTRAINT REVIEW_PK PRIMARY KEY (CODE),
    CONSTRAINT REVIEW_GYM_CODE_FK FOREIGN KEY (GYM_CODE) REFERENCES GYM(CODE),
    CONSTRAINT STAR_SCORE_CK CHECK(STAR_SCORE BETWEEN 0 AND 5)
);

--이용 상세 테이블
CREATE TABLE USE_DETAIL(
    CODE NUMBER,
    MEMBER_ID VARCHAR2(120) NOT NULL,
    GYM_CODE NUMBER NOT NULL,
    PRICE NUMBER,
    USE_START_HOUR VARCHAR2(30),
    STATE NUMBER,

    CONSTRAINT USE_DETAIL_PK PRIMARY KEY (CODE),
    CONSTRAINT USE_DETAIL_MEMBER_ID_FK FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(ID) on delete cascade,
    CONSTRAINT USE_DETAIL_GYM_CODE_FK FOREIGN KEY (GYM_CODE) REFERENCES GYM(CODE),
    CONSTRAINT USE_DETAIL_STATE_CK CHECK(STATE IN (-1, 0, 1))  
);

--이용 수락 프로시저
create or replace procedure update_bal_to_use
(
    memberid in member.id%type,
    ceoid in member.id%type,
    price in gym.price%TYPE
)
is
begin
    UPDATE MEMBER SET BALANCE = BALANCE - price WHERE ID = memberid;
    UPDATE MEMBER SET BALANCE = BALANCE + price WHERE ID = ceoid;
end;