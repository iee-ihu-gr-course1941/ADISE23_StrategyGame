-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for adise23
DROP DATABASE IF EXISTS `adise23`;
CREATE DATABASE IF NOT EXISTS `adise23` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `adise23`;

-- Dumping structure for table adise23.board
DROP TABLE IF EXISTS `board`;
CREATE TABLE IF NOT EXISTS `board` (
  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
  `b_color` enum('W','G') NOT NULL,
  `piece_color` enum('B','R') DEFAULT NULL,
  `piece` enum('1','2','3','4','5','6','7','8','9','S','B','F') DEFAULT NULL,
  PRIMARY KEY (`y`,`x`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adise23.board: ~100 rows (approximately)
INSERT INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES
	(1, 1, 'W', 'R', 'F'),
	(2, 1, 'W', 'R', 'B'),
	(3, 1, 'W', 'R', 'B'),
	(4, 1, 'W', 'R', '8'),
	(5, 1, 'W', 'R', '8'),
	(6, 1, 'W', 'R', '3'),
	(7, 1, 'W', 'R', '3'),
	(8, 1, 'W', 'R', '7'),
	(9, 1, 'W', 'R', '7'),
	(10, 1, 'W', 'R', '7'),
	(1, 2, 'W', 'R', '4'),
	(2, 2, 'W', 'R', '5'),
	(3, 2, 'W', 'R', '4'),
	(4, 2, 'W', 'R', '5'),
	(5, 2, 'W', 'R', '1'),
	(6, 2, 'W', 'R', '5'),
	(7, 2, 'W', 'R', '4'),
	(8, 2, 'W', 'R', '5'),
	(9, 2, 'W', 'R', '4'),
	(10, 2, 'W', 'R', 'B'),
	(1, 3, 'W', 'R', '6'),
	(2, 3, 'W', 'R', '3'),
	(3, 3, 'W', 'R', '6'),
	(4, 3, 'W', 'R', 'B'),
	(5, 3, 'W', 'R', '9'),
	(6, 3, 'W', 'R', '3'),
	(7, 3, 'W', 'R', 'B'),
	(8, 3, 'W', 'R', '6'),
	(9, 3, 'W', 'R', '3'),
	(10, 3, 'W', 'R', '6'),
	(1, 4, 'W', 'R', '2'),
	(2, 4, 'W', 'R', '2'),
	(3, 4, 'W', 'R', '2'),
	(4, 4, 'W', 'R', '2'),
	(5, 4, 'W', 'R', 'S'),
	(6, 4, 'W', 'R', '2'),
	(7, 4, 'W', 'R', '2'),
	(8, 4, 'W', 'R', '2'),
	(9, 4, 'W', 'R', '2'),
	(10, 4, 'W', 'R', 'B'),
	(1, 5, 'W', NULL, NULL),
	(2, 5, 'W', NULL, NULL),
	(3, 5, 'G', NULL, NULL),
	(4, 5, 'G', NULL, NULL),
	(5, 5, 'W', NULL, NULL),
	(6, 5, 'W', NULL, NULL),
	(7, 5, 'G', NULL, NULL),
	(8, 5, 'G', NULL, NULL),
	(9, 5, 'W', NULL, NULL),
	(10, 5, 'W', NULL, NULL),
	(1, 6, 'W', NULL, NULL),
	(2, 6, 'W', NULL, NULL),
	(3, 6, 'G', NULL, NULL),
	(4, 6, 'G', NULL, NULL),
	(5, 6, 'W', NULL, NULL),
	(6, 6, 'W', NULL, NULL),
	(7, 6, 'G', NULL, NULL),
	(8, 6, 'G', NULL, NULL),
	(9, 6, 'W', NULL, NULL),
	(10, 6, 'W', NULL, NULL),
	(1, 7, 'W', 'B', '2'),
	(2, 7, 'W', 'B', '3'),
	(3, 7, 'W', 'B', '6'),
	(4, 7, 'W', 'B', '3'),
	(5, 7, 'W', 'B', '8'),
	(6, 7, 'W', 'B', '8'),
	(7, 7, 'W', 'B', '7'),
	(8, 7, 'W', 'B', '6'),
	(9, 7, 'W', 'B', '7'),
	(10, 7, 'W', 'B', '5'),
	(1, 8, 'W', 'B', '5'),
	(2, 8, 'W', 'B', '2'),
	(3, 8, 'W', 'B', '9'),
	(4, 8, 'W', 'B', '7'),
	(5, 8, 'W', 'B', '6'),
	(6, 8, 'W', 'B', 'S'),
	(7, 8, 'W', 'B', '5'),
	(8, 8, 'W', 'B', '6'),
	(9, 8, 'W', 'B', '2'),
	(10, 8, 'W', 'B', '4'),
	(1, 9, 'W', 'B', '5'),
	(2, 9, 'W', 'B', '4'),
	(3, 9, 'W', 'B', 'B'),
	(4, 9, 'W', 'B', '4'),
	(5, 9, 'W', 'B', '4'),
	(6, 9, 'W', 'B', 'B'),
	(7, 9, 'W', 'B', '2'),
	(8, 9, 'W', 'B', '2'),
	(9, 9, 'W', 'B', '2'),
	(10, 9, 'W', 'B', '3'),
	(1, 10, 'W', 'B', '3'),
	(2, 10, 'W', 'B', 'B'),
	(3, 10, 'W', 'B', '3'),
	(4, 10, 'W', 'B', 'B'),
	(5, 10, 'W', 'B', 'B'),
	(6, 10, 'W', 'B', '2'),
	(7, 10, 'W', 'B', 'B'),
	(8, 10, 'W', 'B', '2'),
	(9, 10, 'W', 'B', '1'),
	(10, 10, 'W', 'B', 'F');

-- Dumping structure for table adise23.board_empty
DROP TABLE IF EXISTS `board_empty`;
CREATE TABLE IF NOT EXISTS `board_empty` (
  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
  `b_color` enum('W','G') NOT NULL,
  `piece_color` enum('B','R') DEFAULT NULL,
  `piece` enum('1','2','3','4','5','6','7','8','9','S','B','F') DEFAULT NULL,
  PRIMARY KEY (`y`,`x`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table adise23.board_empty: ~100 rows (approximately)
INSERT INTO `board_empty` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES
	(1, 1, 'W', 'R', 'F'),
	(2, 1, 'W', 'R', 'B'),
	(3, 1, 'W', 'R', 'B'),
	(4, 1, 'W', 'R', '8'),
	(5, 1, 'W', 'R', '8'),
	(6, 1, 'W', 'R', '3'),
	(7, 1, 'W', 'R', '3'),
	(8, 1, 'W', 'R', '7'),
	(9, 1, 'W', 'R', '7'),
	(10, 1, 'W', 'R', '7'),
	(1, 2, 'W', 'R', '4'),
	(2, 2, 'W', 'R', '5'),
	(3, 2, 'W', 'R', '4'),
	(4, 2, 'W', 'R', '5'),
	(5, 2, 'W', 'R', '1'),
	(6, 2, 'W', 'R', '5'),
	(7, 2, 'W', 'R', '4'),
	(8, 2, 'W', 'R', '5'),
	(9, 2, 'W', 'R', '4'),
	(10, 2, 'W', 'R', 'B'),
	(1, 3, 'W', 'R', '6'),
	(2, 3, 'W', 'R', '3'),
	(3, 3, 'W', 'R', '6'),
	(4, 3, 'W', 'R', 'B'),
	(5, 3, 'W', 'R', '9'),
	(6, 3, 'W', 'R', '3'),
	(7, 3, 'W', 'R', 'B'),
	(8, 3, 'W', 'R', '6'),
	(9, 3, 'W', 'R', '3'),
	(10, 3, 'W', 'R', '6'),
	(1, 4, 'W', 'R', '2'),
	(2, 4, 'W', 'R', '2'),
	(3, 4, 'W', 'R', '2'),
	(4, 4, 'W', 'R', '2'),
	(5, 4, 'W', 'R', 'S'),
	(6, 4, 'W', 'R', '2'),
	(7, 4, 'W', 'R', '2'),
	(8, 4, 'W', 'R', '2'),
	(9, 4, 'W', 'R', '2'),
	(10, 4, 'W', 'R', 'B'),
	(1, 5, 'W', NULL, NULL),
	(2, 5, 'W', NULL, NULL),
	(3, 5, 'G', NULL, NULL),
	(4, 5, 'G', NULL, NULL),
	(5, 5, 'W', NULL, NULL),
	(6, 5, 'W', NULL, NULL),
	(7, 5, 'G', NULL, NULL),
	(8, 5, 'G', NULL, NULL),
	(9, 5, 'W', NULL, NULL),
	(10, 5, 'W', NULL, NULL),
	(1, 6, 'W', NULL, NULL),
	(2, 6, 'W', NULL, NULL),
	(3, 6, 'G', NULL, NULL),
	(4, 6, 'G', NULL, NULL),
	(5, 6, 'W', NULL, NULL),
	(6, 6, 'W', NULL, NULL),
	(7, 6, 'G', NULL, NULL),
	(8, 6, 'G', NULL, NULL),
	(9, 6, 'W', NULL, NULL),
	(10, 6, 'W', NULL, NULL),
	(1, 7, 'W', 'B', '2'),
	(2, 7, 'W', 'B', '3'),
	(3, 7, 'W', 'B', '6'),
	(4, 7, 'W', 'B', '3'),
	(5, 7, 'W', 'B', '8'),
	(6, 7, 'W', 'B', '8'),
	(7, 7, 'W', 'B', '7'),
	(8, 7, 'W', 'B', '6'),
	(9, 7, 'W', 'B', '7'),
	(10, 7, 'W', 'B', '5'),
	(1, 8, 'W', 'B', '5'),
	(2, 8, 'W', 'B', '2'),
	(3, 8, 'W', 'B', '9'),
	(4, 8, 'W', 'B', '7'),
	(5, 8, 'W', 'B', '6'),
	(6, 8, 'W', 'B', 'S'),
	(7, 8, 'W', 'B', '5'),
	(8, 8, 'W', 'B', '6'),
	(9, 8, 'W', 'B', '2'),
	(10, 8, 'W', 'B', '4'),
	(1, 9, 'W', 'B', '5'),
	(2, 9, 'W', 'B', '4'),
	(3, 9, 'W', 'B', 'B'),
	(4, 9, 'W', 'B', '4'),
	(5, 9, 'W', 'B', '4'),
	(6, 9, 'W', 'B', 'B'),
	(7, 9, 'W', 'B', '2'),
	(8, 9, 'W', 'B', '2'),
	(9, 9, 'W', 'B', '2'),
	(10, 9, 'W', 'B', '3'),
	(1, 10, 'W', 'B', '3'),
	(2, 10, 'W', 'B', 'B'),
	(3, 10, 'W', 'B', '3'),
	(4, 10, 'W', 'B', 'B'),
	(5, 10, 'W', 'B', 'B'),
	(6, 10, 'W', 'B', '2'),
	(7, 10, 'W', 'B', 'B'),
	(8, 10, 'W', 'B', '2'),
	(9, 10, 'W', 'B', '1'),
	(10, 10, 'W', 'B', 'F');

-- Dumping structure for procedure adise23.check_endgame_state
DROP PROCEDURE IF EXISTS `check_endgame_state`;
DELIMITER //
CREATE PROCEDURE `check_endgame_state`()
BEGIN
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (1, 1, 'W', 'R', 'F');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (2, 1, 'W', 'R', 'B');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (3, 1, 'W', 'R', 'B');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (4, 1, 'W', 'R', '8');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (5, 1, 'W', 'R', '8');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (6, 1, 'W', 'R', '3');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (7, 1, 'W', 'R', '3');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (8, 1, 'W', 'R', '7');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (9, 1, 'W', 'R', '7');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (10, 1, 'W', 'R', '7');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (1, 2, 'W', 'R', '4');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (2, 2, 'W', 'R', '5');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (3, 2, 'W', 'R', '4');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (4, 2, 'W', 'R', '5');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (5, 2, 'W', 'R', '1');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (6, 2, 'W', 'R', '5');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (7, 2, 'W', 'R', '4');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (8, 2, 'W', 'R', '5');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (9, 2, 'W', 'R', '4');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (10, 2, 'W', 'R', 'B');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (1, 3, 'W', 'R', '6');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (2, 3, 'W', 'R', '3');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (3, 3, 'W', 'R', '6');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (4, 3, 'W', 'R', 'B');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (5, 3, 'W', 'R', '9');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (6, 3, 'W', 'R', '3');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (7, 3, 'W', 'R', 'B');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (8, 3, 'W', 'R', '6');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (9, 3, 'W', 'R', '3');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (10, 3, 'W', 'R', '6');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (1, 4, 'W', 'R', '2');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (2, 4, 'W', 'R', '2');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (3, 4, 'W', 'R', '2');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (4, 4, 'W', 'R', '2');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (5, 4, 'W', 'B', '8');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (6, 4, 'W', 'R', '2');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (7, 4, 'W', 'R', '2');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (8, 4, 'W', 'R', '2');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (9, 4, 'W', 'R', '2');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (10, 4, 'W', 'R', 'B');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (1, 5, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (2, 5, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (3, 5, 'G', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (4, 5, 'G', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (5, 5, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (6, 5, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (7, 5, 'G', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (8, 5, 'G', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (9, 5, 'W', 'B', '7');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (10, 5, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (1, 6, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (2, 6, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (3, 6, 'G', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (4, 6, 'G', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (5, 6, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (6, 6, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (7, 6, 'G', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (8, 6, 'G', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (9, 6, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (10, 6, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (1, 7, 'W', 'B', '2');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (2, 7, 'W', 'B', '3');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (3, 7, 'W', 'B', '6');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (4, 7, 'W', 'B', '3');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (5, 7, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (6, 7, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (7, 7, 'W', 'B', '5');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (8, 7, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (9, 7, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (10, 7, 'W', 'B', '5');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (1, 8, 'W', 'B', '5');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (2, 8, 'W', 'B', '2');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (3, 8, 'W', 'B', '9');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (4, 8, 'W', 'B', '7');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (5, 8, 'W', 'B', '6');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (6, 8, 'W', 'B', 'S');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (7, 8, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (8, 8, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (9, 8, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (10, 8, 'W', 'B', '4');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (1, 9, 'W', 'B', '5');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (2, 9, 'W', 'B', '4');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (3, 9, 'W', 'B', 'B');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (4, 9, 'W', 'B', '4');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (5, 9, 'W', 'B', '4');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (6, 9, 'W', 'B', 'B');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (7, 9, 'W', 'B', '2');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (8, 9, 'W', 'B', '2');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (9, 9, 'W', NULL, NULL);
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (10, 9, 'W', 'R', 'S');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (1, 10, 'W', 'B', '3');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (2, 10, 'W', 'B', 'B');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (3, 10, 'W', 'B', '3');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (4, 10, 'W', 'B', 'B');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (5, 10, 'W', 'B', 'B');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (6, 10, 'W', 'B', '2');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (7, 10, 'W', 'B', 'B');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (8, 10, 'W', 'B', '2');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (9, 10, 'W', 'B', '1');
REPLACE INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`) VALUES (10, 10, 'W', 'B', 'F');

END//
DELIMITER ;

-- Dumping structure for procedure adise23.clean_board
DROP PROCEDURE IF EXISTS `clean_board`;
DELIMITER //
CREATE PROCEDURE `clean_board`()
BEGIN
	REPLACE INTO board SELECT * FROM board_empty;
END//
DELIMITER ;

-- Dumping structure for table adise23.game_status
DROP TABLE IF EXISTS `game_status`;
CREATE TABLE IF NOT EXISTS `game_status` (
  `status` enum('not active','initialized','started','ended','aborded') NOT NULL DEFAULT 'not active',
  `p_turn` enum('R','B') DEFAULT NULL,
  `result` enum('B','R','D') DEFAULT NULL,
  `last_change` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adise23.game_status: ~0 rows (approximately)
INSERT INTO `game_status` (`status`, `p_turn`, `result`, `last_change`) VALUES
	('not active', NULL, 'D', '2024-01-07 15:21:11');

-- Dumping structure for procedure adise23.game_status_reset
DROP PROCEDURE IF EXISTS `game_status_reset`;
DELIMITER //
CREATE PROCEDURE `game_status_reset`()
BEGIN
UPDATE `adise23`.`game_status`
SET `status` = 'not active', `p_turn` = NULL, `result` = 'D';
END//
DELIMITER ;

-- Dumping structure for procedure adise23.move_piece
DROP PROCEDURE IF EXISTS `move_piece`;
DELIMITER //
CREATE PROCEDURE `move_piece`(
	IN `x1` TINYINT,
	IN `y1` TINYINT,
	IN `x2` TINYINT,
	IN `y2` TINYINT
)
BEGIN
    DECLARE p CHAR(1);
    DECLARE p_color CHAR(1);
    DECLARE target_p CHAR(1);
    DECLARE p_rank INT;
    DECLARE target_p_rank INT;
    DECLARE target_b_color CHAR(1);
	
   -- Retrieve the moving piece and its color
    SELECT piece, piece_color INTO p, p_color FROM board WHERE X=x1 AND Y=y1;

   -- Retrieve the target piece and the board color at the target location
    SELECT piece, b_color INTO target_p, target_b_color FROM board WHERE X=x2 AND Y=y2;

    -- Set the ranks for the moving piece and the target piece
    SET p_rank = CASE p
        WHEN '1' THEN 1
        WHEN '2' THEN 2
        WHEN '3' THEN 3
        WHEN '4' THEN 4
        WHEN '5' THEN 5
        WHEN '6' THEN 6
        WHEN '7' THEN 7
        WHEN '8' THEN 8
        WHEN '9' THEN 9
        WHEN 'S' THEN 10
        WHEN 'B' THEN 11
        ELSE 0 END;

    SET target_p_rank = CASE target_p
        WHEN '1' THEN 1
        WHEN '2' THEN 2
        WHEN '3' THEN 3
        WHEN '4' THEN 4
        WHEN '5' THEN 5
        WHEN '6' THEN 6
        WHEN '7' THEN 7
        WHEN '8' THEN 8
        WHEN '9' THEN 9
        WHEN 'S' THEN 10
        WHEN 'B' THEN 11
        ELSE 0 END;
        
		-- Check if the moving piece captures the flag ('F'), which ends the game
   IF target_p = 'F' THEN
      -- Update the game status to reflect the end of the game
      UPDATE game_status SET status='ended', p_turn=NULL, result=p_color;
        
 		-- Logic for interactions between pieces
   ELSEIF target_p IS NULL THEN
        	-- The square is empty, move the piece
        	UPDATE board SET piece=p, piece_color=p_color WHERE x=x2 AND y=y2;
        	UPDATE board SET piece=NULL, piece_color=NULL WHERE x=x1 AND Y=y1;
   ELSEIF p = '1' AND target_p = 'S' THEN
        	-- Spy wins Marshal
        	UPDATE board SET piece=p, piece_color=p_color WHERE x=x2 AND y=y2;
        	UPDATE board SET piece=NULL, piece_color=NULL WHERE x=x1 AND Y=y1;
   ELSEIF p = '3' AND target_p = 'B' THEN
        	-- Miner destroys bomb
        	UPDATE board SET piece=p, piece_color=p_color WHERE x=x2 AND y=y2;
        	UPDATE board SET piece=NULL, piece_color=NULL WHERE x=x1 AND Y=y1;
   ELSEIF p_rank = target_p_rank THEN
        	-- Both pieces are destroyed
        	UPDATE board SET piece=NULL, piece_color=NULL WHERE x=x1 AND Y=y1;
        	UPDATE board SET piece=NULL, piece_color=NULL WHERE x=x2 AND y=y2;
   ELSEIF p_rank > target_p_rank THEN
        	-- Moving piece outranks the target piece, replace it
        	UPDATE board SET piece=p, piece_color=p_color WHERE x=x2 AND y=y2;
        	UPDATE board SET piece=NULL, piece_color=NULL WHERE x=x1 AND Y=y1;
   ELSE
        	-- Moving piece is outranked or equal, it is destroyed
      	UPDATE board SET piece=NULL, piece_color=NULL WHERE x=x1 AND Y=y1;
   END IF;
   
      	UPDATE game_status SET p_turn=IF(p_color='R','B','R');
      
END//
DELIMITER ;

-- Dumping structure for table adise23.players
DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `username` varchar(20) DEFAULT NULL,
  `piece_color` enum('B','R') NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `last_action` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`piece_color`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adise23.players: ~2 rows (approximately)
INSERT INTO `players` (`username`, `piece_color`, `token`, `last_action`) VALUES
	(NULL, 'B', NULL, '2024-01-07 15:21:11'),
	(NULL, 'R', NULL, '2024-01-07 15:21:11');

-- Dumping structure for procedure adise23.players_reset
DROP PROCEDURE IF EXISTS `players_reset`;
DELIMITER //
CREATE PROCEDURE `players_reset`()
BEGIN
UPDATE `adise23`.`players`
SET `username` = NULL, `token` = NULL;
END//
DELIMITER ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
