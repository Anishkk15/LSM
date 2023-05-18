-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 02:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_book`
--

CREATE TABLE `add_book` (
  `id` int(10) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_image` varchar(5000) NOT NULL,
  `books_author_name` varchar(50) NOT NULL,
  `books_publication_name` varchar(50) NOT NULL,
  `books_purchase_date` varchar(20) NOT NULL,
  `books_price` varchar(10) NOT NULL,
  `books_quantity` varchar(20) NOT NULL,
  `books_availability` varchar(20) NOT NULL,
  `librarian_username` varchar(20) NOT NULL,
  `books_file` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_book`
--

INSERT INTO `add_book` (`id`, `books_name`, `books_image`, `books_author_name`, `books_publication_name`, `books_purchase_date`, `books_price`, `books_quantity`, `books_availability`, `librarian_username`, `books_file`) VALUES
(1, 'Theoretical Numerical Analysis', 'books-image/5ebaa3080bb0327177a67d697223498a41GxQsLNarL._SX328_BO1,204,203,200_.jpg', 'Kendall Atkinson', 'Dover Publications', '15/03/19', '420', '10', '10', 'pompously', 'books-file/nalrs.pdf'),
(2, 'Health Informatics', 'books-image/9749fdc83fefbcc9cf3a55b16c7a353041SZngIJfuL._SX389_BO1,204,203,200_.jpg', 'Nancy Staggers', 'Elsevier Mosby', '12/03/19', '480', '15', '15', 'pompously', 'books-file/Contents and Front Matter.pdf'),
(3, 'Digital Image Processing', 'books-image/f5546d1614746fed61c4162163d81a59196018.jpg', 'Rafael C. Gonzalez', 'Prentice Hall', '20/03/19', '500', '20', '19', 'pompously', 'books-file/IT6005-SCAD-MSM-by www.LearnEngineering.in.pdf'),
(6, 'Artificial Intelligence', 'books-image/17385102edb4831bab1b8b0577389d5e0133001989.jpg', ' Peter Norvig', 'Dover Publications', '25/03/19', '420', '5', '5', 'admin', 'books-file/17385102edb4831bab1b8b0577389d5eArtificial Intelligence.pdf'),
(7, 'Parallel and Distributed Processing', 'books-image/1554233254.jpg', 'Jose Rolim', 'Elsevier Science', '02/0419', '350', '10', '10', 'admin', 'books-file/1554233331.pdf'),
(8, 'The Guest Book: A Novel', 'books-image/1568430614.jpg', 'test', 'test', '10/5/19', '200', '10', '10', 'admin', 'books-file/1568430614.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `finezone`
--

CREATE TABLE `finezone` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `fine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finezone`
--

INSERT INTO `finezone` (`id`, `username`, `utype`, `email`, `booksname`, `fine`) VALUES
(22, 'samir22', 'teacher', 'samir22@gmail.com', 'Theoretical Numerical Analysis', '50'),
(24, 'sayeed22', 'student', 'sayeed@gmail.com', 'Theoretical Numerical Analysis', '50'),
(25, 'sayeed22', 'student', 'sayeed@gmail.com', 'Artificial Intelligence', '50'),
(26, 'sayeed22', 'student', 'sayeed@gmail.com', 'Artificial Intelligence', '50'),
(27, 'jubayermuhit', 'student', 'joyho3343@gmail.com', 'Combinatorics and Graph Theory', '50'),
(28, 'samir22', 'teacher', 'samir22@gmail.com', 'Digital Image Processing', '50'),
(29, 'mamun22', 'student', 'mamun22@gmail.com', 'Health Informatics', '50'),
(30, 'mamun22', 'student', 'mamun22@gmail.com', 'Health Informatics', '50'),
(31, 'samir2', 'student', 'samir2@gmail.com', 'Combinatorics and Graph Theory', '50'),
(32, 'mamun22', 'student', 'mamun22@gmail.com', 'Digital Image Processing', '50'),
(33, 'jubayermuhit', 'student', 'joyho3343@gmail.com', 'Artificial Intelligence', '50'),
(34, '', '', '', '', '50');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `id` int(10) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `booksissuedate` varchar(10) NOT NULL,
  `booksreturndate` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`id`, `utype`, `regno`, `name`, `sem`, `session`, `dept`, `phone`, `email`, `booksname`, `booksissuedate`, `booksreturndate`, `username`) VALUES
(22, 'student', '17020050005', 'manas', '4th', '17/18', 'CSE', '7901831778', 'manas@gmail.com', 'Theoretical Numerical Analysis', '05/04/2019', '02/04/2023', 'manas1822'),
(26, 'student', '14502000030', 'Anishk', '6th', '14/15', 'BBA', '01521458890', 'AnishkK@gmail.com', 'Parallel and Distributed Processing', '05/04/2019', '02/04/2023', 'Anishk12'),
(28, 'student', '17020050005', 'Mehak', '4th', '17/18', 'CSE', '01932670148', 'mehak28@gmail.com', 'Artificial Intelligence', '31/08/2019', '02/04/2023', 'mehak2031'),
(29, 'student', '14502000020', 'Tanish Singla', '8th', '14/15', 'CSE', '01997259865', 'tanishsingla2@gmail.', 'Digital Image Processing', '14/09/2019', '02/04/2023', 'Tanishsingla24');

-- --------------------------------------------------------

--
-- Table structure for table `lib_registration`
--

CREATE TABLE `lib_registration` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_registration`
--

INSERT INTO `lib_registration` (`id`, `name`, `username`, `password`, `email`, `phone`, `address`, `photo`, `status`) VALUES
(1, 'utter pompously', 'pompously', 'admin', 'pompously@gmail.com', '01721585268', 'sonadanga 2nd phase', 'upload/1553532571.jpg', ''),
(2, 'manas', 'admin', 'admin', 'parttimemail18@gmail.com', '9515215778', 'andhra pradesh', 'upload/1680006609.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(10) NOT NULL,
  `susername` varchar(50) NOT NULL,
  `rusername` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `read1` varchar(10) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `susername`, `rusername`, `title`, `msg`, `read1`, `time`) VALUES
(10, 'admin', 'mamun22', 'test', 'good afternoon\r\n', 'y', '2019-09-07 11:49:45am'),
(11, 'admin', 'mamun22', 'testing message', 'Hi mamun ! Whats up?', 'y', '2019-09-07 03:53:07pm'),
(12, 'admin', 'mamun22', 'last', 'dfsdf', 'y', '2019-09-07 03:56:15pm'),
(13, 'admin', 'nahid22', 'test', 'Hi nahid!', 'y', '2019-09-10 06:35:04pm'),
(14, 'admin', 'nahid22', 'check', 'is it ok', 'y', '2019-09-10 06:38:07pm'),
(15, 'admin', 'mamun22', 'ttttt', 'mmnbvvv', 'y', '2019-09-14 10:51:44am');

-- --------------------------------------------------------

--
-- Table structure for table `request_books`
--

CREATE TABLE `request_books` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `bname` varchar(50) NOT NULL,
  `burl` varchar(500) NOT NULL,
  `read1` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_books`
--

INSERT INTO `request_books` (`id`, `name`, `username`, `email`, `utype`, `bname`, `burl`, `read1`) VALUES
(1, 'anishk', 'Anishk12', 'AnishK@gmail.com', 'student', 'Digital Logic Design', 'https://www.oreilly.com/library/view/digital-logic-design/9780750645829/', 'yes'),
(2, 'mehak', 'mehak2031', 'mehak28@gmail.com', 'student', 'Outliers', 'https://www.goodreads.com/book/show/3228917-outliers', 'yes'),
(5, 'manas', 'manas1822', 'manas@gmail.com', 'student', 'Medical Medium', 'https://www.medicalmedium.com/', 'yes'),
(6, 'eeshan', 'eeshan12', 'eeshan@gmail.com', 'student', 'the alchemist', 'https://ia601006.us.archive.org/13/items/OceanofPDF.comTheAlchemist/_OceanofPDF.com_The_Alchemist.pdf', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `std_registration`
--

CREATE TABLE `std_registration` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `session` varchar(5) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `utype` varchar(7) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `status` varchar(7) NOT NULL,
  `vkey` varchar(250) NOT NULL,
  `verified` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std_registration`
--

INSERT INTO `std_registration` (`id`, `name`, `username`, `password`, `email`, `phone`, `sem`, `dept`, `session`, `regno`, `address`, `utype`, `photo`, `status`, `vkey`, `verified`) VALUES
(4, 'manas', 'manas1822', '123456', 'manas@gmail.com', '7901831778', '4th', 'CSE', '17/18', '17020050005', 'vijaywada,khulna', 'student', 'upload/avatar.jpg', 'no', 'dfdsfsdf', 'yes'),
(5, 'mehak ', 'mehak2031', '123456', 'mehak28@gmail.com', '8945362718', '8th', 'CSE', '14/15', '14502000020', 'sonadanga 2nd phase', 'student', 'upload/1568958905.jpg', 'yes', 'gfhtr4ghtrgfbvf', 'yes'),
(38, 'eeshan', 'eeshan12', '123456', 'eeshan@gmail.com', '6301573829', '6th', 'BBA', '14/15', '14502000030', 'sonadanga', 'student', 'upload/avatar.jpg', 'pending', '436yhgfjhfdstref', 'no'),
(39, 'Tanish singla', 'Tanishsingla24', '123456', 'tanishsingla2@gmail.com', '8909785645', '8th', 'CSE', '14/15', '14502000044', 'khulna', 'student', 'upload/avatar.jpg', 'yes', 'dsrfewtgfdgvd', 'yes'),
(49, 'Akriti', 'akriti', '123456', 'akriti@gmail.com', '7856473829', '1th', 'CSE', '14/15', '14502000026', 'Vizag', 'student', 'upload/avatar.jpg', 'no', 'a9e5dcd08c06d04ea40ed7adc59b8a1e', 'yes'),
(51, 'Anishk', 'Anishk12', '123456', 'AnishkK@gmail.com', '9782561847', '4th', 'CSE', '14/15', '1111111112222', 'jalandhar', 'student', 'upload/avatar.jpg', 'no', 'bee5551ae6dbf70b784ed4dd0966c3bd', 'no'),
(52, 'vanshika', 'vanshika98', 'vanshika12', 'vanshika98@gmail.com', '9089785645', '1th', 'CSE', '14/15', '12502000015', 'Punjab', 'student', 'upload/avatar.jpg', 'yes', 'c79857de008257e8ded4b1bfaeba6f1d', 'yes'),
(53, 'ritika  ', 'ritika12', '123456', 'ritika23@gmail.com', '9877686722', '1th', 'CSE', '14/15', '111112222211', 'Punjab', 'student', 'upload/avatar.jpg', 'yes', '071703501c47bf0db6a04d6431935496', 'no'),
(54, 'mithun', 'mithun22', '123456', 'mithun@gmail.com', '01245555555', '1th', 'CSE', '14/15', '123456666666', 'haryana', 'student', 'upload/avatar.jpg', 'no', '6266417382abff9b2cae55c1b617dcd6', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `t_issuebook`
--

CREATE TABLE `t_issuebook` (
  `id` int(10) NOT NULL,
  `utype` varchar(20) NOT NULL,
  `idno` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lecturer` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `booksissuedate` varchar(20) NOT NULL,
  `booksreturndate` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_issuebook`
--

INSERT INTO `t_issuebook` (`id`, `utype`, `idno`, `name`, `lecturer`, `phone`, `email`, `booksname`, `booksissuedate`, `booksreturndate`, `username`) VALUES
(17, 'teacher', '1001', 'Nahid Hossen', 'CSE', '01721455456', 'nahid001@gmail.com', 'Theoretical Numerical Analysis', '05/04/2019', '02/04/2023', 'nahid22');

-- --------------------------------------------------------

--
-- Table structure for table `t_registration`
--

CREATE TABLE `t_registration` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `lecturer` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `idno` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `utype` varchar(7) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `status` varchar(7) NOT NULL,
  `vkey` varchar(250) NOT NULL,
  `verified` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_registration`
--

INSERT INTO `t_registration` (`id`, `name`, `username`, `password`, `lecturer`, `email`, `phone`, `idno`, `address`, `utype`, `photo`, `status`, `vkey`, `verified`) VALUES
(1, 'Nahid Hossen', 'nahid22', '123456', 'CSE', 'nahid001@gmail.com', '01721455456', '1001', 'Sonadanga 2nd phase, khulna', 'teacher', 'upload/avatar.jpg', 'yes', 'dsfdfsghrfjhyetryt5ergbfvh', 'yes'),
(2, 'Samir Ahmed', 'samir22', '123456', 'CSE', 'samir22@gmail.com', '01521488890', '1008', 'Sonadanga 2nd phase', 'teacher', 'upload/avatar.jpg', 'yes', 'iuyirtytrfhgn4w3erterfgvggfhgfh', 'yes'),
(4, 'jubayer muhit', 'jubayer22', '123456', 'cse', 'jubayer.muhit@gmail.com', '0177725845', '1245555655', 'khulna', 'teacher', 'upload/avatar.jpg', 'no', '7a3b7cd62fe6740522ecb64f7e9b1ee3', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_book`
--
ALTER TABLE `add_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finezone`
--
ALTER TABLE `finezone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lib_registration`
--
ALTER TABLE `lib_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_books`
--
ALTER TABLE `request_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_registration`
--
ALTER TABLE `std_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_issuebook`
--
ALTER TABLE `t_issuebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_registration`
--
ALTER TABLE `t_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_book`
--
ALTER TABLE `add_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `finezone`
--
ALTER TABLE `finezone`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `issue_book`
--
ALTER TABLE `issue_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `lib_registration`
--
ALTER TABLE `lib_registration`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `request_books`
--
ALTER TABLE `request_books`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `std_registration`
--
ALTER TABLE `std_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `t_issuebook`
--
ALTER TABLE `t_issuebook`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `t_registration`
--
ALTER TABLE `t_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
