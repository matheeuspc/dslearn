INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 'https://static.thenounproject.com/png/2311782-200.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0.0', TIMESTAMP WITH TIME ZONE '2020-07-13T20:50:07.12345Z', TIMESTAMP WITH TIME ZONE '2021-07-13T20:50:07.12345Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0.0', TIMESTAMP WITH TIME ZONE '2019-02-01T20:50:07.12345Z', TIMESTAMP WITH TIME ZONE '2021-02-01T20:50:07.12345Z', 1);

INSERT INTO tb_notification (text, moment, read, rout, user_id) VALUES ('Bem vindo!', TIMESTAMP WITH TIME ZONE '2021-02-22T20:50:07.12345Z', FALSE, 'ROUTE', 1);
INSERT INTO tb_notification (text, moment, read, rout, user_id) VALUES ('Até logo!', TIMESTAMP WITH TIME ZONE '2021-02-22T20:50:07.12345Z', FALSE, 'ROUTE', 1);
INSERT INTO tb_notification (text, moment, read, rout, user_id) VALUES ('Bem vindo!', TIMESTAMP WITH TIME ZONE '2021-02-22T20:50:07.12345Z', FALSE, 'ROUTE', 2);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha Java', 'trilha voltada para desenvolvimento backend', 1, 'http://s2.glbimg.com/Xdw2Ii3YcKAYkFlejYOFmqEms84=/695x0/s.glbimg.com/po/tt2/f/original/2014/03/11/veja-como-resolver-problemas-com-o-java-no-pc.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Fórum', 'tire suas dúvidas', 2, 'http://s2.glbimg.com/Xdw2Ii3YcKAYkFlejYOFmqEms84=/695x0/s.glbimg.com/po/tt2/f/original/2014/03/11/veja-como-resolver-problemas-com-o-java-no-pc.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'trilha voltada para desenvolvimento backend', 3, 'http://s2.glbimg.com/Xdw2Ii3YcKAYkFlejYOFmqEms84=/695x0/s.glbimg.com/po/tt2/f/original/2014/03/11/veja-como-resolver-problemas-com-o-java-no-pc.jpg', 0, 1);
