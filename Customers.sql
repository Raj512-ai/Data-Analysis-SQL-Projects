create database Mini_Project;
use mini_project;
CREATE TABLE customers (
    customer_id INT Primary key,
    name VARCHAR(100),
    email VARCHAR(100),
    phone varchar(50),
    created_at DATETIME
);
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (1, 'Thomas Owens', 'user1@example.com', '142-479-1945', '2024-10-14 16:01:12');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (2, 'Charles Grant', 'user2@example.com', '9153947511', '2023-11-25 15:45:24');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (3, 'Kaitlin Richards', 'user3@example.com', '2073473421', '2024-06-23 09:55:22');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (4, 'Christina Williams', 'user4@example.com', '586-605-5061x06', '2024-10-27 17:19:38');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (5, 'David Allen', 'user5@example.com', '(751)456-8289x1', '2023-10-29 02:43:00');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (6, 'Mark Duke', 'user6@example.com', '(144)957-2811', '2024-06-24 03:22:59');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (7, 'Briana Wright', 'user7@example.com', '223-833-9635', '2023-06-25 00:35:43');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (8, 'John Bryan', 'user8@example.com', '045.568.0798x27', '2025-02-15 17:57:04');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (9, 'Jason Thompson', 'user9@example.com', '1862659420', '2024-08-31 08:18:51');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (10, 'Shawn Hill', 'user10@example.com', '(268)113-3152x7', '2023-12-14 20:46:43');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (11, 'Walter Jenkins', 'user11@example.com', '536-329-0817x71', '2023-10-26 03:12:30');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (12, 'Mary Knight', 'user12@example.com', '361-636-3802', '2023-08-16 20:05:50');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (13, 'Leslie Wilson', 'user13@example.com', '+1-256-261-1984', '2024-06-06 20:12:35');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (14, 'Deborah Arias', 'user14@example.com', '811-821-2144x97', '2024-04-24 00:27:28');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (15, 'Austin Flores', 'user15@example.com', '329.901.1576x66', '2024-06-13 09:03:42');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (16, 'Amy Landry', 'user16@example.com', '+1-278-019-3748', '2024-02-28 17:51:50');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (17, 'Randy Mooney', 'user17@example.com', '(158)927-7313x3', '2023-09-21 13:23:02');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (18, 'Jeffrey Bray', 'user18@example.com', '164.962.0222x92', '2024-07-02 19:51:55');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (19, 'Amanda Bright', 'user19@example.com', '380.981.9798x69', '2024-12-20 22:58:15');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (20, 'Megan Lee', 'user20@example.com', '7044478333', '2024-07-09 16:13:14');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (21, 'Jessica Zamora', 'user21@example.com', '177-816-7773x00', '2023-11-11 04:46:03');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (22, 'Peter Phillips', 'user22@example.com', '389-656-1695', '2025-05-22 06:12:06');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (23, 'Kathryn Mathews', 'user23@example.com', '001-707-722-178', '2023-12-21 15:30:24');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (24, 'Brandy Wright', 'user24@example.com', '853.520.8915x61', '2024-07-09 17:09:19');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (25, 'Cindy Hart', 'user25@example.com', '617.574.8421x41', '2025-05-27 18:02:54');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (26, 'Victoria Hall', 'user26@example.com', '926-840-0016', '2024-03-08 16:43:52');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (27, 'Adrienne Green', 'user27@example.com', '530.644.8455x93', '2023-08-22 01:55:29');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (28, 'Joseph Stuart', 'user28@example.com', '363-045-4287', '2023-09-14 05:52:25');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (29, 'Kara Zavala', 'user29@example.com', '434-985-5776x61', '2023-09-27 15:57:09');
INSERT INTO customers (customer_id, name, email, phone, created_at) VALUES (30, 'Victoria Acevedo', 'user30@example.com', '+1-325-063-7244', '2023-11-28 12:30:59');
select * from customers;
