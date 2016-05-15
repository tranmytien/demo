/*
Navicat MySQL Data Transfer

Source Server         : tien
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : 3mienrestaurant

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-05-04 13:51:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(45) DEFAULT NULL,
  `matkhau` varchar(45) DEFAULT NULL,
  `nhom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'a', '12', '1');
INSERT INTO `admin` VALUES ('2', 'admin', 'admin', '1');

-- ----------------------------
-- Table structure for fooddetail
-- ----------------------------
DROP TABLE IF EXISTS `fooddetail`;
CREATE TABLE `fooddetail` (
  `food_id` varchar(45) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fooddetail
-- ----------------------------
INSERT INTO `fooddetail` VALUES ('1', '1');
INSERT INTO `fooddetail` VALUES ('10', '4');
INSERT INTO `fooddetail` VALUES ('100', '2');
INSERT INTO `fooddetail` VALUES ('101', '2');
INSERT INTO `fooddetail` VALUES ('102', '2');
INSERT INTO `fooddetail` VALUES ('103', '2');
INSERT INTO `fooddetail` VALUES ('104', '2');
INSERT INTO `fooddetail` VALUES ('105', '2');
INSERT INTO `fooddetail` VALUES ('106', '2');
INSERT INTO `fooddetail` VALUES ('107', '2');
INSERT INTO `fooddetail` VALUES ('108', '2');
INSERT INTO `fooddetail` VALUES ('109', '2');
INSERT INTO `fooddetail` VALUES ('11', '4');
INSERT INTO `fooddetail` VALUES ('110', '2');
INSERT INTO `fooddetail` VALUES ('111', '2');
INSERT INTO `fooddetail` VALUES ('1113', '2');
INSERT INTO `fooddetail` VALUES ('1119', '1');
INSERT INTO `fooddetail` VALUES ('112', '2');
INSERT INTO `fooddetail` VALUES ('113', '2');
INSERT INTO `fooddetail` VALUES ('114', '2');
INSERT INTO `fooddetail` VALUES ('115', '2');
INSERT INTO `fooddetail` VALUES ('116', '2');
INSERT INTO `fooddetail` VALUES ('117', '3');
INSERT INTO `fooddetail` VALUES ('118', '3');
INSERT INTO `fooddetail` VALUES ('119', '3');
INSERT INTO `fooddetail` VALUES ('12', '4');
INSERT INTO `fooddetail` VALUES ('120', '3');
INSERT INTO `fooddetail` VALUES ('121', '3');
INSERT INTO `fooddetail` VALUES ('122', '3');
INSERT INTO `fooddetail` VALUES ('123', '3');
INSERT INTO `fooddetail` VALUES ('124', '3');
INSERT INTO `fooddetail` VALUES ('125', '3');
INSERT INTO `fooddetail` VALUES ('126', '3');
INSERT INTO `fooddetail` VALUES ('127', '3');
INSERT INTO `fooddetail` VALUES ('128', '3');
INSERT INTO `fooddetail` VALUES ('129', '3');
INSERT INTO `fooddetail` VALUES ('13', '4');
INSERT INTO `fooddetail` VALUES ('130', '3');
INSERT INTO `fooddetail` VALUES ('131', '3');
INSERT INTO `fooddetail` VALUES ('132', '3');
INSERT INTO `fooddetail` VALUES ('133', '3');
INSERT INTO `fooddetail` VALUES ('14', '4');
INSERT INTO `fooddetail` VALUES ('15', '4');
INSERT INTO `fooddetail` VALUES ('16', '4');
INSERT INTO `fooddetail` VALUES ('17', '4');
INSERT INTO `fooddetail` VALUES ('18', '4');
INSERT INTO `fooddetail` VALUES ('19', '4');
INSERT INTO `fooddetail` VALUES ('2', '4');
INSERT INTO `fooddetail` VALUES ('20', '5');
INSERT INTO `fooddetail` VALUES ('21', '5');
INSERT INTO `fooddetail` VALUES ('22', '5');
INSERT INTO `fooddetail` VALUES ('23', '5');
INSERT INTO `fooddetail` VALUES ('24', '5');
INSERT INTO `fooddetail` VALUES ('25', '5');
INSERT INTO `fooddetail` VALUES ('26', '5');
INSERT INTO `fooddetail` VALUES ('27', '5');
INSERT INTO `fooddetail` VALUES ('28', '5');
INSERT INTO `fooddetail` VALUES ('29', '5');
INSERT INTO `fooddetail` VALUES ('3', '4');
INSERT INTO `fooddetail` VALUES ('30', '5');
INSERT INTO `fooddetail` VALUES ('31', '5');
INSERT INTO `fooddetail` VALUES ('319', '2');
INSERT INTO `fooddetail` VALUES ('32', '5');
INSERT INTO `fooddetail` VALUES ('324', '2');
INSERT INTO `fooddetail` VALUES ('33', '5');
INSERT INTO `fooddetail` VALUES ('331', '4');
INSERT INTO `fooddetail` VALUES ('333', '2');
INSERT INTO `fooddetail` VALUES ('34', '5');
INSERT INTO `fooddetail` VALUES ('35', '5');
INSERT INTO `fooddetail` VALUES ('36', '5');
INSERT INTO `fooddetail` VALUES ('37', '5');
INSERT INTO `fooddetail` VALUES ('38', '5');
INSERT INTO `fooddetail` VALUES ('39', '5');
INSERT INTO `fooddetail` VALUES ('40', '5');
INSERT INTO `fooddetail` VALUES ('41', '5');
INSERT INTO `fooddetail` VALUES ('42', '5');
INSERT INTO `fooddetail` VALUES ('43', '5');
INSERT INTO `fooddetail` VALUES ('44', '5');
INSERT INTO `fooddetail` VALUES ('45', '5');
INSERT INTO `fooddetail` VALUES ('46', '5');
INSERT INTO `fooddetail` VALUES ('47', '5');
INSERT INTO `fooddetail` VALUES ('48', '5');
INSERT INTO `fooddetail` VALUES ('49', '5');
INSERT INTO `fooddetail` VALUES ('5', '4');
INSERT INTO `fooddetail` VALUES ('50', '5');
INSERT INTO `fooddetail` VALUES ('51', '5');
INSERT INTO `fooddetail` VALUES ('52', '6');
INSERT INTO `fooddetail` VALUES ('53', '6');
INSERT INTO `fooddetail` VALUES ('54', '6');
INSERT INTO `fooddetail` VALUES ('55', '6');
INSERT INTO `fooddetail` VALUES ('56', '6');
INSERT INTO `fooddetail` VALUES ('57', '6');
INSERT INTO `fooddetail` VALUES ('58', '6');
INSERT INTO `fooddetail` VALUES ('59', '6');
INSERT INTO `fooddetail` VALUES ('6', '4');
INSERT INTO `fooddetail` VALUES ('60', '6');
INSERT INTO `fooddetail` VALUES ('61', '6');
INSERT INTO `fooddetail` VALUES ('62', '6');
INSERT INTO `fooddetail` VALUES ('63', '6');
INSERT INTO `fooddetail` VALUES ('64', '6');
INSERT INTO `fooddetail` VALUES ('65', '6');
INSERT INTO `fooddetail` VALUES ('66', '6');
INSERT INTO `fooddetail` VALUES ('67', '6');
INSERT INTO `fooddetail` VALUES ('68', '6');
INSERT INTO `fooddetail` VALUES ('69', '6');
INSERT INTO `fooddetail` VALUES ('7', '4');
INSERT INTO `fooddetail` VALUES ('70', '6');
INSERT INTO `fooddetail` VALUES ('71', '6');
INSERT INTO `fooddetail` VALUES ('72', '6');
INSERT INTO `fooddetail` VALUES ('73', '6');
INSERT INTO `fooddetail` VALUES ('74', '6');
INSERT INTO `fooddetail` VALUES ('75', '6');
INSERT INTO `fooddetail` VALUES ('76', '6');
INSERT INTO `fooddetail` VALUES ('77', '1');
INSERT INTO `fooddetail` VALUES ('78', '1');
INSERT INTO `fooddetail` VALUES ('79', '1');
INSERT INTO `fooddetail` VALUES ('8', '4');
INSERT INTO `fooddetail` VALUES ('80', '1');
INSERT INTO `fooddetail` VALUES ('81', '1');
INSERT INTO `fooddetail` VALUES ('82', '1');
INSERT INTO `fooddetail` VALUES ('83', '1');
INSERT INTO `fooddetail` VALUES ('84', '1');
INSERT INTO `fooddetail` VALUES ('85', '1');
INSERT INTO `fooddetail` VALUES ('86', '1');
INSERT INTO `fooddetail` VALUES ('87', '1');
INSERT INTO `fooddetail` VALUES ('871', '3');
INSERT INTO `fooddetail` VALUES ('88', '1');
INSERT INTO `fooddetail` VALUES ('89', '1');
INSERT INTO `fooddetail` VALUES ('9', '4');
INSERT INTO `fooddetail` VALUES ('90', '1');
INSERT INTO `fooddetail` VALUES ('91', '1');
INSERT INTO `fooddetail` VALUES ('92', '1');
INSERT INTO `fooddetail` VALUES ('93', '1');
INSERT INTO `fooddetail` VALUES ('94', '1');
INSERT INTO `fooddetail` VALUES ('95', '2');
INSERT INTO `fooddetail` VALUES ('96', '2');
INSERT INTO `fooddetail` VALUES ('97', '2');
INSERT INTO `fooddetail` VALUES ('98', '2');
INSERT INTO `fooddetail` VALUES ('99', '2');

-- ----------------------------
-- Table structure for foods
-- ----------------------------
DROP TABLE IF EXISTS `foods`;
CREATE TABLE `foods` (
  `food_id` varchar(45) NOT NULL,
  `name` varchar(70) DEFAULT NULL,
  `image` varchar(70) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `kmaiid` int(11) DEFAULT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foods
-- ----------------------------
INSERT INTO `foods` VALUES ('1', 'Bò Bóp Thau', 'BO BOP THAU.jpg', '100000', '1');
INSERT INTO `foods` VALUES ('10', 'Gỏi rau muống thịt bò', 'GOI RAU MUONG THIT BO.jpg', '120000', '1');
INSERT INTO `foods` VALUES ('100', 'Bánh lá chả tôm', 'banh la cha tom.jpg', '80000', '1');
INSERT INTO `foods` VALUES ('101', 'Bánh nậm', 'banh nam.jpg', '50000', '1');
INSERT INTO `foods` VALUES ('102', 'Bánh ướt thịt nướng', 'banh uot thit nuong.jpg', '40000', '4');
INSERT INTO `foods` VALUES ('103', 'Bánh ướt tôm cháy', 'banh uot tom chay.jpg', '40000', '4');
INSERT INTO `foods` VALUES ('104', 'Bún chả cua', 'bun cha cua.jpg', '50000', '4');
INSERT INTO `foods` VALUES ('105', 'Chả giò cung đình', 'cha gio cung dinh.jpg', '60000', '4');
INSERT INTO `foods` VALUES ('106', 'Chả giò tôm thịt', 'cha gio tom thit.jpg', '70000', '4');
INSERT INTO `foods` VALUES ('107', 'Chạo tôm', 'chao tom.jpg', '100000', '4');
INSERT INTO `foods` VALUES ('108', 'Cơm hến', 'com hen.jpg', '90000', '4');
INSERT INTO `foods` VALUES ('109', 'Gà bóp rau răm                              ', 'ga bop rau ram.jpg', '60000', '4');
INSERT INTO `foods` VALUES ('11', 'Gỏi xoài bánh phồng', 'GOI XOAI BANH PHONG.jpg', '90000', '0');
INSERT INTO `foods` VALUES ('110', 'Gỏi ba miền', 'goi ba mien.jpg', '100000', '0');
INSERT INTO `foods` VALUES ('111', 'Gỏi ngó sen tôm thịt', 'goi ngo sen tom thit.jpg', '130000', '0');
INSERT INTO `foods` VALUES ('112', 'Măng trộn tôm thịt bánh tráng mè', 'mang tron tom thit banh trang me.jpg', '130000', '0');
INSERT INTO `foods` VALUES ('113', 'Nem chua chả Huế', 'nem chua cha hue.jpg', '110000', '0');
INSERT INTO `foods` VALUES ('114', 'Nem nướng', 'nem nuong.jpg', '90000', '2');
INSERT INTO `foods` VALUES ('115', 'Ram cuốn', 'ram cuon.jpg', '50000', '2');
INSERT INTO `foods` VALUES ('116', 'Xôi bông gà nướng lá chanh', 'xoi bong ga nuong la chanh.jpg', '80000', '2');
INSERT INTO `foods` VALUES ('117', 'Bánh canh ghẹ Hà Tiên', 'banh canh ghe ha tien.jpg', '50000', '2');
INSERT INTO `foods` VALUES ('118', 'Bánh canh giò heo', 'banh canh gio heo.jpg', '40000', '0');
INSERT INTO `foods` VALUES ('119', 'Bánh canh Trảng Bàng', 'banh canh trang bang.png', '40000', '0');
INSERT INTO `foods` VALUES ('12', 'Há cảo', 'HA CAO.jpg', '100000', '0');
INSERT INTO `foods` VALUES ('120', 'Bê nhúng giấm', 'be nhung giam.jpg', '10000', '0');
INSERT INTO `foods` VALUES ('121', 'Bún riêu cua', 'bun rieu cua.jpg', '50000', '0');
INSERT INTO `foods` VALUES ('122', 'Cá kèo kho tộ', 'ca keo kho to.jpg', '50000', '0');
INSERT INTO `foods` VALUES ('123', 'Canh chua bần', 'canh chua ban.jpg', '70000', '0');
INSERT INTO `foods` VALUES ('124', 'Cháo cá lóc', 'chao ca loc.jpg', '50000', '0');
INSERT INTO `foods` VALUES ('125', 'Cháo gà', 'chao ga.jpg', '50000', '0');
INSERT INTO `foods` VALUES ('126', 'Cơm tấm Sài Gòn', 'com tam sai gon.jpg', '50000', '2');
INSERT INTO `foods` VALUES ('127', 'Ghẹ nướng muối ớt', 'ghe nuong muoi ot.jpg', '70000', '2');
INSERT INTO `foods` VALUES ('128', 'Gỏi khô cá lóc', 'goi kho ca loc.jpg', '70000', '0');
INSERT INTO `foods` VALUES ('129', 'Hũ tiếu Mỹ Tho', 'hu tieu my tho.jpg', '40000', '0');
INSERT INTO `foods` VALUES ('13', 'Heo quay bánh hỏi', 'HEO QUAY BANH HOI.jpg', '140000', '0');
INSERT INTO `foods` VALUES ('130', 'Lẩu mắm', 'lau mam.jpg', '100000', '0');
INSERT INTO `foods` VALUES ('131', 'Mì vịt tiềm', 'mi vit tiem.jpg', '50000', '0');
INSERT INTO `foods` VALUES ('132', 'Rùa rang muối', 'rua rang muoi.jpg', '140000', '0');
INSERT INTO `foods` VALUES ('133', 'Vịt nấu cari', 'vit nau cari.jpg', '180000', '0');
INSERT INTO `foods` VALUES ('14', 'Nem nướng bánh hỏi', 'NEM NUONG BANH HOI.jpg', '130000', '0');
INSERT INTO `foods` VALUES ('15', 'Súp bắp cua', 'SUP BAP CUA.jpg', '70000', '0');
INSERT INTO `foods` VALUES ('16', 'Súp rau thập cẩm', 'SUP RAU THAP CAM.jpg', '80000', '0');
INSERT INTO `foods` VALUES ('17', 'Xôi cuốn', 'XOI CUON.jpg', '90000', '0');
INSERT INTO `foods` VALUES ('18', 'Xôi gấc', 'XOI GAC.jpg', '60000', '0');
INSERT INTO `foods` VALUES ('19', 'Xôi mặn', 'XOI MAN.jpg', '70000', '0');
INSERT INTO `foods` VALUES ('2', 'Bò Nướng Lá Lốt', 'BO NUONG LA LOT.jpg', '80000', '0');
INSERT INTO `foods` VALUES ('20', 'Bò cà ri', 'bo ca ri.jpg', '160000', '0');
INSERT INTO `foods` VALUES ('21', 'Bò nhúng giấm', 'bo nhung giam.jpg', '200000', '0');
INSERT INTO `foods` VALUES ('21115', 'banh bua', 'chuotchu', '15000', '1');
INSERT INTO `foods` VALUES ('22', 'Cá tai tượng chiên xù', 'ca tai tuong chien xu.jpg', '210000', '0');
INSERT INTO `foods` VALUES ('222', 'ád', 'IMG_0414.JPG', '12222', '23233');
INSERT INTO `foods` VALUES ('2223', 'lalala', 'ádasdasd', '122222', '1');
INSERT INTO `foods` VALUES ('23', 'Cà ri gà bánh mì', 'carigabanhmi.jpg', '190000', '0');
INSERT INTO `foods` VALUES ('24', 'Đà điểu né', 'da dieu ne.jpg', '130000', '0');
INSERT INTO `foods` VALUES ('25', 'Dê nướng', 'de nuong.jpg', '210000', '0');
INSERT INTO `foods` VALUES ('26', 'Dồi trường hấp gừng', 'doi truong hap gung.jpg', '250000', '0');
INSERT INTO `foods` VALUES ('27', 'Gà bó xôi', 'ga bo xoi.jpg', '210000', '0');
INSERT INTO `foods` VALUES ('28', 'Gà hấp cải', 'ga hap cai.jpg', '200000', '0');
INSERT INTO `foods` VALUES ('29', 'Gà hấp gừng', 'ga hap gung.jpg', '190000', '0');
INSERT INTO `foods` VALUES ('3', 'Bò trộn rau mầm', 'BO TRON RAU MAM.jpg', '120000', '0');
INSERT INTO `foods` VALUES ('30', 'Gà hấp lá chanh', 'ga hap la chanh.jpg', '180000', '0');
INSERT INTO `foods` VALUES ('31', 'Gà hấp rau răm', 'ga hap rau ram.jpg', '190000', '0');
INSERT INTO `foods` VALUES ('32', 'Gà nướng ớt', 'ga nuong ot.jpg', '200000', '1');
INSERT INTO `foods` VALUES ('321', 'ád', 'qưe', '123', '1');
INSERT INTO `foods` VALUES ('322', 'ád', '', '12', '1');
INSERT INTO `foods` VALUES ('33', 'Gà quay', 'ga quay.jpg', '210000', '1');
INSERT INTO `foods` VALUES ('333', 'banh beo bua', 'htt/3MienProject/upload/images/IMG_0405.JPG', '130000', '1');
INSERT INTO `foods` VALUES ('34', 'Gà tiềm', 'ga tiem.jpg', '190000', '1');
INSERT INTO `foods` VALUES ('35', 'Gà xối mỡ', 'ga xoi mo.jpg', '150000', '1');
INSERT INTO `foods` VALUES ('353', 'banh bao bua', 'abcxyz', '120000', '12');
INSERT INTO `foods` VALUES ('36', 'Ghẹ Farci', 'ghe Farci.jpg', '140000', '1');
INSERT INTO `foods` VALUES ('37', 'Mì xào thập cẩm', 'mi xao.jpg', '130000', '1');
INSERT INTO `foods` VALUES ('38', 'Mực sa tế', 'muc sa te.jpg', '120000', '1');
INSERT INTO `foods` VALUES ('39', 'Sườn xào chua ngọt', 'suon xao chua ngot.jpg', '150000', '1');
INSERT INTO `foods` VALUES ('4', 'Chả giò Quảng Đông', 'CHA GIO QUANG DONG.jpg', '180000', '1');
INSERT INTO `foods` VALUES ('40', 'Thỏ nướng', 'tho nuong.jpg', '160000', '1');
INSERT INTO `foods` VALUES ('41', 'Tôm hấp bia', 'tom hap bia.jpg', '180000', '1');
INSERT INTO `foods` VALUES ('42', 'Vịt nấu chao', 'vit nau chao.jpg', '200000', '1');
INSERT INTO `foods` VALUES ('43', 'Vịt quay', 'vit quay.jpg', '160000', '1');
INSERT INTO `foods` VALUES ('44', 'Chả tôm chiên xù giòn', 'cha tom chien xu gion.jpg', '170000', '1');
INSERT INTO `foods` VALUES ('45', 'Nghêu xào', 'ngheu xao.JPG', '120000', '1');
INSERT INTO `foods` VALUES ('46', 'Cơm rang hoa hướng dương', 'com rang goa huong duong.jpg', '110000', '1');
INSERT INTO `foods` VALUES ('47', 'Trứng bọc thịt chiên giòn', 'trung boc thit chien gion.jpg', '140000', '1');
INSERT INTO `foods` VALUES ('48', 'Bò cuộn xốt lá quế', 'bo cuon xot la que.jpg', '210000', '1');
INSERT INTO `foods` VALUES ('49', 'Tôm rim tỏi', 'tom rim toi.jpg', '150000', '1');
INSERT INTO `foods` VALUES ('5', 'Gỏi bò', 'GOI BO.jpg', '100000', '1');
INSERT INTO `foods` VALUES ('50', 'Chả viên thịt bò khoai tây', 'cha vien thit bo khoa tay.jpg', '180000', '1');
INSERT INTO `foods` VALUES ('51', 'Đậu hủ tì bà', 'dau hu ti ba.jpg', '110000', '4');
INSERT INTO `foods` VALUES ('52', 'Bánh plan', 'banh plan.jpg', '80000', '4');
INSERT INTO `foods` VALUES ('53', 'Bánh Pudding', 'banh pudding nho.jpg', '50000', '4');
INSERT INTO `foods` VALUES ('54', 'Bưởi', 'buoi.jpg', '70000', '4');
INSERT INTO `foods` VALUES ('55', 'Chè nhãn tươ', 'che nhan tuoi.jpg', '50000', '4');
INSERT INTO `foods` VALUES ('56', 'Chè sen', 'che sen.jpg', '60000', '4');
INSERT INTO `foods` VALUES ('57', 'Chè trôi nước', 'che troi nuoc.jpg', '70000', '4');
INSERT INTO `foods` VALUES ('58', 'Dưa hấu', 'dua hau.jpg', '80000', '3');
INSERT INTO `foods` VALUES ('59', 'Kem ca cao', 'kem ca cao.jpg', '60000', '3');
INSERT INTO `foods` VALUES ('6', 'Gỏi đọt dừa', 'GOI DOT DUA.jpg', '100000', '3');
INSERT INTO `foods` VALUES ('60', 'Mousse chocolate', 'mousse chocolate.jpg', '70000', '3');
INSERT INTO `foods` VALUES ('61', 'Nhãn', 'nhan.jpg', '50000', '3');
INSERT INTO `foods` VALUES ('62', 'Nho Mỹ', 'nho my.jpg', '80000', '3');
INSERT INTO `foods` VALUES ('63', 'Quýt Thái', 'quyt thai.jpg', '90000', '3');
INSERT INTO `foods` VALUES ('64', 'Rau câu', 'rau cau.jpg', '100000', '3');
INSERT INTO `foods` VALUES ('65', 'Thạch hũ hạnh nhân', 'thach hu hanh nhan.jpg', '70000', '3');
INSERT INTO `foods` VALUES ('66', 'Trái cây', 'trai cay.jpg', '90000', '3');
INSERT INTO `foods` VALUES ('67', 'Thạch mơ nhân bánh plan', 'thach mo nhan banh plan.jpg', '110000', '3');
INSERT INTO `foods` VALUES ('68', 'Chè xoài', 'che xoai.jpg', '110000', '3');
INSERT INTO `foods` VALUES ('69', 'Bánh su kem', 'banh su kem.jpg', '120000', '3');
INSERT INTO `foods` VALUES ('7', 'Gỏi dưa leo', 'GOI DUA LEO.jpg', '80000', '1');
INSERT INTO `foods` VALUES ('70', 'Bánh Mousse', 'banh mousse.jpg', '130000', '1');
INSERT INTO `foods` VALUES ('71', 'Thạch cam', 'thach cam.jpg', '90000', '1');
INSERT INTO `foods` VALUES ('72', 'Kẹo củ sen', 'keo cu sen.jpg', '70000', '1');
INSERT INTO `foods` VALUES ('73', 'Bánh chuối', 'banh chuoi.jpg', '80000', '1');
INSERT INTO `foods` VALUES ('74', 'Bánh ngọt', 'banh ngot.jpg', '70000', '1');
INSERT INTO `foods` VALUES ('75', 'Bánh crepe', 'banh crepe.jpg', '90000', '2');
INSERT INTO `foods` VALUES ('76', 'Bánh tart chanh leo', 'banh tart chanh leo.jpg', '120000', '2');
INSERT INTO `foods` VALUES ('77', 'Bánh gai Cao Bằng', 'banh gai cao bang.jpg', '50000', '2');
INSERT INTO `foods` VALUES ('78', 'Bánh nẳng', 'banh nang.jpg', '60000', '2');
INSERT INTO `foods` VALUES ('79', 'Bún bò', 'bun bo.jpg', '130000', '2');
INSERT INTO `foods` VALUES ('8', 'Gỏi ngó sen bánh phồng', 'GOI NGO SEN BANH PHONG.jpg', '80000', '2');
INSERT INTO `foods` VALUES ('80', 'Bún cá Hải Phòng', 'bun ca hai phong.jpg', '70000', '2');
INSERT INTO `foods` VALUES ('81', 'Bún chả', 'bun cha.jpg', '80000', '2');
INSERT INTO `foods` VALUES ('82', 'Bún đậu', 'bun dau.jpg', '70000', '2');
INSERT INTO `foods` VALUES ('83', 'Bún thang', 'bun thang.jpg', '80000', '2');
INSERT INTO `foods` VALUES ('84', 'Cá chép om dưa chua', 'ca chep om dua chua.jpg', '90000', '2');
INSERT INTO `foods` VALUES ('85', 'Cá kho làng Vũ Đại', 'ca kho lang vu dai.jpg', '120000', '2');
INSERT INTO `foods` VALUES ('86', 'Cơm lam', 'com lam.jpg', '70000', '2');
INSERT INTO `foods` VALUES ('87', 'Cơm niêu', 'com nieu.jpg', '90000', '0');
INSERT INTO `foods` VALUES ('871', 'yeah hu', 'IMG_0404.JPG', '130000', '1');
INSERT INTO `foods` VALUES ('88', 'Cua đồng rang muối', 'cua dong rang muoi.jpg', '90000', '0');
INSERT INTO `foods` VALUES ('89', 'Heo giả cầy', 'heo gia cay.jpg', '120000', '0');
INSERT INTO `foods` VALUES ('9', 'Gỏi ngó sen', 'GOI NGO SEN.jpg', '70000', '0');
INSERT INTO `foods` VALUES ('90', 'Khô cá dứa cơm nắm', 'kho ca dua com mam.jpg', '130000', '0');
INSERT INTO `foods` VALUES ('91', 'Khô cá lóc', 'kho ca loc.jpg', '120000', '0');
INSERT INTO `foods` VALUES ('92', 'Nem cua biển', 'nem cua bien.jpg', '100000', '0');
INSERT INTO `foods` VALUES ('93', 'Nộm lươn hoa chuối', 'nom luon hoa chuoi.jpg', '210000', '0');
INSERT INTO `foods` VALUES ('94', 'Phở Hà Nội', 'pho ha noi.jpg', '210000', '0');
INSERT INTO `foods` VALUES ('95', 'Bánh bèo dĩa', 'banh beo dia.jpg', '20000', '0');
INSERT INTO `foods` VALUES ('96', 'Bánh bèo phần', 'banh beo phan.jpg', '80000', '0');
INSERT INTO `foods` VALUES ('98', 'Bánh ít trần', 'banh it tran.jpg', '70000', '0');
INSERT INTO `foods` VALUES ('99', 'Bánh khoái', 'banh khoai.jpg', '60000', '0');

-- ----------------------------
-- Table structure for foodtype
-- ----------------------------
DROP TABLE IF EXISTS `foodtype`;
CREATE TABLE `foodtype` (
  `typeid` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foodtype
-- ----------------------------
INSERT INTO `foodtype` VALUES ('1', 'Bắc');
INSERT INTO `foodtype` VALUES ('2', 'Trung');
INSERT INTO `foodtype` VALUES ('3', 'Nam');
INSERT INTO `foodtype` VALUES ('4', 'Khai Vị');
INSERT INTO `foodtype` VALUES ('5', 'Món Chính');
INSERT INTO `foodtype` VALUES ('6', 'Món Tráng Miệng');

-- ----------------------------
-- Table structure for ho
-- ----------------------------
DROP TABLE IF EXISTS `ho`;
CREATE TABLE `ho` (
  `id` int(11) NOT NULL,
  `tendn` varchar(45) DEFAULT NULL,
  `matkhau` varchar(45) DEFAULT NULL,
  `g` int(11) DEFAULT NULL,
  `sodutk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ho
-- ----------------------------
INSERT INTO `ho` VALUES ('1', 'phuong123', '123', '2', '200000');
INSERT INTO `ho` VALUES ('2', 'phong', '123', '2', '11111');
INSERT INTO `ho` VALUES ('3', '1111111111111111', '123456', '2', '0');
INSERT INTO `ho` VALUES ('4', 'linuswiliam4', 'ntp1234567', '2', '0');
INSERT INTO `ho` VALUES ('5', 'admin', 'admin', '1', '0');

-- ----------------------------
-- Table structure for kmai
-- ----------------------------
DROP TABLE IF EXISTS `kmai`;
CREATE TABLE `kmai` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `logan` varchar(100) DEFAULT NULL,
  `giamgia` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kmai
-- ----------------------------
INSERT INTO `kmai` VALUES ('1', 'Giang Sinh An Lanh', 'Giảm giá 10%', '0.1');
INSERT INTO `kmai` VALUES ('2', 'Giam gia 1', 'Giảm Giá 20%', '0.2');
INSERT INTO `kmai` VALUES ('3', 'giam gia 2', 'Giảm Giá 15%', '0.15');
INSERT INTO `kmai` VALUES ('4', 'Giam gia tao lao', 'Giảm Giá 5%', '0.05');
INSERT INTO `kmai` VALUES ('5', 'giam gia siu bua', 'giam gia siu khung', null);
INSERT INTO `kmai` VALUES ('6', 'giảm giá valentine', 'giam giá cho các cặp tình nhơn', '0.7');
INSERT INTO `kmai` VALUES ('9', 'bbb', '1', null);

-- ----------------------------
-- Table structure for nhan
-- ----------------------------
DROP TABLE IF EXISTS `nhan`;
CREATE TABLE `nhan` (
  `id` int(11) NOT NULL,
  `ten` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `sodienthoai` varchar(45) DEFAULT NULL,
  `ngaysinh` varchar(45) DEFAULT NULL,
  `gioitinh` varchar(45) DEFAULT NULL,
  `nghenghiep` varchar(45) DEFAULT NULL,
  `quocgia` varchar(45) DEFAULT NULL,
  `diachi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nhan
-- ----------------------------
INSERT INTO `nhan` VALUES ('1', 'aaaaaaaa', 'aaaaaaaa@gmail.com', '1234567890', '19700101', 'nam', '', 'Việt Nam', 'aaaaaaa');
INSERT INTO `nhan` VALUES ('3', 'nguyen phuong', 'linuswiliam4@yahoo.com', '0986499424', '19940829', 'khac', '', 'Việt Nam', 'tay ninh');
INSERT INTO `nhan` VALUES ('4', 'chubin', 'linuswiliam4@gmail.com', '1234567890', '19700101', 'khac', '', 'Việt Nam', 'aaaa');
INSERT INTO `nhan` VALUES ('5', 'nguyen thanh phuong', 'linuswiliam4@gmail.com', '0986499424', '19940829', 'nam', 'sanh dien', 'Việt Nam', 'tay ninh');

-- ----------------------------
-- Table structure for nhanvien
-- ----------------------------
DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `ten` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `sodienthoai` varchar(45) DEFAULT NULL,
  `ngayvaolam` varchar(45) DEFAULT NULL,
  `chucvu` varchar(45) DEFAULT NULL,
  `luong` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nhanvien
-- ----------------------------
INSERT INTO `nhanvien` VALUES ('1', 'a', 'mytien244@yahoo.com', '01662569610', '17/02/2015', 'Nhan vien', '10000000');
