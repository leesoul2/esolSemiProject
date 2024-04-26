SELECT * FROM member;
INSERT INTO member VALUES('aaa','abc','abc@gmail.com');
INSERT INTO member VALUES('aab','abcd','ab@gmail.com');
INSERT INTO member VALUES('aac','abcde','a@gmail.com');
INSERT INTO member VALUES('test','kh','a@gmail.com');

SELECT * FROM board;
INSERT INTO board VALUES(105,'aaa','제목','내용내용','20240412','20240412','','','','','');

SELECT * FROM board_file;
INSERT INTO board_file VALUES(1,105,'파일경로명','파일명');

SELECT * FROM COMMENTS;
INSERT INTO COMMENTS VALUES(1,105,'댓글내용','20240411','aaa');
INSERT INTO COMMENTS VALUES(2,105,'댓글내용','20240411','aab');
INSERT INTO COMMENTS VALUES(3,105,'댓글내용','20240411','aac');

SELECT * FROM game;
INSERT INTO game VALUES(1001, 24000, 'gametitle', 'explanation', 'tag','2024-04-11 00:00:00', '1', '1','1');

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
















