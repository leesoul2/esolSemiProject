SELECT * FROM member;
INSERT INTO member VALUES('aaa','abc','abc@gmail.com');
INSERT INTO member VALUES('aab','abcd','ab@gmail.com');
INSERT INTO member VALUES('aac','abcde','a@gmail.com');
INSERT INTO member VALUES('test','kh','a@gmail.com');


SELECT * FROM board;
INSERT INTO board VALUES(107,'aaa','제목~~','내용222내용','20240412','20240412',11,0,0,0,0);


SELECT * FROM board_file;
INSERT INTO board_file VALUES(1,105,'파일경로명','파일명');


SELECT * FROM COMMENTS;
INSERT INTO COMMENTS VALUES(1,105,'댓글내용','20240411','aaa');
INSERT INTO COMMENTS VALUES(2,105,'댓글내용','20240411','aab');
INSERT INTO COMMENTS VALUES(3,105,'댓글내용','20240411','aac');

SELECT * FROM game;
INSERT INTO game VALUES(1001, 24000, 'gametitle', 'explanation', 'tag','2024-04-11 00:00:00', '1', '1','1');
INSERT INTO game VALUES(SEQ_GAME_ID.nextval, 27000, 'gametitle2', 'explanation2', 'tag2','2024-04-11 00:00:00', '1', '1','1');

select GAME_TITLE as gameTitle,
      		GAME_PRICE as gamePrice,
      		GAME_TAG as gameTag,
            game_id as gameId
      from game
      order by game_id desc
      ;
--최신순

select GAME_TITLE as gameTitle,
      		GAME_PRICE as gamePrice,
      		GAME_TAG as gameTag,
            game_grade as grade
      from game
      order by game_grade desc
      ;
--인기순



SELECT * FROM game_buy;
INSERT INTO game VALUES();

SELECT * FROM comment_post;
INSERT INTO game VALUES();

SELECT * FROM gamereview;
INSERT INTO gamereview VALUES();

INSERT INTO wishlist VALUES();

SELECT * FROM board_post;
INSERT INTO board_post VALUES();

INSERT INTO login_log VALUES('2024-04-11','123.456.789.999','aaa','1');


commit;













