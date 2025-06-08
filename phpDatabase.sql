-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2024 at 03:56 PM
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
-- Database: `duan1_quanao`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `address`) VALUES
(17, 15, 'Vĩnh Long 123'),
(18, 6, 'Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`cart_id`, `product_id`, `user_id`, `product_name`, `product_price`, `product_quantity`, `product_image`) VALUES
(80, 25, 9, 'Cây cam ngọt', 160000, 1, 'cay-cam-ngot.jpg'),
(81, 23, 9, 'Sách đất rừng', 120000, 1, 'dat-rung.jpg'),
(82, 27, 9, 'Người bà tài giỏi(tái bản 2022)', 180000, 1, 'nguoi-ba.jpg'),
(83, 2, 9, 'Sách mới', 110000, 3, 'book-2.png'),
(138, 32, 11, 'Kiếm Tiền Từ Tiktok', 100000, 1, 'kiem-tien-titok.jpg'),
(203, 32, 8, 'Iphone', 100000, 1, 'iphone2.jpg'),
(212, 30, 6, 'Áo Thu Đông Nữ Giữ Nhiệt Cổ 3cm', 102000, 1, 'quanao6.png'),
(213, 32, 6, 'Áo trẻ em', 100000, 1, 'quanao4.png'),
(214, 25, 6, 'Áo polo Nam', 160000, 1, 'quanao8.png');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `image`, `status`) VALUES
(1, 'Chưa có danh mục', 'tieng-anh-nguoi-moi.jpg', 1),
(2, 'Nam', 'quanao2.png', 1),
(4, 'Trẻ em', 'quanao3.png', 1),
(6, 'Nữ', 'quanao6.png', 1),
(16, 'Áo Polo', 'quanao8.png', 1),
(17, 'Quần Jeans', 'quanao9.png', 1),
(19, 'Áo thun', 'quanao10.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 ẩn 1 hiện',
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `content`, `date`, `status`, `user_id`, `product_id`) VALUES
(1, 'Helllo', '2023-11-25 19:46:51', 1, 6, 26),
(2, 'Tôi là khoa nè', '2023-11-25 20:06:15', 1, 6, 21),
(3, 'Admin nè xin chào mn', '2023-11-25 20:48:50', 1, 8, 26),
(4, 'Hello', '2023-11-26 12:00:44', 1, 6, 27),
(5, 'Sản phẩm tốt đọc hay nên mua nha mn', '2023-11-29 21:11:44', 1, 6, 27),
(8, 'Ngày 12/5/2023 Hello every one', '2023-12-05 09:46:35', 1, 6, 28),
(11, 'Xin chào mọi người trên sharecode', '2024-09-05 21:01:47', 1, 6, 31),
(12, 'mUA CODE ỦNG HỘ NHA HIHI', '2024-09-05 21:06:58', 1, 6, 32);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderdetails_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderdetails_id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(21, 10, 24, 1, 120000),
(22, 10, 27, 1, 180000),
(23, 11, 1, 2, 110000),
(24, 11, 24, 1, 120000),
(25, 12, 23, 1, 120000),
(26, 12, 20, 1, 160000),
(27, 13, 25, 2, 160000),
(28, 13, 26, 2, 200000),
(29, 14, 25, 4, 160000),
(30, 14, 27, 1, 180000),
(31, 14, 26, 2, 200000),
(32, 15, 23, 1, 120000),
(33, 15, 26, 1, 200000),
(34, 16, 27, 1, 180000),
(35, 16, 26, 1, 200000),
(36, 16, 20, 1, 160000),
(37, 17, 29, 1, 50000),
(38, 17, 31, 1, 126000),
(39, 17, 32, 2, 100000),
(40, 18, 31, 1, 126000),
(41, 18, 24, 1, 120000),
(42, 19, 30, 1, 102000),
(48, 22, 29, 1, 50000),
(49, 22, 28, 1, 180000),
(50, 23, 1, 2, 159000),
(51, 23, 24, 1, 120000),
(52, 24, 15, 1, 95000),
(53, 24, 14, 1, 102000),
(54, 25, 21, 1, 88000),
(55, 26, 21, 4, 88000),
(56, 27, 29, 1, 50000),
(57, 27, 1, 1, 159000),
(58, 28, 28, 1, 180000),
(59, 29, 2, 1, 97000),
(60, 29, 29, 1, 50000),
(61, 29, 1, 1, 159000),
(62, 30, 31, 3, 126000),
(63, 31, 2, 2, 97000),
(64, 31, 1, 1, 159000),
(65, 32, 32, 1, 100000),
(66, 33, 21, 1, 88000),
(67, 33, 25, 1, 160000),
(68, 33, 28, 3, 180000),
(69, 34, 29, 1, 50000),
(70, 34, 31, 3, 126000),
(71, 35, 1, 1, 159000),
(72, 35, 28, 2, 180000),
(73, 36, 25, 1, 160000),
(74, 36, 27, 1, 180000),
(75, 36, 31, 2, 126000),
(76, 37, 32, 1, 100000),
(77, 38, 31, 1, 126000),
(78, 38, 30, 1, 102000),
(79, 39, 25, 1, 160000),
(80, 39, 29, 2, 50000),
(81, 39, 30, 1, 102000),
(82, 40, 17, 1, 187000),
(83, 40, 16, 1, 90000),
(84, 40, 18, 2, 120000),
(85, 41, 25, 5, 160000),
(86, 42, 29, 2, 50000),
(87, 42, 17, 1, 187000),
(88, 43, 27, 1, 180000),
(89, 43, 31, 1, 126000),
(90, 44, 1, 1, 159000),
(91, 44, 28, 1, 180000),
(92, 45, 28, 1, 180000),
(93, 45, 31, 2, 126000),
(94, 46, 6, 1, 100000),
(95, 47, 6, 5, 100000),
(96, 48, 2, 4, 97000),
(97, 48, 1, 1, 159000),
(98, 49, 31, 1, 126000),
(99, 50, 27, 3, 180000),
(100, 50, 32, 1, 100000),
(101, 51, 32, 1, 100000),
(102, 51, 26, 1, 200000),
(103, 52, 31, 1, 126000),
(104, 52, 32, 2, 100000),
(105, 53, 28, 1, 180000),
(106, 53, 30, 2, 102000),
(107, 54, 27, 1, 180000),
(108, 54, 30, 1, 102000),
(109, 54, 31, 1, 126000),
(110, 55, 24, 2, 120000),
(111, 55, 31, 1, 126000),
(112, 56, 31, 1, 126000),
(113, 56, 26, 1, 200000),
(114, 57, 31, 1, 126000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `total` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `note` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `date`, `total`, `address`, `phone`, `note`, `status`) VALUES
(10, 6, '2023-11-27 22:13:51', 300000, 'Can tho', '0909135986', '', 2),
(11, 6, '2023-11-28 09:00:28', 340000, 'Can tho', '0909135986', 'Gói sách kĩ giúp em lần trước mua bị rách', 3),
(12, 7, '2023-11-28 09:24:42', 280000, 'Kiên Giang', '0336216654', 'Hello my friend', 3),
(13, 9, '2023-11-28 12:01:11', 720000, 'Cái Răng, Cần Thơ', '0909135969', 'Đóng gói hàng kĩ', 2),
(14, 6, '2023-11-28 14:00:19', 1220000, 'Can tho', '0909135986', 'hi', 4),
(15, 6, '2023-11-28 18:22:55', 320000, 'Can tho', '0909135986', 'Chúc 1 ngày vui', 4),
(16, 6, '2023-11-29 22:07:55', 540000, 'Can tho', '0909135986', 'Mua hang 29/11/2023', 3),
(17, 10, '2023-12-03 10:12:41', 376000, 'Ninh Kiều, Cần Thơ', '0909135985', 'Gói hàng cẩn thận giao nhanh giúp tôi ', 1),
(18, 6, '2023-12-04 18:23:31', 246000, 'Cái Răng, Cần Thơ', '0909135329', 'Giao hàng nhanh nha, đang cần gấp', 1),
(19, 6, '2023-12-04 19:43:58', 102000, 'Quận Đống Đa, Hà Nội', '0909246546', 'Mong là sách đọc hay', 4),
(22, 11, '2023-12-04 20:28:09', 230000, 'Sóc Trăng', '0336246546', 'Đóng hàng kĩ', 3),
(23, 11, '2023-12-04 20:29:51', 279000, 'Cần Thơ', '0909006764', 'Hello', 1),
(24, 11, '2023-12-04 21:49:06', 197000, 'Cần Thơ', '0909006764', '', 1),
(25, 11, '2023-12-04 21:56:40', 88000, 'Cần Thơ', '0909006764', '', 1),
(26, 11, '2023-12-04 22:00:39', 352000, 'Cần Thơ', '0909006764', '', 1),
(27, 10, '2023-12-06 22:10:19', 209000, 'Ninh Kiều, Cần Thơ', '0909135985', '', 2),
(28, 10, '2023-12-06 22:12:15', 180000, 'Long Hồ, Vĩnh Long', '0909135399', 'Mua hàng cho bạn ở quê', 1),
(29, 6, '2023-12-07 08:48:32', 306000, 'Ninh Kiều, Cần Thơ', '0909135329', '', 3),
(30, 6, '2023-12-07 08:50:28', 378000, 'Quận Mỹ Đình, Hà Nội', '0336216546', 'Hello 2023', 2),
(31, 6, '2023-12-11 17:33:40', 353000, 'Long Biên, Hà Nội', '0336216546', 'Giao hàng nhanh giúp tôi', 1),
(32, 6, '2023-12-11 19:07:50', 100000, 'Cần Thơ', '0336216546', 'Giao nhanh', 1),
(33, 11, '2023-12-11 19:13:10', 788000, 'Quận Cầu Giấy Hà Nội', '0336216546', 'Sách hay quóaa', 1),
(34, 10, '2023-12-11 19:55:09', 428000, 'Quận Cầu Giấy Hà Nội', '0909135329', 'Giao hàng nhanh giúp tôi', 4),
(35, 10, '2023-12-11 20:01:28', 519000, 'Quận Cầu Giấy Hà Nội', '0336216546', 'Giao hàng nhanh giúp tôi', 2),
(36, 6, '2023-12-12 10:11:51', 592000, 'Anh Khánh, Ninh Kiều, Cần Thơ', '0336246546', 'Đóng hàng kĩ', 1),
(37, 6, '2023-12-12 10:25:55', 100000, 'Anh Khánh, Ninh Kiều, Cần Thơ', '0909135985', 'Hello', 4),
(38, 6, '2023-12-12 10:31:24', 228000, 'Anh Khánh, Ninh Kiều, Cần Thơ', '0909135985', 'Đóng hàng kĩ', 1),
(39, 7, '2023-12-12 17:38:21', 362000, 'Số 14 Nguyễn Công Trứ, phường Vĩnh Thanh, thành phố Rạch Giá, tỉnh Kiên Giang', '0336216123', 'Sách hay', 2),
(40, 6, '2023-12-12 17:47:50', 517000, 'Số 14 Nguyễn Công Trứ, phường Vĩnh Thanh, thành phố Rạch Giá, tỉnh Kiên Giang', '0909135329', 'Đóng gói hàng kĩ', 1),
(41, 8, '2023-12-12 17:53:39', 800000, 'Anh Khánh, Ninh Kiều, Cần Thơ', '0336246546', 'Gói hàng kĩ', 1),
(42, 6, '2023-12-12 18:19:03', 287000, 'Quận Cầu Giấy Hà Nội', '0909135329', 'Mua hàng nè hihi', 2),
(43, 10, '2023-12-12 18:22:50', 306000, 'Cái Răng, Cần Thơ', '0336246546', 'Gói hàng kĩ', 1),
(44, 10, '2023-12-12 18:32:55', 339000, 'Số 14 Nguyễn Công Trứ, phường Vĩnh Thanh, thành phố Rạch Giá, tỉnh Kiên Giang', '0909135329', 'Giao hàng nhanh nha', 1),
(45, 6, '2023-12-13 15:12:18', 432000, 'Số 14 thành phố Rạch Giá, tỉnh Kiên Giang', '0336216546', 'Test mua hàng 13/12/2023', 1),
(46, 10, '2023-12-13 16:54:29', 100000, 'Ninh Kiều, Cần Thơ', '0909135985', 'Hảo mua hàng nè', 1),
(47, 10, '2023-12-13 17:01:33', 500000, 'Ninh Kiều, Cần Thơ', '0909135985', '', 1),
(48, 7, '2023-12-13 17:07:00', 547000, 'Kiên Giang', '0336216654', '', 1),
(49, 6, '2024-03-26 20:18:15', 126000, 'Ninh Kiều, Cần Thơ', '0909135329', '', 1),
(50, 6, '2024-03-26 20:20:18', 640000, 'Cần Thơ', '0336216546', '', 1),
(51, 6, '2024-04-19 20:51:54', 300000, 'Anh Khánh, Ninh Kiều, Cần Thơ', '0336216546', 'Đóng hàng kĩ', 1),
(52, 6, '2024-04-21 18:28:19', 326000, 'Ninh Kiều, Cần Thơ', '0909135329', 'Giao nhanh', 1),
(53, 6, '2024-04-21 18:45:37', 384000, 'Anh Khánh, Ninh Kiều, Cần Thơ', '0909135985', 'Đóng hàng kĩ', 1),
(54, 6, '2024-09-05 20:56:24', 408000, 'Ninh Kiều, Cần Thơ', '0909135329', 'oki', 1),
(55, 6, '2024-09-05 21:02:30', 366000, 'Ninh Kiều, Cần Thơ', '0909135329', 'Đóng hàng kĩ', 4),
(56, 6, '2024-09-05 21:09:21', 326000, 'Hà Nội', '0909135555', 'GIAO NHANH NHA', 1),
(57, 6, '2024-10-10 20:33:44', 126000, 'xin chào  0909199999', '0909199999', 'Gói hàng kĩ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `category_id`, `title`, `image`, `author`, `content`, `views`, `status`, `created_at`, `updated_at`) VALUES
(1, 9, 'Top 5+ những cuốn sách hay nên đọc 1 lần trong đời', 'top-sach.jpg', 'Admin', '<p><strong>Ngày nay, bạn có thể tìm thấy hàng triệu cuốn sách trên thế giới thuộc vô số chủ đề độc đáo. Tuy nhiên, có những cuốn sách tâm đắc nhất mà bạn không thể bỏ lỡ và nhất định nên đọc một lần. Hãy cùng Sforum điểm qua top 22+ những cuốn sách hay 2023 nên đọc trong đời ngay bây giờ nhé. Đừng quên chọn cho mình cuốn sách ưng ý nhất để đem về tủ sách nhà mình!</strong></p><h4><strong>Nhà giả kim</strong></h4><p>“Nhà giả kim” là một trong những cuốn sách hay của tác giả Paulo Coelho, kể về cuộc hành trình theo đuổi giấc mơ của Santiago, một chàng chăn cừu người Tây Ban Nha. Cuốn sách truyền đạt thông điệp về việc tìm kiếm quy luật của vũ trụ và ý nghĩa thực sự của cuộc đời. Và đây không chỉ là một câu chuyện phiêu lưu mà còn là một hành trình tìm kiếm bản thân, khám phá niềm tin và theo đuổi đam mê.</p><h4><strong>Đắc nhân tâm</strong></h4><p>“Đắc nhân tâm” do Dale Carnegie viết là một trong những cuốn sách hay bán chạy nhất mọi thời đại. Cuốn sách này chứa đựng những bài học về kỹ năng giao tiếp, làm thế nào để thu hút và ảnh hưởng đến người khác. Không chỉ dừng lại ở việc truyền đạt những kỹ năng mềm, cuốn sách còn giúp người đọc hiểu rõ hơn về tâm lý con người và cách xây dựng mối quan hệ.</p><h4><strong>Cà phê cùng Tony</strong></h4><p>“Cà phê cùng Tony” là sách hay nên đọc cho giới trẻ của tác giả Tony Buổi Sáng chứa đựng những suy nghĩ, bài học về cuộc sống, công việc và tình yêu dưới góc nhìn của Tony - một người trẻ tuổi đầy nhiệt huyết. Thông qua những câu chuyện ngắn gọn, dễ hiểu, Tony giúp người đọc nhìn lại và định hình lại quan điểm về nhiều vấn đề trong cuộc sống. Cuốn sách còn một người bạn đồng hành, giúp bạn tìm thấy niềm vui, hạnh phúc và ý nghĩa trong từng khoảnh khắc của cuộc đời.</p><h4><strong>Người giàu có nhất thành Babylon</strong></h4><p>George S. Clason thông qua “Người giàu có nhất thành Babylon” đã trình bày những bài học tài chính quý báu dưới dạng các câu chuyện huyền bí từ Babylon cổ đại, nơi được coi là nền kinh tế phồn thịnh nhất từng tồn tại. Đây là cuốn sách hay 2023 cực kỳ hot mà nhắc tới chắc hẳn ai cũng từng nghe qua một lần.</p><p>Cuốn sách cung cấp cho người đọc những nguyên tắc quản lý tài chính cá nhân, tiết kiệm và đầu tư một cách thông minh. Mỗi chương đều mang đến một bài học riêng biệt, giúp người đọc hiểu biết về việc làm giàu không chỉ dựa vào thu nhập, mà còn cần sự khôn ngoan, kỷ luật và hiểu biết về tiền bạc.</p><h4><strong>Cách nghĩ để thành công (Think &amp; Grow Rich)</strong></h4><p>“Think &amp; Grow Rich” thuộc top những cuốn sách hay nên đọc và là một tác phẩm kinh điển của Napoleon Hill, được viết dựa trên nghiên cứu của ông về hàng trăm người thành đạt nhất thế kỷ 20. Cuốn sách không chỉ giới thiệu về việc kiếm tiền mà còn về việc xây dựng tư duy thành công. Hill trình bày 13 bước để đạt đến sự giàu có và thành công, bắt đầu từ ý thức định hướng, lòng tin và sức mạnh của việc tạo lập mục tiêu cụ thể.</p>', 0, 1, '2023-11-29 17:13:09', '2023-12-04 21:31:51'),
(5, 2, 'Những tác giả có sức ảnh hưởng nhất trong làng sách Việt Nam năm 2015', 'tac-gia.jpg', 'Admin', '<p><strong>Năm 2015, bên cạnh những tác giả đã quá đỗi quen thuộc thì thị trường xuất bản còn đón nhận nhiều gương mặt trẻ. Họ đã thổi một làn gió mới tới những người yêu sách, đem đến tinh thần mua sách và đọc sách ở thế hệ 9x, 10x.&nbsp;</strong></p><p>Cùng LĐTĐ điểm tên 10 nhà văn, tác giả tạo được tiếng vang nhất trong làng sách Việt Nam trong năm qua.</p><h4><strong>Nguyễn Nhật Ánh</strong></h4><p>Năm 2015 có thể coi là một năm “đại thắng” đối với nhà văn Nguyễn Nhật Anh. “Tôi thấy hoa vàng trên cỏ xanh” thu nhận thành công trên mức tưởng tượng khi được chuyển thể thành phim nhựa giới thiệu tới khán giả trong và ngoài nước. Bên cạnh sự phủ sóng mạnh mẽ của “Tôi thấy hoa vàng trên cỏ xanh”, những cuốn sách khác của nhà văn Nguyễn Nhật Ánh như: “Bảy bước tới mùa hè”, “Cô gái đến từ hôm qua”… cũng nhanh chóng trở thành “best-seller” ngay từ khi mới ra mắt.</p><p>Thành công của những tác phẩm do Nguyễn Nhật Ánh sáng tác đến từ sự dung dị, đời thường, gắn liền với những kỷ niệm tươi đẹp của tuổi thơ. Mỗi cuốn sách như một bức tranh mở ra trước mắt người đọc những khung cảnh chân phương, đầy ắp tiếng cười.</p><h4><strong>Nguyễn Phong Việt</strong></h4><p>“Đi qua thương nhớ”, “Sinh ra là để cô đơn” hay mới đây nhất là “Sống một cuộc đời bình thường” đều là những cuốn sách được yêu mến của Nguyễn Phong Việt.</p><p>Được mệnh danh là nhà thơ “ăn khách” nhất, Nguyễn Phong Việt chia sẻ: “Tôi may mắn khi mình có rất nhiều cảm xúc. Ngay từ tập thơ đầu, tôi là người làm thơ không câu nệ câu chữ. Mình nghĩ câu đó cần 20 từ thì viết 20 từ chứ không phải vì để cho ngắn gọn, cho người đọc dễ chịu thì viết ngắn hơn. Mình viết mình cảm nhận được trước đã, rồi độc giả mới hiểu. Sau này, tôi có sự thỏa hiệp nho nhỏ, thay đổi vài từ để cảm xúc của câu chữ không bị bóp nghẹt trong đau đớn”.</p><h4><strong>Anh Khang</strong></h4><p>Sớm định hình phong cách riêng trong dòng văn học trẻ sôi động, Anh Khang - tác giả sinh năm 1987 được độc giả trẻ đón nhận qua những tựa sách “hot” như “Ngày trôi về phía cũ”, “Đường hai ngả người thương thành lạ” hay “Buồn làm sao buông”.</p><p>Văn của Anh Khang không tìm đến sự nổi loạn hay phá cách trong con chữ mà tạo ra dấu ấn riêng nhờ sự nhạy cảm trong lối suy nghĩ thấu đáo, truyền tải đúng tâm tình của người trẻ hiện đại. Anh Khang là một trong những tác giả trẻ sở hữu số lượng fans đông đảo nhất hiện nay trên mạng xã hội cũng như ngoài đời thực.</p>', 0, 1, '2023-11-29 17:25:47', '2023-12-03 13:21:05'),
(8, 9, 'Top cuốn sách tâm lý làm chủ chính mình hay nhất hiện nay', 'top-sach-tam-li.jpg', 'Admin', '<p><i>Tâm lý học là một ngành học thú vị và hấp dẫn, bởi vì nó giúp chúng ta hiểu được tâm lý con người, một thứ rất phức tạp và biến đổi. Nhiều người muốn nâng cao kiến thức về tâm lý học và tìm đọc những cuốn sách chất lượng và hữu ích về ngành học này. Trong bài viết này, sẽ giới thiệu cho bạn top cuốn sách tâm lý nổi tiếng hiện nay.</i></p><h4><strong>Tư duy nhanh và chậm – Daniel Kahneman</strong></h4><p>Tư Duy Nhanh Và Chậm là một cuốn sách nổi tiếng của Daniel Kahneman, một nhà tâm lý học xuất sắc. Sách giải thích rằng tâm trí con người có hai hệ thống hoạt động khác nhau: Hệ thống 1 hoạt động nhanh chóng, trực giác và không cần suy nghĩ nhiều; Hệ thống 2 hoạt động chậm rãi, cẩn thận và cần nhiều sự chú ý. Tác giả cũng cho thấy rằng con người thường mắc phải những sai lầm trong việc ra quyết định, do bị ảnh hưởng bởi những cảm xúc, định kiến và thiếu nhất quán. Cuốn sách này sẽ giúp bạn đọc hiểu được nhiều điều thú vị và sâu sắc về tâm lý con người và nhận ra rằng “Chúng ta không giỏi như chúng ta nghĩ”.</p><h4><a href=\"https://tiki.vn/search?q=phi%20l%C3%BD%20tr%C3%AD\"><strong>Phi lý trí</strong></a><strong> – Dan Ariely</strong></h4><p>Phi Lý Trí là một tác phẩm trong top cuốn sách tâm lý của Dan Ariely, một giáo sư tâm lý học và kinh tế học hành vi, trong đó ông đã trình bày những nghiên cứu và thí nghiệm của mình về sự thiếu hợp lý của con người trong việc ra quyết định và tiết lộ những hiện tượng tâm lý mới lạ và thú vị. Ông đã khẳng định rằng: chúng ta thường bị ảnh hưởng bởi một “hệ thống” phi lý trí vô hình.&nbsp;</p><p>Ông đã kết hợp những nghiên cứu khoa học với những ví dụ thực tế để giúp chúng ta nhận ra những “điểm mù” trong cách suy nghĩ hàng ngày. Phi Lý Trí của Dan Ariely là một cuốn sách tâm lý học rất cuốn hút bởi ông đã sử dụng ngôn ngữ dễ hiểu nhưng vẫn khiến người đọc phải suy ngẫm về những hành vi và những sai lầm của bản thân để có thể sống một cách hợp lý và tốt đẹp hơn.</p><h4><strong>Im lặng – Sức mạnh của người hướng nội</strong></h4><p>Trong cuốn sách này, Susan Cain đã nói về sự khác biệt giữa người hướng ngoại và người hướng nội, và những ưu điểm của người có tính cách nhạy cảm. Tác giả đã chỉ ra rằng người hướng nội có thể tận dụng tính cách của mình để chọn lựa công việc, lĩnh vực phù hợp với mình trong xã hội.&nbsp;</p><p>Cuốn sách này sẽ rất hữu ích cho bạn nếu bạn là người hướng nội muốn tìm đường đi cho bản thân, hoặc nếu bạn muốn hiểu thêm về người hướng nội để có thể quản lý, giao tiếp và hợp tác tốt hơn với họ.</p><h4><strong>Tâm Lý Học Đám Đông – Gustave Le Bon</strong></h4><p>Tác giả Gustave Le Bon, một nhà tâm lý học Pháp nổi tiếng, đã viết cuốn sách Tâm lý học đám đông để nghiên cứu về sự ảnh hưởng của đám đông đến lý trí và cảm xúc của con người. Tác giả đã dựa trên nhiều nghiên cứu về tinh thần và tính cách của các dân tộc, chủng tộc khác nhau trên thế giới. Tác giả đã cho rằng, con người bị chi phối bởi những yếu tố sinh học và tâm lý học. Chủng tộc là một thực thể ẩn sâu trong mỗi cá nhân và có ảnh hưởng đến mọi hành động, ham muốn, xung năng của họ. Tác giả cũng đã trải qua nhiều biến động lịch sử của Pháp, như Công Xã Paris, cách mạng Pháp 1789 và 1848. Những trải nghiệm này đã giúp tác giả có những quan sát và phân tích từ thực tiễn được thể hiện rõ nét trong cuốn sách Tâm lý học đám đông.</p>', 0, 1, '2023-12-03 13:45:32', '2023-12-03 13:45:32'),
(9, 9, '9 cuốn sách kinh tế hay nhất | Muốn kinh doanh phải đọc qua', 'top-9-sach.jpg', 'Admin', '<p><strong>Bạn quan tâm đến tình hình kinh tế thế giới, bạn muốn bắt đầu một sự nghiệp kinh doanh mà phân vân không biết nền kinh tế thực sự vận hành như thế nào, bạn muốn tìm hiểu một tựa sách về kinh tế nhưng vẫn đang phân vân. Bài viết này sẽ giải đáp hết thắc mắc đó. Cùng tìm hiểu những cuốn sách về kinh doanh hay nhất được chúng tớ tổng hợp nhé.</strong></p><h4><strong>Thế giới phẳng – Thomas L.Friedman</strong></h4><p>Sách kinh tế Thế giới phẳng nói về vấn đề toàn cầu hóa dưới góc độ phân tích độc đáo. Theo tác giả, “phẳng” trong thế giới phẳng đó là sự kết nối, phá vỡ đi rào cản về chính trị, tôn giáo, địa lý, từ đó mở ra địa chính trị, địa kinh tế, phương thức sản xuất kinh doanh tiên tiến hiện đại hơn.</p><p>Cuốn sách tập trung mổ xẻ cấu trúc của nền kinh tế và chính trị đương đại, nêu rõ sự phát triển vượt bậc của khoa học kỹ thuật làm thay đổi diện mạo của nền kinh tế thế giới. Bằng cách trình bày hóm hỉnh hài hước, tác giả đã giúp người đọc hiểu thế giới phẳng được bắt đầu khi nào, diễn tiến ra sao, các yếu tố then chốt làm thế giới phẳng. Thông qua cuốn sách, các doanh nghiệp, quốc gia, cá nhân nhìn nhận rõ được cơ hội và thách thức trong bối cảnh toàn cầu hóa, từ đó đưa ra định hướng phát triển riêng cho mình.</p><h4><strong>Lược sử kinh tế học – Niall Kishtainy</strong></h4><p>Sách kinh tế Lược sử kinh tế học luôn nằm trong top những cuốn sách bán chạy nhất hiện nay. Đọc xong cuốn sách mọi người sẽ cảm nhận được kinh tế học không phải là những kiến thức cao siêu dành cho các doanh nhân, chính khách hay nhà kinh tế học mà nó có ích và gần gũi với cuộc sống củ mỗi người. Mỗi người trong thời đại hiện nay đều cần nắm được các kiến thức cơ bản về kinh tế để giúp cuộc sống của mình được tốt đẹp hơn.</p><p>Nội dung sách tập trung nói về các học thuyết và quy luật kinh tế kinh điển ở phương tây trong hàng nghìn năm qua dưới góc độ khác quan. Tác giả đưa ra những minh họa, ví dụ sống động và dễ hiểu để có thể tiếp cận được phần đa người đọc. Với độ dày khoảng 300 trang, sách kinh tế hay Lược sử kinh tế học giúp chúng ta nắm được các cột mốc quan trọng toàn cảnh nền kinh tế, từ lúc khởi nguồn đơn giản đến khi phức tạp hơn, xuất hiện giá trị thặng dư, buôn bán…</p><h4><strong>Doanh nghiệp của thế kỷ 21 – Robert T. Kiyosaki</strong></h4><p>Nhắc đến những cuốn sách kinh tế hay thì không thể nào kể thiếu tên cuốn Doanh nghiệp của thế kỷ 21. Cuốn sách này sẽ nêu rõ lý do tại sao cần phải xây dựng được cho mình doanh nghiệp riêng, và nên hoạt động trong lĩnh vực nào là tốt nhất. Bên cạnh đó tác giả cũng đưa ra nhiều kiến thức về tư duy làm giàu, cách tìm kiếm các phương tiện giúp xây dựng hình ảnh doanh nghiệp tốt hơn đối với khách hàng, người tiêu dùng, đối tác… Những công cụ, cách thức tìm kiếm mọi thứ để giúp doanh nghiệp phát triển toàn diện hơn cũng được bật mí chi tiết và đầy đủ nhất qua cuốn sách.</p><p>Cuốn sách khai sáng tư duy cho những ai đang mong muốn tự lập kinh doanh và làm giàu cho bản thân. Tác giả đưa ra giải pháp mà bất cứ ai cũng có thể vận dụng, áp dụng thành công mà không cần phải có tài năng hay thiên bẩm.</p><h4><strong>Tuần làm việc 4 giờ – Timothy Ferress</strong></h4><p>Một trong những cuốn sách kinh tế hay mà bạn nên đọc đó là Tuần làm việc 4 giờ. Đọc cuốn sách này, mỗi người sẽ tự trả lời được cho mình câu hỏi làm thế nào để có được cuộc sống tự do, thoải mái như một triệu phú, tỷ phú mà không cần phải có 1 triệu đô la, 1 tỷ đô la – số tiền mà ít ai có được trong suốt cuộc đời học tập, làm việc của mình. Tác giả đã giúp mỗi người biết cách tách biệt thu nhập với thời gian, từ đó xây dựng cho mình lối sống lý tưởng với nhiều hoạt động đa dạng như đi vòng quanh thế giới, đọc sách…</p><p>Từ cuốn sách, tác giả Timothy Ferress cũng đã có những chia sẻ về cách kiếm tiền 40 nghìn đô /tháng chỉ bằng cách làm 4 tiếng/tuần. Sự khác biệt của cuốn sách là đưa ra góc nhìn cuộc sống đơn giản và dễ thở hơn, thay vì đề cập đến các vấn đề thường gặp như thiếu thời gian làm việc, nghỉ ngơi, tinh thần căng thẳng… Nhìn chung mỗi người hoàn toàn có thể sống tốt với công việc mà mình có tiềm năng, quan trọng bạn cần phải khai phá tiềm năng của mình đúng đắn.</p><h4><strong>Chiến lược đại dương xanh – W. Chan Kim &amp; Renee Mauborgne</strong></h4><p>Chiến lược đại dương xanh là cuốn sách hay về kinh tế tiếp theo mà chúng tôi muốn giới thiệu đến các bạn đọc. Cuốn sách này xuất bản từ năm 2004, đến nay đã trải qua gần 20 năm nhưng vẫn giữ nguyên tính lịch sử và sự phù hợp với thời đại. Cuốn sách nổi tiếng này đã được dịch hơn 46 thứ tiếng và bán hơn 4 triệu bản trên toàn thế giới.</p><p>Nội dung cuốn sách đề cập đến chiến lược kinh doanh kinh điển mà các doanh nhân, lãnh đạo cần biết, đó là mở rộng và phát triển thị trường mới – một đại dương xanh – ở đó không có bất cứ sự cạnh tranh nào.</p><p>Chiến lược này nhấn mạnh tầm quan trọng của việc nâng cao giá trị dịch vụ cũng như sản phẩm, đi kèm với đó là giá thành hợp lý để mang lại nhiều quyền lợi cho người tiêu dùng. Chiến lược này có thể đưa các doanh nghiệp phát triển nhảy vọt và tăng trưởng mạnh mẽ về giá trị.</p>', 0, 1, '2023-12-03 17:41:06', '2023-12-03 17:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`) VALUES
(1, 'Chưa có chuyên mục'),
(2, 'Tác giả nổi tiếng'),
(9, 'Giới thiệu sách');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sell_quantity` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `views` int(11) NOT NULL DEFAULT 0,
  `details` text NOT NULL,
  `short_description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `name`, `image`, `quantity`, `sell_quantity`, `price`, `sale_price`, `create_date`, `views`, `details`, `short_description`, `status`) VALUES
(1, 2, 'Redmi', 'quanao1.png', 100, 0, 199000, 159000, '2023-11-18 08:22:03', 0, '<p><strong>Nếu bạn vẫn luôn tin rằng chỉ những ai may mắn sở hữu trí thông minh bẩm sinh mới có thể thành công thì nhất định bạn phải đọc cuốn sách này.</strong></p><p>Có thể bạn chưa biết, “Mindset: Tâm lý học thành công” của Tiến sĩ tâm lý học Carol S. Dweck (ĐH Stanford) là một trong sáu quyển sách được tỷ phú Bill Gates review và khuyên đọc vào năm 2015. Không chỉ vậy, cuốn sách này cũng được Satya Nadella - vị CEO tài ba của Microsoft – xem như một \"hồi chuông đánh thức gã khổng lồ đang ngủ say\" bên trong con người ông. Và đây cũng chính là cuốn sách mà anh <strong>Hoàng N.Trung</strong> (Section Manager - VEU) đã “highly recommend” trong buổi Morning Speech về “Growth Mindset” ngày 28/4, bởi theo anh đây là <i><strong>“một cuốn sách cho ta hiểu rõ về mindset và vì sao mindset lại quan trọng đối với sự thành công của mỗi người”. </strong></i>Giờ cùng review về cuốn sách này nhé!</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Carol Dweck</strong></p>', 1),
(2, 2, 'I  Phone 14 Trắng 1TB', 'quanao2.png', 100, 0, 140000, 97000, '2023-11-18 10:15:54', 0, '<p>“Thuật Thao Túng – Góc Tối Ẩn Sau Mỗi Câu Nói” của tác giả <strong>Wladislaw Jachtchenko</strong> là một cuốn sách rất hữu ích để nâng cao kỹ năng và chiến lược giao tiếp của bạn. Cuốn sách cung cấp những kỹ năng và chiến lược giao tiếp cần thiết để đạt được sự thành công trong cuộc sống.</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Wladislaw Jachtchenko</strong></p>', 1),
(6, 2, 'Sam sung galaxy 2024', 'quanao3.png', 50, 0, 145000, 100000, '2023-11-20 22:23:49', 0, '', '', 1),
(14, 17, 'An Nhiên Giữa Những Thăng Trầm', 'an-nhien.jpg', 5, 0, 120000, 102000, '2023-11-20 22:54:49', 0, '<p>Ai trong đời chẳng từng một lần rơi vào tận cùng nỗi cô đơn, chợt thấy mình yếu đuối, mong manh quá đỗi; chẳng từng một lần chực gục ngã, buông xuôi trong bão giông cuộc đời; chẳng từng một lần chán nản trước thế sự đổi thay, lòng người nguội lạnh; chẳng từng một lần cảm thấy tìm chút bình an trong cuộc đời vô thường sao khó quá…</p><p>Thế rồi bất chợt một ngày kia, đâu đó trên đoạn đường trần xuất hiện những bài thơ chân tình, mộc mạc, ẩn chứa cả ân tình chuyển hóa kiếp nhân sinh:</p><p><i>Em có biết, tình yêu mầu nhiệm lắm!</i></p><p><i>Nếu bàn tay quen nắm, biết buông ra Cứ thầm lặng, yêu đâu cần vội vã</i></p><p><i>Giữa muôn loài thấy lại bóng hình ta…</i></p><p>Những bài văn mang đậm chất triết lý, chất chứa các bài học trị liệu nỗi khổ niềm đau của kiếp sống con người: <i>“Khi đến với cuộc đời này, ta chẳng mang theo thứ gì, khi rời đi, ta chỉ như một làn khói. Ngẫm lại đời người thật đơn giản vậy! Vinh hoa phú quý rồi cũng thoáng qua theo ngày tháng, ân ái tình thù rồi cũng trở về với cát bụi”.</i></p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Như Nhiên Thích Tánh Tuệ</strong></p>', 1),
(15, 17, 'Hành Trình Về Phương Đông', 'hanh-trinh-ve-phuong-dong.jpg', 50, 0, 118000, 95000, '2023-11-20 23:05:47', 0, '<p>Nếu là một mọt sách thì chắc hản chúng ta ít nhất đã từng nghe qua tên cuốn sách <i>Hành trình về phương Đông, </i>mình cũng vậy, cũng từng tò mò, từng có ham muốn mãnh liệt đọc cuốn sách được mệnh danh all time best selling book này, và quả thực trải nghiệm đọc cuốn sách này thật khó có thể truyền đạt bằng lời nói hay ngôn ngữ ký hiệu như chúng ta vẫn đang thấy ở đây. Nhưng quả thực mình vẫn muốn chia sẻ và để lại một chút gì đó cảm nhận của bản thân về những điều mình học được, mình suy ngẫm hay ít ra là cho rằng là những nội dung mà sách hướng tới.&nbsp;</p><p><strong>Về tác giả Baird Thomas Spalding</strong></p><p>Là một nhà văn tâm linh người Mĩ sống vào cuốn thế kỷ XVIII đầu thế kỷ IX, những thông tin vè quê quán của ông hiện nay vẫn còn nhiều tranh cãi. Ông là nhà văn tâm linh với tác phẩm nổi tiếng Life and Teachng of the Masters of the Far East (tạm dịch: Cuộc đời các chân sư phương Đông).</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Baird T Spalding</strong></p>', 1),
(16, 17, 'Huyền Thuật Và Các Đạo Sĩ Tây Tạng', 'huyen-thuat-tay-trang.jpg', 200, 0, 110000, 90000, '2023-11-20 23:09:13', 0, '<p><strong>HÀNH TRÌNH 12 NĂM TRONG ĐẤT PHẬT HUYỀN BÍ&nbsp;</strong></p><p>Gần 100 năm kể từ ngày ra mắt, Mystyquet et Magiciens du Tibet, cuốn sách vang dội châu Âu của nữ tác giả người Pháp Alexandra David – Neel, mới có dịp đến tay bạn đọc Việt Nam với tên gọi&nbsp;Huyền thuật và các đạo sĩ Tây Tạng. Cuốn sách là một thiên phóng sự đáng kinh ngạc của tác giả trong hành trình xuyên qua vùng đất Tây Tạng để khám phá các huyền thuật của đạo sĩ nơi đây.&nbsp;</p><p>Với ý định tiếp kiến Đức Đạt Lai Lạt Ma đời thứ 13 đang lánh nạn tại Ấn Độ (vì xung đột chính trị với triều đại Mãn Thanh), Alexandra David – Neel không ngờ các bí mật về huyền thuật Tây Tạng lẫn lời chỉ dẫn sâu xa của những vị đạo sư đã dẫn bà đi xa hơn dự định ban đầu của mình. Sau 12 năm rong ruổi khắp Tây Tạng, Alexandra đã để lại tập sách Huyền thuật và các đạo sĩ Tây Tạng như một công trình nghiên cứu quan trọng về vùng đất đầy bí ẩn này.</p><p>&nbsp;</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Alexandra David Neel</strong></p>', 1),
(17, 17, 'Muôn Kiếp Nhân Sinh', 'muonkiepnhansinh.jpg', 30, 0, 270000, 187000, '2023-11-20 23:12:48', 0, '<p><i><strong>Muôn kiếp nhân sinh</strong></i> là một bộ sách về <a href=\"https://vi.wikipedia.org/wiki/T%C3%A2m_linh\">tâm linh</a> do giáo sư John Vũ sáng tác dưới <a href=\"https://vi.wikipedia.org/wiki/B%C3%BAt_danh\">bút danh</a> Nguyên Phong và được công ty <a href=\"https://vi.wikipedia.org/wiki/First_News\">First News</a> phát hành năm 2020. Thông qua hành trình trải nghiệm quá khứ qua nhiều kiếp sống của một doanh nhân người Mỹ, tác phẩm bàn về <a href=\"https://vi.wikipedia.org/wiki/Quan_h%E1%BB%87_nh%C3%A2n_qu%E1%BA%A3\">luật nhân quả</a>, sự <a href=\"https://vi.wikipedia.org/wiki/Lu%C3%A2n_h%E1%BB%93i\">luân hồi</a>, <a href=\"https://vi.wikipedia.org/wiki/T%C3%A1i_sinh_(Ph%E1%BA%ADt_gi%C3%A1o)\">tái sinh</a> và cuộc sống của con người.</p><p>Sau thành công của tác phẩm phóng tác <i>Hành trình về phương Đông</i>, Nguyên Phong nhận được sự chú ý của độc giả Việt Nam qua những ấn phẩm dịch thuật về tâm linh. Điều này đã thu hút sự chú ý của Giám đốc công ty <a href=\"https://vi.wikipedia.org/wiki/First_News\">First News</a> Nguyễn Văn Phước, là tiền đề cho quá trình hợp tác lâu dài giữa Nguyên Phong với công ty này. Năm 2017, Nguyên Phong bắt tay vào sáng tác <i>Muôn kiếp nhân sinh</i>.</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Nguyên Phong</strong></p>', 1),
(18, 6, 'Thần thoại', 'than-thoai.jpg', 66, 0, 150000, 120000, '2023-11-20 23:20:33', 0, '<figure class=\"table\"><table><tbody><tr><td>Ngày</td><td>THÁNG</td></tr><tr><td>10</td><td>11</td></tr></tbody></table></figure>', '<ul><li>ngay sx: 20 /11/2003</li><li>name 20336</li></ul>', 1),
(20, 2, 'Chưa kịp lớn', 'chua-kip-lon.jpg', 55, 0, 200000, 160000, '2023-11-20 23:31:04', 0, '<h4>Chưa kịp lớn</h4>', '<ul><li>NXB: HCM</li><li>NXB: HCM</li></ul>', 1),
(21, 19, 'Nokia 110 5G', 'nokia2.jpg', 20, 0, 110000, 88000, '2023-11-23 09:54:06', 0, '', '', 1),
(23, 19, 'Nokia 105 4G', 'nokia1.jpg', 30, 0, 150000, 120000, '2023-11-23 12:19:16', 0, '', '<ul><li>Tác giả: Khoa Nguyễn</li><li>NXB: Kim Đồng 2023</li></ul>', 1),
(24, 6, 'Áo nữ', 'quanao1.png', 121, 2, 150000, 120000, '2023-11-23 12:20:16', 3, '<h4>Sách Thể xác tâm hồn</h4><p>&nbsp;</p>', '<ul><li>Tác giả: Khả Hi &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;NXB: Kim Đồng</li><li>Xuất xứ: Việt Nam &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Giấy phép: VN060503</li></ul>', 1),
(25, 16, 'Áo polo Nam', 'quanao8.png', 50, 0, 200000, 160000, '2023-11-23 16:21:03', 4, '<p><strong>Bắt đầu viết sách từ năm 22 tuổi nhưng hơn 20 năm sau, José Mauro de Vasconcelos mới nổi tiếng nhờ tiểu thuyết Cây cam ngọt của tôi chỉ dày hơn 200 trang.</strong></p><p>Khi được dịch và phát hành năm 2020 tại Việt Nam, cuốn sách của José Mauro de Vasconcelos đã trở thành hiện tượng thu hút độc giả, lọt vào danh sách bán chạy của nhà sách Nhã Nam.&nbsp;</p><p>Suốt 50 năm qua, cuốn sách đã đem lại sự nổi tiếng cho tác giả. Đây là một phần của bộ tứ tiểu thuyết do Mauro viết, tập trung vào các giai đoạn khác nhau trong cuộc đời của nhân vật chính, Zezé.</p><p>Trong lần đầu xuất bản vào năm 1968, sách bán được hơn 200.000 bản, trở thành tác phẩm bán chạy nhất trong lịch sử của Brazil. Tác phẩm được đưa vào chương trình giảng dạy của các trường tiểu học và dịch ra 19 thứ tiếng phát hành ở Mỹ, châu Âu, châu Á.&nbsp;</p><p>Các nhà làm phim cũng chuyển thể <i>Cây cam ngọt của tôi </i>thành phim truyền hình dài tập và phim điện ảnh. Sau khi qua đời năm 1984, José Mauro de Vasconcelos được đặt tên cho nhiều thư viện và hiệp hội văn hóa trên khắp Brazil.&nbsp;</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Vasconcelos</strong></p>', 1),
(26, 2, 'Quần Jeans nam', 'quanao9.png', 49, 1, 380000, 200000, '2023-11-23 16:23:55', 14, '<p>Hai số phận (có tên gốc tiếng Anh là: Kane and Abel) là một cuốn tiểu thuyết được sáng tác vào năm 1979 bởi nhà văn người Anh <strong>Jeffrey Archer</strong>. Tựa đề Kane and Abel dựa theo câu chuyện của anh em: Cain và Abel trong Kinh Thánh Cựu Ước.</p><p>Nội dung tác phẩm nói về hai số phận của hai người đàn ông khác nhau có tên Kane &amp; Abel, họ có lẽ sẽ có gì liên quan đến nhau ngoại trừ việc cùng được sinh ra cùng giờ, cùng ngày, cùng tháng và cùng năm. Tất nhiên, hai số phận của họ lại rẽ theo hai hướng hoàn toàn khác biệt nhau.&nbsp;</p>', '<p>Nhà xuất bản: <strong>Kim đồng&nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tác giả: <strong>Jeffrey Archer</strong></p>', 1),
(27, 4, 'Áo thun nam', 'quanao10.png', 29, 1, 250000, 180000, '2023-11-23 20:31:17', 1, '<p>Là câu chuyện về cậu bé Tokunaga Akihiro, học sinh lớp 2, chuyển từ Hiroshima về Saga để sống cùng bà ngoại (và dựa trên câu chuyện có thật của chính tác giả). Luôn có những cú đẩy quan trọng trong cuộc đời mỗi người, và \"cú đẩy\" (theo cả nghĩa đen lẫn nghĩa bóng) với Akihiro ở sân ga Hiroshima hôm ấy đã khiến cuộc đời cậu thay đổi hoàn toàn.</p><p>&nbsp;</p>', '<p>Nhà xuất bản: <strong>Kim đồng&nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tác giả: <strong>Yoshichi Shimada</strong></p>', 1),
(28, 16, 'Áo polo Nam', 'quanao8.png', 499, 1, 200000, 180000, '2023-11-29 20:36:43', 13, '<p>Think and Grow Rich (tạm dịch: Nghĩ Giàu Làm Giàu hoặc Suy Nghĩ và Làm Giàu) là cuốn sách được viết bởi <strong>Napoleon Hill</strong> vào năm 1937 và được quảng bá là một cuốn sách giúp phát triển cá nhân và tự lực bán chạy nhất thế giới(tham khảo tại Danh sách sách bán chạy nhất) .</p><p>Tất cả những bí mật làm giàu được Napoleon Hill chuyển tải thông qua 13 nguyên tắc quan trọng được ông đúc kết xuyên suốt gần 30 năm, 13 nguyên tắc này như một kim chỉ nam để mở toang cánh cửa giúp chúng ta đạt được những mục tiêu lớn lao của cuộc đời mình.</p><p>Đây cũng là cuốn sách đầu tiên đưa ra một triết lý đầy đủ và toàn diện về thành công của cá nhân, đồng thời cung cấp những phương pháp để tạo một ý thức thành công cũng như lập kế hoạch chi tiết để đạt được thành công đó. Các bí quyết thành công được đề cập trong cuốn sách này có thể được đúc kết ngắn gọn: tất cả bắt nguồn từ cách nghĩ. Do đó, cuốn sách này không chỉ thay đổi những điều bạn nghĩ mà còn thay đổi cả cách nghĩ của bạn; nó không dừng lại ở việc chỉ ra bạn phải làm gì mà còn cho bạn biết phải làm điều đó như thế nào để đạt được khát vọng của mình.</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Napoleon Hill</strong></p>', 1),
(29, 4, 'Áo Thun Đông Nam Giữ Nhiệt', 'quanao7.png', 0, 0, 80000, 50000, '2023-12-02 20:54:53', 11, '<h4>Giới thiệu sách “ Nhà giả kim - Tác giả: Paulo Coelho”</h4><p>&nbsp;</p><p>“Nhà Giả Kim” là một trong những tác phẩm hay nhất của tác giả <strong>Paulo Coelho</strong>. Cuốn sách bắt đầu bằng câu chuyện xoay quanh cậu bé chăn cừu có tên Santiago trong chuyến hành trình đi tìm kho báu của mình.</p><p>Mỗi người đều có những ước mơ và hoài bão của riêng mình. Đó có thể là những khát khao to lớn, vĩ đại hoặc là những mục tiêu tưởng chừng đơn giản, gần gũi nhưng khó có thể chinh phục. Và đặc biệt với các bạn trẻ hiện nay vẫn đang lạc hướng, hoang mang giữa dòng chảy cuộc đời bất tận, đầy cạm bẫy thử thách. Chính vì thế, hôm nay Thư viện UIT sẽ giới thiệu đến các bạn một quyển sách gối đầu giường của hàng triệu người trên thế giới và còn được mệnh danh là quyển sách bán chạy chỉ sau kinh thánh - Nhà giả kim của tác giả Paulo Coelho.</p><p>Đôi nét về tác giả Paulo Coelho, ông sinh ngày 24 tháng 8 năm 1947 ở thành phố xinh đẹp Rio de Janeiro, Brazil. Từ nhỏ, ông đã có ước mơ trở thành nhà văn nhưng bị bố mẹ ngăn cản nên ông đã theo lời bố mẹ học trường luật tại quê nhà. Những áp đặt của gia đình và xã hội lúc bấy giờ đã khiến Paulo Coelho quyết định bỏ học và bắt đầu đi du lịch. Trước khi chính thức theo đuổi sự nghiệp viết lách, ông đã làm qua rất nhiều nghề như soạn lời cho các ca sĩ, làm báo, diễn viên và giám đốc nhà hát.</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Paulo Coelho</strong></p>', 1),
(30, 4, 'Áo Thu Đông Nữ Giữ Nhiệt Cổ 3cm', 'quanao6.png', 47, 3, 120000, 102000, '2023-12-02 20:56:21', 13, '<p><i><strong>Ngàn mặt trời rực rỡ</strong></i> là <a href=\"https://vi.wikipedia.org/wiki/Ti%E1%BB%83u_thuy%E1%BA%BFt\">tiểu thuyết</a> thứ hai phát hành năm <a href=\"https://vi.wikipedia.org/wiki/2007\">2007</a> của nhà văn <a href=\"https://vi.wikipedia.org/wiki/Khaled_Hosseini\">Khaled Hosseini</a>, một người <a href=\"https://vi.wikipedia.org/wiki/M%C4%A9\">Mĩ</a> gốc <a href=\"https://vi.wikipedia.org/wiki/Afghanistan\">Afghanistan</a>. Cuốn sách nhanh chóng trở thành tác phẩm bán chạy, tiếp nối sự thành công của tiểu thuyết <a href=\"https://vi.wikipedia.org/wiki/Ng%C6%B0%E1%BB%9Di_%C4%91ua_di%E1%BB%81u\"><i>Người đua diều</i></a> năm <a href=\"https://vi.wikipedia.org/wiki/2003\">2003</a> của ông. Cả hai cuốn tiểu thuyết gộp lại bán được 38 triệu bản trên toàn thế giới. Năm <a href=\"https://vi.wikipedia.org/wiki/2010\">2010</a>, <i>Ngàn mặt trời rực rỡ</i> được dịch sang <a href=\"https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Vi%E1%BB%87t\">tiếng Việt</a>.</p><p>Thời gian trong tiểu thuyết trải dài hơn 40 năm từ thập niên 60 thế kỷ 20 đến năm 2003. Bố cục tiểu thuyết chia làm bốn phần: Phần 1 tập trung miêu tả Mariam, phần 2 và 4 miêu tả Laila và phần 3 mô tả mối quan hệ giữa hai người phụ nữ.</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Khaled Hosseini</strong></p>', 1),
(31, 6, 'I PHONE 14', 'quanao5.png', 45, 5, 180000, 126000, '2023-12-02 20:59:06', 15, '<p><i><strong>Đất rừng phương Nam</strong></i> (tựa <a href=\"https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Anh\">tiếng Anh</a>: <i><strong>Song of the South</strong></i>) là một bộ phim điện ảnh chuyển thể thành sách năm 2023</p><p>An là một cậu bé sinh sống ở đô thành của khu vực <a href=\"https://vi.wikipedia.org/wiki/Nam_K%E1%BB%B3_L%E1%BB%A5c_t%E1%BB%89nh\">Nam Kỳ Lục tỉnh</a> cùng với mẹ của mình vào những năm 1920&nbsp;– 1930. Ba của An là Hai Thành, một người đi theo <a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Minh\">cách mạng</a> với mong muốn đánh đuổi thực dân Pháp ra khỏi Việt Nam. Khi danh tính của Hai Thành bị bại lộ, mẹ của An đã dẫn cậu rời khỏi đô thành dưới sự chỉ dẫn của thầy giáo Bảy. Trên đường đi thì một cuộc <a href=\"https://vi.wikipedia.org/wiki/Bi%E1%BB%83u_t%C3%ACnh\">biểu tình</a> của quần chúng nhân dân đã diễn ra khi Võ Tòng – một thành viên của tổ chức Nghĩa quân Lục tỉnh – bị bắt giữ. Tại đây, một vụ xô xát đã diễn ra giữa binh lính Pháp và những người biểu tình, dẫn đến việc mẹ của An vô tình đã bị lính Pháp bắn chết. Út Lục Lâm – một tên trộm trong thời chiến đã vô tình thấy cảnh tượng này nên hắn đã quyết định hỗ trợ An rời khỏi đó.</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Tô Ánh Nguyệt</strong></p>', 1),
(32, 16, 'Áo trẻ em', 'quanao4.png', 8, 2, 120000, 100000, '2023-12-02 21:00:48', 30, '<p>TikTok là một ứng dụng mạng xã hội chuyên tạo và chia sẻ video ngắn dành cho giới trẻ. Người dùng có thể quay một video ngắn từ 15 giây, sau đó chỉnh sửa, thêm nhạc, chèn hiệu ứng… thông qua phần mềm này để tạo nên một video hoàn chỉnh cho chính mình. Không ít cá nhân thu được lợi tức trên TikTok. Ngoài ra, cũng có không ít công ty cũng xem TikTok như một địa điểm marketing mới của mình.</p><p>Nội dung sách chú ý đến mọi khía cạnh của nền tảng này kèm ví dụ đầy đủ, bắt đầu từ khái niệm TikTok đến kỹ xảo, thao tác thực tế cần có để có thể trở thành một ngôi sao trên bầu trời Tiktok với 8 nội dung đáng lưu ý:</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Giang Trung</strong></p>', 1),
(34, 4, 'Nguyễn Lê Anh Khoa', 'ExampleFile.pdf', 5, 0, 123555, 55, '2024-03-31 22:24:56', 2, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL COMMENT 'Tên đăng nhập',
  `password` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL COMMENT 'Họ tên',
  `image` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 là khách hàng 1 là nhân viên',
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `full_name`, `image`, `email`, `phone`, `address`, `role`, `active`) VALUES
(6, 'khoanguyen', '$2y$10$YO9fd9Wdhed5mYcUFc5eTe5o7zrasZtl2x7Wt4J03im0NWaRisesu', 'Nguyễn Tuấn', 'avatar_it.png', 'abc@gmail.com', '0909155555', 'Ninh Kiều, Cần Thơ', 0, 1),
(7, 'khahi', '$2y$10$sF.yA6lAhvCE1vhwffwijuzA3JMoVhgnxkk.FdqXR4HVHlHdnXHzK', 'Lê Châu Khả Hi', 'user-default.png', 'hilckpc524@fpt.edu.vn', '0336216654', 'Kiên Giang', 0, 1),
(8, 'admin', '$2y$10$Cm.2KiZ85WRGUTBk8vhMaOIQt46A53HKuzPfZh2jS.fdZzAr33dTi', 'Admin', 'user-default.png', 'khoacn03@gmail.com', '0336216559', 'Cần Thơ', 1, 1),
(9, 'tranvana', '$2y$10$ts748iCUjwA5HpQBMLuROuAXa70addsKmfkMh9rYIw/PjhxLLwH8i', 'Trần Văn A', 'user-default.png', 'tranvana@gmail.com', '0909135969', 'Cái Răng, Cần Thơ', 0, 1),
(10, 'haohao', '$2y$10$gcBHpzElBGDkOv5EEzJFhuoireNk2HsaloJQLy2KHvzGqx6MIyYku', 'Mai Hảo Hảo', 'user-default.png', 'haomhpc07316@fpt.edu.vn', '0909135985', 'Ninh Kiều, Cần Thơ', 0, 1),
(11, 'tuankiet', '$2y$10$ENy4z0Infjac7VjlKYp2A.gqCBwc8N01tKGLT9A3buGdVoyd7sXnK', 'Đặng tuấn Kiệt', 'user-default.png', 'kietdtpc06764@fpt.edu.vn', '0909006764', 'Cần Thơ', 0, 1),
(12, 'khoanguyen111', '$2y$10$ZPAY2O7ntfQ5/Huv3dUAIuY4qHuPD/DpRxiw11TurgYr3hCrWfnv2', 'Nguyễn Lê Anh Khoa', 'khoanguyen.jpg', 'khoanlapc1234@gmail.com', '0336216546', 'Cần Thơ', 0, 1),
(13, 'khoanguyen001', '$2y$10$ptSvfsaT78h4LdZQNCrKdemlC.AqyZ/q5cudTk9/FKcbe6TtJDJAC', 'Nguyễn Lê Anh Khoa', 'user-default.png', 'khoanla113@gmail.com', '0336216555', 'Can tho', 0, 1),
(15, 'toan', '$2y$10$rwdD7UlOPC2XUc4d3nJ/nO0THzotlhmrKekcbBynHxTqpOmFlN79a', 'Toàn', 'user-default.png', 'toan@gmail.com', '0336256555', 'Đại Học Cửu Long', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sell` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`id`, `name`, `price`, `quantity`, `sell`, `created_at`) VALUES
(12, 'Áo  nam', 123555, 2, 0, '2024-10-10 20:27:13'),
(13, 'Áo Polo PC01', 123555, 50, 0, '2024-10-10 20:27:34'),
(14, 'Quần thun', 200000, 0, 0, '2024-10-10 20:27:56'),
(15, 'Sơ mi trắng', 120000, 90, 0, '2024-10-10 20:28:17'),
(16, 'Áo thun trẻ em', 50000, 70, 0, '2024-10-10 20:54:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderdetails_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_category` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderdetails_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;