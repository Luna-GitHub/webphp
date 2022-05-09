-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2020 lúc 08:08 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `Lona`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `level` tinyint(4) DEFAULT 1,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `address`, `email`, `password`, `phone`, `status`, `level`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Hoang Phuc Loan', 'Da Nang', 'ongcunonc249@gmail.com', '202cb962ac59075b964b07152d234b70', '0394253841', 1, 1, NULL, '2019-12-20 13:01:15', '2019-12-20 13:01:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `home` tinyint(4) DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `images`, `banner`, `home`, `status`, `created_at`, `updated_at`) VALUES
(15, 'Nữ', 'nu', NULL, NULL, 1, 1, '2020-07-01 01:30:15', '2020-07-01 01:30:15'),
(16, 'Nam', 'nam', NULL, NULL, 1, 1, '2020-07-01 01:30:16', '2020-07-01 01:30:16'),
(17, 'Trẻ Em', 'tre-em', NULL, NULL, 1, 1, '2020-07-01 01:50:37', '2020-07-01 01:50:37'),
(18, 'Giày & Dép', 'giay-&-dep', NULL, NULL, 1, 1, '2020-07-01 02:24:06', '2020-07-01 02:24:06'),
(19, 'Mũ & Kính', 'mu-&-kinh', NULL, NULL, 1, 1, '2020-07-01 02:35:07', '2020-07-01 02:35:07'),
(21, 'Túi Xách', 'tui-xach', NULL, NULL, 1, 1, '2020-07-01 02:35:21', '2020-07-01 02:35:21'),
(22, 'Phụ Kiện', 'phu-kien', NULL, NULL, 1, 1, '2020-07-01 02:35:36', '2020-07-01 02:35:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `content`) VALUES
(4, 'ad', 'ongcunonc249@gmail.com', '            				ad'),
(5, 'duc', 'duc@gmail.com', 'hay\r\n            				'),
(6, 'duc', 'duc@gmail.com', 'hay\r\n            				'),
(7, 'duc', 'duc@gmail.com', '            	adas			'),
(8, 'duc', 'duc@gmail.com', '            			adssad	');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` tinyint(4) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `transaction_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(31, 25, 92, 1, 67500, '2020-07-01 03:51:26', '2020-07-01 03:51:26'),
(32, 26, 107, 1, 27000, '2020-07-01 05:41:31', '2020-07-01 05:41:31'),
(33, 27, 83, 1, 42750, '2020-07-26 03:54:02', '2020-07-26 03:54:02'),
(34, 28, 78, 1, 42750, '2020-07-26 03:56:39', '2020-07-26 03:56:39'),
(35, 29, 77, 1, 47500, '2020-07-26 03:57:38', '2020-07-26 03:57:38'),
(38, 43, 81, 1, 47500, '2020-07-26 10:37:50', '2020-07-26 10:37:50'),
(39, 43, 77, 1, 47500, '2020-07-26 10:37:50', '2020-07-26 10:37:50'),
(40, 43, 78, 2, 42750, '2020-07-26 10:37:50', '2020-07-26 10:37:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT 0,
  `thunbar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) NOT NULL DEFAULT 0,
  `head` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `hot` tinyint(4) DEFAULT 0,
  `pay` int(11) DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `price`, `sale`, `thunbar`, `category_id`, `content`, `number`, `head`, `view`, `hot`, `pay`, `status`, `created_at`, `updated_at`) VALUES
(77, 'Đầm Lụa Phối Cành Hoa', 'dam-lua-phoi-canh-hoa', 180000, 5, 'nu1.jpg', 15, 'Đầm dáng suông, form Drop waist với phần lưng dài và đuôi nhấn tầng hơi xòe. Dáng áo cổ tròn, tay áo được xếp chồng từ 2 layer. Dọc thân đầm là tạo hình cánh hoa được đính kết nổi.', 100, 0, 0, 0, 0, 1, '2020-07-01 01:27:41', '2020-07-01 01:09:43'),
(78, 'Đầm Lụa Xếp Ly Nhỏ', 'dam-lua-xep-ly-nho', 200000, 5, 'nu2.jpg', 15, 'Đầm lụa được thiết kế dựa trên nhiều ly nhỏ xếp dọc thân đầm và liên tiếp nhau. Phần eo được cố định bằng đai trùng màu nền. Đầm có độ nhẹ, bay bổng và bắt sáng tự nhiên.', 200, 0, 0, 0, 0, 1, '2020-07-01 01:15:28', '2020-07-01 01:15:28'),
(80, 'Áo Sơ Mi Lục Phối Bèo', 'ao-so-mi-lua-phoi-beo', 220000, 5, 'nu3.jpg', 15, 'Áo dáng sơ với cổ đức cơ bản. Thiết kế không tay, dáng suông. Dọc viền khuy là hàng bèo nhún bản lớn. Chất liệu chính là lụa cao cấp và voan mềm mịn.', 120, 0, 0, 0, 0, 1, '2020-07-01 01:32:01', '2020-07-01 01:32:01'),
(81, 'Đầm Lụa Hoa Đậu Thơm', 'dam-lua-hoa-dau-thom', 190000, 5, 'nu4.jpg', 15, 'Đầm lụa dáng Maxi, độ dài qua mắt cá chân. Phần eo được nhấn chun và xếp nếp nhỏ. Thân áo không tay, có 2 dây mảnh, cổ ngang có độ rủ tự nhiên. Tùng váy dài và rộng, được nhấn một tầng chun. Họa tiết hoa đậu thơm tỉ mỉ, tinh xảo.', 300, 0, 0, 0, 0, 1, '2020-07-01 01:33:52', '2020-07-01 01:33:52'),
(82, 'Quần Cài Đai Lệch', 'quan-cai-dai-lech', 150000, 5, 'nu5.jpg', 15, 'Quần dáng xuông, ống đứng. Thiết kế eo dạng cài với đai lệch và móc kim loại màu gold. Phía trước có khóa kéo. Hai bên có hai túi xéo.', 50, 0, 0, 0, 0, 1, '2020-07-01 01:35:51', '2020-07-01 01:35:51'),
(83, 'Đầm Lụa Hoa Trễ Vai', 'dam-lua-hoa-tre-vai', 145000, 5, 'nu6.jpg', 15, 'Đầm dạ hội Senora. Thiết kế không tay cùng 2 dây và trễ vai. Thân trên bao gồm 2 lớp trễ vai uốn lượn xếp tầng. Eo váy được nhấn cao. Tùng váy xòe và bồng tự nhiên. Họa tiết hoa trải dài toàn bộ thân váy. Đằng sau có khóa kéo.', 99, 0, 0, 0, 1, 1, '2020-07-26 04:15:56', '2020-07-01 01:36:48'),
(84, 'Áo Sơ Mi Kẻ', 'ao-so-mi-ke', 150000, 5, 'nam1.jpg', 16, 'Áo sơ mi cổ đức, tay ngắn may gấu. Vải kiểu kẻ. Cài bằng hàng khuy phía trước.', 45, 0, 0, 0, 0, 1, '2020-07-01 01:40:10', '2020-07-01 01:40:10'),
(85, 'Áo Thun Nam Hoạ Tiết', 'ao-thun-nam-hoa-tiet', 120000, 5, 'nam2.jpg', 16, 'Áo thun họa tiết cổ tròn, tay ngắn. Viền bằng màu trơn tạo điểm nhấn. Dáng áo xuông, bên ngoài lớp in họa tiết trên nền chất thun co giãn.', 100, 0, 0, 0, 0, 1, '2020-07-01 01:44:20', '2020-07-01 01:44:20'),
(86, 'Quần Lửng 2 Túi Nắp', 'quan-lung-2-tui-nap', 140000, 5, 'nam3.jpg', 16, 'Quần lửng khaki ngang gối. Có túi phía trước và 1 túi có nắp phía sau. Đáp túi vuông có nắp hai bên ống quần. Cài phía trước bằng khóa kéo và khuy.', 150, 0, 0, 0, 0, 1, '2020-07-01 01:52:50', '2020-07-01 01:52:50'),
(87, 'Áo Sơ Mi Trắng SLIMFIT', 'ao-so-mi-trang-slimfit', 120000, 5, 'nam4.jpg', 16, 'Áo sơ mi kẻ Slim fit, cổ đức. Tay áo ngắn có gấu. Có 1 túi vuông phía trước. Cài bằng hàng khuy phía trước. Vải kate mềm mịn, được dệt đan sợi dưới nền vải.', 100, 0, 0, 0, 0, 1, '2020-07-01 01:55:35', '2020-07-01 01:55:35'),
(88, 'Áo POLO Cổ Đức Kẻ', 'ao-polo-co-duc-ke', 150000, 5, 'nam5.jpg', 16, 'Chất liệu vải pique dệt - cotton sợi dệt mặt lưới, tạo ra được độ mềm và thoáng cho những người ưa vận động hay chơi thể thao, độ thấm hút mồ hôi tốt và có khả năng co giãn 4 chiều, đem đến cảm giác vô cùng thoải mái, dễ chịu khi sử dụng.', 100, 0, 0, 0, 0, 1, '2020-07-01 01:59:41', '2020-07-01 01:59:41'),
(89, 'Đầm Lụa Nhấn Bèo', 'dam-lua-nhan-beo', 160000, 5, 'treem1.jpg', 17, 'Đầm gồm 2 lớp bằng lụa, tay cánh dơi ngắn 1 lớp. Cổ áo dáng tròn có dây buộc. Dọc thân đầm được nhấn bèo và xếp layer chồng nhau. Thiết kế đầm từ lụa đem đến độ bay tự nhiên, chất vải tôn lên trọn vẹn màu sắc rực rỡ của họa tiết hoa.', 100, 0, 0, 0, 0, 1, '2020-07-01 02:01:04', '2020-07-01 02:01:04'),
(90, 'Áo Thun Con Vật (Kèm Quần)', 'ao-thun-con-vat-(kem-quan)', 170000, 5, 'treem2.jpg', 17, 'Áo thun cổ tròn, tay ngắn. Dáng áo xuông. In hình các con vật tạo điểm nhấn. Quần đùi cạp chun co giãn đi kèm, có 2 túi chéo.', 250, 0, 0, 0, 0, 1, '2020-07-01 02:02:48', '2020-07-01 02:02:48'),
(91, 'Áo Thun Sư Tử', 'ao-thun-su-tu', 100000, 5, 'treem3.jpg', 17, 'Áo thun bé trai trơn, cổ tròn, tay cộc. Phía trước áo được in hình sư tử dễ thương. Kỹ thuật in nổi sắc nét, hút mắt.', 90, 0, 0, 0, 0, 1, '2020-07-01 02:05:16', '2020-07-01 02:05:16'),
(92, 'Set Thun Màu Sắc', 'set-thun-mau-sac', 120000, 5, 'treem4.jpg', 17, 'Bộ thun gồm áo và quần ngắn. Chất liệu mềm mại, thấm hút mồ hôi tốt. Áo được in hình ngộ nghĩnh phía trước. Thiết kế quần bao gồm họa tiết bắt mắt. Cạp quần chun có dãn tốt, phía trước có túi chéo.', 49, 0, 0, 0, 1, 1, '2020-07-01 03:51:30', '2020-07-01 02:26:59'),
(93, 'Bộ Bảo Hộ Phòng Dịch Trẻ Em', 'bo-ba-ho-phong-dich-tre-em', 50000, 5, 'treem5.jpg', 17, 'Áo liền quần, áo có dây kéo khóa, cổ tay và cổ chân bo chun. Set đồ bảo hộ dùng một lần.', 25, 0, 0, 0, 0, 1, '2020-07-01 02:29:06', '2020-07-01 02:29:06'),
(94, 'Giày Cao Gót Mũi Nhọn', 'giay-cao-got-mui-nhon', 150000, 5, 'giay1.jpg', 18, 'Giày mũi nhọn, Gót nhỏ cao 6cm. 1 dây quai ngang móc cài. Chất liệu da PU tổng hợp cao cấp nhập khẩu có độ bóng nhẹ, mềm mịn, chống nấm mốc, bám bụi hiệu quả.', 20, 0, 0, 0, 0, 1, '2020-07-01 02:31:37', '2020-07-01 02:31:37'),
(95, 'Giày Gót Vuông', 'giay-got-vuong', 160000, 5, 'giay2.jpg', 18, 'Giày cao gót mũi bít thanh lịch hiện đại. Gót vuông, chỉ cao 5cm kèm rãnh chống trượt giúp nàng bước đi an toàn. Thiết kế tối giản nên rất dễ phối với mọi loại trang phục.', 30, 0, 0, 0, 0, 1, '2020-07-01 02:33:33', '2020-07-01 02:33:33'),
(96, 'Dép Quai Ngang Nam Da Bò Cao Cấp', 'dep-quai-ngang-nam-da-bo-cao-cap', 150000, 5, 'giay3.jpg', 18, 'Dép xăng đan nam có kiểu dáng đơn giản để bạn dễ dàng mang vào chân nhanh chóng và tiện lợi. Dễ dàng kết hợp với nhiều loại trang phục như quần jeans, quần kaki, quần vải đũi... để xuống phố cùng bạn bè.', 500, 0, 0, 0, 0, 1, '2020-07-01 02:39:06', '2020-07-01 02:39:06'),
(97, 'Giày Thể Thao Phối Da Lộn', 'giay-the-thao-phoi-da-lon', 120000, 5, 'giay4.jpg', 18, 'Giày thể thao cho bé trai được phối màu cá tính thích hợp cho con diện nhiều kiểu quần áo thời trang khác nhau theo phong cách năng động, khỏe khoắn.', 400, 0, 0, 0, 0, 1, '2020-07-01 02:41:25', '2020-07-01 02:41:25'),
(98, 'Kính Râm Thời Trang Cao Cấp', 'kinh-ram-thoi-trang-cao-cap', 150000, 5, 'kinh1.jpg', 19, 'tròng kính phân cực Polarized bền bỉ có khả năng chống tia cực tím UV400 gây hại cho mắt, chống chói lóa, tạo hình ảnh rõ nét và tăng độ tương phản màu sắc', 400, 0, 0, 0, 0, 1, '2020-07-01 02:42:37', '2020-07-01 02:42:37'),
(99, 'Mũ Rộng Vành', 'mu-rong-vanh', 100000, 5, 'mu1.jpg', 19, 'Mũ rộng vành bé gái không chỉ chống nắng, dễ dàng mang theo mà còn vô cùng dễ thương cho bé.', 300, 0, 0, 0, 0, 1, '2020-07-01 02:43:45', '2020-07-01 02:43:45'),
(100, 'Mũ Len', 'mu-len', 80000, 5, 'mu2.jpg', 19, 'Mũ len trẻ em có cục lông trang trí được dệt từ chất vải len mềm mại, với kiểu dáng thời trang, là một trong những phụ kiện được nhiều mẹ sắm cho bé.', 200, 0, 0, 0, 0, 1, '2020-07-01 02:44:37', '2020-07-01 02:44:37'),
(101, 'Túi Xách Dây Đan', 'tui-xach-day-dan', 220000, 5, 'tui1.jpg', 21, 'Thiết kế đứng phom, Dáng không nắp cài bằng dây kéo khóa. Dây đeo da đôi đi kèm. Bên trong lót vải. Không có nắp. Thiết kế kiểu đan kiểu.', 50, 0, 0, 0, 0, 1, '2020-07-01 02:45:55', '2020-07-01 02:45:55'),
(102, 'Túi Da 1 Quai', 'tui-da-1-quai', 200000, 5, 'tui2.jpg', 21, 'Túi da 1 quai dài (có thể xách). Mặt trước có khóa cài in logo IVY moda. Túi 1 ngăn chính bên trong nắp. Ngăn chính trong nắp có dây kéo khóa (bên trong có 2 ngăn phụ). Đế có chân 4 đinh giúp đứng vững túi.', 50, 0, 0, 0, 0, 1, '2020-07-01 02:47:48', '2020-07-01 02:47:48'),
(103, 'BALO Da Size Vừa', 'balo-da-size-vua', 180000, 5, 'tui3.jpg', 21, 'Balo da, mặt trước phần trên đan kiểu - phần dưới trang trí họa tiết da động vật. Đóng mở bằng khóa kéo kim loại màu vàng. Có một quai cầm tay và hai quai đeo vai cùng màu có thể điều chỉnh ở phía sau.', 50, 0, 0, 0, 0, 1, '2020-07-01 02:49:12', '2020-07-01 02:49:12'),
(104, 'Khăn', 'khan', 40000, 5, 'phukien1.jpg', 22, 'Khăn lụa tơ tắm chất liệu lụa cao. Sản phẩm in họa tiết nổi bật cùng những đường viền may vô cùng tỉ mỉ.', 50, 0, 0, 0, 0, 1, '2020-07-01 02:50:57', '2020-07-01 02:50:57'),
(105, 'Tất', 'tat', 20000, 5, 'phukien2.jpg', 22, 'Tất trơn cotton, dáng ngắn, phù hợp mix cùng giày cổ thấp.', 100, 0, 0, 0, 0, 1, '2020-07-01 02:51:30', '2020-07-01 02:51:30'),
(106, 'Thắt Lưng Da', 'that-lung-da', 80000, 5, 'phukien3.jpg', 22, 'Thắt lưng bằng da. Có Khóa cài bằng kim loại. Mặt khóa trượt linh hoạt với các size quần. Dễ dàng kết hợp với các trang phục công sở, lịch sự. Đường chỉ may tinh tế ẩn phía trong, ray nhựa cứng bền bỉ.', 50, 0, 0, 0, 0, 1, '2020-07-01 02:56:34', '2020-07-01 02:56:34'),
(107, 'Cà Vạt Hoạ Tiết', 'ca-vat-hoa-tiet', 100000, 5, 'phukien4.jpg', 22, 'Họa tiết thanh lịch màu sắc đa dạng, Cà vạt đẹp sẽ là phụ kiện giúp các quý ông nổi bật đầy nam tính. Chất liệu lụa cao cấp mềm mịn tạo cảm giác thoải mái khi sử dụng.', 39, 0, 0, 0, 1, 1, '2020-07-01 05:41:35', '2020-07-01 02:58:35'),
(108, 'Thắt Lưng Nữ', 'that-lung-nu', 50000, 5, 'phukien5.jpg', 22, 'Thắt lưng bằng da. Có đai luồn dây bằng da và khóa cài bằng kim loại.', 50, 0, 0, 0, 0, 1, '2020-07-01 03:00:24', '2020-07-01 03:00:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `nameuser` varchar(100) DEFAULT NULL,
  `phoneuser` char(15) DEFAULT NULL,
  `adduser` varchar(100) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `nameuser`, `phoneuser`, `adduser`, `amount`, `users_id`, `note`, `status`, `created_at`, `updated_at`) VALUES
(41, NULL, NULL, NULL, 144638, 17, '', 0, '2020-07-26 10:33:40', '2020-07-26 10:33:40'),
(42, NULL, NULL, NULL, 189525, 17, '', 0, '2020-07-26 10:36:34', '2020-07-26 10:36:34'),
(43, NULL, NULL, NULL, 189525, 17, '', 0, '2020-07-26 10:37:50', '2020-07-26 10:37:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `avatar`, `status`, `token`, `created_at`, `updated_at`) VALUES
(17, 'duc', 'duc@gmail.com', '202cb962ac59075b964b07152d234b70', '012349123', 'da nang', NULL, 1, NULL, '2020-07-01 05:41:03', '2020-07-01 05:41:03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`) USING BTREE,
  ADD KEY `product_id` (`product_id`) USING BTREE;

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
