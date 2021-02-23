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

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capítulo vamos começar', 1, 'http://s2.glbimg.com/Xdw2Ii3YcKAYkFlejYOFmqEms84=/695x0/s.glbimg.com/po/tt2/f/original/2014/03/11/veja-como-resolver-problemas-com-o-java-no-pc.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste capítulo vamos continuar', 2, 'http://s2.glbimg.com/Xdw2Ii3YcKAYkFlejYOFmqEms84=/695x0/s.glbimg.com/po/tt2/f/original/2014/03/11/veja-como-resolver-problemas-com-o-java-no-pc.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste capítulo vamos finalizar', 3, 'http://s2.glbimg.com/Xdw2Ii3YcKAYkFlejYOFmqEms84=/695x0/s.glbimg.com/po/tt2/f/original/2014/03/11/veja-como-resolver-problemas-com-o-java-no-pc.jpg', 1, 2);

INSERT INTO tb_enrollment (availabe, only_Update, enroll_Moment, refund_Moment, user_id, offer_id) VALUES (true, false, TIMESTAMP WITH TIME ZONE '2021-02-22T20:50:07.12345Z', null, 1, 1);
INSERT INTO tb_enrollment (availabe, only_Update, enroll_Moment, refund_Moment, user_id, offer_id) VALUES (true, false, TIMESTAMP WITH TIME ZONE '2021-02-22T20:50:07.12345Z', null, 2, 1);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capitulo 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de Apoio', 'https://www.youtube.com/watch?v=wRXdDK3zGZs');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capitulo 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, '', 'https://www.youtube.com/watch?v=wRXdDK3zGZs');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capitulo 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, '', 'https://www.youtube.com/watch?v=wRXdDK3zGZs');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capítulo 1', 4, 1);
INSERT INTO tb_task(id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Fazer um trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2021-02-28T20:50:07.12345Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);