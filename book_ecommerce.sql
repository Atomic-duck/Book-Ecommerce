-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2022 at 03:59 PM
-- Server version: 8.0.31
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_logo`
--

CREATE TABLE `add_logo` (
  `id` int NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `add_logo`
--

INSERT INTO `add_logo` (`id`, `img`) VALUES
(1, 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `password` varchar(61) NOT NULL,
  `role` int NOT NULL DEFAULT '1',
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `password`, `role`, `email`) VALUES
(2, '1234', 1, 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` int NOT NULL,
  `description` text NOT NULL,
  `image` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `stock` int NOT NULL,
  `discount_id` int DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `price`, `description`, `image`, `created_at`, `display`, `stock`, `discount_id`, `author`) VALUES
(13, 'Nước Ép Trị Liệu Và Chế Độ Ăn Theo Phương Pháp Cơ Thể Tự Chữa Lành', 199000, 'Chúng ta đã biết gì về định nghĩa “Sống khỏe mạnh”? Và ta đã làm những gì cho sức khỏe của chính mình, cho sức khỏe của người thân yêu trong gia đình và những người bạn xung quanh?\n\nCuốn sách “Nước ép trị liệu và chế độ ăn theo phương pháp cơ thể tự chữa lành” của tác giả Emma Phạm chính là một món quà, trong đó chứa đựng những nguyên lý giúp bạn và gia đình sống khỏe hơn mỗi ngày.\n\nTuy nhiên để hiểu và áp dụng thành công nội dung trong cuốn sách này, bạn không nên bỏ sót một chương nào vì tất cả đều liên kết với nhau theo một logic. Hãy nhớ, học lý thuyết đi đôi với thực hành.\n\nTrong cuốn sách này, tác giả Emma Phạm sẽ giúp bạn:\n\n- Chỉ ra những sai lầm chúng ta hay mắc mỗi khi bị bệnh.\n\n- Chỉ ra cách áp dụng phương pháp cơ thể tự chữa lành, chữa bệnh tận gốc thay vì chữa bệnh phần ngọn.\n\n- Hướng dẫn cách chế biến các loại nước ép, trà thảo mộc, sinh tố và chế độ ăn thuần tự nhiên hỗ trợ việc điều trị hơn 40 căn bệnh thường gặp cũng như duy trì sức khỏe viên mãn.\n\n- Đưa ra 11 phương pháp sống khỏe mà chúng ta cần áp dụng thường xuyên.\n\n- Thực hành 7 ngày thanh lọc gan và học cách lắng nghe cơ thể mình là bí quyết thành công.\n\nPhạm Hương - Huấn luyện viên Yoga, người đã sử dụng các công thức nước ép trị liệu vào cuộc sống hàng ngày cho biết: “Cho đến hiện tại, khi đã trở thành một huấn luyện viên yoga, tôi càng hiểu rõ hơn tầm quan trọng của dinh dưỡng. Không thể chỉ tập luyện mà giúp cơ thể chúng ta khỏe mạnh được, chúng ta cần phải nắm được những thực phẩm đưa vào trong cơ thể chúng ta hằng ngày có tác dụng như thế nào và phải biết được nhu cầu của cơ thể mình là gì.\n\nCác bạn thân mến, hãy yêu và bảo vệ cơ thể mình hơn nữa. Tôi nghĩ rằng mỗi chúng ta sẽ luôn có những phương pháp khác nhau, hãy mở rộng tư duy và kiên nhẫn với lựa chọn của mình. Không bao giờ là muộn nếu chúng ta luôn sẵn sàng thay đổi. Bởi vì một cơ thể khỏe mạnh cần rèn luyện cả thân tâm kết hợp. Khi bạn có một sức khỏe dồi dào, cuộc sống sẽ tràn đầy năng lượng, tinh thần luôn tươi mới, và chúng ta nhìn cuộc đời này cũng sẽ nhẹ nhàng hơn”.\n\nMã hàng	8935280910980\nTên Nhà Cung Cấp	Thái Hà\nTác giả	Emma Phạm\nNXB	NXB Thế Giới\nNăm XB	2022\nTrọng lượng (gr)	340\nKích Thước Bao Bì	23 x 15 x 1.5 cm\nSố trang	340\nHình thức	Bìa Mềm\nSản phẩm hiển thị trong	\nThái Hà\nSản phẩm bán chạy nhất	Top 100 sản phẩm Y học bán chạy của tháng\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\nNước Ép Trị Liệu Và Chế Độ Ăn Theo Phương Pháp Cơ Thể Tự Chữa Lành\n\nChúng ta đã biết gì về định nghĩa “Sống khỏe mạnh”? Và ta đã làm những gì cho sức khỏe của chính mình, cho sức khỏe của người thân yêu trong gia đình và những người bạn xung quanh?\n\nCuốn sách “Nước ép trị liệu và chế độ ăn theo phương pháp cơ thể tự chữa lành” của tác giả Emma Phạm chính là một món quà, trong đó chứa đựng những nguyên lý giúp bạn và gia đình sống khỏe hơn mỗi ngày.\n\nTuy nhiên để hiểu và áp dụng thành công nội dung trong cuốn sách này, bạn không nên bỏ sót một chương nào vì tất cả đều liên kết với nhau theo một logic. Hãy nhớ, học lý thuyết đi đôi với thực hành.', '8935280910980.jpg', '2022-12-07 14:29:29', 1, 100, 1, 'Emma Phạm'),
(14, 'Sao Chúng Ta Lại Ngủ - Why We SLeep', 249000, 'Là cuốn sách về giấc ngủ đầu tiên được viết bởi chính một chuyên gia khoa học hàng đầu, giám đốc Trung tâm về Khoa học Giấc ngủ Con người của trường Đại học California, Berkeley, Sao chúng ta lại ngủ trở thành một cuộc khám phá mang tính đột phá về giấc ngủ, giải thích việc chúng ta có thể khai thác được sức mạnh biến đổi của giấc ngủ nhằm làm thay đổi cuộc sống của chúng ta trở nên tốt đẹp hơn như thế nào.\r\n\r\nGiấc ngủ từ lâu đã trở thành một trong những khía cạnh quan trọng nhất song lại được hiểu đúng giá trị ít nhất về sự sống, sức khỏe và tuổi thọ của con người chúng ta – cho tới khi xuất hiện sự bùng nổ những cuộc khám phá mang tính khoa học trong hai thập kỉ qua đã bắt đầu soi rọi ánh sáng mới mẻ về chủ đề này. Giờ đây, chuyên gia giấc ngủ kiêm nhà khoa học thần kinh xuất sắc Matthew Walker sẽ giải thích thật cặn kẽ về tầm quan trọng to lớn của giấc ngủ, điều vốn tồn tại giữa bao chức năng hoạt động khác của cơ thể, giúp tăng cường khả năng học tập và ra quyết định, hiệu chỉnh lại cảm xúc, củng cố lại hệ miễn dịch và điều tiết sự thèm ăn của chúng ta. Với lối viết rõ ràng, cấu trúc trình bày vấn đề lôi cuốn, từ ngữ dứt khoát và dễ hiểu vô cùng, Sao chúng ta lại ngủ sẽ hoàn toàn làm biến đổi sự đánh giá và hiểu biết của độc giả về giấc ngủ và cả những giấc mơ.\r\n\r\nMỘT SỐ ĐÁNH GIÁ VỀ CUỐN SÁCH\r\n\r\n“Một nhà khoa học thần kinh chỉ cho chúng ta thấy được giấc ngủ trọn vẹn vào ban đêm có thể làm cho chúng ta trở nên minh mẫn hơn, lôi cuốn hơn, thon gọn hơn, hạnh phúc hơn, khỏe mạnh hơn và tránh khỏi ung thư như thế nào.” - The Guardian\r\n\r\n“Đây là cuốn sách khơi gợi sự kích thích và có tầm quan trọng thực tiễn mà bạn nên đọc để trang bị sự hiểu biết hơn về lĩnh vực mà theo như tác giả đã nói là “có giấc ngủ chính là có tình yêu với vạn vật và làm được mọi điều”. - Financial Times\r\n\r\n“Hầu hết chúng ta không suy nghĩ gì về điều chúng ta thường dành tới một phần ba cuộc đời của mình cho nó. Nhưng trong cuốn sách sáng suốt và hấp dẫn này, Matthew Walker giải thích hết sức rõ ràng rằng ngành khoa học mới mẻ - khoa học thần kinh - đang nhanh chóng “giải mã” bí mật lâu đời này một cách thực tiễn ra sao. Sao chúng ta lại ngủ chính là niềm vui trí tuệ sẽ khiến cho bạn phải lật giở từng trang sách đầy nâng niu trước khi chìm vào giấc ngủ của mình.”- Daniel Gilbert, Giảng viên về tâm lí học tại trường Đại học Harvard kiêm tác giả cuốn sách Stumbling on Happiness\r\n\r\nGIỚI THIỆU TÁC GIẢ\r\n\r\nTiến sĩ Matthew Walker là Giáo sư giảng dạy về Khoa học thần kinh và Tâm lí học tại trường Đại học California, Berkeley, đồng thời là giám đốc Trung tâm về Khoa học Giấc ngủ Con người và là cựu giảng viên về Tâm thần học tại trường Đại học Harvard. Ông đã xuất bản hơn 100 nghiên cứu khoa học cũng như đã xuất hiện trong các chương trình uy tín: 60 Minutes, Nova, BBC News và Science Friday của NPR. Sao chúng ta lại ngủ là cuốn sách đầu tiên của ông được giới thiệu tới công chúng sau hơn 20 năm nghiên cứu về giấc ngủ.\r\n\r\nMã hàng	8935275100327\r\nTên Nhà Cung Cấp	Hải Đăng\r\nTác giả	Matthew Walker\r\nNgười Dịch	Viết Hổ, Lê Na\r\nNXB	NXB Lao Động\r\nNăm XB	2019\r\nTrọng lượng (gr)	500\r\nKích Thước Bao Bì	15.5 x 23.5 cm\r\nSố trang	488\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nHải Đăng\r\nSuper Sale Thương Hiệu\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Y học bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nSao Chúng Ta Lại Ngủ - Why We SLeep\r\n\r\nLà cuốn sách về giấc ngủ đầu tiên được viết bởi chính một chuyên gia khoa học hàng đầu, giám đốc Trung tâm về Khoa học Giấc ngủ Con người của trường Đại học California, Berkeley, Sao chúng ta lại ngủ trở thành một cuộc khám phá mang tính đột phá về giấc ngủ, giải thích việc chúng ta có thể khai thác được sức mạnh biến đổi của giấc ngủ nhằm làm thay đổi cuộc sống của chúng ta trở nên tốt đẹp hơn như thế nào.\r\n\r\nGiấc ngủ từ lâu đã trở thành một trong những khía cạnh quan trọng nhất song lại được hiểu đúng giá trị ít nhất về sự sống, sức khỏe và tuổi thọ của con người chúng ta – cho tới khi xuất hiện sự bùng nổ những cuộc khám phá mang tính khoa học trong hai thập kỉ qua đã bắt đầu soi rọi ánh sáng mới mẻ về chủ đề này. Giờ đây, chuyên gia giấc ngủ kiêm nhà khoa học thần kinh xuất sắc Matthew Walker sẽ giải thích thật cặn kẽ về tầm quan trọng to lớn của giấc ngủ, điều vốn tồn tại giữa bao chức năng hoạt động khác của cơ thể, giúp tăng cường khả năng học tập và ra quyết định, hiệu chỉnh lại cảm xúc, củng cố lại hệ miễn dịch và điều tiết sự thèm ăn của chúng ta. Với lối viết rõ ràng, cấu trúc trình bày vấn đề lôi cuốn, từ ngữ dứt khoát và dễ hiểu vô cùng, Sao chúng ta lại ngủ sẽ hoàn toàn làm biến đổi sự đánh giá và hiểu biết của độc giả về giấc ngủ và cả những giấc mơ.', 'biaao-01.jpg', '2022-12-07 15:10:50', 1, 100, NULL, 'Matthew Walker'),
(15, 'Thần Số Học Ứng Dụng', 129000, 'Mỗi cái tên, mỗi ngày tháng và mỗi con số đều mang những ý nghĩa riêng và có thể giúp bạn hiểu sâu sắc hơn về bản thân, các mối quan hệ và số phận của mình.\r\n\r\nBạn có từng băn khoăn khi tình cờ nhìn thấy các dãy số lặp lại như 11:11 hay 444 hay ngày sinh của bạn bè, người thân?\r\n\r\nBạn có từng thắc mắc tại sao ngay trong lần gặp đầu tiên có những người mang lại cho bạn cảm giác thân thiết, những người khác lại không?\r\n\r\nTất cả những thắc mắc, băn khoăn của bạn sẽ được giải đáp trong cuốn “Thần số học ứng dụng”.\r\n\r\nCuốn sách sẽ cung cấp mọi thứ bạn cần để mài giũa trực giác của mình, hiểu rõ hơn những người xung quanh và thậm chí có thêm tự tin khi đưa ra các quyết định lớn.\r\n\r\nThần số học cũng có thể giúp bạn nhìn lại quá khứ. Khi suy ngẫm về các sự kiện của cuộc đời mình và cách chúng diễn ra trong các chu kỳ số, bạn sẽ nhìn nhận rõ ràng hơn về những gì đã xảy ra và nguyên nhân của những điều đó.\r\n\r\nBiết được những gì bạn sắp phải trải qua trong một năm, tháng hoặc ngày cụ thể giúp bạn điều hướng chu kỳ cuộc sống dễ dàng hơn. Bạn sẽ có thể dự đoán và chuẩn bị cho những thử thách sắp tới cũng như tận dụng các cơ hội tuyệt vời và đầy tiềm năng.\r\n\r\nĐặc biệt, bạn có thể đánh thức tiềm năng to lớn của mình với:\r\n\r\nNhững con số cốt lõi: Khám phá ảnh hưởng của ngày sinh đến tâm hồn, tính cách và số phận của bạn.\r\n\r\nViệc diễn giải mối quan hệ: Rút ra ý nghĩa từ các con số để làm sáng tỏ các mối quan hệ giữa bạn với gia đình, bạn bè, đồng nghiệp và những người quan trọng khác.\r\n\r\nNhững hiểu biết siêu hình: Tìm hiểu xem tarot, chiêm tinh, tinh thể và chu kỳ Mặt Trăng có thể giúp bạn hiểu sâu hơn về những điều kỳ diệu trong cuộc sống như thế nào.\r\n\r\nThông qua cuốn sách này, bạn sẽ hiểu rõ hơn về những con số xung quanh mình, lập và giải mã được các biểu đồ cơ bản, đồng thời hiểu được những rung động và năng lượng trong cuộc sống hằng ngày...\r\n\r\nVỀ TÁC GIẢ:\r\n\r\nJoy Woodward là một nhà Thần số học Pythagoras, người thực hành chữa lành bằng tinh thể được chứng nhận và là người sáng lập ra The Joy of Numerology. Cô đã thực hiện hàng nghìn lượt diễn giải cho khách hàng từ khắp nơi trên thế giới. Cô cũng là người dẫn chương trình truyền hình Joy of Numerology trên CATV1.\r\n\r\nMã hàng	8936066689793\r\nTên Nhà Cung Cấp	1980 Books\r\nTác giả	Joy Woodward\r\nNgười Dịch	1980Books\r\nNXB	NXB Thanh Niên\r\nNăm XB	2020\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	300\r\nKích Thước Bao Bì	20 x 13 cm\r\nSố trang	280\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\n1980 Books\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Khoa học khác bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nMỗi cái tên, mỗi ngày tháng và mỗi con số đều mang những ý nghĩa riêng và có thể giúp bạn hiểu sâu sắc hơn về bản thân, các mối quan hệ và số phận của mình.\r\n\r\nBạn có từng băn khoăn khi tình cờ nhìn thấy các dãy số lặp lại như 11:11 hay 444 hay ngày sinh của bạn bè, người thân?\r\n\r\nBạn có từng thắc mắc tại sao ngay trong lần gặp đầu tiên có những người mang lại cho bạn cảm giác thân thiết, những người khác lại không?\r\n\r\nTất cả những thắc mắc, băn khoăn của bạn sẽ được giải đáp trong cuốn “Thần số học ứng dụng”.\r\n\r\nCuốn sách sẽ cung cấp mọi thứ bạn cần để mài giũa trực giác của mình, hiểu rõ hơn những người xung quanh và thậm chí có thêm tự tin khi đưa ra các quyết định lớn.\r\n\r\nThần số học cũng có thể giúp bạn nhìn lại quá khứ. Khi suy ngẫm về các sự kiện của cuộc đời mình và cách chúng diễn ra trong các chu kỳ số, bạn sẽ nhìn nhận rõ ràng hơn về những gì đã xảy ra và nguyên nhân của những điều đó.\r\n\r\nBiết được những gì bạn sắp phải trải qua trong một năm, tháng hoặc ngày cụ thể giúp bạn điều hướng chu kỳ cuộc sống dễ dàng hơn. Bạn sẽ có thể dự đoán và chuẩn bị cho những thử thách sắp tới cũng như tận dụng các cơ hội tuyệt vời và đầy tiềm năng.\r\n\r\nĐặc biệt, bạn có thể đánh thức tiềm năng to lớn của mình với:\r\n\r\nNhững con số cốt lõi: Khám phá ảnh hưởng của ngày sinh đến tâm hồn, tính cách và số phận của bạn.\r\n\r\nViệc diễn giải mối quan hệ: Rút ra ý nghĩa từ các con số để làm sáng tỏ các mối quan hệ giữa bạn với gia đình, bạn bè, đồng nghiệp và những người quan trọng khác.\r\n\r\nNhững hiểu biết siêu hình: Tìm hiểu xem tarot, chiêm tinh, tinh thể và chu kỳ Mặt Trăng có thể giúp bạn hiểu sâu hơn về những điều kỳ diệu trong cuộc sống như thế nào.\r\n\r\nThông qua cuốn sách này, bạn sẽ hiểu rõ hơn về những con số xung quanh mình, lập và giải mã được các biểu đồ cơ bản, đồng thời hiểu được những rung động và năng lượng trong cuộc sống hằng ngày...', 'image_217703.jpg', '2022-12-07 15:19:12', 1, 100, 2, 'Joy Woodward'),
(17, 'Luật Tâm Thức - Giải Mã Ma Trận Vũ Trụ - Bản Đặc Biệt - Bìa Cứng', 100000, 'Luật Tâm Thức - Giải Mã Ma Trận Vũ Trụ\r\n\r\nDịch bệnh, thiên tai, chiến tranh… có phải là lời cảnh cáo của tự nhiên đến con người?\r\n\r\n“Biến đổi khí hậu” là một nước đi chính trị hay chỉ là sự thay đổi của Trái Đất theo chu kỳ?\r\n\r\nUFO, người ngoài hành tinh có thật không?\r\n\r\nTại sao Kinh dịch lại tiên đoán được các sự kiện?\r\n\r\nMỗi con người có số mệnh định sẵn không? Chúng ta sẽ đi về đâu sau khi chết?\r\n\r\n…\r\n\r\nLiệu tất cả chỉ là ngẫu nhiên, hay có một sự sắp đặt tài tình của vũ trụ?\r\n\r\n \r\n\r\n“Luật Tâm Thức - giải mã ma trận vũ trụ” sẽ giải đáp tất cả những khía cạnh mà có thể bạn không nhận thức được chúng tồn tại, và có thể khám phá những vùng đất mình chưa từng biết đến.  \r\n\r\nNhững góc nhìn trong “Luật Tâm Thức” bắt nguồn từ tất cả những kiến thức cổ xưa nhất của loài người… nhưng được tác giả Ngô Sa Thạch giải thích bằng một góc nhìn gần gũi, đặc biệt, qua đó bạn sẽ hiểu được:\r\n\r\nNguồn gốc của vũ trụ, những quy luật tự nhiên chi phối sự hình thành của mọi vật,  trí tuệ cổ xưa khi thông hiểu và ứng dụng các quy luật tự nhiên.\r\n\r\nNăng lượng và tần số rung động, giải thích những hiện tượng tâm linh như quy hồi tiền kiếp, tiên đoán sự kiện, du hành thời gian,...\r\n\r\nCon người: tổ hợp thân - tâm - trí, nghiệp quả, sứ mệnh trong các kiếp, sự tiến hóa của tâm thức.\r\n\r\nThay đổi cuộc sống bằng cách thay đổi tâm thức, hiểu đúng về các quy luật vũ trụ để thu hút năng lượng cải thiện cuộc sống của mình và cả vũ trụ.\r\n\r\nCuốn sách này sẽ giúp bạn thấy rằng những kiến thức của người xưa không hề cao siêu huyền bí mà vô cùng đơn giản và liên quan chặt chẽ tới khoa học hiện đại.\r\n\r\nViệc của bạn chỉ là đọc với một tâm trí cởi mở để thức tỉnh, vượt qua những rào cản của tâm trí, những niềm tin cố hữu của mình.  \r\n\r\nNếu con người cứ đóng khung tư duy của mình trong hai trường phái duy vật và duy tâm, chúng ta sẽ mãi mãi không bao giờ có thể giải đáp được những vấn đề lớn lao của nhân loại. Khi đó, chúng ta cũng sẽ không bao giờ hiểu được bản chất của những câu chuyện về tâm linh, cũng như những vấn đề chưa lý giải được của khoa học. \r\n\r\nSự thiếu hiểu biết này, sẽ dẫn tới những con người mù quáng khi có một số trải nghiệm “tâm linh”, sa đà vào mê tín. Ngược lại, chính nó cũng hình thành một nhóm người mù quáng tin vào khoa học, duy vật, dẫn tới sự hủy hoại nghiêm trọng tới sự sống trên cả hành tinh này.\r\n\r\nHiểu về luật tâm thức, nâng cao tâm thức là quá trình mỗi linh hồn trải nghiệm và vượt qua những bài học cuộc đời.\r\n\r\nMã hàng	8935325000256\r\nTên Nhà Cung Cấp	Skybooks\r\nTác giả	Ngô Sa Thạch\r\nNXB	NXB Dân Trí\r\nNăm XB	2021\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	500\r\nKích Thước Bao Bì	23.5 x 18.5 cm\r\nSố trang	408\r\nHình thức	Bìa Cứng\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Khoa học vũ trụ bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nLuật Tâm Thức - Giải Mã Ma Trận Vũ Trụ\r\n\r\nDịch bệnh, thiên tai, chiến tranh… có phải là lời cảnh cáo của tự nhiên đến con người?\r\n\r\n“Biến đổi khí hậu” là một nước đi chính trị hay chỉ là sự thay đổi của Trái Đất theo chu kỳ?\r\n\r\nUFO, người ngoài hành tinh có thật không?\r\n\r\nTại sao Kinh dịch lại tiên đoán được các sự kiện?\r\n\r\nMỗi con người có số mệnh định sẵn không? Chúng ta sẽ đi về đâu sau khi chết?\r\n\r\n…\r\n\r\nLiệu tất cả chỉ là ngẫu nhiên, hay có một sự sắp đặt tài tình của vũ trụ?\r\n\r\n \r\n\r\n“Luật Tâm Thức - giải mã ma trận vũ trụ” sẽ giải đáp tất cả những khía cạnh mà có thể bạn không nhận thức được chúng tồn tại, và có thể khám phá những vùng đất mình chưa từng biết đến.  ', 'bia1_luttttttttttattamthuc_1.jpg', '2022-12-07 15:21:28', 1, 100, NULL, 'Ngô Sa Thạch'),
(18, 'Clean Code - Mã Sạch Và Con Đường Trở Thành Lập Trình Viên Giỏi', 386000, 'Hiện nay, lập trình viên là một trong những nghề nghiệp được nhiều người lựa chọn theo đuổi và gắn bó. Đây là công việc đòi hỏi sự tỉ mỉ, nhiều công sức nhưng mang lại giá trị cao và một tương lai công việc hứa hẹn. Là một trong số những chuyên gia giàu kinh nghiệm, điêu luyện và lành nghề trong ngành, tác giả đã đúc rút từ kinh nghiệm của mình, viết về những tình huống trong thực tế, đôi khi có thể trái ngược với lý thuyết để xây dựng nên cuốn cẩm nang này, nhằm hỗ trợ những người đang muốn trở thành một lập trình viên chuyên nghiệp.\r\n\r\nCuốn sách được nhiều lập trình viên đánh giá là quyển sách giá trị nhất mà họ từng đọc trong sự nghiệp của mình. Cuốn sách hướng dẫn cách để viết những đoạn mã có thể hoạt động tốt, cũng như truyền tải được ý định của người viết nên chúng.\r\n\r\nCuốn sách được chia thành ba phần lớn. Phần đầu tiên mô tả các nguyên tắc, mô hình và cách thực hành viết mã sạch. Phần thứ hai gồm nhiều tình huống điển hình với mức độ phức tạp gia tang không ngừng. Mỗi tình huống là một bài tập giúp làm sạch mã, chuyển đổi mã có nhiều vấn đề thành mã có ít vấn đề hơn. Và phần cuối là tuyển tập rất nhiều những dấu hiệu của mã có vấn đề, những tìm tòi, suy nghiệm từ thực tiễn được đúc rút qua cách tình huống điển hình.\r\n\r\nMã hàng	8936107812845\r\nTên Nhà Cung Cấp	CÔNG TY TNHH SÁCH & TRUYỀN THÔNG VIỆT NAM\r\nTác giả	Robert Cecil Martin\r\nNgười Dịch	Mai Lựu\r\nNXB	NXB Dân Trí\r\nNăm XB	2022\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	750\r\nKích Thước Bao Bì	24 x 16 x 1.2 cm\r\nSố trang	596\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nCÔNG TY TNHH SÁCH & TRUYỀN THÔNG VIỆT NAM\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Tin học bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nClean Code - Mã Sạch Và Con Đường Trở Thành Lập Trình Viên Giỏi\r\n\r\nHiện nay, lập trình viên là một trong những nghề nghiệp được nhiều người lựa chọn theo đuổi và gắn bó. Đây là công việc đòi hỏi sự tỉ mỉ, nhiều công sức nhưng mang lại giá trị cao và một tương lai công việc hứa hẹn. Là một trong số những chuyên gia giàu kinh nghiệm, điêu luyện và lành nghề trong ngành, tác giả đã đúc rút từ kinh nghiệm của mình, viết về những tình huống trong thực tế, đôi khi có thể trái ngược với lý thuyết để xây dựng nên cuốn cẩm nang này, nhằm hỗ trợ những người đang muốn trở thành một lập trình viên chuyên nghiệp.\r\n\r\nCuốn sách được nhiều lập trình viên đánh giá là quyển sách giá trị nhất mà họ từng đọc trong sự nghiệp của mình. Cuốn sách hướng dẫn cách để viết những đoạn mã có thể hoạt động tốt, cũng như truyền tải được ý định của người viết nên chúng.\r\n\r\nCuốn sách được chia thành ba phần lớn. Phần đầu tiên mô tả các nguyên tắc, mô hình và cách thực hành viết mã sạch. Phần thứ hai gồm nhiều tình huống điển hình với mức độ phức tạp gia tang không ngừng. Mỗi tình huống là một bài tập giúp làm sạch mã, chuyển đổi mã có nhiều vấn đề thành mã có ít vấn đề hơn. Và phần cuối là tuyển tập rất nhiều những dấu hiệu của mã có vấn đề, những tìm tòi, suy nghiệm từ thực tiễn được đúc rút qua cách tình huống điển hình.', '393129.jpg', '2022-12-07 15:22:37', 1, 100, 1, 'Robert Cecil Martin'),
(19, 'Linh Hồn Của Quảng Cáo (Tái Bản 2019)', 59000, '\"Concept – ý tưởng lớn\" là khái niệm trung tâm vận hành doanh nghiệp, thị trường và sản phẩm; và chúng ta cần toàn bộ cảm tính và lý tính để tạo ra nó. \"Nó không chỉ dừng lại ở ý nghĩa là khái niệm và ý tưởng, mà còn là \"các đề xuất ra giá trị quan mới mà thời đại yêu cầu, và sẽ trở thành đường lối chỉ đạo của tất cả các hành động\".\r\n\r\nCó thể nói tạo ra khái niệm trung tâm này là \"công việc mang tính sáng tạo\" cực độ. Bởi đó là công việc mà ta vừa phải có hiểu biết về những chiến lược tổng thể bằng cách thu thập thông tin, phân tích, tưởng tượng, đặt giả thuyết, vừa phải diễn giải ra bằng từ ngữ. Thêm nữa, cùng với việc tạo ra cách suy nghĩ mang tính trung tâm – nền tảng cho toàn thể hành động – \"concept – ý tưởng lớn\" còn phải \"tạo ra đặc điểm nhận dạng kết nối với tương lai\".  Người ta nói \"Ý tưởng lớn là chiếc la bàn (kim chỉ nam)\", vì thế những doanh nghiệp không có ý tưởng lớn giống như là bị ép buộc đi biển mà không có la bàn trong tay. Bởi vì “tạo ra các ý tưởng lớn” chính là việc tạo ra đường lối chỉ đạo cho toàn bộ hành động.\r\n\r\nHiện nay trên thị trường có rất nhiều dòng sách nói về phương pháp sáng tạo ý tưởng lớn. Tuy nhiên cuốn sách này – Linh hồn của quảng cáo - đi theo một lối tiếp cận rất đặc biệt, tác giả coi việc tạo ra các ý tưởng lớn là cốt lõi của mọi sự vật, giống như tạo ra xương sống cho con người.  Vì thế, trong cuốn sách tác giả đưa ra nhiều vấn đề liên quan đến việc tạo ra các ý tưởng lớn và đưa ra các câu trả lời rõ ràng, dễ hiểu cho độc giả như Tại sao bây giờ lại nhất định phải có ý tưởng lớn, Ý tưởng lớn là gì, Làm thế nào để tạo ra ý tưởng lớn, ngôn từ hóa các ý tưởng lớn trong đầu như thế nào và làm sao để biến việc đưa ra ý tưởng lớn trở thành một kỹ năng thuần thục của mình. Cùng với 86 lời gợi ý và ví dụ, độc giả sẽ hiểu rõ hơn về cách tạo ra các ý tưởng lớn cũng như học hỏi được nhiều kinh nghiệm, bài học từ các thương hiệu lớn mà tác giả đã sử dụng để làm dẫn chứng phân tích.\r\n\r\nCách tư duy, lối lập luận của một tác giả Nhật Bản khá logic và liền mạch, sẽ đem lại cho những người làm trong ngành quảng cáo nhiều bài học, cũng như đem lại cho tất cả mọi người những góc nhìn, cách thức để làm việc sáng tạo hơn, dù là bạn làm trong bất cứ ngành nghề nào.\r\n\r\n\"Đời người vui thích với việc sáng tạo ra ý tưởng lớn là tuyệt vời nhất.\" - Nobuyuki Takahashi\r\n\r\nTrích đoạn sách:\r\n\r\nÝ tưởng chủ đạo trong Marketing\r\n\r\nHiện giờ, khi suy nghĩ về thị trường ta sẽ có cách suy nghĩ gì, hình dung ra sao và có sự đánh giá nào? Có lẽ câu trả lời cho những câu hỏi trên sẽ hoạt động một cách có lợi cho việc kinh doanh từ giờ trở đi.\r\n\r\nÝ tưởng chủ đạo trong marketing, là \"những điều doanh nghiệp phải nên nắm giữ toàn hệ thống bằng cách thức tiếp cận hoặc bằng cách suy nghĩ về thị trường đang được cho là cần thiết ngay tại thời điểm kinh doanh của doanh nghiệp\".\r\n\r\nNhững chiến lược của doanh nghiệp đang thâm nhập vào đó – tạo lập vị trí của doanh nghiệp vào thị trường như thế nào để dễ kinh doanh?\r\n\r\nBằng chí hướng của sản phẩm? (sản phẩm OOO có chất lượng tốt nhất, sản phẩm OOO được cải tiến về mặt kỹ thuật)\r\n\r\nBằng chí hướng của khách hàng? (dịch vụ OOO, thiết kế an toàn OOO)\r\n\r\nBằng chí hướng của xã hội? (OOO quan tâm đến môi trường, OOO nuôi dưỡng văn hóa)\r\n\r\nTừng cách thức tiếp cận một sẽ thay đổi khi kết hợp cùng với thời đại và doanh nghiệp. Để tạo ra cảm giác tồn tại rằng \"ngoài bạn ra không còn ai tồn tại trên thị trường\"; cũng như để không những làm cho mối quan hệ với khách hàng ngày càng thân thiết hơn và bền vững hơn mà còn tang sức mạnh cho bản chất kinh doanh, thì không thể thiếu ý tưởng chủ đạo trong marketing.\r\n\r\nMã hàng	8935280903715\r\nTên Nhà Cung Cấp	Thái Hà\r\nTác giả	Nobuyuki Takahashi\r\nNXB	NXB Lao Động\r\nNăm XB	2019\r\nTrọng lượng (gr)	200\r\nKích Thước Bao Bì	13 x 19 cm\r\nSố trang	147\r\nHình thức	Bìa Mềm\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Marketing - Bán Hàng bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\n\"Concept – ý tưởng lớn\" là khái niệm trung tâm vận hành doanh nghiệp, thị trường và sản phẩm; và chúng ta cần toàn bộ cảm tính và lý tính để tạo ra nó. \"Nó không chỉ dừng lại ở ý nghĩa là khái niệm và ý tưởng, mà còn là \"các đề xuất ra giá trị quan mới mà thời đại yêu cầu, và sẽ trở thành đường lối chỉ đạo của tất cả các hành động\".\r\n\r\nCó thể nói tạo ra khái niệm trung tâm này là \"công việc mang tính sáng tạo\" cực độ. Bởi đó là công việc mà ta vừa phải có hiểu biết về những chiến lược tổng thể bằng cách thu thập thông tin, phân tích, tưởng tượng, đặt giả thuyết, vừa phải diễn giải ra bằng từ ngữ. Thêm nữa, cùng với việc tạo ra cách suy nghĩ mang tính trung tâm – nền tảng cho toàn thể hành động – \"concept – ý tưởng lớn\" còn phải \"tạo ra đặc điểm nhận dạng kết nối với tương lai\".  Người ta nói \"Ý tưởng lớn là chiếc la bàn (kim chỉ nam)\", vì thế những doanh nghiệp không có ý tưởng lớn giống như là bị ép buộc đi biển mà không có la bàn trong tay. Bởi vì “tạo ra các ý tưởng lớn” chính là việc tạo ra đường lối chỉ đạo cho toàn bộ hành động.\r\n\r\nHiện nay trên thị trường có rất nhiều dòng sách nói về phương pháp sáng tạo ý tưởng lớn. Tuy nhiên cuốn sách này – Linh hồn của quảng cáo - đi theo một lối tiếp cận rất đặc biệt, tác giả coi việc tạo ra các ý tưởng lớn là cốt lõi của mọi sự vật, giống như tạo ra xương sống cho con người.  Vì thế, trong cuốn sách tác giả đưa ra nhiều vấn đề liên quan đến việc tạo ra các ý tưởng lớn và đưa ra các câu trả lời rõ ràng, dễ hiểu cho độc giả như Tại sao bây giờ lại nhất định phải có ý tưởng lớn, Ý tưởng lớn là gì, Làm thế nào để tạo ra ý tưởng lớn, ngôn từ hóa các ý tưởng lớn trong đầu như thế nào và làm sao để biến việc đưa ra ý tưởng lớn trở thành một kỹ năng thuần thục của mình. Cùng với 86 lời gợi ý và ví dụ, độc giả sẽ hiểu rõ hơn về cách tạo ra các ý tưởng lớn cũng như học hỏi được nhiều kinh nghiệm, bài học từ các thương hiệu lớn mà tác giả đã sử dụng để làm dẫn chứng phân tích.\r\n\r\nCách tư duy, lối lập luận của một tác giả Nhật Bản khá logic và liền mạch, sẽ đem lại cho những người làm trong ngành quảng cáo nhiều bài học, cũng như đem lại cho tất cả mọi người những góc nhìn, cách thức để làm việc sáng tạo hơn, dù là bạn làm trong bất cứ ngành nghề nào.\r\n\r\n\"Đời người vui thích với việc sáng tạo ra ý tưởng lớn là tuyệt vời nhất.\" - Nobuyuki Takahashi', 'image_195509_1_7108.jpg', '2022-12-07 15:25:19', 1, 100, NULL, 'Nobuyuki Takahashi'),
(20, 'Tiền Đấu Với Vàng - Đồng Đô-La, Tiêu Chuẩn Vàng, Chứng Khoán Hóa Và Câu Chuyện Kì Lạ Về Hệ Thống Tài Chính Thế Giới', 159000, 'Bạn đã bao giờ đặt câu hỏi, liệu hệ thống tài chính thế giới hoạt động ra sao và nó sẽ ảnh hưởng đến cuộc sống của chính chúng ta như thế nào?\r\n\r\nGiảm phát và lạm phát, thâm hụt ngân sách và thực tế về vàng, những giao dịch ngầm và các chính sách tài chính, viễn cảnh sụp đổ của thị trường và các nền kinh tế hàng đầu thế giới như Mĩ, Nga, Trung Quốc… Toàn bộ hệ thống này đã hoạt động và sụp đổ kì lạ ra sao, đã chị phối và bị chi phối như thế nào?\r\n\r\nVới tư cách là một nhà hoạch định, bạn có thể vươn tầm nhìn của mình xa đến đâu?\r\n\r\nLà một người hoạt động trong lĩnh vực tài chính, bạn có thể nắm bắt điều gì?\r\n\r\nLà một người dân bình thường, bạn có thể thấy tác động của hệ thống tài chính thế giới đến đời sống của mình hay không?\r\n\r\nCó lẽ những gì bạn hiểu sẽ chưa thật sự mang đến cái nhìn toàn cảnh và chưa hẳn như những gì bạn tưởng tượng.\r\n\r\nJames Rickards, với kinh nghiệm 35 lăn lộn tại Wall Street, làm cố vấn kinh tế quốc tế và các mối đe dọa về tài chính của Bộ Quốc phòng Hoa Kỳ, Cộng đồng Tình báo Hoa Kỳ và rất nhiều các tổ chức khác đã cung cấp một kho thông tin về các ngân hàng trung ương, ngân hàng quốc tế, tiền thực sự là gì, IMF, lịch sử tài chính, các kịch bản có thể xảy ra trong tương lai của đồng tiền,... Những mảng tối và sự thay đổi trong các nền kinh tế lần lượt xuất hiện trong các dẫn chứng và lối phân tích vô cùng sâu sắc và lôi cuốn của ông. Nhưng không chỉ có thế, cuốn sách của James Rickards còn mang đến cho chúng ta những cái nhìn chân thực, những tri thức bất đầy bất ngờ về nền kinh tế toàn cầu và tác động của chúng lên mỗi cá nhân ra sao.\r\n\r\nVà nếu đã cầm cuốn sách lên, bạn sẽ thấy:\r\n\r\nCâu chuyện về hệ thống tài chính thế giới chưa bao giờ kì lạ, hấp dẫn và lôi cuốn đến thế!\r\n\r\nMã hàng	9786047930630\r\nTên Nhà Cung Cấp	Bách Việt\r\nTác giả	James Rickards\r\nNgười Dịch	Lại Hồng Vân\r\nNXB	NXB Tài Chính\r\nNăm XB	2022\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	600\r\nKích Thước Bao Bì	20.5 x 14.5 x 2 cm\r\nSố trang	576\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nBách Việt\r\nSách Kinh Tế\r\nRƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Phân Tích Kinh Tế bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nTiền Đấu Với Vàng - Đồng Đô-La, Tiêu Chuẩn Vàng, Chứng Khoán Hóa Và Câu Chuyện Kì Lạ Về Hệ Thống Tài Chính Thế Giới\r\n\r\nBạn đã bao giờ đặt câu hỏi, liệu hệ thống tài chính thế giới hoạt động ra sao và nó sẽ ảnh hưởng đến cuộc sống của chính chúng ta như thế nào?\r\n\r\nGiảm phát và lạm phát, thâm hụt ngân sách và thực tế về vàng, những giao dịch ngầm và các chính sách tài chính, viễn cảnh sụp đổ của thị trường và các nền kinh tế hàng đầu thế giới như Mĩ, Nga, Trung Quốc… Toàn bộ hệ thống này đã hoạt động và sụp đổ kì lạ ra sao, đã chị phối và bị chi phối như thế nào?\r\n\r\nVới tư cách là một nhà hoạch định, bạn có thể vươn tầm nhìn của mình xa đến đâu?\r\n\r\nLà một người hoạt động trong lĩnh vực tài chính, bạn có thể nắm bắt điều gì?\r\n\r\nLà một người dân bình thường, bạn có thể thấy tác động của hệ thống tài chính thế giới đến đời sống của mình hay không?\r\n\r\nCó lẽ những gì bạn hiểu sẽ chưa thật sự mang đến cái nhìn toàn cảnh và chưa hẳn như những gì bạn tưởng tượng.\r\n\r\nJames Rickards, với kinh nghiệm 35 lăn lộn tại Wall Street, làm cố vấn kinh tế quốc tế và các mối đe dọa về tài chính của Bộ Quốc phòng Hoa Kỳ, Cộng đồng Tình báo Hoa Kỳ và rất nhiều các tổ chức khác đã cung cấp một kho thông tin về các ngân hàng trung ương, ngân hàng quốc tế, tiền thực sự là gì, IMF, lịch sử tài chính, các kịch bản có thể xảy ra trong tương lai của đồng tiền,... Những mảng tối và sự thay đổi trong các nền kinh tế lần lượt xuất hiện trong các dẫn chứng và lối phân tích vô cùng sâu sắc và lôi cuốn của ông. Nhưng không chỉ có thế, cuốn sách của James Rickards còn mang đến cho chúng ta những cái nhìn chân thực, những tri thức bất đầy bất ngờ về nền kinh tế toàn cầu và tác động của chúng lên mỗi cá nhân ra sao.\r\n\r\nVà nếu đã cầm cuốn sách lên, bạn sẽ thấy:\r\n\r\nCâu chuyện về hệ thống tài chính thế giới chưa bao giờ kì lạ, hấp dẫn và lôi cuốn đến thế!', 'bia-truoc-tien-dau-voi-vang-1.jpg', '2022-12-07 15:28:11', 1, 100, NULL, 'Joseph Sugarman'),
(21, 'Quản Lý Nhân Sự Trong Thời Đại Số', 159000, 'Dù bạn làm việc ở nơi nào đi chăng nữa, việc quản lý người khác không bao giờ là dễ dàng cả. Thế nhưng trong ngành công nghiệp kỹ thuật, tại đó hoạt động quản lý cũng vừa là một ngành thuộc lĩnh vực kỹ thuật, đường cong học tập có thể sẽ gặp rất nhiều trở ngại, nhất là khi bạn không có nhiều công cụ, tài liệu hay các khung phần mềm hỗ trợ. Trong cuốn cẩm nang này, tác giả Camille Fournier (từ một Trưởng nhóm Kỹ thuật trở thành CTO - Giám đốc công nghệ) sẽ đồng hành cùng bạn qua mỗi giai đoạn trong hành trình đi lên từ một kỹ sư tới vị trí quản lý kỹ thuật.', 'image_195509_1_13048.jpg', '2022-12-07 15:28:11', 1, 100, NULL, 'Priest'),
(22, 'Voi To Óc Bằng Quả Nho', 175000, 'Dù muốn hay không, trong cuộc đời chúng ta luôn luôn có khách hàng lí tưởng. Đây là khách hàng quan trọng nhất của bạn. Đôi lúc, đấy là vợ, chồng, sếp, nhân viên,... Họ đều xuất hiện ở từng giai đoạn cuộc đời bạn.\r\n\r\nCó một sự thật là, bạn phải tiêu tốn rất nhiều điều để theo đuổi, làm vừa lòng khách hàng lí tưởng. Nhưng dù họ ở cạnh rồi, bạn cũng không biết lúc nào tình cảm sẽ biến mất, và khi nào sẽ đánh mất họ. Bạn lạc lối, bối rối, không biết mình là ai trong tình yêu, tự khổ sở trong mớ đời hỗn loạn, luôn cần một người bạn, luôn cần một mối tâm tình\r\n\r\nVậy làm sao để tạo-ra một người đáng tin về mặt tình cảm, bằng cách nào để thay vì chờ đợi TRI KỈ, bạn CÓ HỌ?\r\nHoặc câu hỏi bạn sẽ muốn có câu trả lời hơn, là: bằng cách nào bạn TRỞ THÀNH TRI KỈ của ai đó, họ không thế chống cự bạn, cần bạn và sẵn sàng tiêu tốn tất cả THỜI GIAN, TIỀN BẠC, CÔNG SỨC vì bạn?\r\n\r\nCuốn sách này cung cấp cho bạn một CÔNG THỨC THÀNH CÔNG CHUNG từ các bậc thày phát triển đội nhóm, phát triển các mối quan hệ rộng rãi, để làm sao cho một người yêu quý bạn, bất kể họ là ai, và sẵn sàng LÀM MỌI ĐIỀU vì bạn\r\n\r\nHãy lật ra cuốn sách này và khám phá: VOI TO ÓC BẰNG QUẢ NHO\r\n\r\nCách để KHÁCH HÀNG LỚN NHẤT ĐỜI BẠN và TRUNG THÀNH NHẤT VỚI BẠN luôn nằm gọn trong tay!\r\n\r\nMã hàng	9786043585469\r\nNhà Cung Cấp	CÔNG TY CỔ PHẦN VĂN HÓA VÀ TRUYỀN THÔNG OOPSY\r\nTác giả	A Tăng Kì\r\nNXB	NXB Thanh Niên\r\nNăm XB	2022\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	350\r\nKích Thước Bao Bì	20 x 14 cm\r\nSố trang	344\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nSách Kinh Tế\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Marketing - Bán Hàng bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nDù muốn hay không, trong cuộc đời chúng ta luôn luôn có khách hàng lí tưởng. Đây là khách hàng quan trọng nhất của bạn. Đôi lúc, đấy là vợ, chồng, sếp, nhân viên,... Họ đều xuất hiện ở từng giai đoạn cuộc đời bạn.\r\n\r\nCó một sự thật là, bạn phải tiêu tốn rất nhiều điều để theo đuổi, làm vừa lòng khách hàng lí tưởng. Nhưng dù họ ở cạnh rồi, bạn cũng không biết lúc nào tình cảm sẽ biến mất, và khi nào sẽ đánh mất họ. Bạn lạc lối, bối rối, không biết mình là ai trong tình yêu, tự khổ sở trong mớ đời hỗn loạn, luôn cần một người bạn, luôn cần một mối tâm tình\r\n\r\nVậy làm sao để tạo-ra một người đáng tin về mặt tình cảm, bằng cách nào để thay vì chờ đợi TRI KỈ, bạn CÓ HỌ?\r\nHoặc câu hỏi bạn sẽ muốn có câu trả lời hơn, là: bằng cách nào bạn TRỞ THÀNH TRI KỈ của ai đó, họ không thế chống cự bạn, cần bạn và sẵn sàng tiêu tốn tất cả THỜI GIAN, TIỀN BẠC, CÔNG SỨC vì bạn?\r\n\r\nCuốn sách này cung cấp cho bạn một CÔNG THỨC THÀNH CÔNG CHUNG từ các bậc thày phát triển đội nhóm, phát triển các mối quan hệ rộng rãi, để làm sao cho một người yêu quý bạn, bất kể họ là ai, và sẵn sàng LÀM MỌI ĐIỀU vì bạn\r\n\r\nHãy lật ra cuốn sách này và khám phá: VOI TO ÓC BẰNG QUẢ NHO\r\n\r\nCách để KHÁCH HÀNG LỚN NHẤT ĐỜI BẠN và TRUNG THÀNH NHẤT VỚI BẠN luôn nằm gọn trong tay!', '3333333333.jpg', '2022-12-07 15:30:14', 1, 100, 1, 'Dupont'),
(23, 'Đắc Nhân Tâm Cho Nhà Quản Lý', 110000, 'Cả thế giới nói chung đã và đang trải qua nhiều cuộc khủng hoảng kinh tế. Mặc dù phần lớn nguyên nhân là do nạn tham nhũng, lòng tham của một số cá nhân trong giới tài chính và những vấn nạn liên quan, nhưng cũng không thể không đổ lỗi cho cách quản trị yếu kém của nhiều nhà quản lý. Phản ứng tức thời của hầu hết các công ty khi gặp khủng hoảng là sa thải hàng nghìn nhân viên – những người từng được xem là tài sản quý giá của tổ chức. Nếu quả thực lịch sử có xu hướng lặp lại, thì chỉ sau một năm, các công ty này sẽ phải tuyển lại toàn bộ nhân sự cho các vị trí mà họ đã sa thải với mức lương cao gấp đôi.\r\n\r\nĐắc nhân tâm cho nhà quản lý là phản ứng của tác giả Craig Nathanson trước cuộc khủng hoảng về năng lực quản lý. Chính vì năng lực yếu kém, cơ cấu tổ chức suy yếu và tư tưởng chú trọng thưởng phạt mà các nhà quản lý ngày nay đang bị gò bó trong chính cái hệ thống mà họ quản lý. Và hy vọng duy nhất của chúng ta là các nhà quản lý này sẽ được khai sáng, hoặc những nhà quản lý tương lai sẽ được đào tạo một cách bài bản hơn.\r\n\r\nHãy nhớ lại một nhà quản lý mà bạn từng làm việc dưới trướng, người đã khiến cho bạn cảm thấy vui vẻ và tự hào về bản thân. Sự chuyển biến tích cực đó chính là sức ảnh hưởng của một nhà quản lý biết thu phục lòng người bằng tâm và tài.\r\n\r\nQuản lý vừa là một nghệ thuật vừa là một môn khoa học. Nhà quản lý giỏi sẽ quan tâm đến sự phát triển của cả tổ chức lẫn nhân viên. Họ còn biết ưu tiên hoàn thành những việc quan trọng nhất.\r\n\r\nVới Đắc nhân tâm cho nhà quản lý, mục tiêu của tác giả Craig Nathanson là cung cấp những công cụ và phương pháp vừa đơn giản vừa hiệu quả để cải thiện quá trình quản lý trong các tổ chức. Quyển sách sẽ là nguồn ý tưởng thiết thực cho những nhà quản lý còn non trẻ, các sinh viên ngành quản lý, và tất nhiên là, cho những nhà quản lý có thâm niên đang cần thêm ý tưởng mới.\r\n\r\nMã hàng	8935278605553\r\nTên Nhà Cung Cấp	Saigon Books\r\nTác giả	Dr Craig Nathanson\r\nNXB	NXB Thế Giới\r\nNăm XB	2021\r\nTrọng lượng (gr)	200\r\nKích Thước Bao Bì	20.5 x 13 cm\r\nSố trang	192\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nSaigon Books\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Quản Trị - Lãnh Đạo bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nĐẮC NHÂN TÂM CHO NHÀ QUẢN LÝ: THU PHỤC LÒNG NGƯỜI BẰNG TÂM VÀ TÀI\r\n\r\nCả thế giới nói chung đã và đang trải qua nhiều cuộc khủng hoảng kinh tế. Mặc dù phần lớn nguyên nhân là do nạn tham nhũng, lòng tham của một số cá nhân trong giới tài chính và những vấn nạn liên quan, nhưng cũng không thể không đổ lỗi cho cách quản trị yếu kém của nhiều nhà quản lý. Phản ứng tức thời của hầu hết các công ty khi gặp khủng hoảng là sa thải hàng nghìn nhân viên – những người từng được xem là tài sản quý giá của tổ chức. Nếu quả thực lịch sử có xu hướng lặp lại, thì chỉ sau một năm, các công ty này sẽ phải tuyển lại toàn bộ nhân sự cho các vị trí mà họ đã sa thải với mức lương cao gấp đôi.\r\n\r\nĐắc nhân tâm cho nhà quản lý là phản ứng của tác giả Craig Nathanson trước cuộc khủng hoảng về năng lực quản lý. Chính vì năng lực yếu kém, cơ cấu tổ chức suy yếu và tư tưởng chú trọng thưởng phạt mà các nhà quản lý ngày nay đang bị gò bó trong chính cái hệ thống mà họ quản lý. Và hy vọng duy nhất của chúng ta là các nhà quản lý này sẽ được khai sáng, hoặc những nhà quản lý tương lai sẽ được đào tạo một cách bài bản hơn.', 'image_221483.jpg', '2022-12-07 15:30:14', 1, 100, NULL, 'Kiki Prottsman'),
(24, 'Komi - Nữ Thần Sợ Giao Tiếp - Tập 11', 25000, 'Komi đi du lịch với cả nhà trong Tuần lễ Vàng rồi tình cờ gặp gỡ gia đình Tadano cùng Najimi và có một khoảng thời gian vô cùng vui vẻ với mọi người. Tadano cùng Komi đi dạo dưới bầu trời đầy sao thì đột nhiên một cơn mưa ập đến và phải trú tạm trong căn nhà nhỏ nơi sườn núi. Cả hai cùng chia sẻ một chiếc chăn để không ai bị lạnh. Sự ân cần ngại ngùng và khó nói thành lời dần hình thành một sợi dây gắn kết giữa hai người.\r\n\r\nMời các bạn thưởng thức tập 11 của câu chuyện hài hước về người đẹp sợ giao tiếp gửi gắm hơi ấm cùng sự quan tâm tới đối phương!!\r\n\r\nMã hàng	8935244872446\r\nĐộ Tuổi	15+\r\nTên Nhà Cung Cấp	Nhà Xuất Bản Kim Đồng\r\nTác giả	Tomohito Oda\r\nNgười Dịch	Real\r\nNXB	NXB Kim Đồng\r\nNăm XB	2022\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	200\r\nKích Thước Bao Bì	17.6 x 11.3 cm\r\nSố trang	192\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nĐẠI HỘI MANGA\r\nĐồ Chơi Cho Bé - Giá Cực Tốt\r\nNhập Hội Manga - Comic\r\nRƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Manga Khác bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nKomi đi du lịch với cả nhà trong Tuần lễ Vàng rồi tình cờ gặp gỡ gia đình Tadano cùng Najimi và có một khoảng thời gian vô cùng vui vẻ với mọi người. Tadano cùng Komi đi dạo dưới bầu trời đầy sao thì đột nhiên một cơn mưa ập đến và phải trú tạm trong căn nhà nhỏ nơi sườn núi. Cả hai cùng chia sẻ một chiếc chăn để không ai bị lạnh. Sự ân cần ngại ngùng và khó nói thành lời dần hình thành một sợi dây gắn kết giữa hai người.\r\n\r\nMời các bạn thưởng thức tập 11 của câu chuyện hài hước về người đẹp sợ giao tiếp gửi gắm hơi ấm cùng sự quan tâm tới đối phương!!', 'komi-nu-than-so-giao-tiep---tap-11.jpg', '2022-12-07 15:36:52', 1, 100, NULL, 'Sarah Hutt, Brenna Vaughan'),
(25, 'Văn Phòng Thám Tử Quái Vật - Tập 8', 30000, 'Ở một vùng quê yên tĩnh nọ bỗng xảy ra sự kiện gia súc chết hàng loạt rất quái lạ. Dân làng thuê vị thám tử tâm linh Inugami từ Tokyo về để điều tra vụ việc. Trong quá trình điều tra, Inugami gặp một cậu bé bị dân làng gọi bằng cái tên “Dorotabo”. Cậu bé giúp Inugami tìm ra sự thật, và để đáp lại, Inugami tiết lộ cho cậu biết cậu không phải con người, mà là một bán yêu. Từ đây, bánh xe vận mệnh của cậu bắt đầu lăn bánh, và những bí ẩn về thân thế của cậu bé dần được hé lộ.', 'nxbtre_full_28582022_095801.jpg', '2022-12-07 15:36:52', 1, 100, NULL, 'Mark Manson'),
(26, 'Chú Thuật Hồi Chiến - Tập 4', 30000, 'Tại hiện trường án mạng do chú linh gây ra, Itadori đã gặp gỡ Junpei, cả hai tâm đầu ý hợp. Nhưng Junpei lại tôn sùng chú linh Mahito, thủ phạm của vụ án. Mahito lợi dụng Junpei, hòng li gián cậu và Itadori. Junpei rơi vào cạm bẫy của hắn và...', 'chu-thuat-hoi-chien---tap-4.jpg', '2022-12-07 15:36:52', 1, 100, 1, 'DK'),
(27, 'IKIGAMI - Tập 5', 45000, 'Để người dân thẩu hiểu giá trị sinh mệnh, một đạo luật mang lên “Luật duy trì phồn thịnh quốc gia” đã được ban hành.\r\n\r\nLuật quy định, khi người dân vào tiểu học sẽ được tiêm một loại vắc xin và có tỉ lệ 1/1000 chứa viên nang nano đặc biệt. Viên nang này ở trong cơ thể người được tiêm và gây tử vong cho người ấy khi họ bước vào ngưỡng tuổi 18 – 24.\r\n\r\nĐương sự sẽ được thông báo trước về cái chết của mình vỏn vẹn 24 giờ thông qua một tờ giấy báo tử với tên gọi “IKIGAMI”. Vậy 24 giờ cuối đời, họ sẽ trải qua như thế nào?', 'nxbtre_full_08262022_112614.jpg', '2022-12-07 15:36:52', 1, 100, NULL, 'Bill Burnett'),
(28, 'Birdmen - Tập 3', 30000, 'Sống sót sau tai nạn giao thông, cậu học sinh cấp 2 Eishi Karasuma bỗng trở thành “Người chim”.\r\n\r\nĐể có thể ứng phó với Blackout bất ngờ ập tới, Karasuma cùng các đồng đội lên lịch tập bay, song cậu vẫn chưa thể cất cánh suôn sẻ…!?', 'birdmen---tap-3.jpg', '2022-12-07 15:36:52', 1, 100, 2, 'Dan Buettner'),
(29, 'Thiên Tài Bên Trái, Kẻ Điên Bên Phải (Tái Bản 2021)', 179000, 'Hỡi những con người đang oằn mình trong cuộc sống, bạn biết gì về thế giới của mình? Là vô vàn thứ lý thuyết được các bậc vĩ nhân kiểm chứng, là luật lệ, là cả nghìn thứ sự thật bọc trong cái lốt hiển nhiên, hay những triết lý cứng nhắc của cuộc đời?\r\n\r\nLại đây, vượt qua thứ nhận thức tẻ nhạt bị đóng kín bằng con mắt trần gian, khai mở toàn bộ suy nghĩ, để dòng máu trong bạn sục sôi trước những điều kỳ vĩ, phá vỡ mọi quy tắc. Thế giới sẽ gọi bạn là kẻ điên, nhưng vậy thì có sao? Ranh giới duy nhất giữa kẻ điên và thiên tài chẳng qua là một sợi chỉ mỏng manh: Thiên tài chứng minh được thế giới của mình, còn kẻ điên chưa kịp làm điều đó. Chọn trở thành một kẻ điên để vẫy vùng giữa nhân gian loạn thế hay khóa hết chúng lại, sống mãi một cuộc đời bình thường khiến bạn cảm thấy hạnh phúc hơn?\r\n\r\nThiên tài bên trái, kẻ điên bên phải là cuốn sách dành cho những người điên rồ, những kẻ gây rối, những người chống đối, những mảnh ghép hình tròn trong những ô vuông không vừa vặn… những người nhìn mọi thứ khác biệt, không quan tâm đến quy tắc. Bạn có thể đồng ý, có thể phản đối, có thể vinh danh hay lăng mạ họ, nhưng điều duy nhất bạn không thể làm là phủ nhận sự tồn tại của họ. Đó là những người luôn tạo ra sự thay đổi trong khi hầu hết con người chỉ sống rập khuôn như một cái máy. Đa số đều nghĩ họ thật điên rồ nhưng nếu nhìn ở góc khác, ta lại thấy họ thiên tài. Bởi chỉ những người đủ điên nghĩ rằng họ có thể thay đổi thế giới mới là những người làm được điều đó. \r\n\r\nChào mừng đến với thế giới của những kẻ điên.', 'b_a-thi_n-t_i-b_n-tr.jpg', '2022-12-07 15:42:34', 1, 100, NULL, 'Viktor E Frankl');
INSERT INTO `book` (`id`, `title`, `price`, `description`, `image`, `created_at`, `display`, `stock`, `discount_id`, `author`) VALUES
(30, 'Đọc Vị Bất Kỳ Ai (Tái Bản 2019)', 79000, 'Bạn băn khoăn không biết người ngồi đối diện đang nghĩ gì? Họ có đang nói dối bạn không? Đối tác đang ngồi đối diện với bạn trên bàn đàm phán đang nghĩ gì và nói gì tiếp theo?\r\n\r\nĐỌC người khác là một trong những công cụ quan trọng, có giá trị nhất, giúp ích cho bạn trong mọi khía cạnh của cuộc sống. ĐỌC VỊ người khác để:\r\n\r\nHãy chiếm thế thượng phong trong việc chủ động nhận biết điều cần tìm kiếm - ở bất kỳ ai bằng cách “thâm nhập vào suy nghĩ” của người khác. ĐỌC VỊ BẤT KỲ AI là cẩm nang dạy bạn cách thâm nhập vào tâm trí của người khác để biết điều người ta đang nghĩ. Cuốn sách này sẽ không giúp bạn rút ra các kết luận chung về một ai đó dựa vào cảm tính hay sự võ đoán. Những nguyên tắc được chia sẻ trong cuốn sách này không đơn thuần là những lý thuyết hay mẹo vặt chỉ đúng trong một số trường hợp hoặc với những đối tượng nhất định. Các kết quả nghiên cứu trong cuốn sách này được đưa ra dựa trên phương pháp S.N.A.P - cách thức phân tích và tìm hiểu tính cách một cách bài bản trong phạm vi cho phép mà không làm mếch lòng đối tượng được phân tích. Phương pháp này dựa trên những phân tích về tâm lý, chứ không chỉ đơn thuần dựa trên ngôn ngữ cử chỉ, trực giác hay võ đoán.\r\n\r\nCuốn sách được chia làm hai phần và 15 chương:\r\n\r\nPhần 1: Bảy câu hỏi cơ bản: Học cách phát hiện ra điều người khác nghĩ hay cảm nhận một cách dễ dàng và nhanh chóng trong bất kỳ hoàn cảnh nào.\r\n\r\nPhần 2: Những kế hoạch chi tiết cho hoạt động trí óc - hiểu được quá trình ra quyết định. Vượt ra ngoài việc đọc các suy nghĩ và cảm giác đơn thuần: Hãy học cách người khác suy nghĩ để có thể nắm bắt bất kỳ ai, phán đoán hành xử và hiểu được họ còn hơn chính bản thân họ.\r\n\r\nTrích đoạn sách hay:\r\n\r\nMột giám đốc phụ trách bán hàng nghi ngờ một trong những nhân viên kinh doanh của mình đang biển thủ công quỹ. Nếu hỏi trực tiếp “Có phải cô đang lấy trộm đồ của công ty?” sẽ khiến người bị nghi ngờ phòng bị ngay lập tức, việc muốn tìm ra chân tướng sự việc càng trở nên khó khăn hơn. Nếu cô ta không làm việc đó, dĩ nhiên cô ta sẽ nói với người giám đốc mình không lấy trộm. Ngược lại, dù có lấy trộm đi chăng nữa, cô ta cũng sẽ nói dối mình không hề làm vậy. Thay vào việc hỏi trực diện, người giám đốc khôn ngoan nên nói một điều gì đó tưởng chừng vô hại, như “Jill, không biết cô có giúp được tôi việc này không. Có vẻ như dạo này có người trong phòng đang lấy đồ của công ty về nhà phục vụ cho tư lợi cá nhân. Cô có hướng giải quyết nào cho việc này không?” rồi bình tĩnh quan sát phản ứng của người nhân viên.\r\n\r\nNếu cô ta hỏi lại và có vẻ hứng thú với đề tài này, anh ta có thể tạm an tâm rằng cô ta không lấy trộm, còn nếu cô ta đột nhiên trở nên không thoải mái và tìm cách thay đổi đề tài thì rõ ràng cô ta có động cơ không trong sáng.\r\n\r\nNgười giám đốc khi đó sẽ nhận ra sự chuyển hướng đột ngột trong thái độ và hành vi của người nhân viên. Nếu cô gái đó hoàn toàn trong sạch, có lẽ cô ta sẽ đưa ra hướng giải quyết của mình và vui vẻ khi sếp hỏi ý kiến của mình. Ngược lại, cô ta sẽ có biểu hiện không thoải mái rõ ràng và có lẽ sẽ cố cam đoan với sếp rằng cô không đời nào làm việc như vậy. Không có lí do gì để cô ta phải thanh minh như vậy, trừ phi cô là người có cảm giác tội lỗi…\r\n\r\nMã hàng	8935280904262\r\nTên Nhà Cung Cấp	Thái Hà\r\nTác giả	TS David J Lieberman\r\nNXB	NXB Lao Động\r\nNăm XB	2019\r\nTrọng lượng (gr)	250\r\nKích Thước Bao Bì	13 x 20.5 cm\r\nSố trang	223\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nĐồ Chơi Cho Bé - Giá Cực Tốt\r\nThái Hà\r\nTủ Sách Tâm Lý Kỹ Năng\r\nVNPAY\r\nRƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Kỹ năng sống bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nBạn băn khoăn không biết người ngồi đối diện đang nghĩ gì? Họ có đang nói dối bạn không? Đối tác đang ngồi đối diện với bạn trên bàn đàm phán đang nghĩ gì và nói gì tiếp theo?\r\n\r\nĐỌC người khác là một trong những công cụ quan trọng, có giá trị nhất, giúp ích cho bạn trong mọi khía cạnh của cuộc sống. ĐỌC VỊ người khác để:\r\n\r\nHãy chiếm thế thượng phong trong việc chủ động nhận biết điều cần tìm kiếm - ở bất kỳ ai bằng cách “thâm nhập vào suy nghĩ” của người khác. ĐỌC VỊ BẤT KỲ AI là cẩm nang dạy bạn cách thâm nhập vào tâm trí của người khác để biết điều người ta đang nghĩ. Cuốn sách này sẽ không giúp bạn rút ra các kết luận chung về một ai đó dựa vào cảm tính hay sự võ đoán. Những nguyên tắc được chia sẻ trong cuốn sách này không đơn thuần là những lý thuyết hay mẹo vặt chỉ đúng trong một số trường hợp hoặc với những đối tượng nhất định. Các kết quả nghiên cứu trong cuốn sách này được đưa ra dựa trên phương pháp S.N.A.P - cách thức phân tích và tìm hiểu tính cách một cách bài bản trong phạm vi cho phép mà không làm mếch lòng đối tượng được phân tích. Phương pháp này dựa trên những phân tích về tâm lý, chứ không chỉ đơn thuần dựa trên ngôn ngữ cử chỉ, trực giác hay võ đoán.', 'image_195509_1_12542.jpg', '2022-12-07 15:42:34', 1, 100, NULL, 'Charles Duhigg'),
(31, 'Tâm Lý Học Phạm Tội - Phác Họa Chân Dung Kẻ Phạm Tội', 145000, 'Tội phạm, nhất là những vụ án mạng, luôn là một chủ đề thu hút sự quan tâm của công chúng, khơi gợi sự hiếu kỳ của bất cứ ai. Một khi đã bắt đầu theo dõi vụ án, hẳn bạn không thể không quan tâm tới kết cục, đặc biệt là cách thức và động cơ của kẻ sát nhân, từ những vụ án phạm vi hẹp cho đến những vụ án làm rúng động cả thế giới.\r\n\r\nLấy 36 vụ án CÓ THẬT kinh điển nhất trong hồ sơ tội phạm của FBI, “Tâm lý học tội phạm - phác họa chân dung kẻ phạm tội” mang đến cái nhìn toàn cảnh của các chuyên gia về chân dung tâm lý tội phạm. Trả lời cho câu hỏi: Làm thế nào phân tích được tâm lý và hành vi tội phạm, từ đó khôi phục sự thật thông qua các manh mối, từ hiện trường vụ án, thời gian, dấu tích,… để tìm ra kẻ sát nhân thực sự. \r\n\r\nĐằng sau máu và nước mắt là các câu chuyện rợn tóc gáy về tội ác, góc khuất xã hội và những màn đấu trí đầy gay cấn giữa điều tra viên và kẻ phạm tội. Trong số đó có những con quỷ ăn thịt người; những cô gái xinh đẹp nhưng xảo quyệt; và cả cách trả thù đầy man rợ của các nhà khoa học,… Một số đã sa vào lưới pháp luật ngay khi chúng vừa ra tay, nhưng cũng có những kẻ cứ vậy ngủ yên hơn hai mươi năm. \r\n\r\nBằng giọng văn sắc bén, “Tâm lý học tội phạm - phác họa chân dung kẻ phạm tội” hứa hẹn dẫn dắt người đọc đi qua các cung bậc cảm xúc từ tò mò, ngạc nhiên đến sợ hãi, hoang mang tận cùng. Chúng ta sẽ lần tìm về quá khứ để từng bước gỡ những nút thắt chưa được giải, khiến ta \"ngạt thở\" đọc tới tận trang cuối cùng. \r\n\r\nHy vọng cuốn sách sẽ giúp bạn có cái nhìn sâu sắc, rõ ràng hơn về bộ môn tâm lý học tội phạm và có thể rèn luyện thêm sự tư duy, nhạy bén.\r\n\r\nMã hàng	8935325001819\r\nTên Nhà Cung Cấp	AZ Việt Nam\r\nTác giả	Diệp Hồng Vũ\r\nNgười Dịch	Đỗ Ái Nhi\r\nNXB	NXB Thanh Niên\r\nNăm XB	2021\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	300\r\nKích Thước Bao Bì	24 x 16 cm\r\nSố trang	280\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nAZ Việt Nam\r\nĐồ Chơi Cho Bé - Giá Cực Tốt\r\nTủ Sách Tâm Lý Kỹ Năng\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Tâm lý bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nTÂM LÝ HỌC TỘI PHẠM - PHÁC HỌA CHÂN DUNG KẺ PHẠM TỘI\r\n\r\nTội phạm, nhất là những vụ án mạng, luôn là một chủ đề thu hút sự quan tâm của công chúng, khơi gợi sự hiếu kỳ của bất cứ ai. Một khi đã bắt đầu theo dõi vụ án, hẳn bạn không thể không quan tâm tới kết cục, đặc biệt là cách thức và động cơ của kẻ sát nhân, từ những vụ án phạm vi hẹp cho đến những vụ án làm rúng động cả thế giới.\r\n\r\nLấy 36 vụ án CÓ THẬT kinh điển nhất trong hồ sơ tội phạm của FBI, “Tâm lý học tội phạm - phác họa chân dung kẻ phạm tội” mang đến cái nhìn toàn cảnh của các chuyên gia về chân dung tâm lý tội phạm. Trả lời cho câu hỏi: Làm thế nào phân tích được tâm lý và hành vi tội phạm, từ đó khôi phục sự thật thông qua các manh mối, từ hiện trường vụ án, thời gian, dấu tích,… để tìm ra kẻ sát nhân thực sự. \r\n\r\nĐằng sau máu và nước mắt là các câu chuyện rợn tóc gáy về tội ác, góc khuất xã hội và những màn đấu trí đầy gay cấn giữa điều tra viên và kẻ phạm tội. Trong số đó có những con quỷ ăn thịt người; những cô gái xinh đẹp nhưng xảo quyệt; và cả cách trả thù đầy man rợ của các nhà khoa học,… Một số đã sa vào lưới pháp luật ngay khi chúng vừa ra tay, nhưng cũng có những kẻ cứ vậy ngủ yên hơn hai mươi năm. \r\n\r\nBằng giọng văn sắc bén, “Tâm lý học tội phạm - phác họa chân dung kẻ phạm tội” hứa hẹn dẫn dắt người đọc đi qua các cung bậc cảm xúc từ tò mò, ngạc nhiên đến sợ hãi, hoang mang tận cùng. Chúng ta sẽ lần tìm về quá khứ để từng bước gỡ những nút thắt chưa được giải, khiến ta \"ngạt thở\" đọc tới tận trang cuối cùng. \r\n\r\nHy vọng cuốn sách sẽ giúp bạn có cái nhìn sâu sắc, rõ ràng hơn về bộ môn tâm lý học tội phạm và có thể rèn luyện thêm sự tư duy, nhạy bén.', 'ph_c-h_a-ch_n-dung-k_-ph_m-t_i.jpg', '2022-12-07 15:42:34', 1, 100, 2, 'Charles Duhigg'),
(32, 'Đời Ngắn Đừng Ngủ Dài (Tái Bản 2018)', 75000, '“Mọi lựa chọn đều giá trị. Mọi bước đi đều quan trọng. Cuộc sống vẫn diễn ra theo cách của nó, không phải theo cách của ta. Hãy kiên nhẫn. Tin tưởng. Hãy giống như người thợ cắt đá, đều đặn từng nhịp, ngày qua ngày. Cuối cùng, một nhát cắt duy nhất sẽ phá vỡ tảng đá và lộ ra viên kim cương. Người tràn đầy nhiệt huyết và tận tâm với việc mình làm không bao giờ bị chối bỏ. Sự thật là thế.”\r\n\r\nBằng những lời chia sẻ thật ngắn gọn, dễ hiểu về những trải nghiệm và suy ngẫm trong đời, Robin Sharma tiếp tục phong cách viết của ông từ cuốn sách Điều vĩ đại đời thường để mang đến cho độc giả những bài viết như lời tâm sự, vừa chân thành vừa sâu sắc.\r\n\r\nMã hàng	8934974158691\r\nTên Nhà Cung Cấp	NXB Trẻ\r\nTác giả	Robin Sharma\r\nNXB	NXB Trẻ\r\nNăm XB	2018\r\nTrọng lượng (gr)	250\r\nKích Thước Bao Bì	13 x 20.5\r\nSố trang	228\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nNXB Trẻ\r\nTủ Sách Tâm Lý Kỹ Năng\r\nVNPAY\r\nRƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Kỹ năng sống bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\n“Mọi lựa chọn đều giá trị. Mọi bước đi đều quan trọng. Cuộc sống vẫn diễn ra theo cách của nó, không phải theo cách của ta. Hãy kiên nhẫn. Tin tưởng. Hãy giống như người thợ cắt đá, đều đặn từng nhịp, ngày qua ngày. Cuối cùng, một nhát cắt duy nhất sẽ phá vỡ tảng đá và lộ ra viên kim cương. Người tràn đầy nhiệt huyết và tận tâm với việc mình làm không bao giờ bị chối bỏ. Sự thật là thế.”\r\n\r\nBằng những lời chia sẻ thật ngắn gọn, dễ hiểu về những trải nghiệm và suy ngẫm trong đời, Robin Sharma tiếp tục phong cách viết của ông từ cuốn sách Điều vĩ đại đời thường để mang đến cho độc giả những bài viết như lời tâm sự, vừa chân thành vừa sâu sắc.', 'image_180164_1_43_1_57.jpg', '2022-12-07 15:42:34', 1, 100, NULL, 'Charles Duhigg'),
(33, 'Rèn Luyện Tư Duy Phản Biện', 99000, 'Như bạn có thể thấy, chìa khóa để trở thành một người có tư duy phản biện tốt chính là sự tự nhận thức. Bạn cần phải đánh giá trung thực những điều trước đây bạn nghĩ là đúng, cũng như quá trình suy nghĩ đã dẫn bạn tới những kết luận đó. Nếu bạn không có những lý lẽ hợp lý, hoặc nếu suy nghĩ của bạn bị ảnh hưởng bởi những kinh nghiệm và cảm xúc, thì lúc đó hãy cân nhắc sử dụng tư duy phản biện! Bạn cần phải nhận ra được rằng con người, kể từ khi sinh ra, rất giỏi việc đưa ra những lý do lý giải cho những suy nghĩ khiếm khuyết của mình. Nếu bạn đang có những kết luận sai lệch này thì có một sự thật là những đức tin của bạn thường mâu thuẫn với nhau và đó thường là kết quả của thiên kiến xác nhận, nhưng nếu bạn biết điều này, thì bạn đã tiến gần hơn tới sự thật rồi!\r\n\r\nNhững người tư duy phản biện cũng biết rằng họ cần thu thập những ý tưởng và đức tin của mọi người. Tư duy phản biện không thể tự nhiên mà có.\r\n\r\nNhững người khác có thể đưa ra những góc nhìn khác mà bạn có thể chưa bao giờ nghĩ tới, và họ có thể chỉ ra những lỗ hổng trong logic của bạn mà bạn đã hoàn toàn bỏ qua. Bạn không cần phải hoàn toàn đồng ý với ý kiến của những người khác, bởi vì điều này cũng có thể dẫn tới những vấn đề liên quan đến thiên kiến, nhưng một cuộc thảo luận phản biện là một bài tập tư duy cực kỳ hiệu quả.\r\n\r\nViệc lắng nghe những ý kiến của người khác cũng có thể giúp bạn nhận ra rằng phạm vi tri thức của bạn không phải là vô hạn. Không ai có thể biết hết tất cả mọi thứ. Nhưng với việc chia sẻ và đánh giá phê bình kiến thức, chúng ta có thể mở rộng tâm trí. Nếu điều này khiến bạn cảm thấy không thoải mái, không sao cả. Trên thực tế, bước ra ngoài vùng an toàn là một điều quan trọng để mở rộng niềm tin và suy nghĩ của bạn. Tư duy phản biện không phải là chỉ biết vài thứ, và chắc chắn không phải việc xác nhận những điều bạn đã biết. Thay vào đó, nó xoay quanh việc tìm kiếm sự thật – và biến chúng trở thành thứ bạn biết.\r\n\r\nMã hàng	8936066687812\r\nTên Nhà Cung Cấp	1980 Books\r\nTác giả	Albert Rutherford\r\nNgười Dịch	Nguyễn Ngọc Anh\r\nNXB	NXB Phụ Nữ Việt Nam\r\nNăm XB	2020\r\nTrọng lượng (gr)	300\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\n1980 Books\r\nTủ Sách Tâm Lý Kỹ Năng\r\nVNPAY\r\nRƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Kỹ năng sống bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nNhư bạn có thể thấy, chìa khóa để trở thành một người có tư duy phản biện tốt chính là sự tự nhận thức. Bạn cần phải đánh giá trung thực những điều trước đây bạn nghĩ là đúng, cũng như quá trình suy nghĩ đã dẫn bạn tới những kết luận đó. Nếu bạn không có những lý lẽ hợp lý, hoặc nếu suy nghĩ của bạn bị ảnh hưởng bởi những kinh nghiệm và cảm xúc, thì lúc đó hãy cân nhắc sử dụng tư duy phản biện! Bạn cần phải nhận ra được rằng con người, kể từ khi sinh ra, rất giỏi việc đưa ra những lý do lý giải cho những suy nghĩ khiếm khuyết của mình. Nếu bạn đang có những kết luận sai lệch này thì có một sự thật là những đức tin của bạn thường mâu thuẫn với nhau và đó thường là kết quả của thiên kiến xác nhận, nhưng nếu bạn biết điều này, thì bạn đã tiến gần hơn tới sự thật rồi!\r\n\r\nNhững người tư duy phản biện cũng biết rằng họ cần thu thập những ý tưởng và đức tin của mọi người. Tư duy phản biện không thể tự nhiên mà có.\r\n\r\nNhững người khác có thể đưa ra những góc nhìn khác mà bạn có thể chưa bao giờ nghĩ tới, và họ có thể chỉ ra những lỗ hổng trong logic của bạn mà bạn đã hoàn toàn bỏ qua. Bạn không cần phải hoàn toàn đồng ý với ý kiến của những người khác, bởi vì điều này cũng có thể dẫn tới những vấn đề liên quan đến thiên kiến, nhưng một cuộc thảo luận phản biện là một bài tập tư duy cực kỳ hiệu quả.\r\n\r\nViệc lắng nghe những ý kiến của người khác cũng có thể giúp bạn nhận ra rằng phạm vi tri thức của bạn không phải là vô hạn. Không ai có thể biết hết tất cả mọi thứ. Nhưng với việc chia sẻ và đánh giá phê bình kiến thức, chúng ta có thể mở rộng tâm trí. Nếu điều này khiến bạn cảm thấy không thoải mái, không sao cả. Trên thực tế, bước ra ngoài vùng an toàn là một điều quan trọng để mở rộng niềm tin và suy nghĩ của bạn. Tư duy phản biện không phải là chỉ biết vài thứ, và chắc chắn không phải việc xác nhận những điều bạn đã biết. Thay vào đó, nó xoay quanh việc tìm kiếm sự thật – và biến chúng trở thành thứ bạn biết.', 'image_195509_1_18448.jpg', '2022-12-07 15:42:34', 1, 100, 1, 'Charles Duhigg'),
(34, 'Nhà Giả Kim (Tái Bản 2020)', 79000, 'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. \r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”\r\n\r\n- Trích Nhà giả kim\r\n\r\nNhận định\r\n\r\n“Sau Garcia Márquez, đây là nhà văn Mỹ Latinh được đọc nhiều nhất thế giới.” - The Economist, London, Anh\r\n\r\n \r\n\r\n“Santiago có khả năng cảm nhận bằng trái tim như Hoàng tử bé của Saint-Exupéry.” - Frankfurter Allgemeine Zeitung, Đức\r\n\r\nMã hàng	8935235226272\r\nTên Nhà Cung Cấp	Nhã Nam\r\nTác giả	Paulo Coelho\r\nNgười Dịch	Lê Chu Cầu\r\nNXB	NXB Hội Nhà Văn\r\nNăm XB	2020\r\nTrọng lượng (gr)	220\r\nKích Thước Bao Bì	20.5 x 13 cm\r\nSố trang	227\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nĐồ Chơi Cho Bé - Giá Cực Tốt\r\nNhã Nam\r\nTop sách được phiên dịch nhiều nhất\r\nRƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Tiểu thuyết bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nTất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. \r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”\r\n\r\n- Trích Nhà giả kim', 'image_195509_1_36793.jpg', '2022-12-07 15:50:03', 1, 100, NULL, 'Viktor E Frankl'),
(35, 'Cây Cam Ngọt Của Tôi', 108000, 'Hãy làm quen với Zezé, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi.\r\n\r\nCó hề gì đâu bao nhiêu là hắt hủi, đánh mắng, vì Zezé đã có một người bạn đặc biệt để trút nỗi lòng: cây cam ngọt nơi vườn sau. Và cả một người bạn nữa, bằng xương bằng thịt, một ngày kia xuất hiện, cho cậu bé nhạy cảm khôn sớm biết thế nào là trìu mến, thế nào là nỗi đau, và mãi mãi thay đổi cuộc đời cậu.\r\n\r\nMở đầu bằng những thanh âm trong sáng và kết thúc lắng lại trong những nốt trầm hoài niệm, Cây cam ngọt của tôi khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như bông hoa trắng của cái cây sau nhà, và rằng cuộc đời thật khốn khổ nếu thiếu đi lòng yêu thương và niềm trắc ẩn. Cuốn sách kinh điển này bởi thế không ngừng khiến trái tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.\r\n\r\nTÁC GIẢ:\r\n\r\nJOSÉ MAURO DE VASCONCELOS (1920-1984) là nhà văn người Brazil. Sinh ra trong một gia đình nghèo ở ngoại ô Rio de Janeiro, lớn lên ông phải làm đủ nghề để kiếm sống. Nhưng với tài kể chuyện thiên bẩm, trí nhớ phi thường, trí tưởng tượng tuyệt vời cùng vốn sống phong phú, José cảm thấy trong mình thôi thúc phải trở thành nhà văn nên đã bắt đầu sáng tác năm 22 tuổi. Tác phẩm nổi tiếng nhất của ông là tiểu thuyết mang màu sắc tự truyện Cây cam ngọt của tôi. Cuốn sách được đưa vào chương trình tiểu học của Brazil, được bán bản quyền cho hai mươi quốc gia và chuyển thể thành phim điện ảnh. Ngoài ra, José còn rất thành công trong vai trò diễn viên điện ảnh và biên kịch.\r\n\r\nMã hàng	8935235228351\r\nTên Nhà Cung Cấp	Nhã Nam\r\nTác giả	José Mauro de Vasconcelos\r\nNgười Dịch	Nguyễn Bích Lan, Tô Yến Ly\r\nNXB	NXB Hội Nhà Văn\r\nNăm XB	2020\r\nTrọng lượng (gr)	280\r\nKích Thước Bao Bì	20 x 14.5 cm\r\nSố trang	244\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nĐồ Chơi Cho Bé - Giá Cực Tốt\r\nNhã Nam\r\nRƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Tiểu thuyết bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\n“Vị chua chát của cái nghèo hòa trộn với vị ngọt ngào khi khám phá ra những điều khiến cuộc đời này đáng sống... một tác phẩm kinh điển của Brazil.” - Booklist\r\n\r\n“Một cách nhìn cuộc sống gần như hoàn chỉnh từ con mắt trẻ thơ… có sức mạnh sưởi ấm và làm tan nát cõi lòng, dù người đọc ở lứa tuổi nào.” - The National\r\n\r\nHãy làm quen với Zezé, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi.\r\n\r\nCó hề gì đâu bao nhiêu là hắt hủi, đánh mắng, vì Zezé đã có một người bạn đặc biệt để trút nỗi lòng: cây cam ngọt nơi vườn sau. Và cả một người bạn nữa, bằng xương bằng thịt, một ngày kia xuất hiện, cho cậu bé nhạy cảm khôn sớm biết thế nào là trìu mến, thế nào là nỗi đau, và mãi mãi thay đổi cuộc đời cậu.\r\n\r\nMở đầu bằng những thanh âm trong sáng và kết thúc lắng lại trong những nốt trầm hoài niệm, Cây cam ngọt của tôi khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như bông hoa trắng của cái cây sau nhà, và rằng cuộc đời thật khốn khổ nếu thiếu đi lòng yêu thương và niềm trắc ẩn. Cuốn sách kinh điển này bởi thế không ngừng khiến trái tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.', 'image_217480.jpg', '2022-12-07 15:50:03', 1, 100, 2, 'Viktor E Frankl'),
(36, 'Bước Chậm Lại Giữa Thế Gian Vội Vã (Tái Bản 2018)', 85000, 'Chen vai thích cánh để có một chỗ bám trên xe buýt giờ đi làm, nhích từng xentimét bánh xe trên đường lúc tan sở, quay cuồng với thi cử và tiến độ công việc, lu bù vướng mắc trong những mối quan hệ cả thân lẫn sơ… bạn có luôn cảm thấy thế gian xung quanh mình đang xoay chuyển quá vội vàng?\r\n\r\nNếu có thể, hãy tạm dừng một bước.\r\n\r\nĐể tự hỏi, là do thế gian này vội vàng hay do chính tâm trí bạn đang quá bận rộn? Để cầm cuốn sách nhỏ dung dị mà lắng đọng này lên, chậm rãi lật giở từng trang, thong thả khám phá những điều mà chỉ khi bước chậm lại mới có thể thấu rõ: về các mối quan hệ, về chính bản thân mình, về những trăn trở trước cuộc đời và nhân thế, về bao điều lý trí rất hiểu nhưng trái tim chưa cách nào nghe theo…\r\n\r\nRa mắt lần đầu năm 2012, Bước chậm lại giữa thế gian vội vã của Đại đức Hae Min đã liên tục đứng đầu danh sách best-seller của nhiều trang sách trực tuyến uy tín của Hàn Quốc, trở thành cuốn sách chữa lành cho hàng triệu người trẻ luôn tất bật với nhịp sống hiện đại hối hả.\r\n\r\n \r\n\r\nMã hàng	8935235217737\r\nTên Nhà Cung Cấp	Nhã Nam\r\nTác giả	Hae Min\r\nNgười Dịch	Nguyễn Việt Tú Anh\r\nNXB	NXB Hội Nhà Văn\r\nNăm XB	2018\r\nTrọng lượng (gr)	280\r\nKích Thước Bao Bì	14 x 20.5\r\nSố trang	254\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nNhã Nam\r\nRƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Tiểu thuyết bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nBước Chậm Lại Giữa Thế Gian Vội Vã (Tái Bản 2018)\r\n\r\nChen vai thích cánh để có một chỗ bám trên xe buýt giờ đi làm, nhích từng xentimét bánh xe trên đường lúc tan sở, quay cuồng với thi cử và tiến độ công việc, lu bù vướng mắc trong những mối quan hệ cả thân lẫn sơ… bạn có luôn cảm thấy thế gian xung quanh mình đang xoay chuyển quá vội vàng?\r\n\r\nNếu có thể, hãy tạm dừng một bước.\r\n\r\nĐể tự hỏi, là do thế gian này vội vàng hay do chính tâm trí bạn đang quá bận rộn? Để cầm cuốn sách nhỏ dung dị mà lắng đọng này lên, chậm rãi lật giở từng trang, thong thả khám phá những điều mà chỉ khi bước chậm lại mới có thể thấu rõ: về các mối quan hệ, về chính bản thân mình, về những trăn trở trước cuộc đời và nhân thế, về bao điều lý trí rất hiểu nhưng trái tim chưa cách nào nghe theo…', 'buoc_cham_lai_giua_the_gian_voi_va.jpg', '2022-12-07 15:50:03', 1, 100, 1, 'Priest'),
(37, 'Nhân Vật Hạ Cấp Tomozaki - Tập 3', 111000, 'Học kì một đầy sóng gió đã kết thúc, giờ là tới kì nghỉ hè.\r\n\r\nPhần nào đó trong tôi đã dự đoán được rằng Hinami không hề có ý định cho tôi “nghỉ”. “Giải thích một cách đơn giản, đây chính là kì cắm trại tập huấn để vun vào cho Yuzu và Nakamura”… Một nhóm nam nữ ăn tiệc nướng BBQ, chơi đùa bên sông, rồi trọ lại qua đêm. Chà, tôi thấy đây đúng là một sự kiện khắc hoạ đầy chân thật về riajuu đấy. Chỉ có đúng một vấn đề. Đấy là tôi cũng phải tham gia. Cảm giác kì quặc bao trùm này là sao nhỉ? Hơn thế nữa, về cuộc hẹn với Kikuchi, thực tế Hinami đã lệnh cho tôi “phải thành đôi với Kikuchi trong mùa hè này”...? Kì nghỉ hè của tôi sẽ thành ra thế nào đây!?\r\n\r\nTập thứ 3 của bộ truyện hài lãng mạn nơi một nhân vật hạ cấp chấp nhận thử thách chinh phục cuộc đời!\r\n\r\n* NHÂN VẬT HẠ CẤP TOMOZAKI là tác phẩm đạt giải xuất sắc trong khuôn khổ giải thưởng Light novel Shogakukan lần thứ mười. 5 năm liền lọt top bảng xếp hạng Kono Light novel ga sugoi!\r\n\r\nMã hàng	8935244875430\r\nĐộ Tuổi	15 - 18\r\nTên Nhà Cung Cấp	Nhà Xuất Bản Kim Đồng\r\nTác giả	Yuki Yaku, Fly\r\nNgười Dịch	akiyuki\r\nNXB	NXB Kim Đồng\r\nNăm XB	2021\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	450\r\nKích Thước Bao Bì	19 x 13 cm\r\nSố trang	436\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nNhà Xuất Bản Kim Đồng\r\nRƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Light Novel bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nHọc kì một đầy sóng gió đã kết thúc, giờ là tới kì nghỉ hè.\r\n\r\nPhần nào đó trong tôi đã dự đoán được rằng Hinami không hề có ý định cho tôi “nghỉ”. “Giải thích một cách đơn giản, đây chính là kì cắm trại tập huấn để vun vào cho Yuzu và Nakamura”… Một nhóm nam nữ ăn tiệc nướng BBQ, chơi đùa bên sông, rồi trọ lại qua đêm. Chà, tôi thấy đây đúng là một sự kiện khắc hoạ đầy chân thật về riajuu đấy. Chỉ có đúng một vấn đề. Đấy là tôi cũng phải tham gia. Cảm giác kì quặc bao trùm này là sao nhỉ? Hơn thế nữa, về cuộc hẹn với Kikuchi, thực tế Hinami đã lệnh cho tôi “phải thành đôi với Kikuchi trong mùa hè này”...? Kì nghỉ hè của tôi sẽ thành ra thế nào đây!?', 'nhan-vat-ha-cap-tomozaki---tap-3.jpg', '2022-12-07 15:50:03', 1, 100, NULL, 'Priest'),
(38, 'Hai Số Phận - Bìa Cứng', 175000, '(“Hai số phận” (Kane & Abel) là câu chuyện về hai người đàn ông đi tìm vinh quang. William Kane là con một triệu phú nổi tiếng trên đất Mỹ, lớn lên trong nhung lụa của thế giới thượng lưu. Wladek Koskiewicz là đứa trẻ không rõ xuất thân, được gia đình người bẫy thú nhặt về nuôi. Một người được ấn định để trở thành chủ ngân hàng khi lớn lên, người kia nhập cư vào Mỹ cùng đoàn người nghèo khổ. \r\nTrải qua hơn sáu mươi năm với biết bao biến động, hai con người giàu hoài bão miệt mài xây dựng vận mệnh của mình . “Hai số phận” nói về nỗi khát khao cháy bỏng, những nghĩa cử, những mối thâm thù, từng bước đường phiêu lưu, hiện thực thế giới và những góc khuất... mê hoặc người đọc bằng ngôn từ cô đọng, hai mạch truyện song song được xây dựng tinh tế từ những chi tiết nhỏ nhất.) ', 'image_179484.jpg', '2022-12-07 15:50:03', 1, 100, NULL, 'Joy Woodward');

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `book_id` int NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`book_id`, `category`) VALUES
(13, 'Khoa Học Kỹ Thuật'),
(14, 'Khoa Học Kỹ Thuật'),
(15, 'Khoa Học Kỹ Thuật'),
(17, 'Khoa Học Kỹ Thuật'),
(18, 'Khoa Học Kỹ Thuật'),
(19, 'Kinh Tế'),
(20, 'Kinh Tế'),
(21, 'Kinh Tế'),
(22, 'Kinh Tế'),
(23, 'Kinh Tế'),
(24, 'Manga - Comic'),
(25, 'Manga - Comic'),
(26, 'Manga - Comic'),
(27, 'Manga - Comic'),
(28, 'Manga - Comic'),
(29, 'Tâm Lý - Kỹ Năng Sống'),
(30, 'Tâm Lý - Kỹ Năng Sống'),
(31, 'Tâm Lý - Kỹ Năng Sống'),
(32, 'Tâm Lý - Kỹ Năng Sống'),
(33, 'Tâm Lý - Kỹ Năng Sống'),
(34, 'Văn Học'),
(35, 'Văn Học'),
(36, 'Văn Học'),
(37, 'Văn Học'),
(38, 'Văn Học');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int NOT NULL,
  `session_id` int NOT NULL,
  `book_id` int NOT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `name` varchar(30) NOT NULL,
  `description` text,
  `display` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`name`, `description`, `display`) VALUES
('Khoa Học Kỹ Thuật', NULL, 1),
('Kinh Tế', NULL, 1),
('Manga - Comic', NULL, 1),
('Tâm Lý - Kỹ Năng Sống', NULL, 1),
('Văn Học', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `book_id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `customer_id`, `book_id`, `username`, `comment`, `comment_date`) VALUES
(1, 1, 28, 'khabanh:mk:1234567', 'amazing good job', '2022-12-07 00:00:00'),
(2, 1, 36, 'khabanh:mk:1234567', 'cung dc', '2023-12-01 00:00:00'),
(3, 1, 26, 'khabanh:mk:1234567', 'good good', '2022-12-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int NOT NULL,
  `username` varchar(60) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `firstname`, `lastname`, `password`, `phone`, `created_at`, `modified_at`, `email`) VALUES
(1, 'khabanh:mk:1234567', 'kha', 'banh', 'fcea920f7412b5da7be0cf42b8c93759', '0123456789', '2022-12-07 16:22:48', '2022-12-07 16:22:48', 'khabanh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` text,
  `discount_percent` decimal(3,2) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `name`, `description`, `discount_percent`, `active`, `created_at`, `modified_at`) VALUES
(1, 'discount 1', NULL, '0.45', 1, '2022-12-07 16:09:56', '2022-12-07 16:09:56'),
(2, 'discount 2', NULL, '0.30', 1, '2022-12-07 16:09:56', '2022-12-07 16:09:56');

-- --------------------------------------------------------

--
-- Table structure for table `header_info`
--

CREATE TABLE `header_info` (
  `id` int NOT NULL,
  `email` varchar(30) NOT NULL,
  `tweeter` varchar(500) NOT NULL,
  `fb_link` varchar(500) NOT NULL,
  `pinterest` varchar(500) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `header_info`
--

INSERT INTO `header_info` (`id`, `email`, `tweeter`, `fb_link`, `pinterest`, `phone`) VALUES
(1, 'bku@gmail.com', 'https://twitter.com/', 'https://facebook.com/', 'https://pinerest.com/', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delivery_address` varchar(30) NOT NULL,
  `order_status` varchar(10) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `book_id` int NOT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `provider` varchar(30) DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_session`
--

CREATE TABLE `shopping_session` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `total` decimal(10,0) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_logo`
--
ALTER TABLE `add_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_id` (`discount_id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`book_id`,`category`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD KEY `book_id` (`book_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`username`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_info`
--
ALTER TABLE `header_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `order_items_ibfk_1` (`book_id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `shopping_session`
--
ALTER TABLE `shopping_session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id_2` (`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_logo`
--
ALTER TABLE `add_logo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `header_info`
--
ALTER TABLE `header_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping_session`
--
ALTER TABLE `shopping_session`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`name`),
  ADD CONSTRAINT `book_category_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `shopping_session` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
