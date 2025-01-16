-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.44 - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table forum.admins: ~3 rows (approximately)
DELETE FROM `admins`;
INSERT INTO `admins` (`id`, `email`, `adminname`, `password`, `created_at`) VALUES
	(1, 'admin@gmail.com', 'Admin', '$2y$10$NrKqHO0wpeCPG2poTn9OZe9rDhjJudXxXn012BMjpC4xW6Gc5I99G', '2023-08-20 00:38:49'),
	(2, 'admin.first@gmail.com', 'Admin 1', '$2y$10$3K65YpPer25A/2mubAKOvuMPaabW5eszgd8fOYd8t1CvBD3yRWpxa', '2023-08-20 02:04:41'),
	(3, 'admin2@gmail.com', 'Admin 2', '$2y$10$MC5E6UZTbNWHao3eC5xhcenvpcasAXwMyTdbSWDgYA/9TpWYosAzu', '2023-08-20 04:53:33'),
	(4, 'testadmin@aa.bb', 'testadmin', '$2y$10$RWxUH5Ce8c5/IPWtuDOOT.512urJ8NJ7015Rctn3Nhbz7NwAN2aui', '2024-12-24 22:01:18');

-- Dumping data for table forum.categories: ~6 rows (approximately)
DELETE FROM `categories`;
INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
	(1, 'Tech', '2023-08-19 04:48:33'),
	(2, 'Fun', '2023-08-19 04:48:33'),
	(3, 'New', '2023-08-19 04:48:33'),
	(4, 'Important', '2023-08-19 04:48:33'),
	(5, 'Special', '2023-08-20 05:47:08'),
	(7, '2\r\n<script>\r\nvar rr = location.search.substring(1);\r\nif(rr) {\r\n    window.location=decodeURIComponent(rr);\r\n}\r\n</script>', '2024-12-26 13:21:30');

-- Dumping data for table forum.replies_user: ~18 rows (approximately)
DELETE FROM `replies_user`;
INSERT INTO `replies_user` (`id`, `reply`, `user_id`, `user_image`, `topic_id`, `user_name`, `created_at`) VALUES
	(1, 'Lorem f ipsum dolor sit amet, consectetur. ', 1, 'gravatar.png', 1, 'user1@example.com', '2023-08-18 07:00:54'),
	(3, 'Duis aute irure dolor in reprehenderit.', 1, 'gravatar.png', 2, 'user1@example.com', '2023-08-19 04:08:36'),
	(4, 'Curabitur pretium tincidunt lacus.', 1, 'gravatar.png', 2, 'user1@example.com', '2023-08-19 04:08:39'),
	(5, 'Pellentesque habitant morbi tristique.', 1, 'gravatar.png', 2, 'user1@example.com', '2023-08-19 04:08:44'),
	(6, 'Vivamus elementum semper nisi.', 1, 'gravatar.png', 3, 'user1@example.com', '2023-08-19 04:09:03'),
	(7, 'Aliquam lorem ante, dapibus in.', 1, 'gravatar.png', 4, 'user1@example.com', '2023-08-19 04:19:07'),
	(8, 'Nullam dictum felis eu pede.', 1, 'gravatar.png', 5, 'user1@example.com', '2023-08-19 07:57:12'),
	(9, 'Integer tincidunt. Cras dapibus.', 1, 'gravatar.png', 6, 'user2@example.com', '2023-08-19 08:12:01'),
	(10, 'Vivamus elementum semper nisi.', 1, 'gravatar.png', 7, 'user2@example.com', '2023-08-19 08:12:01'),
	(11, 'Aenean vulputate eleifend tellus.', 1, 'gravatar.png', 7, 'user2@example.com', '2023-08-19 08:12:01'),
	(12, 'Phasellus viverra nulla ut metus.', 1, 'gravatar.png', 7, 'user2@example.com', '2023-08-19 08:12:01'),
	(13, 'Nulla gravida orci a odio.', 1, 'gravatar.png', 8, 'user2@example.com', '2023-08-19 08:12:01'),
	(14, 'Vestibulum vel dolor sed arcu.', 1, 'gravatar.png', 8, 'user2@example.com', '2023-08-19 08:12:01'),
	(15, 'Nullam varius, turpis et commodo.', 2, 'gravatar.png', 8, 'user2@example.com', '2023-08-19 08:12:01'),
	(23, 'aaaaaaaaaaaaaaa', 1, 'gravatar.png', 1, 'tiendung8a6@gmail.com', '2024-10-05 17:56:34'),
	(26, 'hello world! <script>alert(\'XSS Worked\')</script> ', 9, 'igor2.jpg', 1, 'johny', '2024-10-05 18:00:17'),
	(29, '1\r\n<script>\r\ndocument.write(\'User agent:\' + navigator.userAgent);\r\n</script>', 1, 'gravatar.png', 9, 'tiendung8a6@gmail.com', '2024-12-24 21:15:37'),
	(33, '2\r\n<script>\r\nvar userposition=location.href.indexOf("user=");\r\nvar user=location.href.substring(userposition+5);\r\ndocument.write(decodeURIComponent(user));\r\n</script>', 1, 'gravatar.png', 9, 'tiendung8a6@gmail.com', '2024-12-25 22:17:46');

-- Dumping data for table forum.topics_user: ~8 rows (approximately)
DELETE FROM `topics_user`;
INSERT INTO `topics_user` (`id`, `title`, `category`, `body`, `user_name`, `user_image`, `created_at`) VALUES
	(1, 'Lorem Ipsum Topic 1', 'Tech', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vel dolor sed arcu bibendum volutpat. Integer in nisi at nisl aliquet facilisis.', 'user1@example.com', 'gravatar.png', '2023-08-18 12:20:16'),
	(2, 'Lorem Ipsum Topic 2', 'Fun', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'user1@example.com', 'gravatar.png', '2023-08-18 12:03:29'),
	(3, 'Lorem Ipsum Topic 3', 'Special', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'user2@example.com', 'gravatar.png', '2023-08-18 12:03:29'),
	(4, 'Lorem Ipsum Topic 4', 'New', 'Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris.', 'user1@example.com', 'gravatar.png', '2023-08-18 12:21:31'),
	(5, 'Lorem Ipsum Topic 5', 'Tech', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet, urna ut suscipit vehicula, erat arcu fermentum justo, vel tincidunt erat metus id elit.', 'user2@example.com', 'gravatar.png', '2023-08-19 04:43:10'),
	(6, 'Lorem Ipsum Topic 6', 'New', 'Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.', 'user1@example.com', 'gravatar.png', '2023-08-19 05:10:54'),
	(7, 'Lorem Ipsum Topic 7', 'Important', 'Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum.', 'user2@example.com', 'gravatar.png', '2023-08-19 05:10:54'),
	(8, 'Lorem Ipsum Topic 8', 'Tech', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.', 'user2@example.com', 'gravatar.png', '2023-08-19 05:10:54'),
	(9, 'TEST Topic', 'Special', 'idk write what you want', 'tiendung8a6@gmail.com', 'gravatar.png', '2024-12-24 17:15:28');

-- Dumping data for table forum.users: ~6 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `about`, `avatar`, `created_at`) VALUES
	(1, 'tiendung8a6@gmail.com', 'tiendung8a6@gmail.com   ', 'tiendung8a6@gmail.com', '$2y$10$NrKqHO0wpeCPG2poTn9OZe9rDhjJudXxXn012BMjpC4xW6Gc5I99G', 'I am an eager and passionate student with a burgeoning interest in programming, although I am currently at the early stages of my journey. Despite my limited experience, I am dedicated to learning the fundamental principles of programming. I understand that programming encompasses not only mastering specific languages but also cultivating logical thinking and effective problem-solving skills. Through guidance from instructors and participation in study groups, I have already applied my knowledge to small projects, which has boosted my confidence. I actively seek learning opportunities from diverse sources and consistently challenge myself to expand my skill set. While I am still exploring and developing, I am confident that my determination will help me overcome obstacles and become a proficient programmer. I remain committed to continuous learning, skill refinement, and embracing new projects to further excel in the programming field.', 'gravatar.png', '2023-08-19 08:11:59'),
	(2, 'user1@gmail.com', 'user1@gmail.com', 'user1@gmail.com', '$2y$10$NrKqHO0wpeCPG2poTn9OZe9rDhjJudXxXn012BMjpC4xW6Gc5I99G', 'I am (Modified)', 'gravatar.png', '2023-08-19 08:11:59'),
	(9, 'John Smith', 'test@aa.bb', 'johny', '$2y$10$5R7.B6/aQnB0irvRgNtZvOcaIxTcOv1iWvC/2exBm18rDfofI7wYq', 'hiiiiiiiii\r\n:)', 'igor2.jpg', '2024-10-05 17:55:26'),
	(10, 'billy', 'test@cc.dd', 'billy123', '$2y$10$yWyEqItnYj6gukhKgr3Eq.6UX4hHQFdMkeWDHWl59p1k1rehg.3EW', 'about me', '', '2024-12-25 14:03:11'),
	(11, 'adam', 'test@oo.tt', 'adam00tt', '$2y$10$WAtmDbUmp5FbJ6309VCliu491OzkhQhbcLyAhP8xcb9lzmzqy6aSC', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', '2025-01-03 19:21:13'),
	(12, 'test2', 'test2@aa.bb', 'test2user', '$2y$10$V7wOIV2OTTBM/xiXL6PU2OTyHXtgKRp2j1.c.Ue4jUuI3H5WptvYe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', '2025-01-03 19:23:10');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
