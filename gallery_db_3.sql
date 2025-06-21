-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2025 at 01:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery_db_3`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment_body` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `author`, `email`, `comment_body`) VALUES
(1, 1, 'Farhad', '', 'Cool this post.'),
(3, 28, 'Farhad', 'hello@gmail.com', ''),
(4, 27, 'Farhad', 'farhadmikky@gmail.com', ''),
(5, 27, 'Farhad', 'farhadmikky@gmail.com', ''),
(6, 27, 'Farhad', 'farhadmikky@gmail.com', 'hello'),
(7, 27, 'Farhad', 'farhadmikky@gmail.com', 'hi'),
(9, 28, 'Farhad', 'farhadmikky@gmail.com', 'good job.'),
(10, 28, 'Farhad', 'farhadmikky@gmail.com', 'hi'),
(11, 28, 'Farhad', 'farhadmikky@gmail.com', 'hhhh'),
(12, 28, 'Farhad', 'farhadmikky@gmail.com', 'ghfgh'),
(13, 28, 'Farhad', 'farhadmikky@gmail.com', 'fghfhg'),
(14, 28, 'Farhad', 'farhadmikky@gmail.com', 'fghhd'),
(26, 46, 'Test comment', 'comment@gmail.com', 'ahksdfkhkjshdkjfhkasdf');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `alternate_text` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `filename` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `caption`, `alternate_text`, `description`, `filename`, `type`, `size`, `date`) VALUES
(1, 'Photo Titleee', 'captionnn.', 'alternate texttt.', '<p>descriptionnn.</p>', 'farhad1.jpg', 'image/jpeg', 158262, '2023-08-05'),
(22, 'hello', '', '', '', 'farhad4.jpg', 'image/jpeg', 272558, '2023-08-05'),
(30, '', '', '', '', '2.png', 'image/png', 624497, '2023-08-05'),
(31, '', '', '', '', '3.png', 'image/png', 1017825, '2023-08-05'),
(35, '', '', '', '', 'girls-park (1).jpg', 'image/jpeg', 689672, '2023-08-05'),
(36, '', '', '', '', 'farhad2.jpg', 'image/jpeg', 185462, '2023-08-05'),
(38, '', '', '', '', 'young-delivery-woman-wearing-red-polo-shirt-yellow-cap-making-call-me-gesture-looking-confident-isolated-pink-background-jpg.jpg', 'image/jpeg', 467164, '2023-08-05'),
(39, '', '', '', '', 'young-woman-spreading-palms-sideways-looking-up-checked-shirt-looking-wondered-front-view.jpg', 'image/jpeg', 279481, '2023-08-05'),
(40, '', '', '', '', 'smiley-people-wearing-total-denim-outfits-front-view.jpg', 'image/jpeg', 597606, '2023-08-05'),
(41, '', '', '', '', 'portrait-stylish-man-with-pink-background.jpg', 'image/jpeg', 469930, '2023-08-05'),
(42, '', '', '', '', 'two-fashionable-women-stylish-clothes-sunglasses-posing-middle-business-urban-district.jpg', 'image/jpeg', 463155, '2023-08-05'),
(43, '', '', '', '', 'medium-shot-shocked-girls-with-blue-background.jpg', 'image/jpeg', 560872, '2023-08-05'),
(44, '', '', '', '', 'man-striped-shirt-looks-confused-thoughtful.jpg', 'image/jpeg', 708373, '2023-08-05'),
(46, '', '', '', '', '614d9983-770d-441d-98ff-1082f3c1bb15 (1).png', 'image/png', 463867, '2023-08-05'),
(47, '', '', '', '', 'f0e62ee4-3f27-430f-8fa7-c1673acb1fd8.png', 'image/png', 920739, '2023-08-05'),
(48, '', '', '', '', '_DSC00955 (1).jpg', 'image/jpeg', 2566664, '2023-08-05'),
(50, '', '', '', '', '_DSC00952.jpg', 'image/jpeg', 16520795, '2023-08-05'),
(51, '', '', '', '', 'sidebar-post6_11zon.jpg', 'image/jpeg', 208507, '2023-08-05'),
(57, '', '', '', '', '1671551612622 copyyyy.jpg', 'image/jpeg', 732186, '0000-00-00'),
(58, '', '', '', '', 'Black Elegant Personal LinkedIn Banner.jpg', 'image/jpeg', 38344, '0000-00-00'),
(59, '', '', '', '', 'LinkedIn Banner.png', 'image/png', 92568, '0000-00-00'),
(60, '', '', '', '', 'blog1.jpeg', 'image/jpeg', 78582, '0000-00-00'),
(61, '', '', '', '', 'blog2.jpeg', 'image/jpeg', 143871, '0000-00-00'),
(62, '', '', '', '', 'gfonts.png', 'image/png', 4306, '0000-00-00'),
(63, '', '', '', '', '_DSC007.jpg', 'image/jpeg', 4271789, '0000-00-00'),
(64, '', '', '', '', 'aa816a2b-14de-4c32-a982-d3cd0b75ae4b.png', 'image/png', 293450, '0000-00-00'),
(65, '', '', '', '', '1a80c28e-460b-499d-9e12-e297fdce5810.png', 'image/png', 322712, '0000-00-00'),
(66, '', '', '', '', '8390bb5c-72f7-4e50-8e4c-722a1e29c43d.png', 'image/png', 308072, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `user_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `user_image`) VALUES
(26, 'Admin', 'password', 'Mamun', 'Maruf', 'farhad1.jpg'),
(82, 'farhad', '123', '', '', 'farhad4.jpg'),
(83, 'mikky', '123', '', '', 'farhad2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
