-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 06, 2019 lúc 02:37 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phattriendanentang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'Ao Nam', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_dep_pro`
--

CREATE TABLE `order_dep_pro` (
  `order_dep_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_dep_qty` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_dep_pro`
--

INSERT INTO `order_dep_pro` (`order_dep_id`, `order_id`, `order_dep_qty`, `product_id`) VALUES
(64, 1, 3, 3),
(65, 26, 3, 3),
(66, 27, 3, 3),
(67, 28, 3, 3),
(68, 29, 4, 4),
(69, 30, 2, 2),
(70, 31, 1, 1),
(71, 32, 2, 2),
(72, 33, 1, 1),
(73, 34, 3, 3),
(74, 35, 3, 3),
(75, 1, 3, 3),
(76, 37, 3, 3),
(77, 38, 3, 3),
(78, 39, 1, 1),
(79, 40, 1, 1),
(80, 41, 1, 1),
(81, 42, 1, 1),
(82, 43, 1, 1),
(83, 44, 1, 1),
(84, 45, 1, 1),
(85, 46, 9, 9),
(86, 47, 9, 9),
(87, 48, 9, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_pro`
--

CREATE TABLE `order_pro` (
  `order_id` int(11) NOT NULL,
  `order_dep_id` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `order_create_date` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_pro`
--

INSERT INTO `order_pro` (`order_id`, `order_dep_id`, `order_total`, `order_create_date`, `user_id`) VALUES
(36, 0, 250, '2019-10-05', 0),
(37, 0, 250, '2019-10-05', 0),
(38, 0, 250, '2019-10-05', 1),
(39, 0, 82400000, '2019-10-05', 1),
(40, 0, 82400000, '2019-10-05', 1),
(41, 0, 82400000, '2019-10-05', 1),
(42, 0, 82400000, '2019-10-05', 1),
(43, 0, 82400000, '2019-10-05', 1),
(44, 0, 400000, '2019-10-05', 1),
(45, 0, 200000, '2019-10-05', 1),
(46, 0, 200000, '2019-10-05', 1),
(47, 0, 800000, '2019-10-05', 1),
(48, 0, 525000, '2019-10-05', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_size` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_color` varchar(100) NOT NULL,
  `product_des` varchar(200) NOT NULL,
  `product_content` text NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `kho` varchar(255) NOT NULL,
  `thuonghieu` varchar(255) NOT NULL,
  `chatlieu` varchar(255) NOT NULL,
  `phongcach` varchar(255) NOT NULL,
  `loai` varchar(255) NOT NULL,
  `noigui` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `category_id`, `product_size`, `product_image`, `product_color`, `product_des`, `product_content`, `product_qty`, `product_price`, `kho`, `thuonghieu`, `chatlieu`, `phongcach`, `loai`, `noigui`) VALUES
(1, 'Bộ đồ nam thể thao ép vân cao', 1, 'M', '/image/aococ.jpg', 'Xám', 'Hiếu Bon', 'ĐẶT HÀNG TẠI SHOP KHÁCH HÀNG SẼ ĐƯỢC:\r\n?Cam kết:chất lượng sản phẩm tốt\r\n?cam kết sản phẩm 100% giống ảnh và giớ thiệu\r\n?hỗ chợ - chăm sóc - tư vấn trước và sau khi mua sản phẩm\r\n?sẵn dàng nhận lại hàng nếu K/H không hài lòng\r\n?hỗ trợ 40k trên đơn hàng trên 200k\r\n❤️SỰ HÀI LÒNG CỦA QUÝ KHÁCH LÀ NIỀM HẠNH PHÚC CỦA CHÚNG TÔI❤️\r\n\r\n===========================================\r\n➡️\r\n?thiết kế trẻ trung \r\n?chất liệu vải cotton lạnh 4 chiều\r\n?chất liệu chữ ép và 3 vạch bền đẹp không nhiễm màu\r\n?được sản xuất trên công nghệ hiện đại và đội ngũ thợ lành nghề\r\nForm chuẩn cho mọi vóc dáng\r\n➡️chất vải thoáng mát hút mồ hôi cực tốt cho người mặc một cảm rác thoải mãi\r\n➡️chuẩn size M-L-Xl \r\n?M từ 45- 55kg\r\n?L từ 55-65kg\r\n?XL từ 65-75kg\r\n?màu sắc gồm ( đen -trắng-cam-ghi-xanh biển-tím than)\r\n➡️➡️➡️tất cả sẽ hài lòng khi sử dụng sản phẩm \r\n???phù hợp khi đi chơi.rạo phố .đi học . Chơi thể thao', 100, 250000, '3885', 'No Brand', 'Cotton', 'Thể thao', 'Vải cotton', 'Huyện Phúc Thọ, Hà Nội'),
(9, 'Bộ đồ nam thể thao body', 1, 'M', '/image/aothethao.png', 'Den xám', 'Hiếu Bon', 'ĐẶT HÀNG TẠI SHOP KHÁCH HÀNG SẼ ĐƯỢC:\r\n?Cam kết:chất lượng sản phẩm tốt\r\n?cam kết sản phẩm 100% giống ảnh và giớ thiệu\r\n?hỗ chợ - chăm sóc - tư vấn trước và sau khi mua sản phẩm\r\n?sẵn dàng nhận lại hàng nếu K/H không hài lòng\r\n?hỗ trợ 40k trên đơn hàng trên 200k\r\n❤️SỰ HÀI LÒNG CỦA QUÝ KHÁCH LÀ NIỀM HẠNH PHÚC CỦA CHÚNG TÔI❤️\r\n\r\n===========================================\r\n➡️\r\n?thiết kế trẻ trung \r\n?chất liệu vải cotton lạnh 4 chiều\r\n?chất liệu chữ ép và 3 vạch bền đẹp không nhiễm màu\r\n?được sản xuất trên công nghệ hiện đại và đội ngũ thợ lành nghề\r\nForm chuẩn cho mọi vóc dáng\r\n➡️chất vải thoáng mát hút mồ hôi cực tốt cho người mặc một cảm rác thoải mãi\r\n➡️chuẩn size M-L-Xl \r\n?M từ 45- 55kg\r\n?L từ 55-65kg\r\n?XL từ 65-75kg\r\n?màu sắc gồm ( đen -trắng-cam-ghi-xanh biển-tím than)\r\n➡️➡️➡️tất cả sẽ hài lòng khi sử dụng sản phẩm \r\n???phù hợp khi đi chơi.rạo phố .đi học . Chơi thể thao', 100, 175000, '3885', 'No Brand', 'Cotton', 'Thể thao', 'Vải cotton', 'Huyện Phúc Thọ, Hà Nội'),
(10, 'Combo quần đùi + áo cộc tay sang chảnh', 1, 'M', '/image/aothethao2.jpg', 'Đỏ', 'Hiếu Bon', 'ĐẶT HÀNG TẠI SHOP KHÁCH HÀNG SẼ ĐƯỢC:\r\n?Cam kết:chất lượng sản phẩm tốt\r\n?cam kết sản phẩm 100% giống ảnh và giớ thiệu\r\n?hỗ chợ - chăm sóc - tư vấn trước và sau khi mua sản phẩm\r\n?sẵn dàng nhận lại hàng nếu K/H không hài lòng\r\n?hỗ trợ 40k trên đơn hàng trên 200k\r\n❤️SỰ HÀI LÒNG CỦA QUÝ KHÁCH LÀ NIỀM HẠNH PHÚC CỦA CHÚNG TÔI❤️\r\n\r\n===========================================\r\n➡️\r\n?thiết kế trẻ trung \r\n?chất liệu vải cotton lạnh 4 chiều\r\n?chất liệu chữ ép và 3 vạch bền đẹp không nhiễm màu\r\n?được sản xuất trên công nghệ hiện đại và đội ngũ thợ lành nghề\r\nForm chuẩn cho mọi vóc dáng\r\n➡️chất vải thoáng mát hút mồ hôi cực tốt cho người mặc một cảm rác thoải mãi\r\n➡️chuẩn size M-L-Xl \r\n?M từ 45- 55kg\r\n?L từ 55-65kg\r\n?XL từ 65-75kg\r\n?màu sắc gồm ( đen -trắng-cam-ghi-xanh biển-tím than)\r\n➡️➡️➡️tất cả sẽ hài lòng khi sử dụng sản phẩm \r\n???phù hợp khi đi chơi.rạo phố .đi học . Chơi thể thao', 100, 195000, '3885', 'No Brand', 'Cotton', 'Thể thao', 'Vải cotton', 'Huyện Phúc Thọ, Hà Nội'),
(11, 'Áo nam phong cách', 1, 'M', '/image/images2.jpg', 'Vàng', 'Hiếu Bon', 'ĐẶT HÀNG TẠI SHOP KHÁCH HÀNG SẼ ĐƯỢC:\r\n?Cam kết:chất lượng sản phẩm tốt\r\n?cam kết sản phẩm 100% giống ảnh và giớ thiệu\r\n?hỗ chợ - chăm sóc - tư vấn trước và sau khi mua sản phẩm\r\n?sẵn dàng nhận lại hàng nếu K/H không hài lòng\r\n?hỗ trợ 40k trên đơn hàng trên 200k\r\n❤️SỰ HÀI LÒNG CỦA QUÝ KHÁCH LÀ NIỀM HẠNH PHÚC CỦA CHÚNG TÔI❤️\r\n\r\n===========================================\r\n➡️\r\n?thiết kế trẻ trung \r\n?chất liệu vải cotton lạnh 4 chiều\r\n?chất liệu chữ ép và 3 vạch bền đẹp không nhiễm màu\r\n?được sản xuất trên công nghệ hiện đại và đội ngũ thợ lành nghề\r\nForm chuẩn cho mọi vóc dáng\r\n➡️chất vải thoáng mát hút mồ hôi cực tốt cho người mặc một cảm rác thoải mãi\r\n➡️chuẩn size M-L-Xl \r\n?M từ 45- 55kg\r\n?L từ 55-65kg\r\n?XL từ 65-75kg\r\n?màu sắc gồm ( đen -trắng-cam-ghi-xanh biển-tím than)\r\n➡️➡️➡️tất cả sẽ hài lòng khi sử dụng sản phẩm \r\n???phù hợp khi đi chơi.rạo phố .đi học . Chơi thể thao', 100, 165000, '3885', 'No Brand', 'Cotton', 'Thể thao', 'Vải cotton', 'Huyện Phúc Thọ, Hà Nội'),
(12, 'Áo cộc nam phong cách Hiếu Bon', 1, 'M', '/image/images3.jpg', 'Xanh', 'Hiếu Bon', 'ĐẶT HÀNG TẠI SHOP KHÁCH HÀNG SẼ ĐƯỢC:\r\n?Cam kết:chất lượng sản phẩm tốt\r\n?cam kết sản phẩm 100% giống ảnh và giớ thiệu\r\n?hỗ chợ - chăm sóc - tư vấn trước và sau khi mua sản phẩm\r\n?sẵn dàng nhận lại hàng nếu K/H không hài lòng\r\n?hỗ trợ 40k trên đơn hàng trên 200k\r\n❤️SỰ HÀI LÒNG CỦA QUÝ KHÁCH LÀ NIỀM HẠNH PHÚC CỦA CHÚNG TÔI❤️\r\n\r\n===========================================\r\n➡️\r\n?thiết kế trẻ trung \r\n?chất liệu vải cotton lạnh 4 chiều\r\n?chất liệu chữ ép và 3 vạch bền đẹp không nhiễm màu\r\n?được sản xuất trên công nghệ hiện đại và đội ngũ thợ lành nghề\r\nForm chuẩn cho mọi vóc dáng\r\n➡️chất vải thoáng mát hút mồ hôi cực tốt cho người mặc một cảm rác thoải mãi\r\n➡️chuẩn size M-L-Xl \r\n?M từ 45- 55kg\r\n?L từ 55-65kg\r\n?XL từ 65-75kg\r\n?màu sắc gồm ( đen -trắng-cam-ghi-xanh biển-tím than)\r\n➡️➡️➡️tất cả sẽ hài lòng khi sử dụng sản phẩm \r\n???phù hợp khi đi chơi.rạo phố .đi học . Chơi thể thao', 100, 139000, '3885', 'No Brand', 'Cotton', 'Thể thao', 'Vải cotton', 'Huyện Phúc Thọ, Hà Nội'),
(13, 'Bộ đồ nam thể thao ép vân cao', 1, 'M', '/image/aococ.jpg', 'Vàng', 'Hiếu Bon', 'ĐẶT HÀNG TẠI SHOP KHÁCH HÀNG SẼ ĐƯỢC:\r\n?Cam kết:chất lượng sản phẩm tốt\r\n?cam kết sản phẩm 100% giống ảnh và giớ thiệu\r\n?hỗ chợ - chăm sóc - tư vấn trước và sau khi mua sản phẩm\r\n?sẵn dàng nhận lại hàng nếu K/H không hài lòng\r\n?hỗ trợ 40k trên đơn hàng trên 200k\r\n❤️SỰ HÀI LÒNG CỦA QUÝ KHÁCH LÀ NIỀM HẠNH PHÚC CỦA CHÚNG TÔI❤️\r\n\r\n===========================================\r\n➡️\r\n?thiết kế trẻ trung \r\n?chất liệu vải cotton lạnh 4 chiều\r\n?chất liệu chữ ép và 3 vạch bền đẹp không nhiễm màu\r\n?được sản xuất trên công nghệ hiện đại và đội ngũ thợ lành nghề\r\nForm chuẩn cho mọi vóc dáng\r\n➡️chất vải thoáng mát hút mồ hôi cực tốt cho người mặc một cảm rác thoải mãi\r\n➡️chuẩn size M-L-Xl \r\n?M từ 45- 55kg\r\n?L từ 55-65kg\r\n?XL từ 65-75kg\r\n?màu sắc gồm ( đen -trắng-cam-ghi-xanh biển-tím than)\r\n➡️➡️➡️tất cả sẽ hài lòng khi sử dụng sản phẩm \r\n???phù hợp khi đi chơi.rạo phố .đi học . Chơi thể thao', 100, 150000, '3885', 'No Brand', 'Cotton', 'Thể thao', 'Vải cotton', 'Huyện Phúc Thọ, Hà Nội'),
(14, 'Bộ đồ nam thể thao ép vân cao', 1, 'M', '/image/aococ.jpg', 'Vàng', 'Hiếu Bon', 'ĐẶT HÀNG TẠI SHOP KHÁCH HÀNG SẼ ĐƯỢC:\r\n?Cam kết:chất lượng sản phẩm tốt\r\n?cam kết sản phẩm 100% giống ảnh và giớ thiệu\r\n?hỗ chợ - chăm sóc - tư vấn trước và sau khi mua sản phẩm\r\n?sẵn dàng nhận lại hàng nếu K/H không hài lòng\r\n?hỗ trợ 40k trên đơn hàng trên 200k\r\n❤️SỰ HÀI LÒNG CỦA QUÝ KHÁCH LÀ NIỀM HẠNH PHÚC CỦA CHÚNG TÔI❤️\r\n\r\n===========================================\r\n➡️\r\n?thiết kế trẻ trung \r\n?chất liệu vải cotton lạnh 4 chiều\r\n?chất liệu chữ ép và 3 vạch bền đẹp không nhiễm màu\r\n?được sản xuất trên công nghệ hiện đại và đội ngũ thợ lành nghề\r\nForm chuẩn cho mọi vóc dáng\r\n➡️chất vải thoáng mát hút mồ hôi cực tốt cho người mặc một cảm rác thoải mãi\r\n➡️chuẩn size M-L-Xl \r\n?M từ 45- 55kg\r\n?L từ 55-65kg\r\n?XL từ 65-75kg\r\n?màu sắc gồm ( đen -trắng-cam-ghi-xanh biển-tím than)\r\n➡️➡️➡️tất cả sẽ hài lòng khi sử dụng sản phẩm \r\n???phù hợp khi đi chơi.rạo phố .đi học . Chơi thể thao', 100, 210000, '3885', 'No Brand', 'Cotton', 'Thể thao', 'Vải cotton', 'Huyện Phúc Thọ, Hà Nội'),
(15, 'Bộ đồ nam thể thao ép vân cao', 1, 'M', '/image/aococ.jpg', 'Vàng', 'Hiếu Bon', 'ĐẶT HÀNG TẠI SHOP KHÁCH HÀNG SẼ ĐƯỢC:\r\n?Cam kết:chất lượng sản phẩm tốt\r\n?cam kết sản phẩm 100% giống ảnh và giớ thiệu\r\n?hỗ chợ - chăm sóc - tư vấn trước và sau khi mua sản phẩm\r\n?sẵn dàng nhận lại hàng nếu K/H không hài lòng\r\n?hỗ trợ 40k trên đơn hàng trên 200k\r\n❤️SỰ HÀI LÒNG CỦA QUÝ KHÁCH LÀ NIỀM HẠNH PHÚC CỦA CHÚNG TÔI❤️\r\n\r\n===========================================\r\n➡️\r\n?thiết kế trẻ trung \r\n?chất liệu vải cotton lạnh 4 chiều\r\n?chất liệu chữ ép và 3 vạch bền đẹp không nhiễm màu\r\n?được sản xuất trên công nghệ hiện đại và đội ngũ thợ lành nghề\r\nForm chuẩn cho mọi vóc dáng\r\n➡️chất vải thoáng mát hút mồ hôi cực tốt cho người mặc một cảm rác thoải mãi\r\n➡️chuẩn size M-L-Xl \r\n?M từ 45- 55kg\r\n?L từ 55-65kg\r\n?XL từ 65-75kg\r\n?màu sắc gồm ( đen -trắng-cam-ghi-xanh biển-tím than)\r\n➡️➡️➡️tất cả sẽ hài lòng khi sử dụng sản phẩm \r\n???phù hợp khi đi chơi.rạo phố .đi học . Chơi thể thao', 100, 200000, '3885', 'No Brand', 'Cotton', 'Thể thao', 'Vải cotton', 'Huyện Phúc Thọ, Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_pass` varchar(200) NOT NULL,
  `user_level` int(11) NOT NULL,
  `user_mail` varchar(200) NOT NULL,
  `user_phone` int(10) NOT NULL,
  `user_full_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_pass`, `user_level`, `user_mail`, `user_phone`, `user_full_name`) VALUES
(1, 'ngodanghieu', 'ngodanghieu', 1, 'danghieuit21@gmail.com', 962541617, 'Ngô Đăng Hiếu');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `order_dep_pro`
--
ALTER TABLE `order_dep_pro`
  ADD PRIMARY KEY (`order_dep_id`);

--
-- Chỉ mục cho bảng `order_pro`
--
ALTER TABLE `order_pro`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `order_dep_pro`
--
ALTER TABLE `order_dep_pro`
  MODIFY `order_dep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `order_pro`
--
ALTER TABLE `order_pro`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
