

-- CREATE DATABASE QLBH;

-- KHACHANG
DROP TABLE IF EXISTS `KHACHHANG`;
CREATE TABLE `KHACHHANG`(
	`MAKH`	char(4) NOT NULL,
	`HOTEN`	varchar(40),
	`DCHI`	varchar(50),
	`SODT`	varchar(20),
	`NGSINH`	datetime,
	`NGDK`	datetime,
	PRIMARY KEY (`MAKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- -------------------------------------------
-- LOAI
DROP TABLE IF EXISTS `LOAI`;
CREATE TABLE `LOAI`(
	`MALOAI` varchar(50) NOT NULL,
	`TENLOAI` varchar(50) NOT NULL,
	`MOTA` varchar(50) NOT NULL,
	PRIMARY KEY (`MALOAI`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- -------------------------------------------
-- SANPHAM
DROP TABLE IF EXISTS `SANPHAM`;
CREATE TABLE `SANPHAM`(
	`MASP`	char(4) NOT NULL,
	`TENSP`	varchar(40),
	`DVT`	varchar(20),
	`GIA`	int,
	PRIMARY KEY (`MASP`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- -------------------------------------------
-- HOADON
DROP TABLE IF EXISTS `HOADON`;
CREATE TABLE `HOADON`(
	`SOHD`	int NOT NULL,
	`NGHD` 	datetime,
	`MAKH` 	char(4),
	`TRIGIA`	int,
	PRIMARY KEY (`SOHD`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- -------------------------------------------
-- CTHD
DROP TABLE IF EXISTS `CTHD`;
CREATE TABLE `CTHD`(
	`SOHD`	int,
	`MASP`	char(4),
	`SL`	int,
	PRIMARY KEY (`SOHD`,`MASP`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Khoa ngoai cho bang HOADON
-- ALTER TABLE `HOADON` ADD CONSTRAINT fk01_HD FOREIGN KEY(`MAKH`) REFERENCES KHACHHANG(`MAKH`)
-- -- Khoa ngoai cho bang CTHD
-- ALTER TABLE `CTHD` ADD CONSTRAINT fk01_CTHD FOREIGN KEY(`SOHD`) REFERENCES HOADON(`SOHD`)
-- ALTER TABLE `CTHD` ADD CONSTRAINT fk02_CTHD FOREIGN KEY(`MASP`) REFERENCES SANPHAM(`MASP`)
-- -- ---------------------------------------------------
-- ---------------------------------------------------
-- set dateformat dmy
-- -- -----------------------------
-- KHACHHANG
INSERT INTO `KHACHHANG` (`MAKH`, `HOTEN`, `DCHI`, `SODT`, `NGSINH`, `NGDK`) VALUES
('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM','8823451','1994-04-13 09:13:04','2021-04-13 09:13:04'),
('KH02','Tran Ngoc Han','235 Nguyen Trai, Q5, TpHCM','908256478','1994-04-13 09:13:04','2021-04-13 09:13:04'),
('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','938776266','1994-04-13 09:13:04','2021-04-13 09:13:04'),
('KH04','Tran Minh Long','5034 Le Dai Hanh, Q10, TpHCM','917325476','1994-04-13 09:13:04','2021-04-13 09:13:04'),
('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','8246108','1994-04-13 09:13:04','2021-04-13 09:13:04'),
('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','8631738','1994-04-13 09:13:04','2021-04-13 09:13:04'),
('KH07','Nguyen Van Tam','323 Tran Binh Trong, Q5, TpHCM','916783565','1994-04-13 09:13:04','2021-04-13 09:13:04'),
('KH08','Phan Thi Thanh','452 An Duong Vuong, Q5, TpHCM','938435756','1994-04-13 09:13:04','2021-04-13 09:13:04'),
('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','8654763','1994-04-13 09:13:04','2021-04-13 09:13:04'),
('KH10','Ha Duy Lap','344B Nguyen Trai, Q1, TpHCM','8768904','1994-04-13 09:13:04','2021-04-13 09:13:04');

-- -----------------------------
-- SANPHAM
INSERT INTO `SANPHAM` (`MASP`, `TENSP`, `DVT`, `GIA`) VALUES
('BC01','But chi','cay',3000),
('BC02','But chi','cay',5000),
('BC03','But chi','cay',3500),
('BC04','But chi','hop',30000),
('BB01','But bi','cay',5000),
('BB02','But bi','cay',7000),
('BB03','But bi','hop',100000),
('TV01','Tap 100 giay mong','quyen',2500),
('TV02','Tap 200 giay mong','quyen',4500),
('TV03','Tap 100 giay tot','quyen',3000),
('TV04','Tap 200 giay tot','quyen',5500),
('TV05','Tap 100 trang','chuc',23000),
('TV06','Tap 200 trang','chuc',53000),
('TV07','Tap 100 trang','chuc',34000),
('ST01','So tay 500 trang','quyen',40000),
('ST02','So tay loai 1','quyen',55000),
('ST03','So tay loai 2','quyen',51000),
('ST04','So tay','quyen',55000),
('ST05','So tay mong','quyen',20000),
('ST06','Phan viet bang','hop',5000),
('ST07','Phan khong bui','hop',7000),
('ST08','Bong bang','cai',1000),
('ST09','But long','cay',5000),
('ST10','But long','cay',7000);

-- -----------------------------
-- HOADON
INSERT INTO `HOADON` (`SOHD`, `NGHD`, `MAKH`, `TRIGIA`) VALUES
(1001,'2021-04-13 09:13:04','KH01',320000),
(1002,'2021-04-13 09:13:04','KH01',840000),
(1003,'2021-04-13 09:13:04','KH02',100000),
(1004,'2021-04-13 09:13:04','KH02',180000),
(1005,'2021-04-13 09:13:04','KH01',3800000),
(1006,'2021-04-13 09:13:04','KH01',2430000),
(1007,'2021-04-13 09:13:04','KH03',510000),
(1008,'2021-04-13 09:13:04','KH01',440000),
(1009,'2021-04-13 09:13:04','KH03',200000),
(1010,'2021-04-13 09:13:04','KH01',5200000),
(1011,'2021-04-13 09:13:04','KH04',250000),
(1012,'2021-04-13 09:13:04','KH05',21000),
(1013,'2021-04-13 09:13:04','KH06',5000),
(1014,'2021-04-13 09:13:04','KH03',3150000),
(1015,'2021-04-13 09:13:04','KH06',910000);



-- -----------------------------
-- CTHD
INSERT INTO `CTHD` (`SOHD`, `MASP`, `SL`) VALUES
(1001,'TV02',10),
(1001,'ST01',5),
(1001,'BC01',5),
(1001,'BC02',10),
(1001,'ST08',10),
(1002,'BC04',20),
(1002,'BB01',20),
(1002,'BB02',20),
(1003,'BB03',10),
(1004,'TV01',20),
(1004,'TV02',10),
(1004,'TV03',10),
(1004,'TV04',10),
(1005,'TV05',50),
(1005,'TV06',50),
(1006,'TV07',20),
(1006,'ST01',30),
(1006,'ST02',10),
(1007,'ST03',10),
(1008,'ST04',8),
(1009,'ST05',10),
(1010,'TV07',50),
(1010,'ST07',50),
(1010,'ST08',100),
(1010,'ST04',50),
(1010,'TV03',100),
(1011,'ST06',50),
(1012,'ST07',3),
(1013,'ST08',5),
(1014,'BC02',80),
(1014,'BB02',100),
(1014,'BC04',60),
(1014,'BB01',50),
(1015,'BB02',30),
(1015,'BB03',7);
