SELECT * FROM member;
INSERT INTO member VALUES('aaa','abc','abc@gmail.com');
INSERT INTO member VALUES('aab','abcd','ab@gmail.com');
INSERT INTO member VALUES('aac','abcde','a@gmail.com');
INSERT INTO member VALUES('test','kh','a@gmail.com');


INSERT INTO login_log VALUES('2024-04-11','123.456.789.999','aaa','1');

SELECT * FROM board;
INSERT INTO board VALUES(105,'aaa','제목','내용내용','20240412','20240412','','','','','');

SELECT * FROM board_post;
INSERT INTO board_post VALUES();

SELECT * FROM board_file;
INSERT INTO board_file VALUES();


SELECT * FROM COMMENTS;
INSERT INTO COMMENTS VALUES('1','1','댓글내용','20240411','aaa');
INSERT INTO COMMENTS VALUES('2','1','댓글내용','20240411','aab');
INSERT INTO COMMENTS VALUES('3','2','댓글내용','20240411','aac');

INSERT INTO wishlist VALUES();

SELECT * FROM game;
INSERT INTO game VALUES(1001, 24000, 'gametitle', 'explanation', 'tag','2024-04-11 00:00:00', '1', '1');

SELECT * FROM gamereview;
INSERT INTO gamereview VALUES();

