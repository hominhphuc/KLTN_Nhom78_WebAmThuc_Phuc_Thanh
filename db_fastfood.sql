-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db_fastfood
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_chitietdondathang`
--

DROP TABLE IF EXISTS `tbl_chitietdondathang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_chitietdondathang` (
  `mactddh` bigint NOT NULL AUTO_INCREMENT,
  `don_gia` double DEFAULT NULL,
  `so_luong_dat` int NOT NULL,
  `ma_don_dat_hang` bigint DEFAULT NULL,
  `ma_mat_hang` bigint DEFAULT NULL,
  PRIMARY KEY (`mactddh`),
  KEY `FK3t8v09qqt3pniyf0qaa04rj40` (`ma_don_dat_hang`),
  KEY `FKi3do55f0ot5fku6hf0dmgptj7` (`ma_mat_hang`),
  CONSTRAINT `FK3t8v09qqt3pniyf0qaa04rj40` FOREIGN KEY (`ma_don_dat_hang`) REFERENCES `tbl_dondathang` (`maddh`),
  CONSTRAINT `FKi3do55f0ot5fku6hf0dmgptj7` FOREIGN KEY (`ma_mat_hang`) REFERENCES `tbl_mathang` (`mamh`)
) ENGINE=InnoDB AUTO_INCREMENT=1368 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_chitietdondathang`
--

LOCK TABLES `tbl_chitietdondathang` WRITE;
/*!40000 ALTER TABLE `tbl_chitietdondathang` DISABLE KEYS */;
INSERT INTO `tbl_chitietdondathang` VALUES (1348,70000,1,322,49),(1349,65000,1,322,48),(1350,10000,1,323,21),(1351,199000,1,323,47),(1352,30000,1,323,41),(1353,20000,1,324,16),(1354,10000,1,324,27),(1358,20000,1,326,28),(1359,20000,1,326,29),(1360,20000,1,326,30),(1361,65000,1,327,39),(1362,20000,1,327,40),(1363,10000,1,328,22),(1364,10000,1,328,8),(1366,90000,3,329,38),(1367,30000,1,329,41);
/*!40000 ALTER TABLE `tbl_chitietdondathang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_dondathang`
--

DROP TABLE IF EXISTS `tbl_dondathang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_dondathang` (
  `maddh` bigint NOT NULL AUTO_INCREMENT,
  `dia_chi_giao_hang` varchar(255) DEFAULT NULL,
  `ngay_dat_hang` date DEFAULT NULL,
  `trang_thai` varchar(255) DEFAULT NULL,
  `ma_khach_hang` binary(16) DEFAULT NULL,
  `hinh_thuc` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL,
  `tong_tien` double DEFAULT NULL,
  `ma_giam_gia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`maddh`),
  KEY `FK9kru1yb24trt8h8l2vhw3nfv5` (`ma_khach_hang`),
  CONSTRAINT `FK9kru1yb24trt8h8l2vhw3nfv5` FOREIGN KEY (`ma_khach_hang`) REFERENCES `tbl_khachhang` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_dondathang`
--

LOCK TABLES `tbl_dondathang` WRITE;
/*!40000 ALTER TABLE `tbl_dondathang` DISABLE KEYS */;
INSERT INTO `tbl_dondathang` VALUES (322,'K7/11, Quận Tân Bình, TP.HCM','2023-05-10','Đã thanh toán',_binary '_īTV�@g�ȓ)y\�<','Giao tận nơi',NULL,135000,NULL),(323,'191/A28 Đ. Cống Quỳnh, Phường Nguyễn Cư Trinh, Quận 1, Thành phố Hồ Chí Minh, Việt Nam','2023-05-10','Đã thanh toán',_binary '|}\'˜8L(���u�o�','Giao tận nơi',NULL,239000,NULL),(324,'191/A28 Đ. Cống Quỳnh, Phường Nguyễn Cư Trinh, Quận 1, Thành phố Hồ Chí Minh, Việt Nam','2023-05-10','Đã thanh toán',_binary 'd5j�R�O��K�m^N�t','Giao tận nơi',NULL,30000,NULL),(326,'191/A28 Đ. Cống Quỳnh, Phường Nguyễn Cư Trinh, Quận 1, Thành phố Hồ Chí Minh, Việt Nam','2023-05-10','Đã thanh toán',_binary '�~��\�~K���em[{�=','Dùng tại chỗ',NULL,60000,NULL),(327,'','2023-05-10','Chờ xác nhận',_binary '�~��\�~K���em[{�=','Mua mang đi',NULL,85000,NULL),(328,'249 Lê Văn Sỹ, Phú Nhuận, TP.HCM','2023-05-10','Đang giao',_binary 'YolG\�E�^���\�t','Giao tận nơi',NULL,20000,NULL),(329,'18 Lê Lợi, Quận 1, TP.HCM','2023-05-10','Đã thanh toán',_binary '\rY\�a�D��\�\�btr','Giao tận nơi',NULL,120000,NULL),(330,NULL,'2023-05-10',NULL,_binary '{���J_�IO\�\�3',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_dondathang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_giohang`
--

DROP TABLE IF EXISTS `tbl_giohang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_giohang` (
  `magh` bigint NOT NULL,
  `so_luong` int NOT NULL,
  `ma_khach_hang` binary(16) DEFAULT NULL,
  `ma_mat_hang` bigint DEFAULT NULL,
  PRIMARY KEY (`magh`),
  KEY `FK3279rstncht7vnquh20pwihmv` (`ma_khach_hang`),
  KEY `FKmxfdbs5435bucqf5yvpjpyyub` (`ma_mat_hang`),
  CONSTRAINT `FK3279rstncht7vnquh20pwihmv` FOREIGN KEY (`ma_khach_hang`) REFERENCES `tbl_khachhang` (`user_id`),
  CONSTRAINT `FKmxfdbs5435bucqf5yvpjpyyub` FOREIGN KEY (`ma_mat_hang`) REFERENCES `tbl_mathang` (`mamh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_giohang`
--

LOCK TABLES `tbl_giohang` WRITE;
/*!40000 ALTER TABLE `tbl_giohang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_giohang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_gioithieu`
--

DROP TABLE IF EXISTS `tbl_gioithieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_gioithieu` (
  `magt` bigint NOT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `noi_dung` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `tieu_de` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`magt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_gioithieu`
--

LOCK TABLES `tbl_gioithieu` WRITE;
/*!40000 ALTER TABLE `tbl_gioithieu` DISABLE KEYS */;
INSERT INTO `tbl_gioithieu` VALUES (2,'https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo-hamburger-khoaitaychien-cocacola.png?alt=media&token=319cad22-2883-456d-be2f-361828f813da','Combo Hambuger & Khoai tây chiên','Thêm bạn thêm ngon - combo 1','Buổi sáng no nê, căng bụng '),(3,'https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo-banhngot-caphe.jpg?alt=media&token=468ca54a-b9e2-4b12-9390-c6848be1adf3','Combo Cà phê & Bánh ngọt','Thêm bạn thêm ngon - combo 2','Ngày cuối tuần vui vẻ'),(4,'https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo-banhmi-nuoc.jpg?alt=media&token=cc047d1e-5e17-40b4-a1f4-696e2faf2b1b','Combo Bánh mì thập cẩm & Cà phê sữa','Thêm bạn thêm ngon - combo 3','Dành cho từ 1 người ăn no nê'),(5,'https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combogaran_pepsi.jpg?alt=media&token=a156f88f-9fa7-4ef0-83e3-cd86cd1487ec','Combo Gà rán & Pepsi','Thêm bạn thêm ngon - combo 4','Phần đĩa đầy gà rán kèm với sốt chua ngọt và nước ngọt Pepsi'),(6,'https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo-kemcuon.jpeg?alt=media&token=5b37e46a-6b52-4a5b-bee9-949fdd33d0fc','Combo Kem cuộn','Thêm bạn thêm ngon - combo 5','Bao gồm 3 ly kem cuộn cho mùa hè mát mẻ'),(7,'https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo_lau_nuong.jpg?alt=media&token=2381fa22-228c-4d03-9711-9ad50d20b404','Combo Lẩu nướng','Thêm bạn thêm ngon - combo 6','Thưởng thức phần lẩu thập cẩm với combo'),(8,'https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo-sushi-chien.jpg?alt=media&token=79a4c27e-863a-42ae-b29d-1b40c38c800b','Combo Sushi chiên','Thêm bạn thêm ngon - combo 7','Mang phong cách Nhật Bản, phổ biến ở Việt Nam'),(9,'https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo-trasua.jpg?alt=media&token=f5d3341c-eb0c-4e59-bc8b-54cd0cb67ef1','Combo Trà sữa','Thêm bạn thêm ngon - combo 8','Những tín đồ mê trà sữa không thể bỏ qua combo này'),(10,'https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo-monHanQuoc.jpg?alt=media&token=a01412c9-6969-4009-809c-018e27c3b897','Combo Món Hàn','Thêm bạn thêm ngon - combo 9','Vui vẻ cùng những người bạn ');
/*!40000 ALTER TABLE `tbl_gioithieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_khachhang`
--

DROP TABLE IF EXISTS `tbl_khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_khachhang` (
  `user_id` binary(16) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `diem_tich_luy` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_khachhang`
--

LOCK TABLES `tbl_khachhang` WRITE;
/*!40000 ALTER TABLE `tbl_khachhang` DISABLE KEYS */;
INSERT INTO `tbl_khachhang` VALUES (_binary '\rY\�a�D��\�\�btr','18 Lê Lợi, Quận 1, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/xinzhaotrieutulong.jpg?alt=media&token=23aa1cfa-08c9-4716-8d46-a44150116f1b','1998-06-04','45gg@gmail.com',_binary '\0','Nguyễn Thu Thủy','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0961841771','ROLE_CLIENT',2640),(_binary '\���	dH�\�&\�gl','289 Lê Văn Sỹ, Quận Phú Nhuận, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/ss5.jpg?alt=media&token=02ea43e5-6b2a-4a67-a2e5-45b82c050a72','1997-07-11','h68@gmail.com.vn',_binary '\0','Lê Dương Bảo Lộc','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0325356778','ROLE_CLIENT',1900),(_binary '{���J_�IO\�\�3','45 Xô Viết Nghệ Tĩnh, Quận Bình Thạnh, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/1683730868107-supercarmercedes.jpeg?alt=media&token=2e2fdca7-01cf-48e3-ac78-81d160b707e0','1997-10-15','nguyenthiminhchau@gmail.com',_binary '','Huỳnh Trấn Thành','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0913542554','ROLE_CLIENT',1078),(_binary '$AB���J����\��Ft\"','104 Bình Trưng Tây , Quận 2, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/ss2.jfif?alt=media&token=8f8489c3-1edd-4f58-83e0-8ae2a404bb66','2000-12-08','maihtqt@gmail.com',_binary '\0','Lê Quốc Toản','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0374656565','ROLE_CLIENT',483),(_binary '$�~\�\�\�I��_A/�7','120 Phạm Thế Hiển, Quận 8, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/ss3.png?alt=media&token=bf5d5fee-ea11-483e-ac96-1470d1ed7fc6','2000-01-19','giaobao@gmail.com',_binary '\0','Trần Thị Mỹ Châu','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0947462632','ROLE_CLIENT',668),(_binary '1\�\n\�T]H��\���k�\��','128 Nguyễn Thị Minh Khai, Quận 3, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/avatar.jpg?alt=media&token=0bbe16de-1da9-4908-ba2c-9b26f4cad95f','1999-08-06','atxxxi@gmail.com',_binary '','Lữ Mỹ Châu','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0372062506','ROLE_CLIENT',938),(_binary '6���sCL��\r3\�\�X�','G8/11, Quận 7, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/A%CC%89nh-Anime-nam-nga%CC%82%CC%80u-1.jpg?alt=media&token=18a25aa4-0935-404d-af0f-e7f4a1c10713','1996-11-12','bacduong@gmail.com',_binary '\0','Hồ Mỹ Lan','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0977191553','ROLE_CLIENT',188),(_binary 'D�$��BD3�	Oe0}I\�','106 Trần Hưng Đạo, Quận 5, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/ironman.jfif?alt=media&token=0a59d021-91d0-40fd-b573-9525ad2c368a','1997-03-13','db@gmail.com',_binary '\0','Hồ Con Rùa','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0356078717','ROLE_CLIENT',886),(_binary 'YolG\�E�^���\�t','249 Lê Văn Sỹ, Phú Nhuận, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/1683454136973-ta%CC%89i%20xu%C3%B4%CC%81ng%20(4).jpg?alt=media&token=8f085755-e63f-44a1-bd1f-ab257f276bac','2000-08-01','atxxxi@gmail.com',_binary '','Trương Công Thành','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0934154398','ROLE_CLIENT',1000),(_binary '_īTV�@g�ȓ)y\�<','K7/11, Quận Tân Bình, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/326516.jpg?alt=media&token=2ba31a41-8b51-40da-ad51-4b2ffac4207c','1992-02-28','atkthainguyen@gmail.com',_binary '','Huỳnh Bảo Đức','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0372961599','ROLE_CLIENT',432),(_binary 'd5j�R�O��K�m^N�t','19 Bàu Cát, Quận Tân Bình, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/1683712803566-batman21.jpg?alt=media&token=ad60690d-9eaa-4c38-8787-31ee2a29f480','2000-12-04','chipu1994@gmail.com',_binary '','Huỳnh Ngọc Hiếu','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0987328788','ROLE_CLIENT',1000),(_binary 'e�6�\'jB���ܪB\n}','97 Phạm Đình Hổ, Quận 6, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/1682226343650-obama.jpg?alt=media&token=20d1e0fe-4c6d-4cf6-93b3-210553b7571f','1998-05-02','tungnuimtp@gmail.com',_binary '','Trần Duy Mạnh','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0869237439','ROLE_CLIENT',712),(_binary 'v��h�\�G�[H~J�r�','T8/15, Quận 5, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/nhathoducba.jpg?alt=media&token=be796668-dc2a-423f-b1d0-1d1dd5830c02','1995-05-29','nvchien@gmail.com',_binary '\0','Phan Thị Tú Quyên','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0345171769','ROLE_CLIENT',1363),(_binary '|}\'˜8L(���u�o�','22 Lê lợi','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/chungcunguyenhue.jpg?alt=media&token=d74a6462-2853-43b0-a7d1-8bfc455046a2','2000-08-01','phuclx182000@gmail.com',_binary '','Minh Phúc Hồ','$2a$10$qwIhYGSuS7QzO9XHtOC0AuoqPLWPXc6T7w5I9nJKNS3ooUTne2DE2','0395235847','ROLE_CLIENT',46),(_binary '�~��\�~K���em[{�=','19 Lý Tự Trọng, Quận 1, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/chungcunguyenhue.jpg?alt=media&token=d74a6462-2853-43b0-a7d1-8bfc455046a2','1999-06-09','nguyenvanchien225@gmail.com',_binary '','Bùi Hoàng Phát','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0913643579','ROLE_CLIENT',1562),(_binary '�\��>�GI�N!\0N\�y5','D5/25, Quận Bình Thạnh, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/chungcunguyenhue.jpg?alt=media&token=d74a6462-2853-43b0-a7d1-8bfc455046a2','2000-02-06','phorlan2k@gmail.com',_binary '','Hà Huy Vũ','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0973677639','ROLE_CLIENT',1523),(_binary '�\�\�Va�M���^N�[�}','202 Nam Kỳ Khởi Nghĩa, Quận 1, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/ho-con-rua.jpg?alt=media&token=435e1601-d2a3-4a17-aef3-990df8437a30','2001-12-09','banvamua@gmail.com',_binary '','Phạm Xuân Hòa','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0919668677','ROLE_CLIENT',2439),(_binary '\�4E\�B��Ĳ�I��2','Z8/456, Quận 1, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/xinzhaotrieutulong.jpg?alt=media&token=23aa1cfa-08c9-4716-8d46-a44150116f1b','2002-09-04','v48@gmail.com',_binary '\0','Nguyễn Thị Mỹ Anh','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0337410004','ROLE_CLIENT',1456),(_binary '\�S\�\�ѣEx�p\�͚V\Z�','13 Ngô Sỹ Sách, Quận 1, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/B%E1%BA%A3o_t%C3%A0ng_M%E1%BB%B9_thu%E1%BA%ADt_Th%C3%A0nh_ph%E1%BB%91_H%E1%BB%93_Ch%C3%AD_Minh.jpg?alt=media&token=531deb7d-bc48-42a1-9120-82ef76416971','2001-08-17','nm787@gmail.com',_binary '','Ngô Viết Chánh','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0392308299','ROLE_CLIENT',1741),(_binary '\�k���K�}\�\�\�\�\�','106 Nguyễn Đình Chiểu, Quận 3, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/ho-con-rua.jpg?alt=media&token=435e1601-d2a3-4a17-aef3-990df8437a30','2001-04-19','m00@gmail.com',_binary '','Phạm Văn Đạt','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0377787086','ROLE_CLIENT',1616),(_binary '�R\��\�3L#�k|<�NB','8 Nguyễn Thái Bình, Quận 1, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/ss6.jfif?alt=media&token=9b4b8d44-989f-467b-86f5-5a4336ce3d50','1999-01-04','huy@gmail.com',_binary '','Trần Huy Liệu','$2a$10$1yXEWvGsKPYbh7uvoMzjt.O1MZ.wqcuroA9c4t8.X5aBR5GEgWK4W','0333763786','ROLE_CLIENT',0);
/*!40000 ALTER TABLE `tbl_khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_loaimathang`
--

DROP TABLE IF EXISTS `tbl_loaimathang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_loaimathang` (
  `malmh` bigint NOT NULL AUTO_INCREMENT,
  `tenlmh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`malmh`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_loaimathang`
--

LOCK TABLES `tbl_loaimathang` WRITE;
/*!40000 ALTER TABLE `tbl_loaimathang` DISABLE KEYS */;
INSERT INTO `tbl_loaimathang` VALUES (1,'Bánh tráng'),(2,'Mì'),(3,'Nước uống '),(4,'Xiên que nướng'),(5,'Bánh mì'),(8,'Combo'),(10,'Bún đậu mắm tôm');
/*!40000 ALTER TABLE `tbl_loaimathang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mathang`
--

DROP TABLE IF EXISTS `tbl_mathang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_mathang` (
  `mamh` bigint NOT NULL AUTO_INCREMENT,
  `don_gia` double DEFAULT NULL,
  `don_vi_tinh` varchar(255) DEFAULT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `mo_ta` varchar(255) DEFAULT NULL,
  `tenmh` varchar(255) DEFAULT NULL,
  `ma_lmh` bigint DEFAULT NULL,
  PRIMARY KEY (`mamh`),
  KEY `FKjpasc8gyf7b13ca1otisq4nwc` (`ma_lmh`),
  CONSTRAINT `FKjpasc8gyf7b13ca1otisq4nwc` FOREIGN KEY (`ma_lmh`) REFERENCES `tbl_loaimathang` (`malmh`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mathang`
--

LOCK TABLES `tbl_mathang` WRITE;
/*!40000 ALTER TABLE `tbl_mathang` DISABLE KEYS */;
INSERT INTO `tbl_mathang` VALUES (1,20000,'Hộp','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/banhtrangcuonbo.jpg?alt=media&token=4ef9b7f2-bf9d-487c-a1ec-f1cc2bc57fc5','Với phần bánh tráng cuộn, thêm bên ngoài là phần bơ dầu cực béo và bùi, làm độ hấp dẫn của món ăn tăng lên đáng kể.','Bánh tráng cuốn',1),(2,25000,'Hộp','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/banhtrangnuong.jpg?alt=media&token=5e994be4-aa2a-4188-8c94-9176afd750f8','Bánh tráng nướng với phần nguyên liệu xúc xích, trứng cút, bơ thêm tương ớt và maiyone ngon ngon','Bánh tráng nướng',1),(3,20000,'Hộp','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/banhtrangchamme.jpg?alt=media&token=1cc79025-81e4-4c3a-96eb-0956bea1badb','Bánh tráng chấm me kết hợp vị chua ngọt của me, cay của sa tế và béo của trứng cút','Bánh tráng chấm me',1),(4,15000,'Hộp','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/banhtrangmuoitom.jpg?alt=media&token=2048eb4c-b191-40b8-a2c6-2616f887ed35','Với thành phần chính là bánh tráng, muối tôm, tép khô dùng để trộn với các loại gia vị rồi chấm hoặc cuốn ăn.','Bánh tráng muối tôm',1),(5,25000,'Hộp','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/banhtrangtron.jpeg?alt=media&token=75ef9f6b-2f7d-454e-bfe8-cd24293056f8','Một món ăn vô cùng phổ biến tới giới trẻ ở Việt Nam, bánh tráng trộn là tên gọi gắn liền với tuổi thơ của nhiều bạn trẻ','Bánh tráng trộn',1),(6,15000,'Hộp','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/B%C3%A1nh%20tr%C3%A1ng%20sa%20t%E1%BA%BF.jpg?alt=media&token=11ea778c-5e70-4bdf-8edf-5ca431d64026','Độ giòn, vị cay cay, đậm đà của muối ớt và sa tế quyện cùng với mùi thơm của hành, tỏi phi kích thích vị giác vô cùng.','Bánh tráng sa tế',1),(7,25000,'Hộp','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/B%C3%A1nh%20tr%C3%A1ng%20th%E1%BB%8Bt%20b%E1%BA%B1m.jpg?alt=media&token=fb5df062-58c3-4d10-8dab-3772b10e34d4','Vị ngọt của thịt, hương thơm của hành tỏi phi kèm thịt bằm đậm đà và nước trộn đậm vị, ăn một miếng là khó quên đấy!','Bánh tráng thịt bằm',1),(8,10000,'Bịch','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/banh-trang-tac.jpg?alt=media&token=310bb890-5c0e-46ef-a671-b637b3576557','Một món ăn nghe thoi đã chảy nước miếng, bánh tráng sả tắc kèm vị chua chua của quả tắc kèm vị cay nồng của sa tế kèm vị mặn của muối đủ để khiến bạn mê món này','Bánh tráng tắc',1),(9,40000,'Đĩa','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/M%C3%AC%20x%C3%A0o%20b%C3%B2.jpg?alt=media&token=1a174910-fcc8-4967-878d-6b162389e2a4','Rau củ, thịt bò và nước sốt đã xào rưới lên trên mì là đã có ngay món mì xào bò rau cải cực ngon miệng.','Mì xào bò',2),(10,30000,'Đĩa','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/M%C3%AC%20x%C3%A0o%20h%C3%A0n%20qu%E1%BB%91c.jpg?alt=media&token=0553d9a8-fc2a-4b83-bf81-701694313ec5','Gia vị sốt hàu rắc thêm vừng đen lên trên đúng chuẩn phong cách Hàn Quốc.','Mì xào hàn quốc',2),(11,15000,'Đĩa','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/M%C3%AC%20x%C3%A0o%20rau%20mu%E1%BB%91ng.png?alt=media&token=ef222771-93f5-480a-b765-fcee8cebf37e','Mì xào với lửa lớn, thêm chút dầu phi hành tỏi kèm với hương vị rau muống làm nên món ăn ','Mì xào rau muống',2),(12,40000,'Đĩa','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/M%C3%AC%20%C3%BD%20h%E1%BA%A3i%20s%E1%BA%A3n.jpg?alt=media&token=573b81d3-0021-45d0-baaa-e892db67c558','Sợi mì dai dai, mềm mềm, phần nước xốt có vị ngon ngọt của rau củ và tôm mực đậm đà, hấp dẫn.','Mì ý hải sản',2),(13,35000,'Đĩa','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/mon-mi-y-thit-bo-bam.jpg?alt=media&token=1353904f-92cf-42e6-96e5-36657633797d','Những sợi mì vàng óng kết hợp cùng sốt cà chua, nấm dậy mùi thơm ngon đậm đà ở phiên bản chay, thay vào đó là mùi bò bằm thơm ngon, đậm đà.','Mì ý sốt bò bằm',2),(14,25000,'Đĩa','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/mi-y-sotkemnam.jpeg?alt=media&token=f6ebde00-1d20-4e63-aed9-961e59cc1b06','Mì Ý sốt kem nấm có vị béo của sữa tươi, vị bùi của hạt điều và thoảng hương thơm của ớt bột Paprika nhưng không hề cay như bạn nghĩ.','Mì ý sốt kem nấm',2),(15,15000,'Ly','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/thai%20do%20caramel.jfif?alt=media&token=aa924522-66bd-49ec-8629-bc536ce1490b','Vị ngọt của trà sữa, tiếp theo là vị béo ngậy của lớp kem phô mai và cuối cùng là vị đắng nhẹ của bánh caramel thật là hấp dẫn.','Trà sữa thái đỏ Caramel',3),(16,20000,'Ly','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/tra-xanh-kemcheese.png?alt=media&token=7f523177-4018-49e5-b4b0-d34160396872','Sự kết hợp từ trà xanh matcha cùng kem cheese cho bạn ngày dài thêm năng động','Trà xanh matcha kem Cheese',3),(17,20000,'Ly','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/tra-sua-khoai-mon.png?alt=media&token=f4d5bd66-fd56-4ad5-a6b7-3f4bf4223c19','Thức uống này không quá ngọt và ngậy như những loại trà sữa có kem phô mai, vị ngọt thanh mà vẫn có chút béo bùi là điểm cộng lớn nhất của trà sữa khoai môn.','Trà sữa khoai môn',3),(18,25000,'Ly','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/caphesuasuongsao.jpeg?alt=media&token=d4f9c551-a77a-4aae-8f1f-c2bbcc2c90a9','Sương sáo là loại thạch có tính mát, giải nhiệt cơ thể vào những ngày hè.','Cà phê sữa sương sáo',3),(19,15000,'Ly','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/Tr%C3%A0%20s%E1%BB%AFa%20tr%C3%A2n%20ch%C3%A2u%20%C4%91%C6%B0%E1%BB%9Dng%20%C4%91en.jpg?alt=media&token=0c93a772-8f45-48d5-afda-4d1c47d02966','Vẻ ngoài bắt mắt của cốc trà với phần trà sữa trắng hòa quyện khéo léo cùng phần đường đen, trân châu đen bên dưới.','Trà sữa trân châu đường đen',3),(20,15000,'Ly','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/Tr%C3%A0%20s%E1%BB%AFa%20tr%C3%A2n%20tr%C3%A2u%20tr%E1%BA%AFng.jpg?alt=media&token=b9b26db1-62be-4229-a0d7-f9098f43ba33','Trân châu trắng sẽ có vị ngọt và giòn khi bạn cắn vào miếng đầu tiên chứ không dẻo và dai như trân châu đen.','Trà sữa trân trâu trắng',3),(21,10000,'Xiên','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/banhgaohanquoc.jpg?alt=media&token=040b5651-650f-4378-b922-ef94a6b60869','Bánh gạo Hàn Quốc với nguyên liệu là bột gạo và chả cá từ Hàn cho bạn nào thích vị cay nồng','Bánh gạo Hàn Quốc',4),(22,10000,'Xiên','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/bovienchien.jpg?alt=media&token=716043e6-2176-4580-a36b-f2de1c685e78','Khi ăn ta sẽ cảm nhận được lát thịt bò viên chiên ngấm dầu khá ngon.','Bò viên chiên',4),(23,10000,'Xiên','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/Ch%E1%BA%A3%20t%C3%B4m%20xi%C3%AAn%20n%C6%B0%E1%BB%9Bng.jpg?alt=media&token=781d4115-1319-47b7-bb87-fd27885d4337','Khi ăn ta sẽ cảm nhận được vị dai béo của chả tôm hòa cùng vị thanh ngọt của ớt chuông và vị ngọt ngon chắc thịt của tôm được lột vỏ sẵn.','Chả tôm xiên nướng',4),(24,10000,'Xiên','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/G%C3%A0%20xi%C3%AAn%20n%C6%B0%E1%BB%9Bng.jpg?alt=media&token=7ed2f7ee-e925-476a-8073-0ba90214fbd8','Món xiên này ngon và đặc biệt bởi thịt ức gà mềm ngon được ướp đều các gia vị thơm ngon như: đường thốt nốt, bột điều, dầu hào và nước tương.','Gà xiên nướng',4),(25,10000,'Xiên','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/R%C4%83ng%20m%E1%BB%B1c%20xi%C3%AAn%20n%C6%B0%E1%BB%9Bng.jpg?alt=media&token=7252b7e1-8fd4-46a2-9b89-f60480354910','Món ăn hấp dẫn với răng mực giòn ngon được nướng cùng sa tế cay thơm hấp dẫn.','Răng mực xiên nướng',4),(26,10000,'Xiên','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/Th%E1%BB%8Bt%20xi%C3%AAn%20n%C6%B0%E1%BB%9Bng%20chay.jpg?alt=media&token=cab527a9-2153-4722-a65f-50778e8e92a6','Thịt xiên chay khi nướng lên sẽ có mùi thơm hấp dẫn của ngũ vị hương.','Thịt xiên nướng chay',4),(27,10000,'Xiên','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/T%C3%B4m%20xi%C3%AAn%20n%C6%B0%E1%BB%9Bng.jpg?alt=media&token=eb929553-bf4f-4f33-adbc-7d8d24751c37','Khi ăn ta sẽ cảm nhận được thịt tôm săn chắc, ngọt ngon đậm vị được ướp cùng cùng mật ong.','Tôm xiên nướng',4),(28,20000,'Ổ','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/Huong-dan-lam-banh-mi-cha-ca-1.jpg?alt=media&token=0dad329f-1228-4c0e-9d75-dcef423fae61','Bánh mì ăn cùng với dưa chua, thơm mùi chả cá, dưa giòn lại chua ngọt.','Bánh mì chả cá ',5),(29,20000,'Ổ','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/B%C3%A1nh%20m%C3%AC%20ch%E1%BA%A3o.jpg?alt=media&token=04afeb22-c569-40c8-8d10-440390573ad6','Bánh mì chảo là món bánh mì rất đặc biệt vì nhân bánh được cho hết vào chảo nào là pate, trứng, xúc xích, chả cá, phô mai,...','Bánh mì chảo',5),(30,20000,'Ổ','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/B%C3%A1nh%20m%C3%AC%20g%C3%A0%20x%C3%A9.jpg?alt=media&token=9a743624-b732-4c7c-8246-f3362fac7ed3','Vẫn là rau mùi và dưa chua nhưng ăn với gà xé thì thật ngon ăn một lần là nhớ mãi.','Bánh mì gà xé',5),(31,40000,'Ly','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/cappucino.jpg?alt=media&token=910b4091-585e-472c-a8f2-0659c660c755','tên gọi một loại café của Ý, được tạo nên từ 3 phần đều nhau: Café Espresso pha với lượng nước gấp đôi thông thường (espresso lungo), sữa nóng và sữa sủi bọt','Cappucino',3),(32,35000,'Ly','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/caphecarameldaxay.jpg?alt=media&token=a3862ac0-9f18-4d15-8109-cbb201b33b3c','Sự kết hợp hoàn hảo của hương vị caramel đặc trưng, bột frappe, bột sữa, đường bắp đã giúp cho món đồ uống caramel đá xay có độ thơm ngon sánh mịn cùng hương vị đậm đà độc đáo','Cà phê Caramel đá xay',3),(33,35000,'Ly','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/latte-macchiato.jpg?alt=media&token=d83ffbf9-c0b8-4d2d-87ee-89da4e72aed0','Loại cafe này dễ uống do lượng cafein thấp, độ ngậy của sữa cao, và đặc biệt là chúng được tạo hình nghệ thuật rất đẹp và độc đáo.','Latte Ý',3),(34,39000,'Ly','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/trasuahatsen.jpeg?alt=media&token=9f1527eb-e615-49bc-8e61-eb78f654e96f','Được pha chế từ nước ép trái cây, trái cây để lạnh, các loại si-rô hoặc hương liệu, đôi khi còn được thêm các nguyên liệu khác như socola, bơ, đậu phộng… ','Trà sữa hạt sen',3),(35,20000,'Ly','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/PHINDI_Choco-min.png?alt=media&token=4c22f567-fd3a-4a76-87cd-d9de2a2b4fcd','Với hương vị đặc trưng cà phê ở vùng Buôn Mê Thuộc và hạnh nhân béo ngọt cùng chocolate tạo nên vị cà phê sánh nguyện','Cà phê Phin di Hạnh nhân',3),(38,30000,'Phần','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo-hamburger-khoaitaychien-cocacola.png?alt=media&token=319cad22-2883-456d-be2f-361828f813da','Dành cho 1 người, bao gồm 1 hambuger và khoai tây chiên','Combo Hambuger & khoai tây chiên',8),(39,65000,'Phần','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo-banhngot-caphe.jpg?alt=media&token=468ca54a-b9e2-4b12-9390-c6848be1adf3','Dành cho 2 người, bao gồm 2 bánh ngọt và 1 ly Cà phê kem cheese và 1 ly Trà xanh kem cheese','Combo Bánh ngọt & Cà phê ',8),(40,20000,'Phần','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo-banhmi-nuoc.jpg?alt=media&token=cc047d1e-5e17-40b4-a1f4-696e2faf2b1b','Dành cho 1 người, bao gồm bánh mì thập cẩm và 1 cà phê sữa','Combo Bánh mì thập cẩm & Cà phê sữa',8),(41,30000,'Hộp','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo-monHanQuoc.jpg?alt=media&token=a01412c9-6969-4009-809c-018e27c3b897','Dành cho 3 người ăn trở lên','Combo Món Hàn',8),(42,45000,'Đĩa','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combogaran_pepsi.jpg?alt=media&token=a156f88f-9fa7-4ef0-83e3-cd86cd1487ec','Phần đĩa đầy gà rán kèm với sốt chua ngọt và Pepsi','Combo Gà rán & Pepsi',8),(43,40000,'Ly','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo-kemcuon.jpeg?alt=media&token=5b37e46a-6b52-4a5b-bee9-949fdd33d0fc','Bao gồm 3  ly kem cuộn để giải nhiệt','Combo Kem cuộn',8),(44,30000,'Phần','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo%20l%E1%BA%A9u%20xi%C3%AAn%20que.jpg?alt=media&token=8e48cf82-7e75-435b-8ea7-5cdf4f212262','Thưởng thức phần lẩu xiên que đầy option tự chọn','Combo lẩu xiên que',8),(45,45000,'Phần','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo-sushi-chien.jpg?alt=media&token=79a4c27e-863a-42ae-b29d-1b40c38c800b','Mang phong cách Nhật Bản nhưng lại phù hợp với ẩm thực Việt Nam','Combo sushi chiên',8),(46,95000,'Ly','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo-trasua.jpg?alt=media&token=f5d3341c-eb0c-4e59-bc8b-54cd0cb67ef1','Những tín đồ mê trà sữa không thể bỏ qua combo này','Combo Trà sữa',8),(47,199000,'Phần','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/combo_lau_nuong.jpg?alt=media&token=2381fa22-228c-4d03-9711-9ad50d20b404','Đầy đủ các món nướng nguyên liệu từ thịt bò nhập khẩu và sốt chua ngọt của nước lèo kèm theo rau và sốt chấm','Combo Lẩu nướng',8),(48,65000,'Phần','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/1682527049329-bundau.jpeg?alt=media&token=5150d2fc-a96a-4d27-8e58-f7bd47742943','Một phần bún đậu thập cẩm','Bún đậu mắm tôm',8),(49,70000,'Phần','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/1683713612779-bundaumamtom.jpeg?alt=media&token=99c63285-0cff-4be8-935f-c4ab9eed4197','Bún đậu thập cẩm gồm tàu hủ, lá mít, mắm tôm, lòng heo, chả cốm, sụn','Bún đậu thập cẩm',10);
/*!40000 ALTER TABLE `tbl_mathang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nhanvien`
--

DROP TABLE IF EXISTS `tbl_nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_nhanvien` (
  `user_id` binary(16) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nhanvien`
--

LOCK TABLES `tbl_nhanvien` WRITE;
/*!40000 ALTER TABLE `tbl_nhanvien` DISABLE KEYS */;
INSERT INTO `tbl_nhanvien` VALUES (_binary '}�!Y.Af�_\�h¡>\�','249 Lê Văn Sỹ, Phú Nhuận, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/1683712478691-thor.jpeg?alt=media&token=501dd5e0-abd1-403f-8c67-db1cdf14c63c','2000-04-14','stevengerrard@gmail.com',_binary '\0','Trần Tiểu Vy','$2a$10$lUNmzJdFvspwLlEGhdKIZuLyrHXEtC94TK.dqhXD5XDex/rBmD4Qq','0967321358','ROLE_STAFF_SALES','admin4'),(_binary '%�=\�Of�ԟ\��f','54 Phan Đình Phùng, Q1, TPHCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/1682421728634-ironman3.jpg?alt=media&token=e8f66f42-4b93-4eee-be77-af4676277099','2000-11-16','markzuzxx@gmail.com',_binary '\0','Lê Thu Thủy','$2a$10$lUNmzJdFvspwLlEGhdKIZuLyrHXEtC94TK.dqhXD5XDex/rBmD4Qq','0345171769','ROLE_STAFF_SALES','admin3'),(_binary ',\�,�	\�M�9�3�\�','161 Bến Vân Đồn, Quận 4, TPHCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/1682501311126-nhathoducba.jpg?alt=media&token=add0c428-4fb7-484a-a8bf-e2905a64fd96','2000-02-06','barender@gmail.com',_binary '','Nguyễn Quốc Cường','$2a$10$lUNmzJdFvspwLlEGhdKIZuLyrHXEtC94TK.dqhXD5XDex/rBmD4Qq','0986550980','ROLE_STAFF_SALES','admin5'),(_binary 'H�Im@j��YG\�Y','Biệt thự 18 Bason, Q1. TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/1682177223598-justinbieber.jpg?alt=media&token=edea0c93-9b67-4e50-a4ad-63c2c90790f9','2000-08-01','phuclx182000@gmail.com',_binary '','Hồ Minh Phúc','$2a$10$lUNmzJdFvspwLlEGhdKIZuLyrHXEtC94TK.dqhXD5XDex/rBmD4Qq','0934154398','ROLE_ADMIN','admin1'),(_binary '�4qYA�R�\���\�','18 Bàu Cát, Quận Tân Bình, TP.HCM','https://firebasestorage.googleapis.com/v0/b/foodshop-3ee3e.appspot.com/o/1682234559371-og_image_1200x1200_ZRQD.jpg?alt=media&token=a3703b94-8da4-4225-bc14-750ab3a768a8','2000-02-29','michaeltruong@gmail.com',_binary '','Trương Công Thành','$2a$10$lUNmzJdFvspwLlEGhdKIZuLyrHXEtC94TK.dqhXD5XDex/rBmD4Qq','0569929781','ROLE_ADMIN','admin2');
/*!40000 ALTER TABLE `tbl_nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_phieugiamgia`
--

DROP TABLE IF EXISTS `tbl_phieugiamgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_phieugiamgia` (
  `ma_giam_gia` varchar(255) NOT NULL,
  `loai_phieu` varchar(255) DEFAULT NULL,
  `ngay_bat_dau` date DEFAULT NULL,
  `ngay_ket_thuc` date DEFAULT NULL,
  `phan_tram` double NOT NULL,
  `ten_phieu` varchar(255) DEFAULT NULL,
  `trang_thai` varchar(255) DEFAULT NULL,
  `ma_khach_hang` binary(16) DEFAULT NULL,
  PRIMARY KEY (`ma_giam_gia`),
  KEY `FKc6p4ch58y4h2ld0pwy8u2ix00` (`ma_khach_hang`),
  CONSTRAINT `FKc6p4ch58y4h2ld0pwy8u2ix00` FOREIGN KEY (`ma_khach_hang`) REFERENCES `tbl_khachhang` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_phieugiamgia`
--

LOCK TABLES `tbl_phieugiamgia` WRITE;
/*!40000 ALTER TABLE `tbl_phieugiamgia` DISABLE KEYS */;
INSERT INTO `tbl_phieugiamgia` VALUES ('SUMET&T132BZ','Cá nhân',NULL,NULL,10,'Voucher Người Cũ','Chưa sử dụng',_binary 'YolG\�E�^���\�t'),('SUMET&TB8L05','Cá nhân',NULL,NULL,50,'Voucher dành cho khách hàng thân thiết của quán','Chưa sử dụng',_binary 'YolG\�E�^���\�t'),('SUMPT&TP8XXQ','Cá nhân',NULL,NULL,30,'Voucher Người Mới','Chưa sử dụng',_binary 'YolG\�E�^���\�t');
/*!40000 ALTER TABLE `tbl_phieugiamgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_fastfood'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-10 22:03:48
