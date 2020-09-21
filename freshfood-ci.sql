-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 20, 2020 lúc 10:42 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `freshfood-ci`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(10, 2, 6, 1),
(11, 2, 13, 1),
(12, 2, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`) VALUES
(1, 'Thực Phẩm Tươi Sống', 'thuc-pham-tuoi-song', '2020-09-19'),
(2, 'Thực Phẩm Bổ Dưỡng', 'thuc-pham-bo-duong', '2020-09-19'),
(3, 'Thực Phẩm Chế Biến', 'thuc-pham-che-bien', '2020-09-19'),
(4, 'Rau Củ Quả', 'rau-cu-qua', '2020-09-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'Nguyễn Văn A', 'test@gmail.com', 'Sản phẩm tốt', '2020-09-19 23:11:29'),
(2, 'Tùng Đinh Khắc', 'khactungdinh@gmail.com', 'Sản phẩm tốt trong tầm giá', '2020-09-19 23:11:53'),
(3, 'Khac Tung Dinh', 'khactungdinh2288@gmail.com', 'Sản phẩm tạm được ', '2020-09-19 23:12:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT 0,
  `status` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `slug`, `content`, `image`, `created_at`, `views`, `status`) VALUES
(1, 'CÓ THỂ BẠN CHƯA BIẾT, BÁNH MÌ SÀI GÒN CÓ HƠN 20 LOẠI NHÂN ĂN KÈM', 'Dù ngày càng có nhiều món ăn mới xuất hiện nhưng vẫn chưa có món nào có thể đánh bật bánh mì Sài Gòn khỏi vị trí đầu về độ phổ biến và tiện dụng trong danh sách ẩm thực đường phố.', 'co-the-ban-chua-biet-banh-mi-sai-gon-co-hon-20-loai-nhan-an-kem', '<p>M&oacute;n b&aacute;nh m&igrave; &ldquo;huyền thoại&rdquo; của người S&agrave;i G&ograve;n.</p>\r\n\r\n<p>Cho d&ugrave; l&agrave; học sinh, sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n văn ph&ograve;ng hay bất cứ ai ở S&agrave;i G&ograve;n đi chăng nữa th&igrave; lựa chọn ăn s&aacute;ng đầu ti&ecirc;n vẫn lu&ocirc;n l&agrave; b&aacute;nh m&igrave;. C&oacute; thể n&oacute;i bất cứ con đường n&agrave;o ở S&agrave;i G&ograve;n đều c&oacute; xe b&aacute;n b&aacute;nh m&igrave; nhưng chắc chắn bạn kh&ocirc;ng thể ngờ được b&aacute;nh m&igrave; S&agrave;i G&ograve;n c&oacute; tới hơn 20 loại nh&acirc;n ăn k&egrave;m.</p>\r\n\r\n<p><strong>B&aacute;nh m&igrave; chả lụa</strong>&nbsp;l&agrave; d&ograve;ng b&aacute;nh quen thuộc nhất của người S&agrave;i G&ograve;n. Điểm cộng của d&ograve;ng nh&acirc;n n&agrave;y l&agrave; thanh, &iacute;t b&eacute;o, &iacute;t ngấy.</p>\r\n\r\n<p><strong>B&aacute;nh m&igrave; chả b&ograve;</strong>&nbsp;ăn ngon nhất khi cả b&aacute;nh m&igrave; v&agrave; chả đều n&oacute;ng. L&aacute;t chả b&ograve; cũng kh&ocirc;ng được xắt th&agrave;nh những thanh nhỏ, d&agrave;i m&agrave; phải to bản. Chả b&ograve; cũng phải đặt thật kh&eacute;o, sao cho miếng cắn ở bất kỳ vị tr&iacute; n&agrave;o cũng bật l&ecirc;n vị ngon, thơm của chả.</p>\r\n\r\n<p><strong>B&aacute;nh m&igrave; thịt</strong>&nbsp;c&oacute; hai d&ograve;ng l&agrave; thịt luộc v&agrave; hấp. Mỗi d&ograve;ng c&oacute; một điểm nhấn kh&aacute;c nhau song đều thơm, ngon.</p>\r\n\r\n<p><strong>B&aacute;nh m&igrave; ch&agrave; b&ocirc;ng (ruốc).</strong>&nbsp;Ch&agrave; b&ocirc;ng được nhắc đến trong loại nh&acirc;n n&agrave;y l&agrave; ch&agrave; b&ocirc;ng heo. Tuy nhi&ecirc;n, một số h&agrave;ng qu&aacute;n cũng phục vụ ch&agrave; b&ocirc;ng g&agrave;.</p>\r\n\r\n<p><strong>B&aacute;nh m&igrave; thịt quay</strong>&nbsp;ngon hay kh&ocirc;ng nằm ở những miếng thịt thơm ngon v&agrave; nước d&ugrave;ng đặc chế.</p>\r\n\r\n<p><strong>B&aacute;nh m&igrave; thịt nguội kiểu Đức</strong>&nbsp;l&agrave; một loại nh&acirc;n mới xuất hiện v&agrave; l&agrave; m&oacute;n độc quyền của một thương hiệu b&aacute;nh m&igrave; của S&agrave;i G&ograve;n. Điểm cộng l&agrave; vị của những miếng thịt kh&aacute; lạ.</p>\r\n\r\n<p><strong>B&aacute;nh m&igrave; g&agrave; tay cầm:</strong>&nbsp;Để khắc chế độ kh&ocirc; của thịt, người b&aacute;n phải tạo ra nước sốt v&agrave; c&aacute;c loại dưa chua ri&ecirc;ng ăn k&egrave;m.</p>\r\n\r\n<p><strong>B&aacute;nh m&igrave; thịt nướng</strong>&nbsp;đ&atilde; từng được vinh danh m&oacute;n ăn đường phố ngon nhất thế giới. Bạn c&oacute; thể thưởng thức m&oacute;n ăn n&agrave;y tại c&aacute;c phố lớn, đường nhỏ của S&agrave;i G&ograve;n.</p>\r\n\r\n<p>M&oacute;n b&aacute;nh m&igrave; thịt nướng ngon trứ danh.</p>\r\n\r\n<p><strong>B&aacute;nh m&igrave; pa t&ecirc;</strong>: Ngo&agrave;i được cho v&agrave;o b&aacute;nh m&igrave; để tạo vị b&eacute;o hay kết nối c&aacute;c nguy&ecirc;n liệu với nhau, bạn c&oacute; thể y&ecirc;u cầu người b&aacute;n chỉ cho một loại nh&acirc;n n&agrave;y v&agrave;o ổ b&aacute;nh của m&igrave;nh. Điểm cộng l&agrave; m&oacute;n ăn thơm b&eacute;o. Điểm trừ l&agrave; ng&aacute;n ngấy.</p>\r\n\r\n<p><strong>B&aacute;nh m&igrave; c&aacute; hộp</strong>&nbsp;chỉ cần khui hộp l&agrave; bạn c&oacute; ngay phần nh&acirc;n n&agrave;y.</p>\r\n\r\n<p><strong>B&aacute;nh m&igrave; ph&aacute; lấu</strong>&nbsp;nổi tiếng nhất S&agrave;i G&ograve;n nằm tr&ecirc;n đường Nguyễn Tr&atilde;i. Ph&aacute; lấu ở đ&acirc;y được nấu theo phong c&aacute;ch của người Tiều.</p>\r\n\r\n<p><strong>B&aacute;nh m&igrave; x&iacute;u mại</strong>&nbsp;l&agrave; một trong những m&oacute;n ăn du kh&aacute;ch nhất định phải thử khi đến Đ&agrave; Lạt. M&oacute;n n&agrave;y ăn ngon nhất khi trời trở lạnh.</p>\r\n', 'am-thuc-viet-nam-tung-buoc-chinh-phuc-the-gioi-2.jpg', '2020-09-20 10:08:30', 2, b'1'),
(2, 'ĂN CHAY NHỮNG ĐIỀU BẠN CẦN PHẢI BIẾT', 'Ăn chay hiện nay đang trở thành thói quen của nhiều người, ẩm thực chay cùng các món chay ngon từ đó cũng trở nên phổ biến hơn trước. Tuy vậy các bạn đã biết hết những tác hại và ích lợi của việc ăn chay?', 'an-chay-nhung-dieu-ban-can-phai-biet', '<p>Ăn chay l&agrave; một trong những c&aacute;ch gi&uacute;p thanh lọc cơ thể.&nbsp;(Ảnh: Internet)</p>\r\n\r\n<p>Ăn chay l&agrave; c&aacute;ch ăn chỉ d&ugrave;ng c&aacute;c loại thực phẩm c&oacute; nguồn gốc thực vật, kh&ocirc;ng sử dụng c&aacute;c loại thịt động vật. Việc ăn chay vốn ban đầu xuất ph&aacute;t từ y&ecirc;u cầu t&ocirc;n gi&aacute;o, tuy vậy ng&agrave;y nay, ẩm thực chay c&agrave;ng phổ biến v&agrave; trở th&agrave;nh khuynh hướng của nhiều người.</p>\r\n\r\n<p>Hiện nay ăn chay đang ng&agrave;y c&agrave;ng trở th&agrave;nh xu hướng.&nbsp;(Ảnh: Internet)</p>\r\n\r\n<p><strong>Những điểm lợi v&agrave; hại của việc ăn chay bạn n&ecirc;n biết</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lợi &iacute;ch&nbsp;của việc ăn chay</strong></p>\r\n\r\n<p>-Th&agrave;nh phần ch&iacute;nh của c&aacute;c m&oacute;n ăn chay l&agrave; c&aacute;c loại rau củ hay chất đạm l&agrave; đạm thực vật bởi vậy đặc t&iacute;nh nổi bật c&oacute; thể thấy của ẩm thực chay l&agrave; dễ ti&ecirc;u h&oacute;a, dễ hấp thụ đối với cơ thể.</p>\r\n\r\n<p>&ndash; Với việc nạp&nbsp;<a href=\"http://www.jerseyscheapbizchina.com/\">wholesale nfl jerseys</a>&nbsp;v&agrave; cơ thể một lượng rau xanh, hoa quả tươi tương đối nhiều nhiều, sẽ gi&uacute;p cung cấp đầy đủ lượng chất&nbsp;<a href=\"http://newjerseydevilsjerseys.mihanblog.com/post/32\">xơ</a>&nbsp;cần&nbsp;<a href=\"http://urcheapjerseys.mee.nu/?entry=2686823\">thiết</a>&nbsp;c&ugrave;ng với c&aacute;c vitamin c&oacute; lợi như B, C, c&aacute;c chất chống oxy h&oacute;a gi&uacute;p cơ thể c&oacute; thể duy tr&igrave; được sự trẻ trung v&agrave; khỏe mạnh của c&aacute;c tế b&agrave;o.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với việc nạp v&agrave; cơ thể một lượng rau xanh, hoa quả tươi tương đối nhiều nhiều, sẽ gi&uacute;p cung cấp đầy đủ lượng chất xơ cần thiết.&nbsp;(Ảnh: Internet)</p>\r\n\r\n<p>&ndash; Trong rau, củ v&agrave; hoa quả đều chứa c&aacute;c chất b&eacute;o kh&ocirc;ng c&oacute; cholesterol- loại chất b&eacute;o c&oacute; lợi đối với bệnh l&yacute; rối loạn chuyển h&oacute;a, tim mạch, tiểu đường, huyết &aacute;p.</p>\r\n\r\n<p>&ndash; Ngo&agrave;i ra, nếu bạn ăn chay đ&uacute;ng c&aacute;ch, c&aacute;c chuyển h&oacute;a cơ bản trong cơ thể sẽ giảm đi, dẫn đến hoạt động của c&aacute;c tế b&agrave;o &iacute;t v&agrave; nhẹ nh&agrave;ng hơn; từ đ&oacute; sẽ gi&uacute;p bạn duy tr&igrave; dự trẻ trung, khỏe mạnh của cơ thể l&acirc;u hơn. Thực tế, nhiều nghi&ecirc;n cứu về ăn chay đ&atilde; chỉ ra rằng đối với người ăn chay, tỉ lệ mắc c&aacute;c bệnh về tim mạch, rối loạn chuyển h&oacute;a, thậm ch&iacute; l&agrave; ung thư giảm đi so với việc ăn uống th&ocirc;ng thường.</p>\r\n\r\n<p><strong>Tuy nhi&ecirc;n ăn chay cũng ẩn chứa c&aacute;c t&aacute;c hại</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Những người ăn chay trường thường trong thời gian d&agrave;i sẽ dễ bị tăng cholesterol m&aacute;u hơn.&nbsp;(Ảnh: Internet)</p>\r\n\r\n<p>&ndash; Trước hết, chất đạm được nạp v&agrave;o cơ thể từ thực vật tuy dễ ti&ecirc;u h&oacute;a v&agrave; hấp thụ, nhưng đạm thực vật lại thiếu đi một số axit amin thiết yếu cho sự tăng trưởng, ph&aacute;t triển của cơ thể bạn. Ngo&agrave;i ra, lượng rau v&agrave; chất xơ nhiều trong đồ ăn chay cũng c&oacute; thể l&agrave;m ảnh hưởng đến qu&aacute; tr&igrave;nh hấp thu c&aacute;c chất dinh dưỡng qu&yacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ndash; Việc sử dụng đa số c&aacute;c thực phẩm được chế biến bằng phương ph&aacute;p chi&ecirc;n, c&ugrave;ng sử dụng kh&aacute; nhiều nước cốt dừa- axit b&eacute;o no dẫn đến những người ăn&nbsp;<a href=\"http://www.jerseyscheapbizchina.com/tag/cheap-nfl-packers-jerseys\">cheap nfl packers jerseys</a>&nbsp;chay trường sẽ nạp v&agrave; cơ thể kh&aacute; nhiều chất b&eacute;o, n&ecirc;n d&ugrave; kh&ocirc;ng c&oacute; cholesterol từ mỡ động vật, nhưng việc d&ugrave;ng nhiều những chất b&eacute;o n&agrave;y lại k&iacute;ch th&iacute;ch cơ thể tạo ra cholesterol nhiều hơn. Bởi vậy những người ăn chay trường thường trong thời gian d&agrave;i sẽ dễ bị tăng cholesterol m&aacute;u hơn, đồng thời c&aacute;c gốc oxy h&oacute;a trong cơ thể cũng tăng l&ecirc;n do th&oacute;i quen ăn nhiều đồ chi&ecirc;n.</p>\r\n', 'am-thuc-viet-nam-tung-buoc-chinh-phuc-the-gioi-1.jpg', '2020-09-20 10:09:30', 1, b'1'),
(3, 'ẨM THỰC VIỆT NAM TỪNG BƯỚC CHINH PHỤC THẾ GIỚI', 'Món ăn Việt ngày càng được nhiều quốc gia trên thế giới biết đến. Điều đó càng được khẳng định, khi tháng 8/2012 vừa qua tại Faridabad, Ấn Độ, Tổ chức Kỷ lục châu http://www.cheapnfljerseys4.com Á đã chính thức công nhận và xác lập 12 món ăn Việt Nam đạt ', 'am-thuc-viet-nam-tung-buoc-chinh-phuc-the-gioi', '<p>Một trong những niềm tự h&agrave;o của văn h&oacute;a Việt Nam l&agrave; kho t&agrave;ng ẩm thực với h&agrave;ng ng&agrave;n m&oacute;n ăn mang đậm bản sắc d&acirc;n tộc trải dọc khắp 3 miền Bắc &ndash; Trung &ndash; Nam. (Ảnh: Internet)</p>\r\n\r\n<p>M&oacute;n ăn Việt về khẩu vị n&oacute;i chung kh&ocirc;ng thi&ecirc;n lệch qu&aacute; về một cực n&agrave;o n&ecirc;n dễ hợp khẩu vị nhiều d&acirc;n tộc. M&oacute;n Việt cũng kh&ocirc;ng nhiều dầu mỡ qu&aacute; như m&oacute;n ăn Hoa, kh&ocirc;ng d&ugrave;ng gia vị &ldquo;mạnh&rdquo; qu&aacute; như m&oacute;n ăn Ấn Độ, kh&ocirc;ng thi&ecirc;n về bơ, sữa như m&oacute;n ăn &Acirc;u&hellip; M&oacute;n ăn miền Bắc thường l&agrave; những m&oacute;n nấu như: phở, miến, b&uacute;n thang, b&uacute;n mọc&hellip; do nước d&ugrave;ng của c&aacute;c m&oacute;n nấu miền Bắc thường tinh tế, thuần nhất về m&ugrave;i vị; nếu b&ograve; th&igrave; chỉ to&agrave;n l&agrave; xương, thịt b&ograve;; nếu l&agrave; g&agrave; th&igrave; cũng vậy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nhắc đến ẩm thực Việt Nam kh&ocirc;ng thể n&agrave;o kh&ocirc;ng nhắc tới Phở &ndash; quốc hồn Việt.&nbsp;(Ảnh: Internet)</p>\r\n\r\n<p>C&ograve;n m&oacute;n ăn miền Trung, đặc biệt l&agrave; m&oacute;n ăn Huế, c&oacute; một vị tr&iacute; quan trọng trong nền văn h&oacute;a ẩm thực của Việt Nam thi&ecirc;n về t&iacute;nh đa vị, phối hợp rất nhiều nguy&ecirc;n liệu lẫn gia vị. M&oacute;n ăn miền Nam th&igrave; thường c&oacute; ưu điểm nhiều rau như c&aacute;c m&oacute;n gỏi, cuốn; m&oacute;n nướng thường được phối nhiều gia vị kh&aacute;c nhau cho c&aacute;c nguy&ecirc;n liệu như thịt, hải sản, gia cầm&hellip; n&ecirc;n rất hấp dẫn người ăn do m&ugrave;i thơm mỗi m&oacute;n rất kh&aacute;c nhau.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&aacute;nh m&igrave; được v&iacute; như Hamburger thế giới.&nbsp;(Ảnh: Internet)</p>\r\n\r\n<p>Hầu như tất cả những m&oacute;n ăn Việt đều c&oacute; thể t&igrave;m thấy ở những qu&aacute;n c&oacute;c, xe đẩy tr&ecirc;n h&egrave; phố hoặc những qu&aacute;n ăn lớn, nhỏ b&ecirc;n đường, đầu ng&otilde;, hẻm, những nh&agrave; h&agrave;ng kh&aacute;ch sạn sang trọng bậc nhất&hellip; Thực kh&aacute;ch th&igrave; đủ gi&agrave; trẻ, nam nữ, &ocirc;ng t&acirc;y, b&agrave; đầm, những c&ocirc; cậu thanh ni&ecirc;n H&agrave;n Quốc, Nhật Bản, cả c&aacute;c ch&iacute;nh kh&aacute;ch, minh tinh của thế giới&hellip; tất cả đều th&iacute;ch th&uacute;, trầm trồ b&ecirc;n t&ocirc; phở, đĩa nem, b&aacute;t b&uacute;n&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&oacute;n ăn miền Nam th&igrave; thường c&oacute; ưu&nbsp;<a href=\"http://www.wholesalejerseys1.com/tag/sewn-nfl-jerseys\">sewn nfl jerseys</a>&nbsp;điểm nhiều rau như c&aacute;c m&oacute;n gỏi, cuốn&hellip;&nbsp;(Ảnh: Internet)</p>\r\n\r\n<p>Martin Yan (Yan Can Cook) l&agrave; một đầu bếp lừng danh, cũng l&agrave; nh&acirc;n vật ch&iacute;nh đầy h&agrave;i hước v&agrave; cuốn h&uacute;t trong chương tr&igrave;nh truyền h&igrave;nh Yan Can Cook từng chia sẻ, m&oacute;n ăn Việt Nam rất đặc biệt, rất tốt cho sức khỏe, l&uacute;c n&agrave;o cũng tươi. Bạn ăn như thế n&agrave;o th&igrave; con người bạn sẽ thể hiện ra như vậy. Bạn nh&igrave;n xem, người Việt Nam, đặc biệt l&agrave; phụ nữ rất mảnh dẻ v&agrave; tr&ocirc;ng l&uacute;c n&agrave;o cũng tươi tắn, đầy sức sống&hellip; Chả gi&ograve;, sau đ&oacute; l&agrave; phở &ndash; m&oacute;n ăn trứ danh của người Việt Nam ai cũng y&ecirc;u th&iacute;ch trong đ&oacute; c&oacute; Yan Can Cook.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Những m&oacute;n ăn Việt đặc trưng với nghệ thuật chế biến tinh tế, ri&ecirc;ng biệt. (Ảnh: Internet)</p>\r\n\r\n<p>Đến Việt Nam du lịch, l&agrave;m việc họ t&igrave;m v&agrave; học nấu ăn để c&oacute; thể tự tay chế biến. &ldquo;Nếu hỏi t&ocirc;i điều g&igrave; khiến t&ocirc;i y&ecirc;u th&iacute;ch nhất khi tới Việt Nam th&igrave; t&ocirc;i sẽ trả lời ngay rằng đ&oacute; ch&iacute;nh l&agrave; c&aacute;c m&oacute;n ăn. Ở bất cứ nơi n&agrave;o tr&ecirc;n thế giới cũng c&oacute; heo, b&ograve;, g&agrave;, vịt, hải sản&hellip; nhưng m&oacute;n ăn của mỗi quốc gia, mỗi v&ugrave;ng miền đều c&oacute; những đặc trưng ri&ecirc;ng,&nbsp;<a href=\"http://www.wholesalejerseys1.com/tag/cheapjerseys\">cheapjerseys</a>&nbsp;kh&aacute;c nhau do c&aacute;ch sử dụng gia vị, khẩu vị cũng như c&aacute;ch nấu đ&atilde; quyết định n&ecirc;n phong c&aacute;ch ẩm thực của nơi đ&oacute;. T&ocirc;i phải học một số m&oacute;n ăn Việt Nam để khi kh&ocirc;ng ở đ&acirc;y vẫn c&oacute; thể tự l&agrave;m để thưởng thức v&agrave; t&ocirc;i dự định sẽ đem một số m&oacute;n ăn Việt như phở, chả gi&ograve; v&agrave;o trong thực đơn của nh&agrave; h&agrave;ng m&igrave;nh ở Anh&rdquo;- Daniel Roux một chuy&ecirc;n gia ẩm thực của Anh chia sẻ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khẳng định những gi&aacute; trị về văn h&oacute;a ẩm thực Việt Nam từ năm 2010, Tổ chức Kỷ lục Việt Nam đ&atilde; triển khai H&agrave;nh tr&igrave;nh quảng b&aacute; ẩm thực v&agrave; đặc sản Việt Nam, t&igrave;m kiếm kỷ lục ẩm thực v&agrave; đề cử đến Tổ chức Kỷ lục ASEAN, Tổ chức kỷ lục ch&acirc;u &Aacute; v&agrave; Tổ chức kỷ lục thế giới Guinness, g&oacute;p phần l&agrave;m cho ẩm thực Việt Nam được thế giới biết đến nhiều hơn nữa. Kết quả, th&aacute;ng 8/2012 vừa qua tại Faridabad, Ấn Độ &ndash; Tổ chức kỷ lục ch&acirc;u &Aacute; đ&atilde; ch&iacute;nh thức c&ocirc;ng nhận v&agrave; x&aacute;c lập 12 m&oacute;n ăn Việt Nam do Tổ chức kỷ lục Việt Nam đề cử theo bộ ti&ecirc;u ch&iacute;&nbsp;<a href=\"http://www.wholesalejerseys1.com/\">http://www.wholesalejerseys1.com</a>&nbsp;x&aacute;c lập &ldquo;Gi&aacute; trị ẩm thực ch&acirc;u &Aacute;&rdquo; của Tổ chức kỷ lục ch&acirc;u &Aacute; qui định.</p>\r\n', 'am-thuc-viet-nam-tung-buoc-chinh-phuc-the-gioi-3.jpg', '2020-09-20 10:10:13', 3, b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `payment` float(255,0) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0 chờ xác nhân, 1 chờ lấy hàng, 2 đang giao, 3 đã giao, 4 đã huỷ',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `address`, `phone`, `payment`, `note`, `status`, `created_at`) VALUES
(1, 2, 'Đinh Khắc Tùng', 'Hoàng Mai', '0348520202123', 184000, '', 4, '2020-09-20 10:20:50'),
(2, 2, 'Đinh Khắc Tùng', 'Hoàng Mai', '0348520202123', 132000, 'Giao hàng vào buổi chiều', 0, '2020-09-20 10:21:30'),
(3, 2, 'Đinh Khắc Tùng', 'Hoàng Mai', '0348520202123', 35000, '', 0, '2020-09-20 10:21:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `name`, `image`, `quantity`, `price`) VALUES
(1, 1, 7, 'Xoài Tứ Quý (1kg)', 'xoai-tu-quy-1kg.jpg', 2, '35000.00'),
(2, 1, 6, 'Thanh Long (1kg)', 'thanh-long.jpg', 2, '25000.00'),
(3, 1, 2, 'Cà Chua Đà Lạt 100g', 'ca-chua.jpg', 1, '4000.00'),
(4, 1, 3, 'Ổi Lê Đài Loan (1kg)', 'oi-1.jpg', 5, '12000.00'),
(5, 2, 7, 'Xoài Tứ Quý (1kg)', 'xoai-tu-quy-1kg.jpg', 2, '35000.00'),
(6, 2, 8, 'Bắp giò heo Vissan 100g', 'bap-gio-heo-vissan-1kg-1.jpg', 1, '22000.00'),
(7, 2, 10, 'Thịt heo say Vissan 1kg', 'thit-heo.jpg', 1, '28000.00'),
(8, 2, 12, 'Thịt lợn ba chỉ 1kg', 'product-1.jpg', 1, '12000.00'),
(9, 3, 7, 'Xoài Tứ Quý (1kg)', 'xoai-tu-quy-1kg.jpg', 1, '35000.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `buyed` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT 0,
  `featured` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `content`, `price`, `description`, `amount`, `category_id`, `buyed`, `created_at`, `status`, `image`, `views`, `featured`) VALUES
(1, 'Bắp Cải Tím Đà Lạt (1kg)', 'bap-cai-tim-da-lat-1kg-', '<p><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Bắp cải t&iacute;m Đ&agrave; Lạt PF</strong>&nbsp;l&agrave; thực phẩm rất tốt cho sức khỏe con người. B&ecirc;n cạnh th&agrave;nh phần chứa nhiều vitamin C v&agrave; K,&nbsp;<strong>Bắp cải t&iacute;m Đ&agrave; Lạt</strong>&nbsp;rất gi&agrave;u anthocyanin polyphenols &ndash; chất chống oxy h&oacute;a, c&aacute;c t&iacute;nh năng kh&aacute;ng vi&ecirc;m kh&aacute;c nhau. Một số nghi&ecirc;n cứu cho rằng, anthocyanin c&oacute; thể gi&uacute;p giảm nguy cơ tim mạch, tiểu đường v&agrave; một số bệnh ung thư. Nhờ gi&agrave;u chất chống oxy h&oacute;a,&nbsp;<strong>Bắp cải t&iacute;m Đ&agrave; Lạt PF</strong>&nbsp;c&ograve;n gi&uacute;p l&agrave;n da bạn mềm mại v&agrave; s&aacute;ng hơn.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Với&nbsp;<strong>Bắp cải t&iacute;m Đ&agrave; Lạt PF</strong>, bạn c&oacute; thể chế biến th&agrave;nh nhiều m&oacute;n ăn kh&aacute;c nhau. Loại bắp cải n&agrave;y được sử dụng phổ biến trong m&oacute;n salad trộn hay x&agrave;o k&egrave;m với miến. Đặc điểm nổi bật của&nbsp;<strong>Bắp cải t&iacute;m Đ&agrave; Lạt PF</strong>&nbsp;l&agrave; độ tươi ngon, chất lượng được bảo đảm, kh&ocirc;ng chứa h&oacute;a chất bảo quản. Với&nbsp;<strong>Bắp cải t&iacute;m Đ&agrave; Lạt PF</strong>, m&oacute;n ăn của bạn sẽ trở n&ecirc;n ngon miệng hơn bao giờ hết.</span></span></p>\r\n', 22000.00, NULL, 20, 4, 0, '2020-09-19 23:29:26', b'0', 'bap-cai.jpg', 0, NULL),
(2, 'Cà Chua Đà Lạt 100g', 'ca-chua-da-lat-100g', '<p><strong>C&agrave; chua&nbsp;Đ&agrave; Lạt</strong>&nbsp;do VinMart ph&acirc;n phối được&nbsp;trồng tự nhi&ecirc;n tại c&aacute;c n&ocirc;ng trại ở Đ&agrave; Lạt v&agrave; được chăm s&oacute;c tỉ mỉ để thu được những sản phẩm chất lượng nhất. Đặc biệt, sản phẩm nu&ocirc;i dưỡng bằng ph&acirc;n b&oacute;n hữu cơ, kh&ocirc;ng sử dụng c&aacute;c h&oacute;a chất g&acirc;y hại, đảm bảo kh&ocirc;ng ảnh hưởng đến sức khỏe người ti&ecirc;u d&ugrave;ng.&nbsp;<strong>C&agrave; chua</strong>&nbsp;kh&ocirc;ng chỉ l&agrave; thức ăn tốt, bổ dưỡng m&agrave; c&ograve;n l&agrave;m đẹp l&agrave;n da, gi&uacute;p x&oacute;a c&aacute;c vết n&aacute;m đen tr&ecirc;n mặt.</p>\r\n\r\n<p><strong>C&agrave; chua</strong>&nbsp;được xem l&agrave; loại thực phẩm c&oacute; gi&aacute; trị dinh dưỡng cao, gi&uacute;p chống l&atilde;o ho&aacute; v&agrave; ph&ograve;ng chống ung thư. Đ&acirc;y cũng l&agrave; một nguy&ecirc;n liệu thiết yếu trong mỗi gian bếp gia đ&igrave;nh, d&ugrave;ng để chế biến th&agrave;nh nhiều m&oacute;n ăn ngon&nbsp;như c&aacute;c m&ograve;n x&agrave;o, chế nước sốt, nấu s&uacute;p, canh, trộn salad hay l&agrave;m sinh tố đều rất thơm ngon.</p>\r\n', 4000.00, 'Hàm lượng vitamin A trong cà chua rất cao, trung bình 100g cà chua chín tươi sẽ đáp ứng được 13% nhu cầu hàng ngày về vitamin A, B6, C.', 99, 4, 1, '2020-09-19 23:37:02', b'1', 'ca-chua.jpg', 1, NULL),
(3, 'Ổi Lê Đài Loan (1kg)', 'oi-le-dai-loan-1kg-', '<p><strong>Ổi l&ecirc; Đ&agrave;i Loan&nbsp;</strong>l&agrave; giống ổi&nbsp;c&oacute; hương vị thơm ngon v&agrave; gi&ograve;n, chứa nhiều chất xơ, vitamin C, A, kẽm, kali v&agrave; mangan c&oacute; t&aacute;c dụng bồi dưỡng hệ ti&ecirc;u h&oacute;a. Theo c&aacute;c nh&agrave; dinh dưỡng, vitamin C trong vỏ ổi gi&uacute;p k&iacute;ch hoạt sự sản xuất chất collagen, hoạt chất cần thiết củng cố độ bền cho khớp xương, sụn, c&oacute; &iacute;ch cho cấu tr&uacute;c của da, gi&uacute;p duy tr&igrave; lượng collagen trong da, giữ cho da lu&ocirc;n ổn định.</p>\r\n\r\n<p>Đặc biệt trong ổi c&ograve;n c&oacute; nhiều lycopen l&agrave; một chất chống oxy ho&aacute; gi&uacute;p ph&ograve;ng ngừa ung thư tuyến tiền liệt v&agrave; rất nhiều kali (một quả ổi cỡ vừa cung cấp được 688mg kali, nhiều hơn 63% kali trong chuối).&nbsp;Sản phẩm&nbsp;<strong>Ổi l&ecirc; Đ&agrave;i Loan&nbsp;</strong>do VinMart ph&acirc;n phối đ&atilde; được rửa sạch v&agrave; đ&oacute;ng khay nhỏ gọn, đảm bảo vệ sinh an to&agrave;n thực phẩm, gi&uacute;p bạn tiện lợi bảo quản tươi ngon l&acirc;u ng&agrave;y trong ngăn tủ lạnh gia đ&igrave;nh.</p>\r\n', 12000.00, 'Ổi lê Đài Loan là giống ổi có hương vị thơm ngon và giòn, chứa nhiều chất xơ, vitamin C, A, kẽm, kali và mangan có tác dụng bồi dưỡng hệ tiêu hóa.', 95, 4, 1, '2020-09-19 23:37:57', b'1', 'oi-1.jpg', 0, NULL),
(4, 'Ớt chuông đỏ Đà Lạt (1kg)', 'ot-chuong-do-da-lat-1kg-', '<p>Ớt chu&ocirc;ng hay c&ograve;n gọi l&agrave; ớt t&acirc;y, ớt ngọt. Đ&acirc;y l&agrave; loại quả gia vị, c&oacute; m&agrave;u sắc rực rỡ (đỏ, v&agrave;ng, xanh), quả to tr&ograve;n hơn c&aacute;c loại ớt th&ocirc;ng thường, vị gi&ograve;n, ngọt nhẹ, &iacute;t cay, m&ugrave;i vị đặc trưng. Với hương vị v&agrave; m&agrave;u sắc đặc biệt,&nbsp;<strong>Ớt chu&ocirc;ng đỏ Đ&agrave; Lạt PF</strong>&nbsp;c&oacute; thể chế biến với nhiều nguy&ecirc;n liệu kh&aacute;c nhau, cho m&oacute;n ăn thơm ngon, hấp dẫn như b&ecirc; x&agrave;o xả ớt, ớt canh x&agrave;o mề g&agrave;, b&ograve; l&uacute;c lắc, pizza&hellip;</p>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; hương vị thơm ngon,&nbsp;<strong>Ớt chu&ocirc;ng đỏ Đ&agrave; Lạt PF&nbsp;</strong>c&ograve;n chứa nhiều protit, đường, canxi, vitamin B1, B2&nbsp;hơn so với c&aacute;c loại ớt kh&aacute;c. Sản phẩm rất tốt cho da, gi&uacute;p bảo vệ m&agrave;ng collagen v&agrave; nu&ocirc;i dưỡng da tốt nhất. Đồng thời vitamin A v&agrave; C gi&uacute;p ph&ograve;ng chống qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a sớm của tế b&agrave;o, ung thư da hoặc c&aacute;c bệnh tim mạch một c&aacute;ch hiệu quả.</p>\r\n\r\n<hr />\r\n<p><strong>Gợi &yacute; một số m&oacute;n ngon từ ớt chu&ocirc;ng</strong></p>\r\n\r\n<p>Ớt chu&ocirc;ng đem lại hương vị thơm ngon hơn cho c&aacute;c m&oacute;n x&agrave;o như thịt b&ograve; x&agrave;o, thịt b&ecirc; x&agrave;o, b&aacute;nh gạo x&agrave;o H&agrave;n Quốc&hellip; Hoặc bạn cũng c&oacute; thể tham khảo c&aacute;ch chế biến một số m&oacute;n ăn dưới đ&acirc;y để đổi vị cho cả gia đ&igrave;nh&nbsp;nh&eacute;</p>\r\n', 18000.00, 'Ớt chuông đem lại hương vị thơm ngon hơn cho các món xào như thịt bò xào, thịt bê xào, bánh gạo xào Hàn Quốc… Hoặc bạn cũng có thể tham khảo cách chế biến một số món ăn dưới đây để đổi vị cho cả gia đình nhé', 100, 4, 0, '2020-09-19 23:39:18', b'1', 'ot.jpg', 6, NULL),
(5, 'Ớt sừng đỏ Đà Lạt (1kg)', 'ot-sung-do-da-lat-1kg-', '<p><strong>Ớt sừng đỏ Đ&agrave; Lạt</strong>&nbsp;l&agrave; loại quả l&agrave;m gia vị cũng như loại quả được trồng phổ biến tại Đ&agrave; Lạt do kh&iacute; hậu th&iacute;ch hợp. Quả ớt sừng tr&ograve;n d&agrave;i, c&oacute; m&agrave;u sắc tươi v&agrave; c&oacute; vị cay đặc trưng. Trong&nbsp;<strong>Ớt sừng đỏ Đ&agrave; Lạt</strong>&nbsp;c&oacute; hoạt chất dược t&iacute;nh capsaixinae, vị cay, t&iacute;nh trung h&ograve;a. Chất capsaixinae từ ớt c&oacute; t&aacute;c dụng ức chế giảm đau, phong thấp, g&uacute;t, khớp, đau d&acirc;y thần kinh v&agrave; cũng l&agrave; thuốc chữa chứng kh&oacute; ti&ecirc;u, đầy hơi v&agrave; đau răng hiệu quả. Ớt cũng chứa một số vitamin v&agrave; chất kho&aacute;ng. Lượng vitamin C phong ph&uacute; trong ớt c&oacute; thể khống chế xơ cứng động mạch v&agrave; l&agrave;m giảm cholesterol.</p>\r\n\r\n<p><u><strong>Nguy&ecirc;n liệu:</strong></u></p>\r\n\r\n<ul>\r\n	<li>Ớt tươi: 500gr</li>\r\n	<li>Tỏi: 100g</li>\r\n	<li>Dấm gạo: 500ml</li>\r\n	<li>Muối: 1 muỗng c&agrave; ph&ecirc;</li>\r\n	<li>Đường: 10g</li>\r\n</ul>\r\n\r\n<p><u><strong>C&aacute;ch l&agrave;m:</strong></u></p>\r\n\r\n<ul>\r\n	<li>Ớt cắt bỏ cuống, rửa thật sạch, để r&aacute;o nước. Tỏi b&oacute;c sạch vỏ.</li>\r\n	<li>Chuẩn bị 1 lọ thủy tinh. Hũ thủy tinh phải được rửa sạch, tr&aacute;ng lại bằng nước s&ocirc;i rồi để thật kh&ocirc; trước khi ng&acirc;m ớt.</li>\r\n	<li>Cho ớt, tỏi xếp gọn v&agrave;o trong lọ. Khi xếp v&agrave;o hũ bạn nhớ nhẹ tay (để ớt kh&ocirc;ng bị dập) th&igrave; nước ng&acirc;m mới trong v&agrave; đẹp.</li>\r\n	<li>Đổ dấm đường muối đ&atilde; đun s&ocirc;i để nguội v&agrave;o đầy hũ, phải đảm bảo ớt tỏi ngập trong nước dấm.</li>\r\n	<li>Để lọ dấm tỏi ớt nơi tho&aacute;ng m&aacute;t chừng 2 &ndash; 3 ng&agrave;y để l&ecirc;n men chua l&agrave; c&oacute; thể mang ra sử dụng.</li>\r\n	<li>T&ugrave;y theo sở th&iacute;ch (ăn chua hay ngọt) m&agrave; c&oacute; thể tăng giảm lượng dấm, đường. Qu&aacute; 1 tuần n&ecirc;n để dấm v&agrave;o tủ lạnh để giữ được nguy&ecirc;n hương vị.</li>\r\n</ul>\r\n', 95000.00, 'Tùy theo sở thích (ăn chua hay ngọt) mà có thể tăng giảm lượng dấm, đường. Quá 1 tuần nên để dấm vào tủ lạnh để giữ được nguyên hương vị.', 100, 4, 0, '2020-09-19 23:40:31', b'1', 'ot-sung.jpg', 0, NULL),
(6, 'Thanh Long (1kg)', 'thanh-long-1kg-', '<p><strong>Thanh long</strong>&nbsp;l&agrave; một loại tr&aacute;i c&acirc;y mềm, c&oacute; vị ngon ngọt, m&aacute;t bổ, được nhiều người y&ecirc;u th&iacute;ch. Thực phẩm thường được d&ugrave;ng l&agrave;m m&oacute;n tr&aacute;ng miệng, mời kh&aacute;ch hay l&agrave;m sinh tố, nước giải kh&aacute;t uống h&agrave;ng ng&agrave;y.&nbsp;Thanh long c&oacute; chứa vitamin C, B1, B2 v&agrave; B3, c&aacute;c kho&aacute;ng chất thiết yếu bao gồm phốt pho, sắt v&agrave; canxi, rất tốt cho sức khỏe. Thực phẩm c&oacute; t&aacute;c dụng l&agrave;m đẹp da, chống ung thư, cải thiện sức khỏe tim mạch, kiểm so&aacute;t v&agrave; ph&ograve;ng chống bệnh tiểu đường, cải thiện hệ thống ti&ecirc;u h&oacute;a v&agrave; đặc biệt rất tốt cho mắt.</p>\r\n\r\n<p><strong>Thanh long</strong>&nbsp;do VinMart ph&acirc;n phối&nbsp;được trồng v&agrave; chăm s&oacute;c bằng phương ph&aacute;p truyền thống, c&oacute; nguồn gốc đảm bảo. Thực phẩm tuyệt đối kh&ocirc;ng sử dụng thuốc trừ s&acirc;u, c&aacute;c th&agrave;nh phần h&oacute;a học, đ&atilde; được Bộ Y tế kiểm duyệt chất lượng, đảm bảo cho sức khỏe người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<hr />\r\n<p><strong>Lợi &iacute;ch sức khỏe tuyệt vời từ thanh long</strong></p>\r\n\r\n<p><strong>Thanh long</strong>&nbsp;l&agrave; một nguồn cung cấp vitamin C tuyệt vời. Vitamin C c&oacute; một vai tr&ograve; quan trọng hỗ trợ hệ miễn dịch v&agrave; thậm ch&iacute; c&oacute; thể gi&uacute;p nhanh khỏi v&agrave; giảm mức độ nghi&ecirc;m trọng của cảm lạnh th&ocirc;ng thường.</p>\r\n\r\n<p>Một trong những lợi &iacute;ch sức khỏe tốt nhất của&nbsp;<strong>thanh long</strong>&nbsp;l&agrave; gi&uacute;p giảm vi&ecirc;m khớp.&nbsp;<strong>Thanh long</strong>&nbsp;được gọi l&agrave; tr&aacute;i c&acirc;y chống vi&ecirc;m. Những người bị vi&ecirc;m khớp được khuyến kh&iacute;ch th&ecirc;m thanh long trong chế độ ăn uống l&agrave;nh mạnh của họ.</p>\r\n\r\n<p><strong>Thanh long</strong>&nbsp;rất gi&agrave;u vitamin A ở dạng carotene- loại chất cần thiết cho v&otilde;ng mạc, độ s&aacute;ng v&agrave; tầm nh&igrave;n của mắt. Nhiều vấn đề về mắt, đặc biệt l&agrave; tho&aacute;i h&oacute;a điểm v&agrave;ng li&ecirc;n quan đến tuổi t&aacute;c, c&oacute; thể được g&acirc;y ra bởi sự thiếu hụt vitamin A. Thanh long c&oacute; t&aacute;c dụng duy tr&igrave; v&agrave; cải thiện thị lực.</p>\r\n\r\n<p><strong>Thanh long</strong>&nbsp;c&oacute; thể gi&uacute;p cải thiện sức khỏe tim mạch bằng c&aacute;ch giảm mức cholesterol xấu v&agrave; bổ sung th&ecirc;m cholesterol tốt. Tr&aacute;i c&acirc;y n&agrave;y rất gi&agrave;u chất b&eacute;o kh&ocirc;ng b&atilde;o h&ograve;a đơn gi&uacute;p tr&aacute;i tim được nghỉ ngơi trong t&igrave;nh trạng tốt nhất</p>\r\n', 25000.00, 'Thanh long có thể giúp cải thiện sức khỏe tim mạch bằng cách giảm mức cholesterol xấu và bổ sung thêm cholesterol tốt. Trái cây này rất giàu chất béo không bão hòa đơn giúp trái tim được nghỉ ngơi trong tình trạng tốt nhất', 98, 4, 1, '2020-09-19 23:41:24', b'1', 'thanh-long.jpg', 3, NULL),
(7, 'Xoài Tứ Quý (1kg)', 'xoai-tu-quy-1kg-', '<p>Trong năm&nbsp;giống xo&agrave;i đặc trưng của&nbsp;miền T&acirc;y nắng gi&oacute;&nbsp;th&igrave; Xo&agrave;i C&aacute;t Ho&agrave; Lộc v&agrave;&nbsp;<strong>Xo&agrave;i Tứ Qu&yacute;&nbsp;</strong>l&agrave; hai giống nổi tiếng nhất v&igrave; cho tr&aacute;i ngon, vị ngọt thanh, tr&aacute;i to v&agrave; mang lại hiệu quả kinh tế cao.&nbsp;<strong>Xo&agrave;i Tứ Qu&yacute;</strong>&nbsp;&iacute;t xơ, nhiều bột, vỏ mỏng, hạt nhỏ, khi tr&aacute;i&nbsp;ch&iacute;n dễ bị dập, thịt bở k&eacute;m dai n&ecirc;n loại quả n&agrave;y th&iacute;ch hợp ăn khi tr&aacute;i c&ograve;n hơi non, hương vị ngọt v&agrave; thịt quả&nbsp;gi&ograve;n rất hấp dẫn.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ&nbsp;l&agrave; loại quả được ưa chuộng l&agrave;m m&oacute;n ăn vặt h&agrave;ng ng&agrave;y m&agrave;&nbsp;<strong>Xo&agrave;i Tứ Qu&yacute;</strong>&nbsp;c&ograve;n được ưa chuộng d&ugrave;ng l&agrave;m qu&agrave; biếu tặng, b&agrave;y m&acirc;m quả thờ c&uacute;ng v&agrave; cũng&nbsp;c&oacute; nhiều c&ocirc;ng dụng hữu &iacute;ch đối với sức khỏe. Sản phẩm do VinMart cung cấp được vận chuyển từ những vườn xo&agrave;i&nbsp;trồng v&agrave; chăm s&oacute;c bằng phương ph&aacute;p truyền thống, c&oacute; nguồn gốc đảm bảo, tuyệt đối kh&ocirc;ng sử dụng thuốc trừ s&acirc;u, c&aacute;c th&agrave;nh phần h&oacute;a học n&ecirc;n đảm bảo cho sức khỏe người ti&ecirc;u d&ugrave;ng.</p>\r\n', 35000.00, 'Không chỉ là loại quả được ưa chuộng làm món ăn vặt hàng ngày mà Xoài Tứ Quý còn được ưa chuộng dùng làm quà biếu tặng', 95, 4, 3, '2020-09-19 23:42:21', b'0', 'xoai-tu-quy-1kg.jpg', 0, NULL),
(8, 'Bắp giò heo Vissan 100g', 'bap-gio-heo-vissan-100g', '<p><strong>Bắp gi&ograve; heo Vissan</strong>&nbsp;được ph&acirc;n phối bởi VinMart &ndash;&nbsp;hệ thống si&ecirc;u thị c&oacute; uy t&iacute;n trong việc cung ứng nguồn thực phẩm tươi sạch cho thị trường. Sản phẩm&nbsp;được sản xuất v&agrave; sơ chế theo quy tr&igrave;nh kh&eacute;p k&iacute;n dưới sự gi&aacute;m s&aacute;t v&agrave; kiểm tra nghi&ecirc;m ngặt, đảm bảo vệ sinh an to&agrave;n thực phẩm. Do đ&oacute;, người d&ugrave;ng c&oacute; thể y&ecirc;n t&acirc;m khi lựa chọn ti&ecirc;u d&ugrave;ng cũng như tiết kiệm được đ&aacute;ng kể thời gian sơ chế, chuẩn bị sản phẩm.&nbsp;Đối với những người bận rộn, kh&ocirc;ng c&oacute; nhiều thời gian chuẩn bị bữa ăn th&igrave; thực phẩm chế biến sẵn l&agrave; một giải ph&aacute;p hữu hiệu. Sản phẩm gi&uacute;p tiết kiệm thời gian trong kh&acirc;u sơ chế, chế biến mang đến cho cả nh&agrave; bữa ăn ngon v&agrave; đầy đủ chất dinh dưỡng.</p>\r\n\r\n<p>Protein trong thịt heo c&oacute; tới hơn 20 loại acid amin kh&ocirc;ng thay thế được. Thậm ch&iacute;, c&aacute;c axit amin n&agrave;y c&ograve;n tham gia v&agrave;o qu&aacute; tr&igrave;nh tổng hợp, h&igrave;nh th&agrave;nh tế b&agrave;o mới trong cơ thể.&nbsp;Ngo&agrave;i ra, trong thịt heo&nbsp;c&ograve;n chứa c&aacute;c chất chiết xuất tan trong nước (creatin, glycogen, glucoza, acid latic&hellip;) c&oacute; m&ugrave;i vị đặc biệt, k&iacute;ch th&iacute;ch tiết dịch vị mạnh, tốt cho hệ ti&ecirc;u h&oacute;a. Kh&ocirc;ng nhưng thế, protein của thịt heo cũng rất cần thiết để tạo m&ocirc; v&agrave; phục hồi c&aacute;c tế b&agrave;o đ&atilde; mất đồng thời, ch&uacute;ng tham gia tạo enzym, hormone v&agrave; c&aacute;c thể miễn dịch.</p>\r\n\r\n<hr />\r\n<p><strong>Gợi &yacute; c&aacute;ch chế biến&nbsp;m&oacute;n b&uacute;n b&ograve; gi&ograve; heo</strong></p>\r\n\r\n<p><u><strong>Nguy&ecirc;n liệu:</strong></u></p>\r\n\r\n<ul>\r\n	<li>Ch&acirc;n gi&ograve; hoặc bắp gi&ograve;</li>\r\n	<li>Xương lợn (xương hom)</li>\r\n	<li>Thịt ch&acirc;n gi&ograve; r&uacute;t xương</li>\r\n	<li>Thịt b&ograve; (thịt g&aacute;y l&agrave; ngon nhất)</li>\r\n	<li>Gi&aacute; đỗ</li>\r\n	<li>Sả, gừng, ớt, sa tế, mắm t&ocirc;m, gia vị, bột n&ecirc;m</li>\r\n	<li>H&agrave;nh t&acirc;y, rau thơm, h&agrave;nh xanh, chanh (hoặc quất)</li>\r\n	<li>B&uacute;n tươi</li>\r\n</ul>\r\n\r\n<p><u><strong>C&aacute;ch l&agrave;m:</strong></u></p>\r\n\r\n<ul>\r\n	<li>Xương lợn rửa sạch, đun s&ocirc;i nước đầu rồi đổ đi, rửa lại lượt nữa. Cho xương v&agrave;o ninh, lấy nước ngọt, bỏ x&aacute;c xương.</li>\r\n	<li>Cho m&oacute;ng gi&ograve; v&agrave; thịt ch&acirc;n gi&ograve; r&uacute;t xương (được b&oacute; chặt bằng chỉ để sau th&aacute;i ch&iacute;n cho đẹp mắt) v&agrave;o nồi nước xương hầm. Đun s&ocirc;i, vớt bọt, vặn lửa liu riu.</li>\r\n	<li>Thịt ch&acirc;n gi&ograve; r&uacute;t xương luộc ch&iacute;n, vớt ra thả v&agrave;o b&aacute;t nước lạnh, rồi để r&aacute;o. C&oacute; thể cho v&agrave;o tủ lạnh, ngăn m&aacute;t, để l&uacute;c th&aacute;i miếng thịt được mỏng, đẹp v&agrave; dễ th&aacute;i.</li>\r\n	<li>Tiếp tục cho thịt b&ograve; v&agrave;o nồi nước để luộc. Khi nồi nước d&ugrave;ng s&ocirc;i, vặn nhỏ lửa, li&ecirc;n tục vớt bọt cho nước được trong.</li>\r\n	<li>Xả đập dập, h&agrave;nh t&acirc;y bổ 6, thả v&agrave;o nồi nước, n&ecirc;m nếm gia vị cho vừa ăn.</li>\r\n	<li>Thị b&ograve; luộc mềm, vớt ra, thả v&agrave;o nước lạnh, sau đ&oacute; để r&aacute;o v&agrave; cũng cho v&agrave;o tủ lạnh ngăn m&aacute;t để khi th&aacute;i dễ d&agrave;ng hơn.</li>\r\n	<li>C&oacute; thể tạo m&agrave;u cho nước d&ugrave;ng bằng sa tế loại ngon, hoặc nếu c&oacute; thể, chưng nước m&agrave;u bằng dầu ăn với hạt điều.</li>\r\n	<li>Thịt b&ograve;, thịt ch&acirc;n gi&ograve; r&uacute;t xương th&aacute;i mỏng, to bản.</li>\r\n	<li>Gi&aacute; trụng qua nước s&ocirc;i. B&uacute;n trụng nước s&ocirc;i.</li>\r\n	<li>H&agrave;nh xanh, rau thơm th&aacute;i nhỏ. H&agrave;nh củ x&eacute;.</li>\r\n	<li>B&uacute;n sắp ra b&aacute;t, b&agrave;y thị b&ograve;, thịt ch&acirc;n gi&ograve;, gi&aacute;, h&agrave;nh, rau thơm, chan nước d&ugrave;ng v&agrave; ch&acirc;n&nbsp;gi&ograve; l&ecirc;n</li>\r\n</ul>\r\n', 22000.00, 'Bắp giò heo Vissan được phân phối bởi VinMart – hệ thống siêu thị có uy tín trong việc cung ứng nguồn thực phẩm tươi sạch cho thị trường', 99, 1, 1, '2020-09-20 09:32:51', b'1', 'bap-gio-heo-vissan-1kg-1.jpg', 0, NULL),
(9, 'Cá Basa không đầu 1kg', 'ca-basa-khong-dau-1kg', '<p><strong>C&aacute; basa</strong>&nbsp;kh&ocirc;ng đầu do VinMart cung cấp được chọn lọc&nbsp;từ c&aacute; basa tươi ngon, theo quy tr&igrave;nh kh&eacute;p k&iacute;n, an to&agrave;n cho sức khỏe người ti&ecirc;u d&ugrave;ng. Sản phẩm được sơ chế gi&uacute;p bạn tiết kiệm tối đa thời gian nấu nướng. T&ugrave;y theo khẩu vị mỗi người, bạn c&oacute; thể chế biến&nbsp;<strong>C&aacute; basa</strong>&nbsp;th&agrave;nh c&aacute;c m&oacute;n ăn kh&aacute;c nhau như c&aacute;c m&oacute;n kho truyền thống, c&aacute; basa hấp x&igrave; dầu, c&aacute; basa sốt c&agrave;, chi&ecirc;n x&ugrave;&hellip; mang lại nhiều m&oacute;n ăn ngon, hấp dẫn.</p>\r\n\r\n<p><strong>C&aacute; basa</strong>&nbsp;c&oacute; nhiều protein, chất kho&aacute;ng quan trọng v&agrave; c&oacute; gần đủ c&aacute;c loại vitamin, đặc biệt nhiều vitamin A v&agrave; D trong gan c&aacute; v&agrave; một số vitamin nh&oacute;m B. Hơn thế nữa,&nbsp;<strong>C&aacute; basa</strong>&nbsp;l&agrave; lo&agrave;i c&oacute; gi&aacute; trị dinh dưỡng cao v&igrave; chứa nhiều chất đạm, &iacute;t b&eacute;o, nhiều EPA v&agrave; DHA, &iacute;t cholesterol. Do đ&oacute;, sử dụng thịt c&aacute; basa 2 lần một tuần sẽ gi&uacute;p cơ thể bạn v&agrave; gia đ&igrave;nh khỏe mạnh.</p>\r\n\r\n<hr />\r\n<p>Gợi &yacute; một số m&oacute;n ăn ngon từ c&aacute; basa</p>\r\n\r\n<p>Bạn c&oacute; thể chế biến<strong>&nbsp;C&aacute; basa</strong>&nbsp;th&agrave;nh c&aacute;c m&oacute;n ăn kh&aacute;c nhau như c&aacute;c m&oacute;n kho truyền thống,&nbsp;<u><em>canh chua c&aacute; basa</em></u>,&nbsp;<em><u>c&aacute; basa nướng giấy bạc</u></em>,&nbsp;<em><u>c&aacute; ba sa kho h&agrave;nh ớt</u></em>,&nbsp;<u><em>c&aacute; basa kho dứa</em></u>, chả c&aacute; basa,&nbsp;<u>c&aacute; basa sa tế xi&ecirc;n que chi&ecirc;n v&agrave;ng</u>&hellip; mang lại nhiều m&oacute;n ăn ngon, hấp dẫn.</p>\r\n\r\n<hr />\r\n<p><strong>Lợi &iacute;ch của việc ăn c&aacute;</strong></p>\r\n\r\n<p>C&aacute;c loại thịt động vật như lợn, b&ograve;&hellip; chứa rất nhiều protein, song nếu ăn nhiều lại kh&ocirc;ng tốt cho sức khỏe v&igrave; c&oacute; thể g&acirc;y ra chứng thừa đạm, b&eacute;o ph&igrave;, tiểu đường&hellip; Trong khi đ&oacute;, protein trong c&aacute; rất dễ hấp thụ, đảm bảo rằng dạ d&agrave;y kh&ocirc;ng phải l&agrave;m việc nhiều giờ để ti&ecirc;u h&oacute;a lượng c&aacute; bạn đ&atilde; ăn.</p>\r\n', 55000.00, 'Bạn có thể chế biến Cá basa thành các món ăn khác nhau như các món kho truyền thống, canh chua cá basa, cá basa nướng giấy bạc, cá ba sa kho hành ớt, cá basa kho dứa', 100, 3, 0, '2020-09-20 09:34:17', b'1', 'ca-basa-khong-dau-1kg.jpg', 0, NULL),
(10, 'Thịt heo say Vissan 1kg', 'thit-heo-say-vissan-1kg', '<p><strong>Thịt heo&nbsp;xay</strong>&nbsp;do Vissan&nbsp;cung cấp được sơ chế sạch, xay th&agrave;nh c&aacute;c sợi nhỏ v&agrave; đ&oacute;ng g&oacute;i k&iacute;n mang lại sự tiện lợi cao cho người sử dụng. Sản phẩm được lấy từ nguồn nguy&ecirc;n liệu tự nhi&ecirc;n, kh&ocirc;ng dịch bệnh, đảm bảo vệ sinh an to&agrave;n thực phẩm. Th&agrave;nh phần dinh dưỡng c&oacute; trong thịt heo&nbsp;xay gi&uacute;p bạn bổ sung c&aacute;c dưỡng chất thiết yếu cho cơ thể ngay khi cần. Ngo&agrave;i ra, thịt heo&nbsp;c&ograve;n l&agrave; thực phẩm chứa nhiều hemoglobin, c&oacute; t&aacute;c dụng chống thiếu m&aacute;u. Cơ thể sẽ dễ hấp thụ hemoglobin trong thịt hơn l&agrave; hemoglobin trong thực vật. Do đ&oacute;, thịt heo&nbsp;c&oacute; t&aacute;c dụng bổ sung sắt hiệu quả.</p>\r\n\r\n<p>Với thịt heo&nbsp;xay, bạn c&oacute; thể d&ugrave;ng để chế biến th&agrave;nh c&aacute;c m&oacute;n ăn đa dạng như:&nbsp;<u><em>mực nhồi thịt</em></u>,&nbsp;<u><em>thịt vi&ecirc;n</em></u>,&nbsp;<u><em>x&iacute;u mại</em></u>,&nbsp;<u><em>thịt vi&ecirc;n đậu phụ</em></u>,&nbsp;thịt cuộn bắp cải, nhồi đậu hay c&aacute;c m&oacute;n nem&hellip; mang lại hương vị thơm ngon cho bữa cơm gia đ&igrave;nh th&ecirc;m phong ph&uacute;, gi&agrave;u dinh dưỡng. Sản phẩm ph&ugrave; hợp cho cuộc sống bận rộn của bạn.</p>\r\n\r\n<hr />\r\n<p><strong>Gợi &yacute; m&oacute;n khổ qua nhồi thịt nấu nấm</strong></p>\r\n\r\n<p><u><strong>C&aacute;ch l&agrave;m:</strong></u></p>\r\n\r\n<ul>\r\n	<li>200g thịt heo xay</li>\r\n	<li>2 tr&aacute;i khổ qua lớn</li>\r\n	<li>5-6 tai nấm đ&ocirc;ng c&ocirc; tươi</li>\r\n	<li>3 tai nấm m&egrave;o</li>\r\n	<li>1 củ c&agrave; rốt</li>\r\n	<li>1 lọn miến t&agrave;u</li>\r\n	<li>Nước d&ugrave;ng g&agrave;, hoặc nước hầm xương</li>\r\n	<li>H&agrave;nh l&aacute;, muối, ti&ecirc;u, hạt n&ecirc;m, nước mắm, dầu ăn, h&agrave;nh t&iacute;m băm</li>\r\n</ul>\r\n\r\n<p><u><strong>Nguy&ecirc;n liệu:</strong></u></p>\r\n\r\n<ul>\r\n	<li>Khổ qua rửa sạch, cắt khoanh tr&ograve;n d&agrave;y khoảng 2-3cm. Tiếp đến moi ruột ra.&nbsp;Nếu muốn giảm bớt vị đắng bạn c&oacute; thể ch&agrave; x&aacute;t muối l&ecirc;n khổ qua sau đ&oacute; để trong 30 ph&uacute;t rồi rửa sạch lại với nước nhiều lần cho khỏi mặn.</li>\r\n	<li>Nấm m&egrave;o ng&acirc;m nở, rửa sạch, cắt gốc, th&aacute;i sợi. Nấm đ&ocirc;ng c&ocirc; rửa sạch, để r&aacute;o. C&agrave; rốt gọt vỏ, th&aacute;i l&aacute;t mỏng, tỉa hoa. Lấy 1 &iacute;t cắt hạt lựu nhỏ.</li>\r\n	<li>H&agrave;nh l&aacute; l&agrave;m sạch, cắt nhỏ. Cho thịt băm, c&agrave; rốt băm, nấm m&egrave;o, miến t&agrave;u cắt nhỏ, 1 muỗng c&agrave;-ph&ecirc; h&agrave;nh t&iacute;m băm, 1 muỗng c&agrave;&nbsp;ph&ecirc; hạt n&ecirc;m, 1 muỗng c&agrave;&nbsp;ph&ecirc; nước mắm, ti&ecirc;u v&agrave;o t&ocirc; trộn đều, để 15 ph&uacute;t cho thấm gia vị.</li>\r\n	<li>Nhồi nh&acirc;n thịt v&agrave;o khổ qua, n&eacute;n chặt.</li>\r\n	<li>Cho 1 muỗng canh dầu ăn v&agrave;o chảo, dầu n&oacute;ng cho nấm đ&ocirc;ng c&ocirc;, c&agrave; rốt cắt khoanh v&agrave;o đảo đều. Tr&uacute;t khoảng 500ml nước d&ugrave;ng v&agrave;o nồi đun s&ocirc;i. Cho khổ qua nhồi thịt v&agrave;o nấu cho đến khi ch&iacute;n mềm khoảng 20 ph&uacute;t l&agrave; được. N&ecirc;m nếm nước mắm, hạt n&ecirc;m, ti&ecirc;u vừa ăn.</li>\r\n	<li>Cho h&agrave;nh v&agrave;o, tắt bếp. M&uacute;c s&uacute;p khổ qua nhồi thịt nấu nấm ra t&ocirc;, ăn với cơm trắng</li>\r\n</ul>\r\n', 28000.00, 'Với thịt heo xay, bạn có thể dùng để chế biến thành các món ăn đa dạng như: mực nhồi thịt, thịt viên, xíu mại, thịt viên đậu phụ,', 99, 1, 1, '2020-09-20 09:36:20', b'1', 'thit-heo.jpg', 0, NULL),
(11, 'Hamburger', 'hamburger', '<p><strong>Thịt heo&nbsp;xay</strong>&nbsp;do Vissan&nbsp;cung cấp được sơ chế sạch, xay th&agrave;nh c&aacute;c sợi nhỏ v&agrave; đ&oacute;ng g&oacute;i k&iacute;n mang lại sự tiện lợi cao cho người sử dụng. Sản phẩm được lấy từ nguồn nguy&ecirc;n liệu tự nhi&ecirc;n, kh&ocirc;ng dịch bệnh, đảm bảo vệ sinh an to&agrave;n thực phẩm. Th&agrave;nh phần dinh dưỡng c&oacute; trong thịt heo&nbsp;xay gi&uacute;p bạn bổ sung c&aacute;c dưỡng chất thiết yếu cho cơ thể ngay khi cần. Ngo&agrave;i ra, thịt heo&nbsp;c&ograve;n l&agrave; thực phẩm chứa nhiều hemoglobin, c&oacute; t&aacute;c dụng chống thiếu m&aacute;u. Cơ thể sẽ dễ hấp thụ hemoglobin trong thịt hơn l&agrave; hemoglobin trong thực vật. Do đ&oacute;, thịt heo&nbsp;c&oacute; t&aacute;c dụng bổ sung sắt hiệu quả.</p>\r\n\r\n<p>Với thịt heo&nbsp;xay, bạn c&oacute; thể d&ugrave;ng để chế biến th&agrave;nh c&aacute;c m&oacute;n ăn đa dạng như:&nbsp;<u><em>mực nhồi thịt</em></u>,&nbsp;<u><em>thịt vi&ecirc;n</em></u>,&nbsp;<u><em>x&iacute;u mại</em></u>,&nbsp;<u><em>thịt vi&ecirc;n đậu phụ</em></u>,&nbsp;thịt cuộn bắp cải, nhồi đậu hay c&aacute;c m&oacute;n nem&hellip; mang lại hương vị thơm ngon cho bữa cơm gia đ&igrave;nh th&ecirc;m phong ph&uacute;, gi&agrave;u dinh dưỡng. Sản phẩm ph&ugrave; hợp cho cuộc sống bận rộn của bạn.</p>\r\n\r\n<hr />\r\n<p><strong>Gợi &yacute; m&oacute;n khổ qua nhồi thịt nấu nấm</strong></p>\r\n\r\n<p><u><strong>C&aacute;ch l&agrave;m:</strong></u></p>\r\n\r\n<ul>\r\n	<li>200g thịt heo xay</li>\r\n	<li>2 tr&aacute;i khổ qua lớn</li>\r\n	<li>5-6 tai nấm đ&ocirc;ng c&ocirc; tươi</li>\r\n	<li>3 tai nấm m&egrave;o</li>\r\n	<li>1 củ c&agrave; rốt</li>\r\n	<li>1 lọn miến t&agrave;u</li>\r\n	<li>Nước d&ugrave;ng g&agrave;, hoặc nước hầm xương</li>\r\n	<li>H&agrave;nh l&aacute;, muối, ti&ecirc;u, hạt n&ecirc;m, nước mắm, dầu ăn, h&agrave;nh t&iacute;m băm</li>\r\n</ul>\r\n\r\n<p><u><strong>Nguy&ecirc;n liệu:</strong></u></p>\r\n\r\n<ul>\r\n	<li>Khổ qua rửa sạch, cắt khoanh tr&ograve;n d&agrave;y khoảng 2-3cm. Tiếp đến moi ruột ra.&nbsp;Nếu muốn giảm bớt vị đắng bạn c&oacute; thể ch&agrave; x&aacute;t muối l&ecirc;n khổ qua sau đ&oacute; để trong 30 ph&uacute;t rồi rửa sạch lại với nước nhiều lần cho khỏi mặn.</li>\r\n	<li>Nấm m&egrave;o ng&acirc;m nở, rửa sạch, cắt gốc, th&aacute;i sợi. Nấm đ&ocirc;ng c&ocirc; rửa sạch, để r&aacute;o. C&agrave; rốt gọt vỏ, th&aacute;i l&aacute;t mỏng, tỉa hoa. Lấy 1 &iacute;t cắt hạt lựu nhỏ.</li>\r\n	<li>H&agrave;nh l&aacute; l&agrave;m sạch, cắt nhỏ. Cho thịt băm, c&agrave; rốt băm, nấm m&egrave;o, miến t&agrave;u cắt nhỏ, 1 muỗng c&agrave;-ph&ecirc; h&agrave;nh t&iacute;m băm, 1 muỗng c&agrave;&nbsp;ph&ecirc; hạt n&ecirc;m, 1 muỗng c&agrave;&nbsp;ph&ecirc; nước mắm, ti&ecirc;u v&agrave;o t&ocirc; trộn đều, để 15 ph&uacute;t cho thấm gia vị.</li>\r\n	<li>Nhồi nh&acirc;n thịt v&agrave;o khổ qua, n&eacute;n chặt.</li>\r\n	<li>Cho 1 muỗng canh dầu ăn v&agrave;o chảo, dầu n&oacute;ng cho nấm đ&ocirc;ng c&ocirc;, c&agrave; rốt cắt khoanh v&agrave;o đảo đều. Tr&uacute;t khoảng 500ml nước d&ugrave;ng v&agrave;o nồi đun s&ocirc;i. Cho khổ qua nhồi thịt v&agrave;o nấu cho đến khi ch&iacute;n mềm khoảng 20 ph&uacute;t l&agrave; được. N&ecirc;m nếm nước mắm, hạt n&ecirc;m, ti&ecirc;u vừa ăn.</li>\r\n	<li>Cho h&agrave;nh v&agrave;o, tắt bếp. M&uacute;c s&uacute;p khổ qua nhồi thịt nấu nấm ra t&ocirc;, ăn với cơm trắng</li>\r\n</ul>\r\n', 25000.00, 'Đây là phẩn mô tả ngắn chiếc bánh Hamburger', 50, 2, 0, '2020-09-20 09:40:20', b'1', 'pd-5.jpg', 0, NULL),
(12, 'Thịt lợn ba chỉ 1kg', 'thit-lon-ba-chi-1kg', '<p>Ớt chu&ocirc;ng hay c&ograve;n gọi l&agrave; ớt t&acirc;y, ớt ngọt. Đ&acirc;y l&agrave; loại quả gia vị, c&oacute; m&agrave;u sắc rực rỡ (đỏ, v&agrave;ng, xanh), quả to tr&ograve;n hơn c&aacute;c loại ớt th&ocirc;ng thường, vị gi&ograve;n, ngọt nhẹ, &iacute;t cay, m&ugrave;i vị đặc trưng. Với hương vị v&agrave; m&agrave;u sắc đặc biệt,&nbsp;<strong>Ớt chu&ocirc;ng đỏ Đ&agrave; Lạt PF</strong>&nbsp;c&oacute; thể chế biến với nhiều nguy&ecirc;n liệu kh&aacute;c nhau, cho m&oacute;n ăn thơm ngon, hấp dẫn như b&ecirc; x&agrave;o xả ớt, ớt canh x&agrave;o mề g&agrave;, b&ograve; l&uacute;c lắc, pizza&hellip;</p>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; hương vị thơm ngon,&nbsp;<strong>Ớt chu&ocirc;ng đỏ Đ&agrave; Lạt PF&nbsp;</strong>c&ograve;n chứa nhiều protit, đường, canxi, vitamin B1, B2&nbsp;hơn so với c&aacute;c loại ớt kh&aacute;c. Sản phẩm rất tốt cho da, gi&uacute;p bảo vệ m&agrave;ng collagen v&agrave; nu&ocirc;i dưỡng da tốt nhất. Đồng thời vitamin A v&agrave; C gi&uacute;p ph&ograve;ng chống qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a sớm của tế b&agrave;o, ung thư da hoặc c&aacute;c bệnh tim mạch một c&aacute;ch hiệu quả.</p>\r\n\r\n<hr />\r\n<p><strong>Gợi &yacute; một số m&oacute;n ngon từ ớt chu&ocirc;ng</strong></p>\r\n\r\n<p>Ớt chu&ocirc;ng đem lại hương vị thơm ngon hơn cho c&aacute;c m&oacute;n x&agrave;o như thịt b&ograve; x&agrave;o, thịt b&ecirc; x&agrave;o, b&aacute;nh gạo x&agrave;o H&agrave;n Quốc&hellip; Hoặc bạn cũng c&oacute; thể tham khảo c&aacute;ch chế biến một số m&oacute;n ăn dưới đ&acirc;y để đổi vị cho cả gia đ&igrave;nh&nbsp;nh&eacute;</p>\r\n', 12000.00, 'Ớt chuông đem lại hương vị thơm ngon hơn cho các món xào như thịt bò xào, thịt bê xào, bánh gạo xào Hàn Quốc… Hoặc bạn cũng có thể tham khảo cách chế biến một số món ăn dưới đây để đổi vị cho cả gia đình nhé', 99, 1, 1, '2020-09-20 09:56:03', b'1', 'product-1.jpg', 0, NULL),
(13, 'Xoài Thái Lan 1kg', 'xoai-thai-lan-1kg', '<p>Ớt chu&ocirc;ng hay c&ograve;n gọi l&agrave; ớt t&acirc;y, ớt ngọt. Đ&acirc;y l&agrave; loại quả gia vị, c&oacute; m&agrave;u sắc rực rỡ (đỏ, v&agrave;ng, xanh), quả to tr&ograve;n hơn c&aacute;c loại ớt th&ocirc;ng thường, vị gi&ograve;n, ngọt nhẹ, &iacute;t cay, m&ugrave;i vị đặc trưng. Với hương vị v&agrave; m&agrave;u sắc đặc biệt,&nbsp;<strong>Ớt chu&ocirc;ng đỏ Đ&agrave; Lạt PF</strong>&nbsp;c&oacute; thể chế biến với nhiều nguy&ecirc;n liệu kh&aacute;c nhau, cho m&oacute;n ăn thơm ngon, hấp dẫn như b&ecirc; x&agrave;o xả ớt, ớt canh x&agrave;o mề g&agrave;, b&ograve; l&uacute;c lắc, pizza&hellip;</p>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; hương vị thơm ngon,&nbsp;<strong>Ớt chu&ocirc;ng đỏ Đ&agrave; Lạt PF&nbsp;</strong>c&ograve;n chứa nhiều protit, đường, canxi, vitamin B1, B2&nbsp;hơn so với c&aacute;c loại ớt kh&aacute;c. Sản phẩm rất tốt cho da, gi&uacute;p bảo vệ m&agrave;ng collagen v&agrave; nu&ocirc;i dưỡng da tốt nhất. Đồng thời vitamin A v&agrave; C gi&uacute;p ph&ograve;ng chống qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a sớm của tế b&agrave;o, ung thư da hoặc c&aacute;c bệnh tim mạch một c&aacute;ch hiệu quả.</p>\r\n\r\n<hr />\r\n<p><strong>Gợi &yacute; một số m&oacute;n ngon từ ớt chu&ocirc;ng</strong></p>\r\n\r\n<p>Ớt chu&ocirc;ng đem lại hương vị thơm ngon hơn cho c&aacute;c m&oacute;n x&agrave;o như thịt b&ograve; x&agrave;o, thịt b&ecirc; x&agrave;o, b&aacute;nh gạo x&agrave;o H&agrave;n Quốc&hellip; Hoặc bạn cũng c&oacute; thể tham khảo c&aacute;ch chế biến một số m&oacute;n ăn dưới đ&acirc;y để đổi vị cho cả gia đ&igrave;nh&nbsp;nh&eacute;</p>\r\n', 10000.00, 'Ớt chuông đem lại hương vị thơm ngon hơn cho các món xào như thịt bò xào, thịt bê xào, bánh gạo xào Hàn Quốc… Hoặc bạn cũng có thể tham khảo cách chế biến một số món ăn dưới đây để đổi vị cho cả gia đình nhé', 50, 4, 0, '2020-09-20 09:57:08', b'1', 'pd-4.jpg', 1, NULL),
(14, 'Đùi gà Tây 1 cái', 'dui-ga-tay-1-cai', '<p>Ớt chu&ocirc;ng hay c&ograve;n gọi l&agrave; ớt t&acirc;y, ớt ngọt. Đ&acirc;y l&agrave; loại quả gia vị, c&oacute; m&agrave;u sắc rực rỡ (đỏ, v&agrave;ng, xanh), quả to tr&ograve;n hơn c&aacute;c loại ớt th&ocirc;ng thường, vị gi&ograve;n, ngọt nhẹ, &iacute;t cay, m&ugrave;i vị đặc trưng. Với hương vị v&agrave; m&agrave;u sắc đặc biệt,&nbsp;<strong>Ớt chu&ocirc;ng đỏ Đ&agrave; Lạt PF</strong>&nbsp;c&oacute; thể chế biến với nhiều nguy&ecirc;n liệu kh&aacute;c nhau, cho m&oacute;n ăn thơm ngon, hấp dẫn như b&ecirc; x&agrave;o xả ớt, ớt canh x&agrave;o mề g&agrave;, b&ograve; l&uacute;c lắc, pizza&hellip;</p>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; hương vị thơm ngon,&nbsp;<strong>Ớt chu&ocirc;ng đỏ Đ&agrave; Lạt PF&nbsp;</strong>c&ograve;n chứa nhiều protit, đường, canxi, vitamin B1, B2&nbsp;hơn so với c&aacute;c loại ớt kh&aacute;c. Sản phẩm rất tốt cho da, gi&uacute;p bảo vệ m&agrave;ng collagen v&agrave; nu&ocirc;i dưỡng da tốt nhất. Đồng thời vitamin A v&agrave; C gi&uacute;p ph&ograve;ng chống qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a sớm của tế b&agrave;o, ung thư da hoặc c&aacute;c bệnh tim mạch một c&aacute;ch hiệu quả.</p>\r\n\r\n<hr />\r\n<p><strong>Gợi &yacute; một số m&oacute;n ngon từ ớt chu&ocirc;ng</strong></p>\r\n\r\n<p>Ớt chu&ocirc;ng đem lại hương vị thơm ngon hơn cho c&aacute;c m&oacute;n x&agrave;o như thịt b&ograve; x&agrave;o, thịt b&ecirc; x&agrave;o, b&aacute;nh gạo x&agrave;o H&agrave;n Quốc&hellip; Hoặc bạn cũng c&oacute; thể tham khảo c&aacute;ch chế biến một số m&oacute;n ăn dưới đ&acirc;y để đổi vị cho cả gia đ&igrave;nh&nbsp;nh&eacute;</p>\r\n', 20000.00, 'Ớt chuông đem lại hương vị thơm ngon hơn cho các món xào như thịt bò xào, thịt bê xào, bánh gạo xào Hàn Quốc… Hoặc bạn cũng có thể tham khảo cách chế biến một số món ăn dưới đây để đổi vị cho cả gia đình nhé', 100, 3, 0, '2020-09-20 09:58:02', b'1', 'product-10.jpg', 0, NULL),
(15, 'Nước lúa mạch 1 hộp', 'nuoc-lua-mach-1-hop', '<p>Ớt chu&ocirc;ng hay c&ograve;n gọi l&agrave; ớt t&acirc;y, ớt ngọt. Đ&acirc;y l&agrave; loại quả gia vị, c&oacute; m&agrave;u sắc rực rỡ (đỏ, v&agrave;ng, xanh), quả to tr&ograve;n hơn c&aacute;c loại ớt th&ocirc;ng thường, vị gi&ograve;n, ngọt nhẹ, &iacute;t cay, m&ugrave;i vị đặc trưng. Với hương vị v&agrave; m&agrave;u sắc đặc biệt,&nbsp;<strong>Ớt chu&ocirc;ng đỏ Đ&agrave; Lạt PF</strong>&nbsp;c&oacute; thể chế biến với nhiều nguy&ecirc;n liệu kh&aacute;c nhau, cho m&oacute;n ăn thơm ngon, hấp dẫn như b&ecirc; x&agrave;o xả ớt, ớt canh x&agrave;o mề g&agrave;, b&ograve; l&uacute;c lắc, pizza&hellip;</p>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; hương vị thơm ngon,&nbsp;<strong>Ớt chu&ocirc;ng đỏ Đ&agrave; Lạt PF&nbsp;</strong>c&ograve;n chứa nhiều protit, đường, canxi, vitamin B1, B2&nbsp;hơn so với c&aacute;c loại ớt kh&aacute;c. Sản phẩm rất tốt cho da, gi&uacute;p bảo vệ m&agrave;ng collagen v&agrave; nu&ocirc;i dưỡng da tốt nhất. Đồng thời vitamin A v&agrave; C gi&uacute;p ph&ograve;ng chống qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a sớm của tế b&agrave;o, ung thư da hoặc c&aacute;c bệnh tim mạch một c&aacute;ch hiệu quả.</p>\r\n\r\n<hr />\r\n<p><strong>Gợi &yacute; một số m&oacute;n ngon từ ớt chu&ocirc;ng</strong></p>\r\n\r\n<p>Ớt chu&ocirc;ng đem lại hương vị thơm ngon hơn cho c&aacute;c m&oacute;n x&agrave;o như thịt b&ograve; x&agrave;o, thịt b&ecirc; x&agrave;o, b&aacute;nh gạo x&agrave;o H&agrave;n Quốc&hellip; Hoặc bạn cũng c&oacute; thể tham khảo c&aacute;ch chế biến một số m&oacute;n ăn dưới đ&acirc;y để đổi vị cho cả gia đ&igrave;nh&nbsp;nh&eacute;</p>\r\n', 50000.00, 'Ớt chuông đem lại hương vị thơm ngon hơn cho các món xào như thịt bò xào, thịt bê xào, bánh gạo xào Hàn Quốc… Hoặc bạn cũng có thể tham khảo cách chế biến một số món ăn dưới đây để đổi vị cho cả gia đình nhé', 300, 2, 0, '2020-09-20 09:59:08', b'1', 'pd-3.jpg', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(255) DEFAULT NULL,
  `setting_value` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `setting_key`, `setting_value`, `type`) VALUES
(1, 'name', 'Cửa hàng thực phẩn Fresh Food', 'text'),
(2, 'address', '55 Giải Phóng, Hai Bà Trưng, Hà Nội', 'text'),
(3, 'phone', '1900 8198', 'text'),
(4, 'email', 'tungdk228@gmail.com', 'text'),
(5, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.7176305540593!2d105.83991261501885!3d21.003953086011823!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac775d1a29b1%3A0x47ca351d075745a6!2zNTUgR2nhuqNpIFBow7NuZywgxJDhu5NuZyBUw6JtLCDEkOG7kW5nIMSQYSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1600529952799!5m2!1svi!2s\" width=\"800\" height=\"600\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'textarea'),
(6, 'facebook', 'https://www.facebook.com/dinhkhactung/', 'text'),
(7, 'twitter', 'https://www.facebook.com/dinhkhactung/', 'text'),
(8, 'linkedin', 'https://www.facebook.com/dinhkhactung/', 'text');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `thumbnail`, `link`, `status`) VALUES
(1, 'Rau Củ Quả', 'Món quà từ thiên nhiên', 'slide-1-1140x350.jpg', 'http://localhost:8080/freshfood/category/4-rau-cu-qua.html', b'1'),
(2, 'Cà Chua Xanh', 'Ngon, bổ , rẻ', 'slide-3-1140x350.jpg', 'http://localhost:8080/freshfood/2-ca-chua-da-lat-100g.html', b'1'),
(3, 'Ớt chuông đỏ Đà Lạt', 'Hương Vị miền núi thân thương', 'slide-2-1140x350.jpg', 'http://localhost:8080/freshfood/4-ot-chuong-do-da-lat-1kg-.html', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `level` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `created_at`, `active`, `level`) VALUES
(1, 'admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '55 Giải Phóng, Hai Bà Trưng, Hà Nội', '19008198', '2020-09-10 23:29:26', b'1', b'1'),
(2, 'Đinh Khắc Tùng', 'tungdk228@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Hoàng Mai', '0348520202123', '2020-09-11 23:29:26', b'1', b'0'),
(3, 'Nguyễn Văn Test', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Hoàng Mai, Ý Yên', '0348520202', '2020-09-12 23:29:26', b'1', b'0'),
(4, 'Nguyễn Văn Test23', 'test2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Hà Nội, Ý Yên', '0348520202', '2020-09-13 23:29:26', b'0', b'0'),
(5, 'Test đăng ký tài khoản', 'test123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Hà Nội, Ý Yên', '0987654321', '2020-09-20 10:24:28', b'1', b'0');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
