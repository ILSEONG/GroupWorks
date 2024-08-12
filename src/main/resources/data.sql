INSERT INTO xe.department (department_id, contact_number, department_name, location)
VALUES (1, '010-1234-5678', '기술부서', 'A동'),
       (2, '010-1234-5679', '마케팅부서', 'B동'),
       (3, '010-1234-5680', '영업부서', 'C동'),
       (4, '010-1234-5681', '인사부서', 'D동'),
       (5, '010-1234-5682', '재무부서', 'E동'),
       (6, '010-1234-5683', 'IT 지원부서', 'F동'),
       (7, '010-1234-5684', '제품 관리부서', 'G동'),
       (8, '010-1234-5685', '고객 서비스부서', 'H동'),
       (9, '010-1234-5686', '법무부서', 'I동'),
       (10, '010-1234-5687', '연구개발부서', 'J동');


INSERT INTO xe.employee (is_active, rank_id, created_date, department_id, last_modified_date, salary, supervisor_id,
                         address, email, employee_name, employee_pw, gender, phone_number, rank_name)
VALUES (1, 5, '2021-01-01 00:00:00', 1, NULL, 30000, 0, '주소 1', 'employee1@gw.com', '사원1',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1100', '부장'),
       (1, 4, '2022-01-01 00:00:00', 1, NULL, 30010, 1, '주소 2', 'employee2@gw.com', '사원2',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1101', '차장'),
       (1, 3, '2023-01-01 00:00:00', 1, NULL, 30020, 2, '주소 3', 'employee3@gw.com', '사원3',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1102', '과장'),
       (1, 3, '2023-01-01 00:00:00', 1, NULL, 30030, 2, '주소 4', 'employee4@gw.com', '사원4',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1103', '과장'),
       (1, 2, '2023-06-01 00:00:00', 1, NULL, 30040, 4, '주소 5', 'employee5@gw.com', '사원5',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1104', '대리'),
       (1, 2, '2023-06-01 00:00:00', 1, NULL, 30050, 4, '주소 6', 'employee6@gw.com', '사원6',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1105', '대리'),
       (1, 1, '2024-01-01 00:00:00', 1, NULL, 30060, 6, '주소 7', 'employee7@gw.com', '사원7',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1106', '사원'),
       (1, 1, '2024-01-01 00:00:00', 1, NULL, 30070, 6, '주소 8', 'employee8@gw.com', '사원8',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1107', '사원'),
       (1, 1, '2024-01-01 00:00:00', 1, NULL, 30080, 6, '주소 9', 'employee9@gw.com', '사원9',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1108', '사원'),
       (1, 1, '2024-01-01 00:00:00', 1, NULL, 30090, 6, '주소 10', 'employee10@gw.com', '사원10',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1109', '사원');
INSERT INTO xe.employee (is_active, rank_id, created_date, department_id, last_modified_date, salary, supervisor_id,
                         address, email, employee_name, employee_pw, gender, phone_number, rank_name)
VALUES (1, 5, '2021-01-01 00:00:00', 2, NULL, 30100, 0, '주소 11', 'employee11@gw.com', '사원11',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1110', '부장'),
       (1, 4, '2022-01-01 00:00:00', 2, NULL, 30110, 11, '주소 12', 'employee12@gw.com', '사원12',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1111', '차장'),
       (1, 3, '2023-01-01 00:00:00', 2, NULL, 30120, 12, '주소 13', 'employee13@gw.com', '사원13',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1112', '과장'),
       (1, 3, '2023-01-01 00:00:00', 2, NULL, 30130, 12, '주소 14', 'employee14@gw.com', '사원14',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1113', '과장'),
       (1, 2, '2023-06-01 00:00:00', 2, NULL, 30140, 14, '주소 15', 'employee15@gw.com', '사원15',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1114', '대리'),
       (1, 2, '2023-06-01 00:00:00', 2, NULL, 30150, 14, '주소 16', 'employee16@gw.com', '사원16',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1115', '대리'),
       (1, 1, '2024-01-01 00:00:00', 2, NULL, 30160, 16, '주소 17', 'employee17@gw.com', '사원17',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1116', '사원'),
       (1, 1, '2024-01-01 00:00:00', 2, NULL, 30170, 16, '주소 18', 'employee18@gw.com', '사원18',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1117', '사원'),
       (1, 1, '2024-01-01 00:00:00', 2, NULL, 30180, 16, '주소 19', 'employee19@gw.com', '사원19',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1118', '사원'),
       (1, 1, '2024-01-01 00:00:00', 2, NULL, 30190, 16, '주소 20', 'employee20@gw.com', '사원20',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1119', '사원');
INSERT INTO xe.employee (is_active, rank_id, created_date, department_id, last_modified_date, salary, supervisor_id,
                         address, email, employee_name, employee_pw, gender, phone_number, rank_name)
VALUES (1, 5, '2021-01-01 00:00:00', 3, NULL, 30200, 0, '주소 21', 'employee21@gw.com', '사원21',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1120', '부장'),
       (1, 4, '2022-01-01 00:00:00', 3, NULL, 30210, 21, '주소 22', 'employee22@gw.com', '사원22',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1121', '차장'),
       (1, 3, '2023-01-01 00:00:00', 3, NULL, 30220, 22, '주소 23', 'employee23@gw.com', '사원23',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1122', '과장'),
       (1, 3, '2023-01-01 00:00:00', 3, NULL, 30230, 22, '주소 24', 'employee24@gw.com', '사원24',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1123', '과장'),
       (1, 2, '2023-06-01 00:00:00', 3, NULL, 30240, 24, '주소 25', 'employee25@gw.com', '사원25',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1124', '대리'),
       (1, 2, '2023-06-01 00:00:00', 3, NULL, 30250, 24, '주소 26', 'employee26@gw.com', '사원26',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1125', '대리'),
       (1, 1, '2024-01-01 00:00:00', 3, NULL, 30260, 26, '주소 27', 'employee27@gw.com', '사원27',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1126', '사원'),
       (1, 1, '2024-01-01 00:00:00', 3, NULL, 30270, 26, '주소 28', 'employee28@gw.com', '사원28',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1127', '사원'),
       (1, 1, '2024-01-01 00:00:00', 3, NULL, 30280, 26, '주소 29', 'employee29@gw.com', '사원29',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1128', '사원'),
       (1, 1, '2024-01-01 00:00:00', 3, NULL, 30290, 26, '주소 30', 'employee30@gw.com', '사원30',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1129', '사원');
INSERT INTO xe.employee (is_active, rank_id, created_date, department_id, last_modified_date, salary, supervisor_id,
                         address, email, employee_name, employee_pw, gender, phone_number, rank_name)
VALUES (1, 5, '2021-01-01 00:00:00', 4, NULL, 30300, 0, '주소 31', 'employee31@gw.com', '사원31',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1130', '부장'),
       (1, 4, '2022-01-01 00:00:00', 4, NULL, 30310, 31, '주소 32', 'employee32@gw.com', '사원32',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1131', '차장'),
       (1, 3, '2023-01-01 00:00:00', 4, NULL, 30320, 32, '주소 33', 'employee33@gw.com', '사원33',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1132', '과장'),
       (1, 3, '2023-01-01 00:00:00', 4, NULL, 30330, 32, '주소 34', 'employee34@gw.com', '사원34',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1133', '과장'),
       (1, 2, '2023-06-01 00:00:00', 4, NULL, 30340, 34, '주소 35', 'employee35@gw.com', '사원35',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1134', '대리'),
       (1, 2, '2023-06-01 00:00:00', 4, NULL, 30350, 34, '주소 36', 'employee36@gw.com', '사원36',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1135', '대리'),
       (1, 1, '2024-01-01 00:00:00', 4, NULL, 30360, 36, '주소 37', 'employee37@gw.com', '사원37',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1136', '사원'),
       (1, 1, '2024-01-01 00:00:00', 4, NULL, 30370, 36, '주소 38', 'employee38@gw.com', '사원38',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1137', '사원'),
       (1, 1, '2024-01-01 00:00:00', 4, NULL, 30380, 36, '주소 39', 'employee39@gw.com', '사원39',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1138', '사원'),
       (1, 1, '2024-01-01 00:00:00', 4, NULL, 30390, 36, '주소 40', 'employee40@gw.com', '사원40',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1139', '사원');
INSERT INTO xe.employee (is_active, rank_id, created_date, department_id, last_modified_date, salary, supervisor_id,
                         address, email, employee_name, employee_pw, gender, phone_number, rank_name)
VALUES (1, 5, '2021-01-01 00:00:00', 5, NULL, 30400, 0, '주소 41', 'employee41@gw.com', '사원41',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1140', '부장'),
       (1, 4, '2022-01-01 00:00:00', 5, NULL, 30410, 41, '주소 42', 'employee42@gw.com', '사원42',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1141', '차장'),
       (1, 3, '2023-01-01 00:00:00', 5, NULL, 30420, 42, '주소 43', 'employee43@gw.com', '사원43',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1142', '과장'),
       (1, 3, '2023-01-01 00:00:00', 5, NULL, 30430, 42, '주소 44', 'employee44@gw.com', '사원44',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1143', '과장'),
       (1, 2, '2023-06-01 00:00:00', 5, NULL, 30440, 44, '주소 45', 'employee45@gw.com', '사원45',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1144', '대리'),
       (1, 2, '2023-06-01 00:00:00', 5, NULL, 30450, 44, '주소 46', 'employee46@gw.com', '사원46',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1145', '대리'),
       (1, 1, '2024-01-01 00:00:00', 5, NULL, 30460, 46, '주소 47', 'employee47@gw.com', '사원47',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1146', '사원'),
       (1, 1, '2024-01-01 00:00:00', 5, NULL, 30470, 46, '주소 48', 'employee48@gw.com', '사원48',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1147', '사원'),
       (1, 1, '2024-01-01 00:00:00', 5, NULL, 30480, 46, '주소 49', 'employee49@gw.com', '사원49',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1148', '사원'),
       (1, 1, '2024-01-01 00:00:00', 5, NULL, 30490, 46, '주소 50', 'employee50@gw.com', '사원50',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1149', '사원');
INSERT INTO xe.employee (is_active, rank_id, created_date, department_id, last_modified_date, salary, supervisor_id,
                         address, email, employee_name, employee_pw, gender, phone_number, rank_name)
VALUES (1, 5, '2021-01-01 00:00:00', 6, NULL, 30500, 0, '주소 51', 'employee51@gw.com', '사원51',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1150', '부장'),
       (1, 4, '2022-01-01 00:00:00', 6, NULL, 30510, 51, '주소 52', 'employee52@gw.com', '사원52',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1151', '차장'),
       (1, 3, '2023-01-01 00:00:00', 6, NULL, 30520, 52, '주소 53', 'employee53@gw.com', '사원53',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1152', '과장'),
       (1, 3, '2023-01-01 00:00:00', 6, NULL, 30530, 52, '주소 54', 'employee54@gw.com', '사원54',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1153', '과장'),
       (1, 2, '2023-06-01 00:00:00', 6, NULL, 30540, 54, '주소 55', 'employee55@gw.com', '사원55',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1154', '대리'),
       (1, 2, '2023-06-01 00:00:00', 6, NULL, 30550, 54, '주소 56', 'employee56@gw.com', '사원56',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1155', '대리'),
       (1, 1, '2024-01-01 00:00:00', 6, NULL, 30560, 56, '주소 57', 'employee57@gw.com', '사원57',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1156', '사원'),
       (1, 1, '2024-01-01 00:00:00', 6, NULL, 30570, 56, '주소 58', 'employee58@gw.com', '사원58',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1157', '사원'),
       (1, 1, '2024-01-01 00:00:00', 6, NULL, 30580, 56, '주소 59', 'employee59@gw.com', '사원59',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1158', '사원'),
       (1, 1, '2024-01-01 00:00:00', 6, NULL, 30590, 56, '주소 60', 'employee60@gw.com', '사원60',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1159', '사원');
INSERT INTO xe.employee (is_active, rank_id, created_date, department_id, last_modified_date, salary, supervisor_id,
                         address, email, employee_name, employee_pw, gender, phone_number, rank_name)
VALUES (1, 5, '2021-01-01 00:00:00', 7, NULL, 30600, 0, '주소 61', 'employee61@gw.com', '사원61',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1160', '부장'),
       (1, 4, '2022-01-01 00:00:00', 7, NULL, 30610, 61, '주소 62', 'employee62@gw.com', '사원62',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1161', '차장'),
       (1, 3, '2023-01-01 00:00:00', 7, NULL, 30620, 62, '주소 63', 'employee63@gw.com', '사원63',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1162', '과장'),
       (1, 3, '2023-01-01 00:00:00', 7, NULL, 30630, 62, '주소 64', 'employee64@gw.com', '사원64',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1163', '과장'),
       (1, 2, '2023-06-01 00:00:00', 7, NULL, 30640, 64, '주소 65', 'employee65@gw.com', '사원65',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1164', '대리'),
       (1, 2, '2023-06-01 00:00:00', 7, NULL, 30650, 64, '주소 66', 'employee66@gw.com', '사원66',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1165', '대리'),
       (1, 1, '2024-01-01 00:00:00', 7, NULL, 30660, 66, '주소 67', 'employee67@gw.com', '사원67',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1166', '사원'),
       (1, 1, '2024-01-01 00:00:00', 7, NULL, 30670, 66, '주소 68', 'employee68@gw.com', '사원68',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1167', '사원'),
       (1, 1, '2024-01-01 00:00:00', 7, NULL, 30680, 66, '주소 69', 'employee69@gw.com', '사원69',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1168', '사원'),
       (1, 1, '2024-01-01 00:00:00', 7, NULL, 30690, 66, '주소 70', 'employee70@gw.com', '사원70',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1169', '사원');
INSERT INTO xe.employee (is_active, rank_id, created_date, department_id, last_modified_date, salary, supervisor_id,
                         address, email, employee_name, employee_pw, gender, phone_number, rank_name)
VALUES (1, 5, '2021-01-01 00:00:00', 8, NULL, 30700, 0, '주소 71', 'employee71@gw.com', '사원71',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1170', '부장'),
       (1, 4, '2022-01-01 00:00:00', 8, NULL, 30710, 71, '주소 72', 'employee72@gw.com', '사원72',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1171', '차장'),
       (1, 3, '2023-01-01 00:00:00', 8, NULL, 30720, 72, '주소 73', 'employee73@gw.com', '사원73',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1172', '과장'),
       (1, 3, '2023-01-01 00:00:00', 8, NULL, 30730, 72, '주소 74', 'employee74@gw.com', '사원74',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1173', '과장'),
       (1, 2, '2023-06-01 00:00:00', 8, NULL, 30740, 74, '주소 75', 'employee75@gw.com', '사원75',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1174', '대리'),
       (1, 2, '2023-06-01 00:00:00', 8, NULL, 30750, 74, '주소 76', 'employee76@gw.com', '사원76',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1175', '대리'),
       (1, 1, '2024-01-01 00:00:00', 8, NULL, 30760, 76, '주소 77', 'employee77@gw.com', '사원77',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1176', '사원'),
       (1, 1, '2024-01-01 00:00:00', 8, NULL, 30770, 76, '주소 78', 'employee78@gw.com', '사원78',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1177', '사원'),
       (1, 1, '2024-01-01 00:00:00', 8, NULL, 30780, 76, '주소 79', 'employee79@gw.com', '사원79',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1178', '사원'),
       (1, 1, '2024-01-01 00:00:00', 8, NULL, 30790, 76, '주소 80', 'employee80@gw.com', '사원80',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1179', '사원');
INSERT INTO xe.employee (is_active, rank_id, created_date, department_id, last_modified_date, salary, supervisor_id,
                         address, email, employee_name, employee_pw, gender, phone_number, rank_name)
VALUES (1, 5, '2021-01-01 00:00:00', 9, NULL, 30800, 0, '주소 81', 'employee81@gw.com', '사원81',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1180', '부장'),
       (1, 4, '2022-01-01 00:00:00', 9, NULL, 30810, 81, '주소 82', 'employee82@gw.com', '사원82',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1181', '차장'),
       (1, 3, '2023-01-01 00:00:00', 9, NULL, 30820, 82, '주소 83', 'employee83@gw.com', '사원83',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1182', '과장'),
       (1, 3, '2023-01-01 00:00:00', 9, NULL, 30830, 82, '주소 84', 'employee84@gw.com', '사원84',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1183', '과장'),
       (1, 2, '2023-06-01 00:00:00', 9, NULL, 30840, 84, '주소 85', 'employee85@gw.com', '사원85',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1184', '대리'),
       (1, 2, '2023-06-01 00:00:00', 9, NULL, 30850, 84, '주소 86', 'employee86@gw.com', '사원86',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1185', '대리'),
       (1, 1, '2024-01-01 00:00:00', 9, NULL, 30860, 86, '주소 87', 'employee87@gw.com', '사원87',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1186', '사원'),
       (1, 1, '2024-01-01 00:00:00', 9, NULL, 30870, 86, '주소 88', 'employee88@gw.com', '사원88',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1187', '사원'),
       (1, 1, '2024-01-01 00:00:00', 9, NULL, 30880, 86, '주소 89', 'employee89@gw.com', '사원89',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1188', '사원'),
       (1, 1, '2024-01-01 00:00:00', 9, NULL, 30890, 86, '주소 90', 'employee90@gw.com', '사원90',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1189', '사원');
INSERT INTO xe.employee (is_active, rank_id, created_date, department_id, last_modified_date, salary, supervisor_id,
                         address, email, employee_name, employee_pw, gender, phone_number, rank_name)
VALUES (1, 5, '2021-01-01 00:00:00', 10, NULL, 30900, 0, '주소 91', 'employee91@gw.com', '사원91',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1190', '부장'),
       (1, 4, '2022-01-01 00:00:00', 10, NULL, 30910, 91, '주소 92', 'employee92@gw.com', '사원92',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1191', '차장'),
       (1, 3, '2023-01-01 00:00:00', 10, NULL, 30920, 92, '주소 93', 'employee93@gw.com', '사원93',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1192', '과장'),
       (1, 3, '2023-01-01 00:00:00', 10, NULL, 30930, 92, '주소 94', 'employee94@gw.com', '사원94',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1193', '과장'),
       (1, 2, '2023-06-01 00:00:00', 10, NULL, 30940, 94, '주소 95', 'employee95@gw.com', '사원95',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1194', '대리'),
       (1, 2, '2023-06-01 00:00:00', 10, NULL, 30950, 94, '주소 96', 'employee96@gw.com', '사원96',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1195', '대리'),
       (1, 1, '2024-01-01 00:00:00', 10, NULL, 30960, 96, '주소 97', 'employee97@gw.com', '사원97',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1196', '사원'),
       (1, 1, '2024-01-01 00:00:00', 10, NULL, 30970, 96, '주소 98', 'employee98@gw.com', '사원98',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1197', '사원'),
       (1, 1, '2024-01-01 00:00:00', 10, NULL, 30980, 96, '주소 99', 'employee99@gw.com', '사원99',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '여', '010-1111-1198', '사원'),
       (1, 1, '2024-01-01 00:00:00', 10, NULL, 30990, 96, '주소 100', 'employee100@gw.com', '사원100',
        '$2a$10$Vg4CIc8WunwnKoV2.j9J.uPep8BgLAzb2VelL89I.hGiLBDNoybpO', '남', '010-1111-1199', '사원');
commit;