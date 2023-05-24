-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 31, 2023 at 02:48 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ikc`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_title`
--

CREATE TABLE `academic_title` (
  `ID` int(255) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_ar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academic_title`
--

INSERT INTO `academic_title` (`ID`, `title`, `title_ar`) VALUES
(1, 'Proffessor', 'أستاذ'),
(2, 'Assistant-Professor', 'أستاذ مساعد');

-- --------------------------------------------------------

--
-- Table structure for table `active_request`
--

CREATE TABLE `active_request` (
  `ID` int(255) NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_url`
--

CREATE TABLE `admin_url` (
  `ID` int(255) NOT NULL,
  `old` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `new` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_url`
--

INSERT INTO `admin_url` (`ID`, `old`, `new`) VALUES
(1, 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DATE` date NOT NULL,
  `DATE2` date NOT NULL,
  `present1` tinyint(1) DEFAULT NULL,
  `present2` tinyint(1) DEFAULT NULL,
  `present3` tinyint(1) DEFAULT NULL,
  `present4` tinyint(1) DEFAULT NULL,
  `present5` tinyint(1) DEFAULT NULL,
  `present6` tinyint(1) DEFAULT NULL,
  `present7` tinyint(1) DEFAULT NULL,
  `present8` tinyint(1) DEFAULT NULL,
  `present9` tinyint(1) DEFAULT NULL,
  `present10` tinyint(1) DEFAULT NULL,
  `present11` tinyint(1) DEFAULT NULL,
  `present12` tinyint(1) DEFAULT NULL,
  `present13` tinyint(1) DEFAULT NULL,
  `present14` tinyint(1) DEFAULT NULL,
  `present15` tinyint(1) DEFAULT NULL,
  `present16` tinyint(1) DEFAULT NULL,
  `present17` tinyint(1) DEFAULT NULL,
  `present18` tinyint(1) DEFAULT NULL,
  `present19` tinyint(1) DEFAULT NULL,
  `present20` tinyint(1) DEFAULT NULL,
  `present21` tinyint(1) DEFAULT NULL,
  `present22` tinyint(1) DEFAULT NULL,
  `present23` tinyint(1) DEFAULT NULL,
  `present24` tinyint(1) DEFAULT NULL,
  `present25` tinyint(1) DEFAULT NULL,
  `present26` tinyint(1) DEFAULT NULL,
  `present27` tinyint(1) DEFAULT NULL,
  `present28` tinyint(1) DEFAULT NULL,
  `present29` tinyint(1) DEFAULT NULL,
  `present30` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `ID` int(255) NOT NULL,
  `classes` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'First',
  `classes_ar` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`ID`, `classes`, `classes_ar`) VALUES
(1, 'First', 'اول'),
(2, 'Second', 'ثاني'),
(3, 'Third', 'ثالث'),
(4, 'Forth', 'رابع');

-- --------------------------------------------------------

--
-- Table structure for table `classes_sub`
--

CREATE TABLE `classes_sub` (
  `ID` int(255) NOT NULL,
  `sub` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_ar` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classes_sub`
--

INSERT INTO `classes_sub` (`ID`, `sub`, `sub_ar`) VALUES
(1, 'A', 'أ'),
(2, 'B', 'ب'),
(3, 'C', 'ج'),
(4, 'D', 'د');

-- --------------------------------------------------------

--
-- Table structure for table `deg`
--

CREATE TABLE `deg` (
  `ID` int(20) NOT NULL,
  `deg` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `deg_ar` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `deg`
--

INSERT INTO `deg` (`ID`, `deg`, `deg_ar`) VALUES
(1, 'Fail', 'ضعيف'),
(2, 'Passable', 'مقبول'),
(3, 'Intermediate', 'متوسط'),
(4, 'Good', 'جيد'),
(5, 'Very-Good', 'جيد جدا'),
(6, 'Excellence', 'امتياز'),
(7, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `finel_results`
--

CREATE TABLE `finel_results` (
  `ID` int(255) NOT NULL,
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_ar` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subclass` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `studytype` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `semester` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `roll_no` int(255) NOT NULL,
  `year` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `deg` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `s1` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `s2` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `s3` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `s4` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `s5` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `s6` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `s7` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `s8` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `s9` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `s10` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `s11` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `finel_results`
--

INSERT INTO `finel_results` (`ID`, `user`, `name`, `name_ar`, `class`, `subclass`, `studytype`, `semester`, `roll_no`, `year`, `deg`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`, `s7`, `s8`, `s9`, `s10`, `s11`) VALUES
(1, 'stu', 'student 1', 'طالب', 'First', 'A', 'Morning', 'mid', 1, '2022-2023', '82.09', '70.2', '87', '71.45', '87', '76', '88', '84', '90.2', '85', NULL, NULL),
(12, 'stu', 'student 1', 'طالب', 'First', 'A', 'Morning', 'finel', 2, '2022-2023', '84.69', '88', '87', '79', '87', '86', '88', '77', '90.2', '78', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `honor`
--

CREATE TABLE `honor` (
  `ID` int(255) NOT NULL,
  `user` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gpa` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `study_type` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `honor`
--

INSERT INTO `honor` (`ID`, `user`, `name`, `name_ar`, `photo`, `year`, `gpa`, `class`, `study_type`) VALUES
(1, 'stu', 'student1', 'طالب', 'stu1.jpg', '2022-2023', '88.704', 'First', 'Morning'),
(2, 'stu', 'student2', 'طالب', 'stu1.jpg', '2022-2023', '87.704', 'First', 'Morning'),
(3, 'stu', 'student3', 'طالب', 'stu1.jpg', '2022-2023', '86.704', 'First', 'Morning'),
(4, 'stu', 'student4', 'طالب', 'stu1.jpg', '2022-2023', '88.704', 'First', 'Evening'),
(5, 'stu', 'student5', 'طالب', 'stu1.jpg', '2022-2023', '87.704', 'First', 'Evening'),
(6, 'stu', 'student6', 'طالب', 'stu1.jpg', '2022-2023', '86.704', 'First', 'Evening'),
(7, 'stu', 'student7', 'طالب', 'stu1.jpg', '2022-2023', '88.704', 'Second', 'Morning'),
(8, 'stu', 'student8', 'طالب', 'stu1.jpg', '2022-2023', '87.704', 'Second', 'Morning'),
(9, 'stu', 'student9', 'طالب', 'stu1.jpg', '2022-2023', '86.704', 'Second', 'Morning'),
(10, 'stu', 'student10', 'طالب', 'stu1.jpg', '2022-2023', '88.704', 'Second', 'Evening'),
(11, 'stu', 'student11', 'طالب', 'stu1.jpg', '2022-2023', '87.704', 'Second', 'Evening'),
(12, 'stu', 'student12', 'طالب', 'stu1.jpg', '2022-2023', '86.704', 'Second', 'Evening'),
(13, 'stu', 'student13', 'طالب', 'stu1.jpg', '2022-2023', '88.704', 'Third', 'Morning'),
(14, 'stu', 'student14', 'طالب', 'stu1.jpg', '2022-2023', '87.704', 'Third', 'Morning'),
(15, 'stu', 'student15', 'طالب', 'stu1.jpg', '2022-2023', '86.704', 'Third', 'Morning'),
(16, 'stu', 'student16', 'طالب', 'stu1.jpg', '2022-2023', '88.704', 'Third', 'Evening'),
(17, 'stu', 'student17', 'طالب', 'stu1.jpg', '2022-2023', '87.704', 'Third', 'Evening'),
(18, 'stu', 'student18', 'طالب', 'stu1.jpg', '2022-2023', '86.704', 'Third', 'Evening'),
(19, 'stu', 'student19', 'طالب', 'stu1.jpg', '2022-2023', '88.704', 'Forth', 'Morning'),
(20, 'stu', 'student20', 'طالب', 'stu1.jpg', '2022-2023', '87.704', 'Forth', 'Morning'),
(21, 'stu', 'student21', 'طالب', 'stu1.jpg', '2022-2023', '86.704', 'Forth', 'Morning'),
(22, 'stu', 'student22', 'طالب', 'stu1.jpg', '2022-2023', '88.704', 'Forth', 'Evening'),
(23, 'stu', 'student23', 'طالب', 'stu1.jpg', '2022-2023', '87.704', 'Forth', 'Evening'),
(24, 'stu', 'student24', 'طالب', 'stu1.jpg', '2022-2023', '86.704', 'Forth', 'Evening');

-- --------------------------------------------------------

--
-- Table structure for table `login_admin`
--

CREATE TABLE `login_admin` (
  `ID` int(11) NOT NULL,
  `admin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_username` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user.jpg',
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `role` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'supervisor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login_admin`
--

INSERT INTO `login_admin` (`ID`, `admin_name`, `admin_username`, `admin_email`, `admin_password`, `admin_img`, `account`, `role`) VALUES
(1, 'IKC-CTE admin', 'admin', 'admin@admin.com', '$2y$10$3Z4ERpy3SS8NNcSocg4se.bPZTIaOAQWEQ7fSmWQNev/.jcyGZCwy', 'user.jpg', 'Active', 'administrator'),
(2, 'IKC-CTE admin 1', 'admin1', 'admin1@admin.com', '$2y$10$g9ua9Ijk2PyrHmyEwMo1XuCZ60fMRHLDoaZH6peWeW78U0v7XjbzW', 'user.jpg', 'Active', 'supervisor'),
(3, 'IKC-CTE admin 2', 'admin2', 'admin2@admin.com', '$2y$10$ZwVLHRyZFJ/K/.BRqA/qU.R8/Wqloh.Lz0AebDJo/8uoLmDwm3rYW', 'user.jpg', 'Active', 'supervisor');

-- --------------------------------------------------------

--
-- Table structure for table `login_student`
--

CREATE TABLE `login_student` (
  `ID` int(11) NOT NULL,
  `student_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_name_ar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_username` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login_student`
--

INSERT INTO `login_student` (`ID`, `student_name`, `student_name_ar`, `student_username`, `student_email`, `student_password`, `account`) VALUES
(1, 'Ababil Saad Thajil Mahdi Al -Mashah', 'ابابيل سعد ثجيل مهدي المشيح', 'stu001', '2101143001@alkadhum-col.edu.iq', '$2y$10$4SWv4stWSMQus08thJqZ3emFH.kPztdXb48HKJKWyzKRLV0V5hew2', 'Active'),
(2, 'Ahmed Hassan Abdel -Reda Menkhi Al -Kinani', 'احمد حسن عبد الرضا منخي الكناني ', 'stu002', '2101143002@alkadhum-col.edu.iq', '$2y$10$UjiwQocsFaGH4eXoSmS0k.HuPhgJPFnFXMOoRL0T/A4lk29o0Th9q', 'Active'),
(3, 'Ahmed Rahim Gijan Zughair Al -Ghazi/ Rasib', 'احمد رحيم جيجان زغير الغزي/ راسب', 'stu003', '2001149816@alkadhum-col.edu.iq', '$2y$10$OZaAV.ifnqJd2grQhunCM.A/RwLPYKgp60HQQmS0UI/1jonOhOfqq', 'Active'),
(4, 'The lion of God Ali Erhim Hassan Al -Saadi', 'اسد الله علي ارحيم حسن الساعدي', 'stu004', '2101143004@alkadhum-col.edu.iq', '$2y$10$5qnqsotNrHoioYnGZNw.XuI.veXhgy/i3D/eoVjxgClgwJ42Q1Uwu', 'Active'),
(5, 'Waiting for Saadi Zamil Saj Al -Saadawi', 'انتظار سعدي زامل ساجت السعداوي', 'stu005', '2101143005@alkadhum-col.edu.iq', '$2y$10$/iHchXjgc6CbwjOkt6a.W.h0nX6sHMahVATB4KxvbI6jIY4tN9hg2', 'Active'),
(6, 'Aya Saad Effendi Rahim', 'اية سعد افندي رحيم', 'stu006', '2101143082@alkadhum-col.edu.iq', '$2y$10$KqVhHJdO.JYYhQRfKCYLd.W.w828ebP7HbE8KDZz00HrgUIP0KDVO', 'Active'),
(7, 'Batoul Muhammad Awda Saleh Al -Saadi', 'بتول محمد عودة صالح الساعدي ', 'stu007', '2101143006@alkadhum-col.edu.iq', '$2y$10$3VdjgHBv66PupaRgmnJJb.67Fg5rMBsqGClCkP7ejFbc.S/NS2Mzq', 'Active'),
(8, 'Boys Jassim Shuwaikh Musa Al -Wahili', 'بنين جاسم شويخ موسى الوحيلي ', 'stu008', '2101143007@alkadhum-col.edu.iq', '$2y$10$4Ooa91JbgnZnbb9bvJmyUOfk0UkHJ.ay5Lxjk6UMHnjIOqz8qMGP2', 'Active'),
(9, 'Benin Kazem Zughair Ngimish Al -Fartousi', 'بنين كاظم زغير نغيمش الفرطوسي', 'stu009', '2101143008@alkadhum-col.edu.iq', '$2y$10$SAB3MZvEV19FWka0NEr8heN./W9V3Lc48qscE2VW8TNgKYWOUtdzu', 'Active'),
(10, 'Salah Mahdi Hassan Al -Khafaji', 'تقى صلاح مهدي حسن الخفاجي', 'stu010', '2101143009@alkadhum-col.edu.iq', '$2y$10$eFWpbV7khHa601JUZbfGfO4g65fVm.uJhFuVoQ3G3/NKAVjtnWM/a', 'Active'),
(11, 'Jaafar Abdul Hussein Abbas Hussein /Rasp 2', 'جعفر عبد الحسين عباس حسين /راسب2', 'stu011', 'compeng.1stmo10@alkadhum-col.edu.iq', '$2y$10$Q9mut2I6YJKSA.StJ9ERvuJlTOF5N1RwnRPvPKdFQupzwAVkW5nue', 'Active'),
(12, 'Jinan Raad Ali Muhammad Al -Obaidi', 'جنان رعد علي محمد العبيدي ', 'stu012', '2101143010@alkadhum-col.edu.iq', '$2y$10$Sg1MkfU.oXmauTYoToSCdef8nBV978akYiL7vdPtg38Znkmn5yjDC', 'Active'),
(13, 'Hassanein Ahmed Nasser Khasaf Al -Rubaie', 'حسنين احمد ناصر خصاف الربيعي', 'stu013', '2101143012@alkadhum-col.edu.iq', '$2y$10$5S2cVME.k80q7PqQavlqJug549vxIx9pcimRLWLxarekDOdGmVofu', 'Active'),
(14, 'Hanin Allawi in his hand, Said Al -Sudani', 'حنين علاوي بيده اسعيد السوداني', 'stu014', '2101143013@alkadhum-col.edu.iq', '$2y$10$UIB5rWRvdcEKnENzn/0P1.7kR1Xym/BTXkMrVEG/It8fKDGpEknIq', 'Active'),
(15, 'Haider Muhammad Khalaf Nait Shmilawi', 'حيدر محمد خلف نعيت شميلاوي', 'stu015', '2101143014@alkadhum-col.edu.iq', '$2y$10$ikbkBpYzMktNIRisHP/CvOGgY3joIdVJ2FwQsXZZ1qX5DFHP4P/1q', 'Active'),
(16, 'Doaa Karim Qasim Hassan Al -Muhammadawi', 'دعاء كريم قاسم حسن المحمداوي', 'stu016', '2101143069@alkadhum-col.edu.iq', '$2y$10$QlNicEvK6h.v3r9pKQTLwe.RKY8hjZMJBLSVDZ4IKXLwgxrY40zpi', 'Active'),
(17, 'Rawa Saad Matar Small Al -Jabr/ Agile last year', 'رواء سعد مطر صغير الجبر/ تاجيل العام الماضي', 'stu017', '20011447@alkadhum-col.edu.iq', '$2y$10$uV1AuW2gbUBkUnUH/V679ePFhJajO5xGk30GHmc1O39l0yXnkSABW', 'Active'),
(18, 'Zaid Karim Muhammad Hussein Al -Yasiri', 'زيد كريم محمد حسين الياسري', 'stu018', '2101143015@alkadhum-col.edu.iq', '$2y$10$AU9Ml7JLuQuMYR3QZALYOOJLk02j9OkNePhF5mOg4QUMZ/LtZBDAC', 'Active'),
(19, 'Jabbar Ali Al -Maliki Carpet', 'سجاد جبار علي المالكي ', 'stu019', '2101143017@alkadhum-col.edu.iq', '$2y$10$/x8asXW//mdEjL8Xod50auHG5ONUga1DjVuS3idLkl5s8L0qnUMuq', 'Active'),
(20, 'Mirage by inviting Jabbar Al -Rubaie', 'سراب بادع جارح جبار الربيعي ', 'stu020', '2101143018@alkadhum-col.edu.iq', '$2y$10$HVh59agCY8GI0v92l3zEwu8VaMiXkNei.kTA4Ozs/YVK9ujS15SSm', 'Active'),
(21, 'Abdul Muttalib Hussein Abdul -Muttalib Muhammad Al -Faisal', 'عبد المطلب حسين عبد المطلب محمد الفيصل', 'stu021', '2101143019@alkadhum-col.edu.iq', '$2y$10$p8veCytkS.16FOJXfkKyUetaa4i3924DLFT9jv4jLTxCQjSVfoPrO', 'Active'),
(22, 'Ali Jabbar Baqir Salim Al -Arawazi / Rasib', 'علي جبار باقر سليم الاركوازي / راسب', 'stu022', '2101143020@alkadhum-col.edu.iq', '$2y$10$5kyKlInfUOT1Uls7In59IuBuQ6pJcA7qP3fPkJYJ1yobIFa5pMUDu', 'Active'),
(23, 'Ali Hassan Hadi Saleh Al -Ubaidi', 'علي حسن هادي صالح العبيدي', 'stu023', '2101143022@alkadhum-col.edu.iq', '$2y$10$FkRVgjsEj7Pr1ZaGc3IC8.1.ya/T3xOOsmr27C7ASPYTU7X.IQadm', 'Active'),
(24, 'Ghadeer Ibrahim Sobeih Ali Al -Bayati', 'غدير ابراهيم صبيح علي البياتي', 'stu024', '2101143025@alkadhum-col.edu.iq', '$2y$10$GUg175RGJ7Tj.TW0ezSoheea2EwYu7VzfPl1KLq77qIVUUnHUMX/y', 'Active'),
(25, 'Fatima Kamel Mezher Ali Al -Taie', 'فاطمه كامل مزهر علي الطائي ', 'stu025', '2101143026@alkadhum-col.edu.iq', '$2y$10$D0evbOS0Goocs6mizkbkH.ui2Hnwfv6xYnwmKPOFArUKtXj1Qezmm', 'Active'),
(26, 'Karrar Hossam Najah Jabbar Al -Lami', 'كرار حسام نجاح جبار اللامي', 'stu026', '2101143027@alkadhum-col.edu.iq', '$2y$10$W4bj1IUlXnTjY9oyW//T9e2oiTkC0U6SoQ9x6Q6W4ZKj6kTtRcbL.', 'Active'),
(27, 'Muhammad Iyad Salman Al -Delphi', 'محمد اياد سلمان الدلفي', 'stu027', '2101143028@alkadhum-col.edu.iq', '$2y$10$jblljTORVmnJaOh4QBzQOOPsdJDkbtF.UdYCA0G7Bp.RiqrDY0FfS', 'Active'),
(28, 'Muhammad Musleh Hamid Alwan Al -Shammari', 'محمد مصلح حميد علوان الشمري', 'stu028', '2101143029@alkadhum-col.edu.iq', '$2y$10$jIF1AFSxVw6EfjZffwJyz.iYkDeTBTqwwudOGM/qEIg08fd5OqHqS', 'Active'),
(29, 'Mohamed Youssef Ismail Tawfiq Al -Surah Miri', 'محمد يوسف اسماعيل توفيق السوره ميري ', 'stu029', '2101143030@alkadhum-col.edu.iq', '$2y$10$0X8q8KRU22FJNTpx9gyFt.oMHdXGpUxICF/DLk2.w7e5HMLArC0IW', 'Active'),
(30, 'Manar Muhammad Abd al -Abbas Eidan Al -Subaihawi', 'منار محمد عبد العباس عيدان الصبيحاوي', 'stu030', '2101143031@alkadhum-col.edu.iq', '$2y$10$B6AtMwig/J8TaFwuAJUj4uBW/A3Pi0273PjINWtG9.bf5RWUuov6q', 'Active'),
(31, 'Awaited by Sayed Hassan Al Azirj', 'منتظر علي سيد حسن  ال ازيرج', 'stu031', '2101143032@alkadhum-col.edu.iq', '$2y$10$IARuycEmyJz6sqvR0sGck.I8oRGSsY/IBKA0EgId5mkCzp7Rk75ba', 'Active'),
(32, 'Mahdi Nasser Sabr Mohsen Al -Rubaie', 'مهدي ناصر صبر محسن الربيعي', 'stu032', '2101143033@alkadhum-col.edu.iq', '$2y$10$w/sNX8N71HTL9OulqaD1.eu.eIn4g8B7IZHqYSHM7wiXKwYXX/kmu', 'Active'),
(33, 'Nour Al -Huda Radi Ali Naimah', 'نور الهدى راضي علي نعيمه', 'stu033', '2101143062@alkadhum-col.edu.iq', '$2y$10$cKFlZCOBweu.j9BbXeZITORFBPVjOVttADxM/2uhzR1urWSjwIpPO', 'Active'),
(34, 'Nour Al -Huda Saad Jabbar Hussein Al -Saadi', 'نور الهدى سعد جبار حسين الساعدي', 'stu034', '2101143068@alkadhum-col.edu.iq', '$2y$10$OMvfIDZ6YZLtCw2kc6nbzOYschUK80ThYhg0K05/Z/rt98cKbyMOu', 'Active'),
(35, 'Mona Jamil Jabbar is a gesture/return and not to relieve', 'منى جميل جبار لفتة/عودة وعدم تسكين', 'stu035', '2201143057@alkadhum-col.edu.iq', '$2y$10$tHIeV0E38GZjW9q6LkyizuUUtii04vzDx14q2LsBg3hqjm9q0pts6', 'Active'),
(36, 'Ali Karim Zaal Majid Al -Suraii / not to relieve', 'علي كريم زعل ماجد السويعدي / عدم تسكين', 'stu036', '2101143024@alkadhum-col.edu.iq', '$2y$10$uEVMda9iFUb7v4cYoildI.M92kfR02FJzWAY7xCqesn5kWk1SMBgq', 'Active'),
(37, 'Amna Muhammad Jabbar Shuwa’i Al -Zaidawi', 'امنه محمد جبار شويع الزيداوي', 'stu037', '2001141090@alkadhum-col.edu.iq', '$2y$10$aEeJfLUHfoqpQIeaSFJ1j.c1/5nsjV5IQWl4dYKz0PTOYJYnVEI6i', 'Active'),
(38, 'Aya Ahmed Muhammad Ali Al -Zaidi', 'اية احمد محمد علي الزيدي', 'stu038', '20011450@alkadhum-col.edu.iq', '$2y$10$z7K320xwBR6Mr.Bmhsoa0eojtmUC90nDmhN8Grt1LXzgAJzNzJq3S', 'Active'),
(39, 'Aya Hassan Shabib Ali Al -Saadi', 'ايه حسن شبيب علي الساعدي', 'stu039', '2001142309@alkadhum-col.edu.iq', '$2y$10$f8cwQHZLekcqXaEKFidaI.N9gdrculk45LYuxWdNh99sRD.CL0f56', 'Active'),
(40, 'Batoul Jassem Odeh Awda Al -Aqili', 'بتول جاسم عودة عودة العقيلي', 'stu040', '20011412689@alkadhum-col.edu.iq', '$2y$10$ZnHe0ERRuFe5kTHMxh889Omd5sTWCgcx1u7uki6LgvOEN/kVDLN8K', 'Active'),
(41, 'Boys Star Jabbar Nasser Al -Saray', 'بنين ستار جبار ناصر السراي', 'stu041', '2001141609@alkadhum-col.edu.iq', '$2y$10$w8MwgNglYXgdDiHuJTiH2eIyPFJdnR2Bxs2.khHybYVLluqFz6iOK', 'Active'),
(42, 'Blessed Raad Abdel -Hassan Mawla Al -Musloukhi', 'تبارك رعد عبد الحسن مولى المصلوخي', 'stu042', '2001141085@alkadhum-col.edu.iq', '$2y$10$5777/iGJTQUY52g63GsiieGWIA3bmXzGlZFkaXw.uVUsF3XNLd.IW', 'Active'),
(43, 'Taqa Hassan Sahib Jassim Al -Khazraji', 'تقى حسن صاحب جاسم الخزرجي', 'stu043', '2001141967@alkadhum-col.edu.iq', '$2y$10$i0qT7YjfCT1PeJ0u8KSa8Om0ZlXr6piSfOSBHyvMqZrVTF4rFgSWi', 'Active'),
(44, 'Jaafar Muhammad Jumaa Hathal Al -Saadi', 'جعفر محمد جمعة هذال الساعدي', 'stu044', '20011411@alkadhum-col.edu.iq', '$2y$10$7IT.kTNcPVZKxBD62DBySu8o/aDiJdQvv2bcNBlg1FPh1YlPouiN6', 'Active'),
(45, 'Jannat Nizar Jabbar Attia Al -Saadi', 'جنات نزار جبار عطيه الساعدي', 'stu045', '2001141606@alkadhum-col.edu.iq', '$2y$10$wIvcIuJMeMGBuvvcGIPXje7Vzo9IM/30p2yuVaR8r1VIAfkvTzWrS', 'Active'),
(46, 'Hassan Jassim Abdul Karim Farhan Al -Saqa', 'حسن جاسم عبد الكريم فرحان السقاء', 'stu046', '2001148@alkadhum-col.edu.iq', '$2y$10$waPUx4ePfP/si6sa88OPHeStI2BAziBFYBWHCtxA5MkvCqNmvmmga', 'Active'),
(47, 'Hassan Abbas Saddam Fadel Al -Muhammadawi', 'حسن عباس صدام فاضل المحمداوي', 'stu047', '200114109@alkadhum-col.edu.iq', '$2y$10$8Dzfgy12WiJK5G.ZxR5qKOcQ/X4XEpRqZKeoOcBiPWBicTQD7pOwC', 'Active'),
(48, 'Hawra Abdul Zahra Shabib Ali Al -Saadi', 'حوراء عبد الزهرة شبيب علي الساعدي', 'stu048', '2001141962@alkadhum-col.edu.iq', '$2y$10$Dk3PnxIFgWBFe78UMhOwWO5HkyhX1o/VhCViowQtCHL4nvRvX.ixe', 'Active'),
(49, 'The conclusion of Halim Khazaal Al -Issawi', 'ختام حليم خزعل عكلة العيساوي', 'stu049', '2001141156@alkadhum-col.edu.iq', '$2y$10$ZQ8uPqmAhAhsCrpXDBu9e.OKe5wGVp1uMf0K3XLOas2uHmAWQp.pO', 'Active'),
(50, 'Rayam Haider Ghaleb / Odeh / postponed', 'ريام حيدر غالب/ عودة / مؤجلة', 'stu050', 'compeng.1stmo69@alkadhum-col.edu.iq', '$2y$10$inG3QS4loWUKDEpMlrejf.0zZ7ENyEhXyIGp9QhMEW/G/hE2qtfsq', 'Active'),
(51, 'Zahra Amer Hussein Jawdah Al -Rubaie', 'زهراء عامر حسين جوده الربيعي', 'stu051', '200114105@alkadhum-col.edu.iq', '$2y$10$dB0aciHx.dTaRbOGbDcQaOwaQJahFQB7qD0Wl0tirXNoPwCenwh0m', 'Active'),
(52, 'Zainab Khaled Muhammad Jabr al -Maliki', 'زينب خالد محمد جبر المالكي', 'stu052', '2001149801@alkadhum-col.edu.iq', '$2y$10$1zz00Gt5HvCdHFttDmv.meOjz8OlfOq7sQ.m/ZCNJB7HC.GZxLnH6', 'Active'),
(53, 'Zainab Saad Hassan Alwan Al -Khailani', 'زينب سعد حسن علوان الخيلاني', 'stu053', '20011421@alkadhum-col.edu.iq', '$2y$10$3fliJWm8.MNR23akBCXySOR/Lo4ysB9QeS/HYniYKlYVBLGeJK/ey', 'Active'),
(54, 'Zainab Kazem Shafi Kazem Al -Fatlawi', 'زينب كاظم شافي كاظم الفتلاوي', 'stu054', '2001141960@alkadhum-col.edu.iq', '$2y$10$0Qz4s4vZna3gmsqdoZMIsuw.hF2Tt/G.Ux.vh4rgx7TgN8VCRqJxC', 'Active'),
(55, 'Zainab Najm Al -Aibi Falih Al -Tamimi', 'زينب نجم العيبي فليح التميمي', 'stu055', '2001149807@alkadhum-col.edu.iq', '$2y$10$pW38mKgWXZCOPZOR100LwuPSfbj2Rxd0f5C4M7.9jGB2NSro/QTyK', 'Active'),
(56, 'Saba Mustafa Hadi Karim Al -Dulaimi', 'سبأ مصطفى هادي كريم الدليمي', 'stu056', '2001145893@alkadhum-col.edu.iq', '$2y$10$g7dpWXtgPr0IyVSwReFsPuL0T1JUdAJp9Bon62itI/xvlCotu0asy', 'Active'),
(57, 'Carpet Jassim Muhammad Jabr Al -Musloukhi', 'سجاد جاسم محمد جبر المصلوخي', 'stu057', '20011463@alkadhum-col.edu.iq', '$2y$10$.nVN.yJ0TO7KObOwVYbZke3A/0l1EJ5n2eDWs6nrgMOro9XWYYZ4O', 'Active'),
(58, 'Taha Dawood Al -Khafaji Carpets', 'سجاد طه داود داود الخفاجي', 'stu058', '2001141087@alkadhum-col.edu.iq', '$2y$10$KEULr0GsyLfhyQ0BIRmG4ORJXW4GpNvfbgbKLYEbcsL/uWxiGeunu', 'Active'),
(59, 'Adel Sobeih Kazem Al -Saadi', 'سجاد عادل صبيح كاظم الساعدي', 'stu059', '20011426@alkadhum-col.edu.iq', '$2y$10$lZavGrcGIP8LI4J7MSJgY.MHxujN5cgH4/WPGSPRpDr5TCYIMnK9O', 'Active'),
(60, 'Abbas Abbas Abdul Hussein Makhilf Al -Bahadli', 'سجاد عباس عبد الحسين مخيلف البهادلي', 'stu060', '2001144@alkadhum-col.edu.iq', '$2y$10$s1OEGySKGWItGSgin.h7YeyeOMl/NBW7ubwFeP9iPagw/s1JZsoDS', 'Active'),
(61, 'Crueling carpets, cheap, Al -Baidhani', 'سجاد كطان رخيص غافل البيضاني', 'stu061', '20011416@alkadhum-col.edu.iq', '$2y$10$5VJpIwk/eesidhB7V99zoO/2kD4dOtfsYp.4lqN5b.dy.pYqngOHi', 'Active'),
(62, 'Saja Abbas Abdul Saeed Al -Zubaidi', 'سجى عباس عبد سعيد الزبيدي', 'stu062', '2001141965@alkadhum-col.edu.iq', '$2y$10$mUbtJGeAdEe4mI67NaUciOHWonyhcq3jeofn97lILjYSn0tDMq2WO', 'Active'),
(63, 'Shafaq Haider Shuwa’i Mazal Al -Ruwaijawi', 'شفق حيدر شويع مزعل الرويجحاوي', 'stu063', '2001143249@alkadhum-col.edu.iq', '$2y$10$uK4E3EiO5/1nFtVbqiV.NuXscPKYlst4r7KSjOcdrIT.LnLxSoMU6', 'Active'),
(64, 'Safaa Muhammad Abbas Hussein Hussein/The abolition of hosting to Dhi Qar', 'صفاء محمد عباس حسين حسين/الغاء استضافة الى ذي قار', 'stu064', '20011410721@alkadhum-col.edu.iq', '$2y$10$K5ZyBLTAHycdxcjugi7cJuHzezmUvJ1GiCMhsP9ZlW3fm/0omFRFO', 'Active'),
(65, 'Duha Qasim Hassan Obaid Obaid', 'ضحى قاسم حسن عبيد عبيد', 'stu065', '2001142275@alkadhum-col.edu.iq', '$2y$10$6odxTdDM8SPRfsFpdo3NKeBbvjKK0ay5n7m5aIyQLk0e7wcsQdks6', 'Active'),
(66, 'Tayeb Ahmed Abdel -Hussein Al -Sa’id', 'طيبه احمد عبد حسين الساعد', 'stu066', '200114104@alkadhum-col.edu.iq', '$2y$10$7.zQuYdbB8mWqp89DexUzeYU2JVXbz/ZHfyUjTub8Af7.N9BVinyO', 'Active'),
(67, 'Taiba Raed Faraj Ramadan Al -Lami', 'طيبه رائد فرج رمضان اللامي', 'stu067', '20011459@alkadhum-col.edu.iq', '$2y$10$7XNbq8X7bHz693WqQLS3JetgpeTmOiMbXcxUbjBq5wyv1k/jz088q', 'Active'),
(68, 'Virgin Osam Ali Mohsen Al -Shara', 'عذراء اوسام علي محسن الشرع', 'stu068', '2001141601@alkadhum-col.edu.iq', '$2y$10$O4oBAFshjrXApG7Zxa0iZehc08H0pxZiduSqujtEV6X9pTwp3ALVu', 'Active'),
(69, 'Ali Ahmed Nayef Atallah/ Transfer from Najaf', 'علي احمد نايف عطا الله/ نقل من النجف ', 'stu069', '20015556541@alkadhum-col.edu.iq', '$2y$10$gw.e2LqHvd50cpxdkwoMPuFI7O61ngTCUfUZm4C/qTwXm0Ct0r.e.', 'Active'),
(70, 'Ali Fadel Sharaf Salem /Rasib', 'علي فاضل شرف سالم /راسب', 'stu070', 'compeng.1stmo40@alkadhum-col.edu.iq', '$2y$10$0QzNPyc/4X8KWfKFcvDnGugtbefec8BbMLVfxt6136Bgv3Ubk8tny', 'Active'),
(71, 'Ali Farhan Radi Kazem Al -Karimawi', 'علي فرحان راضي كاظم الكريماوي', 'stu071', '20011424@alkadhum-col.edu.iq', '$2y$10$Lg1whYY8msVJ58qG8B6rdOpNKbId4ULY7zLWVqZqqjf/8MzNh.i82', 'Active'),
(72, 'Ali Kazem Jassim /Rasp 2', 'علي كاظم جاسم  /راسب2', 'stu072', 'compeng.1stmo41@alkadhum-col.edu.iq', '$2y$10$IDeeUz2bEfQ7lvyhxVs80eoO.Fno16EK.tN02HCZftcBE83oxf9Am', 'Active'),
(73, 'Ammar Haider Abdul Hassan Kazem Al -Shammari', 'عمار حيدر عبد الحسن كاظم الشمري', 'stu073', '2001143@alkadhum-col.edu.iq', '$2y$10$GPtV/w/Z8Mg5bOOEfYgTyuT6NFC664UmsyAs9E./kXqjpBBKjsio2', 'Active'),
(74, 'Ghadeer Haider Shuwaie Mazal Al -Ruwaijawi', 'غدير حيدر شويع مزعل الرويجحاوي', 'stu074', '2001143258@alkadhum-col.edu.iq', '$2y$10$2yDUZqJ.A9do5P.UbMHhbOZIG9qulFdSnqQjzA0yTXK/nPxcMpA2K', 'Active'),
(75, 'Ghafran Issa Kazem Jaan Al -Zirjawi', 'غفران عيسى كاظم جعين الزيرجاوي', 'stu075', '2001141966@alkadhum-col.edu.iq', '$2y$10$p1DyzXBZrq5LhplZGpY2ouMQDuYV8srmJ8SN7FsFcq.J3GFll14oS', 'Active'),
(76, 'Fatima Atta Jaber Makhit Al -Fahdawi', 'فاطمه عطا جابر مخيط الفهداوي', 'stu076', '2001143256@alkadhum-col.edu.iq', '$2y$10$EiygnJATneNtznSDw0gaMuItbTAuq6KFQ.F4.00IUTSzoBtZkxTrO', 'Active'),
(77, 'Faid Al -Huda Adnan Muhammad /Rasib 2', 'فيض الهدى عدنان محمد /راسب2', 'stu077', 'compeng.2ndmo56@alkadhum-col.edu.iq', '$2y$10$kaYJRSfzEt.KLTrZ6PMtc.VZ/XOVQI5XmfoIEKLcCl0iLTNoD1/ZS', 'Active'),
(78, 'Karar Star, the star of Ubaid /Rasp 2', 'كرار ستار نجم عبيد   /راسب2', 'stu078', 'compeng.1stmo48@alkadhum-col.edu.iq', '$2y$10$HOfXRxL3A89DqCoI27nCBO0ZAcfx3s1fZRbPWg0U.MQHiS/mAqiIa', 'Active'),
(79, 'Karar Hani Hashem Zayer Al -Daraji', 'كرار هاني هاشم زاير الدراجي', 'stu079', '20011417@alkadhum-col.edu.iq', '$2y$10$XdyrgkYx604MSWSaAEfNieWKfUDhfCVusu0cM3rYheA5hF38MS10a', 'Active'),
(80, 'Muhammad Baqir Diaa Abbas Khanab Al -Nasiraoui', 'محمد باقر ضياء عباس خنياب النصيراوي', 'stu080', '2001141961@alkadhum-col.edu.iq', '$2y$10$6v7/1Z4t3nMYySxCZF6DUuKKqHIMyO0wiIPsawhqOANgZEsANAirO', 'Active'),
(81, 'Muhammad Haider Badr Sadkhan Al -Maliki', 'محمد حيدر بدر سدخان المالكي', 'stu081', '20011442@alkadhum-col.edu.iq', '$2y$10$ALeSiRbZn/GpBCZ909rww.1Q6ynE4KRQFjaktSvlK5QXYQRJ0u/7q', 'Active'),
(82, 'Muhammad Sadiq Abdul -Ridha Muhammad Al -Muhammadawi', 'محمد صادق عبد الرضا محمد المحمداوي', 'stu082', '20011410887@alkadhum-col.edu.iq', '$2y$10$loQNLwNmdQY8otmJj4U7nendhuYLtzInw8BNBip/O2jtKTA0A8lZG', 'Active'),
(83, 'Muhammad Abdullah Muhammad Hassan Ahmed Al -Amri', 'محمد عبد الله محمد حسن احمد العامري', 'stu083', '2001141964@alkadhum-col.edu.iq', '$2y$10$YcUxZk1cE5tL8B9W1lKtQ.vLYqxhL.5Qf24OxkH8W5TxPb7QmskOm', 'Active'),
(84, 'Muhammad Ali Ghaylan Khalifa Al -Olayawi', 'محمد علي غيلان خليفة العلياوي', 'stu084', '20011425@alkadhum-col.edu.iq', '$2y$10$fTRMZ2kHsYlewTPiKPGHl.hw3n5SOGpfvWlLnZBom00Cc9O6pf3cS', 'Active'),
(85, 'Muhammad Naim Jabbar Eidan Al Khafour', 'محمد نعيم جبار عيدان ال خافور', 'stu085', '20011412482@alkadhum-col.edu.iq', '$2y$10$LDb6vJzQvVkrAX76PCgPOOr4gfVKoBkai2tWrysmqbVZrLrGNd/De', 'Active'),
(86, 'Mortada Adel Abboud Bohan Al -Mutairi', 'مرتضى عادل عبود بوهان المطيري', 'stu086', '2001143260@alkadhum-col.edu.iq', '$2y$10$deMYLrxUysXhpUhocsC43uR8XmwcpvYwV4SGZtvNXrze7krWenzNO', 'Active'),
(87, 'Mortada Nazim Khadr Hassan Al -Mouzani', 'مرتضى ناظم خضر حسن الموزاني', 'stu087', '20011410722@alkadhum-col.edu.iq', '$2y$10$8C23FcHPeplpJJpNL8tbdeuzVu57vqytk3Dl1KqkNEwbnXNeMJ06i', 'Active'),
(88, 'Maryam Muhammad Karim Hammoud Faraj', 'مريم محمد كريم حمود فرج', 'stu088', '20011469@alkadhum-col.edu.iq', '$2y$10$jALAPavX5lOrFXfG9zb8GeRg1ZmUZAAp/IV9f5cSC6GcP8d3UCLbS', 'Active'),
(89, 'Mustafa Falah Hassan Salem Al -Dinnawi', 'مصطفى فلاح حسن سالم الدنيناوي', 'stu089', '20011454@alkadhum-col.edu.iq', '$2y$10$8FmmOu9HjF9y52ft8bSIUuZaxCxPWbbFLq5e6p2rSpQzLr5FJsjAS', 'Active'),
(90, 'Mafaz Zaid Hadi Muhammad Al -Akili', 'مفاز زيد هادي محمد العكيلي', 'stu090', '20011451@alkadhum-col.edu.iq', '$2y$10$bAoXC5npdK9MxMiEnTm3Cu1LwTzsRoXpd0z8jlcPdcxGjeFN5X.Sq', 'Active'),
(91, 'Miqdis Hamid Saleh Attia Al -Jubouri', 'مقدس حامد صالح عطية الجبوري', 'stu091', '2001146@alkadhum-col.edu.iq', '$2y$10$6.Iuzv7URqUAvEBaGfggMuZ01eKJHgd96EhTqsy6z/QVLbPfzsXd2', 'Active'),
(92, 'Maitham Kazem, a visit to / rap', 'ميثم كاظم عكلة زياره  / راسب', 'stu092', 'compeng.1stmo62@alkadhum-col.edu.iq', '$2y$10$50EhYF8XNf71KHrx/YuBaeYtgU88DqaHv0H0m74v2CM58.getY4p2', 'Active'),
(93, 'The news of Shams al -Din Jarn as the captive of the Serail', 'نبأ شمس الدين جرن كصيب السراي', 'stu093', '20011412481@alkadhum-col.edu.iq', '$2y$10$ikPoDBnevqV/XUZw6cPVieudgnMezEHcanaI7smd2KmI9ygv8znoi', 'Active'),
(94, 'Narges Sabeh Abdul Zahra Jader Al -Bazouni', 'نرجس صبيح عبد الزهره جادر البزوني', 'stu094', '2001141608@alkadhum-col.edu.iq', '$2y$10$OWFVwMUvxC8G/u.2Kp34Gug2M.WbpOGx1GBYdBUwpo5yYmuNAn5bS', 'Active'),
(95, 'Nour Naseer Sami Sibter Al -Saadi', 'نور نصير سامي سبكتر السعدي', 'stu095', '2001141192@alkadhum-col.edu.iq', '$2y$10$s8YHC4C7nRlZzf9x2vcZLuFY2HU8RLXtbYuRnTS1Xyag0EfkJXK7y', 'Active'),
(96, 'Ibrahim Hamid Omair Ali', 'ابراهيم حامد عمير علي', 'stu096', 'compeng.1stmo1@alkadhum-col.edu.iq', '$2y$10$MbX7REngAENBl7BbweHJ4ultCtsYURBsS1rjlP1rfdfmRYGOYMn46', 'Active'),
(97, 'Ahmed Laith Ali Kazem', 'احمد ليث علي كاظم', 'stu097', 'compeng.1stmo2@alkadhum-col.edu.iq', '$2y$10$SNbWBEDIuUMronaC00OOKOShx8KveZm53TUlanEIkH3p./A6hbLwC', 'Active'),
(98, 'Al -Zahraa Faleh Hassan Laibi', 'الزهراء فالح حسن لعيبي', 'stu098', 'compeng.1stmo3@alkadhum-col.edu.iq', '$2y$10$rlGk4564zka5R24UkeeW4edLEusrtdkqJq7k0dgbI416/JcxKY85K', 'Active'),
(99, 'Amna Qasim Adnan Nima', 'امنة قاسم عدنان نعمة', 'stu099', 'compeng.1stmo4@alkadhum-col.edu.iq', '$2y$10$guxuAefULhDHtq/WlnJn9.2Q0H2KQ6vOELtC1Lm8nkroxTbGHfAp6', 'Active'),
(100, 'Aya Muhammad Abdul Zahra Katta', 'اية محمد عبد الزهره كاطع', 'stu100', 'compeng.1stmo5@alkadhum-col.edu.iq', '$2y$10$afZCqHoGRrs073uaMBxEbuOuntkPb1ZcEYwhaMzHYbg3qjQ7eeAxi', 'Active'),
(101, 'Batoul Mushtaq Talib Ali', 'بتول مشتاق طالب علي', 'stu101', 'compeng.1stmo7@alkadhum-col.edu.iq', '$2y$10$QhJUfB.0GZ2PMraC3cD0b.jXJqDRckwJrhoIJLZ8.ZjVNNxQqfYWK', 'Active'),
(102, 'Blessed Hussein Muhammad Jassim', 'تبارك حسين محمد جاسم', 'stu102', 'compeng.1stmo9@alkadhum-col.edu.iq', '$2y$10$xnQD6R.DVlcAblTtHfBkueZos.JcSAMbJGQ1Pt/0VzXbVGKl54D4C', 'Active'),
(103, 'Hardan Faris Ahmed Ghafis/Rasib', 'حردان فارس احمد غبن/راسب', 'stu103', 'compeng.1stmo11@alkadhum-col.edu.iq', '$2y$10$unEqWg5dkHYUiui8eT21curZOcwQBxjBGSXhlHFP3pQCtAwphuG9S', 'Active'),
(104, 'Hassan Jabbar wrapped on Ali', 'حسن جبار لفته علي', 'stu104', 'compeng.1stmo12@alkadhum-col.edu.iq', '$2y$10$nlDnXdrfNLcP1NaRme0IiOGVhx4O8zzLwQoMtbc9lQY/wykbWOLiO', 'Active'),
(105, 'Hassan Hammoud Mutlabah Ghat/ Rasf', 'حسن حمود معاتب غتر/ راسب', 'stu105', 'compeng.2ndmo10@alkadhum-col.edu.iq', '$2y$10$peuVDtgLO5.oFnzjpPceHeYab30JYcYGMVOffYYDw4N5rSV.Okee.', 'Active'),
(106, 'Hassan Mohamed Khalaf Kazem', 'حسن محمد خلف كاظم', 'stu106', 'compeng.1stmo13@alkadhum-col.edu.iq', '$2y$10$xRvOKYCxXBXv3FygJGkZeuf1HcYT7AIQhRVNyYOybsvteK8XOBgCO', 'Active'),
(107, 'Hussein Raad Alwan Abdul Ali', 'حسين رعد علوان عبد علي', 'stu107', 'compeng.1stmo14@alkadhum-col.edu.iq', '$2y$10$tvt.os9zFTOtJclRYbAy..WTfHWXUwdPdPAD1GYRs74v5UKiADi1C', 'Active'),
(108, 'Hussein Youssef Mahdi, may God have mercy on him / postponed year', 'حسين يوسف مهدي رحمة الله / مؤجل سنة', 'stu108', 'compeng.1stmo15@alkadhum-col.edu.iq', '$2y$10$JChz84YKBzbqBYqnyo8m6eRj4iflZ3c0vKHesDmf2GqQTH3hjgma2', 'Active'),
(109, 'Hanin Hamid north', 'حنين حميد شمال ثكب', 'stu109', 'compeng.1stmo16@alkadhum-col.edu.iq', '$2y$10$UeRcoTYhfAsvlORYGnRynepVJd2cEh63x/xe63GbbUMM700E0g42G', 'Active'),
(110, 'Hawra Mohsen Saleh Bandar', 'حوراء محسن صالح بندر', 'stu110', 'compeng.1stmo17@alkadhum-col.edu.iq', '$2y$10$zW5W.oG5wiOHBp7iEnZSG.Wy9F4fQhStO.MhdSUw6iiNmOUnI.k/C', 'Active'),
(111, 'Dawood Salman David Muhammad / Rasib', 'داود سلمان داود محمد / راسب', 'stu111', 'compeng.2ndmo18@alkadhum-col.edu.iq', '$2y$10$CVB8gqM8DBy5uqPjaTRVa.qklRhTE.fxXpsgABmseJjNJIUwNHQey', 'Active'),
(112, 'Memories of Amer Mishari Khalif', 'ذكريات عامر مشاري خليف', 'stu112', 'compeng.1stmo19@alkadhum-col.edu.iq', '$2y$10$GFEn8.IAAx4PO53RFQymxOC2nAMkHdtaGH4NoSmoHfROfMBzoZV3a', 'Active'),
(113, 'Zahraa Ahmed Abdel -Saad Thabet', 'زهراء احمد عبد الساده ثابت', 'stu113', 'compeng.1stmo22@alkadhum-col.edu.iq', '$2y$10$ldZkDO1eK6CeBh97sV33Ker9CKmCKwcSaH.RsMZ5S/.zk4zacznt2', 'Active'),
(114, 'Zahra Sadiq Jaafar Muhammad', 'زهراء صادق جعفر محمد', 'stu114', 'compeng.1stmo23@alkadhum-col.edu.iq', '$2y$10$ONxrRzvQbndaO/34d8yxnu631PFIhlsQdPAQy5FOIljHMMPBisJau', 'Active'),
(115, 'Zahraa Abdul Zahra Abdul Rida', 'زهراء عبد الزهرة عبد الرضا', 'stu115', 'compeng.1stmo24@alkadhum-col.edu.iq', '$2y$10$YPatXh6VV2ho979Omi3RQ.tFjqWH7hzAM4MCNyB/b940PAqziHLLe', 'Active'),
(116, 'Zahraa Ali Ihsan Hussein Muhammad', 'زهراء علي احسان حسين محمد ', 'stu116', 'compeng.1stmo25@alkadhum-col.edu.iq', '$2y$10$fRXZZNl5XwtSs3LzF9XZje1nYKZui.BmneIFXmpbaLi3e36w2TgYy', 'Active'),
(117, 'Zahra Muhammad Jaafar Sadiq', 'زهراء محمد جعفر صادق', 'stu117', 'compeng.1stmo26@alkadhum-col.edu.iq', '$2y$10$AIVs1nnLG4WJONWT2Chv2uxYHeHhCJjaDB.5vG9a9ZQHWcRsRPqjO', 'Active'),
(118, 'Sarah Basil Abbas Kazem', 'سارة باسل عباس كاظم ', 'stu118', 'compeng.1stmo27@alkadhum-col.edu.iq', '$2y$10$pqxTLKhBpK/Th4y77eESaOmMRvr69micLeIMSTvlOTcb2uOuJdU3y', 'Active'),
(119, 'Carpet Muhammad Kazem Faraj', 'سجاد محمد كاظم فرج', 'stu119', 'compeng.1stmo29@alkadhum-col.edu.iq', '$2y$10$7DYInGlKf0TduTr.scUDl.uRRU3tzfMRO2N1lAnZKTDLcnymN/osO', 'Active'),
(120, 'Kamel Kazemelle', 'سليل كامل كاظم', 'stu120', 'compeng.1stmo30@alkadhum-col.edu.iq', '$2y$10$dCHCATlHNmdJzWx1yv9bc.VBoSepzWnEwhOKNZ1jlIH7M0o.Zrg1C', 'Active'),
(121, 'Saif Al -Din Ali Bema', 'سيف الدين علي نعمه', 'stu121', 'compeng.1stmo31@alkadhum-col.edu.iq', '$2y$10$CZ1wnyXrMHOeHkmlr3gMhej64U8G0R3lJMrmqOoAo4QDLxiFwga6i', 'Active'),
(122, 'A collection witnessed Anbet Laibi', 'شهد اجميع انبيت لعيبي', 'stu122', 'compeng.1stmo32@alkadhum-col.edu.iq', '$2y$10$7GUVsOcR2Nbnnmp32movgOxmPSTRia4iSSGOliOFME34xMt9t07v6', 'Active'),
(123, 'Saba Alaa Nawaf Rahim', 'صبا علاء نواف رحيم', 'stu123', 'compeng.1stmo33@alkadhum-col.edu.iq', '$2y$10$PkNhiB9PYp7VY8fkTeqjhudDIIOYpQundMOFb71o9.pknN7qk4Hbi', 'Active'),
(124, 'A friend of Muhammad Hashem pepper', 'صديق محمد هاشم فلفل', 'stu124', 'compeng.1stmo34@alkadhum-col.edu.iq', '$2y$10$xfS1.0L4L/E1JDyIcxCGeecfXwkaSBoaLGJWn.yOl/sWvmTMztC7a', 'Active'),
(125, 'Thamer Hassan, Wali, sacrificed', 'ضحى ثامر حسن ولي', 'stu125', 'compeng.1stmo35@alkadhum-col.edu.iq', '$2y$10$uw0pui7xNZU8uZ0dTK6OM.xwnFqiGiweWiqOs494ib0EfDfpNvDVm', 'Active'),
(126, 'Saad Asmar Ebaoudi', 'ضحى سعد اسمر اعبودي', 'stu126', 'compeng.1stmo36@alkadhum-col.edu.iq', '$2y$10$LHiA.wAFnIpjZH1qWTi5S.BiMeZ0ap1w97F7AJhwHBgB3et4kSuau', 'Active'),
(127, 'Ali Shnawah Hajim', 'ضحى علي شناوه حاجم', 'stu127', 'compeng.1stmo37@alkadhum-col.edu.iq', '$2y$10$XHSMf9nNUxc.A4ZzLTU/Kedo1951mox5daBgiAkWRFaGkQucsrf/2', 'Active'),
(128, 'Abdullah Safaa Hussein Alaiwi / Transfer from Najaf', 'عبد الله صفاء حسين عليوي / نقل من النجف', 'stu128', 'compeng.1stmo80@alkadhum-col.edu.iq', '$2y$10$JYVK1mF2mdZ6LXjHjaveGOn0mPyw6jivPVSdDJP9bVoqwVAKRqfdK', 'Active'),
(129, 'Ali Zain Al -Abidin Saleh Abdul Fayyad /Rasib', 'علي زين العابدين صالح عبد فياض /راسب', 'stu129', 'compeng.1stmo39@alkadhum-col.edu.iq', '$2y$10$k85hwIJQp2z/Ly5NqsOSveiqdYKHRrTma4PDuh6dYebAzJZEF.xjC', 'Active'),
(130, 'Ghadeer Hussein Majeed Issa', 'غدير حسين مجيد عيسى', 'stu130', 'compeng.1stmo42@alkadhum-col.edu.iq', '$2y$10$BUSgz37reG.f4T.Dz7U11eBQzgH./BnwCHv6z.8/v4oueIs9/b5HS', 'Active'),
(131, 'Ghadeer Ali Waheed Saeed', 'غدير علي وحيد سعيد', 'stu131', 'compeng.1stmo43@alkadhum-col.edu.iq', '$2y$10$j7ocsOO7jrjFcbEZiS9jXOpmi1a2sM.Eczv6kQ4nYm2Aqj9Vy9.42', 'Active'),
(132, 'Fatima Jawad Kazem Najm /postponed last year', 'فاطمة جواد كاظم نجم /تأجيل العام الماضي', 'stu132', 'compeng.2ndmo51@alkadhum-col.edu.iq', '$2y$10$v/whtPGC0MI4QqWN3tPesefVrYP3wlxGDX1eNI7Ivrt2YNPmRv7va', 'Active'),
(133, 'Fatima Ahmed Kazem Salman', 'فاطمه احمد كاظم سلمان', 'stu133', 'compeng.1stmo44@alkadhum-col.edu.iq', '$2y$10$obp0hj/v/F4VUSEUwLyFUOdbtFd2Dp1WZs6nKzsFXcmVtfm5EmTRm', 'Active'),
(134, 'Fatima Haider Laibi Menati', 'فاطمه حيدر لعيبي مناتي', 'stu134', 'compeng.1stmo45@alkadhum-col.edu.iq', '$2y$10$iUNPOM2Ss2HTqoARKFj3/O3C4Pg0.8LB/Iyv6jU6kd2isZWe0l2j.', 'Active'),
(135, 'Fatima Razij Hamoud Zahiri', 'فاطمه رزيج حمود زهيري', 'stu135', 'compeng.1stmo46@alkadhum-col.edu.iq', '$2y$10$Jr0BqlShPdDZ.hTQNsnTge88nqv8NFnsb1AZ8bg256s6i/GlDD0oa', 'Active'),
(136, 'Kawthar Jassim Nakhsh Abbas', 'كوثر جاسم نخش عباس', 'stu136', 'compeng.1stmo50@alkadhum-col.edu.iq', '$2y$10$S1Y5hAQFps/F7u7Vh9ird.EE7Y2NpxM2bW7Cuq61f5VYLMHhho8EK', 'Active'),
(137, 'Kawthar Jawad Nima Hassan', 'كوثر جواد نعمة حسن', 'stu137', 'compeng.1stmo51@alkadhum-col.edu.iq', '$2y$10$OO4o/BLc9kv8ZGRAwib0De4WDZMbZXCtrZiW3GWUl0IXl3G7.vMf6', 'Active'),
(138, 'Lina Abdel -Saad Jali', 'لينا عبد الساده جالي', 'stu138', 'compeng.1stmo52@alkadhum-col.edu.iq', '$2y$10$0Wu9NX1jLLhumWcEILQDt.1lWY0/aa1p8DAlI9FXZePcjsTtf/xIa', 'Active'),
(139, 'Muhammad Bassem Fakher, the cup of Nasrallah', 'محمد باسم فاخر فنجان نصر الله', 'stu139', 'compeng.1stmo53@alkadhum-col.edu.iq', '$2y$10$OctpHjAdIkehIlHrrqn7hOZW.SXqwc6TRQxt5x5joLEgV.MoDBTra', 'Active'),
(140, 'Muhammad Abbas Hadi Jassim', 'محمد عباس هادي جاسم', 'stu140', 'compeng.1stmo54@alkadhum-col.edu.iq', '$2y$10$i3NkLLIZdmUxIBtQrjuhYueZIrcTsA7IXdirU0ehqGrIR31.doBjq', 'Active'),
(141, 'Muhammad Fadel Laibi', 'محمد فاضل لعيبي ', 'stu141', 'compeng.1stmo55@alkadhum-col.edu.iq', '$2y$10$S8WG/A321ht6WxWM3IMcG.1XpgQmbGBC8yG/t7TNaQ1mAbZD4Fj7m', 'Active'),
(142, 'Mortada Saad Salem/postpone the fourth role', 'مرتضى سعد سالم/تأجيل دور رابع', 'stu142', 'compeng.1stmo71@alkadhum-col.edu.iq', '$2y$10$AcdcgKvk3wH5f7mpG4WcP.H0ZqZC5.3OSXTLpNgfqhbHOx8i0QxVa', 'Active'),
(143, 'Maryam Sadiq Sharif Karam Allah', 'مريم صادق شريف كرم الله', 'stu143', 'compeng.1stmo59@alkadhum-col.edu.iq', '$2y$10$NmNvN8sh1ZR1/9zmfvyUsOcOZBRU22nuWFB4pfErEVMCs..IK3xy.', 'Active'),
(144, 'Mustafa Muhammad Radi Hussein', 'مصطفى محمد راضي حسين', 'stu144', 'compeng.1stmo60@alkadhum-col.edu.iq', '$2y$10$247ioECNPHeJj.nBHsIeZOTzQ.59vKqKPytisrrIXrRq87GYLN9oC', 'Active'),
(145, 'Muntazer Qasim Abdul Karim /Rasib', 'منتظر قاسم عبد كريم /راسب', 'stu145', 'compeng.1stmo61@alkadhum-col.edu.iq', '$2y$10$OFO6QOmnGMPGeGrKYrXbnuNNoPnchriohRaPUY0NtgQPei1N2RSKW', 'Active'),
(146, 'Narges Ibrahim Jassim Mohamed /Rasib', 'نرجس ابراهيم جاسم محمد /راسب', 'stu146', 'compeng.2ndmo65@alkadhum-col.edu.iq', '$2y$10$AIURmD4wXbj.448Y2hSh0uMFSYYwwaOyu4DJ6IbYfB8Xxgwb196c.', 'Active'),
(147, 'Nour Al -Zahra Ahmed Abdel Musabah', 'نور الزهراء احمد عبد مصبح ', 'stu147', 'compeng.1stmo63@alkadhum-col.edu.iq', '$2y$10$57VW3XxWtvaBNrxE7nQq5e/GZcwlI19O/gPhyRJDiZBoP6CqQa1Wq', 'Active'),
(148, 'Nour Al -Huda Hakim Kazem Badr', 'نور الهدى حكيم كاظم بدر', 'stu148', 'compeng.1stmo64@alkadhum-col.edu.iq', '$2y$10$PLFkEXdtwW8NKdG2INLEGuhNLH/C9YoV0Uyut4GLsXeDZBvgtBjvK', 'Active'),
(149, 'Hajar Muhammad Hashem Naimah', 'هاجر محمد هاشم نعمه', 'stu149', 'compeng.1stmo65@alkadhum-col.edu.iq', '$2y$10$phEvY/3KVelFeNTYpyYJt..OGVy/ri7CY8q9uNQmLrjYS6RrlSvH.', 'Active'),
(150, 'Roud Uday Talib Asad', 'ورود عدي طالب اسد', 'stu150', 'compeng.1stmo66@alkadhum-col.edu.iq', '$2y$10$miugw4Y6L0OR9JMZkYciCOMqOB7xwHycWdMbkVtJTl/RQ45vWjLXi', 'Active'),
(151, 'Walaa Qasim Adnan Nima', 'ولاء قاسم عدنان نعمة', 'stu151', 'compeng.1stmo67@alkadhum-col.edu.iq', '$2y$10$hCON3w8XCpbe9yRIlhX8Pu9EtRYSb468uAML2M55Y/.cAdsRe9rGC', 'Active'),
(152, 'Yasine Yas Khudair Alewi', 'ياسمين ياس خضير عليوي', 'stu152', 'compeng.1stmo68@alkadhum-col.edu.iq', '$2y$10$w6GWCCH8G/D48sKAyEz3HOFSnjbQvLYMUepLi/PaQQ2nlq/kVMkuy', 'Active'),
(153, 'Ahmed Thaer Shukr Mahmoud Al -Bayati', 'احمد ثائر شكر محمود البياتي ', 'stu153', '2101143074@alkadhum-col.edu.iq', '$2y$10$0ie0eWJirWMX4FCDJWZUd.XKOZyPbynoJ1wQ8UvlobYhb3m7fyy9C', 'Active'),
(154, 'Ahmed David Salman Saleh Al -Saadi', 'احمد داوُد سلمان صالح الساعدي', 'stu154', '2101143067@alkadhum-col.edu.iq', '$2y$10$E1PVjXDyaRFbd5JldALRKONQrmJdcyFlT1kfuWHbXa6FPFaOe/SEa', 'Active'),
(155, 'Ahmed Salman Rahim Shati Al -Saadi/ Rasib', 'احمد سلمان رحيم شاطي الساعدي/ راسب', 'stu155', '2001149489@alkadhum-col.edu.iq', '$2y$10$D/laH5i6px/ergMVEr8Cbu9t7OaX5LmSZGHg0YoUTfscwJsyTFeui', 'Active'),
(156, 'Ahmed Moayad Muhammad Nimr', 'احمد مؤيد محمد نمر', 'stu156', '2101143086@alkadhum-col.edu.iq', '$2y$10$BP2lyclQfEmM/FbCJjlxWOUoAqnm2qyWrXAa3DP8siJPhLWhOuv1C', 'Active'),
(157, 'Aseel Abdel -Hassan Rahima Najm Al -Saadi', 'اسيل عبدالحسن رحيمة نجم الساعدي', 'stu157', '2101143063@alkadhum-col.edu.iq', '$2y$10$.uyv7XE7X6fm7bcn.b/77u36GyGlX1ofBQgq8dd1EA/46o9V/3E3C', 'Active'),
(158, 'Issen Hussein Hatem Hassan Al -Saadi', 'ايسن حسين حاتم حسن  الساعدي', 'stu158', '2101143036@alkadhum-col.edu.iq', '$2y$10$iCOQzWWyqsh.t4jlaVdCguFv6kosN6TfrNF7u00WPbR2oJ/8JhPOu', 'Active'),
(159, 'Iman Bani Hussein Sarhan Al -Sudani', 'ايمان بني حسين سرحان السوداني', 'stu159', '2101143037@alkadhum-col.edu.iq', '$2y$10$ZNk1NbEzeMsVW0GSk7vRL./nkLBug9Mm5rsBcnVJzyBYyaykAWUrO', 'Active'),
(160, 'Ayman Ali Hussein Duhan Al -Saleh', 'ايمن علي حسين دوهان الصالح', 'stu160', '2101143038@alkadhum-col.edu.iq', '$2y$10$VSx5iDZJ9IRWlT7I9KRQteKpiLKdX7.i9Q/YPcxWm638BIGKL8fvO', 'Active'),
(161, 'Jannah Muhammad Safaa Taha Al -Ubaidi', 'جنه محمد صفاء طه العبيدي  ', 'stu161', '2101143039@alkadhum-col.edu.iq', '$2y$10$cNND87Xp6/vk4izFohPUhuHJr9jfko2LXqGLbG4dIbMIvymCcXwNa', 'Active'),
(162, 'Habib Ali Filhi Jouda Al -Musawi', 'حبيب علي فلحي جودة الموسوي', 'stu162', '2101143066@alkadhum-col.edu.iq', '$2y$10$OMsJi8KyEttWYGhT0LE0g.PS7ZbKpvoxU8WnSvvPx1qC/DOtiorsK', 'Active'),
(163, 'Hassan Majid Jalil Abboud Al -Rubaie', 'حسان ماجد جليل عبود الربيعي', 'stu163', '2101143071@alkadhum-col.edu.iq', '$2y$10$ieesmh/iJwVU28aB.rFaeefrtXzbOQk7LjW0AsTYK00ghb4LEKXYS', 'Active'),
(164, 'Hussein Ali Abdul -Hussein Jabr al -Sarraji', 'حسين علي عبدالحسين جبر السراجي', 'stu164', '2101143041@alkadhum-col.edu.iq', '$2y$10$Ddeipv48gl.puIKpnw9kX..n1qwSvDcAbndmj/M.5HLE9biEnEbWq', 'Active'),
(165, 'Hussein Ali Madi Al Bandawi', 'حسين علي ماضي البنداوي ', 'stu165', '2101143079@alkadhum-col.edu.iq', '$2y$10$hAP6dIrtRZ.7rQjieZb8BelxAjHx15ckEfbusy12rzGlefChq5XvG', 'Active'),
(166, 'Haider Salam Nasser Khalaf Al -Freiji /Rasib', 'حيدر سلام ناصر خلف الفريجي /راسب', 'stu166', '2001149@alkadhum-col.edu.iq', '$2y$10$M2Xe173LBvvYAdzaY.0yBeqCy1nBRtBfLT93zXgLUv8FGfebAEHue', 'Active'),
(167, 'Haider Fadel Hariz Fahd Al -Saadi /Rasib', 'حيدر فاضل حريز فهد السعدي /راسب', 'stu167', '2001141428@alkadhum-col.edu.iq', '$2y$10$.EmenNGRpYHea/JRzbajqudKGaxSKM8dS8J.Llvmw1JVtDJSLFXH.', 'Active'),
(168, 'Haider Fahim Muhammad Kazem Al -Khashali /Rasib', 'حيدر فاهم محمد كاظم الخشالي /راسب', 'stu168', '20011452@alkadhum-col.edu.iq', '$2y$10$stZrmh0FykraVRFyrnoaduEfPS5CBzGDDzjA3Qg4rQ5yZDn/MbZxq', 'Active'),
(169, 'Dina Jassim Abdul -Thajil Al -Akili', 'دينا جاسم عبد ثجيل العكيلي', 'stu169', '2101143085@alkadhum-col.edu.iq', '$2y$10$vq1gT/LCFOHUWj44qzGdw.4L.UaHP2y..Mq/zomYHwFuyCtRDnA6i', 'Active'),
(170, 'Russell Raad Abdul Hussein Kabashi', 'رسل رعد عبد الحسين كباشي ', 'stu170', '2101143042@alkadhum-col.edu.iq', '$2y$10$dbdEk0F90dX1pmM9xVSmweK9rAMjATLW2cOaHcI32vVZ6G27c3bYm', 'Active'),
(171, 'Rayyam Nabil Abdel -Saadah Al -Ashmari', 'ريام نبيل عبد الساده عطيه ألشمري', 'stu171', '2101143076@alkadhum-col.edu.iq', '$2y$10$9JOcztL1UaJ8bGjVGwxKte4U7vK78he62VogfyVOj5KbzJlBbWCn.', 'Active'),
(172, 'Sajjad Ahmed Hussein Alwan Khazali /Rasib', 'سجاد احمد حسين علوان الخزعلي /راسب', 'stu172', '2001143826@alkadhum-col.edu.iq', '$2y$10$cxuS3P2kMLTVg8gJxeGnNexvVIcEif9KXurB.Ufd4aPZxrs3SC7qm', 'Active'),
(173, 'Carpet Abdul Nasser Hussein Al -Gharibawi', 'سجاد عبد ناصر حسين الغريباوي', 'stu173', '2101143084@alkadhum-col.edu.iq', '$2y$10$6V0.d1ZsJ1Bvm3Wv0sNdTe0WtXOKDveWErPUCw30.wjfHFom3OtTm', 'Active'),
(174, 'Kazem Hassan Carpets Crime /Rasib', 'سجاد كاظم حسن لفتة السراي /راسب', 'stu174', '2001149789@alkadhum-col.edu.iq', '$2y$10$Q4P9U8/LU2GKlUJqH.HajeOerifVX.1ckIKJp6WHiJVY6zuyGGQVe', 'Active'),
(175, 'Hashem Carpet Dhaif Thamer / Rasp 2', 'سجاد هاشم ضايف ثامر / راسب2', 'stu175', 'compeng.1stev31@alkadhum-col.edu.iq', '$2y$10$Kr5aR3KpJo1yKDt1603/DuzcnE5GVTwikDN8huKRAqRDIV.4HuXhy', 'Active'),
(176, 'Diaa Ihsan Shaghai Abdul -Sayed Al -Maliki', 'ضياء احسان شغاتي عبد السيد المالكي ', 'stu176', '2101143043@alkadhum-col.edu.iq', '$2y$10$TzmouDS5xuw5HUkcKBjyU.FbTM4Eh8Cx3oRfyqYn/Cz9BHjl7Gu1C', 'Active'),
(177, 'Abbas Ali Shard Harami Al -Zubaidi', 'عباس علي شراد حرامي الزبيدي', 'stu177', '2101143044@alkadhum-col.edu.iq', '$2y$10$9QOUclcIsOb.W.ORx4KlUezV7W4/btNOgp/mg2TOpAdecMewsMHiC', 'Active'),
(178, 'Alaa Abdul Amir Sahib Ali Al -Awidi', 'علاء عبدالامير صاحب علي العويدي ', 'stu178', '2101143045@alkadhum-col.edu.iq', '$2y$10$hdi.YLlEZXipFReVvQKYuOPz7qpkNxr6RuL1LYDMVNQZRhV2S/1ka', 'Active'),
(179, 'Ali Al -Murtada, Ihsan Salem Ghanem /Rasib', 'علي المرتضى احسان سالم غانم /راسب', 'stu179', '20011410886@alkadhum-col.edu.iq', '$2y$10$Kkarko79mCgPx6AtJMDO2.hl38Kcm4uRb0lMpOjf.NLtpJZfs4X1S', 'Active'),
(180, 'Ali Samir Salman Laya Al -Maksousi /Rasib', 'علي سمير سلمان لويع المكصوصي /راسب', 'stu180', '2001149502@alkadhum-col.edu.iq', '$2y$10$2TH9iiOKocAhWoHJBntYIuRsJtAjk.GiIBlQ6mKeEwbz3TBbymSzK', 'Active'),
(181, 'Ali Talib Hassan Sakr Al -Rubaie', 'علي طالب حسن صكر الربيعي ', 'stu181', '2101143046@alkadhum-col.edu.iq', '$2y$10$4Jqkog0r1jRrIhM6MUfcXuWENV0ehwqcd3vICIxy8y63nvVE/JNvm', 'Active'),
(182, 'Ali Assi Nazzat Al -Kinani /Rasib', 'علي عاصي نزال ساجت الكناني /راسب', 'stu182', '200114103@alkadhum-col.edu.iq', '$2y$10$oI4.6sR2O9b3DBh1KwF44uCi5Zja5aOhV4JMU21cOQSfy8KWYN9ha', 'Active'),
(183, 'Ali Qasim Muhammad Muhammad Youssef Al -Maqra /Rasib', 'علي قاسم محمد محمد يوسف المقرأ /راسب', 'stu183', '2001143829@alkadhum-col.edu.iq', '$2y$10$xhFPQdRTwri89nhAFcqPi.aBHKtgr8R/DZ0BVRCH5UDed/0Td85rm', 'Active'),
(184, 'Furqan Ahmed Rahma Jassim Al -Shara', 'فرقان احمد رحمه جاسم الشرع', 'stu184', '2101143047@alkadhum-col.edu.iq', '$2y$10$Rs2n9N/fXnwydDDc/7vQ1uUMp1LAk/FHekVD3NLVTGYa/lShRFNjC', 'Active'),
(185, 'Maher Uraibi Zayed Sadakhan Al -Sudani', 'ماهر عريبي زايد سدخان السوداني ', 'stu185', '2101143048@alkadhum-col.edu.iq', '$2y$10$r.lRUbYxTwafmaUGp5BsLuG/x6EDHb9Z5a3.fwaiTdDJ/UHDkTiuu', 'Active'),
(186, 'Mohamed Khaled Abdel Zahra, Dr. Rasib', 'محمد خالد عبد الزهره دكتور دكتور /راسب', 'stu186', '20011410890@alkadhum-col.edu.iq', '$2y$10$n1AiME2PowZ8TLGjFDOnMOQhy6KnOWjr8HcKxcgGWVGR6eq6cH07e', 'Active'),
(187, 'Muhammad Tariq Hashem Shati Al -Shamousi', 'محمد طارق هاشم شاطي الشموسي  ', 'stu187', '2101143050@alkadhum-col.edu.iq', '$2y$10$yqKmi9ZEmHjYzE8dg7bCQOBWwgFbnOAZkQm/Ec1xqcbLM1DCtroAu', 'Active'),
(188, 'Muhammad Majeed Attia Kazem Al -Aqabi', 'محمد مجيد عطيه كاظم العقابي', 'stu188', '2101143058@alkadhum-col.edu.iq', '$2y$10$rJfDXjER/iyLaQHooQpa0O6ZD4qbq4c9g1GGQCyxLK1REAX1hdR2C', 'Active'),
(189, 'Mortada Malik Hussein Nima Al -Mousawi', 'مرتضى مالك حسين نعمة الموسوي', 'stu189', '2101143061@alkadhum-col.edu.iq', '$2y$10$0A0iNT69L3l.Ki/Q9aixwO/Tz59q.qWlQMAr/aUyxc9WCsMiHuIjO', 'Active'),
(190, 'Marwa Hassan Alwan Hussein Al -Tamimi', 'مروة حسن علوان حسين التميمي ', 'stu190', '2101143051@alkadhum-col.edu.iq', '$2y$10$l3ogX5vQyZnOXfaD5p3b4.DHstG7b.3xUEK8JdSA8c2O2sPO.F/Sa', 'Active'),
(191, 'Muslim Hussein Jaber Naimah Al -Saeedi', 'مسلم حسين جابر نعيمه السعيدي ', 'stu191', '2101143052@alkadhum-col.edu.iq', '$2y$10$v4jJDjgZ4RQ0l9CKKdVjY.0fvuCTgvod3lPku4GF47VSCy1MM4Ne6', 'Active'),
(192, 'Mustafa Dawood Salem Damad Al -Jizani /Rasib', 'مصطفى داود سالم ضمد الجيزاني /راسب', 'stu192', '2001148335@alkadhum-col.edu.iq', '$2y$10$gUXeLD6iEpqKZ299TBZxg.PBb/4Dr9Shjy32Dtwpm3TW7FL5nG.vC', 'Active'),
(193, 'Muntazer Ali Shaker Ali Al -Kinani', 'منتظر علي شاكر علي الكناني ', 'stu193', '2101143054@alkadhum-col.edu.iq', '$2y$10$oNTcsVBBlrkfb.jvoRFohe5sfbjdIBrDJ0p4yKXfewu/q.prFARe6', 'Active'),
(194, 'Muntazer Ali Nasser Hussein Al -Saray', 'منتظر علي ناصر حسين السراي', 'stu194', '2101143055@alkadhum-col.edu.iq', '$2y$10$8YVUaqOW6HVpI4QdwPzppONUqRurzkRATKIBwgirl9aZVzumF4k/u', 'Active'),
(195, 'Mahdi Mushtaq Talib Salman Sade', 'مهدي مشتاق طالب سلمان ساده ', 'stu195', '2101143065@alkadhum-col.edu.iq', '$2y$10$LEEVnvS1EaB64By7bSdz/.XexY90/aOTh/DVhHlz8qZhmeUT07Ahq', 'Active'),
(196, 'Muhannad Ali Youssef Shuail Al -Hafizi', 'مهند علي يوسف شعيل الحفاظي', 'stu196', '2101143056@alkadhum-col.edu.iq', '$2y$10$EgoMX9AQudCWLehKZP9syOCoBMN3BoCeFzKFFd2gQm6Z9/lJ0fWxm', 'Active'),
(197, 'Ibtihal Kazem behind Zughair Al -Saadi', 'ابتهال كاظم خلف زغير الساعدي', 'stu197', '20011413213@alkadhum-col.edu.iq', '$2y$10$A7eXMSBMLLUybCf52hVX4uVnOIDjQf4vwvgS.DhitnVcpB0bGjVvu', 'Active'),
(198, 'Atheer Hussein Khalaf Abdul Reda Al -Muhammadawi', 'اثير حسين خلف عبد الرضا المحمداوي', 'stu198', '20011413211@alkadhum-col.edu.iq', '$2y$10$O5DGDfW5zBzK5AQyesQPWuaPSkMbdUqBez.5CsG2LmUXEl09YunIm', 'Active'),
(199, 'Ahmed Hassan Ali Hussein Al -Hashemi', 'احمد حسن علي حسين الهاشمي', 'stu199', '2001147@alkadhum-col.edu.iq', '$2y$10$yrfJ3lbjk3xxsDM0u7Xzc.hhZLXOSxoP9l9on84q4cRGvOfw0Lmjm', 'Active'),
(200, 'Ahmed Nagy Katta Odeh Al -Saadi', 'احمد ناجي كاطع عوده الساعدي', 'stu200', '20011415@alkadhum-col.edu.iq', '$2y$10$.6bb8neDwbjY//XUFHZEK.ba3Fpa44xFu.41D5USqXV3VMAhIh4h6', 'Active'),
(201, 'The wedding of Hazem Muhammad Abd al -Hussein al -Sultani', 'افراح حازم محمد عبد الحسين السلطاني', 'stu201', '20011413212@alkadhum-col.edu.iq', '$2y$10$ieUaZlLezVuFBF0sL1qw6esdfNhdYPY2FbSS/9B0GKJ69b7GDhdPm', 'Active'),
(202, 'Akram Shaker Mahmoud Faraj Al -Taie', 'اكرم شاكر محمود فرج الطائي', 'stu202', '2001143827@alkadhum-col.edu.iq', '$2y$10$pF1UNt5tL8skhW1hXjzvGeW.V0CJmzr6Qp3job8cM1B29jFAg89ja', 'Active'),
(203, 'Acer Saleh Jawdah Munif Al -Shammari', 'ايسر صالح جوده منيف الشمري', 'stu203', '20011448@alkadhum-col.edu.iq', '$2y$10$SA4o6rS5Z3Y4FxaGyGkzRu5fGo87ooFQ3/GjV9tWEtEcuVlzXKMXC', 'Active'),
(204, 'What Ali Hashem Shenit Al -Asadi', 'ايه علي هاشم شنيت الاسدي', 'stu204', '20011456@alkadhum-col.edu.iq', '$2y$10$WHzCyrlKstCMwFuTOibRNOuMg/AKY.dxdBOI1rZiL6LZj8CPzHD5O', 'Active'),
(205, 'Free Jawad Kazem Jassim Jassim', 'حر جواد كاظم جاسم جاسم', 'stu205', '2001143251@alkadhum-col.edu.iq', '$2y$10$IAdG2rxN1U40nFwDikjeKuNTBMutNo/bzk4Ao7d/2CuXVxQpNJjPS', 'Active'),
(206, 'Hussein Bassem Jakhm Dahi Al -Khafaji', 'حسين باسم جخم ضاحي الخفاجي', 'stu206', '20011414@alkadhum-col.edu.iq', '$2y$10$DziHydw2/zeQzIRnOgg5geZb6o2YkLXzn8jiBjYs90g0gMbDAjqKm', 'Active'),
(207, 'Hussein Ali is necessary for his son Al -Lami', 'حسين علي لازم ابنيه اللامي', 'stu207', '20011499@alkadhum-col.edu.iq', '$2y$10$iU6Nid6nnDy8YPXtcR48aOcT19iouUEfrm9i15YYOi1DHzdHujgzG', 'Active'),
(208, 'Hussein Haitham Faisal Ghazi Ramadan', 'حسين هيثم فيصل غازي رمضان', 'stu208', '2001141089@alkadhum-col.edu.iq', '$2y$10$Op9ybCAdZrQ6A9gilFwMa.LPG2EDnf6xChBEIYEeansjAAmBoJHKu', 'Active'),
(209, 'Khadr Riyad Karim Ghamis Al -Dhahabawi', 'خضر رياض كريم غميس الذهيباوي', 'stu209', '20011413579@alkadhum-col.edu.iq', '$2y$10$xLbktBFJOWs6HqI2iKPAgetjbGe/qKSUcAaFpcbOI0lHfPp7h4WXW', 'Active'),
(210, 'Zainab Hassan Falih Jassim Jassim', 'زينب حسن فليح جاسم جاسم', 'stu210', '20011418@alkadhum-col.edu.iq', '$2y$10$oZ.GXMU.fSuGaUahCe/ZQOl1mA4IddRdiOL8D4tl54KDZ8OTau4ze', 'Active'),
(211, 'Zainab Rasim Tayeh Jahjouh Al -Awidi', 'زينب راسم تايه جحجوح العويدي', 'stu211', '200114163@alkadhum-col.edu.iq', '$2y$10$hNprh.SG61oZocvZ8D8Q2.eKZJT6NpKg7K0hRVihEtxIFIWVL/zi6', 'Active'),
(212, 'Sarah Saeed Jawad Kazem Kazem', 'سارة سعيد جواد كاظم كاظم', 'stu212', '20011445@alkadhum-col.edu.iq', '$2y$10$.7KtaBJwlbvH9LfnAnj9juvbkMaXTXr0UuSItK.eq2456aqMosiWa', 'Active'),
(213, 'Sarah Ghazi Jabal/Rasib', 'سارة غازي جبل/راسب', 'stu213', '19011412660@alkadhum-col.edu.iq', '$2y$10$ACoSSXrXSbCANjVZhR88yO5x9UVgjaZBXI8KydMa8hmXSUyIFcL86', 'Active'),
(214, 'Samer Halim Youssef Issa Al -Talibat', 'سامر حليم يوسف عيسى الطليبات', 'stu214', '2001149792@alkadhum-col.edu.iq', '$2y$10$6B0./9Of2rUYJ6wwgyeK.OkeSwT5tHdL5USwS.sgVswgHadie1vvi', 'Active'),
(215, 'Carpet Muhammad Abbas Abdel Hassan / Rasib', 'سجاد محمد عباس عبد الحسن / راسب', 'stu215', 'compeng.1stev30@alkadhum-col.edu.iq', '$2y$10$VTkupZnj6AYAL1Cbzk.YRugiJS3jXE7mfIjtohSExX3bJ49NdtBq2', 'Active'),
(216, 'Sahar Salem Mahdi Muhammad Al -Hijabi', 'سحر سالم مهدي محمد الحجابي', 'stu216', '2001145866@alkadhum-col.edu.iq', '$2y$10$LJqEwrKfQM0x2zYJ/aVWgeQHz.zz7JYYKGFngx8NK7usBaBNugRAu', 'Active'),
(217, 'Ali Nile Ali Abdul Hussein Al -Tamimi', 'علي نايل علي عبد الحسين التميمي', 'stu217', '2001149495@alkadhum-col.edu.iq', '$2y$10$YOoiipeN41iGex.sGTFgzeS89qRXV3wQ1j7.wPN0bVro74FGhg3by', 'Active'),
(218, 'Ali Hisham Hammoud started Al -Maliki', 'علي هشام حمود بداي المالكي', 'stu218', '20011412148@alkadhum-col.edu.iq', '$2y$10$i8J26uWMCEwwtEvEY5mHk.u/1LaymIvqhA/4zK7b.hT7GmdrC14ze', 'Active'),
(219, 'Omar Jassim Muhammad Jassim Al -Maksousi', 'عمر جاسم محمد جاسم المكصوصي', 'stu219', '2001147679@alkadhum-col.edu.iq', '$2y$10$HSbwAhbRiazKnjfobAQLGewWp32Mx.GYrSg4fdeMOq0U5moR8s7h6', 'Active'),
(220, 'Ghazi Thaer Ghazi Shadi Al -Mayahi', 'غازي ثائر غازي شراد المياحي', 'stu220', '2001141963@alkadhum-col.edu.iq', '$2y$10$4XxKNhLrVjgsEOnZxX5useo61MDqtc15QipHVmE.91xJ5WcRQcz9W', 'Active'),
(221, 'Fatima Hamid Mortada Rahim Al -Haidari', 'فاطمة حامد مرتضى رحيم الحيدري', 'stu221', '2001141171@alkadhum-col.edu.iq', '$2y$10$FXPlf.9SndUVtFYDXWeL3.ENE4msTLr1yoQDh3tGugnId0GPzs4nK', 'Active'),
(222, 'Fatima behind Attia Karim Al -Fartousi', 'فاطمه خلف عطية كريم الفرطوسي', 'stu222', '2001143830@alkadhum-col.edu.iq', '$2y$10$kBv/KqhXv4lTVoqudKqRnuvWeJH6bVzjruiRzJW0iAI.GENv9HEg.', 'Active'),
(223, 'Fatima Talal Bunyan Bunyan Al -Daraji', 'فاطمه طلال بنيان بنيان الدراجي', 'stu223', '2001147673@alkadhum-col.edu.iq', '$2y$10$wHUiJhl4SD4JGE9hajOYkuHTB5V3ytIkP4Ck5woQlMlsVe7t2FObG', 'Active'),
(224, 'Fakhry Jabr Ja`far Jaafar', 'فيحاء فخري جبر جعفر جعفر', 'stu224', '2001143253@alkadhum-col.edu.iq', '$2y$10$aDgBs2/IyxINtVbizbdEDuDCdx55kA57u5Sys6JLhIW8FIXgGdisi', 'Active'),
(225, 'Muhammad Jassim Matar Karim Al -Saadi', 'محمد جاسم مطر كريم السعدي', 'stu225', '2001147674@alkadhum-col.edu.iq', '$2y$10$oVCl53yin4NSxhXHeg721uCqCUhiOtVct3ruL9KNvNcnWW0IQG7Va', 'Active'),
(226, 'Muhammad Hussein Khalaf Hussein Al -Shuwaili', 'محمد حسين خلف حسين الشويلي', 'stu226', '2001141088@alkadhum-col.edu.iq', '$2y$10$mKIPwrIQ3BFK9azOOgLas.fVLiUo/RKoQp8PZOq.qOT3IBAZO8NZ.', 'Active'),
(227, 'Muhammad Ali Majid Odeh /Tajil', 'محمد علي ماجد عوده /تاجيل', 'stu227', 'compeng.1stev49@alkadhum-col.edu.iq', '$2y$10$fwyxOH4QcmW9PSakO.IPsO.54R5JXRbwNHwi/x89Elcia8Xa2K6we', 'Active'),
(228, 'Mortada Saad Labib Hadi/ Rasib', 'مرتضى سعد لبيب هادي/ راسب', 'stu228', 'compeng.1stev65@alkadhum-col.edu.iq', '$2y$10$lPG.6pTP.DP8hDQr1gstqOcMdqsD.WlG6WrVmVnkX2fazKEDW/CSS', 'Active'),
(229, 'Murtada Muhammad Hamid Khudair al -Jubouri', 'مرتضى محمد حامد خضير الجبوري', 'stu229', '2001148337@alkadhum-col.edu.iq', '$2y$10$hGBTMBSgh6xGk9R7/VljcuFbcLW5pJMz8.NwfVCE4Vq2ILfbyf0ey', 'Active'),
(230, 'Marwa Hussein Ali Hussein Al -Zubaidi', 'مروه حسين علي حسين الزبيدي', 'stu230', '2001148440@alkadhum-col.edu.iq', '$2y$10$2Qif.oYSvDDO76xUlUFgvu5a6ytmpgaT2HPOMEO5KkkHAiswYzXVW', 'Active'),
(231, 'Mustafa Salah Jaber in his hand', 'مصطفى صلاح جابر بيده البيضاني', 'stu231', '2001143831@alkadhum-col.edu.iq', '$2y$10$QZDCGptAOrRUVNcUuwBPfOYwd8YL9fPbtA336yF2Ted4WQfWa8Idq', 'Active'),
(232, 'Mustafa Nazim Hamad Abdul Rida Al -Lami', 'مصطفى ناظم حمد عبد الرضا اللامي', 'stu232', '2001141434@alkadhum-col.edu.iq', '$2y$10$Xn8taBby3oRHCKMOC7GlyuRW2YsmfvCeqP53m3DFs7yPa8/3lGlr2', 'Active'),
(233, 'Muntazer Salim Khalaf Kazem Al -Akili', 'منتظر سليم خلف كاظم العكيلي', 'stu233', '20011449@alkadhum-col.edu.iq', '$2y$10$0XVk6z7UZabFSgxK/aHO7ugKcGHmkU4griubxrXMRKwAiuBwD/mDu', 'Active'),
(234, 'Muntazer Kazem Rahma Hassan Al -Aqabi', 'منتظر كاظم رحمة حسن العقابي', 'stu234', '2001149500@alkadhum-col.edu.iq', '$2y$10$DhyQPC4AVvu04CpvxiCD7OobfOCkObRBTXFrRyaxZ3fsdWTnuLGwq', 'Active'),
(235, 'Awaited Karim Kazem Alwan Al -Halfi', 'منتظر كريم كاظم علوان الحلفي', 'stu235', '2001143828@alkadhum-col.edu.iq', '$2y$10$wYFwAnmUcF3c7AlG5A2Rl.GWfzpCzIFnuA.GNFg80fqIKsQ/fjDTS', 'Active'),
(236, 'Mussa Qusay Abdel Hassan Mahmoud Al -Rubaie', 'مؤمل قصي عبد الحسن محمود الربيعي', 'stu236', '20011465@alkadhum-col.edu.iq', '$2y$10$KGMQ6i/8O6wh29VaRyxaKuYeKDEpfA/hbS8cI1uKApDyq1vmTiGOK', 'Active'),
(237, 'Nour Al -Huda Star Hassan Shendakh Nour El Din', 'نور الهدى ستار حسن شنداخ نور الدين', 'stu237', '20011410888@alkadhum-col.edu.iq', '$2y$10$ita6uDOc/1SyFCC1CToVRezIr40coxqKn.AZ2xhlq44AyiseXBwP6', 'Active'),
(238, 'Hajran Khalaf Shaya Jabbar Al -Mousawi', 'هجران خلف شايع جبار الموسوي', 'stu238', '20011468@alkadhum-col.edu.iq', '$2y$10$e09CWMNRUCAfz0WcQRZ2/OU9d25SPc.2ddGRXSxHBUWI.DonAzry.', 'Active'),
(239, 'Youssef Majid Mahmoud / Odeh / postponement', 'يوسف ماجد محمود /عودة / تأجيل', 'stu239', 'compeng.1stev85@alkadhum-col.edu.iq', '$2y$10$bRBa5ujc1mTeYmbSuEzmYurcR/77gxdhHkPpkqRt6azepWDLukoxS', 'Active'),
(240, 'Ibrahim Karim Fadala Male/Fase of download', 'ابراهيم كريم فضالة مايع/راسب بالتحميل', 'stu240', 'compeng.2ndev1@alkadhum-col.edu.iq', '$2y$10$bifXVN9nQW/UONFU.AUaLuz0p2rBG1HDmGAO1k.2Xhr2kWZkXUR9q', 'Active'),
(241, 'Ahmed Taha Hashem Nuri', 'احمد طه هاشم نوري ', 'stu241', 'compeng.1stev1@alkadhum-col.edu.iq', '$2y$10$009EqbgrMVvksptjCPJn.On7DyfJvZAIhHFhH/vS83XIj4XbwqeS.', 'Active'),
(242, 'Ahmed Farhan Ali Sagat', 'احمد فرحان علي ساجت', 'stu242', 'compeng.1stev2@alkadhum-col.edu.iq', '$2y$10$1sSHGkvUhOb6u3zY2/i/AOq5IeaWxa96b1NxYwM9WcztCDP/Yx5Xy', 'Active'),
(243, 'Security Youssef Ghazi Khalil', 'امنية يوسف غازي خليل', 'stu243', 'compeng.1stev6@alkadhum-col.edu.iq', '$2y$10$VNUvpkXCcb1Kv1RzvZARqeYYxUHlCZcfxHm7/uNzhdRGrLXpQ7VSW', 'Active'),
(244, 'Taqi Kazem Jabbar Hadi', 'تقي كاظم جبار هادي', 'stu244', 'compeng.1stev9@alkadhum-col.edu.iq', '$2y$10$dXY3dLyLU.HI4cZb5S3/OOuRDylTX3Qmd9kgU8aRsufUQKJF6ufCq', 'Active'),
(245, 'Hassan Zamil Jaber Ahar', 'حسن زامل جابر عذير', 'stu245', 'compeng.1stev11@alkadhum-col.edu.iq', '$2y$10$DZ9p7sFby6E8ia.ju7EX..FWITnl9.2z8WQ..ddqrIIbjGv5Nbi8q', 'Active'),
(246, 'Hassan Ali Helou Khasaf', 'حسن علي حلو خصاف', 'stu246', 'compeng.1stev12@alkadhum-col.edu.iq', '$2y$10$x8l0gBDYy5xH4djIR.mgNOTGOaSDmH9L/.4ewH13e0cRtjMkBmu1O', 'Active'),
(247, 'Hussein Jassim Salem Abdul', 'حسين جاسم سالم عبد', 'stu247', 'compeng.1stev13@alkadhum-col.edu.iq', '$2y$10$ozqcpjcQD9QEZfEtJxiw8ewSASgr6enkdMCVxRsz2fRsOrBfzfZdi', 'Active'),
(248, 'Hussein Essam Fadel Qanbar', 'حسين عصام فاضل قنبر', 'stu248', 'compeng.1stev14@alkadhum-col.edu.iq', '$2y$10$WpKlR41OR66lu1TgY1PBo.9IPgCKTilVMYfkyw.hzRTv3101Hzn2e', 'Active'),
(249, 'Hussein Mortada Salman Jassim', 'حسين مرتضى  سلمان جاسم ', 'stu249', 'compeng.1stev16@alkadhum-col.edu.iq', '$2y$10$Ub3EL9eTQnge2qv5e0xUL.ciE54lNiz/acFI0QAmWgUJggox8FJQu', 'Active'),
(250, 'Haider Saleh Jouda Munif', 'حيدر صالح جودة منيف', 'stu250', 'compeng.1stev19@alkadhum-col.edu.iq', '$2y$10$sE8brh7E.8/mt22TmD8sgO4FnJytk3so3iMhTxrVmAce5q39PDWh6', 'Active'),
(251, 'Khader Issam Ahmed Abbas', 'خضر عصام احمد عباس', 'stu251', 'compeng.1stev22@alkadhum-col.edu.iq', '$2y$10$QhL/i009SssD8tYx.m.LG.31z5lF0/QqYj5aAKAsYH0XDXwEQjkZG', 'Active'),
(252, 'Dhulfar Hassan Salem Mashri', 'ذوالفقار حسن سالم مشري', 'stu252', 'compeng.1stev23@alkadhum-col.edu.iq', '$2y$10$C6AvdxL1Idc5UpeqIz2wkeTnGiiLBtL63LDAV479dqC2.MyX5ovwW', 'Active'),
(253, 'Zine El Abidine Ahmed Salman', 'زين العابدين احمد سلمان ', 'stu253', 'compeng.1stev25@alkadhum-col.edu.iq', '$2y$10$l5ZiqITzFd3BVTUZWP6Fm.IOi82uIciJYA9K87yRL6bVqDpimnPHK', 'Active'),
(254, 'Zainab Ali Abdel -Hassan Swadi', 'زينب علي عبد الحسن سوادي ', 'stu254', 'compeng.1stev27@alkadhum-col.edu.iq', '$2y$10$iZuNooRRalDccE4C8wqUzOvRzO86YpMkVJAJNhOgwbWSgy926nzT.', 'Active'),
(255, 'Sara Ahmed Salman Yas', 'سرى احمد سلمان ياس', 'stu255', 'compeng.1stev32@alkadhum-col.edu.iq', '$2y$10$DqK0nJOc2JIPmRLhRlM9x.waWpkZjn0roWbcxmibrzNFUtoODPdCW', 'Active'),
(256, 'Saif Al -Din Malik Mohsen Bakr', 'سيف الدين مالك محسن بكر', 'stu256', 'compeng.1stev33@alkadhum-col.edu.iq', '$2y$10$eHTvcZgP6sLwK1nuAdPdpO3GDXIPIYLjmGp3TCLJQ1zfvJnjfq81m', 'Active'),
(257, 'Hassan Bakhit Jabr witnessed', 'شهد حسن بخيت جبر', 'stu257', 'compeng.1stev34@alkadhum-col.edu.iq', '$2y$10$J.MOu7Fv/6oG0kjfu2ocUOJvTaYZGmriNLIFDUMRhj2YmKq3sB/EG', 'Active');
INSERT INTO `login_student` (`ID`, `student_name`, `student_name_ar`, `student_username`, `student_email`, `student_password`, `account`) VALUES
(258, 'Safaa Jaber Abdel -Rasoul Hussein', 'صفاء جابر عبد الرسول حسين', 'stu258', 'compeng.1stev35@alkadhum-col.edu.iq', '$2y$10$JbW.Q1SlZSpa/q2MbcCq6.aMrDSbRtQbekeFGrBiVGKXW.mx.S.jK', 'Active'),
(259, 'Safaa Ali Rahim Sahin', 'صفاء علي رحيمه صحين', 'stu259', 'compeng.1stev36@alkadhum-col.edu.iq', '$2y$10$NZ84jXVQyMW2nNtKuvVpv.dW7eRyG1D55XnYfh3LYNhY255FxLN1e', 'Active'),
(260, 'Abbas Jabbar Kazem Dawood', 'عباس جبار كاظم داود', 'stu260', 'compeng.1stev37@alkadhum-col.edu.iq', '$2y$10$pDzXtHlQb2kqfcrhc6qNme357SbrdcL8KGKxUaVxZann2aUDQ1Aeq', 'Active'),
(261, 'Abbas Saad Adnan Khazaal /Rasib', 'عباس سعد عدنان خزعل /راسب', 'stu261', 'compeng.2ndev24@alkadhum-col.edu.iq', '$2y$10$OgwGIUIe129D47syz5g8E.vXofKeqgicwu9TnaZ4E3gL3m9BGT5me', 'Active'),
(262, 'Abbas Ali Hassan Kazem', 'عباس علي حسن كاظم', 'stu262', 'compeng.1stev39@alkadhum-col.edu.iq', '$2y$10$27hCdolzHIIFHgxsWBaEb.yJqNi8u/wVEaEvqlHyG1psib3FgTtYW', 'Active'),
(263, 'Ali Osama Abbas Ahmed', 'علي اسامة عباس احمد', 'stu263', 'compeng.1stev42@alkadhum-col.edu.iq', '$2y$10$r1bMkBNifDQrqdFB5NxhzOemiiGqJAb0ZwqaNZPqMe.SW7VghMwg2', 'Active'),
(264, 'Ali Jumaa Katta Youssef', 'علي جمعة كاطع يوسف', 'stu264', 'compeng.1stev43@alkadhum-col.edu.iq', '$2y$10$WAK4DfMvVLJfVkXUcKtVr.cYMMdgpblEzMCDBtaf.GdCKgGB313UW', 'Active'),
(265, 'Ali Hussein Kazem Mashun', 'علي حسين كاظم مشون', 'stu265', 'compeng.1stev44@alkadhum-col.edu.iq', '$2y$10$CaG1vZ44VHMxFxvQobSlLeOXuGz2zRzYUemxSgTwdCCMdLc2/Flxu', 'Active'),
(266, 'Ali Star Jabarali', 'علي ستار جبارعلي ', 'stu266', 'compeng.1stev45@alkadhum-col.edu.iq', '$2y$10$zN3WeBAtMZooYPvOKLh.LON3C4TdANV0JR9.Psr7Mp4KiK9YDmY9q', 'Active'),
(267, 'Ali Amer Nuri Muhammad', 'علي عامر نوري محمد', 'stu267', 'compeng.1stev46@alkadhum-col.edu.iq', '$2y$10$MtQIbHNZFFKkKa3wxBFsD.xL6whHt1IyH8S4aa79fIH5G2pXGEEuW', 'Active'),
(268, 'Ali Falah Hassan Salem', 'علي فلاح حسن سالم', 'stu268', 'compeng.1stev47@alkadhum-col.edu.iq', '$2y$10$nw/mYtg/SlWT24tt8yNgCu3//fkzBUfskQIHQf4hn3Zeg8jYPo3aS', 'Active'),
(269, 'Ali Kazem Matar smoke', 'علي كاظم مطر دخان', 'stu269', 'compeng.1stev50@alkadhum-col.edu.iq', '$2y$10$CY48caqY6CS3Nygh8sphTejlxSCn9AuLLTLAbahZp4.q/n/JLL4XG', 'Active'),
(270, 'Fatima Riyad Nazir Abbas', 'فاطمه رياض نذير عباس', 'stu270', 'compeng.1stev8@alkadhum-col.edu.iq', '$2y$10$sphoaS9tiGYoR960wk8D.u35X4KtY0u/S.kgvl6RMs6rF4/H8ifm2', 'Active'),
(271, 'Ferdous Abdul -Reda Jabr Hamdan', 'فردوس عبد الرضا جبر حمدان', 'stu271', 'compeng.1stev54@alkadhum-col.edu.iq', '$2y$10$wvlHo3IXTdhI4FGI7wxbTOLn2C08yXs2MNVA6/mDx1cYRRvzaFWw.', 'Active'),
(272, 'Kawthar Laith Faleh Hussein', 'كوثر ليث فالح حسين', 'stu272', 'compeng.1stev56@alkadhum-col.edu.iq', '$2y$10$9.LRNmViUQ716zR0jefVz.JFJe043cbRDqMGf/HRB4aeNa9rLFnuq', 'Active'),
(273, 'Laith Hussein Majeed Shafi', 'ليث حسين مجيد شافي', 'stu273', 'compeng.1stev58@alkadhum-col.edu.iq', '$2y$10$KHRFQ.fw1suDqqnxX.N.LOBkTqlGJLQyosjvY6FZQc3xhDbjJ9ZJi', 'Active'),
(274, 'Laith Zahir Katta Sayed', 'ليث ظاهر كاطع سيد', 'stu274', 'compeng.1stev57@alkadhum-col.edu.iq', '$2y$10$wIZZ7hTAB6UkC2KJdiKIqeimrjHH0ZmlHCG5EapHKGd7hfRJ0fBQK', 'Active'),
(275, 'Mujtaba Abbas Abdul Hussein Talal', 'مجتبى عباس عبد الحسين طلال ', 'stu275', 'compeng.1stev59@alkadhum-col.edu.iq', '$2y$10$IMGBIci6ZYiLuM7B5k/vZekZc/U8AWUFISz.Kbn5R424w/tiAJHqO', 'Active'),
(276, 'Mohsen Hadi Mohsen Youssef', 'محسن هادي محسن يوسف', 'stu276', 'compeng.1stev60@alkadhum-col.edu.iq', '$2y$10$Ufn8sGcMUIJ20NLVyHy1M.RyJKoCf0WqmEA.wijFCT4neLumzASZG', 'Active'),
(277, 'Muhammad Salam Muhaisen Khalifa', 'محمد سلام محيسن خليفة', 'stu277', 'compeng.1stev61@alkadhum-col.edu.iq', '$2y$10$lMZNLo.KlP76i0Ew2K4trenIq3JqVHP0roJF8fHjwDg3.rnYIflIy', 'Active'),
(278, 'Muhammad Ali Abdul Hussein Hafez / Transfer from Maysan', 'محمد علي عبد الحسين حافظ / نقل من ميسان', 'stu278', 'compeng.1stev86@alkadhum-col.edu.iq', '$2y$10$fZCnf92N7MY1okXfDtB1nuPWKFYmcWd99tXF4LsHN63tHFhqow.NS', 'Active'),
(279, 'Murtada Abdul Razzaq Abdullah Jaafar', 'مرتضى عبد الرزاق عبد الله جعفر', 'stu279', 'compeng.1stev66@alkadhum-col.edu.iq', '$2y$10$dYc/Ft9dsGUjz/l6lm5MD.U5lYZcdUdgr3kaC6.85LS7uXcyugV8K', 'Active'),
(280, 'Maryam Hussein Abdul Ali Kazem', 'مريم حسين عبد علي كاظم', 'stu280', 'compeng.1stev67@alkadhum-col.edu.iq', '$2y$10$fLlXxDOuqIfpi3hJexOR8.OH6ipgJ/Tydyh86CWXMuX76dket.NL6', 'Active'),
(281, 'Mustafa Abdel -Bari North Khalaf', 'مصطفى عبد الباري شمال خلف', 'stu281', 'compeng.1stev68@alkadhum-col.edu.iq', '$2y$10$R.64GdHc70aEgsG4azwepOVIdc1vGIRmH/JPRL7GlJjX3ghNAUy.6', 'Active'),
(282, 'Muntazer Jabbar Jabr / Taqin / Odeh / postpone the fourth role', 'منتظر جبار جبر / ترقين / عودة /تأجيل دور رابع', 'stu282', 'compeng.2ndev53@alkadhum-col.edu.iq', '$2y$10$//ua7hyfkArn.Rec7vdjkOX1OMk1CSxMcZUXCDmf6nCOFfnMq4vgW', 'Active'),
(283, 'Muntazer Walid Rasan Kabashi', 'منتظر وليد رسن كباشي', 'stu283', 'compeng.1stev69@alkadhum-col.edu.iq', '$2y$10$leYSkJCceLdpkxx3Bt.IMOAuD7O7QMerf/Z99KXtOehB4Y2fTHl1u', 'Active'),
(284, 'Mussam Hazem Hamid Radi', 'مؤمل حازم حميد راضي', 'stu284', 'compeng.1stev70@alkadhum-col.edu.iq', '$2y$10$RtOFLC3yJd4zbCf..W.tTOWLOwroELmOAtu/YeD1r1SgisCTkEPjO', 'Active'),
(285, 'The news of Safaa Abdul Khaleq Ali', 'نبأ صفاء عبد الخالق علي', 'stu285', 'compeng.1stev71@alkadhum-col.edu.iq', '$2y$10$cde6GZTJisTf7T4OjYZqUehrC0SATZ8SYzuReJogHik1UTzQcO1c6', 'Active'),
(286, 'Nour Al -Hoda Saadoun Mohsen Jaafar/Rasib', 'نور الهدى سعدون محسن جعفر/راسب ', 'stu286', 'compeng.1stev72@alkadhum-col.edu.iq', '$2y$10$Jr6Ll30Gr.mCjxmYljUah.AeL4IXhSU58UqbiLRlg4JMPk3U.hpMi', 'Active'),
(287, 'Nour Adel Jassim Mohammed', 'نور عادل جاسم محمد', 'stu287', 'compeng.1stev73@alkadhum-col.edu.iq', '$2y$10$N09RhqvSLFUH/0OoWXN8K.3WhgGAr1ATXZDoiKhlpSLlWtKSEsR4y', 'Active'),
(288, 'Youssef Naji Zahir Hammadi/Rasib', 'يوسف ناجي ظاهر حمادي/راسب', 'stu288', 'compeng.2ndev65@alkadhum-col.edu.iq', '$2y$10$.csTypEabv0Fj6k0X8Dl2eLZjj0kuyGem0eyT8fLyYWx2ysHe8N3i', 'Active'),
(289, 'Ahmed Ali Ahmed Salem Al Shammari', 'احمد علي احمد سالم الشمري', 'stu289', '2101143035@alkadhum-col.edu.iq', '$2y$10$xzdIeb4xSOn7ecoDi1Usr.9GjHxHv5yDTsWtx6vWlYwWcqPpib.tO', 'Active'),
(290, 'Ahmed Faris Zaki Hussein Al Baroudi', 'احمد فارس زكي حسين البارودي', 'stu290', '2101143073@alkadhum-col.edu.iq', '$2y$10$fDJ6MjSJdWcBFT3AIOTWpe.zqHTwF6iApBjNq/EgccegrahVoViPi', 'Active'),
(291, 'Jaafar Abdul Abbas Mohsen Alwan Al Amir', 'جعفر عبدالعباس محسن علوان الامير', 'stu291', '2101143081@alkadhum-col.edu.iq', '$2y$10$MUt4cZTvAOeqeiXHHe8c2ODBRNY5yU3P7V2OAQS2ySG55.onTHRdu', 'Active'),
(292, 'Hussein Jalal Salman Rokan Al Rikabi', 'حسين جلال سلمان روكان الركابي', 'stu292', '2101143040@alkadhum-col.edu.iq', '$2y$10$0HTc5kE7X0AAtqjvl8OCxOaEAPESVh3MO6f3yEwXQcX.qdnSi6eB2', 'Active'),
(293, 'Muhammad Imad Kazem Nasser Al Zarkani', 'محمد عماد كاظم ناصر الزركاني', 'stu293', '2101143064@alkadhum-col.edu.iq', '$2y$10$am80fnycTK4.7QrX.ZFUJu5f2pVSkCffplPElcf1TrkXZ5LrMUeJG', 'Active'),
(294, 'Muhammad Kazem Jaber Mashkar Al Hashemi', 'محمد كاظم جابر مشكور الهاشمي', 'stu294', '2101143059@alkadhum-col.edu.iq', '$2y$10$H/hc6CauP6RiekLiCPlSsOOmyWTtAsTaaB77yl4RPdSdNZro8FV.6', 'Active'),
(295, 'Ali Khudair Abbas Sakyan', 'علي خضير عباس صكيان', 'stu295', '2101143078@alkadhum-col.edu.iq', '$2y$10$I1Y37NXFRXlpn9D10.yZ9uCFdBWNRFJ9QAm95NMpiXxuh/tlMslB.', 'Active'),
(296, 'Ali Hashem Karim Sultan Al Freijawi', 'علي هاشم كريم سلطان الفريجاوي', 'stu296', '2101143077@alkadhum-col.edu.iq', '$2y$10$jeKnYwZO4qXexk8NyOLb1uTebqL2htBpMRzqqDhx/1bs9vRA3Ajga', 'Active'),
(297, 'Muhammad Ahmed Muhammad Hanin Al Lami', 'محمد احمد محمد حنين اللامي', 'stu297', '2101143049@alkadhum-col.edu.iq', '$2y$10$UL1OfMIniQDyeIobuOlAQOvJb/PNfWHTvmlJt6j421EMiDfKXSVfC', 'Active'),
(298, 'Muhammad Salim Abdul Ali', 'محمد سليم عبد علي', 'stu298', '2101143072@alkadhum-col.edu.iq', '$2y$10$rIDPG6ZUmENhIgFEgkNECOlZUF/I2aTbYGiANCZ48KM0nmTa2oW9K', 'Active'),
(299, 'Mustafa Adel Rahim Khaled Al Muhammadawi', 'مصطفى عادل رحيم خالد المحمداوي', 'stu299', '2101143053@alkadhum-col.edu.iq', '$2y$10$4AEZi6nnKDWmWqIQfjG8Luo161XipysCjvPcAK6woyud3.c5VErXm', 'Active'),
(300, 'Nawal Ahmed Dannan Rabie Al Shuwaili', 'نوال احمد دنان ربيع الشويلي', 'stu300', '2101143057@alkadhum-col.edu.iq', '$2y$10$b8nh9O7duLMOSJUVDdVSV.h3wiXzKYC5YwMoZs6mXdQ/fUtra6cqC', 'Active'),
(301, 'Ahmed Mohammed Kazem Abbas Al Saadi', 'احمد محمد كاظم عباس السعدي', 'stu301', '2201143032@alkadhum-col.edu.iq', '$2y$10$Oq0JmFIQIJzCZuxQB2idrOrYqn8sTEcO3XF6O9yYOlKq2heRAKEoq', 'Active'),
(302, 'Israa Abdul Kazim Tarish Rasan Al Rubaie', 'اسراء عبد الكاظم طارش رسن الربيعي', 'stu302', '2201143033@alkadhum-col.edu.iq', '$2y$10$pQyX8qWSRQlyxOb4CueVi.Vp4sk/lNtqNBCT/dT/fjHe7x6H7gFkq', 'Active'),
(303, 'Al Abbas Safaa Laibi Hamid Jennawi', 'العباس صفاء لعيبي حميد جناوي', 'stu303', '2201143058@alkadhum-col.edu.iq', '$2y$10$CJnZApn3U4yLpkw6GeItqumdwpGsjE5uMnyeuDKiwlnml6dC.yYHa', 'Active'),
(304, 'Ahmed Abdel Amir Karim Abbas Al Muhammadawi', 'أحمد عبدالامير كريم عباس المحمداوي', 'stu304', '2201143031@alkadhum-col.edu.iq', '$2y$10$wWYUe/iUdzxnRNUtw52X4Oq.ntzxzPrkqt8XNOjQXGY/SRY68QvB.', 'Active'),
(305, 'Amir Ali Hassan Ghaylan Al -Suraii', 'أمير علي حسن غيلان السويعدي', 'stu305', '2201143034@alkadhum-col.edu.iq', '$2y$10$DTsf9.l0LLIgcPaGsC028eOUGKuW1DKucV0NkV.Y8jZZ9XeRZDyxW', 'Active'),
(306, 'Ayat Hamid Salman Falah Al Ghanem', 'آيات حميد سلمان فلاح الغانم', 'stu306', '2201143052@alkadhum-col.edu.iq', '$2y$10$3v6ohtAn2pqh79kGM.WYT.49Y7ohzmgQqR3AbV8lSlvO4KtiCY3V.', 'Active'),
(307, 'Baqir Sahib Hattah Muhammad', 'باقر صاحب حطيحط محمد', 'stu307', '2201143055@alkadhum-col.edu.iq', '$2y$10$JDhiwndrXat8tLq.J2z3xuLW3dSC21BUZE5aV2mgEKDJDvZpHzDJ6', 'Active'),
(308, 'Boys Majid Hafez Mohsen Al Shammari', 'بنين ماجد حافظ محسن الشمري', 'stu308', '2201143030@alkadhum-col.edu.iq', '$2y$10$IwCQRz8Ns6wH/qrhuYOYpOBEbcNAEcEGTmj6rb0nFVbUWYlzGmkkK', 'Active'),
(309, 'Jassim Muhammad Mahawi Saeed Al Daraji', 'جاسم محمد مهاوي سعيد الدراجي', 'stu309', '2201143035@alkadhum-col.edu.iq', '$2y$10$BEclOsmtXHvPG5Rytuztru1GS6oZRWwh3Gw1RPvEEQkSFKWB4tWlq', 'Active'),
(310, 'Hassan Ali Kambar Sahar Al Daraji', 'حسن علي كمبار سهر الدراجي', 'stu310', '2201143053@alkadhum-col.edu.iq', '$2y$10$sMI2IaDV6sapV6y0oqGEoeXnaYVhUFINhWYw3mep3FGdROkk1z1UG', 'Active'),
(311, 'Hussein Abdul Nabi Mohsen Jabr Al Freiji', 'حسين عبد النبي محسن جبر الفريجي', 'stu311', '2201143036@alkadhum-col.edu.iq', '$2y$10$SbyRohYnsS5YCDmQqsHDMuOZ9eqYDrDO1xNlPJq1iCP0nFwhJl09i', 'Active'),
(312, 'Hamza Balsm Hassoun Ali', 'حمزة بلاسم حسون علي', 'stu312', '2201143037@alkadhum-col.edu.iq', '$2y$10$yxIqKxu1UFq3hzSkOKl9PujW9hLUoJh1OTtjhoy7UG0eWaHCawQb6', 'Active'),
(313, 'Hawra Ali Abdel Hussein Jassim Al Ramahi', 'حوراء علي عبدالحسين جاسم الرماحي', 'stu313', '2201143046@alkadhum-col.edu.iq', '$2y$10$o5V0FVxaRTrWo/AbiG494uWXepvokpbIKpMIuUIdVEsx79KKt8EUm', 'Active'),
(314, 'Zahraa Ali Odeh Hamid Al Muhammadi', 'زهراء علي عوده حميد المحمدي', 'stu314', '2201143038@alkadhum-col.edu.iq', '$2y$10$VG9.2MbhmKvXjJLnF4PLz.65xID3fOQVR5U1VOpH9iEYlYOqHYF1y', 'Active'),
(315, 'Zainab Haitham Youssef Tawfiq Khazali', 'زينب هيثم يوسف توفيق الخزعلي', 'stu315', '2201143002@alkadhum-col.edu.iq', '$2y$10$QPf32Hvbkev5rvqOy4cskuti.C2zZTkgEBYZjIOWLSW3Mbja6iN4G', 'Active'),
(316, 'Rahim Jassim Dukhan Al Saadi', 'سجاد رحيم جاسم دخان الساعدي', 'stu316', '2201143039@alkadhum-col.edu.iq', '$2y$10$mKg6DvQP/eSvKnSDXL0hyOEGqzNyppUPPnuspSIVf7IMVlnS1zfae', 'Active'),
(317, 'Carpet Ali Hussein Faraj Al Salman', 'سجاد علي حسين فرج السلمان', 'stu317', '2201143040@alkadhum-col.edu.iq', '$2y$10$elzzUaOPiCRksMUfx2Az7ua3XAffX.TI9Hor4EEotp/A621z0mH7e', 'Active'),
(318, 'Abdullah Sabbar Muhammad Mohsen Al Rubaie', 'عبدالله صبار محمد محسن الربيعي', 'stu318', '2201143047@alkadhum-col.edu.iq', '$2y$10$TC1qU92n0NbDIZ7ybKwyme7dx857DuUH7fM0MZ8dT0DXeCJ2Codq6', 'Active'),
(319, 'Ali Ahmed Salim Jassim Al Amiri', 'علي احمد سليم جاسم الاميري', 'stu319', '2201143041@alkadhum-col.edu.iq', '$2y$10$jHwZtpIQ53MnhQaBTtYa9ejhQBM16864E61WyGd3cGWfaOp8IBrNa', 'Active'),
(320, 'Ali Saad Dhud Jassem', 'علي سعد ضهد جاسم', 'stu320', '2201143042@alkadhum-col.edu.iq', '$2y$10$RI39xb/dqAYXf3wtSJW/Hee1FoSSzCLUVIs.proH5qEgy0w5QIHtu', 'Active'),
(321, 'Ali Sabah Abdul Amir', 'علي صباح عبد الامير', 'stu321', '2201143049@alkadhum-col.edu.iq', '$2y$10$tuUKGEnUMnQTMUEkpWmqt.DRXCQU5qTKHI7XXGMdm6e5ng7ZeSNie', 'Active'),
(322, 'Ali Mahdi Farhan Ali Al Dhahabawi', 'علي مهدي فرحان علي الذهيباوي', 'stu322', '2201143043@alkadhum-col.edu.iq', '$2y$10$5dzjRbkUqJFmEY6hknjZ7uAIly3bsL4BADz1oepTEKjHTu/V4DUxm', 'Active'),
(323, 'Karar Najeh Mahdi Khudair Al Mohsen', 'كرار ناجح مهدي خضير المحسن', 'stu323', '2201143056@alkadhum-col.edu.iq', '$2y$10$s8XYf.2Yy/PRanx5yIYMEu7g8JFUO9dcfNpyJLr/SGCWtwnl8cnyy', 'Active'),
(324, 'Mohsen Ahmed Mohsen Anaimah Al Saray', 'محسن احمد محسن انعيمه السراي', 'stu324', '2201143050@alkadhum-col.edu.iq', '$2y$10$XTgplQwUZ9A8iWviXFgrpeIlqWXb7kLtXOAXQ1HbOl5an79ICYasC', 'Active'),
(325, 'Muhammad Yarab Hamad Mansour Al Salhi', 'محمد يعرب حمد منصور الصالحي', 'stu325', '2201143059@alkadhum-col.edu.iq', '$2y$10$mUbgByHsbxzoZKo8UmjyH.22A8.tiFLo1to.cgSbnlWSMRYxQb..y', 'Active'),
(326, 'Mortada Tahsin Zamil Al Kinani\'s warrior', 'مرتضى تحسين زامل محارب الكناني', 'stu326', '2201143044@alkadhum-col.edu.iq', '$2y$10$jvNrtzAiJPLsBZQsXTKXquxasmCuYrDJFCz4OJ6FrQa4GED3JsBZG', 'Active'),
(327, 'Muntazer Adel Jabbar Farna Al Husaynawi', 'منتظر عادل جبار فريعن الحسيناوي', 'stu327', '2201143048@alkadhum-col.edu.iq', '$2y$10$TbJMFE8kuVSa.WcGssedtektM2mHKvB6h.MpDlf0Rr1aaJL5/P5IS', 'Active'),
(328, 'Munir Qasim Ajar Mashi Al Muhammadawi', 'منير قاسم عجر ماشي المحمداوي', 'stu328', '2201143054@alkadhum-col.edu.iq', '$2y$10$WSYEA5uBlQPksqRCX2sL6eleXgG5nsStQOWEOVB.B2p4IJ2bagk3m', 'Active'),
(329, 'Muamlor Abdul Azim Jassim Mazal Al Kinani', 'مؤمل عبد العظيم جاسم مزعل الكناني', 'stu329', '2201143051@alkadhum-col.edu.iq', '$2y$10$tkQFLpyQEuNd8nfa9R/ONeKkAdk5e3swsLjeFBHp0BtQYys4X6Yf6', 'Active'),
(330, 'Nibras Abdul Wahid Marzouk Mansi Al Maliki', 'نبراس عبد الواحد مرزوك منسي المالكي', 'stu330', '2201143045@alkadhum-col.edu.iq', '$2y$10$zYfuzTtx80hHsmAkYsbdF.5y40ZxKj/x8BHwu2OgKPegPYRgH4sxm', 'Active'),
(331, 'Abrar Muhannad Abdul -Razzaq Muhammad Ali Al -Ghanemi', 'ابرار مهند عبد الرزاق محمد علي الغانمي', 'stu331', '2201143004@alkadhum-col.edu.iq', '$2y$10$q7FFCMnYTAQPbG2vZ/ADKuJsOSwovbr/j5D18wg9oVPp6.fBQ2ZmW', 'Active'),
(332, 'Ahmed Karim is necessary', 'احمد كريم لازم محيل الفريجي', 'stu332', '2201143005@alkadhum-col.edu.iq', '$2y$10$hZCvbz0Sz5v5SDaAxqzXROR2JwqizY9yuo9JI0ndpy1WfbwWY6M3y', 'Active'),
(333, 'Iman Abdul Hussein Habib Anin', 'ايمان عبد الحسين حبيب عنين', 'stu333', '2201143006@alkadhum-col.edu.iq', '$2y$10$QGEd9YmxGXbWU/yd.BYPSOBFN9woasbh7DYti0RpG/s.6gyUcYm6i', 'Active'),
(334, 'Alaa Najm Obaid Muhaisen Al -Sabih', 'آلاء نجم عبيد محيسن آلصبيح', 'stu334', '2201143003@alkadhum-col.edu.iq', '$2y$10$Ult.Jzal5SmtVGTp2TkpxON.gqgEq6iJsdTDlnOtEZOq7w52ALZ4C', 'Active'),
(335, 'Batoul Moayad Ibrahim Ali', 'بتول مؤيد ابراهيم علي', 'stu335', '2201143007@alkadhum-col.edu.iq', '$2y$10$DnxbWcD0pd6oijoH2yXr1erIoIAP0S4EGBsURpV8JZkNBHw90Rok.', 'Active'),
(336, 'Bint Al -Huda Hassan Hashem', 'بنت الهدى حسن هاشم', 'stu336', '2201143008@alkadhum-col.edu.iq', '$2y$10$wXyYVEy4CSdOnQGFfW0pGeDUHvYKGv84oYExMxGcx7g3AJ/.RJE2K', 'Active'),
(337, 'Hussein Khaled Abdul Karim Attia Al -Waeli', 'حسين خالد عبد الكريم عطيه الوائلي', 'stu337', '2201143009@alkadhum-col.edu.iq', '$2y$10$GfwLNLJXTQxDr9quC1g6Eu6WonklO8fXMs0n5Em052BGz/7GMvtqG', 'Active'),
(338, 'Hussein Salah Muhammad Manea Al -Saadi', 'حسين صلاح محمد مانع السعدي', 'stu338', '2201143010@alkadhum-col.edu.iq', '$2y$10$9szAFhNezSdStlgembuLM.uNLU0G5feC9G8CcKwhUB0eiG7OXYTfK', 'Active'),
(339, 'Hawraa Rahim Naima Sabah Al -Daraji', 'حوراء رحيم نعمه صباح الدراجي', 'stu339', '2201143011@alkadhum-col.edu.iq', '$2y$10$aFNvzIu5U1KR4PjUzyw/e.4mhpo6BzcTrsAKmZ0zW4ixTQKYqsv6O', 'Active'),
(340, 'Haidar Riad Muhammad Dukhan Al -Saray', 'حيدر رياض محمد دخن السراي', 'stu340', '2201143012@alkadhum-col.edu.iq', '$2y$10$gNL9CQPizkRGJE5YDrRTduq1T7MxmZOWEETM/n/Wyxu9dn1QFBSDa', 'Active'),
(341, 'Haider Nizar Fadel Hamza', 'حيدر نزار فاضل حمزة', 'stu341', '2201143013@alkadhum-col.edu.iq', '$2y$10$cOpnthYRBVeRRfFhzYh4leKy0BxyG3ICGpIboVN975RYYHUsgqe76', 'Active'),
(342, 'Zahraa Ahmed Fadel Al -Mousawi', 'زهراء احمد فاضل الموسوي', 'stu342', '2201143014@alkadhum-col.edu.iq', '$2y$10$aCJwZGkgbuL5oC5MVjv2NOar04y/YZkA8pMB.sN3nexa3dWO.p5fi', 'Active'),
(343, 'Zahra Ismail Kazem Hammadi', 'زهراء اسماعيل كاظم حمادي', 'stu343', '2201143015@alkadhum-col.edu.iq', '$2y$10$URt9WhjJqUodG26T7cRmUuKxbgjPj.6CXWDCcdiuVAcmy7XcleeEO', 'Active'),
(344, 'Zahraa Jassim Amin Hassan Al -Amri', 'زهراء جاسم امين حسن العامري', 'stu344', '2201143016@alkadhum-col.edu.iq', '$2y$10$xzQ1mUIWNLLe95gCSm0OiOalWqDHjbvxm905MBpP8if89L8tQ1WUW', 'Active'),
(345, 'Zainab Al -Hawra Tahsin Bahij Kazem Al -Jawan', 'زينب الحوراء تحسين بهيج كاظم الجوعان', 'stu345', '2201143017@alkadhum-col.edu.iq', '$2y$10$V5ZqG1Cf.eTTP3pUdQNpZuoHKh0FUfQabOpTdCrfcK.hUndlVPsy6', 'Active'),
(346, 'Taif Safa Mohi Jawad Al -Jubouri', 'طيف صفاء محي جواد الجبوري', 'stu346', '2201143018@alkadhum-col.edu.iq', '$2y$10$3F62BcIeDnOpDCPYnDkkhOgbHdZqMQXMiVNSJNypgWR4h6hiUQJPu', 'Active'),
(347, 'Abbas Naji Abdullah Alaiwi', 'عباس ناجي عبدالله عليوي', 'stu347', '2201143019@alkadhum-col.edu.iq', '$2y$10$Pho6ECDieS5ZUg/H8GFlVexBEoXeGZGjhQsYZcvqbFf9mAgXXssHq', 'Active'),
(348, 'Raad Majeed Al -Sawadi\'s era', 'عهد رعد مجيد ساجت السويعدي', 'stu348', '2201143020@alkadhum-col.edu.iq', '$2y$10$yyceUQh7eP.2B8Y5oVrZhOvRmHepCSW.xoSt779x7rkXEqd.iku06', 'Active'),
(349, 'Fatima Jabbar Hussein Ibrahim Al -Amri', 'فاطمة جبار حسين ابراهيم العامري', 'stu349', '2201143021@alkadhum-col.edu.iq', '$2y$10$XOl82215MgAnm.ijlb30jeqjxbxOnXb.2xjNRI/kLxs3v6K43jlre', 'Active'),
(350, 'Farah Ahmed Abdul Manhal', 'فرح أحمد عبد منهل', 'stu350', '2201143022@alkadhum-col.edu.iq', '$2y$10$jigtdLVgBHBqkM1WZdWck.w2g67I1uDwluBCm5cyxUjkrjtmgzE26', 'Active'),
(351, 'Muhammad Faraj Hussein Nimr', 'محمد فرج حسين نمر', 'stu351', '2201143023@alkadhum-col.edu.iq', '$2y$10$P8pVRQENjtvaKBEGMhXXxeCHFhTWeAzsYaQ/sUsJ1WjGnVBuJYlqy', 'Active'),
(352, 'Maryam Ali Taha Abbas Hammoudi', 'مريم علي طه عباس حمودي', 'stu352', '2201143024@alkadhum-col.edu.iq', '$2y$10$T06KFaTvl91l1vg.1ZNav.Sbn7YugyK2iMT41IAFxYPDFBP9SzDP.', 'Active'),
(353, 'Mustafa Riad Mohamed Dukman', 'مصطفى رياض محمد دخن', 'stu353', '2201143025@alkadhum-col.edu.iq', '$2y$10$OgJVm3sMrtlfEW8jPjAnAOU7bPKJyh0HFqLy5bIk3iOj8Bel5J2dW', 'Active'),
(354, 'Muqtada Ali Hashem, Naha, Al -Maliki', 'مقتدى علي هاشم نعمه المالكي', 'stu354', '2201143026@alkadhum-col.edu.iq', '$2y$10$WXYgSI2DGTnbvCXEaPhmPeId5So/eh0EQoWQ4EngAWq2vvBHVJL3W', 'Active'),
(355, 'Nour Al -Hudaan, Idan Agyid Mukhlis Al -Majidi', 'نور الهدى عيدان اغنيد مخلص الماجدي', 'stu355', '2201143027@alkadhum-col.edu.iq', '$2y$10$zP3q5xvOzhc00/NKpEkpduDYF/rRR0rkcaS0zzacBT5i1XQUj6vVi', 'Active'),
(356, 'Nour Ali Abdullah Karim Al -Baidhani', 'نور علي عبدالله كريم البيضاني', 'stu356', '2201143028@alkadhum-col.edu.iq', '$2y$10$R8FlHdLLKdS1xFu7MlwYY.qv71XEBTrEHOI9Jh.xRk8euYFaTnEHy', 'Active'),
(357, 'Yaqin Majid Hafez Mohsen Al -Shammari', 'يقين ماجد حافظ محسن الشمري', 'stu357', '2201143029@alkadhum-col.edu.iq', '$2y$10$SZ.g2DfnbTjYKC0WHBbjPOoLvkLaib9ecHnNM34oB9EkXDZYmHK6S', 'Active'),
(358, 'Hassan Latif Radi Hassan', 'حسن لطيف راضي حسن', 'stu358', '2101143011@alkadhum-col.edu.iq', '$2y$10$qz5GcQLLIKxQFG/7/ReiU.Pya4mzF5wCiRtdiLhnvJ5suZ1Q3lOvi', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `login_teacher`
--

CREATE TABLE `login_teacher` (
  `ID` int(11) NOT NULL,
  `teacher_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_name_ar` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_username` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login_teacher`
--

INSERT INTO `login_teacher` (`ID`, `teacher_name`, `teacher_name_ar`, `teacher_username`, `teacher_email`, `teacher_password`, `account`) VALUES
(1, 'Huda Hamdan', 'هدى حمدان', 'teach', 'teach@teach.com', '$2y$10$gwr03wAP5sxGEny1/Gb6Zu1HlL06tIFaHjv7tP0fsmNbGQX8jR4fW', 'Active'),
(2, 'Saif Ameer', 'سيف عامر', 'teach1', 'teach1@teach.com', '$2y$10$03ouR.4m17Bs2N6YxMmvNutOmV.b5zpRU78n5U.Vf0lpcqIr/BxR2', 'Active'),
(3, 'Hayder Ayeed', 'حيدر عايد', 'teach2', 'teach2@teach.com', '$2y$10$kOmHLIy/R0409yX8UOUjbeq7sixUQm/qspjyC4lEpJCeIblr/F95W', 'Active'),
(24, 'Teacher', 'استاذ', 'tchtest', 'tchtest@teach.com', '$2y$10$dOc72zRL9YDfmwalaCJ3JuzpP4i9Bequ5dpbqTdzpN95TQcaaj63m', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `ID` int(255) NOT NULL,
  `post_user` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_title_ar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_info` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_info_ar` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_date` date NOT NULL,
  `post_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`ID`, `post_user`, `post_title`, `post_title_ar`, `post_info`, `post_info_ar`, `post_date`, `post_img`) VALUES
(1, 'admin', 'post 1 test', 'تجربة', 'Participation in the first exhibition of the Ministry of Communications on artificial intelligence technology.Participation in the first exhibition of the Ministry of Communications on artificial intelligenc.Participation in the first exhibition of the Ministry of Communications on artificial intelligence technology.Participation in the first exhibition of the Ministry of Communications on artificial intelligenc.Participation in the first exhibition of the Ministry of Communications on artificia', 'تجربة', '2022-11-10', 'blog-1.jpg'),
(2, 'admin', 'post 2 test', 'تجربة', 'Managing the Second\r\n											International Conference on Modern Applications in\r\n											Information Technology.', 'تجربة', '2022-11-10', 'blog-2.jpg'),
(3, 'admin', 'post 3', 'تجربة', 'Schedule of exams for the\r\n											second round, Department of Computer Technology Engineering', 'تجربة', '2022-11-10', 'blog-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `ID` int(255) NOT NULL,
  `set_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `set` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `set2` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`ID`, `set_name`, `set`, `set2`) VALUES
(1, 'honor', 'yes', ''),
(2, 'lang', 'En', 'Ar'),
(3, 'results', 'yes', ''),
(5, 'projects', 'yes', ''),
(6, 'study_system', 'terms', 'courses'),
(7, 'deg_system', 'deg', ''),
(8, 'deg_system2', 'deg', '');

-- --------------------------------------------------------

--
-- Table structure for table `students_projects`
--

CREATE TABLE `students_projects` (
  `ID` int(255) NOT NULL,
  `sname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sname_ar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `proname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `proname_ar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tname_ar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `proyear` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students_projects`
--

INSERT INTO `students_projects` (`ID`, `sname`, `sname_ar`, `proname`, `proname_ar`, `tname`, `tname_ar`, `proyear`) VALUES
(1, 'test testtest', 'تجربة تجربة تجربة تجربة', 'test test test test test testtest test', 'تجربة', 'test test test', 'تجربة', '2022-2023'),
(54, 'test', 'تجربة', 'test', 'تجربة', 'test', 'تجربة', '2022-2023'),
(55, 'test', 'تجربة', 'test', 'تجربة', 'test', 'تجربة', '2022-2024'),
(56, 'test', 'تجربة', 'test', 'تجربة', 'test', 'تجربة', '2022-2025'),
(57, 'test', 'تجربة', 'test', 'تجربة', 'test', 'تجربة', '2022-2023'),
(58, 'test', 'تجربة', 'test', 'تجربة', 'test', 'تجربة', '2022-2024'),
(59, 'test', 'تجربة', 'test', 'تجربة', 'test', 'تجربة', '2022-2025'),
(60, 'test', 'تجربة', 'test', 'تجربة', 'test', 'تجربة', '2022-2023'),
(61, 'test', 'تجربة', 'test', 'تجربة', 'test', 'تجربة', '2022-2024'),
(62, 'test', 'تجربة', 'test', 'تجربة', 'test', 'تجربة', '2022-2025');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(255) UNSIGNED NOT NULL,
  `student_username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(40) NOT NULL,
  `dob` date NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `current_address` varchar(40) DEFAULT NULL,
  `admission_no` int(11) NOT NULL,
  `admission_date` date NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `class` text NOT NULL,
  `study_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Morning',
  `sub` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `student_username`, `gender`, `dob`, `photo`, `mobile`, `current_address`, `admission_no`, `admission_date`, `academic_year`, `class`, `study_type`, `sub`) VALUES
(1, 'stu001', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 1, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(2, 'stu002', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 2, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(3, 'stu003', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 3, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(4, 'stu004', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 4, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(5, 'stu005', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 5, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(6, 'stu006', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 6, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(7, 'stu007', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 7, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(8, 'stu008', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 8, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(9, 'stu009', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 9, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(10, 'stu010', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 10, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(11, 'stu011', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 11, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(12, 'stu012', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 12, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(13, 'stu013', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 13, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(14, 'stu014', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 14, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(15, 'stu015', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 15, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(16, 'stu016', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 16, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(17, 'stu017', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 17, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(18, 'stu018', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 18, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(19, 'stu019', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 19, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(20, 'stu020', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 20, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(21, 'stu021', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 21, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(22, 'stu022', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 22, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(23, 'stu023', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 23, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(24, 'stu024', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 24, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(25, 'stu025', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 25, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(26, 'stu026', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 26, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(27, 'stu027', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 27, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(28, 'stu028', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 28, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(29, 'stu029', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 29, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(30, 'stu030', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 30, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(31, 'stu031', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 31, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(32, 'stu032', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 32, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(33, 'stu033', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 33, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(34, 'stu034', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 34, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(35, 'stu035', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 35, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(36, 'stu036', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 36, '2022-12-19', '2022-2023', 'Second', 'Morning', 'A'),
(37, 'stu037', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 37, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(38, 'stu038', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 38, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(39, 'stu039', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 39, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(40, 'stu040', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 40, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(41, 'stu041', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 41, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(42, 'stu042', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 42, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(43, 'stu043', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 43, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(44, 'stu044', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 44, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(45, 'stu045', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 45, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(46, 'stu046', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 46, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(47, 'stu047', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 47, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(48, 'stu048', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 48, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(49, 'stu049', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 49, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(50, 'stu050', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 50, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(51, 'stu051', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 51, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(52, 'stu052', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 52, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(53, 'stu053', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 53, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(54, 'stu054', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 54, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(55, 'stu055', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 55, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(56, 'stu056', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 56, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(57, 'stu057', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 57, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(58, 'stu058', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 58, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(59, 'stu059', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 59, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(60, 'stu060', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 60, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(61, 'stu061', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 61, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(62, 'stu062', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 62, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(63, 'stu063', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 63, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(64, 'stu064', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 64, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(65, 'stu065', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 65, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(66, 'stu066', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 66, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(67, 'stu067', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 67, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(68, 'stu068', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 68, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(69, 'stu069', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 69, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(70, 'stu070', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 70, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(71, 'stu071', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 71, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(72, 'stu072', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 72, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(73, 'stu073', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 73, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(74, 'stu074', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 74, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(75, 'stu075', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 75, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(76, 'stu076', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 76, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(77, 'stu077', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 77, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(78, 'stu078', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 78, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(79, 'stu079', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 79, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(80, 'stu080', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 80, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(81, 'stu081', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 81, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(82, 'stu082', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 82, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(83, 'stu083', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 83, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(84, 'stu084', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 84, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(85, 'stu085', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 85, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(86, 'stu086', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 86, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(87, 'stu087', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 87, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(88, 'stu088', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 88, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(89, 'stu089', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 89, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(90, 'stu090', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 90, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(91, 'stu091', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 91, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(92, 'stu092', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 92, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(93, 'stu093', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 93, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(94, 'stu094', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 94, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(95, 'stu095', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 95, '2022-12-19', '2022-2023', 'Third', 'Morning', 'A'),
(96, 'stu096', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 96, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(97, 'stu097', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 97, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(98, 'stu098', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 98, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(99, 'stu099', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 99, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(100, 'stu100', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 100, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(101, 'stu101', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 101, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(102, 'stu102', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 102, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(103, 'stu103', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 103, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(104, 'stu104', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 104, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(105, 'stu105', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 105, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(106, 'stu106', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 106, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(107, 'stu107', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 107, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(108, 'stu108', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 108, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(109, 'stu109', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 109, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(110, 'stu110', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 110, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(111, 'stu111', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 111, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(112, 'stu112', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 112, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(113, 'stu113', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 113, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(114, 'stu114', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 114, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(115, 'stu115', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 115, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(116, 'stu116', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 116, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(117, 'stu117', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 117, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(118, 'stu118', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 118, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(119, 'stu119', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 119, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(120, 'stu120', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 120, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(121, 'stu121', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 121, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(122, 'stu122', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 122, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(123, 'stu123', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 123, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(124, 'stu124', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 124, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(125, 'stu125', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 125, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(126, 'stu126', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 126, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(127, 'stu127', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 127, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(128, 'stu128', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 128, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(129, 'stu129', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 129, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(130, 'stu130', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 130, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(131, 'stu131', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 131, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(132, 'stu132', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 132, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(133, 'stu133', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 133, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(134, 'stu134', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 134, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(135, 'stu135', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 135, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(136, 'stu136', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 136, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(137, 'stu137', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 137, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(138, 'stu138', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 138, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(139, 'stu139', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 139, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(140, 'stu140', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 140, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(141, 'stu141', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 141, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(142, 'stu142', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 142, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(143, 'stu143', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 143, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(144, 'stu144', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 144, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(145, 'stu145', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 145, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(146, 'stu146', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 146, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(147, 'stu147', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 147, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(148, 'stu148', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 148, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(149, 'stu149', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 149, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(150, 'stu150', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 150, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(151, 'stu151', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 151, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(152, 'stu152', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 152, '2022-12-19', '2022-2023', 'Forth', 'Morning', 'A'),
(153, 'stu153', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 153, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(154, 'stu154', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 154, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(155, 'stu155', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 155, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(156, 'stu156', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 156, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(157, 'stu157', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 157, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(158, 'stu158', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 158, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(159, 'stu159', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 159, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(160, 'stu160', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 160, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(161, 'stu161', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 161, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(162, 'stu162', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 162, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(163, 'stu163', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 163, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(164, 'stu164', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 164, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(165, 'stu165', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 165, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(166, 'stu166', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 166, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(167, 'stu167', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 167, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(168, 'stu168', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 168, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(169, 'stu169', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 169, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(170, 'stu170', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 170, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(171, 'stu171', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 171, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(172, 'stu172', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 172, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(173, 'stu173', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 173, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(174, 'stu174', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 174, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(175, 'stu175', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 175, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(176, 'stu176', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 176, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(177, 'stu177', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 177, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(178, 'stu178', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 178, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(179, 'stu179', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 179, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(180, 'stu180', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 180, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(181, 'stu181', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 181, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(182, 'stu182', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 182, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(183, 'stu183', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 183, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(184, 'stu184', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 184, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(185, 'stu185', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 185, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(186, 'stu186', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 186, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(187, 'stu187', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 187, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(188, 'stu188', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 188, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(189, 'stu189', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 189, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(190, 'stu190', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 190, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(191, 'stu191', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 191, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(192, 'stu192', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 192, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(193, 'stu193', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 193, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(194, 'stu194', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 194, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(195, 'stu195', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 195, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(196, 'stu196', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 196, '2022-12-19', '2022-2023', 'Second', 'Evening', 'A'),
(197, 'stu197', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 197, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(198, 'stu198', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 198, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(199, 'stu199', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 199, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(200, 'stu200', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 200, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(201, 'stu201', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 201, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(202, 'stu202', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 202, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(203, 'stu203', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 203, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(204, 'stu204', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 204, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(205, 'stu205', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 205, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(206, 'stu206', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 206, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(207, 'stu207', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 207, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(208, 'stu208', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 208, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(209, 'stu209', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 209, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(210, 'stu210', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 210, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(211, 'stu211', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 211, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(212, 'stu212', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 212, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(213, 'stu213', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 213, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(214, 'stu214', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 214, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(215, 'stu215', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 215, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(216, 'stu216', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 216, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(217, 'stu217', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 217, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(218, 'stu218', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 218, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(219, 'stu219', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 219, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(220, 'stu220', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 220, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(221, 'stu221', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 221, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(222, 'stu222', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 222, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(223, 'stu223', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 223, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(224, 'stu224', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 224, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(225, 'stu225', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 225, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(226, 'stu226', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 226, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(227, 'stu227', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 227, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(228, 'stu228', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 228, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(229, 'stu229', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 229, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(230, 'stu230', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 230, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(231, 'stu231', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 231, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(232, 'stu232', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 232, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(233, 'stu233', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 233, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(234, 'stu234', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 234, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(235, 'stu235', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 235, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(236, 'stu236', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 236, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(237, 'stu237', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 237, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(238, 'stu238', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 238, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(239, 'stu239', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 239, '2022-12-19', '2022-2023', 'Third', 'Evening', 'A'),
(240, 'stu240', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 240, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(241, 'stu241', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 241, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(242, 'stu242', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 242, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(243, 'stu243', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 243, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(244, 'stu244', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 244, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(245, 'stu245', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 245, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(246, 'stu246', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 246, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(247, 'stu247', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 247, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(248, 'stu248', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 248, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(249, 'stu249', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 249, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(250, 'stu250', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 250, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(251, 'stu251', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 251, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(252, 'stu252', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 252, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(253, 'stu253', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 253, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(254, 'stu254', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 254, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(255, 'stu255', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 255, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(256, 'stu256', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 256, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(257, 'stu257', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 257, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(258, 'stu258', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 258, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(259, 'stu259', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 259, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(260, 'stu260', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 260, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(261, 'stu261', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 261, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(262, 'stu262', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 262, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(263, 'stu263', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 263, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(264, 'stu264', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 264, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(265, 'stu265', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 265, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(266, 'stu266', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 266, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(267, 'stu267', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 267, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(268, 'stu268', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 268, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(269, 'stu269', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 269, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(270, 'stu270', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 270, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(271, 'stu271', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 271, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(272, 'stu272', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 272, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(273, 'stu273', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 273, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(274, 'stu274', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 274, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(275, 'stu275', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 275, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(276, 'stu276', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 276, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(277, 'stu277', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 277, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(278, 'stu278', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 278, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(279, 'stu279', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 279, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(280, 'stu280', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 280, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(281, 'stu281', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 281, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(282, 'stu282', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 282, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(283, 'stu283', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 283, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(284, 'stu284', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 284, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(285, 'stu285', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 285, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(286, 'stu286', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 286, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(287, 'stu287', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 287, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(288, 'stu288', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 288, '2022-12-19', '2022-2023', 'Forth', 'Evening', 'A'),
(289, 'stu289', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 289, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(290, 'stu290', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 290, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(291, 'stu291', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 291, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(292, 'stu292', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 292, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(293, 'stu293', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 293, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(294, 'stu294', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 294, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(295, 'stu295', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 295, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(296, 'stu296', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 296, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(297, 'stu297', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 297, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(298, 'stu298', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 298, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(299, 'stu299', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 299, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(300, 'stu300', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 300, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(301, 'stu301', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 301, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(302, 'stu302', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 302, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(303, 'stu303', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 303, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(304, 'stu304', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 304, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(305, 'stu305', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 305, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(306, 'stu306', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 306, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(307, 'stu307', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 307, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(308, 'stu308', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 308, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(309, 'stu309', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 309, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(310, 'stu310', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 310, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(311, 'stu311', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 311, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(312, 'stu312', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 312, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(313, 'stu313', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 313, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(314, 'stu314', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 314, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(315, 'stu315', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 315, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(316, 'stu316', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 316, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(317, 'stu317', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 317, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(318, 'stu318', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 318, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(319, 'stu319', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 319, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(320, 'stu320', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 320, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(321, 'stu321', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 321, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(322, 'stu322', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 322, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(323, 'stu323', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 323, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(324, 'stu324', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 324, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(325, 'stu325', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 325, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(326, 'stu326', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 326, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(327, 'stu327', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 327, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(328, 'stu328', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 328, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(329, 'stu329', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 329, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(330, 'stu330', 'undefined', '2002-10-16', '', '7777777777', 'baghdad', 330, '2022-12-19', '2022-2023', 'First', 'Evening', 'A'),
(331, 'stu331', 'undefined', '2002-10-17', '', '7777777777', 'baghdad', 331, '2022-12-20', '2022-2023', 'First', 'Morning', 'A'),
(332, 'stu332', 'undefined', '2002-10-18', '', '7777777777', 'baghdad', 332, '2022-12-21', '2022-2023', 'First', 'Morning', 'A'),
(333, 'stu333', 'undefined', '2002-10-19', '', '7777777777', 'baghdad', 333, '2022-12-22', '2022-2023', 'First', 'Morning', 'A'),
(334, 'stu334', 'undefined', '2002-10-20', '', '7777777777', 'baghdad', 334, '2022-12-23', '2022-2023', 'First', 'Morning', 'A'),
(335, 'stu335', 'undefined', '2002-10-21', '', '7777777777', 'baghdad', 335, '2022-12-24', '2022-2023', 'First', 'Morning', 'A'),
(336, 'stu336', 'undefined', '2002-10-22', '', '7777777777', 'baghdad', 336, '2022-12-25', '2022-2023', 'First', 'Morning', 'A'),
(337, 'stu337', 'undefined', '2002-10-23', '', '7777777777', 'baghdad', 337, '2022-12-26', '2022-2023', 'First', 'Morning', 'A'),
(338, 'stu338', 'undefined', '2002-10-24', '', '7777777777', 'baghdad', 338, '2022-12-27', '2022-2023', 'First', 'Morning', 'A'),
(339, 'stu339', 'undefined', '2002-10-25', '', '7777777777', 'baghdad', 339, '2022-12-28', '2022-2023', 'First', 'Morning', 'A'),
(340, 'stu340', 'undefined', '2002-10-26', '', '7777777777', 'baghdad', 340, '2022-12-29', '2022-2023', 'First', 'Morning', 'A'),
(341, 'stu341', 'undefined', '2002-10-27', '', '7777777777', 'baghdad', 341, '2022-12-30', '2022-2023', 'First', 'Morning', 'A'),
(342, 'stu342', 'undefined', '2002-10-28', '', '7777777777', 'baghdad', 342, '2022-12-31', '2022-2023', 'First', 'Morning', 'A'),
(343, 'stu343', 'undefined', '2002-10-29', '', '7777777777', 'baghdad', 343, '2023-01-01', '2022-2023', 'First', 'Morning', 'A'),
(344, 'stu344', 'undefined', '2002-10-30', '', '7777777777', 'baghdad', 344, '2023-01-02', '2022-2023', 'First', 'Morning', 'A'),
(345, 'stu345', 'undefined', '2002-10-31', '', '7777777777', 'baghdad', 345, '2023-01-03', '2022-2023', 'First', 'Morning', 'A'),
(346, 'stu346', 'undefined', '2002-11-01', '', '7777777777', 'baghdad', 346, '2023-01-04', '2022-2023', 'First', 'Morning', 'A'),
(347, 'stu347', 'undefined', '2002-11-02', '', '7777777777', 'baghdad', 347, '2023-01-05', '2022-2023', 'First', 'Morning', 'A'),
(348, 'stu348', 'undefined', '2002-11-03', '', '7777777777', 'baghdad', 348, '2023-01-06', '2022-2023', 'First', 'Morning', 'A'),
(349, 'stu349', 'undefined', '2002-11-04', '', '7777777777', 'baghdad', 349, '2023-01-07', '2022-2023', 'First', 'Morning', 'A'),
(350, 'stu350', 'undefined', '2002-11-05', '', '7777777777', 'baghdad', 350, '2023-01-08', '2022-2023', 'First', 'Morning', 'A'),
(351, 'stu351', 'undefined', '2002-11-06', '', '7777777777', 'baghdad', 351, '2023-01-09', '2022-2023', 'First', 'Morning', 'A'),
(352, 'stu352', 'undefined', '2002-11-07', '', '7777777777', 'baghdad', 352, '2023-01-10', '2022-2023', 'First', 'Morning', 'A'),
(353, 'stu353', 'undefined', '2002-11-08', '', '7777777777', 'baghdad', 353, '2023-01-11', '2022-2023', 'First', 'Morning', 'A'),
(354, 'stu354', 'undefined', '2002-11-09', '', '7777777777', 'baghdad', 354, '2023-01-12', '2022-2023', 'First', 'Morning', 'A'),
(355, 'stu355', 'undefined', '2002-11-10', '', '7777777777', 'baghdad', 355, '2023-01-13', '2022-2023', 'First', 'Morning', 'A'),
(356, 'stu356', 'undefined', '2002-11-11', '', '7777777777', 'baghdad', 356, '2023-01-14', '2022-2023', 'First', 'Morning', 'A'),
(357, 'stu357', 'undefined', '2002-11-12', '', '7777777777', 'baghdad', 357, '2023-01-15', '2022-2023', 'First', 'Morning', 'A'),
(358, 'stu358', 'undefined', '2002-11-13', '', '7777777777', 'baghdad', 358, '2023-01-16', '2022-2023', 'First', 'Morning', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `student_support`
--

CREATE TABLE `student_support` (
  `ID` int(255) NOT NULL,
  `username` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ticket_for` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ticket_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ticket_info` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `ticket_replay` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ticket_replay1` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticket_replay2` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_support`
--

INSERT INTO `student_support` (`ID`, `username`, `admin_username`, `teacher_username`, `ticket_for`, `ticket_title`, `ticket_info`, `date`, `ticket_replay`, `ticket_replay1`, `ticket_replay2`, `status`) VALUES
(1, 'stu', 'admin', '', 'Admin', 'Hi I need Help', 'Hi I need Help Can you Help Me?', '2022-12-08 00:00:00', 'How can I help you', 'What is my result please?', 'You result is 80%', 'Closed'),
(8, 'student 1', '', 's', 'Teacher', 'sssssssss', 'ssssssssssssssssss', '2023-02-25 12:03:26', '', NULL, NULL, 'Open'),
(10, 'student 1', '', 'teach', 'Teacher', 'hi', 'hi how are you', '2023-02-25 12:08:20', '', NULL, NULL, 'Open'),
(12, 'student 1', 'admin', '', 'Admin', 'hi', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '2023-02-25 12:13:42', 'ok', NULL, NULL, 'Open');

-- --------------------------------------------------------

--
-- Table structure for table `stu_note`
--

CREATE TABLE `stu_note` (
  `ID` int(255) NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note_ar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note_date` datetime NOT NULL,
  `class` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Morning',
  `sub` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stu_note`
--

INSERT INTO `stu_note` (`ID`, `note`, `note_ar`, `user`, `note_date`, `class`, `type`, `sub`) VALUES
(1, 'first tuesday exam answers today for find any solution for this post make shore to give a chance to.', 'تجربة', 'admin', '2022-11-17 00:00:00', 'First', 'Morning', 'all'),
(2, 'first tuesday exam answers today for find any solution for this post make shore to give a chance to.', 'تجربة', 'admin', '2022-11-19 00:00:00', 'Second', 'Morning', 'all'),
(3, 'first tuesday exam answers today for find any solution for this post make shore to give a chance to.', 'تجربة', 'teach', '2022-12-02 00:00:00', 'Third', 'Morning', 'all'),
(4, 'test', 'تجربة', 'admin', '2022-12-20 02:33:58', 'First', 'Morning', 'all'),
(5, 'test', 'تجربة', 'teach', '2022-12-20 02:55:58', 'First', 'Morning', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `ID` int(100) NOT NULL,
  `subject_name_ar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_name_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `semester` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `files` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`ID`, `subject_name_ar`, `subject_name_en`, `subject_code`, `semester`, `class`, `files`) VALUES
(1, 'اسس الهندسة الكهربائية', 'Foundations of electrical engineering', 'FOEE', 'terms', 'First', ''),
(2, 'الديمقراطية وحقوق الانسان', 'Democracy and human rights', 'DAHR', 'terms', 'First', ''),
(3, 'الرسم الهندسي (باستخدام برنامج الاوتوكاد)', 'Engineering drawing (using Autocad program)', 'EDUAP', 'terms', 'First', ''),
(4, 'الورش', 'Workshops', 'WS', 'terms', 'First', ''),
(5, 'الالكترونيك الرقمي', 'Digital electronics', 'DE', 'terms', 'First', ''),
(6, 'اللغة الانكليزية 1 ', 'English language 1', 'EL1', 'terms', 'First', ''),
(7, 'سيرة اهل البيت', 'Biography of the ahal albait', 'BOTAA', 'terms', 'First', ''),
(8, 'برمجة الحاسوب 1 ', 'Computer programming 1', 'CP1', 'terms', 'First', ''),
(9, 'تركيب حاسبة', 'Install Computer', 'IC', 'terms', 'First', ''),
(10, 'الالكترونيك', 'Electronics', 'E', 'terms', 'Second', ''),
(11, 'معمارية المعالجات الدقيقة', 'Microprocessor architecture', 'MA', 'terms', 'Second', ''),
(12, 'اسس الاتصالات', 'Communication foundations', 'CF', 'terms', 'Second', ''),
(13, 'تطبيقات الحاسوب', 'Computer applications', 'CA', 'terms', 'Second', ''),
(14, 'الاجهزة والقياسات', 'Devices and measurements', 'DAM', 'terms', 'Second', ''),
(15, 'برمجة حاسوب 2', 'Computer programming 2', 'CP2', 'terms', 'Second', ''),
(16, 'اخلاقيات المهنة', 'Professional ethics', 'PE', 'terms', 'Second', ''),
(17, 'اللغة الانكليزية 2', 'English Language 2', 'EL2', 'terms', 'Second', ''),
(18, 'الرياضيات II ', 'Mathematics II', 'MII', 'terms', 'Second', ''),
(19, 'معالجة اشارة رقمية', 'Digital Signal Processing', 'DSP', 'terms', 'Third', ''),
(20, 'اسس هندسة السيطرة', 'Fundamentals of control engineering', 'FOCE', 'terms', 'Third', ''),
(21, 'الذكاء الاصطناعي', 'Artificial intelligence', 'AI', 'terms', 'Third', ''),
(22, 'اسس شبكة الحاسوب', 'Computer network foundations', 'CNF', 'terms', 'Third', ''),
(23, 'التحلايات الهندسية', 'Engineering analyzes', 'EA', 'terms', 'Third', ''),
(24, 'الاتصالات الرقمية', 'Digital communication', 'DC', 'terms', 'Third', ''),
(25, 'اللغة الانكليزية 3', 'English language 3', 'EL3', 'terms', 'Third', ''),
(26, 'محاكيات الشبكات', 'Network simulators', 'NS', 'terms', 'Third', ''),
(27, 'تصميم منظومات الزمن الحقيقي', 'Design of real time systems', 'DORTS', 'terms', 'Third', ''),
(28, 'تكنولوجيا الحاسوب المتقدم', 'Advanced computer technology', 'ACT', 'terms', 'Forth', ''),
(29, 'حوسبة الوسائط المتعددة', 'Multimedia computing', 'MC', 'terms', 'Forth', ''),
(30, 'امنية الحاسبات وشبكاتها', 'Computer security and networks', 'CSAN', 'terms', 'Forth', ''),
(31, 'نظرية المعلومات والترميز', 'Information theory and coding', 'ITAC', 'terms', 'Forth', ''),
(32, 'بروتوكولات شبكة الحاسوب', 'Computer network protocols', 'CNP', 'terms', 'Forth', ''),
(33, 'اللغة الانكليزية 4', 'English language 4', 'EL4', 'terms', 'Forth', ''),
(34, 'ادارة المشاريع', 'Projects management', 'PM', 'terms', 'Forth', ''),
(35, 'انظمة اتصالات متنقلة', 'Mobile communications systems', 'MCS', 'terms', 'Forth', '');

-- --------------------------------------------------------

--
-- Table structure for table `s_att`
--

CREATE TABLE `s_att` (
  `ID` int(11) NOT NULL,
  `student` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `present` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `s_att`
--

INSERT INTO `s_att` (`ID`, `student`, `date`, `present`) VALUES
(1, 'stu', '2022-12-13', 'Present'),
(2, 'stu', '2022-12-19', 'Present'),
(3, 'stu1', '2022-11-30', 'Present'),
(4, 'stu2', '2022-12-09', 'Present'),
(5, 'stu1', '2022-12-03', 'Absent'),
(6, 'stu2', '2022-12-07', 'Absent'),
(7, 'stu', '2022-12-08', 'Present'),
(11, 'stu', '2023-02-13', 'Present'),
(12, 'stu', '2023-02-14', 'Absent');

-- --------------------------------------------------------

--
-- Table structure for table `tch_note`
--

CREATE TABLE `tch_note` (
  `ID` int(255) NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note_ar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tch_note`
--

INSERT INTO `tch_note` (`ID`, `note`, `note_ar`, `user`, `note_date`) VALUES
(1, 'test test test', 'تجربة', 'admin', '2022-11-17 00:00:00'),
(2, 'test', 'تجربة', 'admin', '2022-12-20 02:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `id` int(255) NOT NULL,
  `teacher_username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(40) NOT NULL,
  `dob` date NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `current_address` varchar(40) DEFAULT NULL,
  `academic_title` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teach_cv` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`id`, `teacher_username`, `gender`, `dob`, `photo`, `mobile`, `current_address`, `academic_title`, `teach_cv`) VALUES
(1, 'teach', 'Female', '1973-02-28', 'course-1.jpg', '07777777777', 'baghdad', 'Assistant-Professor', ''),
(2, 'teach1', 'Male', '1979-09-13', 'course-2.jpg', '0777777777', 'iraq', 'Assistant-Professor', 'سير ذاتية الكل 15.pdf'),
(3, 'teach2', 'Male', '1971-10-21', 'course-3.jpg', '0777777777', 'iraq', 'Assistant-Professor', ''),
(17, 'tchtest', 'Male', '1977-10-12', '', '7777777777', 'baghdad', 'Assistant-Professor', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_support`
--

CREATE TABLE `teacher_support` (
  `ID` int(255) NOT NULL,
  `username` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_username` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ticket_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ticket_info` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `ticket_replay` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ticket_replay1` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ticket_replay2` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher_support`
--

INSERT INTO `teacher_support` (`ID`, `username`, `admin_username`, `ticket_title`, `ticket_info`, `date`, `ticket_replay`, `ticket_replay1`, `ticket_replay2`, `status`) VALUES
(1, 'teach', 'admin', 'hi am fine', 'how are you', '2022-12-02 00:00:00', 'Thank you', 'Good', 'ok', 'Closed'),
(2, 'teach', 'admin', 'I need help', 'test test test', '2022-12-10 01:08:55', 'test', 'test', 'test', 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `ID` int(255) NOT NULL,
  `table_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `study_type` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_sub` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`ID`, `table_img`, `class`, `study_type`, `class_sub`) VALUES
(1, 'blog-3.jpg', 'First', 'Morning', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `t_att`
--

CREATE TABLE `t_att` (
  `ID` int(255) NOT NULL,
  `teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `present` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_att`
--

INSERT INTO `t_att` (`ID`, `teacher`, `date`, `present`) VALUES
(1, 'teach', '2022-12-19', 'Present'),
(2, 'teach', '2022-12-18', 'Absent'),
(3, 'teach', '2022-12-19', 'Present'),
(4, 'teach1', '2022-12-18', 'Present'),
(5, 'teach1', '2022-12-14', 'Absent'),
(6, 'teach1', '2022-12-05', 'Present'),
(7, 'teach', '2022-12-15', 'Present'),
(8, 'teach1', '2022-12-07', 'Absent'),
(11, 'teach2', '2022-12-06', 'Present'),
(12, 'teach2', '2022-12-11', 'Absent'),
(13, 'tchtest', '2023-03-17', 'Present'),
(14, 'tchtest', '2023-03-14', 'Absent'),
(15, 'teach', '2023-03-20', 'Present'),
(16, 'teach', '2023-03-21', 'Present'),
(17, 'teach', '2023-03-23', 'Absent'),
(18, 'teach', '2023-02-13', 'Present'),
(19, 'teach', '2023-02-14', 'Absent');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_title`
--
ALTER TABLE `academic_title`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `active_request`
--
ALTER TABLE `active_request`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `admin_url`
--
ALTER TABLE `admin_url`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `classes_sub`
--
ALTER TABLE `classes_sub`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `deg`
--
ALTER TABLE `deg`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `finel_results`
--
ALTER TABLE `finel_results`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `honor`
--
ALTER TABLE `honor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login_admin`
--
ALTER TABLE `login_admin`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `admin_id` (`admin_email`),
  ADD UNIQUE KEY `admin-username` (`admin_username`);

--
-- Indexes for table `login_student`
--
ALTER TABLE `login_student`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `student_username` (`student_username`),
  ADD UNIQUE KEY `student_email` (`student_email`);

--
-- Indexes for table `login_teacher`
--
ALTER TABLE `login_teacher`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `teacher_username` (`teacher_username`),
  ADD UNIQUE KEY `teacher_email` (`teacher_email`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `students_projects`
--
ALTER TABLE `students_projects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_username` (`student_username`);

--
-- Indexes for table `student_support`
--
ALTER TABLE `student_support`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `stu_note`
--
ALTER TABLE `stu_note`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `subject_code` (`subject_code`);

--
-- Indexes for table `s_att`
--
ALTER TABLE `s_att`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `student` (`student`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `tch_note`
--
ALTER TABLE `tch_note`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teacher_username` (`teacher_username`);

--
-- Indexes for table `teacher_support`
--
ALTER TABLE `teacher_support`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `t_att`
--
ALTER TABLE `t_att`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `teacher` (`teacher`),
  ADD KEY `date` (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_title`
--
ALTER TABLE `academic_title`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `active_request`
--
ALTER TABLE `active_request`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `admin_url`
--
ALTER TABLE `admin_url`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `classes_sub`
--
ALTER TABLE `classes_sub`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `deg`
--
ALTER TABLE `deg`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `finel_results`
--
ALTER TABLE `finel_results`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `honor`
--
ALTER TABLE `honor`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `login_admin`
--
ALTER TABLE `login_admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `login_student`
--
ALTER TABLE `login_student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `login_teacher`
--
ALTER TABLE `login_teacher`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students_projects`
--
ALTER TABLE `students_projects`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `student_support`
--
ALTER TABLE `student_support`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `stu_note`
--
ALTER TABLE `stu_note`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `s_att`
--
ALTER TABLE `s_att`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tch_note`
--
ALTER TABLE `tch_note`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `teacher_support`
--
ALTER TABLE `teacher_support`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_att`
--
ALTER TABLE `t_att`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
