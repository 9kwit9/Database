/*
Navicat MySQL Data Transfer

Source Server         : 191.1.2.113
Source Server Version : 50169
Source Host           : 191.1.2.113:3306
Source Database       : smart_lis

Target Server Type    : MYSQL
Target Server Version : 50169
File Encoding         : 65001

Date: 2023-11-08 12:13:07
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tbl_global_information`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_information`;
CREATE TABLE `tbl_global_information` (
  `id` int(1) NOT NULL DEFAULT '0',
  `barcodeonspec` varchar(2) DEFAULT NULL,
  `Auto_logout` varchar(2) DEFAULT NULL,
  `Auto_refresh` varchar(2) DEFAULT NULL,
  `Auto_logout_time` varchar(10) DEFAULT NULL,
  `Auto_refresh_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_global_information
-- ----------------------------
INSERT INTO `tbl_global_information` VALUES ('1', '1', '0', '1', '10', '50');

-- ----------------------------
-- Table structure for `tbl_information_analyzer_result`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_information_analyzer_result`;
CREATE TABLE `tbl_information_analyzer_result` (
  `res_ana_barcode` varchar(50) NOT NULL DEFAULT '',
  `res_ana_labcode` varchar(30) NOT NULL DEFAULT '',
  `res_ana_result` varchar(100) DEFAULT NULL,
  `res_ana_datetime` datetime DEFAULT NULL,
  `res_ana_name` varchar(50) NOT NULL DEFAULT '',
  `res_ana_status` varchar(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`res_ana_barcode`,`res_ana_labcode`,`res_ana_name`,`res_ana_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_information_analyzer_result
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_information_configuration`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_information_configuration`;
CREATE TABLE `tbl_information_configuration` (
  `info_computername` varchar(255) NOT NULL DEFAULT '',
  `info_tcpip` varchar(200) DEFAULT NULL,
  `info_barspe` varchar(2) DEFAULT '0',
  `info_path_barprint` varchar(255) DEFAULT NULL,
  `info_path_reqprint` varchar(255) DEFAULT NULL,
  `info_path_resprint` varchar(255) DEFAULT NULL,
  `info_path_barreport` varchar(255) DEFAULT NULL,
  `info_path_reqreport` varchar(255) DEFAULT NULL,
  `info_path_resreport` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`info_computername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_information_configuration
-- ----------------------------
INSERT INTO `tbl_information_configuration` VALUES ('KWIT', '192.168.1.15', '0', 'BIXOLON SLP-TX400 - BPL-Z', '', '', 'D:\\report_barcode_All.rpt', '', '');

-- ----------------------------
-- Table structure for `tbl_information_lab_received`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_information_lab_received`;
CREATE TABLE `tbl_information_lab_received` (
  `lab_rec_ln` varchar(50) NOT NULL DEFAULT '',
  `lab_rec_barcode` varchar(50) NOT NULL DEFAULT '',
  `lab_rec_labcode` varchar(50) NOT NULL DEFAULT '',
  `lab_rec_specode` varchar(5) DEFAULT NULL,
  `lab_rec_status` varchar(10) DEFAULT NULL,
  `lab_rec_date` date DEFAULT NULL,
  `lab_rec_time` time DEFAULT NULL,
  `lab_rec_collection` datetime DEFAULT NULL,
  `lab_rec_comment` varchar(250) DEFAULT NULL,
  `lab_rec_addition` varchar(2) DEFAULT 'N',
  PRIMARY KEY (`lab_rec_ln`,`lab_rec_barcode`,`lab_rec_labcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_information_lab_received
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_information_lab_request`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_information_lab_request`;
CREATE TABLE `tbl_information_lab_request` (
  `lab_req_ln` varchar(50) NOT NULL DEFAULT '',
  `lab_req_barcode` varchar(50) NOT NULL DEFAULT '',
  `lab_req_labcode` varchar(50) NOT NULL DEFAULT '',
  `lab_req_labname` varchar(250) DEFAULT NULL,
  `lab_req_date` date DEFAULT NULL,
  `lab_req_datecomplete` datetime DEFAULT NULL,
  `lab_req_typelab` varchar(5) DEFAULT NULL,
  `lab_req_status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`lab_req_ln`,`lab_req_barcode`,`lab_req_labcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_information_lab_request
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_information_lab_result`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_information_lab_result`;
CREATE TABLE `tbl_information_lab_result` (
  `res_ln` varchar(50) NOT NULL DEFAULT '',
  `res_barcode` varchar(50) NOT NULL DEFAULT '',
  `res_section` varchar(5) DEFAULT NULL,
  `res_codelab` varchar(10) NOT NULL DEFAULT '',
  `res_itemlab` varchar(10) NOT NULL DEFAULT '',
  `res_result` longtext,
  `res_lab_level` int(2) DEFAULT '0',
  `res_flag` varchar(5) DEFAULT NULL,
  `res_date_save` date DEFAULT NULL,
  `res_date_report` date DEFAULT NULL,
  `res_date_app` date DEFAULT NULL,
  `res_time_save` time DEFAULT NULL,
  `res_time_report` time DEFAULT NULL,
  `res_time_app` time DEFAULT NULL,
  `res_user_save` varchar(100) DEFAULT NULL,
  `res_user_report` varchar(50) DEFAULT NULL,
  `res_user_app` varchar(50) DEFAULT NULL,
  `res_comment` varchar(200) DEFAULT NULL,
  `res_picture` longblob,
  `res_export` varchar(5) DEFAULT ' ',
  `res_status` varchar(2) DEFAULT '0',
  PRIMARY KEY (`res_ln`,`res_barcode`,`res_codelab`,`res_itemlab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_information_lab_result
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_information_lab_status`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_information_lab_status`;
CREATE TABLE `tbl_information_lab_status` (
  `Company` varchar(50) NOT NULL DEFAULT '',
  `LN` varchar(100) NOT NULL DEFAULT '',
  `SPEC` int(1) DEFAULT '0',
  `REG` int(1) DEFAULT NULL,
  `FBS` int(1) DEFAULT NULL,
  `CH` int(1) DEFAULT '0',
  `HT` int(1) DEFAULT '0',
  `UR` int(1) DEFAULT '0',
  `ST` int(1) DEFAULT '0',
  `STR` int(1) DEFAULT NULL,
  `AFB` int(1) DEFAULT NULL,
  `PE` int(1) DEFAULT '0',
  `INN` int(1) DEFAULT NULL,
  `CXR` int(1) DEFAULT '0',
  `CXD` int(1) DEFAULT '0',
  `EKG` int(1) DEFAULT '0',
  `VIS` int(1) DEFAULT NULL,
  `OCV` int(1) DEFAULT '0',
  `SPI` int(1) DEFAULT '0',
  `PAU` int(1) DEFAULT NULL,
  `AUD` int(1) DEFAULT '0',
  `HAS` int(1) DEFAULT '0',
  `LBS` int(1) DEFAULT '0',
  `VAC` int(1) DEFAULT '0',
  `BON` int(1) DEFAULT '0',
  PRIMARY KEY (`Company`,`LN`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of tbl_information_lab_status
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_information_log_delete`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_information_log_delete`;
CREATE TABLE `tbl_information_log_delete` (
  `log_delete_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_delete_date` varchar(50) DEFAULT NULL,
  `log_delete_user` varchar(50) DEFAULT NULL,
  `log_delete_ln` varchar(50) DEFAULT NULL,
  `log_delete_name` varchar(50) DEFAULT NULL,
  `log_delete_company` varchar(50) DEFAULT NULL,
  `log_delete_customer_id` varchar(50) DEFAULT NULL,
  `log_delete_comment` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`log_delete_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_information_log_delete
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_information_patient`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_information_patient`;
CREATE TABLE `tbl_information_patient` (
  `HN` varchar(50) NOT NULL DEFAULT '',
  `FName` varchar(20) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Surname` varchar(200) DEFAULT NULL,
  `Sex` varchar(10) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `IdCard` varchar(50) DEFAULT NULL,
  `p_right` varchar(50) DEFAULT NULL,
  `Age` varchar(50) DEFAULT NULL,
  `Y` varchar(10) DEFAULT NULL,
  `M` varchar(10) DEFAULT NULL,
  `D` varchar(10) DEFAULT NULL,
  `CusID` varchar(50) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Dept` varchar(100) DEFAULT NULL,
  `Fact_div` varchar(100) DEFAULT NULL,
  `Workstart` varchar(50) DEFAULT NULL,
  `Addno` varchar(10) DEFAULT NULL,
  `Moo` varchar(50) DEFAULT NULL,
  `Soi` varchar(50) DEFAULT NULL,
  `Road` varchar(50) DEFAULT NULL,
  `Tumbol` varchar(50) DEFAULT NULL,
  `Amphur` varchar(50) DEFAULT NULL,
  `Province` varchar(50) DEFAULT NULL,
  `Poscode` varchar(10) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`HN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_information_patient
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_information_reject`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_information_reject`;
CREATE TABLE `tbl_information_reject` (
  `rej_ln` varchar(50) NOT NULL DEFAULT '',
  `rej_codelab` varchar(50) NOT NULL DEFAULT '',
  `rej_specode` varchar(50) DEFAULT NULL,
  `rej_comment` varchar(255) DEFAULT NULL,
  `rej_user` varchar(50) DEFAULT '',
  `rej_date` date DEFAULT '0000-00-00',
  `rej_time` time DEFAULT '00:00:00',
  PRIMARY KEY (`rej_ln`,`rej_codelab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_information_reject
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_information_request`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_information_request`;
CREATE TABLE `tbl_information_request` (
  `Req_HN` varchar(50) NOT NULL DEFAULT '',
  `Req_ln` varchar(50) NOT NULL DEFAULT '',
  `req_type` varchar(10) DEFAULT NULL,
  `req_an` varchar(50) DEFAULT NULL,
  `req_vn` varchar(50) DEFAULT NULL,
  `req_ward` varchar(50) DEFAULT NULL,
  `req_dept` varchar(50) DEFAULT NULL,
  `req_doctor` varchar(50) DEFAULT NULL,
  `req_date` date DEFAULT NULL,
  `req_date_specimen` datetime DEFAULT NULL,
  `req_user_req` varchar(50) DEFAULT '-',
  `req_comment` varchar(200) DEFAULT NULL,
  `req_orderno` varchar(50) DEFAULT ' ',
  `req_hn_tmp` varchar(50) DEFAULT '',
  `req_etc1` text,
  `req_etc2` text,
  `req_etc3` text,
  `No1` varchar(50) DEFAULT NULL,
  `No` varchar(50) DEFAULT NULL,
  `Regis_id` varchar(50) DEFAULT NULL,
  `req_addition` varchar(2) DEFAULT 'N',
  `req_date_rec` date DEFAULT NULL,
  `req_time_rec` datetime DEFAULT NULL,
  PRIMARY KEY (`Req_HN`,`Req_ln`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_information_request
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_information_server`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_information_server`;
CREATE TABLE `tbl_information_server` (
  `servername` varchar(50) NOT NULL DEFAULT '',
  `servertcp` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `database` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`servername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_information_server
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_setup_comment`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_comment`;
CREATE TABLE `tbl_setup_comment` (
  `ComCode` varchar(50) NOT NULL DEFAULT '',
  `ComName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ComCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_setup_comment_order`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_comment_order`;
CREATE TABLE `tbl_setup_comment_order` (
  `ID` int(4) NOT NULL DEFAULT '0',
  `Commenttext` varchar(255) DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_comment_order
-- ----------------------------
INSERT INTO `tbl_setup_comment_order` VALUES ('0', 'test order1');
INSERT INTO `tbl_setup_comment_order` VALUES ('1', 'test order2');
INSERT INTO `tbl_setup_comment_order` VALUES ('2', 'test order 3');

-- ----------------------------
-- Table structure for `tbl_setup_comment_result`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_comment_result`;
CREATE TABLE `tbl_setup_comment_result` (
  `ID` int(4) NOT NULL DEFAULT '0',
  `Commenttext` varchar(255) DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_comment_result
-- ----------------------------
INSERT INTO `tbl_setup_comment_result` VALUES ('0', '122222 \\\\');
INSERT INTO `tbl_setup_comment_result` VALUES ('1', '');

-- ----------------------------
-- Table structure for `tbl_setup_comment_specimen`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_comment_specimen`;
CREATE TABLE `tbl_setup_comment_specimen` (
  `ID` int(4) NOT NULL DEFAULT '0',
  `Commenttext` varchar(255) DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_comment_specimen
-- ----------------------------
INSERT INTO `tbl_setup_comment_specimen` VALUES ('0', 'test Comment specimen1');
INSERT INTO `tbl_setup_comment_specimen` VALUES ('1', 'test Comment specimen2\\\\');
INSERT INTO `tbl_setup_comment_specimen` VALUES ('2', '');

-- ----------------------------
-- Table structure for `tbl_setup_company`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_company`;
CREATE TABLE `tbl_setup_company` (
  `Cpn_id` int(11) NOT NULL AUTO_INCREMENT,
  `Cpn_Code` varchar(50) NOT NULL DEFAULT '',
  `Cpn_Name` varchar(150) DEFAULT NULL,
  `Cpn_fullname` varchar(200) DEFAULT NULL,
  `Cpn_Comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Cpn_id`,`Cpn_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_company
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_setup_datatype`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_datatype`;
CREATE TABLE `tbl_setup_datatype` (
  `ID` int(30) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_datatype
-- ----------------------------
INSERT INTO `tbl_setup_datatype` VALUES ('1', 'Numeric', '-');
INSERT INTO `tbl_setup_datatype` VALUES ('2', 'Shorttext', '-');
INSERT INTO `tbl_setup_datatype` VALUES ('3', 'Template 1', '-');
INSERT INTO `tbl_setup_datatype` VALUES ('4', 'Template 2', '-');
INSERT INTO `tbl_setup_datatype` VALUES ('5', 'Template 3', '-');
INSERT INTO `tbl_setup_datatype` VALUES ('6', 'Free text', '-');
INSERT INTO `tbl_setup_datatype` VALUES ('7', 'Calculate', null);

-- ----------------------------
-- Table structure for `tbl_setup_dept`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_dept`;
CREATE TABLE `tbl_setup_dept` (
  `DeptID` int(11) NOT NULL AUTO_INCREMENT,
  `DeptCode` varchar(50) NOT NULL DEFAULT '',
  `DeptName` varchar(200) DEFAULT NULL,
  `DeptCompany` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DeptID`,`DeptCode`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_dept
-- ----------------------------
INSERT INTO `tbl_setup_dept` VALUES ('1', 'D0001', 'หน้างาน', 'AHC0001');
INSERT INTO `tbl_setup_dept` VALUES ('2', 'D0002', 'หน้างาน,สายบรรจุ', 'AHC0001');
INSERT INTO `tbl_setup_dept` VALUES ('3', 'D0003', 'เอฟ/บี', 'AHC0002');
INSERT INTO `tbl_setup_dept` VALUES ('4', 'D0004', 'บัญชี', 'AHC0002');
INSERT INTO `tbl_setup_dept` VALUES ('5', 'D0005', 'ครัว', 'AHC0002');
INSERT INTO `tbl_setup_dept` VALUES ('6', 'D0006', 'IND', 'AHC0003');
INSERT INTO `tbl_setup_dept` VALUES ('7', 'D0007', 'PNB', 'AHC0003');
INSERT INTO `tbl_setup_dept` VALUES ('8', 'D0008', 'MTC', 'AHC0003');
INSERT INTO `tbl_setup_dept` VALUES ('9', 'D0009', 'INE', 'AHC0003');
INSERT INTO `tbl_setup_dept` VALUES ('10', 'D0010', 'DPC', 'AHC0003');
INSERT INTO `tbl_setup_dept` VALUES ('11', 'D0011', 'PSC', 'AHC0003');
INSERT INTO `tbl_setup_dept` VALUES ('12', 'D0012', ' PSC', 'AHC0003');
INSERT INTO `tbl_setup_dept` VALUES ('13', 'D0013', 'ISC', 'AHC0003');
INSERT INTO `tbl_setup_dept` VALUES ('14', 'D0014', 'PMC', 'AHC0003');
INSERT INTO `tbl_setup_dept` VALUES ('15', 'D0015', 'INF', 'AHC0003');
INSERT INTO `tbl_setup_dept` VALUES ('16', 'D0016', 'INC', 'AHC0003');
INSERT INTO `tbl_setup_dept` VALUES ('17', 'D0017', ' PPC', 'AHC0003');
INSERT INTO `tbl_setup_dept` VALUES ('18', 'D0018', 'PPC', 'AHC0003');
INSERT INTO `tbl_setup_dept` VALUES ('35', 'D0019', 'FU31&BH&AS', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('36', 'D0036', 'FU31&BH7m.', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('37', 'D0037', 'FU31&CR', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('38', 'D0038', 'FU31&CVJ&R', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('39', 'D0039', 'FU31&RUB', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('40', 'D0040', 'PT31&PEA', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('41', 'D0041', 'HR30&HRM', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('42', 'D0042', 'GA30&GAW', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('43', 'D0043', 'GA30&GAF', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('44', 'D0044', 'SA30&SAF', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('45', 'D0045', 'IE31&INA', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('46', 'D0046', 'IE31&PNA', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('47', 'D0047', 'PT31&DPA', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('48', 'D0048', 'MA30&MOA', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('49', 'D0049', 'MA30&PMA', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('50', 'D0050', 'PT31&ISA', 'AHC0004');
INSERT INTO `tbl_setup_dept` VALUES ('51', 'D0051', 'PRODUCTION', 'AHC0008');
INSERT INTO `tbl_setup_dept` VALUES ('52', 'D0052', 'CAD', 'AHC0008');
INSERT INTO `tbl_setup_dept` VALUES ('53', 'D0053', 'CAM', 'AHC0008');
INSERT INTO `tbl_setup_dept` VALUES ('54', 'D0054', 'PROCESS', 'AHC0008');
INSERT INTO `tbl_setup_dept` VALUES ('55', 'D0055', 'FINISHING', 'AHC0008');
INSERT INTO `tbl_setup_dept` VALUES ('56', 'D0056', 'MARKETING', 'AHC0008');
INSERT INTO `tbl_setup_dept` VALUES ('57', 'D0057', 'MACHINE', 'AHC0008');
INSERT INTO `tbl_setup_dept` VALUES ('58', 'D0058', 'QC', 'AHC0008');
INSERT INTO `tbl_setup_dept` VALUES ('59', 'D0059', 'ACCOUNTING', 'AHC0008');
INSERT INTO `tbl_setup_dept` VALUES ('60', 'D0060', 'HR & GA', 'AHC0008');
INSERT INTO `tbl_setup_dept` VALUES ('61', 'D0061', 'ISO', 'AHC0008');
INSERT INTO `tbl_setup_dept` VALUES ('62', 'D0062', 'Driver', 'AHC0008');
INSERT INTO `tbl_setup_dept` VALUES ('63', 'D0063', 'HR&GA', 'AHC0008');
INSERT INTO `tbl_setup_dept` VALUES ('152', 'D0064', 'พนักงานขับรถ', 'AHC0011');
INSERT INTO `tbl_setup_dept` VALUES ('153', 'D0153', 'คลับเฮ้าส์', 'AHC0011');
INSERT INTO `tbl_setup_dept` VALUES ('154', 'D0154', 'พนง.ท้ายรถ', 'AHC0011');
INSERT INTO `tbl_setup_dept` VALUES ('155', 'D0155', 'ตกแต่งสวน', 'AHC0011');
INSERT INTO `tbl_setup_dept` VALUES ('156', 'D0156', 'ซ่อมคอมพิวเตอร์', 'AHC0011');
INSERT INTO `tbl_setup_dept` VALUES ('157', 'D0157', 'งานธุรการ', 'AHC0011');
INSERT INTO `tbl_setup_dept` VALUES ('158', 'D0158', 'บ้านพักรับรอง', 'AHC0011');
INSERT INTO `tbl_setup_dept` VALUES ('159', 'D0159', 'สะอาดอุปกรณ์', 'AHC0011');
INSERT INTO `tbl_setup_dept` VALUES ('160', 'D0160', 'ตัดหญ้า', 'AHC0011');
INSERT INTO `tbl_setup_dept` VALUES ('161', 'D0161', 'ส่งเอกสาร (13)', 'AHC0011');
INSERT INTO `tbl_setup_dept` VALUES ('162', 'D0162', 'ส่งเอกสาร (1)', 'AHC0011');
INSERT INTO `tbl_setup_dept` VALUES ('163', 'D0163', 'ประชาสัมพันธ์', 'AHC0011');
INSERT INTO `tbl_setup_dept` VALUES ('164', 'D0164', 'ขนท่อก๊าซ', 'AHC0011');
INSERT INTO `tbl_setup_dept` VALUES ('165', 'D0165', 'ปลดทุ่นกักน้ำมัน', 'AHC0011');

-- ----------------------------
-- Table structure for `tbl_setup_doctor`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_doctor`;
CREATE TABLE `tbl_setup_doctor` (
  `DoctorCode` varchar(50) NOT NULL DEFAULT '',
  `DoctorName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`DoctorCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_doctor
-- ----------------------------
INSERT INTO `tbl_setup_doctor` VALUES ('001', 'นพ.สุวิทย์  วังสนาม');
INSERT INTO `tbl_setup_doctor` VALUES ('1GM01', 'น.พ. ดาวิน  นารูลา');
INSERT INTO `tbl_setup_doctor` VALUES ('1GM03', 'น.พ. ทวีสุข  พงศ์นคินทร์(คณะบุคคลฯ)');
INSERT INTO `tbl_setup_doctor` VALUES ('1GM05', 'น.พ. ดาวิน  นารูลา(คณะบุคคลฯ)');
INSERT INTO `tbl_setup_doctor` VALUES ('3GM17', 'น.พ. วีระชัย  โชตินพรัตน์ภัทร');
INSERT INTO `tbl_setup_doctor` VALUES ('3NM01', 'น.พ. กัมมันต์  พันธุมจินดา');
INSERT INTO `tbl_setup_doctor` VALUES ('8GP97', 'DR. Teerachai Ledarmonpat');

-- ----------------------------
-- Table structure for `tbl_setup_formula`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_formula`;
CREATE TABLE `tbl_setup_formula` (
  `labcode` varchar(50) NOT NULL DEFAULT '',
  `Sex` varchar(5) NOT NULL DEFAULT '',
  `Formula` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`labcode`,`Sex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_formula
-- ----------------------------
INSERT INTO `tbl_setup_formula` VALUES ('CHT0091', 'F', null);
INSERT INTO `tbl_setup_formula` VALUES ('CHT0091', 'M', '((CDbl(txtCrea.Text) / 0.7) ^ (-0.329)) * ((0.993) ^ CInt(txtAge.Text))');

-- ----------------------------
-- Table structure for `tbl_setup_grade_valueselect`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_grade_valueselect`;
CREATE TABLE `tbl_setup_grade_valueselect` (
  `idlab` varchar(50) NOT NULL DEFAULT '',
  `grade` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idlab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_grade_valueselect
-- ----------------------------
INSERT INTO `tbl_setup_grade_valueselect` VALUES ('HTT0015', '\nfew\n1+\n2+\n3+\n4+');
INSERT INTO `tbl_setup_grade_valueselect` VALUES ('MCT0004', '\nfew\n1+\n2+\n3+\n4+');
INSERT INTO `tbl_setup_grade_valueselect` VALUES ('URT0015', '\n0-1\n1-2\n2-3\n3-5\n5-10\n10-20\n20-30\n30-50\n50-100\n>100');
INSERT INTO `tbl_setup_grade_valueselect` VALUES ('URT0016', '\n0-1\n1-2\n2-3\n3-5\n5-10\n10-20\n20-30\n30-50\n50-100\n>100');
INSERT INTO `tbl_setup_grade_valueselect` VALUES ('URT0017', '\n0-1\n1-2\n2-3\n3-5\n5-10\n10-20\n20-30\n30-50\n50-100\n>100');

-- ----------------------------
-- Table structure for `tbl_setup_lab`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_lab`;
CREATE TABLE `tbl_setup_lab` (
  `ID` varchar(100) NOT NULL DEFAULT '',
  `name` text,
  `IDHis` varchar(100) DEFAULT NULL,
  `NameCheckUp` varchar(100) DEFAULT NULL,
  `Price` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Lock1` varchar(4) DEFAULT NULL,
  `T_Lab` smallint(2) DEFAULT NULL,
  `TurnTime` varchar(100) DEFAULT NULL,
  `Fg` int(4) DEFAULT NULL,
  `Typebtn` smallint(2) DEFAULT NULL,
  `Medthod` varchar(500) DEFAULT '-',
  `Checkup` varchar(2) DEFAULT '0',
  `NameDescription` varchar(100) DEFAULT '-',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of tbl_setup_lab
-- ----------------------------
INSERT INTO `tbl_setup_lab` VALUES ('FBS001', 'FBS', '', 'FBS', '80', 'FBS', '1', '0', '0::|0::', '0', '0', '', '0', 'FBS');
INSERT INTO `tbl_setup_lab` VALUES ('CH002', 'BUN', '', 'BUN', '80', 'CH', '1', '0', '0:00:45#0::', '0', '0', '-', '1', 'BUN');
INSERT INTO `tbl_setup_lab` VALUES ('CH003', 'CREATININE', '', 'CRE', '80', 'CH', '1', '0', '0:00:45#0::', '0', '0', '-', '1', 'CRE');
INSERT INTO `tbl_setup_lab` VALUES ('CH004', 'URIC ACID', '', 'URIC', '80', 'CH', '1', '0', '0:00:45#0::', '0', '0', '-', '1', 'URIC');
INSERT INTO `tbl_setup_lab` VALUES ('CH005', 'CHOLESTEROL', '', 'CHO', '100', 'CH', '1', '0', '0:00:45#0::', '0', '0', '-', '1', 'CHO');
INSERT INTO `tbl_setup_lab` VALUES ('CH006', 'TRIGLYCERIDE', '', 'TG', '140', 'CH', '1', '0', '0:00:45#0::', '0', '0', '-', '1', 'TG');
INSERT INTO `tbl_setup_lab` VALUES ('CH007', 'HDL-CHOLESTEROL', '', 'HDL', '180', 'CH', '1', '0', '0:00:40#0::', '0', '0', '-', '1', 'HDL');
INSERT INTO `tbl_setup_lab` VALUES ('CH008', 'LDL-CHOLESTEROL', '', 'LDL', '180', 'CH', '1', '0', '0:00:45#0::', '0', '0', '-', '1', 'LDL');
INSERT INTO `tbl_setup_lab` VALUES ('CH009', 'TOTAL PROTEIN', '', 'TP', '0', 'CH', '1', '0', '0:00:45#0::', '0', '0', '-', '1', 'TP');
INSERT INTO `tbl_setup_lab` VALUES ('CH010', 'ALBUMIN', '', 'ALB', '0', 'CH', '1', '0', '0:00:45#0::', '0', '0', '-', '1', 'ALB');
INSERT INTO `tbl_setup_lab` VALUES ('CH012', 'TOTAL BILIRUBIN', '', 'TB', '0', 'CH', '1', '0', '0:00:45#0::', '0', '0', '-', '1', 'TB');
INSERT INTO `tbl_setup_lab` VALUES ('CH013', 'DIRECT BILIRUBIN', '', 'DB', '0', 'CH', '1', '0', '0:00:45#0::', '0', '0', '-', '1', 'DB');
INSERT INTO `tbl_setup_lab` VALUES ('CH014', 'SGOT(AST)', '', 'GOT', '80', 'CH', '1', '0', '0:00:45#0::', '0', '0', '-', '1', 'GOT');
INSERT INTO `tbl_setup_lab` VALUES ('CH015', 'SGPT(ALT)', '', 'GPT', '80', 'CH', '1', '0', '0:00:45#0::', '0', '0', '-', '1', 'GPT');
INSERT INTO `tbl_setup_lab` VALUES ('CH016', 'ALKALINE PHOSPHATASE', '', 'ALP', '100', 'CH', '1', '0', '0:00:45#0::', '0', '0', '-', '1', 'ALP');
INSERT INTO `tbl_setup_lab` VALUES ('CH023', 'CALCIUM', '', 'Ca', '120', 'CH', '1', '0', '0:00:45#0::', '0', '0', '-', '1', 'Ca');
INSERT INTO `tbl_setup_lab` VALUES ('CH044', 'HbsAg', '', 'HbsAg', '180', 'CH', '1', '0', '0:00:40#0:00:00', '0', '0', '-', '1', 'HbsAg');
INSERT INTO `tbl_setup_lab` VALUES ('CH045', 'HbsAb', '', 'HbsAb', '280', 'CH', '1', '0', '0:00:40#0:00:00', '0', '0', '-', '1', 'HbsAb');
INSERT INTO `tbl_setup_lab` VALUES ('CH046', 'VDRL', '', 'VDRL', '80', 'CH', '1', '0', '0:00:10#0:00:00', '0', '0', '-', '1', 'VDRL');
INSERT INTO `tbl_setup_lab` VALUES ('CH061', 'HIV', '', 'HIV', '400', 'CH', '1', '0', '0::#0:00:00', '0', '0', '-', '1', 'HIV');
INSERT INTO `tbl_setup_lab` VALUES ('CH062', 'Blood Group', '', 'ABO', '60', 'CH', '1', '0', '0::#0:00:00', '0', '0', '-', '1', 'ABO');
INSERT INTO `tbl_setup_lab` VALUES ('CH063', 'Widal Test in Blood', '', 'Widal', '0', 'CH', '1', '0', '0::#0:00:00', '0', '0', '-', '1', 'Widal');
INSERT INTO `tbl_setup_lab` VALUES ('CH070', 'CEA', '', 'CEA', '400', 'CH', '1', '0', '0:00:10#0:00:00', '0', '0', '-', '1', 'CEA');
INSERT INTO `tbl_setup_lab` VALUES ('CH071', 'AFP', '', 'AFP', '400', 'CH', '1', '0', '0:00:45#0:00:00', '0', '0', '-', '1', 'AFP');
INSERT INTO `tbl_setup_lab` VALUES ('CH072', 'CA-199', '', 'CA-199', '800', 'CH', '1', '0', '0::30#0:00:00', '0', '0', '-', '1', 'CA-199');
INSERT INTO `tbl_setup_lab` VALUES ('CH073', 'PSA', '', 'PSA', '600', 'CH', '1', '0', '0::#0:00:00', '0', '0', '-', '1', 'PSA');
INSERT INTO `tbl_setup_lab` VALUES ('CH074', 'CA-153', '', 'CA-153', '700', 'CH', '1', '0', '0::#0:00:00', '0', '0', '-', '1', 'CA-153');
INSERT INTO `tbl_setup_lab` VALUES ('CH075', 'CA-125', '', 'CA-125', '700', 'CH', '1', '0', '0::#0:00:00', '0', '0', '-', '1', 'CA-125');
INSERT INTO `tbl_setup_lab` VALUES ('CH076', 'VDRL', '', 'VDRL(Si)', '0', 'CH', '1', '0', '2:00:45#0::', '0', '0', '-', '1', 'VDRL(Si)');
INSERT INTO `tbl_setup_lab` VALUES ('CH078', 'Hb Typing', '', 'HbTyping', '600', 'CH', '1', '0', '0:00:40#0::', '0', '0', '-', '1', 'HbTyping');
INSERT INTO `tbl_setup_lab` VALUES ('CH079', 'Thyroid', '', 'Thyroid', '1500', 'CH', '1', '0', '2:00:#0::', '0', '0', '-', '1', 'Thyroid');
INSERT INTO `tbl_setup_lab` VALUES ('CH080', 'ABO+Rh', '', 'ABO+Rh', '100', 'CH', '1', '0', '0:00:40#0::', '0', '0', '-', '1', 'ABO+Rh');
INSERT INTO `tbl_setup_lab` VALUES ('CH081', 'Aluminium(Blood)', '', 'Aluminium(Blood)', '0', 'CH', '1', '0', '3:00:#0::', '0', '0', '-', '1', 'Aluminium');
INSERT INTO `tbl_setup_lab` VALUES ('CH082', 'Cadmium(Blood)', '', 'Cadmium(Blood)', '0', 'CH', '1', '0', '0:00:20#0::', '0', '0', '-', '1', 'Cadmium');
INSERT INTO `tbl_setup_lab` VALUES ('CH083', 'Copper(Blood)', '', 'Copper(Blood)', '0', 'CH', '1', '0', '0:00:20#0:00:00', '0', '0', '-', '1', 'Copper');
INSERT INTO `tbl_setup_lab` VALUES ('CH084', 'Manganese', '', 'Manganese', '0', 'CH', '1', '0', '0:00:#0::', '0', '0', '-', '1', 'Manganese');
INSERT INTO `tbl_setup_lab` VALUES ('CH085', 'Magnesium', '', 'Magnesium', '0', 'CH', '1', '0', '0::#0:00:00', '0', '0', '-', '1', 'Magnesium');
INSERT INTO `tbl_setup_lab` VALUES ('CH086', 'Zinc', '', 'Zinc', '0', 'CH', '1', '0', '0::#0:00:00', '0', '0', '-', '1', 'Zinc');
INSERT INTO `tbl_setup_lab` VALUES ('HT001', 'CBC', '', 'CBC', '100', 'HT', '1', '0', '0:00:30#0::', '0', '0', '-', '1', 'CBC');
INSERT INTO `tbl_setup_lab` VALUES ('ST001', 'STOOL EXAMINATION', '', 'StoolExam', '0', 'ST', '1', '0', '0:00:30#0::', '0', '0', '-', '1', 'StoolExam');
INSERT INTO `tbl_setup_lab` VALUES ('ST002', 'Stool C/S', '', 'StoolC/S', '50', 'ST', '1', '0', '0:00:30#0::', '0', '0', '-', '1', 'StoolC/S');
INSERT INTO `tbl_setup_lab` VALUES ('UR001', 'URINALYSIS', '', 'UA', '0', 'UR', '1', '0', '0:00:30#0::', '0', '0', '-', '1', 'ปัสสาวะ');
INSERT INTO `tbl_setup_lab` VALUES ('CH087', 'Fe', '', 'Fe', '0', 'CH', '1', '0', '0:00:#0::', '0', '0', '-', '1', 'Fe');
INSERT INTO `tbl_setup_lab` VALUES ('CH088', 'Ethanol', '', 'Ethanol', '0', 'CH', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'Ethanol');
INSERT INTO `tbl_setup_lab` VALUES ('CH089', 'Methanol(Blood)', '', 'Methanol(Blood)', '0', 'CH', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'Methanol');
INSERT INTO `tbl_setup_lab` VALUES ('CH090', 'Iron', '', 'Iron', '0', 'CH', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'Iron');
INSERT INTO `tbl_setup_lab` VALUES ('CH091', 'Cholinesterase', '', 'Cholinesterase', '0', 'CH', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'Cholinesterase');
INSERT INTO `tbl_setup_lab` VALUES ('UR014', 'Toluene', '', 'Toluene', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Toluene');
INSERT INTO `tbl_setup_lab` VALUES ('UR002', 'Amphetamine', '', 'AMP', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'AMP');
INSERT INTO `tbl_setup_lab` VALUES ('HT002', 'Cadmium(EDTA)', '', 'Cadmium(EDTA)', '0', 'HT', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'Cadmium');
INSERT INTO `tbl_setup_lab` VALUES ('HT003', 'Chromium(EDTA)', '', 'Chromium(EDTA)', '0', 'HT', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'Chromium');
INSERT INTO `tbl_setup_lab` VALUES ('HT004', 'LEAD', '', 'LEAD', '0', 'HT', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'LEAD');
INSERT INTO `tbl_setup_lab` VALUES ('HT005', 'Nickel(EDTA)', '', 'Nickel(EDTA)', '0', 'HT', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'Nickel');
INSERT INTO `tbl_setup_lab` VALUES ('HT006', 'Tin', '', 'Tin', '0', 'HT', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Tin');
INSERT INTO `tbl_setup_lab` VALUES ('HT007', 'Cyanide', '', 'Cyanide', '0', 'HT', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Cyanide');
INSERT INTO `tbl_setup_lab` VALUES ('HT008', 'Methanol in EDTA', '', 'Methanol(EDTA)', '0', 'HT', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'Methanol');
INSERT INTO `tbl_setup_lab` VALUES ('HT009', 'Ammonia', '', 'Ammonia', '0', 'HT', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Ammonia');
INSERT INTO `tbl_setup_lab` VALUES ('HT010', 'Carboxyhemoglobin', '', 'Carboxyhemoglobin', '0', 'HT', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Carboxyhemoglobin');
INSERT INTO `tbl_setup_lab` VALUES ('HT011', 'Methylene Chloride', '', 'Methylene Chloride', '0', 'HT', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Methylene Chloride');
INSERT INTO `tbl_setup_lab` VALUES ('HT012', 'Cobalt', '', 'Cobalt', '0', 'HT', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Cobalt');
INSERT INTO `tbl_setup_lab` VALUES ('UR003', 'Arsenic', '', 'Arsenic', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Arsenic');
INSERT INTO `tbl_setup_lab` VALUES ('UR004', 'Cadmium in Urine', '', 'Cadmium(Urine)', '0', 'UR', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'Cadmium');
INSERT INTO `tbl_setup_lab` VALUES ('UR005', 'Chromium(Urine)', '', 'Chromium(Urine)', '0', 'UR', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'Chromium');
INSERT INTO `tbl_setup_lab` VALUES ('UR006', 'Copper(Urine)', '', 'Copper(Urine)', '0', 'UR', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'Copper');
INSERT INTO `tbl_setup_lab` VALUES ('UR007', 'Nickel(Urine)', '', 'Nickel(Urine)', '0', 'UR', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'Nickel');
INSERT INTO `tbl_setup_lab` VALUES ('UR008', 'Mercury', '', 'Mercury', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Mercury');
INSERT INTO `tbl_setup_lab` VALUES ('UR009', 'Acetone', '', 'Acetone', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Acetone');
INSERT INTO `tbl_setup_lab` VALUES ('UR010', 'Benzene', '', 'Benzene', '0', 'UR', '1', '0', '0:00:00#0:00:00', '0', '0', '-', '0', 'Benzene');
INSERT INTO `tbl_setup_lab` VALUES ('UR011', 'Cyclohexane', '', 'Cyclohexane', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Cyclohexane');
INSERT INTO `tbl_setup_lab` VALUES ('UR012', 'Ethyl Benzene', '', 'Ethyl Benzene', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Ethyl Benzene');
INSERT INTO `tbl_setup_lab` VALUES ('UR013', 'Fluoride', '', 'Fluoride', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Fluoride');
INSERT INTO `tbl_setup_lab` VALUES ('UR015', 'IPA', '', 'IPA', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'IPA');
INSERT INTO `tbl_setup_lab` VALUES ('UR016', 'Methyl Chloroform', '', 'Methyl Chloroform', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Methyl Chloroform');
INSERT INTO `tbl_setup_lab` VALUES ('UR017', 'MEK', '', 'MEK', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'MEK');
INSERT INTO `tbl_setup_lab` VALUES ('UR018', 'Methanol in Urine', '', 'Methanol(Urine)', '0', 'UR', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'Methanol');
INSERT INTO `tbl_setup_lab` VALUES ('UR019', 'n-Hexane', '', 'n-Hexane', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'n-Hexane');
INSERT INTO `tbl_setup_lab` VALUES ('UR020', 'Styrene', '', 'Styrene', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Styrene');
INSERT INTO `tbl_setup_lab` VALUES ('UR021', 'Xylene', '', 'Xylene', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Xylene');
INSERT INTO `tbl_setup_lab` VALUES ('UR022', 'Thinner', '', 'Thinner', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Thinner');
INSERT INTO `tbl_setup_lab` VALUES ('UR023', 'Phenol', '', 'Phenol', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Phenol');
INSERT INTO `tbl_setup_lab` VALUES ('UR024', 'Trichloroethylene', '', 'Trichloroethylene', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Trichloroethylene');
INSERT INTO `tbl_setup_lab` VALUES ('UR025', 'Formaldehyde', '', 'Formaldehyde', '0', 'UR', '1', '0', '0:00:00|0:00:00', '0', '0', '-', '1', 'Formaldehyde');
INSERT INTO `tbl_setup_lab` VALUES ('UR026', 'Cychohexanol', '', 'Cychohexanol', '0', 'UR', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'Cychohexanol');
INSERT INTO `tbl_setup_lab` VALUES ('UR027', 'MIBK', '', 'MIBK', '0', 'UR', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'MIBK');
INSERT INTO `tbl_setup_lab` VALUES ('UR028', 'TCA', '', 'TCA', '0', 'UR', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'TCA');
INSERT INTO `tbl_setup_lab` VALUES ('UR029', 'Trichloroethanol', '', 'Trichloroethanol', '0', 'UR', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', 'Trichloroethanol');
INSERT INTO `tbl_setup_lab` VALUES ('PE001', 'PE', '', 'PE', '0', 'PE', '1', '0', '0::#0::', '0', '0', '', '1', 'พบแพทย์');
INSERT INTO `tbl_setup_lab` VALUES ('CXR001', 'CXR', '', 'CXR', '0', 'CXR', '1', '0', '0:00:#0::', '0', '0', '', '1', 'เอกซเรย์');
INSERT INTO `tbl_setup_lab` VALUES ('CXD001', 'CXD', '', 'CXD', '0', 'CXD', '1', '0', '0:00:#0:00:00', '0', '0', '', '1', 'เอกซเรย์');
INSERT INTO `tbl_setup_lab` VALUES ('EKG001', 'EKG', '', 'EKG', '0', 'EKG', '1', '0', '0:00:00|0:00:00', '0', '0', '', '1', 'EKG');
INSERT INTO `tbl_setup_lab` VALUES ('OCV001', 'Occupation vision', '', 'Occvision', '0', 'OCV', '1', '0', '0:00:#0:00:00', '0', '0', '', '1', 'สายตาอาชีวะ');
INSERT INTO `tbl_setup_lab` VALUES ('SPI001', 'Spiro', '', 'Spiro', '0', 'SPI', '1', '0', '0:00:#0:00:00', '0', '0', '', '1', 'เป่าปอด');
INSERT INTO `tbl_setup_lab` VALUES ('AUD001', 'Audiogram', '', 'Audio', '0', 'AUD', '1', '0', '0:00:#0:00:00', '0', '0', '', '1', 'การได้ยิน');
INSERT INTO `tbl_setup_lab` VALUES ('HAS001', 'Hand and Arms Strength Muscle', '', 'HAS', '0', 'HAS', '1', '0', '0:00:#0:00:00', '0', '0', '', '1', 'กล้ามเนื้อแขน');
INSERT INTO `tbl_setup_lab` VALUES ('LBS001', 'Legs and Back Strength Muscle', '', 'LBS', '0', 'LBS', '1', '0', '0:00:#0:00:00', '0', '0', '', '1', 'กล้ามเนื้อขา');
INSERT INTO `tbl_setup_lab` VALUES ('STR001', 'Strain gauge', '', 'STR', '0', 'STR', '1', '0', '0::|0::', '0', '0', '', '1', 'วัดความเครียด');
INSERT INTO `tbl_setup_lab` VALUES ('AFB001', 'AFB Stain', '', 'AFB', '0', 'AFB', '1', '0', '0:00:00|0:00:00', '0', '0', '', '1', 'เสมหะ');
INSERT INTO `tbl_setup_lab` VALUES ('VIS001', 'Vision', '', 'Vision', '0', 'VIS', '1', '0', '0:00:#0:00:00', '0', '0', '', '1', 'สายตาทั่วไป');
INSERT INTO `tbl_setup_lab` VALUES ('REG001', 'Registration', '', 'REG', '0', 'REG', '1', '0', '0::|0::', '0', '0', '', '1', 'ลงทะเบียน');
INSERT INTO `tbl_setup_lab` VALUES ('INN001', 'U/S Whole Abdomen', '', 'USW', '0', 'INN', '1', '0', '0:00:#0::', '0', '0', '', '1', 'U/S Whole');
INSERT INTO `tbl_setup_lab` VALUES ('INN002', 'U/S Upper Abdomen', '', 'USU', '0', 'INN', '1', '0', '0:00:#0::', '0', '0', '', '1', 'U/S Upper');
INSERT INTO `tbl_setup_lab` VALUES ('INN003', 'U/S Lower Abdomen', '', 'USL', '0', 'INN', '1', '0', '0:00:#0::', '0', '0', '', '1', 'U/S Lower');
INSERT INTO `tbl_setup_lab` VALUES ('INN004', 'EST', '', 'EST', '0', 'INN', '1', '0', '0:00:#0:00:00', '0', '0', '', '1', 'EST');
INSERT INTO `tbl_setup_lab` VALUES ('INN005', 'Mammogram+U/S', '', 'MAM+US', '0', 'INN', '1', '0', '0:00:#0:00:00', '0', '0', '', '1', 'MAM+U/S');
INSERT INTO `tbl_setup_lab` VALUES ('INN006', 'PAP Smear', '', 'PAP', '0', 'INN', '1', '0', '0:00:#0:00:00', '0', '0', '', '1', 'PAP');
INSERT INTO `tbl_setup_lab` VALUES ('INN007', 'Liquid - Base', '', 'LIB', '0', 'INN', '1', '0', '0:00:#0:00:00', '0', '0', '', '1', 'Liquid');
INSERT INTO `tbl_setup_lab` VALUES ('PAU001', 'Pre Audiogram', '', 'PAU', '0', 'PAU', '1', '0', '0::#0:00:00', '0', '0', '', '1', 'ตรวจก่อนเข้างาน');
INSERT INTO `tbl_setup_lab` VALUES ('CH092', 'Lipid profile', '', 'LIPID', '0', 'CH', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', '-');
INSERT INTO `tbl_setup_lab` VALUES ('CH093', 'Liver Function Test', '', 'LFT', '0', 'CH', '1', '0', '0:00:#0:00:00', '0', '0', '-', '1', '-');
INSERT INTO `tbl_setup_lab` VALUES ('CH094', 'Electrolyte', '', 'Electrolyte', '0', 'CH', '1', '0', '0::#0:00:00', '0', '0', '', '1', '-');

-- ----------------------------
-- Table structure for `tbl_setup_lab_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_lab_copy`;
CREATE TABLE `tbl_setup_lab_copy` (
  `ID` varchar(100) NOT NULL DEFAULT '',
  `name` text,
  `IDHis` varchar(100) DEFAULT NULL,
  `NameCheckUp` varchar(100) DEFAULT NULL,
  `Price` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Lock1` varchar(4) DEFAULT NULL,
  `T_Lab` smallint(2) DEFAULT NULL,
  `TurnTime` varchar(100) DEFAULT NULL,
  `Fg` int(4) DEFAULT NULL,
  `Typebtn` smallint(2) DEFAULT NULL,
  `Medthod` varchar(500) DEFAULT '-',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of tbl_setup_lab_copy
-- ----------------------------
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB001', 'ABO BLOOD GROUP', '076', 'ABO', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB002', 'Rh BLOOD GROUP', '077', 'Rh', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB003', 'DIRECT COOMBS TEST', '079', 'DIRECT COOMBS TEST', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB004', 'INDIRECT COOMBS TEST', '080', 'INDIRECT COOMBS TEST', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB005', 'CROSSMATCHING', '', 'CROSSMATCHING', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB006', 'ANTIBODY SCREENING TEST', '', 'ANTIBODY SCREENING TEST', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB007', 'ANTIBODY IDENTIFICATION', '', 'ANTIBODY IDENTIFICATION', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB008', 'WHOLE BLOOD', '', 'WHOLE BLOOD', '0', 'BB', '1', '0', '0:0:0', '0', '1', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB009', 'PACKED RED CELL', '', 'PACKED RED CELL', '0', 'BB', '1', '0', '0:0:0', '0', '1', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB010', 'LEUKOCYTE POOR PACKED RED CELL', '', 'LEUKOCYTE POOR PACKED RED CELL', '0', 'BB', '1', '0', '0:0:0', '0', '1', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB011', 'LEUKODEPLETED PACKED RED CELL', '', 'LEUKODEPLETED PACKED RED CELL', '0', 'BB', '1', '0', '0:0:0', '0', '1', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB012', 'FRESH FROZEN PLASMA', '', 'FRESH FROZEN PLASMA', '0', 'BB', '1', '0', '0:0:0', '0', '1', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB013', 'CRYOREMOVED PLASMA', '', 'CRYOREMOVED PLASMA', '0', 'BB', '1', '0', '0:0:0', '0', '1', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB014', 'CRYOPRECIPITATE', '', 'CRYOPRECIPITATE', '0', 'BB', '1', '0', '0:0:0', '0', '1', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB015', 'PLATELET CONCENTRATES', '', 'PLATELET CONCENTRATES', '0', 'BB', '1', '0', '0:0:0', '0', '1', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB016', 'LEUKOCYTE POOR PLATELET', '', 'LEUKOCYTE POOR PLATELET', '0', 'BB', '1', '0', '0:0:0', '0', '1', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB017', 'LEUKODEPLETED WHOLE BLOOD', '', 'LEUKODEPLETED WHOLE BLOOD', '0', 'BB', '1', '0', '0:0:0', '0', '1', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB018', 'LEUKODEPLETED FRESH FROZEN PLASMA', '', 'LEUKODEPLETED FRESH FROZEN PLASMA', '0', 'BB', '1', '0', '0:0:0', '0', '1', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB019', 'SINGLE DONOR PLATELET CONCENTRATE', '', 'SINGLE DONOR PLATELET CONCENTRATE', '0', 'BB', '1', '0', '0:0:0', '0', '1', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB020', 'LEUKOCYTE DEPLETED SINGLE DONOR PLATELET CONCENTRA', '', 'LEUKOCYTE DEPLETED SINGLE DONOR PLATELET CONCENTRA', '0', 'BB', '1', '0', '0:0:0', '0', '1', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB021', 'SINGLE DONOR RED CELL(FILTRE)', '', 'SINGLE DONOR RED CELL(FILTRE)', '0', 'BB', '1', '0', '0:0:0', '0', '1', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB022', 'SINGLE DONOR RED CELL(NON-FILTRE)', '', 'SINGLE DONOR RED CELL(NON-FILTRE)', '0', 'BB', '1', '0', '0:0:0', '0', '1', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB023', 'SPECIAL CROSSMATCH', '', 'SPECIAL CROSSMATCH', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB024', 'CROSSMATCHING WHOLE BLOOD', '078', 'CROSSMATCHING WHOLE BLOOD', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB025', 'CROSSMATCHING PACKED RED CELL', '178', 'CROSSMATCHING PACKED RED CELL', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB026', 'CROSSMATCHING LEUKOCYTE POOR PACKED RED CELL', '178', 'CROSSMATCHING LEUKOCYTE POOR PACKED RED CELL', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB027', 'CROSSMATCHING LEUKODEPLETED PACKED RED CELL', '', 'CROSSMATCHING LEUKODEPLETED PACKED RED CELL', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB028', 'CROSSMATCHING FRESH FROZEN PLASMA', '', 'CROSSMATCHING FRESH FROZEN PLASMA', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB029', 'CROSSMATCHING CRYOREMOVED PLASMA', '', 'CROSSMATCHING CRYOREMOVED PLASMA', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB030', 'CROSSMATCHING CRYOPRECIPITATE', '', 'CROSSMATCHING CRYOPRECIPITATE', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB031', 'CROSSMATCHING PLATELET CONCENTRATES', '', 'CROSSMATCHING PLATELET CONCENTRATES', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB032', 'CROSSMATCHING LEUKOCYTE POOR PLATELET', '', 'CROSSMATCHING LEUKOCYTE POOR PLATELET', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB033', 'CROSSMATCHING LEUKODEPLETED WHOLE BLOOD', '', 'CROSSMATCHING LEUKODEPLETED WHOLE BLOOD', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB034', 'CROSSMATCHING LEUKODEPLETED FRESH FROZEN PLASMA', '', 'CROSSMATCHING LEUKODEPLETED FRESH FROZEN PLASMA', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB035', 'CROSSMATCHING SINGLE DONOR PLATELET CONCENTRATE', '', 'CROSSMATCHING SINGLE DONOR PLATELET CONCENTRATE', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB036', 'CROSSMATCHING LEUKOCYTE DEPLETED SINGLE DONOR PLAT', '', 'CROSSMATCHING LEUKOCYTE DEPLETED SINGLE DONOR PLAT', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB037', 'CROSSMATCHING SINGLE DONOR RED CELL(FILTRE)', '', 'CROSSMATCHING SINGLE DONOR RED CELL(FILTRE)', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('BB038', 'CROSSMATCHING SINGLE DONOR RED CELL(NON-FILTRE)', '', 'CROSSMATCHING SINGLE DONOR RED CELL(NON-FILTRE)', '0', 'BB', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH001', 'BLOOD SUGAR', '300', 'GLU', '0', 'CH', '1', '0', '0:00:40#0:00:00', '0', '0', 'Medthod\n               ทดสอบระบบ lis');
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH002', 'BUN', '301', 'BUN', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH003', 'CREATININE', '302', 'CRE', '0', 'CH', '1', '0', '0:00:40#0:00:00', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH004', 'URIC ACID', '303', 'URIC', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH005', 'TOTAL CHOLESTEROL', '304', 'CHO', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH006', 'TRIGLYCERIDE', '305', 'TRI', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH007', 'HDL-CHOLESTEROL', '306', 'HDL', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH008', 'LDL-CHOLESTEROL', '307', 'LDL', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH009', 'TOTAL PROTEIN', '309', 'TP', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH010', 'ALBUMIN', '310', 'ALB', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH011', 'GLOBULIN', '311', 'GLO', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH012', 'TOTAL BILIRUBIN', '312', 'TB', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH013', 'DIRECT BILIRUBIN', '313', 'DB', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH014', 'SGOT(AST)', '314', 'AST', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH015', 'SGPT(ALT)', '315', 'ALT', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH016', 'ALKALINE PHOSPHATASE', '316', 'ALK', '0', 'CH', '1', '0', '0:00:40#0:00:00', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH017', 'ELECTROLYTE', '320', 'ELECTROLYTE', '0', 'CH', '1', '0', '0:01:00#0:00:00', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH018', 'SODIUM(Na)', '321', 'Na', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH019', 'POTASSIUM(K)', '322', 'K', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH020', 'CHLORIDE(Cl)', '323', 'Cl', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH021', 'CO2', '324', 'CO2', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH022', 'GAMMA GT', '338', 'GAMMA GT', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH023', 'CALCIUM', '325', 'CA', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH024', 'PHOSPHORUS', '326', 'PHOS', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH025', 'MAGNESIUM', '340', 'MAGNESIUM', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH026', 'AMYLASE', '362', 'AMY', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH027', 'LIPASE', '342', 'LIPASE', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH028', 'TOTAL ACID PHOSPHATASE', '341', 'TOTAL ACID PHOSPHATASE', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH029', 'PROSTATIC ACID PHOSPHATASE', '343', 'PROSTATIC ACID PHOSPHATASE', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH030', 'LDH(TOTAL)', '327', 'LDH(TOTAL)', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH031', 'LDH ISOENZYME', '350', 'LDH ISOENZYME', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH032', 'CPK(TOTAL)', '328', 'CPK(TOTAL)', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH033', 'CPK ISOENZYME', '353', 'CPK ISOENZYME', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH034', 'CK-MB', '339', 'CK-MB', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH035', 'TROPONIN-I', '419', 'TROPONIN-I', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH036', 'TROPONIN_T', '568', 'TROPONIN-T', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH037', 'MICROBILIRUBIN', '034', 'MICROBILIRUBIN', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH038', 'GLUCOSE TOLERANCE TEST', '329', 'GLUCOSE TOLERANCE TEST', '0', 'CH', '1', '1', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH039', 'GLYCOLATED HbA1C', '349', 'GLYCOLATED HbA1C', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH040', 'SERUM IRON', '346', 'SERUM IRON', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH041', 'TIBC', '345', 'TIBC', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH042', 'TRANSFERRIN SATURATION', '', '', '', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH043', 'FRUCTOSAMINE', '', '', '', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH044', 'SUGAR IN CSF', '', 'SUGAR IN CSF', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH045', 'PROTEIN IN CSF', '', 'PROTEIN IN CSF', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH046', 'BLOOD GAS', '356', 'BLOOD GAS', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH070', 'DTX', '', 'DTX', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH071', '2hrs.Post prandia', '', '2hrs.Post prandia', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH072', 'GCT (50MG)', '', 'GCT (50MG)', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH073', 'Liver Function Test', '317', 'LFT', '0', 'CH', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH074', 'Lipid Profile', '', 'LP', '0', 'CH', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH075', 'Cardiac Profile', '', 'CP', '0', 'CH', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH076', 'URINE CREATININE  (24  ชม.)', '333', 'CREATININE IN URINE', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH077', 'URINE PROTEIN  (24 ชม.)', '332', 'URINE PROTEIN  (24 ชม.)', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH078', 'SODIUM IN URINE', '', '', '', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH079', 'POTASSIUM IN URINE', '', '', '', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH080', 'AMYLASE IN URINE', '363', 'AMYLASE IN URINE', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH081', 'URINE CREATININE CLEARANCE', '334', 'CREATININE CLEARANCE', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH082', 'MICROALBUMIN', '1122', 'MICROALBUMIN', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH083', 'Microalbumin[Urine 24 hrs]', '', '', '', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH084', 'CHLORIDE IN URINE', '', '', '', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH085', 'URIC ACID IN URINE', '', '', '', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH086', 'CALCIUM IN URINE', '364', 'CALCIUM IN URINE', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH087', 'Urea Nitrogen in Urine', '', '', '', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH088', 'PHOSPHORUS IN URINE', '', '', '', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH089', 'MAGNESIUM IN URINE', '357', 'MAGNESIUM IN URINE', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH090', 'SUGAR IN FLUID', '233', 'SUGAR IN FLUID', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH091', 'PROTEIN IN FLUID', '232', 'PROTEIN IN FLUID', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH092', 'LDH IN FLUID', '355', 'LDH IN FLUID', '0', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH093', 'AMYLASE IN FLUID', '', '', '', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH094', 'URIC ACID IN FLUID', '', '', '', 'CH', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH095', 'CHOLINESTERASE', '041', '', '0', 'CH', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH096', 'URINE (24 Hrs.) ELECTROLYTE (Na/K/Cl)', '336', '', '0', 'CH', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH097', 'Urine  Electrolyte  (Na/K/Cl)', '337', '', '0', 'CH', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH098', 'ALBUMIN IN BODY FLUID', '358', '', '0', 'CH', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH099', 'URINE Creatinine  (Spot)', '359', '', '0', 'CH', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH100', 'URINE PROTEIN  (Spot)', '360', '', '0', 'CH', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH101', 'Urine  Calcium  (24 hrs)', '361', '', '0', 'CH', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('CH102', 'VLDL - CHOLESTEROL', '308', '', '0', 'CH', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT001', 'Complete blood count(CBC)', '199', 'CBC', '0', 'HT', '1', '0', '0:0:20', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT002', 'WHITE BLOOD CELL COUNT (WBC)', '', 'WBC', '0', 'HT', '1', '0', '0:0:20', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT003', 'RED BLOOD CELL COUNT (RBC)', '', 'RBC', '0', 'HT', '1', '0', '0:0:20', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT004', 'HEMOGLOBIN', '101', 'HB', '0', 'HT', '1', '0', '0:0:20', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT005', 'HEMATOCRIT', '102', 'HCT', '0', 'HT', '1', '0', '0:0:20', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT006', 'PLT.COUNT', '103', '', '0', 'HT', '1', '0', '0:0:20', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT007', 'RETICULOCYTE COUNT', '104', 'RETICULOCYTE COUNT', '0', 'HT', '1', '0', '0:0:20', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT008', 'MALARIA', '105', 'MALARIA', '0', 'HT', '1', '1', '7:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT009', 'ESR', '106', 'ESR', '0', 'HT', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT010', 'G-6-P-D', '109', 'G-6-P-D', '0', 'HT', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT011', 'OSMOTIC FRAGILITY TEST', '1250', 'OSMOTIC FRAGILITY TEST', '0', 'HT', '1', '0', '0:0:20', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT012', 'INCULSION BODY', '117', 'INCULSION BODY', '0', 'HT', '1', '0', '0:0:30', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT013', 'LE CELL', '501', 'LE CELL', '0', 'HT', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT014', 'HEMOGLOBIN TYPING', '354', 'HEMOGLOBIN TYPING', '0', 'HT', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT015', 'TOURNIQUET TEST', '', 'TOURNIQUET TEST', '0', 'HT', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT016', 'BLEEDING TIME', '112', 'BLEEDING TIME', '0', 'HT', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT017', 'VENOUS CLOTTING TIME', '009', 'VENOUS CLOTTING TIME', '0', 'HT', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT018', 'CLOT RETRACTION', '113', 'CLOT RETRACTION', '0', 'HT', '1', '0', '0:0:30', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT019', 'PROTHROMBIN TIME', '114', 'PROTHROMBIN TIME', '0', 'HT', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT020', 'PARTIAL THROMBOPLASTIN TIME', '115', 'PARTIAL THROMBOPLASTIN TIME', '0', 'HT', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT021', 'THROMBIN TIME', '116', 'THROMBIN TIME', '0', 'HT', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT022', 'MCV', '', 'MCV', '0', 'HT', '1', '0', '0:0:20', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT023', 'MCH', '', 'MCH', '0', 'HT', '1', '0', '0:0:20', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT024', 'MCHC', '', 'MCHC', '0', 'HT', '1', '0', '0:0:20', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT025', 'Differential', '', 'Differential', '0', 'HT', '1', '0', '0:0:20', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT026', 'INR', '', 'INR', '0', 'HT', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT027', 'VDRL', '500', 'VDRL', '0', 'HT', '1', '0', '0:0:20', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT028', 'ABO  Group', '107', 'ABO  group', '0', 'HT', '1', '0', '0:0:20', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT029', 'RH Group', '108', 'RH TYPING', '0', 'HT', '1', '0', '0:0:20', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT030', 'RBC Morphology', '228', '', '0', 'HT', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT032', 'Hb F', '132', '', '0', 'HT', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT033', 'Hb E', '133', '', '0', 'HT', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('HT034', 'Hb A2', '134', '', '0', 'HT', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC001', 'AFB STAIN', '022', 'AFB STAIN', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC002', 'MODIFIED AFB STAIN', '', 'MODIFIED AFB STAIN', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC003', 'GRAMS STAIN', '024', 'GRAMS STAIN', '0', 'MC', '1', '1', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC004', 'WET SMEAR', '025', 'WET SMEAR', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC005', 'KOH PREPARATION', '026', 'KOH PREPARATION', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC006', 'BACTERIAL CULTURE OF SPUTUM', '', 'BACTERIAL CULTURE OF SPUTUM', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC007', 'BACTERIAL CULTURE OF PUS', '027', 'BACTERIAL CULTURE OF PUS', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC008', 'BACTERIAL CULTURE OF URINE', '088', 'BACTERIAL CULTURE OF URINE', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC009', 'BACTERIAL CULTURE OF STOOL', '128', 'BACTERIAL CULTURE OF STOOL', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC010', 'BACTERIAL CULTURE OF CSF', '090', 'BACTERIAL CULTURE OF CSF', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC011', 'BACTERIAL CULTURE OF', '', 'BACTERIAL CULTURE OF', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC012', 'ANAEROBE CULTURE', '', 'ANAEROBE CULTURE', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC013', 'HEMO CULTURE', '083', 'HEMO CULTURE', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC014', 'TB CULTURE OF', '084', 'TB CULTURE OF', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC015', 'FUNGUS CULTURE', '', 'FUNGUS CULTURE', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC016', 'CSF CELL COUNT', '094', 'CSF CELL COUNT', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC017', 'INDIAN INK PREPARETION', '', 'INDIAN INK PREPARETION', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC018', 'SEMEN ANALYSIS', '020', 'SEMEN ANALYSIS', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC019', 'FLUID ANALYSIS', '107', 'FLUID ANALYSIS', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC020', 'FERN TEST', '', 'FERN TEST', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC021', 'ZANK SMEAR', '140', 'ZANK SMEAR', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC022', 'WRIGHT STAIN', '', 'WRIGHT STAIN', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC023', 'BACTERIAL CULTURE OF FLUID', '091', 'BACTERIAL CULTURE OF FLUID', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('MC024', 'FLUID', '', '', '0', 'MC', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA001', 'Anus', '', 'Anus', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA002', 'Appendix', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA003', 'Amputation, Upper or Lower Extremities', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA004', 'Bone  Marrow', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA005', 'Bone, Biopsy or Excision', '082', 'Bone, Biopsy or Excision', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA006', 'Bone, Amputation', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA007', 'Brain, Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA008', 'Brain, Tumor', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA009', 'Breast  Biopsy, Unilateral [ 1 piece ]', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA010', 'Breast  Biopsy, Uniltateral [ >1 piece ]', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA011', 'Breast  Simple Mastectomy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA012', 'Breast  Mastectomy with Axillary  Content', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA013', 'Bronchial  Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA014', 'Cartilage', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA015', 'Cervix, Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA016', 'Cervix, Conization or Cone Biopsy or LEEP/LLEITZ', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA017', 'Colon, Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA018', 'Colon, Colectomy with Lymph node', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA019', 'Conceptive Product', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA020', 'Curettage', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA021', 'Curettage, Fractional [ Endocervix & Endometrium ]', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA022', 'Duodenum, Biopsy with Helicobactor pylori Stain', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA023', 'Endocervix', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA024', 'Endometrium', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA025', 'Esophagus, Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA026', 'Fallopian Tube, Salpingectomy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA027', 'Fallopian Tube, Bilateral, for TR', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA028', 'Fistula/Fistula in ano', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA029', 'Gallbladder', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA030', 'Gastric, Biopsy with Helicobactor pylori Stain', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA031', 'Gastric, Gastrectomy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA032', 'Gastric, Gastrectomy with Lymph node', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA033', 'Hemorrhoid', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA034', 'Hemorrhoid [>4 pieces ]', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA035', 'lleum , Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA036', 'lleum, Segmental Resection', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA037', 'Jejunum, Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA038', 'Jejunum, Segmental Resection', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA039', 'Kidney, Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA040', 'Kidney, Neprectomy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA041', 'Labium', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA042', 'Larynx, Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA043', 'Larynx  Laryngectomy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA044', 'Larynx Laryngectomy with Lymph node', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA045', 'Lid, Upper or Lower, Excision', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA046', 'Liver, Needle Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA047', 'Liver, Lobectomy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA048', 'Lung, Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA049', 'Lung, Lobectomy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA050', 'Lymph node, Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA051', 'Lymph node, Biopsy with Histochemistry Stains', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA052', 'Lymph node, Radical Neck Resection', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA053', 'Mandible', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA054', 'Meckels  diverticulum', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA055', 'Myoma, Myomectomy [ <5 cm. ]', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA056', 'Myoma, Myomectomy [ >5 cm. ]', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA057', 'Nasal  Polyp', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA058', 'Nasopharynx, Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA059', 'Omentum', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA060', 'Ovary, Cystectomy [ <5 cm. ]', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA061', 'Ovary, Cystectomy [ >5 cm. ]', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA062', 'Ovary, with Fallopian Tube [ One Adnexa ]', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA063', 'Parotid  Gland', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA064', 'Penis, Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA065', 'Penis, Amputation', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA066', 'Placenta', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA067', 'Pleural  Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA068', 'Pleural Biopsy with Histochemistry  Stains', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA069', 'Polyp', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA070', 'Prostatic Tissue, TURP (ตามปริมาณ)', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA071', 'Prostate Gland, Prostatectomy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA072', 'Rectum, Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA073', 'Rectum, A-P or Segmental Resection', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA074', 'Salivary Gland', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA075', 'Skin  Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA076', 'Skin Biopsy with Histochemistry Stains', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA077', 'Spleen', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA078', 'Stomach, Biopsy with Helicobactor pylori Stain', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA079', 'Stomach, Gastrectomy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA080', 'Synovial  Tissue', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA081', 'Testis, Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA082', 'Testis, Orchidectomy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA083', 'Testis, Orchidectomy with Lymph node', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA084', 'Thrombus', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA085', 'Thyroid Gland, Lobectomy, Unilateral [ <5 cm.]', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA086', 'Thyroid Gland, Lobectomy, Unilateral [ >5 cm.]', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA087', 'Thyroid Gland, Lobectomy, Bilateral [ <5 cm.]', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA088', 'Thyroid Gland, Lobectomy, Bilateral [ >5 cm.]', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA089', 'Thyroid Gland, Lobectomy, Bilateral with lsthmectomy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA090', 'Tonsil, Tonsillectomy, Unilateral', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA091', 'Tonsil, Tonsillectomy, Bilateral', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA092', 'Urinary Bladder', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA093', 'Uterus,Hysterectomy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA094', 'Uterus, Hysterectomy with One Adnexa', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA095', 'Uterus, Hysterectomy with Bilateral Adnexae', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA096', 'Uterus, Hysterectomy with Cervical Conization', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA097', 'Uterus, Hysterectomy with Separated Ovarian Tumor', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA098', 'Vas deferens, Bilateral', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA099', 'Wertheims Operation', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA100', 'Whipplew  Resection', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA101', 'Estrogen Receptor [ ER ]', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA102', 'Progesterone Receptor [ PgR ]', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA103', 'Ki - 67', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA104', 'p 53', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA105', 'C-erb-B2', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA106', 'Cytology', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA107', 'Cytology & Histochemistry Stains', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA108', 'Cytology & Pneumocystis Carinii Stain', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA109', 'Cytology & Cell  Block', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA110', 'Cytology by ThinPrep Processor', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA111', 'Pap Smear', '081', 'Pap Smear', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA112', 'Smear from Vaginal Lesion R/O Herpes simplex infection', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA114', 'Frozen Section / 1 specimen', '', 'Frozen Section / 1 specimen', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA115', 'Immunoperoxidase Stain', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA116', 'ThinPrep  Pap  Test', '', 'ThinPrep  Pap  Test', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA117', 'Tissue large', '', 'Tissue large', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA118', 'Tissue medium', '', 'Tissue medium', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA119', 'Tissue small', '', 'Tissue small', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA120', 'Extragenital Cytology', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA121', 'Fine Needle Aspiration [FNA]', '', 'FNA', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA122', 'Consultation,Biopsy', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA123', 'Consultation,Cytology', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PA124', 'Consultation,Pap Smear', '', '', '0', 'PA', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP001', 'BUN/CREATININE', '029', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP002', 'PROTIEN /ALBUMIN (SERUM)', '033', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP003', 'SGOT & SGPT (AST & ALT)', '162', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP004', 'SGOT & SGPT & ALKALINE PHOS.', '163', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP005', 'MCV, MCH, MCHC', '229', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP006', 'PT & PTT & TT', '167', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP007', 'HCT & ABO GROUPING', '205', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP008', 'HCT & MBB', '213', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP009', 'HCT & PLT.COUNT', '204', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP010', 'HCT & RBC MORPHOLOGY', '203', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP011', 'HCT & MBB & BLOOD GROUP', '202', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP012', 'Anti HAV Ig.M & Ig.G', '170', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP013', 'UA WITH PREG TEST', 'ing', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP014', 'UA WITH BILE', '136', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP015', 'UA WITH BILE AND PREG TEST', '137', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP016', 'PT & PTT', '085', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP017', 'CBC WITH MALARIA', '015', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP018', 'CBC  WITH PLT.COUNT', '014', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP019', 'T3 & T4', '161', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP020', 'BILIRUBIN (TOTAL & DIRECT)', '200', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP021', 'T4 & T3', '201', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PP022', 'T3, T4, TSH', '221', '', '0', 'PP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PPCK001', 'โปรแกรม 1', '', '', '0', 'PPCK', '', '0', '0:0:0', '1', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PPCK002', 'โปรแกรม 2', '', '', '0', 'PPCK', '', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PPCK003', 'โปรแกรม 3 ชาย', '', '', '0', 'PPCK', '', '0', '0:0:0', '1', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PPCK004', 'โปรแกรม 3 หญิง', '', '', '0', 'PPCK', '', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PPCK005', 'ตรวจประจำปี', '', '', '0', 'PPCK', '', '0', '0:0:0', '1', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PPCK006', 'ตรวจประจำปี อายุ 45', '', '', '0', 'PPCK', '', '0', '0:0:0', '1', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PPCK007', 'Grand opening for women', '', '', '0', 'PPCK', '', '0', '0:0:0', '1', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('PPCK008', 'Grand opening for men', '', '', '0', 'PPCK', '', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP001', '17 OHP [17-Hydroxyprogesterone]', '1127', '17 OHP [17-Hydroxyprogesterone]', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP002', '17-KS', '1092', '17-KS', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP003', '17-OHCS', '1126', '17-OHCS', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP004', '5-HIAA', '1067', '5-HIAA', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP005', 'Acantamoeba in stool', '', 'Acantamoeba in stool', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP006', 'Acantamoeba culture', '', 'Acantamoeba culture', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP007', 'Acetone', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP008', 'Acetyl cholinesterase', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP009', 'Acetylcholine receptor antibody', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP010', 'Acid Elusion (Fetal Hb)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP011', 'Acid Phosphatase (Sperm)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP012', 'ACTH', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP013', 'Activated  Protein  C  Resistance(APCR)', '', 'Activated  Protein  C  Resistance(APCR)', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP014', 'Adeno Virus in  Serum ', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP015', 'Adenosine deaminase (ADA)  in  Pleura  fluid', '', 'Adenosine deaminase (ADA)  in  Pleura  fluid', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP016', 'ALA (Urine)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP017', 'ALA-D (Blood)  in  Fresh  EDTA  blood', '', 'ALA-D (Blood)  in  Fresh  EDTA  blood', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP018', 'Alcohol (Ethyl)', '196', 'Alcohol (Ethyl)', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP019', 'Aldolase', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP020', 'Aldosterone  in  Urine', '', 'Aldosterone  in  Urine', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP021', 'Alkaptonuria', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP022', 'Allergy Screening', '', 'Allergy Screening', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP023', 'Alpha-1 antitrypsin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP024', 'Aluminium', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP025', 'AMA', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP026', 'Amikacin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP027', 'Aminophylline (Theophylline)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP028', 'Amitryptyline (Common Drug Screen)  in  Urine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP029', 'Ammonia', '195', 'Ammonia', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP030', 'Amphetamine Confirm', '', 'Amphetamine Confirm', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP031', 'ANA [ ANF, FANA ]', '533', 'ANA [ ANF, FANA ]', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP032', 'ANCA (Anti Neutrophile Cytoplasmic Ab)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP033', 'Anti D (Rh titer)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP034', 'Angiostrongilus  in  Serum', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP035', 'Angiotensin converting Enzyme  in  CSF', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP036', 'ANT-ENA [Anti-SM]', '535', 'ANT-ENA [Anti-SM]', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP037', 'ANTI - ds  DNA', '534', 'ANTI - ds  DNA', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP038', 'Anti Basement Membrane IgA', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP039', 'Anti Basement Membrane IgG', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP040', 'Anti Basement Membrane IgM', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP041', 'Anti Cardiolipin (Anti Phospholipid)', '582', 'Anti Cardiolipin (Anti Phospholipid)', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP042', 'Anti Centromia', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP043', 'Anti D Nase-B', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP044', 'ANTI EBV [VCA] lgG(Epstein-Barr virus)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP045', 'ANTI EBV [VCA] lgM(Epstein-Barr virus)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP046', 'Anti Histamine  in  Clot  blood', '', 'Anti Histamine  in  Clot  blood', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP047', 'Anti HTLV1', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP048', 'Anti La (Anti-SSB)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP049', 'Anti Ro (Anti-SSA)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP050', 'Anti SCL-70', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP051', 'Anti Thrombin III', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP052', 'Anti-GBM (glomerula basement membrane)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP053', 'Anti-TPO', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP054', 'Apolipoprotein A1', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP055', 'Apolipoprotein B', '585', 'Apolipoprotein B', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP056', 'Arsenic  (Screening) ', '', 'Arsenic  (Screening)', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP057', 'Arsenic  in  Urine  24  hrs.', '', 'Arsenic  n  Urine  24  hrs.', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP058', 'ASMA', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP059', 'Aspergillus Antibody', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP060', 'Aspergillus Antigen', '586', 'Aspergillus Antigen', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP061', 'Barbiturate (Screening)  in  Gastric  content', '587', 'Barbiturate (Screening)  in  Gastric  content', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP062', 'Barrium  in  Cloltted  blood', '', 'Barrium  in  Clotted  blood', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP063', 'Benadryl', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP064', 'Bence - Jones  Protein', '017', 'Bence - Jones  Protein', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP065', 'Benzene [ Phenol ]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP066', 'Benzodiazepine  in  Gastric  content', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP067', 'Bromide', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP068', 'Brucella Ab', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP069', 'C. Difficile Toxin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP070', 'Cadmium [Cd]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP071', 'Caffein', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP072', 'Calcitonin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP073', 'Calcium Pyrophosphate', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP074', 'Campylobacter jejuni', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP075', 'Carbamate', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP076', 'Carbamazepine (Tegretal)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP077', 'Carboxy Hb', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP078', 'Carotene [Vitamin A]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP079', 'Catecholamine [ Total Volume ]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP080', 'Ceruloplasmin', '', 'Ceruloplasmin', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP081', 'Chikungunya Ab.', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP082', 'Chlamydia pneumoniae lgA', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP083', 'Chlamydia pneumoniae lgG', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP084', 'Chlamydia pneumoniae lgM', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP085', 'Chlamydia psittaci lgA', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP086', 'Chlamydia psittaci lgG', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP087', 'Chlamydia psittaci lgM', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP088', 'Chlamydia trachomatis culture', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP089', 'Chlamydia trachomatis lgA', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP090', 'Chlamydia trachomatis lgG', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP091', 'Chlamydia trachomatis lgM', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP092', 'Chlordiazepoxide [Librium]', '593', 'Chlordiazepoxide [Librium]', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP093', 'Cholinesterase', '041', 'Cholinesterase', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP094', 'Cholinesterase [Erythrocyte]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP095', 'Chromium  in  EDTA  blood', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP096', 'Chromosome [Amniotic fluid)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP097', 'Chromosome [Heparinized Blood]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP098', 'CMV C/S', '', 'CMV C/S', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP099', 'CMV lgG', '550', 'CMV lgG', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP100', 'CMV lgM', '551', 'CMV lgM', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP101', 'Cocaine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP102', 'Copper  in  Heparinzed  plasma', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP103', 'Corproporphyrin [CP3]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP104', 'Coxsackie Virus', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP105', 'C-Peptide', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP106', 'Cryoglobulin', '1010', 'Cryoglobulin', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP107', 'Cryptosporidium', '1011', 'Cryptosporidium', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP108', 'Cyanide  in  EDTA', '1012', 'Cyanide  in  EDTA', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP109', 'Cyclosporin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP110', 'Cysticercosis  Ab', '1015', 'Cysticercosis  Ab', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP111', 'Cytomegalovirus lgG', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP112', 'Cytomegalovirus lgM', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP113', 'DCIP', '122', 'DCIP', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP114', 'D-dimer', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP115', 'DENGUE (Rapid test)', '569', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP116', 'Dengue  lgM  [ELISA]', '', 'Dengue  lgM  [ELISA]', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP117', 'Depakine Level (Valproic Acid)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP118', 'DHEAS', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP119', 'Diazepam', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP120', 'Digoxin (Digitalis)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP121', 'DNA Typing for alpha-Thalassemia', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP122', 'Dormicum (Midazolam)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP123', 'Downs Syndrome [1st Trimester Screening]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP124', 'E Coli 0157', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP125', 'Echovirus [พร้อมประวัติ]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP126', 'E-HIST Ab', '530', 'E-HIST Ab', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP127', 'Eosinophil Count', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP128', 'Epinephrin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP129', 'Erytropoietin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP130', 'Euglobulin Lysis Time', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP131', 'Factor 13', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP132', 'Factor 5 Leiden', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP133', 'Factor 8 C [Coagulant Activity]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP134', 'Factor 9', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP135', 'Factor ll', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP136', 'FDP [Fibrin Degradation Product]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP137', 'Ferritin', '559', 'Ferritin', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP138', 'Fibrinogen Level', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP139', 'Filaria [Blood]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP140', 'Filaria Ab', '545', 'Filaria Ab', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP141', 'FISH for BCR/ABL  in  Heparized  blood', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP142', 'FISH for T [15,17]  in  Bone  marrow', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP143', 'FISH for Williams syndrome', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP144', 'FK 506 (Tracholimus)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP145', 'Flow cytometry', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP146', 'Fluoride [Urine]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP147', 'Fluoride [Water]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP148', 'Folate in RBC', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP149', 'Folate in Serum', '', 'Folate in Serum', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP150', 'Formaldehyde', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP151', 'Fragile-X', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP152', 'Free testosterone ', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP153', 'FT4 Index', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP154', 'FTA-ABS IgG', '546', 'FTA-ABS IgG', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP155', 'FTA-ABS IgM', '547', 'FTA-ABS IgM', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP156', 'Gammaglobulin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP157', 'Gastrin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP158', 'Gentamicin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP159', 'Gnathostoma Ab  in  Serum', '', 'Gnathostoma Ab  in  Serum', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP160', 'Gramoxone [Paraquat]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP161', 'H.influenzae  Ag', '', 'H.influenzae  Ag', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP162', 'Haptoglobin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP163', 'HBV  Viral  load  [b - DNA]', '', 'HBV  Viral  load  [b - DNA]', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP164', 'HCV  Viral  load  [b - DNA]', '', 'HCV  Viral  load  [b - DNA]', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP165', 'HCV  Genotype', '', 'HCV  Genotype', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP166', 'HCV  PCR  [Qualitative]', '', 'HCV  PCR  [Qualitative]', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP167', 'Heinz body', '422', 'Heinz body', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP168', 'Helicobacter pylori C/S', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP169', 'Helicobacter pylori lgG', '548', 'Helicobacter pylori lgG', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP170', 'Helicobacter pylori lgM', '549', 'Helicobacter pylori lgM', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP171', 'Hemosiderin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP172', 'Heroin (Morphine, Opiate)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP173', 'Heterophil Ab', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP174', 'Hippuric Acid', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP175', 'Histoplasmosis Ab', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP176', 'HIV  1-DNA  [Qualitative]', '', 'HIV  1-DNA  [Qualitative]', '0', 'SP', '0', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP177', 'HIV  Viral  load  [b - DNA]', '', 'HIV  Viral  load  [b - DNA]', '0', 'SP', '0', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP178', 'HLA  Antibody [PRA]', '', 'HLA  Antibody [PRA]', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP179', 'HLA  B 27', '', 'HLA  B 27', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP180', 'HLA-AB Typing', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP181', 'Homocysteine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP182', 'HSV C/S', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP183', 'HSV I & II  lgG (Herpes Simplex)', '554', 'HSV I & II  lgG (Herpes Simplex)', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP184', 'HSV I & II  lgM (Herpes Simplex)', '555', 'HSV I & II  lgM (Herpes Simplex)', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP185', 'Immuno Electrophoresis', '', 'Immuno Electrophoresis', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP186', 'Immunoglobulin  level', '', 'Immunoglobulin  level', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP187', 'Immunoglobulin  lgE', '', 'Immunoglobulin  lgE', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP188', 'Immunoglobulin lgA level', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP189', 'Immunoglobulin lgG level', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP190', 'Immunoglobulin lgG subclass', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP191', 'Immunoglobulin lgM level', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP192', 'Immunoglobulin Specific IgE[ ระบุ....]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP193', 'Influenza  Ab', '415', 'Influenza  Ab', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP194', 'Isoniazid [INH]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP195', 'Isopropanol  in  NaF  plasma', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP196', 'Japanese B Ab [lgG]  in  Serum', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP197', 'Japanese B Ab [lgM]  in  CSF', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP198', 'JE lgG', '599', 'JE lgG', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP199', 'Lactate', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP200', 'Lead in Clot blood', '', 'Lead in Clot blood', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP201', 'Lead in EDTA blood', '', 'Lead in EDTA blood', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP202', 'Lead in Hair', '', 'Lead in Hair', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP203', 'Lead in Urine', '', 'Lead in Urine', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP204', 'Legionella Ab [lgG]', '591', 'Legionella Ab [lgG]', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP205', 'Legionella Ab [lgM]', '592', 'Legionella Ab [lgM]', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP206', 'Legionella Ag', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP207', 'Leptospira  C/S', '', 'Leptospira  C/S', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP208', 'Leptospira  Ab  lgG', '566', 'Leptospira  Ab  lgG', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP209', 'Leptospira  Ab  lgM', '567', 'Leptospira  Ab  lgM', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP210', 'Leukocyte alkaline phosphatase stain', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP211', 'Lipoprotein(a)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP212', 'Lipoprotein  Electrophoresis', '351', 'Lipoprotein  Electrophoresis', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP213', 'Lithium', '344', 'Lithium', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP214', 'Iron', '', 'Iron', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP215', 'Lupus Anticoagulant', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP216', 'Lymphocyte marker [flow cytometry]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP217', 'Mandelic Acid [Stylene]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP218', 'Manganese [Mn]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP219', 'Marijuana', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP220', 'Measle  lgG', '561', 'Measle  lgG', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP221', 'Measle  lgM', '562', 'Measle  lgM', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP222', 'Melioidosis  Ab', '527', 'Melioidosis  Ab', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP223', 'Mercury  in  EDTA  blood', '', 'Mercury  in  EDTA  blood', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP224', 'Metabolic screen', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP225', 'Metanephrine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP226', 'Methadone  in  Clot  blood', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP227', 'Methanol  in  NaF', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP228', 'Methemoglobin Level', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP229', 'Methyl Bromide', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP230', 'Methyle  Ethyl  Ketone', '', 'Methyle  Ethyl  Ketone', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP231', 'Metrotrexate (MTX)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP232', 'Microsomal  Ab', '542', 'Microsomal  Ab', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP233', 'Monospot', '529', 'Monospot', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP234', 'Mump  lgG', '563', 'Mump  lgG', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP235', 'Mump  lgM', '564', 'Mump  lgM', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP236', 'Murin typhus', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP237', 'Mycobacteriums DNA [Qualitative]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP238', 'Mycoplasma  lgG', '578', 'Mycoplasma  lgG', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP239', 'Mycoplasma  lgM', '579', 'Mycoplasma  lgM', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP240', 'Myoglobin', '1120', 'Myoglobin', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP241', 'N.meningitidis  Ag', '', 'N.meningitidis  Ag', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP242', 'Nikle', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP243', 'NK cells', '1129', 'NK cells', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP244', 'Norepinephrine', '1124', 'Norepinephrine', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP245', 'Normetanephrine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP246', 'NT - ProBNP', '416', 'NT - ProBNP', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP247', 'Oligoclonal band', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP248', 'Opiate (Morphine, Heroin)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP249', 'Organophosphate', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP251', 'Paracetamol in Blood (Acetaminophen)', '', 'Paracetamol in Blood (Acetaminophen)', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP252', 'Paracetamol in Gastric (Acetaminophen)', '', 'Paracetamol in Gastric (Acetaminophen)', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP253', 'Paragonimus  Ab.', '', 'Paragonimus  Ab.', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP254', 'Paraquat [Gramoxone]  in  Urine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP255', 'Parathione', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP256', 'PCR for Chlamydia pneumoniae', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP257', 'PCR for Chlamydia trachomatis', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP258', 'PCR for CMV [Qualitative]  in  CSF', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP259', 'PCR for Dengue [Qualitative]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP260', 'PCR for EBV [Qualitative]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP261', 'PCR for HBV [Qualitative]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP262', 'PCR for HSV [Qualitative]  in  EDTA  blood', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP263', 'PCR for VZV [Qualitative]  in  CSF', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP264', 'Pemphigus Ab', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP265', 'Pesticide Screening', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP266', 'Phenobarbital', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP267', 'Phenothiazine (Screening)', '594', 'Phenothiazine (Screening)', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP268', 'Phenylketouria', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP269', 'Phenytoin (Dilantin)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP270', 'Piroxicam (Feldene)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP271', 'PKU', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP272', 'Plasma amino acid', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP273', 'Platelet Aggregation', '421', 'Platelet Aggregation', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP274', 'Pneumocystic carinii', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP275', 'Porphobilinogen', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP276', 'Porphyrin [FEP,Zpp]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP277', 'Protein C', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP278', 'Protein  Electrophoresis', '352', 'Protein  Electrophoresis', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP279', 'Protein S', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP280', 'Prothrombin gene 20210', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP281', 'Pyrazenamide', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP282', 'Quinidine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP283', 'Quinine Level', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP284', 'Rabies Ab', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP285', 'Rabies Ag  in  Urine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP286', 'Renin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP287', 'Riboflavin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP288', 'Rickettsia  Ab', '', 'Rickettsia  Ab', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP289', 'Rifampicin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP290', 'Ristocetin Cofactor', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP291', 'Rivotil', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP292', 'Rota Virus', '570', 'Rota Virus', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP293', 'RSV [Respiratory Virus] culture/FA TEST', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP294', 'Rubella  lgG', '519', 'Rubella  lgG', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP295', 'Rubella  lgM', '521', 'Rubella  lgM', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP296', 'S.pneumoniae  Ag', '', 'S.pneumoniae  Ag', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP297', 'Salicylate', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP298', 'Schistosomal  Ab.', '', 'Schistosomal  Ab.', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP299', 'Screen Common Drugs  in  Urine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP300', 'Scrub Typhus', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP301', 'Serum Inhibition', '', 'Serum Inhibition', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP302', 'Sex Hormone Binding Globulin [SHBG]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP303', 'Silver', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP304', 'Squamous Cell CA  Ag [SCC Ag]', '', 'Squamous Cell CA  Ag [SCC Ag]', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP305', 'Steroid [Qualitative]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP306', 'Stone Analysis', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP307', 'Streptococcus B Ag', '', 'Streptococcus B Ag', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP308', 'TB  PCR', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP309', 'Thallium', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP310', 'Theophylline (Aminophylline)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP311', 'Thiamine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP312', 'Thinner [Toluene]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP313', 'Thiocyanate', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP314', 'Thyroglobulin  Ab', '543', 'Thyroglobulin  Ab', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP315', 'Thyroglobulin level', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP316', 'Thyroid Stimulating lmmunoglobulin [TSI]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP317', 'Thyroxine binding globulin [TBG]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP318', 'TIN [Sn]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP322', 'Tobramycin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP323', 'Toxocara Ab.', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP324', 'Toxoplasma  lgG', '540', 'Toxoplasma  lgG', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP325', 'Toxoplasma  lgM', '541', 'Toxoplasma  lgM', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP326', 'TPS [Tissue polopeptide specific Ag]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP327', 'Trichinosis Ab', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP328', 'Trichloro-compounds [TCA]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP329', 'Triple Screening', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP330', 'Tricyclic drug  in  Urine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP331', 'Tryptanol', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP332', 'UIBC', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP333', 'Unconjugated estriol [E3]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP334', 'Urea Plasma Culture', '', 'Urea Plasma Culture', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP335', 'Uric Crystal', '', 'Uric Crystal', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP336', 'Urine Organic Acid', '', 'Urine Organic Acid', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP337', 'Uroporphyrin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP338', 'Valium', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP339', 'Vancomycin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP340', 'Vericella Zoster Virus lgG', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP341', 'Vericella Zoster Virus lgM', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP342', 'VIP [Vasoactive intestinal polypeptide]', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP343', 'Vitamin A', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP344', 'Vitamin B1', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP345', 'Vitamin B12', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP346', 'Vitamin B2', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP347', 'Vitamin B6', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP348', 'VMA ', '335', 'VMA', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP349', 'Von willebrand factor', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP350', 'Xylene', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP351', 'Zinc', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP352', 'Zincphosphide', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP353', 'Beta-2 Microglobulin', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP355', 'Acantamoeba in fluid', '', 'Acantamoeba in fluid', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP356', 'Adeno Virus in  CSF', '', 'Adeno Virus in  CSF', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP357', 'Adenosine deaminase (ADA)  in  CSF', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP358', 'Adenosine deaminase (ADA)  in  Serum', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP359', 'ALA-D (Blood)  in  Fresh  NaF', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP360', 'Aldosterone  in  Serum', '', 'Aldosterone  in  Serum', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP361', 'Aldosterone  in  Heparinized  blood', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP362', 'Amitryptyline (Common Drug Screen)  in  Clot  bloo', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP363', 'Angiostrongilus  in  CSF', '', 'Angiostrongilus  in  CSF', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP364', 'Angiotensin converting Enzyme  in  Serum', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP365', 'Anti Histamine  in  Gastric content', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP366', 'Arsenic  (Screening) in  Gastrict  content', '', 'Arsenic  (Screening) in  Gastrict  content', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP367', 'Arsenic  in  EDTA  blood', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP368', 'Arsenic  in  Hair', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP369', 'Arsenic  in  Nail', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP370', 'Barbiturate (Screening)  in  Urine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP371', 'Barrium  in  EDTA  blood', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP372', 'Benzodiazepine  in  Urine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP373', 'Chromium  in  Urine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP374', 'Chromium  in  Hair', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP375', 'Copper  in  Urine  24  hrs.', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP376', 'Copper  in  Serum', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP377', 'Cyanide  in  Gastric  content', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP378', 'Cyanide  in  Random  Urine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP379', 'Cysticercosis  in  Serum', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP380', 'FISH for BCR/ABL  in  Bone  marrow', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP381', 'FISH for T [15,17]  in  Heparized  blood', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP382', 'Gnathostoma Ab  in  CSF', '', 'Gnathostoma Ab  in  CSF', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP383', 'Isopropanol  in  Urine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP384', 'Japanese B Ab [lgG]  in  CSF', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP385', 'Japanese B Ab [lgM]  in  Serum', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP386', 'Mercury  in  Heparinized  blood', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP387', 'Mercury  in  Random  Urine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP388', 'Methadone  in  Gastric  content', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP389', 'Methadone  in  Urine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP390', 'Methanol  in  Urine', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP391', 'Paraquat [Gramoxone]  in  Gastric  content', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP392', 'Paraquat [Gramoxone]  in  EDTA  blood', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP393', 'PCR for CMV [Qualitative]  in  EDTA blood', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP394', 'PCR for HSV [Qualitative]  in  CSF', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP395', 'PCR for VZV [Qualitative]  in  EDTA  blood', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP396', 'Rabies Ag (ผิวหนังบริเวณท้ายทอย)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP397', 'Rabies Ag (น้ำลาย)', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP398', 'Screen Common Drugs  in  Gastric  content', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP399', 'Screen Common Drugs  in  Clot  blood', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP400', 'Tricyclic drug  in  Clot  blood', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP401', 'Tricyclic drug  in  Gastric  contet', '', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP402', 'ANTI - nRNP', '536', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP403', 'ANA  PROFILE', '537', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP404', 'Epstein Bar virus (VCA)  IgG', '552', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP405', 'Epstein Bar virus (VCA)  IgM', '553', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP406', 'Scrub  Typhus  Ig M', '575', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP407', 'Scrub  Typhus  Ig M (Pair  serum)', '576', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP408', 'ampyylobacter  jajini', '590', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP409', 'Microfilaria', '119', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SP410', 'NETILMICIN', '1123', '', '0', 'SP', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR001', 'VDRL  in  Serum', '061', 'VDRL  in  Serum', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR002', 'TPHA', '539', 'TPHA', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR003', 'WIDAL TEST', '504', 'WIDAL TEST', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR004', 'WEIL FELIX', '503', 'WEIL FELIX', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR005', 'RHEUMATOID FACTOR', '502', 'RHEUMATOID FACTOR', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR006', 'ASO(ANTI STREPTOLYSIN O)', '528', 'ASO(ANTI STREPTOLYSIN O)', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR007', 'COLD AGGLUTININ', '526', 'COLD AGGLUTININ', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR008', 'CH50', '1023', 'CH50', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR009', 'CRYPTOCOCCUS Ag', '510', 'CRYPTOCOCCUS Ag', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR010', 'ANTI HIV', '505', 'ANTI HIV', '0', 'SR', '0', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR011', 'ANTI HIV stat', '506', 'ANTI HIV stat', '0', 'SR', '0', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR012', 'HIV Ag', '517', 'HIV Ag', '0', 'SR', '0', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR013', 'WESTERN BLOT', '518', 'WESTERN BLOT', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR014', 'CD4', '1019', 'CD4', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR015', 'CD8', '1020', 'CD8', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR016', 'CD4/CD8', '1018', 'CD4/CD8', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR017', 'HBsAg', '507', 'HBsAg', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR018', 'ANTI HBs', '508', 'ANTI HBs', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR019', 'ANTI HBc(Total)', '513', 'ANTI HBc(Total)', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR020', 'ANTI HBc IgM', '514', 'ANTI HBc IgM', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR021', 'HBe Ag', '511', 'HBe Ag', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR022', 'ANTI HBe', '512', 'ANTI HBe', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR023', 'Anti HAV Ig.G', '515', 'Anti HAV Ig.G', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR024', 'ANTI HAV IgM', '516', 'ANTI HAV IgM', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR025', 'ANTI HCV(TOTAL)', '538', 'ANTI HCV(TOTAL)', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR026', 'HDV Ab', '', 'HDV Ab', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR027', 'C3 COMPLEMENT(Beta1C)', '544', 'C3 COMPLEMENT(Beta1C)', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR028', 'C4 COMPLEMENT', '', 'C4 COMPLEMENT', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR029', 'C - REACTIVE PROTEIN [ CRP ]', '226', 'C - REACTIVE PROTEIN [ CRP ]', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR030', 'TRANSFERRIN', '', 'TRANSFERRIN', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR031', 'BETA  HCG', '405', 'BETA  HCG', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR032', 'CORTISOL HORMONE', '406', 'CORTISOL HORMONE', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR033', 'ESTRADIOL(E2)', '407', 'ESTRADIOL(E2)', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR034', 'Estriol [E3]', '1035', 'Estriol [E3]', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR035', 'FSH', '408', 'FSH', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR036', 'LH', '411', 'LH', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR037', 'PROGESTERONE', '412', 'PROGESTERONE', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR038', 'PROLACTIN', '414', 'PROLACTIN', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR039', 'TESTOSTERONE', '413', 'TESTOSTERONE', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR040', 'T3', '400', 'T3', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR041', 'FREE T3', '404', 'FREE T3', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR042', 'T4', '401', 'T4', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR043', 'FREE T4', '402', 'FREE T4', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR044', 'TSH', '403', 'TSH', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR045', 'PARATHYROID', '', 'PARATHYROID', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR046', 'INSULIN', '410', 'INSULIN', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR047', 'GROWTH  HORMONE', '409', 'GROWTH  HORMONE', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR048', 'AFP', '531', 'AFP', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR049', 'CEA', '532', 'CEA', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR050', 'PSA(Prostatic Specific Ag)', '560', 'PSA', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR051', 'CA 12-5', '557', 'CA 12-5', '0', 'SR', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR052', 'CA 15-3', '556', 'CA 15-3', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR053', 'CA 19-9', '558', 'CA 19-9', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR054', 'FREE PSA / TOTAL PSA RATIO', '', 'FREE PSA / TOTAL PSA RATIO', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR055', 'OSMOLALITY [SERUM]', '347', 'OSMOLALITY [SERUM]', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR056', 'OSMOLALITY [URINE]', '348', 'OSMOLALITY [URINE]', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR057', 'VDRL  in  CSF ', '', 'VDRL  in  CSF', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR058', 'AMPHETAMINE (Thepniramit)', '498', '', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR059', 'AMPHETAMINE (THAIYANYOL)', '499', '', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR060', 'CRYPTOCOCCUS  Ag  with  Titer', '571', '', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR061', 'การตรวจคัดกรองสุขภาพทารกแรกเกิด', '572', '', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR062', 'การตรวจยืนยันผลการตรวจคัดกรองทารกแรกเกิด', '573', '', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('SR063', 'การส่งตรวจวินิจฉัยไข้หวัดนก', '574', '', '0', 'SR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('ST001', 'STOOL EXAMINATION', '220', 'STOOL EXAMINATION', '0', 'ST', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('ST002', 'STOOL OCCULT BLOOD', '221', 'STOOL OCCULT BLOOD', '0', 'ST', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('ST003', 'STOOL CONCENTRATION', '', 'STOOL CONCENTRATION', '0', 'ST', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('ST004', 'IMG Test', '-', 'IMG', '', 'ST', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR001', 'URINALYSIS', '200', 'URINALYSIS', '0', 'UR', '1', '0', '0:0:30', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR002', 'Sp.Gr.', '201', 'Sp.Gr.', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR003', 'pH', '202', 'pH', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR004', 'Protein', '203', 'Protein', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR005', 'Glucose', '204', 'Glucose', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR006', 'Ketone', '205', 'Ketone', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR007', 'Blood', '', 'Blood', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR008', 'PROTEIN/GLUCOSE', '087', 'PROTEIN/GLUCOSE', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR009', 'PREGNANCY TEST', '208', 'PREGNANCY TEST', '0', 'UR', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR010', 'Amphetamine', '209', 'Amphetamine', '0', 'UR', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR011', 'Heroin(Morphine, Opiate)', '210', 'Heroin(Morphine, Opiate)', '0', 'UR', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR012', 'Marijuana', '', '', '', 'UR', '1', '0', '0:0:40', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR013', 'BILE', '206', 'BILE', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR014', 'Urine 24 Hrs. Protein', '120', '', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR015', 'Urine 24 Hrs. Creatinine', '121', '', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR016', 'Urine 24 Hrs. Urea-N', '', '', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR017', 'Urine 24 Hrs. Sodium', '', '', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR018', 'Urine 24 Hrs. Potassium', '', '', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR019', 'Urine 24 Hrs. Cr.Clearance', '', '', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR020', 'Urobilinogen', '207', 'Urobilinogen', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);
INSERT INTO `tbl_setup_lab_copy` VALUES ('UR021', 'CELL  COUNT', '234', '', '0', 'UR', '1', '0', '0:0:0', '0', '0', null);

-- ----------------------------
-- Table structure for `tbl_setup_lab_group`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_lab_group`;
CREATE TABLE `tbl_setup_lab_group` (
  `id` int(4) NOT NULL DEFAULT '0',
  `key_id` varchar(100) DEFAULT NULL,
  `item_id` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `Color` varchar(100) DEFAULT NULL,
  `Path` varchar(255) DEFAULT '-',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of tbl_setup_lab_group
-- ----------------------------
INSERT INTO `tbl_setup_lab_group` VALUES ('2', 'CH', 'CH101', 'CHEM', 'InactiveBorder', '\\\\kwit\\Temp\\1234.rpt');
INSERT INTO `tbl_setup_lab_group` VALUES ('3', 'HT', 'HT101', 'HEMATO', 'SandyBrown', '\\\\kwit\\Temp\\1234.rpt');
INSERT INTO `tbl_setup_lab_group` VALUES ('4', 'UR', 'UR101', 'URINE', 'Yellow', '\\\\kwit\\Temp\\1234.rpt');
INSERT INTO `tbl_setup_lab_group` VALUES ('12', 'EKG', 'EKG101', 'EKG', '-', '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('11', 'CXD', 'CXD101', 'CXD', '', '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('8', 'PE', 'PE101', 'PE', '-', '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('5', 'ST', 'ST101', 'STOOL', '-', '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('10', 'CXR', 'CXR101', 'CXR', 'GrayText', '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('14', 'OCV', 'OCV101', 'OCV', '-', '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('15', 'SPI', 'SPI101', 'SPI', '-', '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('17', 'AUD', 'AUD101', 'AUD', '-', '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('18', 'HAS', 'HAS101', 'HAS', '-', '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('19', 'LBS', 'LBS101', 'LBS', '-', '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('13', 'VIS', 'VIS101', 'VIS', '-', '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('1', 'FBS', 'FBS101', 'FBS', null, '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('7', 'AFB', 'AFB101', 'AFB', '-', '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('6', 'STR', 'STR101', 'STR', '-', '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('0', 'REG', 'REG101', 'REG', null, '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('9', 'INN', 'INN101', 'INN', null, '-');
INSERT INTO `tbl_setup_lab_group` VALUES ('16', 'PAU', 'PAU101', 'PAU', null, '-');

-- ----------------------------
-- Table structure for `tbl_setup_lab_group_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_lab_group_copy`;
CREATE TABLE `tbl_setup_lab_group_copy` (
  `id` int(4) NOT NULL DEFAULT '0',
  `key_id` varchar(100) DEFAULT NULL,
  `item_id` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `Color` varchar(100) DEFAULT NULL,
  `Path` varchar(255) DEFAULT '-',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of tbl_setup_lab_group_copy
-- ----------------------------
INSERT INTO `tbl_setup_lab_group_copy` VALUES ('1', 'CH', 'CH101', 'CHEM', 'InactiveBorder', '\\\\kwit\\Temp\\1234.rpt');
INSERT INTO `tbl_setup_lab_group_copy` VALUES ('2', 'HT', 'HT101', 'HEMATO', 'SandyBrown', '\\\\kwit\\Temp\\1234.rpt');
INSERT INTO `tbl_setup_lab_group_copy` VALUES ('3', 'UR', 'UR101', 'URINE', 'Yellow', '\\\\kwit\\Temp\\1234.rpt');
INSERT INTO `tbl_setup_lab_group_copy` VALUES ('8', 'EKG', 'EKG101', 'ตรวจคลื่นไฟฟ้าหัวใจ', '-', '-');
INSERT INTO `tbl_setup_lab_group_copy` VALUES ('7', 'CXD', 'CXD101', 'ตรวจเอกซเรย์ปอดดิจิตอล', '', '-');
INSERT INTO `tbl_setup_lab_group_copy` VALUES ('5', 'PE', 'PE101', 'ตรวจร่างกายโดยแพทย์', '-', '-');
INSERT INTO `tbl_setup_lab_group_copy` VALUES ('4', 'ST', 'ST101', 'STOOL', '-', '-');
INSERT INTO `tbl_setup_lab_group_copy` VALUES ('6', 'CXR', 'CXR101', 'ตรวจเอกซเรย์ปอดฟิ์ล์มใหญ์', 'GrayText', '-');
INSERT INTO `tbl_setup_lab_group_copy` VALUES ('9', 'OCV', 'OCV101', 'ตรวจสายตาอาชีวะอนามัย', '-', '-');
INSERT INTO `tbl_setup_lab_group_copy` VALUES ('10', 'SPI', 'SPI101', 'ตรวจสมรรถภาพการทำงานของปอด', '-', '-');
INSERT INTO `tbl_setup_lab_group_copy` VALUES ('11', 'AUD', 'AUD101', 'ตรวจสมรรถภาพการได้ยินของเสียง', '-', '-');
INSERT INTO `tbl_setup_lab_group_copy` VALUES ('12', 'HAS', 'HAS101', 'ตรวจสมรรถภาพกล้ามเนื้อมือและแขน', '-', '-');
INSERT INTO `tbl_setup_lab_group_copy` VALUES ('13', 'LBS', 'LBS101', 'ตรวจสมรรถภาพกล้ามเนื้อขาและหลัง', '-', '-');

-- ----------------------------
-- Table structure for `tbl_setup_lab_items`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_lab_items`;
CREATE TABLE `tbl_setup_lab_items` (
  `key_id` varchar(100) NOT NULL DEFAULT '',
  `IDHis` varchar(100) DEFAULT NULL,
  `name` text,
  `item_id` varchar(100) DEFAULT NULL,
  `TypeT` varchar(100) DEFAULT NULL,
  `Speccode` varchar(5) DEFAULT '00',
  `Unit` varchar(50) DEFAULT '',
  `Sptube` varchar(1) DEFAULT '',
  `Typebc` varchar(1) DEFAULT '',
  `print` varchar(2) DEFAULT '1',
  `IsActive` varchar(1) DEFAULT NULL,
  `Output` varchar(5) DEFAULT NULL,
  `Dvalues` text,
  PRIMARY KEY (`key_id`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of tbl_setup_lab_items
-- ----------------------------
INSERT INTO `tbl_setup_lab_items` VALUES ('FBS0001', '', 'FBS', 'FBS', '1', '03', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0002', '', 'BUN', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0003', '101030000', 'CREATININE', 'CH', '1', '02', '1', '', '', '1', '1', '1', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0004', '101040000', 'URIC ACID', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0005', '', 'CHOLESTEROL', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0006', '', 'TRIGLYCERIDE', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0007', '', 'HDL-CHOLESTEROL', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0008', '', 'LDL-CHOLESTEROL', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0009', '101090100', 'TOTAL PROTEIN', 'CH', '1', '02', '2', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0010', '101090200', 'ALBUMIN', 'CH', '1', '02', '2', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0011', '101090300', 'GLOBULIN', 'CH', '1', '02', '2', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0012', '101090400', 'TOTAL BILIRUBIN', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0013', '101090500', 'DIRECT BILIRUBIN', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0014', '101120100', 'SGOT(AST)', 'CH', '1', '02', '3', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0015', '101090700', 'SGPT(ALT)', 'CH', '1', '02', '3', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0016', '101090800', 'ALKALINE PHOSPHATASE', 'CH', '1', '02', '3', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0017', '102010100', 'SODIUM(Na)', 'CH', '1', '02', '4', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0018', '102010200', 'POTASSIUM(K)', 'CH', '1', '02', '4', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0019', '102010300', 'CHLORIDE(Cl)', 'CH', '1', '02', '4', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0020', '102010400', 'CO2', 'CH', '1', '02', '4', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0021', '401070000', 'GAMMA GT', 'CH', '2', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0022', '101070000', 'CALCIUM', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0023', '101080000', 'PHOSPHORUS', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0024', '101110000', 'MAGNESIUM', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0025', '101060000', 'AMYLASE', 'CH', '1', '02', '3', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0026', '105070000', 'LIPASE', 'CH', '2', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0027', '', 'TOTAL ACID PHOSPHATASE', 'CH', '1', '02', '6', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0028', '101100000', 'PROSTATIC ACID PHOSPHATASE', 'CH', '1', '02', '7', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0029', '101120200', 'LDH', 'CH', '1', '02', '3', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0030', '', 'LD-1', 'CH', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0031', '', 'LD-2', 'CH', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0032', '', 'LD-3', 'CH', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0033', '', 'LD-4', 'CH', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0034', '', 'LD-5', 'CH', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0035', '101120300', 'CPK', 'CH', '1', '02', '3', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0036', '105100000', 'CPK ISOENZYME', 'CH', '1', '02', '5', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0037', '', 'CK-MB', 'CH', '1', '02', '3', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0038', '105310000', 'TROPONIN-I', 'CH', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0039', '105210000', 'TROPONIN-T', 'CH', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0040', '411880000', 'MICROBILIRUBIN', 'CH', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0041', '101160101', 'FBS', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0042', '101160102', 'หลังกินน้ำตาลชั่วโมงที่ 1', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0043', '101160103', 'หลังกินน้ำตาลชั่วโมงที่ 2', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0044', '101160104', 'หลังกินน้ำตาลชั่วโมงที่ 3', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0045', '105040000', 'GLYCOLATED HbA1C', 'CH', '1', '02', '5', '', '', '1', '1', '1', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0048', '', 'TRANSFERRIN SATURATION', 'CH', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0049', '', 'FRUCTOSAMINE', 'CH', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0050', '', 'SUGAR IN CSF', 'CH', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0051', '', 'PROTEIN IN CSF', 'CH', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0052', '103010001', 'pH', 'CH', '1', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0053', '103010003', 'pCO2', 'CH', '1', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0054', '103010004', 'pO2', 'CH', '1', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0055', '103010007', 'HCO3', 'CH', '1', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0056', '103010006', 'Total CO2', 'CH', '1', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0057', '', 'Other', 'CH', '1', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0072', '', 'SUGAR IN FLUID', 'CH', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0073', '', 'PROTEIN IN FLUID', 'CH', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0074', '', 'LDH IN FLUID', 'CH', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0075', '104070000', 'AMYLASE IN URINE', 'CH', '1', '02', '11', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0076', '104200000', 'CALCIUM IN URINE', 'CH', '1', '02', '11', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0077', '', 'HbsAg', 'CH', '1', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0078', '', 'HbsAb', 'CH', '1', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0079', '', 'VDRL', 'CH', '1', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0080', '', 'HIV', 'CH', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0081', '', 'Blood Group', 'CH', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0082', '', 'CEA', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0083', '', 'AFP', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0084', '', 'CA-199', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0085', '', 'PSA', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0086', '', 'CA-153', 'CH', '1', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0087', '', 'CA-125', 'CH', '1', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0088', '', 'VDRL', 'CH', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0090', '', 'Hb Typing', 'CH', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0091', '', 'Thyroid', 'CH', '1', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0092', '', 'Widal Test in Blood', 'CH', '1', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0093', '', 'Rh', 'CH', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0094', '', 'Aluminium', 'CH', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0019', '', 'Arsenic', 'UR', '2', '05', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0096', '', 'Cadmium (Clotted)', 'CH', '1', '02', '1', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0061', '', 'Cadmium (EDTA)', 'HT', '2', '20', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0001', '201010300', 'WBC', 'HT', '1', '01', '15', '', '', '1', '1', '1', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0002', '201010401', 'Neutrophil', 'HT', '1', '01', '5', '', '', '1', '1', '0', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0003', '201010403', 'Lymphocyte', 'HT', '1', '01', '5', '', '', '1', '1', '0', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0004', '201040405', 'Monocyte', 'HT', '1', '01', '5', '', '', '1', '1', '0', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0005', '201010406', 'Eosinophil', 'HT', '1', '01', '5', '', '', '1', '1', '0', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0006', '201010407', 'Basophil', 'HT', '1', '01', '5', '', '', '1', '1', '0', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0007', '201010900', 'RBC', 'HT', '1', '01', '16', '', '', '1', '1', '2', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0008', '201010100', 'Hb', 'HT', '1', '01', '2', '', '', '1', '1', '1', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0009', '201010200', 'HCT', 'HT', '1', '01', '5', '', '', '1', '1', '0', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0010', '201010601', 'MCV', 'HT', '1', '01', '17', '', '', '1', '1', '1', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0011', '201010700', 'MCH', 'HT', '1', '01', '18', '', '', '1', '1', '1', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0012', '201010800', 'MCHC', 'HT', '1', '01', '2', '', '', '1', '1', '1', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0013', '201010600', 'Platelets count', 'HT', '1', '01', '15', '', '', '1', '1', '0', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0014', '201010501', 'Platelets smear', 'HT', '2', '01', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0015', 'MORP', 'RBC MORPHOLOGY', 'HT', '4', '01', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0016', '201020000', 'RETICULOCYTE COUNT', 'HT', '1', '01', '5', '', '', '1', '1', '1', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0017', '201040001', 'MALARIA', 'HT', '2', '01', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0021', '201030000', 'ESR', 'HT', '1', '22', '19', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0023', '', 'OSMOTIC FRAGILITY TEST', 'HT', '2', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0024', '', 'INCULSION BODY', 'HT', '2', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0026', '54', 'HEMOGLOBIN  TYPE', 'HT', '2', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0027', '', 'TOURNIQUET TEST', 'HT', '1', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0028', '202010100', 'BLEEDING TIME', 'HT', '1', '01', '20', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0029', '202010200', 'VENOUS CLOTTING TIME', 'HT', '1', '01', '20', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0030', '202010200', 'CLOT RETRACTION', 'HT', '1', '01', '33', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0031', '202010302', 'Control', 'HT', '1', '01', '21', '', '', '1', '1', '1', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0032', '202010301', 'Test', 'HT', '1', '01', '21', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0033', '202010303', 'INR', 'HT', '1', '01', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0034', '202010402', 'Control', 'HT', '1', '01', '21', '', '', '1', '1', '1', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0035', '202010401', 'Test', 'HT', '1', '01', '21', '', '', '1', '1', '1', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0036', '202010502', 'Control', 'HT', '1', '01', '21', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0037', '202010501', 'Test', 'HT', '1', '01', '21', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0038', '201010500', 'Other', 'HT', '3', '01', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0039', '', 'Plasmodium falciparum', 'HT', '2', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0040', '', 'Plasmodium vivax', 'HT', '2', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0041', '', 'Plasmodium malariae', 'HT', '2', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0042', '', 'Plasmodium ovale', 'HT', '2', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0043', '', 'Hb A', 'HT', '1', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0044', '', 'Hb A2', 'HT', '1', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0045', '', 'Hb E', 'HT', '1', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0046', '', 'Hb F', 'HT', '1', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0047', '', 'Hb CS', 'HT', '1', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0048', '', 'Hb H', 'HT', '1', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0049', '', 'Hb Barts', 'HT', '1', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0050', '', 'Other Hb', 'HT', '1', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0051', '', 'Interpretation', 'HT', '2', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0052', '', 'VDRL', 'HT', '2', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0053', '201080000', 'ABO group', 'HT', '2', '01', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0054', '201070000', 'Rh group', 'HT', '2', '01', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0055', '', 'NOT FOUND', 'HT', '2', '01', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0056', '201060000', 'G-6-PD', 'HT', '2', '01', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0057', '201040002', 'infection rate', 'HT', '1', '01', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0058', '201010412', 'NRBC', 'HT', '1', '01', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0059', '201010404', 'Atypical Lymphocyte', 'HT', '1', '01', '5', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0060', '201010901', 'RDW', 'HT', '1', '01', '17', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0033', '', 'MEK', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0034', '', 'Methanol', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0035', '', 'n-Hexane', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0036', '', 'Styrene', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0037', '', 'Xylene', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0038', '', 'Thinner', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0039', '', 'Phenol', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0040', '', 'Trichloroethylene', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0041', '', 'Formaldehyde', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0042', '', 'Cychohexanol', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0043', '', 'MIBK', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0044', '', 'TCA', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0045', '', 'Trichloroethanol', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('PET0001', '', 'PE', 'PE', '2', '06', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CXR0001', '', 'CXR', 'CXR', '2', '07', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CXD0001', '', 'CXD', 'CXD', '2', '08', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('EKG0001', '', 'EKG', 'EKG', '2', '09', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('OCV0001', '', 'Occupation Vision', 'OCV', '2', '10', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SPI0001', '', 'Spiro', 'SPI', '2', '11', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('AUD0001', '', 'Audiogram', 'AUD', '2', '12', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HAS0001', '', 'Hand and Arms Strength Muscle', 'HAS', '2', '13', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('LBS0001', '', 'Legs and Back Strength Muscle', 'LBS', '2', '14', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0001', '404010000', 'VDRL  in  Serum', 'SR', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0002', '404020000', 'TPHA', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0003', '404030101', 'S.typhi O Antigen', 'SR', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0004', '404030102', 'S.typhi H Antigen', 'SR', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0005', '404030103', 'S.paratyphi group A', 'SR', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0006', '404030104', 'S.paratyphi group B', 'SR', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0007', '404040102', 'OX -2', 'SR', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0008', '404040103', 'OX -19', 'SR', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0009', '404040101', 'OX -K', 'SR', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0010', '404050000', 'RHEUMATOID FACTOR', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0011', '404060000', 'ASO(ANTI STREPTOLYSIN O)', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0012', '404070000', 'COLD AGGLUTININ', 'SR', '1', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0013', '101130000', 'CK-MB', 'SR', '1', '02', '36', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0014', '405610000', 'CRYPTOCOCCUS Ag', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0015', '403090000', 'ANTI HIV (Screening)', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0016', '403100000', 'ANTI HIV (Confirm)', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0017', '403070000', 'HIV Ag', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0018', '403110000', 'WESTERN BLOT', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0019', '405590000', 'CD4', 'SR', '2', '24', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0020', '', 'CD8', 'SR', '2', '24', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0021', '405060000', 'CD4/CD8', 'SR', '2', '24', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0022', '403030100', 'HBsAg', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0023', '', 'ANTI HBs', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0024', '403030300', 'ANTI HBc(Total)', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0025', '403040000', 'ANTI HBc IgM', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0026', '403030400', 'HBe Ag', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0027', '403030500', 'ANTI HBe', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0028', '403010100', 'ANTI HAV(TOTAL)', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0029', '403010200', 'ANTI HAV IgM', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0030', '403060000', 'ANTI HCV(TOTAL)', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0031', '', 'HDV Ab', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0032', '405200000', 'C3 COMPLEMENT(Beta1C)', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0033', '405190000', 'C4 COMPLEMENT', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0034', '405080000', 'C - REACTIVE PROTEIN [ CRP ]', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0035', '405510000', 'TRANSFERRIN', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0036', '907210000', 'BETA  HCG', 'SR', '1', '23', '29', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0037', '402160000', 'CORTISOL ', 'SR', '1', '23', '8', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0038', '402130000', 'ESTRADIOL(E2)', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0039', '402220000', 'Estriol [E3]', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0040', '402090000', 'FSH', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0041', '402100000', 'LH', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0042', '402120000', 'PROGESTERONE', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0043', '402110000', 'PROLACTIN', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0044', '402140000', 'TESTOSTERONE', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0045', '402020000', 'T3', 'SR', '1', '23', '8', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0046', '402050000', 'FREE T3', 'SR', '1', '23', '38', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0047', '402030000', 'T4', 'SR', '1', '23', '37', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0048', '402040000', 'FREE T4', 'SR', '1', '23', '39', '', '', '1', '1', '2', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0049', '402010000', 'TSH', 'SR', '1', '23', '40', '', '', '1', '1', '3', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0050', '402060000', 'PARATHYROID', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0051', '402180000', 'INSULIN', 'SR', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0052', '402150000', 'GROWTH  HORMONE', 'SR', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0053', '401020000', 'AFP', 'SR', '1', '23', '41', '', '', '1', '1', '2', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0054', '401010000', 'CEA', 'SR', '1', '23', '41', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0055', '401060000', 'PSA(Prostatic Specific Ag)', 'SR', '1', '23', '7', '', '', '1', '1', '2', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0056', '401030000', 'CA 12-5', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0057', '401130000', 'CA 15-3', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0058', '401040000', 'CA 19-9', 'SR', '1', '23', '28', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0059', '401170000', 'FREE PSA ', 'SR', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0060', '105010000', 'OSMOLALITY [SERUM]', 'SR', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0061', '105020000', 'OSMOLALITY [URINE]', 'SR', '2', '05', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0062', '', 'FREE PSA/TOTAL PSA', 'SR', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0063', '', 'GP160', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0064', '', 'GP110/120', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0065', '', 'P66', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0066', '', 'P55', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0067', '', 'P51', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0068', '', 'GP41', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0069', '', 'P39', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0070', '', 'P31', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0071', '', 'P24/25', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0072', '', 'P17', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0073', '', 'SCREENING METHOD', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0074', '', 'VDRL  in  CSF', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0075', '203020000', 'LE CELL', 'SR', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0076', '403030200', 'HBsAb', 'SR', '2', '23', '29', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0078', '403610100', 'Dengue NS1 Ag', 'SR', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0079', '', 'HIV PCR', 'SR', '2', '02', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0080', '105060001', 'SERUM IRON', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0081', '105060002', 'TIBC', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0082', '105060003', 'TRANSFERRIN SAT', 'SR', '2', '23', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0083', '403170000', 'RUBELLA lgG', 'SR', '2', '23', '31', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0084', '409850000', 'CHIKUGUNYA IgM', 'SR', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0085', '412120000', 'TSH ( Newborn After 48 Hrs.)', 'SR', '1', '02', '29', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0086', '201110100', 'DIRECT COOMBS TEST', 'SR', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0087', '201110200', 'INDIRECT COOMBS TEST', 'SR', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0088', '404710200', 'ENTEROVIRUS 71( Rapid Test )', 'SR', '2', '02', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('SRT0089', '', 'NOROVIRUS', 'SR', '2', '04', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('STT0001', '302010101', 'Color', 'ST', '2', '04', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('STT0002', '302010102', 'Appearance', 'ST', '2', '04', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('STT0003', '302010103', 'WBC', 'ST', '2', '04', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('STT0004', '302010104', 'RBC', 'ST', '2', '04', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('STT0005', '302010106', 'Parasite', 'ST', '5', '04', '0', '', '', '1', '1', '-', 'Not found');
INSERT INTO `tbl_setup_lab_items` VALUES ('STT0006', '', 'Stool C/S', 'ST', '2', '04', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('STT0007', '302090000', 'STOOL CONCENTRATION', 'ST', '2', '04', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('STT0010', '302060000', 'Clostidium difficile toxin', 'ST', '2', '04', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('STT0011', '404716000', 'STOOL OCCULT BLOOD+TRANSFERRIN', 'ST', '2', '04', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('STT0012', '302620000', 'H.PYLORI STOOL ANTIGEN', 'ST', '2', '04', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0001', '301010101', 'Color', 'UR', '2', '05', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0002', '301010102', 'Transparency', 'UR', '2', '05', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0003', '301020106', 'Sp.gr.', 'UR', '2', '05', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0004', '301010300', 'pH', 'UR', '2', '05', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0005', '301070001', 'Protein', 'UR', '2', '05', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0006', '301010500', 'Glucose', 'UR', '2', '05', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0007', '301020104', 'Ketone', 'UR', '2', '05', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0008', '301020105', 'Blood', 'UR', '2', '05', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0009', '301010801', 'WBC', 'UR', '2', '05', '34', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0010', '301010802', 'RBC', 'UR', '2', '05', '34', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0011', '301010803', 'Epithelial', 'UR', '2', '05', '34', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0012', '301010809', 'Bacteria', 'UR', '2', '05', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0013', '301010807', 'Mucous', 'UR', '2', '05', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0014', '301010806', 'Amorphous', 'UR', '2', '05', '', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0015', '301010805', 'Crystal', 'UR', '4', '05', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0016', '301010804', 'Cast', 'UR', '4', '05', '35', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0017', '310000000', 'Other', 'UR', '4', '05', '0', '', '', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0018', '', 'Amphetamine', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0102', '', 'Manganese', 'CH', '2', '02', '1', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0062', '', 'LEAD', 'HT', '2', '20', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0103', '', 'Magnesium', 'CH', '2', '02', '1', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0063', '', 'Nickel', 'HT', '2', '20', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0023', '', 'Nickel (Urine)', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0024', '', 'Mercury', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0104', '', 'Zinc', 'CH', '2', '02', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0105', '', 'Fe', 'CH', '2', '02', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0064', '', 'Tin', 'HT', '2', '20', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0025', '', 'Acetone', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0026', '', 'Benzene', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0065', '', 'Cyanide', 'HT', '2', '20', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0066', '', 'Methanol', 'HT', '2', '20', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0067', '', 'Ammonia', 'HT', '2', '20', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0068', '', 'Carboxyhemoglobin', 'HT', '2', '20', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0069', '', 'Methylene Chloride', 'HT', '2', '20', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0070', '', 'Cobalt', 'HT', '2', '20', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0106', '', 'Ethanol', 'CH', '2', '21', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0107', '', 'Methanol', 'CH', '2', '21', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0108', '', 'Iron', 'CH', '1', '02', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0109', '', 'Cholinesterase', 'CH', '2', '02', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0027', '', 'Cyclohexane', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0028', '', 'Ethyl Benzene', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0029', '', 'Fluoride', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0030', '', 'Toluene', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0031', '', 'IPA', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0032', '', 'Methyl Chloroform', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0020', '', 'Cadmium (Urine)', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('HTT0071', '', 'Chromium', 'HT', '2', '20', '1', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0021', '', 'Chromium (Urine)', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('CHT0101', '', 'Copper', 'CH', '2', '02', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('URT0022', '', 'Copper (Urine)', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('VIS0001', '', 'Vision', 'VIS', '1', '15', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('STR0001', '', 'Strain gauge', 'STR', '2', '16', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('AFB0001', '', 'AFB Stain', 'AFB', '1', '17', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('REG0001', '', 'Registration', 'REG', '1', '18', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('INN0004', '', 'EST', 'INN', '2', '19', '0', '0', '0', '1', '1', '-', '-');
INSERT INTO `tbl_setup_lab_items` VALUES ('INN0001', '', 'U/S Whole Abdomen', 'INN', '2', '19', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('INN0002', '', 'U/S Upper Abdomen', 'INN', '2', '19', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('INN0003', '', 'U/S Lower Abdomen', 'INN', '2', '19', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('INN0005', '', 'Mammogram+U/S', 'INN', '2', '00', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('INN0006', '', 'PAP Smaer', 'INN', '2', '00', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('INN0007', '', 'Liquid-Base', 'INN', '2', '00', '0', '0', '0', '1', '1', '-', '');
INSERT INTO `tbl_setup_lab_items` VALUES ('PAU0001', '', 'Pre Audiogram', 'PAU', '2', '22', '0', '0', '0', '1', '1', '-', '');

-- ----------------------------
-- Table structure for `tbl_setup_lab_items_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_lab_items_copy`;
CREATE TABLE `tbl_setup_lab_items_copy` (
  `key_id` varchar(100) NOT NULL DEFAULT '',
  `IDHis` varchar(100) DEFAULT NULL,
  `name` text,
  `item_id` varchar(100) DEFAULT NULL,
  `TypeT` varchar(100) DEFAULT NULL,
  `Speccode` varchar(5) DEFAULT '00',
  `Unit` varchar(50) DEFAULT '',
  `Sptube` varchar(1) DEFAULT '',
  `Typebc` varchar(1) DEFAULT '',
  `print` varchar(2) DEFAULT '1',
  `IsActive` varchar(1) DEFAULT NULL,
  `Output` varchar(5) DEFAULT NULL,
  `Dvalues` text,
  PRIMARY KEY (`key_id`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of tbl_setup_lab_items_copy
-- ----------------------------
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('BBT0001', '1001', 'ABO BLOOD GROUP', 'BB', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('BBT0002', '', 'Rh BLOOD GROUP', 'BB', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('BBT0003', '', 'DIRECT COOMBS TEST', 'BB', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('BBT0004', '', 'INDIRECT COOMBS TEST', 'BB', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('BBT0005', '', 'ROOM TEMP', 'BB', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('BBT0006', '', '37 *C', 'BB', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('BBT0007', '', 'COOMBS', 'BB', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('BBT0008', '', 'ANTIBODY SCREENING TEST', 'BB', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('BBT0009', '', 'ANTIBODY IDENTIFICATION', 'BB', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('BBT0010', '', 'UNIT NO.', 'BB', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('BBT0011', '', 'ROOM TEMP', 'BB', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('BBT0012', '', '37 *C', 'BB', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('BBT0013', '', 'COOMBS', 'BB', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0001', '300', 'BLOOD SUGAR', 'CH', '1', '02', '1', '0', '0', '1', '1', '0', '');
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0002', '301', 'BUN', 'CH', '1', '02', '1', '0', '0', '1', '1', '1', '');
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0003', '302', 'CREATININE', 'CH', '1', '02', '1', '0', '0', '1', '1', '1', '');
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0004', '303', 'URIC ACID', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0005', '304', 'TOTAL CHOLESTEROL', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0006', '305', 'TRIGLYCERIDE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0007', '306', 'HDL-CHOLESTEROL', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0008', '307', 'LDL-CHOLESTEROL', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0009', '309', 'TOTAL PROTEIN', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0010', '310', 'ALBUMIN', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0011', '311', 'GLOBULIN', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0012', '312', 'TOTAL BILIRUBIN', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0013', '313', 'DIRECT BILIRUBIN', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0014', '314', 'SGOT(AST)', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0015', '315', 'SGPT(ALT)', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0016', '316', 'ALKALINE PHOSPHATASE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0017', '321', 'SODIUM(Na)', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0018', '322', 'POTASSIUM(K)', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0019', '323', 'CHLORIDE(Cl)', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0020', '324', 'CO2', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0021', '338', 'GAMMA GT', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0022', '325', 'CALCIUM', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0023', '326', 'PHOSPHORUS', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0024', '340', 'MAGNESIUM', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0025', '362', 'AMYLASE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0026', '342', 'LIPASE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0027', '341', 'TOTAL ACID PHOSPHATASE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0028', '343', 'PROSTATIC ACID PHOSPHATASE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0029', '327', 'LDH', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0030', '350', 'LDH Isoenzyme', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0031', '', 'LD-2', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0032', '', 'LD-3', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0033', '', 'LD-4', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0034', '', 'LD-5', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0035', '328', 'CPK', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0036', '353', 'CPK ISOENZYME', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0037', '339', 'CK-MB', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0038', '419', 'TROPONIN-I', 'CH', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0039', '568', 'TROPONIN_T', 'CH', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0040', '', 'MICROBILIRUBIN', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0041', '329A', 'FBS', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0042', '329C', 'หลังกินน้ำตาลชั่วโมงที่ 1', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0043', '329D', 'หลังกินน้ำตาลชั่วโมงที่ 2', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0044', '329E', 'หลังกินน้ำตาลชั่วโมงที่ 3', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0045', '349', 'GLYCOLATED HbA1C', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0046', '346', 'SERUM IRON', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0047', '345', 'TIBC', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0048', '', 'TRANSFERRIN SATURATION', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0049', '', 'FRUCTOSAMINE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0050', '', 'SUGAR IN CSF', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0051', '', 'PROTEIN IN CSF', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0052', '356A', 'pH', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0053', '356B', 'pCO2', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0054', '356C', 'pO2', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0055', '356E', 'HCO3', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0056', '356D', 'Total CO2', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0057', '', 'Other', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0058', '333A', 'TOTAL  VOLUME', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0059', '332A', 'TOTAL  VOLUME', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0060', '', 'SODIUM IN URINE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0061', '', 'POTASSIUM IN URINE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0062', '363', 'AMYLASE IN URINE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0063', '334A', 'Serum Creatinine', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0064', '1122', 'MICROALBUMIN', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0065', '', 'Microalbumin [Urine 24 hrs]', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0066', '', 'CHLORIDE IN URINE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0067', '', 'URIC ACID IN URINE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0068', '364', 'CALCIUM IN URINE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0069', '', 'Urea nitrogen in urine', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0070', '', 'PHOSPHORUS IN URINE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0071', '357', 'MAGNESIUM IN URINE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0072', '', 'SUGAR IN FLUID', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0073', '', 'PROTEIN IN FLUID', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0074', '355', 'LDH IN FLUID', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0075', '', 'AMYLASE IN FLUID', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0076', '', 'URIC ACID IN FLUID', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0077', '', 'DTX', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0078', '', 'GCT (50MG)', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0079', '', '2hrs.Post prandial', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0080', 'IMG CHEM', 'IMG CHEM', 'CH', '3', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0095', '', 'CHOLINESTERASE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0096', '317A', 'TOTAL PROTEIN', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0097', '317B', 'ALBUMIN', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0098', '317C', 'GLOBULIN', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0099', '317D', 'TOTAL BILIRUBIN', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0100', '317E', 'DIRECT BILIRUBIN', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0101', '317F', 'SGOT(AST)', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0102', '317G', 'SGPT(ALT)', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0103', '317H', 'ALKALINE PHOSPHATASE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0104', '320A', 'SODIUM(Na)', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0105', '320B', 'POTASSIUM(K)', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0106', '320C', 'CHLORIDE(Cl)', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0107', '320D', 'CO2', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0108', '327B', 'RESULT', 'CH', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0109', '332B', 'URINE PROTEIN RESULT', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0110', '333B', 'URINE CREATININE RESULT', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0111', '334B', 'Urine Creatinine', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0112', '334C', 'Creatinine Clearace', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0113', '336A', 'URINE Na', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0114', '336B', 'URINE K', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0115', '336C', 'URINE Cl', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0116', '337A', 'URINE Na', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0117', '337B', 'URINE K', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0118', '337C', 'URINE Cl', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0119', '358', 'ALBUMIN IN BODY FLUID', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0120', '359', 'URINE Creatinine  (Spot)', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0121', '360', 'URINE PROTEIN  (Spot)', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0122', '361', 'Urine  Calcium  (24 hrs)', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0123', '308', 'VLDL - CHOLESTEROL', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0124', '356F', 'BE', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0125', '356I', 'nCa++', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0126', '356J', 'SO2 (O2 SAT)', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0127', '356K', 'AaDO2', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0128', '356L', 'O2 ct', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0129', '356M', 'Entered  Data Temp', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0130', '356N', 'Entered Data  FIO2', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0131', '356O', 'Entered Data  Hb', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0132', '232A', 'SPECIMEN', 'CH', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0133', '232B', 'RESULT', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0134', '233A', 'SPECIMEN', 'CH', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('CHT0135', '233B', 'RESULT', 'CH', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0001', '199C', 'WBC', 'HT', '1', '01', '0', '0', '0', '1', '1', '0', '');
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0002', '199D', 'Neutrophil', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0003', '199E', 'Lymphocyte', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0004', '199G', 'Monocyte', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0005', '199F', 'Eosinophil', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0006', '199Y', 'Basophil', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0007', '199Z3', 'RBC', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0008', '199A', 'Hb', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0009', '199B', 'HCT', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0010', '199Z', 'MCV', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0011', '199Z1', 'MCH', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0012', '199Z2', 'MCHC', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0013', '199ZJ', 'PLATELETS COUNT', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0014', '199K', 'PLATELETS SMEAR', 'HT', '2', '01', '0', '0', '0', '1', '1', '0', 'Adequate');
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0015', '199L', 'RBC MORPHOLOGY', 'HT', '4', '01', '0', '0', '0', '1', '1', '-', 'Normochromic Normocytic');
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0016', '104', 'RETICULOCYTE COUNT', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0017', '105', 'MALARIA', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0021', '106', 'ESR', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0022', '109', 'G-6-P-D', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0023', '1250', 'OSMOTIC FRAGILITY TEST', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0024', '117', 'INCULSION BODY', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0025', '5010A', 'Organism', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0026', '354A', 'HEMOGLOBIN  TYPE', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0027', '', 'TOURNIQUET TEST', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0028', '112', 'BLEEDING TIME', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0029', '', 'VENOUS CLOTTING TIME', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0030', '113', 'CLOT RETRACTION', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0031', '114B', 'Control', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0032', '114A', 'Test', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0033', '114C', 'INR', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0034', '115B', 'Control', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0035', '115A', 'Test', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0036', '116B', 'Control', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0037', '116A', 'Test', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0038', '199J', 'Other', 'HT', '3', '01', '0', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0039', '', 'Plasmodium falciparum', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0040', '', 'Plasmodium vivax', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0041', '', 'Plasmodium malariae', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0042', '', 'Plasmodium ovale', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0043', '354B', 'Hb A', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0044', '354C', 'Hb A2', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0045', '354D', 'Hb E', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0046', '354E', 'Hb F', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0047', '354F', 'Hb CS', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0048', '354G', 'Hb H', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0049', '', 'Hb Barts', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0050', '354H', 'Other Hb', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0051', '354P', 'Interpretation', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0052', '500', 'VDRL', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0053', '107', 'ABO Group', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0054', '108', 'RH Group', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0055', '199ZK', 'PLT.ON SMEAR', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0056', '354I', 'INCULSION BODY', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0057', '354J', 'OSMOTIC FRAGILITY TEST', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0058', '354M', 'MCV', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0059', '354O', 'MCHC', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0060', '354Q', 'Sugestion', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0061', '5010B', 'WBC', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0062', '115C', 'PTT   Ratio', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0063', '103A', 'PLATELATE SMEAR', 'HT', '2', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0064', '1019A', 'Hct', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0065', '1019B', 'WBC  count', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('HTT0066', '1019C', 'Lymphocyte', 'HT', '1', '01', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0001', '', 'AFB STAIN', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0002', '', 'MODIFIED AFB STAIN', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0003', '', 'Gram positive cocci', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0004', '', 'Gram positive diplococci', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0005', '', 'Gram positive cocci in chain', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0006', '', 'Gram positive cocci in cluster', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0007', '', 'Gram positive cocci in lancet shape', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0008', '', 'Gram positive bacilli', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0009', '', 'Gram negative diplococci', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0010', '', 'Gram negative diplococci intracellular', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0011', '', 'Gram negative diplococci extracellular', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0012', '', 'Gram negative diplococci intra and extracellular', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0013', '', 'Gram negative rod', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0014', '', 'Gram negative bacilli', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0015', '', 'Gram negative bacilli with capsule', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0016', '', 'Other', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0017', '', 'WBC', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0018', '', 'Epithelial cell', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0019', '', 'Trichomonas vaginalis', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0020', '', 'WBC', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0021', '', 'RBC', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0022', '', 'Epithelial cell', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0023', '', 'Bacteria', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0024', '', 'Budding yeast cells', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0025', '', 'Yeast and budding yeast cells', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0026', '', 'Budding yeast cells with pseudohyphae', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0027', '', 'Yeast and budding yeast cells with pseudohyphae', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0028', '', 'Pseudohyphae', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0029', '', 'Hyphae', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0030', '', 'Other', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0031', '', 'BACTERIAL CULTURE OF SPUTUM', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0032', '', 'BACTERIAL CULTURE OF PUS', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0033', '', 'BACTERIAL CULTURE OF URINE', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0034', '', 'BACTERIAL CULTURE OF STOOL', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0035', '', 'BACTERIAL CULTURE OF CSF', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0036', '', 'BACTERIAL CULTURE OF ', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0037', '', 'ANAEROBE CULTURE', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0038', '11', 'HEMO CULTURE', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0039', '', 'TB CULTURE OF ', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0040', '', 'FUNGUS CULTURE', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0041', '', 'Color', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0042', '', 'Appearance', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0043', '', 'Sp.gr.', 'MC', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0044', '', 'Cell count', 'MC', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0045', '', 'Differantial cell', 'MC', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0046', '', 'INDIAN INK PREPARETION', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0047', '', 'Color', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0049', '', 'Volume', 'MC', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0052', '', 'pH', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0053', '', 'Motility', 'MC', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0054', '', 'Sperm count', 'MC', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0055', '', 'Sperm morphology', 'MC', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0056', '', 'Color', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0057', '', 'Appearance', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0058', '', 'Viscosity', 'MC', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0059', '', 'Sp.gr.', 'MC', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0060', '', 'Cell count', 'MC', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0061', '', 'Differantial cell', 'MC', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0062', '', 'WBC', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0063', '', 'Epithelial cell', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0064', '', 'FERN TEST', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0065', '', 'ZANK SMEAR', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0066', '', 'WRIGHT  STAIN', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('MCT0067', '', 'BACTERIAL CULTURE OF FLUID', 'MC', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0001', '', 'Anus', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0002', '', 'Appendix', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0003', '', 'Amputation, Upper or Lower Extremities', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0004', '', 'Bone  Marrow', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0005', '', 'Bone, Biopsy  or  Excision', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0006', '', 'Bone, Amputation', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0007', '', 'Brain, Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0008', '', 'Brain, Tumor', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0009', '', 'Breast, Biopsy, Unilateral [ 1 piece ]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0010', '', 'Breast, Biopsy, Unilateral [ >1 piece ]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0011', '', 'Breast, Simple  Mastectomy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0012', '', 'Breast, Mastectomy with Axillary  Content', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0013', '', 'Bronchial Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0014', '', 'Cartilage', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0015', '', 'Cervix, Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0016', '', 'Cervix, Conization or Cone Biopsy or  LEEP/LLEITZ', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0017', '', 'Colon, Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0018', '', 'Colon, Colectomy with Lymph node', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0019', '', 'Conceptive  Product', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0020', '', 'Curettage', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0021', '', 'Curettage, Fractional [ Endocervix & Endometrium ]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0022', '', 'Duodenum, Biopsy  with  Helicobactor pylori Stain', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0023', '', 'Endocervix', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0024', '', 'Endometrium', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0025', '', 'Esophagus, Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0026', '', 'Fallopian Tube, Salpingectomy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0027', '', 'Fallopian Tube, Bilateral, for  TR', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0028', '', 'Fistula/Fistula in ano', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0029', '', 'Gallbladder', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0030', '', 'Gastric, Biopsy with Helicobactor pylori Stain', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0031', '', 'Gastric, Gastrectomy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0032', '', 'Gastric, Gastrectomy with Lymph node', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0033', '', 'Hemorrhoid', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0034', '', 'Hemorrhoid [ >4 pieces ]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0035', '', 'lleum, Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0036', '', 'lleum, Segmental  Resection', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0037', '', 'Jejunum, Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0038', '', 'Jejunum, Segmental Resection', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0039', '', 'Kidney, Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0040', '', 'Kidney, Neprectomy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0041', '', 'Labium', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0042', '', 'Larynx, Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0043', '', 'Larynx, Laryngectomy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0044', '', 'Larynx, Laryngectomy with Lymph node', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0045', '', 'Lid, Upper or Lower, Excision', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0047', '', 'Liver, Needle  Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0048', '', 'Liver, Lobectomy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0049', '', 'Lung, Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0050', '', 'Lung, Lobectomy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0051', '', 'Lymph node, Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0052', '', 'Lymph node, Biopsy with Histochemistry  Stains', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0053', '', 'Lymph node, Radical  Neck Resection', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0054', '', 'Mandible', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0055', '', 'Meckels diverticulum', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0056', '', 'Myoma, Myomectomy [ <5 cm. ]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0057', '', 'Myoma, Myomectomy [ >5 cm. ]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0058', '', 'Nasal  Polyp', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0059', '', 'Nasopharynx, Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0060', '', 'Omentum', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0061', '', 'Ovary, Cystectomy [ <5 cm. ]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0062', '', 'Ovary, Cystectomy [ >5 cm. ]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0063', '', 'Ovary, with Fallopian Tube [ One Adnexa ]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0064', '', 'Parotid  Gland', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0065', '', 'Penis, Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0066', '', 'Penis, Amputation', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0067', '', 'Placenta', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0068', '', 'Pleural  Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0069', '', 'Pleural Biopsy with Histochemistry Stains', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0070', '', 'Polyp', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0071', '', 'Prostatic  Tissue, TURP ( ตามปริมาณ )', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0072', '', 'Prostate Gland, Prostatectomy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0073', '', 'Rectum, Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0074', '', 'Rectum, A-P or Segmental Resection', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0075', '', 'Salivary Gland', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0076', '', 'Skin  Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0077', '', 'Skin Biopsy with Histochemistry Stains', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0078', '', 'Spleen', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0079', '', 'Stomach, Biopsy with Helicobactor pylori Stain', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0080', '', 'Stomach, Gastrectomy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0081', '', 'Synovial Tissue', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0082', '', 'Testis, Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0083', '', 'Testis, Orchidectomy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0084', '', 'Testis, Orchidectomy with Lymph node', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0085', '', 'Thrombus', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0086', '', 'Thyroid Gland, Lobectomy, Unilateral [ <5 cm. ]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0087', '', 'Thyroid Gland, Lobectomy, Unilateral [ >5 cm. ]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0088', '', 'Thyroid Gland, Lobectomy, Bilateral [ <5 cm. ]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0089', '', 'Thyroid Gland, Lobectomy, Bilateral [ >5 cm. ]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0090', '', 'Thyroid Gland, Lobectomy, Bilateral with lsthmectomy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0091', '', 'Tonsil, Tonsillectomy, Unilateral', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0092', '', 'Tonsil, Tonsillectomy, Bilateral', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0093', '', 'Urinary Bladder', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0094', '', 'Uterus, Hysterectomy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0095', '', 'Uterus, Hysterectomy with One Adnexa', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0096', '', 'Uterus, Hysterectomy with Bilateral Adnexae', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0097', '', 'Uterus, Hysterectomy  with Cervical Conization', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0098', '', 'Uterus, Hysterectomy  wtih Separated  Ovarian  Tumor', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0099', '', 'Vas  deferens, Bilateral', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0100', '', 'Wertheims Operation', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0101', '', 'Whipplew  Resection', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0102', '', 'Estrogen Receptor [ ER ]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0103', '', 'Progesterone Receptor [ PgR ]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0104', '', 'Ki - 67 ', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0105', '', 'p 53', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0106', '', 'C-erb-B2', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0107', '', 'Cytology', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0108', '', 'Cytology & Histochemistry Stains', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0109', '', 'Cytology & Pneumocystis  carinii  Stain', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0110', '', 'Cytology  & Cell  Block', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0111', '', 'Cytology  by  ThinPrep  Processor', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0113', '', 'Smear  from Vaginal Lesion R/O Herpes simplex infection', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0115', '', 'CYTOLOGICAL CLASSIFICATION', 'PA', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0116', '', 'ADEQUACY OF SPECIMEN', 'PA', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0117', '', 'GENERAL CATEGORIZATION', 'PA', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0118', '', 'HORMOMAL EVALUATION', 'PA', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0119', '', 'RECOMMENDATION', 'PA', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0120', '', 'Frozen Section / 1 specimen', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0121', '', 'Immunoperoxidase Stain', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0122', '', 'Extragenital Cytology', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0123', '', 'Fine Needle Aspiration [FNA]', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0124', '', 'Consultation,Biopsy', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0125', '', 'Consultation,Cytology', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0126', '', 'Consultation,Pap Smear', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0127', '', 'Specimen', 'PA', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0128', '', 'Adequacy', 'PA', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0129', '', 'Diagnosis', 'PA', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0130', '', 'Note', 'PA', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0131', '', 'Tissue large', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0132', '', 'Tissue medium', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('PAT0133', '', 'Tissue small', 'PA', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0001', '1127', '17 OHP [17-Hydroxyprogesterone]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0002', '1092', '17-KS', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0003', '1126', '17-OHCS', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0004', '1067', '5-HIAA', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0005', '', 'Acantamoeba  in  stool', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0006', '', 'Acantamoeba culture', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0007', '', 'Acetone', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0008', '', 'Acetyl cholinesterase', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0009', '', 'Acetylcholine receptor antibody', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0010', '', 'Acid Elusion (Fetal Hb)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0011', '', 'Acid Phosphatase (Sperm)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0012', '', 'ACTH', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0013', '', 'Activated Protein C Resistance(APCR)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0014', '', 'Adeno Virus in  Serum', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0015', '', 'Adenosine deaminase (ADA) in  Serum', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0016', '', 'ALA (Urine)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0017', '', 'ALA-D (Blood) in  Fresh  EDTA  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0018', '', 'Alcohol (Ethyl)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0019', '', 'Aldolase', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0020', '', 'Aldosterone in  Serum', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0021', '', 'Alkaptonuria', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0022', '', 'Citrus Mix', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0023', '', 'Corn', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0024', '', 'Wheat', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0025', '', 'VegetableMix', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0026', '', 'Crab', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0027', '', 'ShellfishMix', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0028', '', 'Shrimp', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0029', '', 'Codfish', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0030', '', 'Pork', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0031', '', 'Beef', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0032', '', 'Milk', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0033', '', 'Yeast,Brewer', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0034', '', 'Soybean', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0035', '', 'Peanut', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0036', '', 'Egg Yolk', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0037', '', 'Egg White', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0038', '', 'Pine Mix', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0039', '', 'Cottnwd/Wilw', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0040', '', 'Eucalyptus', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0041', '', 'Mulberry Mix', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0042', '', 'Alpha-1 antitrypsin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0043', '', 'Aluminium', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0044', '', 'AMA', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0045', '', 'Amikacin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0046', '', 'Aminophylline (Theophylline)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0047', '', 'Amitryptyline (Common Drug Screen) in  Clot  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0048', '', 'Ammonia', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0049', '', 'Amphetamine', 'SP', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0050', '533', 'ANA [ ANF, FANA ]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0051', '', 'ANCA (Anti Neutrophile Cytoplasmic Ab)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0052', '', 'Anti D (Rh titer)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0053', '', 'Angiostrongilus in  Serum', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0054', '', 'Angiotensin converting Enzyme in Serum', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0055', '535', 'ANT-ENA [Anti-SM]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0056', '534', 'ANTI - ds  DNA', 'SP', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0057', '', 'Anti Basement Membrane IgA', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0058', '', 'Anti Basement Membrane IgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0059', '', 'Anti Basement Membrane IgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0060', '582A', 'Anti-Cardiolipin IgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0061', '', 'Anti Centromia', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0062', '', 'Anti D Nase-B', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0063', '', 'ANTI EBV [VCA] lgG(Epstein-Barr virus)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0064', '', 'ANTI EBV [VCA] lgM(Epstein-Barr virus)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0065', '', 'Anti Histamine in Clot  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0066', '', 'Anti HTLV1', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0067', '', 'Anti La (Anti-SSB)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0068', '', 'Anti Ro (Anti-SSA)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0069', '', 'Anti SCL-70', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0070', '', 'Anti Thrombin III', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0071', '', 'Anti-GBM (glomerula basement membrane)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0072', '', 'Anti-TPO', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0073', '', 'Apolipoprotein A1', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0074', '585', 'Apolipoprotein B', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0075', '', 'Arsenic(Screening) in  Gastrict  content', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0076', '', 'Arsenic in  Urine  24  hrs.', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0077', '', 'ASMA', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0078', '', 'Aspergillus Antibody', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0079', '586', 'Aspergillus Antigen', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0080', '587', 'Barbiturate (Screening) in  Urine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0081', '', 'Barrium in  Clotted  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0082', '', 'Benadryl', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0083', '', 'Bence - Jones Protein', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0084', '', 'Benzene [ Phenol ]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0085', '', 'Benzodiazepine  in  Urine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0086', '', 'Bromide', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0087', '', 'Brucella Ab', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0088', '', 'C. Difficile Toxin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0089', '', 'Cadmium [Cd]  in  EDTA  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0090', '', 'Caffein', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0091', '', 'Calcitonin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0092', '', 'Calcium Pyrophosphate', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0093', '', 'Campylobacter jejuni', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0094', '', 'Carbamate', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0095', '', 'Carbamazepine (Tegretal)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0096', '', 'Carboxy Hb', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0097', '', 'Carotene [Vitamin A]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0098', '', 'Catecholamine [ Total Volume ]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0099', '', 'CERULOPLASMIN', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0100', '', 'Chikungunya Ab.', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0101', '', 'Chlamydia pneumoniae lgA', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0102', '', 'Chlamydia pneumoniae lgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0103', '', 'Chlamydia pneumoniae lgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0104', '', 'Chlamydia psittaci lgA', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0105', '', 'Chlamydia psittaci lgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0106', '', 'Chlamydia psittaci lgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0107', '', 'Chlamydia trachomatis culture', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0108', '', 'Chlamydia trachomatis lgA', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0109', '', 'Chlamydia trachomatis lgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0110', '', 'Chlamydia trachomatis lgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0111', '593', 'Chlordiazepoxide [Librium]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0112', '', 'Cholinesterase', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0113', '', 'Cholinesterase [Erythrocyte]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0114', '', 'Chromium  in  EDTA  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0115', '', 'Chromosome [Amniotic fluid)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0116', '', 'Chromosome [Heparinized Blood]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0117', '', 'CMV c/s', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0118', '550', 'CMV lgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0119', '551', 'CMV lgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0120', '', 'Cocaine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0121', '', 'Copper  in  Serum', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0122', '', 'Corproporphyrin [CP3]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0123', '', 'Coxsackie Virus', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0124', '', 'C-Peptide', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0125', '1010', 'Cryoglobulin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0126', '1011', 'Cryptosporidium', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0127', '1012', 'Cyanide  in  EDTA', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0128', '', 'Cyclosporin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0129', '1015', 'Cysticercosis Ab', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0130', '', 'Cytomegalovirus lgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0131', '', 'Cytomegalovirus lgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0132', '122', 'DCIP', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0133', '', 'D-dimer', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0134', '569', 'DENGUE (Rapid test)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0135', '', 'DENGUE lgM [ELISA]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0136', '', 'Depakine Level (Valproic Acid)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0137', '', 'DHEAS', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0138', '', 'Diazepam', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0139', '', 'Digoxin (Digitalis)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0140', '', 'DNA Typing for alpha-Thalassemia', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0141', '', 'Dormicum (Midazolam)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0142', '', 'Downs Syndrome [1st Trimester Screening]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0143', '', 'E Coli 0157', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0144', '', 'Echovirus [พร้อมประวัติ]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0145', '530', 'E-HIST Ab', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0146', '', 'Eosinophil Count', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0147', '', 'Epinephrin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0148', '', 'Erytropoietin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0149', '', 'Euglobulin Lysis Time', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0150', '', 'Factor 13', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0151', '', 'Factor 5 Leiden', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0152', '', 'Factor 8 C [Coagulant Activity]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0153', '', 'Factor 9', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0154', '', 'Factor ll', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0155', '', 'FDP [Fibrin Degradation Product]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0156', '559', 'Ferritin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0157', '', 'Fibrinogen Level', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0158', '', 'Filaria [Blood]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0159', '545', 'Filaria Ab', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0160', '', 'FISH for BCR/ABL  in  Heparized  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0161', '', 'FISH for T [15,17]  in  Heparized  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0162', '', 'FISH for Williams syndrome', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0163', '', 'FK 506 (Tracholimus)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0164', '', 'Flow cytometry', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0165', '', 'Fluoride [Urine]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0166', '', 'Fluoride [Water]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0167', '', 'Folate in RBC', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0168', '', 'Folate in serum', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0169', '', 'Formaldehyde', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0170', '', 'Fragile-X', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0171', '', 'Free testosterone ', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0172', '', 'FT4 Index', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0173', '546', 'FTA-ABS IgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0174', '547', 'FTA-ABS IgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0175', '', 'Gammaglobulin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0176', '', 'Gastrin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0177', '', 'Gentamicin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0178', '', 'Gnathostoma Ab.  in  Serum', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0179', '', 'Gramoxone [Paraquat]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0180', '', 'H.INFLUENZAE Ag', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0181', '', 'Haptoglobin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0182', '', 'HBV  VIRAL LOAD [b - DNA]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0183', '', 'HCV  VIRAL  LOAD [b - DNA]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0184', '', 'HCV Genotype', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0185', '', 'HCV PCR [QUALITATIVE]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0186', '422', 'Heinz body', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0187', '', 'Helicobacter pylori C/S', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0188', '548', 'Helicobacter pylori lgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0189', '549', 'Helicobacter pylori lgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0190', '', 'Hemosiderin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0191', '', 'Heroin (Morphine, Opiate)', 'SP', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0192', '', 'Heterophil Ab', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0193', '', 'Hippuric Acid', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0194', '', 'Histoplasmosis Ab', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0195', '', 'HIV  1-DNA [QUALITATIVE]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0196', '', 'HIV VIRAL LOAD [b - DNA]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0197', '', 'HLA Antibody [PRA]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0198', '', 'HLA B 27', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0199', '', 'HLA-AB Typing', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0200', '', 'Homocysteine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0201', '', 'HSV C/S', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0202', '554', 'HSV I & II lgG(Herpes Simplex)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0203', '555', 'HSV I & II lgM(Herpes Simplex)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0204', '', 'Immuno electrophoresis', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0205', '', 'IMMUNOGLOBULIN  level', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0206', '', 'IMMUNOGLOBULIN  lgE', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0207', '', 'Immunoglobulin lgA level', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0208', '', 'Immunoglobulin lgG level', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0209', '', 'Immunoglobulin lgG subclass', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0210', '', 'Immunoglobulin lgM level', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0211', '', 'Immunoglobulin Specific IgE[ ระบุ....]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0212', '415', 'Influenza Ab', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0213', '', 'Isoniazid [INH]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0214', '', 'Isopropanol  in  Urine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0215', '', 'Japanese B Ab [lgG]  in  serum', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0216', '', 'Japanese B Ab [lgM]  in  serum', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0217', '599', 'JE lgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0218', '', 'Lactate', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0219', '', 'Lead in clot blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0220', '', 'Lead in EDTA blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0221', '', 'Lead in hair', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0222', '', 'Lead in urine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0223', '591', 'Legionella Ab [lgG]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0224', '592', 'Legionella Ab [lgM]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0225', '', 'Legionella Ag', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0226', '', 'Leptospira c/s', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0227', '566', 'LEPTOSPIRA   Ab  lgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0228', '567', 'LEPTOSPIRA  Ab lgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0229', '', 'Leukocyte alkaline phosphatase stain', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0230', '', 'Lipoprotein(a)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0231', '351', 'LIPOPROTEIN ELECTROPHORESIS', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0232', '344', 'Lithium', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0233', '', 'lron', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0234', '', 'Lupus Anticoagulant', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0235', '', 'Lymphocyte marker [flow cytometry]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0236', '', 'Mandelic Acid [Stylene]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0237', '', 'Manganese [Mn]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0238', '', 'Marijuana', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0239', '561', 'MEASLE  lgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0240', '562', 'MEASLE  lgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0241', '527', 'MELIOIDOSIS Ab', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0242', '', 'Mercury  in  EDTA  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0243', '', 'Metabolic screen', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0244', '', 'Metanephrine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0245', '', 'Methadone  in  Urine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0246', '', 'Methanol  in  NaF', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0247', '', 'Methemoglobin Level', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0248', '', 'Methyl Bromide', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0249', '', 'Methyle Ethyl Ketone', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0250', '', 'Metrotrexate (MTX)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0251', '542', 'MICROSOMAL Ab', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0252', '529', 'MONOSPOT', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0253', '563', 'MUMP lgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0254', '564', 'MUMP lgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0255', '', 'Murin typhus', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0256', '', 'Mycobacteriums DNA [Qualitative]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0257', '578', 'MYCOPLASMA lgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0258', '579', 'MYCOPLASMA lgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0259', '1120', 'Myoglobin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0260', '', 'N.MENINGITIDIS Ag', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0261', '', 'Nikle', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0262', '1129', 'NK cells', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0263', '1124', 'Norepinephrine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0264', '', 'Normetanephrine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0265', '', 'NT-ProBNP', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0266', '', 'Oligoclonal band', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0267', '', 'Opiate (Morphine, Heroin)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0268', '', 'Organophosphate', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0269', '', 'PAP smear', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0270', '', 'Paracetamol in blood (Acetaminophen)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0271', '', 'Paracetamol in gastric (Acetaminophen)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0272', '', 'Paragonimus Ab.', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0273', '', 'Paraquat [Gramoxone]  in  EDTA  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0274', '', 'Parathione', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0275', '', 'PCR for Chlamydia pneumoniae', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0276', '', 'PCR for Chlamydia trachomatis', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0277', '', 'PCR for CMV [Qualitative] in  CSF', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0278', '', 'PCR for Dengue [Qualitative]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0279', '', 'PCR for EBV [Qualitative]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0280', '', 'PCR for HBV [Qualitative]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0281', '', 'PCR for HSV [Qualitative]  in  CSF', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0282', '', 'PCR for VZV [Qualitative]  in  CSF', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0283', '', 'Pemphigus Ab', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0284', '', 'Pesticide Screening', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0285', '', 'Phenobarbital', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0286', '594', 'Phenothiazine (Screening)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0287', '', 'Phenylketouria', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0288', '', 'Phenytoin (Dilantin)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0289', '', 'Piroxicam (Feldene)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0290', '', 'PKU', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0291', '', 'Plasma amino acid', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0292', '421', 'Platelet Aggregation', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0293', '', 'Pneumocystic carinii', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0294', '', 'Porphobilinogen', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0295', '', 'Porphyrin [FEP,Zpp]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0296', '', 'Protein C', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0297', '352A', 'PROTEIN ELECTROPHORESIS', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0298', '', 'Protein S', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0299', '', 'Prothrombin gene 20210', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0300', '', 'Pyrazenamide', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0301', '', 'Quinidine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0302', '', 'Quinine Level', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0303', '', 'Rabies Ab', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0304', '', 'Rabies Ag  (น้ำลาย)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0305', '', 'Renin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0306', '', 'Riboflavin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0307', '', 'Rickettsia Ab', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0308', '', 'Rifampicin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0309', '', 'Ristocetin Cofactor', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0310', '', 'Rivotil', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0311', '570', 'Rota virus', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0312', '', 'RSV [Respiratory Virus] culture/FA TEST', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0313', '519', 'RUBELLA lgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0314', '521', 'RUBELLA lgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0315', '', 'S.PNEUMONIAE Ag', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0316', '', 'Salicylate', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0317', '', 'Schistosomal Ab.', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0318', '', 'Screen Common Drugs  in  Urine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0319', '', 'Scrub Typhus', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0320', '', 'Serum Inhibition', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0321', '', 'Sex Hormone Binding Globulin [SHBG]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0322', '', 'Silver', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0323', '', 'Squamous Cell CA Ag [SCC Ag]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0324', '', 'Steroid [Qualitative]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0325', '', 'Stone Analysis', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0326', '', 'STREPTOCOCCUS B Ag', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0327', '', 'TB  PCR', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0328', '', 'Thallium', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0329', '', 'Theophylline (Aminophylline)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0330', '', 'Thiamine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0331', '', 'Thinner [Toluene]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0332', '', 'Thiocyanate', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0333', '543', 'THYROGLOBULIN Ab', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0334', '', 'Thyroglobulin level', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0335', '', 'Thyroid Stimulating lmmunoglobulin [TSI]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0336', '', 'Thyroxine binding globulin [TBG]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0337', '', 'TIN [Sn]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0341', '', 'Tobramycin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0342', '', 'Toxocara Ab.', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0343', '540', 'TOXOPLASMA lgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0344', '541', 'TOXOPLASMA lgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0345', '', 'TPS [Tissue polopeptide specific Ag]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0346', '', 'Trichinosis Ab', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0347', '', 'Trichloro-compounds [TCA]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0348', '', 'Triple Screening', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0349', '', 'Tricyclic drug  in  Gastric  content', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0350', '', 'Tryptanol', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0351', '', 'UIBC', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0352', '', 'Unconjugated estriol [E3]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0353', '', 'Urea plasma culture', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0354', '', 'Uric crystal', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0355', '', 'Urine organic acid', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0356', '', 'Uroporphyrin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0357', '', 'Valium', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0358', '', 'Vancomycin', 'SP', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0359', '', 'Vericella Zoster Virus lgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0360', '', 'Vericella Zoster Virus lgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0361', '', 'VIP [Vasoactive intestinal polypeptide]', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0362', '', 'Vitamin A', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0363', '', 'Vitamin B1', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0364', '', 'Vitamin B12', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0365', '', 'Vitamin B2', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0366', '', 'Vitamin B6', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0367', '', 'VMA ', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0368', '', 'Von willebrand factor', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0369', '', 'Xylene', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0370', '', 'Zinc', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0371', '', 'Zincphosphide', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0372', '', 'Beta-2 Microglobulin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0373', '', 'Others', 'SP', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0384', '', 'Associated Finding', 'SP', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0385', '', 'Suggestion', 'SP', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0386', '', 'Grass Mix', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0387', '', 'BermudaGrass', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0388', '', 'Ragwd Mix I', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0389', '', 'Pigweed Mix', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0390', '', 'Alternaria', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0391', '', 'Aspergillus', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0392', '', 'Candida', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0393', '', 'Cladosporium', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0394', '', 'Penicillium', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0395', '', 'Feather Mix', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0396', '', 'Cat', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0397', '', 'Dog', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0398', '', 'CockroachMix', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0399', '', 'Housedust', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0400', '', 'Mite,pterony', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0401', '', 'Mite,farinae', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0402', '', 'Acantamoeba  in  fluid', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0403', '', 'Adeno  Virus in CSF', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0404', '', 'Adenosine deaminase (ADA) in  Pleura fluid', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0405', '', 'Adenosine deaminase (ADA) in  CSF', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0406', '', 'ALA-D (Blood) in  Fresh  NaF', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0407', '', 'Aldosterone in  Urine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0408', '', 'Aldosterone in  Heparinized  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0409', '', 'Amitryptyline (Common Drug Screen) in Urine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0410', '', 'Angiostrongilus in  CSF', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0411', '', 'Angiotensin converting Enzyme in  CSF', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0412', '', 'Anti Histamine in  Gastric  content', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0413', '', 'Arsenic(Screening) ', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0414', '', 'Arsenic  in  EDTA  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0415', '', 'Arsenic  in  Hair', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0416', '', 'Arsenic  in  Nail', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0417', '', 'Barbiturate (Screening) in  Gastric  content', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0418', '', 'Barrium  in  EDTA  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0419', '', 'Benzodiazepine  in  Gastric  content', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0420', '', 'Chromium  in  Urine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0421', '', 'Chromium  in  Hair', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0422', '', 'Copper   in  Heparinzed  plasma', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0423', '', 'Copper  in  Urine  24  hrs.', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0424', '', 'Cyanide  in  Gastric  content', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0425', '', 'Cyanide  in  Random  Urine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0426', '', 'Cysticercosis  in  CSF', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0427', '', 'FISH for BCR/ABL  in  Bone  marrow', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0428', '', 'FISH for T [15,17]  in  Bone  marrow', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0429', '', 'Isopropanol  in  NaF  plasma', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0430', '', 'Japanese B Ab [lgG]  in  CSF', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0431', '', 'Japanese B Ab [lgM]  in  CSF', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0432', '', 'Mercury  in  Heparinized  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0433', '', 'Mercury  in  Random  Urine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0434', '', 'Methadone  in  Clot  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0435', '', 'Methadone  in  Gastric  content', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0436', '', 'Methanol  in  Urine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0437', '', 'Paraquat [Gramoxone] in  Urine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0438', '', 'Paraquat [Gramoxone]  in  Gastric  content', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0439', '', 'PCR for CMV [Qualitative]  in  EDTA  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0440', '', 'PCR for HSV [Qualitative]  in  EDTA  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0441', '', 'PCR for VZV [Qualitative] in  EDTA  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0442', '', 'Rabies Ag  in  Urine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0443', '', 'Rabies Ag  (ผิวหนังบริเวณท้ายทอย)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0444', '', 'Screen Common Drugs in  Gastric content', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0445', '', 'Screen Common Drugs in  Clot  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0446', '', 'Tricyclic drug  in  Urine', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0447', '', 'Tricyclic drug  in  Clot  blood', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0448', '', 'Gnathostoma Ab.  in  CSF', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0449', '335A', 'CREATININE', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0450', '335B', 'VMA (URINE VANILLYL MANDELIC ACID)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0451', '352B', 'Albumin', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0452', '352C', 'Alpha 1', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0453', '352D', 'Alpha 2', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0454', '352E', 'Beta 1', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0455', '352F', 'Beta 2', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0456', '352G', 'Gamma', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0457', '418A', 'OSMOTIC FRAGILITY (OF test)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0458', '418B', 'Hb E Screening Test (DCIP)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0459', '418C', 'Hb A', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0460', '418D', 'Hb A2', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0461', '418E', 'Hb E', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0462', '418F', 'Hb F', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0463', '418G', 'Hb Bart\"s', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0464', '418H', 'Hb H', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0465', '418I', 'OTHER', 'SP', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0466', '418J', 'COMMENT', 'SP', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0467', '418K', 'ข้อเสนอแนะ', 'SP', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0468', '418L', 'PCR Alpha-thalassemia 1', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0469', '536', 'Anti nRnP', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0470', '537A', 'ANF (ANTINUCLEARFACTOR)', 'SP', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0471', '537B', 'ANTI - ds DNA (ANTI - DOUBLE STAIN DNA )', 'SP', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0472', '537C', 'ANTI - Sm', 'SP', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0473', '537D', 'ANTI - nRNP', 'SP', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0474', '552', 'Epstein Bar virus (VCA)  IgG', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0475', '553', 'Epstein Bar virus (VCA)  IgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0476', '575', 'Scrub  Typhus  Ig M', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0477', '576', 'Scrub  Typhus  Ig M (Pair  serum)', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0478', '582B', 'Anti-Cardiolipin  IgM', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0479', '590', 'ampyylobacter  jajini', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0480', '119', 'Microfilaria', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SPT0481', '1123', 'NETILMICIN', 'SP', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0001', '', 'VDRL  in  Serum', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0002', '539', 'TPHA', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0003', '504C', 'S.typhi O Antigen', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0004', '504D', 'S.typhi H Antigen', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0005', '504A', 'S.paratyphi group A', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0006', '504B', 'S.paratyphi group B', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0007', '503A', 'OX -2', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0008', '503B', 'OX -19', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0009', '503C', 'OX -K', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0010', '502', 'RHEUMATOID FACTOR', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0011', '528', 'ASO(ANTI STREPTOLYSIN O)', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0012', '526', 'COLD AGGLUTININ', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0013', '1023', 'CH50', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0014', '510A', 'SPECIMEN', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0015', '', 'ANTI HIV', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0016', '506', 'ANTI HIV stat', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0017', '517', 'HIV Ag', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0018', '518A', 'Screeening Anti HIV', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0019', '', 'CD4', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0020', '1020', 'CD8', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0021', '1018', 'CD4/CD8', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0022', '507A', 'Result', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0023', '508B', 'RESULT', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0024', '513', 'ANTI HBc(Total)', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0025', '514', 'ANTI HBc IgM', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0026', '511', 'HBe Ag', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0027', '512', 'ANTI HBe', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0028', '515', 'Anti HAV Ig.G', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0029', '516', 'ANTI HAV IgM', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0030', '538A', 'ANTI HCV', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0031', '', 'HDV Ab', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0032', '544', 'C3 COMPLEMENT(Beta1C)', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0033', '', 'C4 COMPLEMENT', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0034', '', 'C - REACTIVE PROTEIN [ CRP ]', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0035', '', 'TRANSFERRIN', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0036', '405', 'BETA  HCG', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0037', '406', 'CORTISOL HORMONE', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0038', '407', 'ESTRADIOL(E2)', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0039', '1035', 'Estriol [E3]', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0040', '408', 'FSH', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0041', '411', 'LH', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0042', '412', 'PROGESTERONE', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0043', '414', 'PROLACTIN', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0044', '413', 'TESTOSTERONE', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0045', '400', 'T3', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0046', '404', 'FREE T3', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0047', '401', 'T4', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0048', '402', 'FREE T4', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0049', '403', 'TSH', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0050', '', 'PARATHYROID', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0051', '410', 'INSULIN', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0052', '409', 'GROWTH  HORMONE', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0053', '531', 'AFP', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0054', '532', 'CEA', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0055', '560', 'PSA(Prostatic Specific Ag)', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0056', '557', 'CA 12-5', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0057', '556', 'CA 15-3', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0058', '558', 'CA 19-9', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0059', '', 'FREE PSA ', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0060', '347', 'OSMOLALITY [SERUM]', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0061', '348', 'OSMOLALITY [URINE]', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0062', '', 'FREE PSA/TOTAL PSA', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0063', '518B', 'GP160', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0064', '518C', 'GP110/120', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0065', '518D', 'P66', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0066', '518E', 'P55', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0067', '518F', 'P51', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0068', '518G', 'GP41', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0069', '518H', 'P39', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0070', '518I', 'P31', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0071', '518J', 'P24/25', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0072', '518K', 'P17', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0073', '518L', 'Anti HIV confirmed', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0074', '', 'VDRL  in  CSF', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0075', '498', 'AMPHETAMINE (Thepniramit)', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0076', '499', 'AMPHETAMINE (THAIYANYOL)', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0077', '5030B', 'Result :', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0078', '5050A', 'TV', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0079', '5050B', 'Fungus', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0080', '505A', 'Result', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0081', '508A', 'SPECIMEN', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0082', '510B', 'RESULT', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0083', '571A', 'SPECIMEN', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0084', '571B', 'RESULT', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0085', '572A', 'PKU', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0086', '572B', 'TSH', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0087', '572C', '17OHP', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0088', '572D', 'ผลการตรวจคัดกรอง', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0089', '573A', 'TSH', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0090', '573B', 'T3', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0091', '573C', 'T4', 'SR', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('SRT0092', '574', 'การส่งตรวจวินิจฉัยไข้หวัดนก', 'SR', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('STT0001', '220A', 'Color', 'ST', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('STT0002', '220B', 'Appearance', 'ST', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('STT0003', '220C', 'WBC', 'ST', '2', '02', '0', '0', '0', '1', '1', '0', '');
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('STT0004', '220D', 'RBC', 'ST', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('STT0005', '220E', 'Parasite', 'ST', '5', '02', '0', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('STT0006', '221', 'STOOL OCCULT BLOOD', 'ST', '2', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('STT0007', '', 'STOOL CONCENTRATION', 'ST', '1', '02', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('STT0010', '-', 'IMG ทดสอบ', 'ST', '6', '02', '0', '0', '0', '1', '1', '-', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0001', '200A', 'Color', 'UR', '2', '05', '0', '0', '0', '1', '1', '-', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0002', '200B', 'Appearance', 'UR', '2', '05', '0', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0003', '200C', 'Sp.Gr.', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0004', '200D', 'pH', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0005', '200E', 'Protein', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0006', '200F', 'Glucose', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0007', '200G', 'Ketone', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0008', '200H', 'Blood', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0009', '200K', 'WBC', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0010', '200L', 'RBC', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0011', '200M', 'Epithelial', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0012', '200J', 'Bacteria', 'UR', '2', '05', '0', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0013', '200I', 'Mucous', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0014', '200N', 'Amorphous', 'UR', '2', '05', '0', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0015', '200O', 'Crystal', 'UR', '4', '05', '0', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0016', '200P', 'Cast', 'UR', '4', '05', '0', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0017', '200Q', 'Other', 'UR', '4', '05', '0', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0018', '206', 'Bile', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0019', '208', 'PREGNANCY TEST', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0033', '', 'Urine 24 hrs. Protein', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0034', '', 'Urine 24 hrs. Creatinine', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0035', '', 'Urine 24 hrs. Urea-N', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0036', '', 'Urine 24 hrs. Sodium', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0037', '', 'Urine 24 hrs. Potassium', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0038', '', 'Urine 24 hrs. Cr.Clearance', 'UR', '1', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0039', '207', 'Urobilinogen', 'UR', '1', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0040', '201', 'Sp.gr', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0041', '202', 'pH', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0042', '203', 'URINE PROTEIN STRIP', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0043', '204', 'URINE SUGAR STRIP', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0044', '205', 'Ketone (Urine)', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0045', '209', 'AMPHETAMINE', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0046', '211A', 'Urine Na+', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0047', '211B', 'Urine K+', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0048', '210', 'MORPHINE/HEROINE/OPIATE', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0049', '212A', 'Urine Na', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0050', '212B', 'Urine K', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0051', '212C', 'Urine Cl', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0052', '213A', 'CREATININE', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0053', '213B', 'VMA (URINE VANILLYL MANDELIC ACID)', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0054', '234A', 'COLOR', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0055', '234B', 'APPEARANCE', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0056', '234C', 'WBC', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0057', '234D', 'RBC', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0058', '234E', 'Neutrophil', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0059', '234F', 'Mononuclear cell', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);
INSERT INTO `tbl_setup_lab_items_copy` VALUES ('URT0060', '234G', 'OTHER', 'UR', '2', '05', '', '0', '0', '1', '1', '0', null);

-- ----------------------------
-- Table structure for `tbl_setup_lab_medthod`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_lab_medthod`;
CREATE TABLE `tbl_setup_lab_medthod` (
  `idlab` varchar(50) NOT NULL DEFAULT '',
  `medthod` text,
  PRIMARY KEY (`idlab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_lab_medthod
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_setup_lab_position`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_lab_position`;
CREATE TABLE `tbl_setup_lab_position` (
  `PID` varchar(100) NOT NULL DEFAULT '',
  `P_X` int(4) NOT NULL DEFAULT '0',
  `P_Y` int(4) NOT NULL DEFAULT '0',
  `Favorites` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`PID`,`P_X`,`P_Y`,`Favorites`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of tbl_setup_lab_position
-- ----------------------------
INSERT INTO `tbl_setup_lab_position` VALUES ('AFB001', '756', '63', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('AUD001', '261', '70', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH002', '36', '262', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH003', '36', '283', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH004', '35', '111', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH005', '36', '175', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH006', '36', '196', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH007', '36', '219', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH008', '36', '240', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH014', '36', '304', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH015', '37', '324', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH016', '37', '344', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH023', '35', '132', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH044', '172', '30', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH045', '36', '153', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH046', '172', '49', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH061', '172', '71', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH062', '34', '30', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH070', '173', '158', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH071', '172', '137', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH072', '173', '179', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH073', '173', '199', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH074', '173', '219', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH075', '173', '240', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH078', '172', '94', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH079', '172', '115', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH080', '34', '51', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH081', '427', '149', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH082', '427', '166', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH083', '428', '183', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH084', '428', '201', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH085', '428', '221', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH086', '429', '241', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH087', '430', '260', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH088', '431', '280', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH089', '431', '299', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH090', '433', '318', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CH091', '432', '339', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CXD001', '224', '323', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('CXR001', '224', '301', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('EKG001', '224', '344', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('FBS001', '34', '89', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('HAS001', '262', '91', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('HT001', '34', '69', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('HT002', '312', '219', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('HT003', '312', '237', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('HT004', '312', '256', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('HT005', '312', '278', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('HT006', '312', '300', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('HT007', '312', '322', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('HT008', '312', '343', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('HT009', '466', '25', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('HT010', '466', '46', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('HT011', '467', '66', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('HT012', '468', '84', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('INN001', '766', '99', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('INN002', '768', '116', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('INN003', '768', '135', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('INN004', '769', '154', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('INN005', '769', '173', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('INN006', '770', '192', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('INN007', '771', '211', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('LBS001', '263', '112', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('OCV001', '261', '31', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('PAU001', '774', '280', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('PE001', '224', '282', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('REG001', '773', '259', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('SPI001', '261', '51', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('ST001', '265', '151', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('ST002', '265', '171', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('STR001', '756', '42', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR001', '605', '22', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR002', '605', '41', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR003', '755', '20', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR004', '605', '59', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR005', '606', '77', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR006', '534', '110', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR007', '534', '127', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR008', '534', '144', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR009', '534', '162', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR010', '534', '181', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR011', '535', '201', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR012', '535', '221', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR013', '535', '241', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR014', '535', '262', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR015', '535', '282', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR016', '535', '302', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR017', '535', '323', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR018', '646', '107', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR019', '647', '126', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR020', '646', '146', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR021', '647', '167', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR022', '648', '186', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR023', '648', '205', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR024', '648', '224', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR025', '649', '247', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR026', '649', '267', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR027', '649', '286', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR028', '653', '323', '0');
INSERT INTO `tbl_setup_lab_position` VALUES ('UR029', '653', '341', '0');

-- ----------------------------
-- Table structure for `tbl_setup_lab_price`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_lab_price`;
CREATE TABLE `tbl_setup_lab_price` (
  `PID` varchar(100) NOT NULL DEFAULT '',
  `TU1` float DEFAULT NULL,
  `TU2` float DEFAULT NULL,
  `TU3` float DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of tbl_setup_lab_price
-- ----------------------------
INSERT INTO `tbl_setup_lab_price` VALUES ('BB001', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB002', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB003', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB004', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB005', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB006', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB007', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB008', '400', '400', '400');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB009', '400', '400', '400');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB010', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB011', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB012', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB013', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB014', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB015', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB016', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB017', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB018', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB019', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB020', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB021', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB022', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB023', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB024', '400', '400', '400');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB025', '400', '400', '400');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB026', '600', '600', '600');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB027', '600', '600', '600');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB028', '300', '300', '300');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB029', '400', '400', '400');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB030', '600', '600', '600');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB031', '600', '600', '600');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB032', '600', '600', '600');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB033', '400', '400', '400');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB034', '400', '400', '400');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB035', '400', '400', '400');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB036', '400', '400', '400');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB037', '400', '400', '400');
INSERT INTO `tbl_setup_lab_price` VALUES ('BB038', '400', '400', '400');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH001', '100', '80', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH002', '100', '80', '60');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH003', '100', '120', '140');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH004', '100', '140', '180');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH005', '80', '120', '100');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH006', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH007', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH008', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH009', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH010', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH011', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH012', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH013', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH014', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH015', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH016', '60', '70', '80');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH017', '100', '100', '100');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH018', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH019', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH020', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH021', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH022', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH023', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH024', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH025', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH026', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH027', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH028', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH029', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH030', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH031', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH032', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH033', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH034', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH035', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH036', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH037', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH038', '300', '300', '300');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH039', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH040', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH041', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH042', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH043', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH044', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH045', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH046', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH070', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH071', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH072', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH073', '250', '250', '250');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH074', '200', '200', '200');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH075', '300', '300', '300');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH076', '100', '120', '120');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH077', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH078', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH079', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH080', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH081', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH082', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH083', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH084', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH085', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH086', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH087', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH088', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH089', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH090', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH091', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH092', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH093', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH094', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH095', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH096', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH097', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH098', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH099', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH100', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH101', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('CH102', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT001', '100', '150', '100');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT002', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT003', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT004', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT005', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT006', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT007', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT008', '400', '400', '400');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT009', '500', '600', '700');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT010', '300', '350', '400');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT011', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT012', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT013', '1500', '1600', '1000');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT014', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT015', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT016', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT017', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT018', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT019', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT020', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT021', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT022', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT023', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT024', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT025', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT026', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT027', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT028', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT029', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT030', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT032', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT033', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('HT034', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC001', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC002', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC003', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC004', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC005', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC006', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC007', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC008', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC009', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC010', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC011', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC012', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC013', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC014', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC015', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC016', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC017', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC018', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC019', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC020', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC021', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC022', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC023', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('MC024', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('PA001', '100', '100', '100');
INSERT INTO `tbl_setup_lab_price` VALUES ('PA005', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('PA111', '500', '500', '500');
INSERT INTO `tbl_setup_lab_price` VALUES ('PA114', '2000', '2000', '2000');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP001', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP002', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP003', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP004', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP018', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP022', '400', '400', '400');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP029', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP030', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP031', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP036', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP037', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP041', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP055', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP060', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP061', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP064', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP092', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP093', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP099', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP100', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP106', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP107', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP108', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP110', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP113', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP115', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP126', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP137', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP140', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP154', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP155', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP167', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP169', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP170', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP183', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP184', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP193', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP198', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP204', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP205', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP208', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP209', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP212', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP213', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP214', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP220', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP221', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP222', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP232', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP233', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP234', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP235', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP238', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP239', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP240', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP243', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP244', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP246', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP267', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP273', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP278', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP292', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP294', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP295', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP314', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP324', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP325', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP348', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP402', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP403', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP404', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP405', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP406', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP407', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP408', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP409', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SP410', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR001', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR002', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR003', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR004', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR005', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR006', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR007', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR008', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR009', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR010', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR011', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR012', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR013', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR014', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR015', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR016', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR017', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR018', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR019', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR020', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR021', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR022', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR023', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR024', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR025', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR026', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR027', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR028', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR029', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR030', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR031', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR032', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR033', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR034', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR035', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR036', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR037', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR038', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR039', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR040', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR041', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR042', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR043', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR044', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR045', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR046', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR047', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR048', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR049', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR050', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR051', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR052', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR053', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR054', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR055', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR056', '50', '50', '60');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR057', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR058', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR059', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR060', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR061', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR062', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('SR063', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('ST001', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('ST002', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('ST003', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('ST004', '230', '250', '210');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR001', '200', '150', '400');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR002', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR003', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR004', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR005', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR006', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR007', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR008', '50', '50', '50');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR009', '500', '500', '500');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR010', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR011', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR012', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR013', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR014', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR015', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR016', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR017', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR018', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR019', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR020', '0', '0', '0');
INSERT INTO `tbl_setup_lab_price` VALUES ('UR021', '0', '0', '0');

-- ----------------------------
-- Table structure for `tbl_setup_lab_profile`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_lab_profile`;
CREATE TABLE `tbl_setup_lab_profile` (
  `ID` varchar(100) NOT NULL DEFAULT '',
  `profine_ID` varchar(100) NOT NULL DEFAULT '',
  `Fg` int(4) DEFAULT NULL,
  `CheckUp` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`,`profine_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of tbl_setup_lab_profile
-- ----------------------------
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0102', 'CH084', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0002', 'CH002', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0085', 'CH073', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0004', 'CH004', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0005', 'CH005', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0006', 'CH006', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0036', 'UR020', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0007', 'CH007', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0093', 'CH080', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0087', 'CH075', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0080', 'CH061', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0086', 'CH074', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0035', 'UR019', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0009', 'CH009', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0010', 'CH011', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0009', 'CH011', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0010', 'CH010', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0034', 'UR018', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0011', 'CH011', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0012', 'CH012', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0033', 'UR017', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0032', 'UR016', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0013', 'CH013', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0014', 'CH014', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0031', 'UR015', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0029', 'HT013', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0015', 'CH015', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0016', 'CH016', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0028', 'UR012', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0081', 'CH062', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0017', 'CH017', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0017', 'CH018', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0018', 'CH019', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0018', 'CH017', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0019', 'CH017', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0019', 'CH020', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0020', 'CH021', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0020', 'CH017', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0021', 'SP408', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0022', 'CH023', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0019', 'UR0046', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0070', 'HT0012', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0023', 'CH024', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0088', 'CH076', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0069', 'HT0011', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0025', 'CH026', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0026', 'SP411', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0094', 'CH081', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0027', 'CH028', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0028', 'CH029', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0029', 'CH030', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0030', 'CH031', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0031', 'CH031', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0032', 'CH031', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0033', 'CH031', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0034', 'CH031', '4', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0035', 'CH032', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0036', 'CH033', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0037', 'CH034', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0092', 'CH063', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0038', 'CH035', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0039', 'CH036', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0040', 'CH037', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0041', 'CH038', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0042', 'CH038', '1', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0043', 'CH038', '2', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0044', 'CH038', '3', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0045', 'CH039', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0049', 'SP407', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0077', 'CH044', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0078', 'CH045', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0090', 'CH078', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0091', 'CH079', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0082', 'CH070', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0084', 'CH072', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0083', 'CH071', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0079', 'CH046', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0081', 'CH080', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0003', 'CH003', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0096', 'CH082', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0101', 'CH083', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0096', 'CH008', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0103', 'CH085', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0104', 'CH086', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0061', 'HT002', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0060', 'HT001', '17', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0002', 'HT025', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0015', 'HT001', '16', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0003', 'HT025', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0004', 'HT025', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0014', 'HT001', '15', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0005', 'HT025', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0013', 'HT001', '14', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0012', 'HT001', '13', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0006', 'HT025', '4', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0071', 'HT003', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0011', 'HT001', '12', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0010', 'HT001', '11', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0062', 'HT004', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0063', 'HT005', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0009', 'HT001', '10', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0008', 'HT001', '9', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0010', 'HT022', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0011', 'HT023', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0007', 'HT001', '8', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0058', 'HT001', '7', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0012', 'HT024', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0038', 'HT001', '6', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0064', 'HT006', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0014', 'HT012', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0006', 'HT001', '5', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0005', 'HT001', '4', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0065', 'HT007', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0068', 'HT0010', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0067', 'HT009', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0027', 'HT015', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0028', 'HT016', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0029', 'HT017', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0030', 'HT011', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0031', 'HT019', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0032', 'HT019', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0033', 'HT019', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0033', 'HT026', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0034', 'HT020', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0035', 'HT020', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0036', 'HT021', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0037', 'HT021', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0004', 'HT001', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0052', 'HT027', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0053', 'HT028', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0054', 'HT029', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0056', 'HT010', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0066', 'HT008', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0003', 'HT001', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0002', 'HT001', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0001', 'MC001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0002', 'MC002', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0003', 'MC003', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0003', 'MC022', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0004', 'MC003', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0005', 'MC003', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0005', 'MC022', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0017', 'MC004', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0019', 'MC004', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0022', 'MC004', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0024', 'MC005', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0025', 'MC005', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0026', 'MC005', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0027', 'MC005', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0028', 'MC005', '4', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0029', 'MC005', '5', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0031', 'MC006', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0032', 'MC007', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0033', 'MC008', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0034', 'MC009', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0035', 'MC010', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0036', 'MC011', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0037', 'MC012', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0038', 'MC013', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0040', 'MC015', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0046', 'MC017', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0049', 'MC018', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0052', 'MC018', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0053', 'MC018', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0054', 'MC018', '4', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0055', 'MC018', '5', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0065', 'MC021', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0066', 'MC022', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0067', 'MC023', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0070', 'MC018', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0073', 'MC025', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0074', 'MC026', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0077', 'MC027', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0078', 'MC028', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0079', 'MC029', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0080', 'MC030', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('MCT0081', 'MC031', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0002', 'PA002', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0004', 'PA004', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0016', 'PA016', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0020', 'PA020', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0021', 'PA021', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0031', 'PA031', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0033', 'PA033', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0038', 'PA038', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0039', 'PA039', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0040', 'PA040', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0041', 'PA041', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0042', 'PA042', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0043', 'PA043', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0044', 'PA044', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0045', 'PA045', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0047', 'PA046', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0048', 'PA047', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0049', 'PA048', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0050', 'PA049', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0051', 'PA050', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0052', 'PA051', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0053', 'PA052', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0054', 'PA053', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0055', 'PA054', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0056', 'PA055', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0057', 'PA056', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0058', 'PA057', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0059', 'PA058', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0060', 'PA059', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0061', 'PA060', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0062', 'PA061', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0063', 'PA062', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0064', 'PA063', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0065', 'PA064', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0068', 'PA067', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0069', 'PA068', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0071', 'PA070', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0072', 'PA071', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0073', 'PA072', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0074', 'PA073', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0075', 'PA074', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0076', 'PA075', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0077', 'PA076', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0078', 'PA077', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0079', 'PA078', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0080', 'PA079', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0081', 'PA080', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0082', 'PA081', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0083', 'PA082', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0084', 'PA083', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0085', 'PA084', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0086', 'PA085', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0087', 'PA086', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0088', 'PA087', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0089', 'PA088', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0090', 'PA089', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0091', 'PA090', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0092', 'PA091', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0093', 'PA092', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0094', 'PA093', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0095', 'PA094', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0096', 'PA095', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0097', 'PA096', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0098', 'PA097', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0099', 'PA098', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0100', 'PA099', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0101', 'PA100', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0102', 'PA101', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0103', 'PA102', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0104', 'PA103', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0105', 'PA104', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0106', 'PA105', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0107', 'PA106', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0108', 'PA107', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0109', 'PA108', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0110', 'PA109', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0111', 'PA110', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0113', 'PA112', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0115', 'PA111', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0116', 'PA111', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0117', 'PA111', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0118', 'PA111', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0119', 'PA111', '4', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0120', 'PA114', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0121', 'PA115', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0122', 'PA120', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0123', 'PA121', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0126', 'PA124', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0134', 'PA119', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0135', 'PA118', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0136', 'PA117', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0137', 'PA122', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0138', 'PA123', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0139', 'PA125', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0140', 'PA126', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0141', 'PA116', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAT0142', 'PA127', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0001', 'SP001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0002', 'SP002', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0003', 'SP003', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0004', 'SP004', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0008', 'SP008', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0009', 'SP009', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0010', 'SP010', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0012', 'SP012', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0013', 'SP013', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0014', 'SP014', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0015', 'SP358', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0018', 'SP018', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0019', 'SP019', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0020', 'SP360', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0021', 'SP021', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0042', 'SP023', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0043', 'SP024', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0044', 'SP025', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0045', 'SP026', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0046', 'SP027', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0047', 'SP362', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0048', 'SP029', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0049', 'SP030', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0050', 'SP031', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0050', 'SP424', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0051', 'SP032', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0052', 'SP033', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0053', 'SP034', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0054', 'SP364', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0055', 'SP036', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0056', 'SP037', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0056', 'SP424', '1', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0057', 'SP038', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0058', 'SP039', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0059', 'SP040', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0060', 'SP041', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0061', 'SP042', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0062', 'SP043', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0063', 'SP044', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0064', 'SP045', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0065', 'SP046', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0066', 'SP047', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0067', 'SP048', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0068', 'SP049', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0069', 'SP050', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0070', 'SP051', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0071', 'SP052', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0072', 'SP053', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0073', 'SP054', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0074', 'SP055', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0075', 'SP056', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0075', 'SP366', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0076', 'SP057', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0077', 'SP058', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0078', 'SP059', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0079', 'SP060', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0080', 'SP370', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0081', 'SP062', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0082', 'SP063', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0083', 'SP064', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0084', 'SP065', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0085', 'SP372', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0086', 'SP067', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0087', 'SP068', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0088', 'SP069', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0089', 'SP070', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0090', 'SP071', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0091', 'SP072', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0092', 'SP073', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0093', 'SP074', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0094', 'SP075', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0095', 'SP076', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0096', 'SP077', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0097', 'SP078', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0098', 'SP079', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0099', 'SP080', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0100', 'SP081', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0101', 'SP082', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0102', 'SP083', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0103', 'SP084', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0104', 'SP085', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0105', 'SP086', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0106', 'SP087', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0107', 'SP088', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0108', 'SP089', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0109', 'SP090', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0110', 'SP091', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0111', 'SP092', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0112', 'SP093', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0113', 'SP094', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0114', 'SP095', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0115', 'SP096', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0116', 'SP097', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0118', 'SP099', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0119', 'SP100', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0120', 'SP101', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0121', 'SP376', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0122', 'SP103', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0123', 'SP104', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0124', 'SP105', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0125', 'SP106', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0126', 'SP107', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0127', 'SP108', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0128', 'SP109', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0129', 'SP379', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0130', 'SP111', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0131', 'SP112', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0132', 'SP113', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0133', 'SP114', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0134', 'SP115', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0135', 'SP116', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0136', 'SP117', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0137', 'SP118', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0138', 'SP119', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0139', 'SP120', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0140', 'SP121', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0141', 'SP122', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0142', 'SP123', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0143', 'SP124', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0144', 'SP125', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0145', 'SP126', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0146', 'SP127', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0147', 'SP128', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0148', 'SP129', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0149', 'SP130', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0150', 'SP131', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0151', 'SP132', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0152', 'SP133', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0153', 'SP134', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0154', 'SP135', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0155', 'SP136', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0156', 'SP137', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0157', 'SP138', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0158', 'SP139', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0159', 'SP140', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0160', 'SP141', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0161', 'SP381', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0162', 'SP143', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0163', 'SP144', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0164', 'SP145', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0165', 'SP146', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0166', 'SP147', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0167', 'SP148', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0168', 'SP149', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0169', 'SP150', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0170', 'SP151', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0171', 'SP152', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0172', 'SP153', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0173', 'SP154', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0174', 'SP155', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0175', 'SP156', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0176', 'SP157', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0177', 'SP158', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0178', 'SP159', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0179', 'SP160', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0180', 'SP161', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0181', 'SP162', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0182', 'SP163', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0183', 'SP164', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0184', 'SP165', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0185', 'SP166', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0186', 'SP167', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0187', 'SP168', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0188', 'SP169', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0189', 'SP170', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0190', 'SP171', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0191', 'SP172', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0192', 'SP173', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0193', 'SP174', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0194', 'SP175', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0195', 'SP176', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0196', 'SP177', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0197', 'SP178', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0198', 'SP179', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0199', 'SP180', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0200', 'SP181', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0202', 'SP183', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0203', 'SP184', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0204', 'SP185', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0205', 'SP186', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0206', 'SP187', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0207', 'SP188', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0208', 'SP189', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0209', 'SP190', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0210', 'SP191', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0211', 'SP192', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0212', 'SP193', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0213', 'SP194', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0214', 'SP383', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0215', 'SP196', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0216', 'SP385', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0217', 'SP198', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0218', 'SP199', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0219', 'SP200', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0220', 'SP201', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0221', 'SP202', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0222', 'SP203', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0223', 'SP204', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0224', 'SP205', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0225', 'SP206', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0226', 'SP207', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0227', 'SP208', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0228', 'SP209', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0229', 'SP210', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0230', 'SP211', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0231', 'SP212', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0232', 'SP213', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0234', 'SP215', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0235', 'SP216', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0236', 'SP217', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0237', 'SP218', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0238', 'SP219', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0239', 'SP220', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0240', 'SP221', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0241', 'SP222', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0242', 'SP223', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0243', 'SP224', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0244', 'SP225', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0245', 'SP389', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0246', 'SP227', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0247', 'SP228', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0248', 'SP229', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0249', 'SP230', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0250', 'SP231', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0251', 'SP232', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0252', 'SP233', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0253', 'SP234', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0254', 'SP235', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0255', 'SP236', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0256', 'SP237', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0257', 'SP238', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0258', 'SP239', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0259', 'SP240', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0261', 'SP242', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0262', 'SP243', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0263', 'SP244', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0264', 'SP245', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0265', 'SP246', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0266', 'SP247', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0267', 'SP248', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0268', 'SP249', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0270', 'SP251', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0271', 'SP252', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0272', 'SP253', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0273', 'SP392', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0274', 'SP255', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0275', 'SP256', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0276', 'SP257', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0277', 'SP258', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0278', 'SP259', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0279', 'SP260', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0280', 'SP261', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0281', 'SP394', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0282', 'SP263', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0283', 'SP264', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0284', 'SP265', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0285', 'SP266', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0286', 'SP267', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0287', 'SP268', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0288', 'SP269', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0289', 'SP270', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0290', 'SP271', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0291', 'SP272', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0292', 'SP273', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0293', 'SP274', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0294', 'SP275', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0295', 'SP276', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0296', 'SP277', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0297', 'SP278', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0298', 'SP279', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0300', 'SP281', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0305', 'SP286', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0306', 'SP287', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0307', 'SP288', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0308', 'SP289', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0309', 'SP290', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0310', 'SP291', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0311', 'SP292', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0314', 'SP295', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0315', 'SP296', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0316', 'SP297', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0317', 'SP298', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0318', 'SP299', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0319', 'SP300', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0320', 'SP301', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0321', 'SP302', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0322', 'SP303', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0323', 'SP304', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0324', 'SP305', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0325', 'SP306', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0326', 'SP307', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0327', 'SP308', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0328', 'SP309', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0329', 'SP310', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0330', 'SP311', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0331', 'SP312', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0332', 'SP313', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0333', 'SP314', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0334', 'SP315', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0335', 'SP316', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0336', 'SP317', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0337', 'SP318', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0341', 'SP322', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0342', 'SP323', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0343', 'SP324', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0344', 'SP325', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0345', 'SP326', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0346', 'SP327', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0347', 'SP328', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0348', 'SP329', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0349', 'SP401', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0350', 'SP331', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0351', 'SP332', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0352', 'SP333', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0353', 'SP334', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0355', 'SP336', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0356', 'SP337', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0357', 'SP338', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0358', 'SP339', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0359', 'SP340', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0360', 'SP341', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0361', 'SP342', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0362', 'SP343', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0363', 'SP344', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0364', 'SP345', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0365', 'SP346', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0366', 'SP347', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0367', 'SP348', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0368', 'SP349', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0369', 'SP350', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0370', 'SP351', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0371', 'SP352', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0372', 'SP353', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0402', 'SP355', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0403', 'SP356', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0404', 'SP015', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0405', 'SP357', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0406', 'SP359', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0407', 'SP020', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0408', 'SP361', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0409', 'SP028', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0410', 'SP363', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0411', 'SP035', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0412', 'SP365', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0414', 'SP367', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0415', 'SP368', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0416', 'SP369', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0417', 'SP061', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0418', 'SP371', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0419', 'SP066', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0420', 'SP373', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0421', 'SP374', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0422', 'SP102', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0423', 'SP375', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0424', 'SP377', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0425', 'SP378', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0426', 'SP110', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0427', 'SP380', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0428', 'SP142', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0429', 'SP195', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0430', 'SP384', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0431', 'SP197', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0432', 'SP386', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0433', 'SP387', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0434', 'SP226', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0435', 'SP388', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0436', 'SP390', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0437', 'SP254', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0438', 'SP391', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0439', 'SP393', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0440', 'SP262', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0441', 'SP395', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0444', 'SP398', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0445', 'SP399', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0446', 'SP330', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0447', 'SP400', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0448', 'SP382', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0450', 'SP409', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0451', 'SP409', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0452', 'SP438', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0454', 'SP413', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0455', 'SP414', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0457', 'SP416', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0459', 'SP418', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0460', 'SP424', '2', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0460', 'SP419', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0461', 'SP444', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0462', 'SP420', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0463', 'SP413', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0464', 'SP421', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0465', 'SP422', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0466', 'SP423', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0467', 'SP424', '3', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0468', 'SP425', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0469', 'SP426', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0470', 'SP427', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0471', 'SP428', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0472', 'SP429', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0473', 'SP430', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0474', 'SP431', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0475', 'SP432', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0476', 'SP433', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0477', 'SP434', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0478', 'SP435', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0479', 'SP436', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0480', 'SP437', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0481', 'SP439', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0482', 'SP440', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0483', 'SP441', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0484', 'SP442', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0485', 'SP443', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0486', 'SP445', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0487', 'SP446', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0488', 'SP447', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0489', 'SP448', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0490', 'SP449', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0491', 'SP450', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0001', 'SR001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0002', 'SR002', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0006', 'SR003', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0005', 'SR003', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0004', 'SR003', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0003', 'SR003', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0007', 'SR004', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0008', 'SR004', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0009', 'SR004', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0010', 'SR005', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0011', 'SR006', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0013', 'SR008', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0014', 'SR009', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0015', 'SR010', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0017', 'SR012', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0019', 'SR014', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0021', 'SR016', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0022', 'SR017', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0024', 'SR019', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0025', 'SR020', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0026', 'SR021', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0027', 'SR022', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0028', 'SR023', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0029', 'SR024', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0030', 'SR025', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0032', 'SR027', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0033', 'SR028', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0035', 'SR030', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0036', 'SR031', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0037', 'SR032', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0038', 'SR033', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0040', 'SR035', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0041', 'SR036', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0042', 'SR037', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0043', 'SR038', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0044', 'SR039', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0045', 'SR040', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0046', 'SR041', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0047', 'SR042', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0048', 'SR043', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0049', 'SR044', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0050', 'SR045', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0051', 'SR046', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0052', 'SR047', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0053', 'SR048', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0054', 'SR049', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0055', 'SR050', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0055', 'SR054', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0056', 'SR051', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0057', 'SR052', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0058', 'SR053', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0059', 'SR054', '1', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0060', 'SR055', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0061', 'SR056', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0062', 'SR054', '2', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0075', 'SR058', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0076', 'SR059', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0078', 'SR061', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0079', 'SR062', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0080', 'SR063', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0080', 'SR064', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0080', 'SR072', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0081', 'SR072', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0081', 'SR063', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0081', 'SR065', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0082', 'SR063', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0082', 'SR066', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0083', 'SR067', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0084', 'SR068', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0085', 'SR069', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0086', 'SR070', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0087', 'SR071', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0088', 'SR073', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SRT0089', 'SR074', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('STT0004', 'ST001', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('STT0003', 'ST001', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('STT0002', 'ST001', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('STT0001', 'ST001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('STT0006', 'ST002', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('STT0007', 'ST003', '0', '1');
INSERT INTO `tbl_setup_lab_profile` VALUES ('STT0010', 'ST004', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('STT0011', 'ST005', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('STT0012', 'ST006', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0018', 'UR002', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPI0001', 'SPI001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0003', 'UR037', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0003', 'UR038', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0004', 'UR038', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0004', 'UR037', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('OCV0001', 'OCV001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0019', 'UR003', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0026', 'UR0010', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('EKG0001', 'EKG001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0020', 'UR004', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0005', 'UR038', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0005', 'UR037', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0005', 'UR030', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0006', 'UR030', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0024', 'UR008', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0006', 'UR037', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0006', 'UR038', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0021', 'UR005', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CXD0001', 'CXD001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CXR0001', 'CXR001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0022', 'UR006', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0007', 'UR038', '4', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0007', 'UR037', '4', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0008', 'UR037', '5', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0008', 'UR038', '5', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0008', 'UR030', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PET0001', 'PE001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0023', 'UR007', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0008', 'UR001', '6', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0007', 'UR001', '5', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0006', 'UR001', '4', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0005', 'UR001', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0019', 'UR038', '10', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0025', 'UR009', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0019', 'UR037', '10', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0030', 'UR014', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('LBS0001', 'LBS001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HAS0001', 'HAS001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('AUD0001', 'AUD001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0040', 'UR024', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0042', 'UR026', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0045', 'UR029', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0029', 'UR038', '6', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0029', 'UR037', '6', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0037', 'UR021', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0003', 'UR001', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0004', 'UR001', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0044', 'UR028', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0032', 'UR037', '7', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0032', 'UR038', '7', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0034', 'UR031', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0035', 'UR031', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0036', 'UR031', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0037', 'UR031', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0038', 'UR039', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0038', 'UR031', '4', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0039', 'UR031', '5', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0039', 'UR039', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0040', 'UR031', '6', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0041', 'UR031', '7', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0042', 'UR031', '8', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0043', 'UR031', '9', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0044', 'UR031', '10', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0041', 'UR025', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0039', 'UR023', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0043', 'UR027', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0038', 'UR022', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0026', 'UR010', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0027', 'UR011', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0048', 'UR033', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0049', 'UR032', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0050', 'UR038', '8', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0050', 'UR037', '8', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0001', 'UR001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0051', 'UR034', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0052', 'UR035', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0053', 'UR036', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0054', 'UR037', '9', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('URT0054', 'UR038', '9', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('HTT0001', 'HT001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0001', 'CH001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('STT0005', 'ST001', '4', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('SPT0007', 'SP007', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0105', 'CH087', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0106', 'CH088', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0107', 'CH089', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0100', 'CHT090', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0108', 'CH090', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0109', 'CH091', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0008', 'CH092', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('VIS0001', 'VIS001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('FBS0001', 'FBS001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('STR0001', 'STR001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('AFB0001', 'AFB001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('REG0001', 'REG001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('INN0001', 'INN001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('INN0002', 'INN002', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('INN0003', 'INN003', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('INN0004', 'INN004', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('INN0005', 'INN005', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('INN0006', 'INN006', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('INN0007', 'INN007', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('PAU0001', 'PAU001', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0007', 'CH092', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0006', 'CH092', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0005', 'CH092', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0016', 'CH093', '7', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0015', 'CH093', '6', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0014', 'CH093', '5', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0013', 'CH093', '4', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0012', 'CH093', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0011', 'CH093', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0010', 'CH093', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0009', 'CH093', '0', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0020', 'CH094', '3', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0019', 'CH094', '2', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0018', 'CH094', '1', '0');
INSERT INTO `tbl_setup_lab_profile` VALUES ('CHT0017', 'CH094', '0', '0');

-- ----------------------------
-- Table structure for `tbl_setup_lab_profile_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_lab_profile_copy`;
CREATE TABLE `tbl_setup_lab_profile_copy` (
  `ID` varchar(100) NOT NULL DEFAULT '',
  `profine_ID` varchar(100) NOT NULL DEFAULT '',
  `Fg` int(4) DEFAULT NULL,
  `CheckUp` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`,`profine_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of tbl_setup_lab_profile_copy
-- ----------------------------
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('BB001', 'PP011', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('BBT0001', 'BB016', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('BBT0002', 'BB016', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('BBT0003', 'BB003', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('BBT0004', 'BB004', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('BBT0005', 'BB024', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('BBT0006', 'BB025', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('BBT0007', 'BB033', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('BBT0008', 'BB006', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('BBT0009', 'BB007', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('BBT0010', 'BB008', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('BBT0011', 'BB005', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('BBT0012', 'BB005', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('BBT0013', 'BB005', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH001', 'PPCK001', '1', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH002', 'PP001', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH003', 'PPCK001', '3', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH004', 'PPCK007', '6', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH005', 'PPCK004', '6', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH006', 'PPCK002', '7', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH007', 'PPCK004', '8', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH008', 'PPCK008', '10', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH009', 'PP002', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH010', 'PPCK008', '12', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH012', 'PPCK007', '12', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH013', 'PPCK008', '14', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH014', 'PP004', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH015', 'PP004', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH016', 'PPCK008', '17', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CH082', 'PP008', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0001', 'CH001', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0002', 'CH002', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0003', 'CH003', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0004', 'CH004', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0005', 'CH074', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0006', 'CH006', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0007', 'CH007', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0008', 'CH008', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0009', 'CH009', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0010', 'CH010', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0011', 'CH011', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0012', 'CH012', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0013', 'CH013', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0014', 'CH014', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0015', 'CH015', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0016', 'CH016', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0017', 'CH018', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0018', 'CH019', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0019', 'CH020', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0020', 'CH021', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0021', 'CH022', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0022', 'CH023', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0023', 'CH024', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0024', 'CH025', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0025', 'CH026', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0026', 'CH027', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0027', 'CH028', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0028', 'CH029', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0029', 'CH075', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0030', 'CH031', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0035', 'CH075', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0036', 'CH033', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0037', 'CH034', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0038', 'CH035', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0039', 'CH036', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0040', 'CH037', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0041', 'CH038', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0042', 'CH038', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0043', 'CH038', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0044', 'CH038', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0045', 'CH039', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0046', 'CH040', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0047', 'CH041', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0048', 'CH042', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0049', 'CH043', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0050', 'CH044', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0051', 'CH045', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0052', 'CH046', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0053', 'CH046', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0054', 'CH046', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0055', 'CH046', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0056', 'CH046', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0058', 'CH076', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0059', 'CH077', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0060', 'CH078', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0061', 'CH079', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0062', 'CH080', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0063', 'CH081', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0064', 'CH082', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0065', 'CH083', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0066', 'CH084', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0067', 'CH085', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0068', 'CH086', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0069', 'CH087', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0070', 'CH088', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0071', 'CH089', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0074', 'CH092', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0075', 'CH093', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0076', 'CH094', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0077', 'CH070', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0078', 'CH072', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0079', 'CH071', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0095', 'CH095', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0096', 'CH073', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0097', 'CH073', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0098', 'CH073', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0099', 'CH073', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0100', 'CH073', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0101', 'CH073', '5', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0102', 'CH073', '6', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0103', 'CH073', '7', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0009', 'CH017', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0107', 'CH017', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0108', 'CH030', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0109', 'CH077', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0110', 'CH076', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0111', 'CH081', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0112', 'CH081', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0113', 'CH096', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0114', 'CH096', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0115', 'CH096', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0116', 'CH097', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0117', 'CH097', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0118', 'CH097', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0119', 'CH098', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0120', 'CH099', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0121', 'CH100', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0122', 'CH101', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0123', 'CH102', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0124', 'CH046', '5', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0125', 'CH046', '6', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0126', 'CH046', '7', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0127', 'CH046', '8', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0128', 'CH046', '9', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0129', 'CH046', '10', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0130', 'CH046', '11', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0131', 'CH046', '12', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0132', 'CH091', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0133', 'CH091', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0134', 'CH090', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0135', 'CH090', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HT001', 'PPCK002', '0', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HT005', 'PP008', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HT006', 'PP018', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HT008', 'PP017', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HT019', 'PP016', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HT020', 'PP016', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HT021', 'PP006', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HT022', 'PP005', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HT023', 'PP005', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HT024', 'PP005', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HT028', 'PPCK007', '2', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HT030', 'PP010', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0001', 'HT001', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0001', 'HT002', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0002', 'HT001', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0002', 'HT025', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0003', 'HT001', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0004', 'HT001', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0005', 'HT001', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0006', 'HT001', '5', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0007', 'HT001', '7', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0007', 'HT003', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0008', 'HT001', '8', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0008', 'HT004', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0009', 'HT001', '9', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0009', 'HT005', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0010', 'HT001', '10', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0011', 'HT001', '11', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0011', 'HT023', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0012', 'HT001', '12', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0012', 'HT024', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0013', 'HT001', '13', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0014', 'HT001', '14', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0015', 'HT001', '15', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0016', 'HT007', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0021', 'HT009', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0022', 'HT010', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0023', 'HT011', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0024', 'HT012', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0025', 'HT013', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0026', 'HT014', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0027', 'HT015', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0028', 'HT016', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0029', 'HT017', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0030', 'HT018', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0031', 'HT019', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0032', 'HT019', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0033', 'HT019', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0034', 'HT020', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0035', 'HT020', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0036', 'HT021', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0037', 'HT021', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0038', 'HT001', '6', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0039', 'HT008', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0040', 'HT008', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0041', 'HT008', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0042', 'HT008', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0043', 'HT014', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0044', 'HT014', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0045', 'HT033', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0046', 'HT032', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0047', 'HT014', '5', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0048', 'HT014', '6', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0050', 'HT014', '7', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0051', 'HT014', '12', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0052', 'HT027', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0053', 'HT028', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0054', 'HT029', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0056', 'HT014', '8', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0057', 'HT014', '9', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0058', 'HT014', '10', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0059', 'HT014', '11', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0060', 'HT014', '13', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0061', 'HT013', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0062', 'HT020', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0063', 'HT006', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0064', 'SR014', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0065', 'SR014', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('HTT0066', 'SR014', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0001', 'MC001', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0002', 'MC002', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0003', 'MC003', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0004', 'MC003', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0005', 'MC003', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0006', 'MC003', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0007', 'MC003', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0008', 'MC003', '5', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0009', 'MC003', '6', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0010', 'MC003', '7', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0011', 'MC003', '8', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0012', 'MC003', '9', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0013', 'MC003', '10', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0014', 'MC003', '11', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0015', 'MC003', '12', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0016', 'MC003', '13', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0017', 'MC003', '14', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0018', 'MC003', '15', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0019', 'MC004', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0020', 'MC004', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0021', 'MC004', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0022', 'MC004', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0023', 'MC004', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0024', 'MC005', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0025', 'MC005', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0026', 'MC005', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0027', 'MC005', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0028', 'MC005', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0029', 'MC005', '5', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0030', 'MC005', '6', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0031', 'MC006', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0032', 'MC007', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0033', 'MC008', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0034', 'MC009', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0035', 'MC010', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0036', 'MC011', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0037', 'MC012', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0038', 'MC013', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0039', 'MC014', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0040', 'MC015', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0041', 'MC016', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0042', 'MC016', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0043', 'MC016', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0044', 'MC016', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0045', 'MC016', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0046', 'MC017', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0047', 'MC018', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0049', 'MC018', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0052', 'MC018', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0053', 'MC018', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0054', 'MC018', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0055', 'MC018', '5', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0056', 'MC024', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0057', 'MC019', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0058', 'MC024', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0059', 'MC024', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0060', 'MC019', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0061', 'MC019', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0062', 'MC005', '7', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0063', 'MC005', '8', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0064', 'MC020', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0065', 'MC021', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0066', 'MC022', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('MCT0067', 'MC023', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PA111', 'PPCK007', '28', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0001', 'PA001', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0002', 'PA002', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0003', 'PA003', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0004', 'PA004', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0005', 'PA005', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0006', 'PA006', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0007', 'PA007', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0008', 'PA008', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0009', 'PA009', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0010', 'PA010', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0011', 'PA011', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0012', 'PA012', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0013', 'PA013', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0014', 'PA014', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0015', 'PA015', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0016', 'PA016', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0017', 'PA017', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0018', 'PA018', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0019', 'PA019', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0020', 'PA020', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0021', 'PA021', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0022', 'PA022', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0023', 'PA023', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0024', 'PA024', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0025', 'PA025', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0026', 'PA026', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0027', 'PA027', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0028', 'PA028', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0029', 'PA029', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0030', 'PA030', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0031', 'PA031', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0032', 'PA032', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0033', 'PA033', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0034', 'PA034', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0035', 'PA035', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0036', 'PA036', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0037', 'PA037', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0038', 'PA038', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0039', 'PA039', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0040', 'PA040', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0041', 'PA041', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0042', 'PA042', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0043', 'PA043', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0044', 'PA044', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0045', 'PA045', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0047', 'PA046', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0048', 'PA047', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0049', 'PA048', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0050', 'PA049', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0051', 'PA050', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0052', 'PA051', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0053', 'PA052', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0054', 'PA053', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0055', 'PA054', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0056', 'PA055', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0057', 'PA056', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0058', 'PA057', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0059', 'PA058', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0060', 'PA059', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0061', 'PA060', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0062', 'PA061', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0063', 'PA062', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0064', 'PA063', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0065', 'PA064', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0066', 'PA065', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0067', 'PA066', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0068', 'PA067', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0069', 'PA068', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0070', 'PA069', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0071', 'PA070', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0072', 'PA071', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0073', 'PA072', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0074', 'PA073', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0075', 'PA074', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0076', 'PA075', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0077', 'PA076', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0078', 'PA077', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0079', 'PA078', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0080', 'PA079', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0081', 'PA080', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0082', 'PA081', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0083', 'PA082', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0084', 'PA083', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0085', 'PA084', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0086', 'PA085', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0087', 'PA086', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0088', 'PA087', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0089', 'PA088', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0090', 'PA089', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0091', 'PA090', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0092', 'PA091', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0093', 'PA092', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0094', 'PA093', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0095', 'PA094', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0096', 'PA095', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0097', 'PA096', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0098', 'PA097', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0099', 'PA098', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0100', 'PA099', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0101', 'PA100', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0102', 'PA101', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0103', 'PA102', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0104', 'PA103', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0105', 'PA104', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0106', 'PA105', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0107', 'PA106', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0108', 'PA107', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0109', 'PA108', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0110', 'PA109', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0111', 'PA110', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0113', 'PA112', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0115', 'PA111', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0116', 'PA111', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0117', 'PA111', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0118', 'PA111', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0119', 'PA111', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0120', 'PA114', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0121', 'PA115', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0122', 'PA120', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0123', 'PA121', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0124', 'PA122', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0125', 'PA123', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0126', 'PA124', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0127', 'PA116', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0128', 'PA116', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0129', 'PA116', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0130', 'PA116', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0131', 'PA117', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0132', 'PA118', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('PAT0133', 'PA119', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0001', 'SP001', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0002', 'SP002', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0003', 'SP003', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0004', 'SP004', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0005', 'SP005', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0006', 'SP006', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0007', 'SP007', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0008', 'SP008', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0009', 'SP009', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0010', 'SP010', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0011', 'SP011', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0012', 'SP012', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0013', 'SP013', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0014', 'SP014', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0015', 'SP358', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0016', 'SP016', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0017', 'SP017', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0018', 'SP018', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0019', 'SP019', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0020', 'SP360', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0021', 'SP021', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0022', 'SP022', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0023', 'SP022', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0024', 'SP022', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0025', 'SP022', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0026', 'SP022', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0027', 'SP022', '5', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0028', 'SP022', '6', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0029', 'SP022', '7', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0030', 'SP022', '8', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0031', 'SP022', '9', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0032', 'SP022', '10', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0033', 'SP022', '11', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0034', 'SP022', '12', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0035', 'SP022', '13', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0036', 'SP022', '14', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0037', 'SP022', '15', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0038', 'SP022', '16', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0039', 'SP022', '17', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0040', 'SP022', '18', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0041', 'SP022', '19', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0042', 'SP023', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0043', 'SP024', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0044', 'SP025', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0045', 'SP026', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0046', 'SP027', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0047', 'SP362', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0048', 'SP029', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0049', 'SP030', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0050', 'SP031', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0051', 'SP032', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0052', 'SP033', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0053', 'SP034', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0054', 'SP364', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0055', 'SP036', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0056', 'SP037', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0057', 'SP038', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0058', 'SP039', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0059', 'SP040', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0060', 'SP041', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0061', 'SP042', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0062', 'SP043', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0063', 'SP044', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0064', 'SP045', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0065', 'SP046', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0066', 'SP047', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0067', 'SP048', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0068', 'SP049', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0069', 'SP050', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0070', 'SP051', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0071', 'SP052', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0072', 'SP053', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0073', 'SP054', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0074', 'SP055', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0075', 'SP366', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0076', 'SP057', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0077', 'SP058', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0078', 'SP059', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0079', 'SP060', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0080', 'SP370', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0081', 'SP062', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0082', 'SP063', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0083', 'SP064', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0084', 'SP065', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0085', 'SP372', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0086', 'SP067', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0087', 'SP068', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0088', 'SP069', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0089', 'SP070', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0090', 'SP071', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0091', 'SP072', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0092', 'SP073', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0093', 'SP074', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0094', 'SP075', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0095', 'SP076', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0096', 'SP077', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0097', 'SP078', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0098', 'SP079', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0099', 'SP080', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0100', 'SP081', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0101', 'SP082', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0102', 'SP083', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0103', 'SP084', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0104', 'SP085', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0105', 'SP086', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0106', 'SP087', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0107', 'SP088', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0108', 'SP089', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0109', 'SP090', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0110', 'SP091', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0111', 'SP092', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0112', 'SP093', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0113', 'SP094', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0114', 'SP095', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0115', 'SP096', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0116', 'SP097', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0117', 'SP098', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0118', 'SP099', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0119', 'SP100', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0120', 'SP101', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0121', 'SP376', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0122', 'SP103', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0123', 'SP104', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0124', 'SP105', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0125', 'SP106', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0126', 'SP107', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0127', 'SP108', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0128', 'SP109', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0129', 'SP110', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0130', 'SP111', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0131', 'SP112', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0132', 'SP113', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0133', 'SP114', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0134', 'SP115', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0135', 'SP116', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0136', 'SP117', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0137', 'SP118', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0138', 'SP119', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0139', 'SP120', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0140', 'SP121', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0141', 'SP122', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0142', 'SP123', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0143', 'SP124', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0144', 'SP125', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0145', 'SP126', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0146', 'SP127', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0147', 'SP128', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0148', 'SP129', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0149', 'SP130', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0150', 'SP131', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0151', 'SP132', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0152', 'SP133', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0153', 'SP134', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0154', 'SP135', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0155', 'SP136', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0156', 'SP137', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0157', 'SP138', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0158', 'SP139', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0159', 'SP140', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0160', 'SP141', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0161', 'SP381', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0162', 'SP143', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0163', 'SP144', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0164', 'SP145', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0165', 'SP146', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0166', 'SP147', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0167', 'SP148', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0168', 'SP149', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0169', 'SP150', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0170', 'SP151', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0171', 'SP152', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0172', 'SP153', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0173', 'SP154', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0174', 'SP155', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0175', 'SP156', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0176', 'SP157', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0177', 'SP158', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0178', 'SP159', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0179', 'SP160', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0180', 'SP161', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0181', 'SP162', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0182', 'SP163', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0183', 'SP164', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0184', 'SP165', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0185', 'SP166', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0186', 'SP167', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0187', 'SP168', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0188', 'SP169', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0189', 'SP170', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0190', 'SP171', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0191', 'SP172', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0192', 'SP173', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0193', 'SP174', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0194', 'SP175', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0195', 'SP176', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0196', 'SP177', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0197', 'SP178', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0198', 'SP179', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0199', 'SP180', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0200', 'SP181', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0201', 'SP182', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0202', 'SP183', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0203', 'SP184', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0204', 'SP185', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0205', 'SP186', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0206', 'SP187', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0207', 'SP188', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0208', 'SP189', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0209', 'SP190', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0210', 'SP191', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0211', 'SP192', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0212', 'SP193', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0213', 'SP194', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0214', 'SP383', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0215', 'SP196', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0216', 'SP385', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0217', 'SP198', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0218', 'SP199', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0219', 'SP200', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0220', 'SP201', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0221', 'SP202', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0222', 'SP203', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0223', 'SP204', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0224', 'SP205', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0225', 'SP206', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0226', 'SP207', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0227', 'SP208', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0228', 'SP209', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0229', 'SP210', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0230', 'SP211', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0231', 'SP212', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0232', 'SP213', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0233', 'SP214', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0234', 'SP215', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0235', 'SP216', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0236', 'SP217', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0237', 'SP218', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0238', 'UR012', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0239', 'SP220', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0240', 'SP221', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0241', 'SP222', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0242', 'SP223', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0243', 'SP224', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0244', 'SP225', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0245', 'SP389', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0246', 'SP227', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0247', 'SP228', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0248', 'SP229', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0249', 'SP230', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0250', 'SP231', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0251', 'SP232', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0252', 'SP233', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0253', 'SP234', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0254', 'SP235', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0255', 'SP236', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0256', 'SP237', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0257', 'SP238', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0258', 'SP239', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0259', 'SP240', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0261', 'SP242', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0262', 'SP243', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0263', 'SP244', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0264', 'SP245', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0266', 'SP247', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0267', 'SP248', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0268', 'SP249', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0270', 'SP251', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0271', 'SP252', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0272', 'SP253', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0273', 'SP392', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0274', 'SP255', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0275', 'SP256', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0276', 'SP257', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0277', 'SP258', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0278', 'SP259', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0279', 'SP260', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0280', 'SP261', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0281', 'SP394', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0282', 'SP263', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0283', 'SP264', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0284', 'SP265', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0285', 'SP266', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0286', 'SP267', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0287', 'SP268', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0288', 'SP269', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0289', 'SP270', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0290', 'SP271', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0291', 'SP272', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0292', 'SP273', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0293', 'SP274', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0294', 'SP275', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0295', 'SP276', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0296', 'SP277', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0297', 'SP278', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0298', 'SP279', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0299', 'SP280', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0300', 'SP281', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0301', 'SP282', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0302', 'SP283', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0303', 'SP284', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0304', 'SP397', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0305', 'SP286', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0306', 'SP287', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0307', 'SP288', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0308', 'SP289', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0309', 'SP290', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0310', 'SP291', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0311', 'SP292', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0312', 'SP293', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0313', 'SP294', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0314', 'SP295', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0315', 'SP296', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0316', 'SP297', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0317', 'SP298', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0318', 'SP299', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0319', 'SP300', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0320', 'SP301', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0321', 'SP302', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0322', 'SP303', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0323', 'SP304', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0324', 'SP305', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0325', 'SP306', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0326', 'SP307', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0327', 'SP308', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0328', 'SP309', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0329', 'SP310', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0330', 'SP311', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0331', 'SP312', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0332', 'SP313', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0333', 'SP314', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0334', 'SP315', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0335', 'SP316', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0336', 'SP317', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0337', 'SP318', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0341', 'SP322', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0342', 'SP323', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0343', 'SP324', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0344', 'SP325', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0345', 'SP326', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0346', 'SP327', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0347', 'SP328', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0348', 'SP329', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0349', 'SP401', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0350', 'SP331', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0351', 'SP332', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0352', 'SP333', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0353', 'SP334', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0354', 'SP335', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0355', 'SP336', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0356', 'SP337', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0357', 'SP338', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0358', 'SP339', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0359', 'SP340', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0360', 'SP341', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0361', 'SP342', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0362', 'SP343', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0363', 'SP344', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0364', 'SP345', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0365', 'SP346', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0366', 'SP347', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0368', 'SP349', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0369', 'SP350', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0370', 'SP351', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0371', 'SP352', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0372', 'SP353', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0386', 'SP022', '20', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0387', 'SP022', '21', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0388', 'SP022', '22', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0389', 'SP022', '23', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0390', 'SP022', '24', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0391', 'SP022', '25', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0392', 'SP022', '26', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0393', 'SP022', '27', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0394', 'SP022', '28', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0395', 'SP022', '29', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0396', 'SP022', '30', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0397', 'SP022', '31', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0398', 'SP022', '32', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0399', 'SP022', '33', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0400', 'SP022', '34', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0401', 'SP022', '35', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0402', 'SP355', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0403', 'SP356', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0404', 'SP015', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0405', 'SP357', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0406', 'SP359', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0407', 'SP020', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0408', 'SP361', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0409', 'SP028', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0410', 'SP363', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0411', 'SP035', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0412', 'SP365', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0413', 'SP056', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0414', 'SP367', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0415', 'SP368', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0416', 'SP369', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0417', 'SP061', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0418', 'SP371', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0419', 'SP066', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0420', 'SP373', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0421', 'SP374', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0422', 'SP102', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0423', 'SP375', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0424', 'SP377', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0425', 'SP378', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0427', 'SP380', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0428', 'SP142', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0429', 'SP195', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0430', 'SP384', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0431', 'SP197', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0432', 'SP386', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0433', 'SP387', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0434', 'SP226', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0435', 'SP388', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0436', 'SP390', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0437', 'SP254', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0438', 'SP391', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0439', 'SP393', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0440', 'SP262', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0441', 'SP395', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0442', 'SP285', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0443', 'SP396', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0444', 'SP398', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0445', 'SP399', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0446', 'SP330', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0447', 'SP400', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0448', 'SP382', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0449', 'SP348', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0450', 'SP348', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0451', 'SP278', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0452', 'SP278', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0453', 'SP278', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0454', 'SP278', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0455', 'SP278', '5', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0456', 'SP278', '6', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0457', 'SP246', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0458', 'SP246', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0459', 'SP246', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0460', 'SP246', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0461', 'SP246', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0462', 'SP246', '5', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0463', 'SP246', '6', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0464', 'SP246', '7', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0465', 'SP246', '8', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0466', 'SP246', '9', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0467', 'SP246', '10', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0468', 'SP246', '11', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0469', 'SP402', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0470', 'SP403', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0471', 'SP403', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0472', 'SP403', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0473', 'SP403', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0474', 'SP404', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0475', 'SP405', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0476', 'SP406', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0477', 'SP407', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0478', 'SP041', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0479', 'SP408', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0480', 'SP409', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SPT0481', 'SP410', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR017', 'PPCK002', '13', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR018', 'PPCK004', '14', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR023', 'PP012', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR024', 'PP012', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR033', 'PPCK007', '24', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR035', 'PPCK007', '22', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR036', 'PPCK008', '23', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR038', 'PPCK008', '25', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR039', 'PPCK008', '24', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR040', 'PP019', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR042', 'PP019', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR044', 'PP022', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR048', 'PPCK008', '18', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR049', 'PPCK007', '21', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR050', 'PPCK003', '15', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR051', 'PPCK007', '17', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR052', 'PPCK007', '18', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR053', 'PPCK007', '19', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SR054', 'PPCK008', '20', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0001', 'SR001', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0002', 'SR002', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0003', 'SR003', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0004', 'SR003', '1', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0005', 'SR003', '2', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0006', 'SR003', '3', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0007', 'SR004', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0008', 'SR004', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0009', 'SR004', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0010', 'SR005', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0011', 'SR006', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0012', 'SR007', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0013', 'SR008', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0014', 'SR009', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0016', 'SR011', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0017', 'SR012', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0018', 'SR013', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0020', 'SR015', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0021', 'SR016', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0022', 'SR017', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0023', 'SR018', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0024', 'SR019', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0025', 'SR020', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0026', 'SR021', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0027', 'SR022', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0028', 'SR023', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0029', 'SR024', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0030', 'SR025', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0031', 'SR026', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0032', 'SR027', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0033', 'SR028', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0034', 'SR029', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0035', 'SR030', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0036', 'SR031', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0037', 'SR032', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0038', 'SR033', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0039', 'SR034', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0040', 'SR035', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0041', 'SR036', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0042', 'SR037', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0043', 'SR038', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0044', 'SR039', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0045', 'SR040', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0046', 'SR041', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0047', 'SR042', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0048', 'SR043', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0049', 'SR044', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0050', 'SR045', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0051', 'SR046', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0052', 'SR047', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0053', 'SR048', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0054', 'SR049', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0055', 'SR054', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0056', 'SR051', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0057', 'SR052', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0058', 'SR053', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0059', 'SR054', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0060', 'SR055', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0061', 'SR056', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0062', 'SR054', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0063', 'SR013', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0064', 'SR013', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0065', 'SR013', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0066', 'SR013', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0067', 'SR013', '5', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0068', 'SR013', '6', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0069', 'SR013', '7', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0070', 'SR013', '8', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0071', 'SR013', '9', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0072', 'SR013', '10', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0073', 'SR013', '11', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0074', 'SR057', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0075', 'SR058', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0076', 'SR059', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0078', 'SR010', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0079', 'SR010', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0080', 'SR010', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0081', 'SR018', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0083', 'SR060', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0084', 'SR060', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0085', 'SR061', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0086', 'SR061', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0087', 'SR061', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0088', 'SR061', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0089', 'SR062', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0090', 'SR062', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0091', 'SR062', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('SRT0092', 'SR063', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('STT0001', 'ST001', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('STT0002', 'ST001', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('STT0003', 'ST001', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('STT0004', 'ST001', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('STT0005', 'ST001', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('STT0006', 'ST002', '0', '1');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('STT0007', 'ST003', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('STT0010', 'ST004', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('UR001', 'PPCK005', '0', '');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('UR009', 'PP013', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('UR013', 'PP014', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0001', 'UR001', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0002', 'UR001', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0003', 'UR001', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0004', 'UR001', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0005', 'UR008', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0006', 'UR008', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0007', 'UR001', '6', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0008', 'UR001', '7', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0009', 'UR001', '9', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0010', 'UR001', '10', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0011', 'UR001', '11', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0012', 'UR001', '12', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0013', 'UR001', '13', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0014', 'UR001', '14', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0015', 'UR001', '15', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0016', 'UR001', '16', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0017', 'UR001', '17', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0018', 'UR013', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0019', 'UR009', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0033', 'UR014', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0034', 'UR015', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0035', 'UR016', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0036', 'UR017', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0037', 'UR018', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0038', 'UR019', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0039', 'UR020', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0040', 'UR002', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0041', 'UR003', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0042', 'UR004', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0043', 'UR005', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0044', 'UR006', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0045', 'UR010', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0048', 'UR011', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0054', 'UR021', '0', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0055', 'UR021', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0056', 'UR021', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0057', 'UR021', '3', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0058', 'UR021', '4', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0059', 'UR021', '5', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('URT0060', 'UR021', '6', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0106', 'CH017', '2', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0105', 'CH017', '1', '0');
INSERT INTO `tbl_setup_lab_profile_copy` VALUES ('CHT0104', 'CH017', '0', '0');

-- ----------------------------
-- Table structure for `tbl_setup_lab_test`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_lab_test`;
CREATE TABLE `tbl_setup_lab_test` (
  `ID_LAB` varchar(33) NOT NULL DEFAULT '',
  `Name` text,
  `Unit` varchar(33) DEFAULT NULL,
  `SpTube` varchar(1) DEFAULT NULL,
  `TypeBC` varchar(1) DEFAULT NULL,
  `Medthod` longtext,
  `Print` varchar(2) DEFAULT '1',
  PRIMARY KEY (`ID_LAB`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_lab_test
-- ----------------------------
INSERT INTO `tbl_setup_lab_test` VALUES ('BBT0008', 'ANTIBODY SCREENING TEST', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('BBT0010', 'UNIT NO.', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0001', 'Glucose', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0002', 'BUN', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0003', 'Creatinine', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0004', 'Uric acid', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0005', 'Cholesterol', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0006', 'Triglyceride', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0007', 'HDL-cholesterol', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0008', 'LDL-cholesterol', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0009', 'Total protein', 'g/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0010', 'Albumin', 'g/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0011', 'GLOBULIN', 'g/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0012', 'Total bilirubin', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0013', 'Direct bilirubin', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0014', 'SGOT(AST)', 'U/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0015', 'SGPT(ALT)', 'U/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0016', 'Alkaline phosphatase', 'U/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0017', 'Na', 'mEq/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0018', 'K', 'mEq/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0019', 'Cl', 'mEq/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0020', 'CO2', 'mEq/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0021', 'GAMMA GT', 'U/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0022', 'Calcium', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0023', 'Phosphorus', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0024', 'MAGNESIUM', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0025', 'AMYLASE', 'U/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0026', 'LIPASE', 'U/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0027', 'TOTAL ACID PHOSPHATASE', 'IU/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0028', 'PROSTATIC ACID PHOSPHATASE', 'ng/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0029', 'LDH', 'U/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0030', 'Transferrin', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0031', 'Ketone (serum)', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0032', 'LD-3', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0033', 'LD-4', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0034', 'LD-5', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0035', 'CPK', 'U/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0036', 'CPK ISOENZYME', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0037', 'CK-MB', 'U/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0040', 'MICROBILIRUBIN', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0142', 'LDL cholesteral (direct)', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0141', 'HDL cholesteral (direct)', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0088', 'Atp.lym', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0087', 'Band form', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0046', 'Serum iron', 'ug/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0047', 'TIBC', 'ug/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0048', 'Transferrin saturation', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0049', 'FRUCTOSAMINE', 'umol/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0050', 'SUGAR IN CSF', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0051', 'PROTEIN IN CSF', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0052', 'pH', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0053', 'pCO2', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0054', 'pO2', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0055', 'HCO3', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0056', 'Total CO2', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0057', 'Other', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0058', 'TOTAL  VOLUME', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0059', 'Protein (24 hr. urine)', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0060', 'SODIUM IN URINE', 'mEq/24hr', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0061', 'POTASSIUM IN URINE', 'mEq/24hr', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0062', 'AMYLASE IN URINE', 'U/hr', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0063', 'Serum Creatinine', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0064', 'MICROALBUMIN', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0065', 'Microalbumin [Urine 24 hrs]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0066', 'CHLORIDE IN URINE', 'mEq/24hrs', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0067', 'URIC ACID IN URINE', 'mg/24 hrs', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0068', 'CALCIUM IN URINE', 'mg/24 hrs', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0069', 'Urea nitrogen in urine', 'g/24 hrs', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0070', 'PHOSPHORUS IN URINE', 'g/24 hrs', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0071', 'MAGNESIUM IN URINE', 'mg/24 hrs', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0072', 'SUGAR IN FLUID', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0073', 'PROTEIN IN FLUID', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0074', 'LDH IN FLUID', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0075', 'AMYLASE IN FLUID', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0076', 'URIC ACID IN FLUID', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0077', 'DTX', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0078', 'glucose 50 g/1 hr', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0079', '2hrs.Post prandial', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0080', 'IMG CHEM', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0095', 'CHOLINESTERASE', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0096', 'TOTAL PROTEIN', 'g/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0097', 'ALBUMIN', 'g/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0098', 'GLOBULIN', 'g/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0099', 'TOTAL BILIRUBIN', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0100', 'DIRECT BILIRUBIN', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0101', 'SGOT(AST)', 'U/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0102', 'SGPT(ALT)', 'U/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0103', 'ALKALINE PHOSPHATASE', 'U/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0104', 'SODIUM(Na)', 'mEq/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0105', 'POTASSIUM(K)', 'mEq/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0106', 'CHLORIDE(Cl)', 'mEq/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0107', 'CO2', 'mEq/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0109', 'protein (spot urine)', 'mg/dL', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0110', 'URINE CREATININE RESULT', 'md/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0111', 'Creatinine (24 hrs. urine)', 'mg/24 hrs.', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0112', 'volume 24 hrs. urine', 'mL', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0113', 'Sodium (24 hrs. urine)', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0114', 'Potassium (24 hrs. urine)', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0115', 'Chloride (24 hrs. urine)', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0116', 'Sodium (spot urine)', 'mEq/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0117', 'Potassium (spot urine)', 'mEq/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0118', 'Chloride (spot urine)', 'mEq/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0119', 'ALBUMIN IN BODY FLUID', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0120', 'URINE Creatinine  (Spot)', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0121', 'URINE PROTEIN  (Spot)', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0122', 'Urine  Calcium  (24 hrs)', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0123', 'VLDL - CHOLESTEROL', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0124', 'BE', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0125', 'nCa++', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0126', 'SO2 (O2 SAT)', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0127', 'AaDO2', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0128', 'O2 ct', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0129', 'Entered  Data Temp', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0130', 'Entered Data  FIO2', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0131', 'Entered Data  Hb', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0133', 'RESULT', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0135', 'RESULT', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0001', 'WBC', 'K/uL', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0002', 'Neutrophil', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0003', 'Lymphocyte', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0004', 'Monocyte', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0005', 'Eosinophil', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0006', 'Basophil', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0007', 'RBC', 'M/uL', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0008', 'Hb', 'g/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0009', 'HCT', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0010', 'MCV', 'fL', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0011', 'MCH', 'pg', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0012', 'MCHC', 'g/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0013', 'Platelet count', 'K/uL', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0016', 'Reticulocyte count', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0021', 'ESR', 'mm/hr', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0025', 'Organism', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0027', 'TOURNIQUET TEST', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0028', 'Bleeding time', 'นาที', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0029', 'VCT', 'min', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0030', 'CLOT RETRACTION', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0031', 'Control', 'seconds', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0032', 'PT', 'seconds', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0033', 'INR', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0034', 'Control', 'seconds', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0035', 'PTT', 'seconds', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0036', 'Control', 'seconds', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0037', 'Test', 'seconds', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0043', 'Hb A', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0044', 'Hb A2', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0045', 'Hb E', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0046', 'Hb F', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0047', 'Hb CS', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0048', 'Hb H', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0049', 'Hb Barts', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0050', 'Other Hb', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0058', 'MCV', 'fl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0059', 'MCHC', 'g/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0061', 'WBC', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0062', 'PTT   Ratio', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0064', 'Hct', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0065', 'WBC  count', 'K/uL', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0066', 'Lymphocyte', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('MCT0059', 'Sp.gr.', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('MCT0061', 'Differantial cell', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0001', 'Anus', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0002', 'Appendix', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0003', 'Amputation, Upper or Lower Extremities', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0004', 'Bone  Marrow', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0005', 'Bone, Biopsy  or  Excision', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0006', 'Bone, Amputation', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0007', 'Brain, Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0008', 'Brain, Tumor', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0009', 'Breast, Biopsy, Unilateral [ 1 piece ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0010', 'Breast, Biopsy, Unilateral [ >1 piece ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0011', 'Breast, Simple  Mastectomy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0012', 'Breast, Mastectomy with Axillary  Content', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0013', 'Bronchial Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0014', 'Cartilage', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0015', 'Cervix, Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0016', 'Cervix, Conization or Cone Biopsy or  LEEP/LLEITZ', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0017', 'Colon, Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0018', 'Colon, Colectomy with Lymph node', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0019', 'Conceptive  Product', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0020', 'Curettage', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0021', 'Curettage, Fractional [ Endocervix & Endometrium ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0022', 'Duodenum, Biopsy  with  Helicobactor pylori Stain', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0023', 'Endocervix', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0024', 'Endometrium', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0025', 'Esophagus, Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0026', 'Fallopian Tube, Salpingectomy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0027', 'Fallopian Tube, Bilateral, for  TR', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0028', 'Fistula/Fistula in ano', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0029', 'Gallbladder', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0030', 'Gastric, Biopsy with Helicobactor pylori Stain', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0031', 'Gastric, Gastrectomy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0032', 'Gastric, Gastrectomy with Lymph node', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0033', 'Hemorrhoid', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0034', 'Hemorrhoid [ >4 pieces ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0035', 'lleum, Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0036', 'lleum, Segmental  Resection', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0037', 'Jejunum, Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0038', 'Jejunum, Segmental Resection', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0039', 'Kidney, Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0040', 'Kidney, Neprectomy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0041', 'Labium', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0042', 'Larynx, Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0043', 'Larynx, Laryngectomy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0044', 'Larynx, Laryngectomy with Lymph node', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0045', 'Lid, Upper or Lower, Excision', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0047', 'Liver, Needle  Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0048', 'Liver, Lobectomy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0049', 'Lung, Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0050', 'Lung, Lobectomy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0051', 'Lymph node, Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0052', 'Lymph node, Biopsy with Histochemistry  Stains', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0053', 'Lymph node, Radical  Neck Resection', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0054', 'Mandible', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0055', 'Meckels diverticulum', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0056', 'Myoma, Myomectomy [ <5 cm. ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0057', 'Myoma, Myomectomy [ >5 cm. ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0058', 'Nasal  Polyp', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0059', 'Nasopharynx, Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0060', 'Omentum', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0061', 'Ovary, Cystectomy [ <5 cm. ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0062', 'Ovary, Cystectomy [ >5 cm. ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0063', 'Ovary, with Fallopian Tube [ One Adnexa ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0064', 'Parotid  Gland', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0065', 'Penis, Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0066', 'Penis, Amputation', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0067', 'Placenta', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0068', 'Pleural  Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0069', 'Pleural Biopsy with Histochemistry Stains', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0070', 'Polyp', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0073', 'Rectum, Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0074', 'Rectum, A-P or Segmental Resection', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0075', 'Salivary Gland', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0076', 'Skin  Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0077', 'Skin Biopsy with Histochemistry Stains', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0078', 'Spleen', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0079', 'Stomach, Biopsy with Helicobactor pylori Stain', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0080', 'Stomach, Gastrectomy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0081', 'Synovial Tissue', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0082', 'Testis, Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0083', 'Testis, Orchidectomy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0084', 'Testis, Orchidectomy with Lymph node', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0085', 'Thrombus', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0086', 'Thyroid Gland, Lobectomy, Unilateral [ <5 cm. ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0087', 'Thyroid Gland, Lobectomy, Unilateral [ >5 cm. ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0088', 'Thyroid Gland, Lobectomy, Bilateral [ <5 cm. ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0089', 'Thyroid Gland, Lobectomy, Bilateral [ >5 cm. ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0090', 'Thyroid Gland, Lobectomy, Bilateral with lsthmectomy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0091', 'Tonsil, Tonsillectomy, Unilateral', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0092', 'Tonsil, Tonsillectomy, Bilateral', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0093', 'Urinary Bladder', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0094', 'Uterus, Hysterectomy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0095', 'Uterus, Hysterectomy with One Adnexa', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0096', 'Uterus, Hysterectomy with Bilateral Adnexae', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0097', 'Uterus, Hysterectomy  with Cervical Conization', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0098', 'Uterus, Hysterectomy  wtih Separated  Ovarian  Tumor', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0099', 'Vas  deferens, Bilateral', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0100', 'Wertheims Operation', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0101', 'Whipplew  Resection', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0102', 'Estrogen Receptor [ ER ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0103', 'Progesterone Receptor [ PgR ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0104', 'Ki - 67 ', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0105', 'p 53', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0106', 'C-erb-B2', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0107', 'Cytology', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0108', 'Cytology & Histochemistry Stains', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0109', 'Cytology & Pneumocystis  carinii  Stain', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0110', 'Cytology  & Cell  Block', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0111', 'Cytology  by  ThinPrep  Processor', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0113', 'Smear  from Vaginal Lesion R/O Herpes simplex infection', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0120', 'Frozen Section / 1 specimen', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0121', 'Immunoperoxidase Stain', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0122', 'Extragenital Cytology', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0123', 'Fine Needle Aspiration [FNA]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0124', 'Consultation,Biopsy', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0125', 'Consultation,Cytology', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0126', 'Consultation,Pap Smear', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0131', 'Tissue large', '-', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0132', 'Tissue medium', '-', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('PAT0133', 'Tissue small', '-', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0001', '17 OHP [17-Hydroxyprogesterone]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0002', '17-KS', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0003', '17-OHCS', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0004', '5-HIAA', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0005', 'Acantamoeba  in  stool', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0006', 'Acantamoeba culture', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0007', 'Acetone', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0008', 'Acetyl cholinesterase', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0009', 'Acetylcholine receptor antibody', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0010', 'Acid Elusion (Fetal Hb)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0011', 'Acid Phosphatase (Sperm)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0012', 'ACTH', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0013', 'Activated Protein C Resistance(APCR)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0014', 'Adeno Virus in  Serum', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0015', 'Adenosine deaminase (ADA) in  Serum', 'U/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0016', 'ALA (Urine)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0017', 'ALA-D (Blood) in  Fresh  EDTA  blood', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0018', 'Alcohol (Ethyl)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0019', 'Aldolase', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0020', 'Aldosterone in  Serum', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0021', 'Alkaptonuria', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0022', 'Citrus Mix', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0023', 'Corn', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0024', 'Wheat', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0025', 'VegetableMix', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0026', 'Crab', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0027', 'ShellfishMix', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0028', 'Shrimp', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0029', 'Codfish', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0030', 'Pork', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0031', 'Beef', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0032', 'Milk', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0033', 'Yeast,Brewer', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0034', 'Soybean', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0035', 'Peanut', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0036', 'Egg Yolk', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0037', 'Egg White', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0038', 'Pine Mix', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0039', 'Cottnwd/Wilw', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0040', 'Eucalyptus', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0041', 'Mulberry Mix', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0042', 'Alpha-1 antitrypsin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0043', 'Aluminium', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0044', 'AMA', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0045', 'Amikacin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0046', 'Aminophylline (Theophylline)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0047', 'Amitryptyline (Common Drug Screen) in  Clot  blood', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0048', 'Ammonia', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0049', 'Amphetamine', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0050', 'ANA [ ANF, FANA ]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0051', 'ANCA (Anti Neutrophile Cytoplasmic Ab)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0052', 'Anti D (Rh titer)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0053', 'Angiostrongilus in  Serum', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0054', 'Angiotensin converting Enzyme in Serum', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0055', 'ANT-ENA [Anti-SM]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0057', 'Anti Basement Membrane IgA', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0058', 'Anti Basement Membrane IgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0059', 'Anti Basement Membrane IgM', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0060', 'Anti-Cardiolipin IgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0061', 'Anti Centromia', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0062', 'Anti D Nase-B', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0063', 'ANTI EBV [VCA] lgG(Epstein-Barr virus)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0064', 'ANTI EBV [VCA] lgM(Epstein-Barr virus)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0065', 'Anti Histamine in Clot  blood', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0066', 'Anti HTLV1', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0067', 'Anti La (Anti-SSB)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0068', 'Anti Ro (Anti-SSA)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0069', 'Anti SCL-70', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0070', 'Anti Thrombin III', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0071', 'Anti-GBM (glomerula basement membrane)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0072', 'Anti-TPO', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0073', 'Apolipoprotein A1', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0074', 'Apolipoprotein B', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0075', 'Arsenic(Screening) in  Gastrict  content', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0076', 'Arsenic in  Urine  24  hrs.', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0077', 'ASMA', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0078', 'Aspergillus Antibody', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0079', 'Aspergillus Antigen', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0080', 'Barbiturate (Screening) in  Urine', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0081', 'Barrium in  Clotted  blood', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0082', 'Benadryl', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0083', 'Bence - Jones Protein', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0084', 'Benzene [ Phenol ]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0085', 'Benzodiazepine  in  Urine', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0086', 'Bromide', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0087', 'Brucella Ab', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0088', 'C. Difficile Toxin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0089', 'Cadmium [Cd]  in  EDTA  blood', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0090', 'Caffein', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0091', 'Calcitonin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0092', 'Calcium Pyrophosphate', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0093', 'Campylobacter jejuni', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0094', 'Carbamate', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0095', 'Carbamazepine (Tegretal)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0096', 'Carboxy Hb', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0097', 'Carotene [Vitamin A]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0098', 'Catecholamine [ Total Volume ]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0099', 'CERULOPLASMIN', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0100', 'Chikungunya Ab.', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0101', 'Chlamydia pneumoniae lgA', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0102', 'Chlamydia pneumoniae lgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0103', 'Chlamydia pneumoniae lgM', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0104', 'Chlamydia psittaci lgA', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0105', 'Chlamydia psittaci lgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0106', 'Chlamydia psittaci lgM', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0107', 'Chlamydia trachomatis culture', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0108', 'Chlamydia trachomatis lgA', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0109', 'Chlamydia trachomatis lgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0110', 'Chlamydia trachomatis lgM', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0111', 'Chlordiazepoxide [Librium]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0112', 'Cholinesterase', 'U/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0113', 'Cholinesterase [Erythrocyte]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0114', 'Chromium  in  EDTA  blood', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0115', 'Chromosome [Amniotic fluid)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0116', 'Chromosome [Heparinized Blood]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0117', 'CMV c/s', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0118', 'CMV lgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0119', 'CMV lgM', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0120', 'Cocaine', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0121', 'Copper  in  Serum', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0122', 'Corproporphyrin [CP3]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0123', 'Coxsackie Virus', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0124', 'C-Peptide', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0125', 'Cryoglobulin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0126', 'Cryptosporidium', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0127', 'Cyanide  in  EDTA', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0128', 'Cyclosporin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0129', 'Cysticercosis Ab', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0130', 'Cytomegalovirus lgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0131', 'Cytomegalovirus lgM', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0132', 'DCIP', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0133', 'D-dimer', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0134', 'DENGUE (Rapid test)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0135', 'DENGUE lgM [ELISA]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0136', 'Depakine Level (Valproic Acid)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0137', 'DHEAS', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0138', 'Diazepam', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0139', 'Digoxin (Digitalis)', 'ng/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0140', 'DNA Typing for alpha-Thalassemia', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0141', 'Dormicum (Midazolam)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0142', 'Downs Syndrome [1st Trimester Screening]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0143', 'E Coli 0157', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0146', 'Eosinophil Count', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0147', 'Epinephrin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0148', 'Erytropoietin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0149', 'Euglobulin Lysis Time', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0150', 'Factor 13', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0151', 'Factor 5 Leiden', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0152', 'Factor 8 C [Coagulant Activity]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0153', 'Factor 9', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0154', 'Factor ll', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0155', 'FDP [Fibrin Degradation Product]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0156', 'Ferritin', 'ng/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0157', 'Fibrinogen Level', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0158', 'Filaria [Blood]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0159', 'Filaria Ab', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0160', 'FISH for BCR/ABL  in  Heparized  blood', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0161', 'FISH for T [15,17]  in  Heparized  blood', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0162', 'FISH for Williams syndrome', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0163', 'FK 506 (Tracholimus)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0164', 'Flow cytometry', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0165', 'Fluoride [Urine]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0166', 'Fluoride [Water]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0167', 'Folate in RBC', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0168', 'Folate in serum', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0169', 'Formaldehyde', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0170', 'Fragile-X', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0171', 'Free testosterone ', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0172', 'FT4 Index', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0173', 'FTA-ABS IgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0174', 'FTA-ABS IgM', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0175', 'Gammaglobulin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0176', 'Gastrin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0177', 'Gentamicin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0178', 'Gnathostoma Ab.  in  Serum', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0179', 'Gramoxone [Paraquat]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0180', 'H.INFLUENZAE Ag', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0181', 'Haptoglobin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0182', 'HBV  VIRAL LOAD [b - DNA]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0183', 'HCV  VIRAL  LOAD [b - DNA]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0184', 'HCV Genotype', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0185', 'HCV PCR [QUALITATIVE]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0186', 'Heinz body', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0187', 'Helicobacter pylori C/S', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0188', 'Helicobacter pylori lgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0189', 'Helicobacter pylori lgM', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0190', 'Hemosiderin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0192', 'Heterophil Ab', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0193', 'Hippuric Acid', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0194', 'Histoplasmosis Ab', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0195', 'HIV  1-DNA [QUALITATIVE]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0196', 'HIV VIRAL LOAD [b - DNA]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0197', 'HLA Antibody [PRA]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0198', 'HLA B 27', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0199', 'HLA-AB Typing', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0200', 'Homocysteine', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0201', 'HSV C/S', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0202', 'HSV I & II lgG(Herpes Simplex)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0203', 'HSV I & II lgM(Herpes Simplex)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0204', 'Immuno electrophoresis', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0205', 'IMMUNOGLOBULIN  level', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0206', 'IMMUNOGLOBULIN  lgE', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0207', 'Immunoglobulin lgA level', 'g/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0208', 'Immunoglobulin lgG level', 'g/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0209', 'Immunoglobulin lgG subclass', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0210', 'Immunoglobulin lgM level', 'g/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0213', 'Isoniazid [INH]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0214', 'Isopropanol  in  Urine', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0215', 'Japanese B Ab [lgG]  in  serum', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0216', 'Japanese B Ab [lgM]  in  serum', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0217', 'JE lgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0218', 'Lactate', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0219', 'Lead in clot blood', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0220', 'Lead in EDTA blood', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0221', 'Lead in hair', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0222', 'Lead in urine', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0223', 'Legionella Ab [lgG]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0224', 'Legionella Ab [lgM]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0225', 'Legionella Ag', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0226', 'Leptospira c/s', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0227', 'LEPTOSPIRA   Ab  lgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0228', 'LEPTOSPIRA  Ab lgM', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0229', 'Leukocyte alkaline phosphatase stain', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0230', 'Lipoprotein(a)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0231', 'LIPOPROTEIN ELECTROPHORESIS', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0232', 'Lithium', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0233', 'lron', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0234', 'Lupus Anticoagulant', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0235', 'Lymphocyte marker [flow cytometry]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0236', 'Mandelic Acid [Stylene]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0237', 'Manganese [Mn]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0238', 'Marijuana', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0239', 'MEASLE  lgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0240', 'MEASLE  lgM', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0241', 'MELIOIDOSIS Ab', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0242', 'Mercury  in  EDTA  blood', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0243', 'Metabolic screen', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0244', 'Metanephrine', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0245', 'Methadone  in  Urine', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0246', 'Methanol  in  NaF', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0247', 'Methemoglobin Level', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0248', 'Methyl Bromide', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0249', 'Methyle Ethyl Ketone', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0250', 'Metrotrexate (MTX)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0251', 'MICROSOMAL Ab', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0252', 'MONOSPOT', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0253', 'MUMP lgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0254', 'MUMP lgM', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0255', 'Murin typhus', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0256', 'Mycobacteriums DNA [Qualitative]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0257', 'MYCOPLASMA lgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0258', 'MYCOPLASMA lgM', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0259', 'Myoglobin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0260', 'N.MENINGITIDIS Ag', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0261', 'Nikle', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0262', 'NK cells', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0263', 'Norepinephrine', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0264', 'Normetanephrine', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0265', 'NT-ProBNP', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0266', 'Oligoclonal band', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0267', 'Opiate (Morphine, Heroin)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0268', 'Organophosphate', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0269', 'PAP smear', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0270', 'Paracetamol in blood (Acetaminophen)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0271', 'Paracetamol in gastric (Acetaminophen)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0272', 'Paragonimus Ab.', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0273', 'Paraquat [Gramoxone]  in  EDTA  blood', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0274', 'Parathione', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0275', 'PCR for Chlamydia pneumoniae', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0276', 'PCR for Chlamydia trachomatis', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0277', 'PCR for CMV [Qualitative] in  CSF', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0278', 'PCR for Dengue [Qualitative]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0279', 'PCR for EBV [Qualitative]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0280', 'PCR for HBV [Qualitative]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0281', 'PCR for HSV [Qualitative]  in  CSF', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0282', 'PCR for VZV [Qualitative]  in  CSF', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0283', 'Pemphigus Ab', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0284', 'Pesticide Screening', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0285', 'Phenobarbital', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0286', 'Phenothiazine (Screening)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0287', 'Phenylketouria', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0288', 'Phenytoin (Dilantin)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0289', 'Piroxicam (Feldene)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0290', 'PKU', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0291', 'Plasma amino acid', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0292', 'Platelet Aggregation', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0293', 'Pneumocystic carinii', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0294', 'Porphobilinogen', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0295', 'Porphyrin [FEP,Zpp]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0296', 'Protein C', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0297', 'PROTEIN ELECTROPHORESIS', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0298', 'Protein S', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0299', 'Prothrombin gene 20210', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0300', 'Pyrazenamide', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0301', 'Quinidine', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0302', 'Quinine Level', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0303', 'Rabies Ab', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0306', 'Riboflavin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0307', 'Rickettsia Ab', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0308', 'Rifampicin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0309', 'Ristocetin Cofactor', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0310', 'Rivotil', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0311', 'Rota virus', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0312', 'RSV [Respiratory Virus] culture/FA TEST', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0313', 'RUBELLA lgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0314', 'RUBELLA lgM', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0315', 'S.PNEUMONIAE Ag', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0316', 'Salicylate', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0317', 'Schistosomal Ab.', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0318', 'Screen Common Drugs  in  Urine', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0319', 'Scrub Typhus', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0320', 'Serum Inhibition', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0321', 'Sex Hormone Binding Globulin [SHBG]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0322', 'Silver', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0323', 'Squamous Cell CA Ag [SCC Ag]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0324', 'Steroid [Qualitative]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0325', 'Stone Analysis', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0326', 'STREPTOCOCCUS B Ag', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0327', 'TB  PCR', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0328', 'Thallium', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0329', 'Theophylline (Aminophylline)', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0330', 'Thiamine', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0331', 'Thinner [Toluene]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0332', 'Thiocyanate', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0333', 'THYROGLOBULIN Ab', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0334', 'Thyroglobulin level', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0335', 'Thyroid Stimulating lmmunoglobulin [TSI]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0336', 'Thyroxine binding globulin [TBG]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0337', 'TIN [Sn]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0341', 'Tobramycin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0342', 'Toxocara Ab.', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0343', 'TOXOPLASMA lgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0344', 'TOXOPLASMA lgM', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0345', 'TPS [Tissue polopeptide specific Ag]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0346', 'Trichinosis Ab', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0347', 'Trichloro-compounds [TCA]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0348', 'Triple Screening', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0349', 'Tricyclic drug  in  Gastric  content', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0350', 'Tryptanol', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0351', 'UIBC', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0352', 'Unconjugated estriol [E3]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0353', 'Urea plasma culture', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0354', 'Uric crystal', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0355', 'Urine organic acid', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0356', 'Uroporphyrin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0357', 'Valium', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0359', 'Vericella Zoster Virus lgG', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0360', 'Vericella Zoster Virus lgM', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0361', 'VIP [Vasoactive intestinal polypeptide]', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0362', 'Vitamin A', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0363', 'Vitamin B1', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0364', 'Vitamin B12', 'pg/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0365', 'Vitamin B2', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0366', 'Vitamin B6', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0367', 'VMA ', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0368', 'Von willebrand factor', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0369', 'Xylene', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0370', 'Zinc', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0371', 'Zincphosphide', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0372', 'Beta-2 Microglobulin', ' -', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0386', 'Grass Mix', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0387', 'BermudaGrass', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0388', 'Ragwd Mix I', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0389', 'Pigweed Mix', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0390', 'Alternaria', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0391', 'Aspergillus', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0392', 'Candida', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0393', 'Cladosporium', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0394', 'Penicillium', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0395', 'Feather Mix', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0396', 'Cat', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0397', 'Dog', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0398', 'CockroachMix', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0399', 'Housedust', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0400', 'Mite,pterony', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0401', 'Mite,farinae', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0402', 'Acantamoeba  in  fluid', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0403', 'Adeno  Virus in CSF', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0404', 'Adenosine deaminase (ADA) in  Pleura fluid', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0405', 'Adenosine deaminase (ADA) in  CSF', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0406', 'ALA-D (Blood) in  Fresh  NaF', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0407', 'Aldosterone in  Urine', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0408', 'Aldosterone in  Heparinized  blood', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0409', 'Amitryptyline (Common Drug Screen) in Urine', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0410', 'Angiostrongilus in  CSF', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0411', 'Angiotensin converting Enzyme in  CSF', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0412', 'Anti Histamine in  Gastric  content', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0413', 'Arsenic(Screening) ', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0414', 'Arsenic  in  EDTA  blood', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0415', 'Arsenic  in  Hair', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0416', 'Arsenic  in  Nail', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0417', 'Barbiturate (Screening) in  Gastric  content', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0418', 'Barrium  in  EDTA  blood', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0419', 'Benzodiazepine  in  Gastric  content', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0420', 'Chromium  in  Urine', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0421', 'Chromium  in  Hair', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0422', 'Copper   in  Heparinzed  plasma', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0423', 'Copper  in  Urine  24  hrs.', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0424', 'Cyanide  in  Gastric  content', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0425', 'Cyanide  in  Random  Urine', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0426', 'Cysticercosis  in  CSF', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0427', 'FISH for BCR/ABL  in  Bone  marrow', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0428', 'FISH for T [15,17]  in  Bone  marrow', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0429', 'Isopropanol  in  NaF  plasma', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0430', 'Japanese B Ab [lgG]  in  CSF', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0431', 'Japanese B Ab [lgM]  in  CSF', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0432', 'Mercury  in  Heparinized  blood', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0433', 'Mercury  in  Random  Urine', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0434', 'Methadone  in  Clot  blood', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0435', 'Methadone  in  Gastric  content', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0436', 'Methanol  in  Urine', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0437', 'Paraquat [Gramoxone] in  Urine', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0438', 'Paraquat [Gramoxone]  in  Gastric  content', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0439', 'PCR for CMV [Qualitative]  in  EDTA  blood', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0440', 'PCR for HSV [Qualitative]  in  EDTA  blood', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0441', 'PCR for VZV [Qualitative] in  EDTA  blood', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0442', 'Rabies Ag  in  Urine', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0445', 'Screen Common Drugs in  Clot  blood', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0446', 'Tricyclic drug  in  Urine', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0447', 'Tricyclic drug  in  Clot  blood', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0448', 'Gnathostoma Ab.  in  CSF', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0449', 'CREATININE', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0450', 'VMA (URINE VANILLYL MANDELIC ACID)', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0451', 'Albumin', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0452', 'Alpha 1', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0453', 'Alpha 2', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0454', 'Beta 1', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0455', 'Beta 2', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0456', 'Gamma', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0457', 'OSMOTIC FRAGILITY (OF test)', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0458', 'Hb E Screening Test (DCIP)', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0459', 'Hb A', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0460', 'Hb A2', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0461', 'Hb E', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0462', 'Hb F', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0463', 'Hb Bart\"s', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0464', 'Hb H', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0468', 'PCR Alpha-thalassemia 1', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0469', 'Anti nRnP', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0474', 'Epstein Bar virus (VCA)  IgG', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0475', 'Epstein Bar virus (VCA)  IgM', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0476', 'Scrub  Typhus  Ig M', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0477', 'Scrub  Typhus  Ig M (Pair  serum)', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0478', 'Anti-Cardiolipin  IgM', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0479', 'ampyylobacter  jajini', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0480', 'Microfilaria', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SPT0481', 'NETILMICIN', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0007', 'OX -2', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0008', 'OX -19', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0009', 'OX -K', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0011', 'ASO(ANTI STREPTOLYSIN O)', ' IU/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0012', 'COLD AGGLUTININ', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0013', 'CH50', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0019', 'CD4', '', '1', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0020', 'CD8', 'cells/uL', '1', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0021', 'CD4/CD8', '', '1', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0032', 'C3 COMPLEMENT(Beta1C)', 'g/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0033', 'C4 COMPLEMENT', 'ug/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0034', 'C - REACTIVE PROTEIN [ CRP ]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0035', 'TRANSFERRIN', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0036', 'BETA  HCG', 'mIU/mL', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0037', 'CORTISOL HORMONE', 'ug/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0038', 'ESTRADIOL(E2)', 'pg/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0039', 'Estriol [E3]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0040', 'FSH', 'mIU/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0041', 'LH', 'mIU/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0042', 'PROGESTERONE', 'ng/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0043', 'PROLACTIN', 'ng//ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0044', 'TESTOSTERONE', ' ng/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0045', 'T3', 'ng/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0046', 'FREE T3', 'pg/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0047', 'T4', ' ug%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0048', 'FREE T4', 'ng%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0049', 'TSH', 'uU/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0050', 'PARATHYROID', 'pg/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0051', 'INSULIN', 'uU/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0052', 'GROWTH  HORMONE', ' ng/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0053', 'AFP', 'IU/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0054', 'CEA', 'ng/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0055', 'PSA(Prostatic Specific Ag)', 'ng/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0056', 'CA 12-5', 'U/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0057', 'CA 15-3', ' U/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0058', 'CA 19-9', 'U/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0059', 'FREE PSA ', 'ng/ml', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0060', 'OSMOLALITY [SERUM]', 'mosm/kg', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0061', 'OSMOLALITY [URINE]', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0062', 'FREE PSA/TOTAL PSA', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0076', 'AMPHETAMINE (THAIYANYOL)', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0078', 'TV', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0079', 'Fungus', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0085', 'PKU', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0086', 'TSH', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0087', '17OHP', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0089', 'TSH', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0090', 'T3', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('SRT0091', 'T4', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('URT0038', 'Urine 24 hrs. Cr.Clearance', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('URT0039', 'Urobilinogen', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0136', 'Glucose', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0137', 'Anion Gap', 'mEq/L', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0067', 'RDW', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0022', 'G-6-P-D', '', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0068', 'Neutrophil', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0139', 'Glucose', 'mg/dl', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0069', 'Lymphocyte', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0070', 'Monocyte', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0071', 'Eosinophil', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0072', 'Basophil', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0073', 'Corrected WBC', '/uL', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0074', 'Atypical Lymphocyte', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0075', 'Band form neutrophil', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0076', 'Blast', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0077', 'NRC', '/100 WBC', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0140', 'Parathyroid Hormone-intact', 'pg/mL', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0080', 'wbc: Basophilic myelocyte', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0081', 'wbc: Eosinophilic myelocyte', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0082', 'wbc: Metamyelocyte', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0083', 'wbc: Myeloblast', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0084', 'wbc: Myelocyte', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0085', 'wbc: Neutrophilic myelocyte', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('HTT0086', 'wbc: Promyelocyte', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0144', '% HbA1C (NGSP/DCCT)', '%', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0145', 'HbA1C (IFCC)', 'mmol/mol', '0', '0', null, '1');
INSERT INTO `tbl_setup_lab_test` VALUES ('CHT0146', 'eAG (Estimated average glucose)', 'mg/dl', '0', '0', null, '1');

-- ----------------------------
-- Table structure for `tbl_setup_lab_test_normal`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_lab_test_normal`;
CREATE TABLE `tbl_setup_lab_test_normal` (
  `ID_LAB` varchar(33) NOT NULL DEFAULT '',
  `ID_Sex` varchar(33) NOT NULL DEFAULT '',
  `llevel` varchar(33) DEFAULT NULL,
  `DAge` varchar(33) DEFAULT NULL,
  `MAge` varchar(33) DEFAULT NULL,
  `YAge` varchar(33) NOT NULL,
  `lrange` varchar(33) DEFAULT NULL,
  `Vmin` varchar(35) DEFAULT NULL,
  `Vmax` varchar(35) DEFAULT NULL,
  `CL` varchar(35) DEFAULT NULL,
  `CH` varchar(35) DEFAULT NULL,
  `Delta` int(4) DEFAULT NULL,
  `Fg` varchar(33) DEFAULT NULL,
  `comment` varchar(33) DEFAULT NULL,
  PRIMARY KEY (`ID_LAB`,`ID_Sex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_lab_test_normal
-- ----------------------------
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0001', 'F', '-', '0', '0', '0', '-', '70', '99', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0001', 'M', '-', '0', '0', '0', '-', '70', '99', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0002', 'F', '-', '0', '0', '0', '-', '5', '25', '0', '100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0002', 'M', '-', '0', '0', '0', '-', '5', '25', '0', '100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0045', 'M', '-', '0', '0', '0', '-', '0.0', '6.0', '0', '10', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0006', '-', '-', '', '', '', '-', '30', '150', '0', '500', '20', '0', '');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0007', '-', '-', '', '', '', '-', '45', '120', '0', '200', '20', '0', '');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0025', 'M', '-', '0', '0', '0', '-', '27', '102', '2', '300', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0009', '-', '-', '', '', '', '-', '6.0', '8.5', '2.0', '12.0', '20', '0', '');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0022', 'F', '-', '0', '0', '0', '-', '8.5', '10.5', '2', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0011', '-', '-', '', '', '', '-', '1.5', '3.5', '0', '4', '20', '0', '');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0020', 'F', '-', '0', '0', '0', '-', '20.0', '35.0', '10', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0017', 'F', '-', '0', '0', '0', '-', '135.0', '145.0', '120.0', '160.0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0013', '-', '-', '', '', '', '<', '0.5', '0', '0', '0', '0', '0', '');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0012', '-', '-', '', '', '', '<', '2.0', '0', '0', '0', '0', '0', '');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0014', '-', '-', '0', '0', '0', '<', '40', '0', '0', '100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0015', '-', '-', '0', '0', '0', '<', '35', '0', '0', '100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0016', 'F', '-', '0', '0', '0', '-', '42', '135', '10', '2000', '30', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0016', 'M', '-', '0', '0', '0', '-', '42', '135', '10', '2000', '30', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0017', 'M', '-', '0', '0', '0', '-', '135.0', '145.0', '120.0', '160.0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0018', 'F', '-', '0', '0', '0', '-', '3.50', '5.50', '2.50', '6.50', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0018', 'M', '-', '0', '0', '0', '-', '3.50', '5.50', '2.50', '6.50', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0019', 'F', '-', '0', '0', '0', '-', '95.0', '105.0', '80.0', '115.0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0019', 'M', '-', '0', '0', '0', '-', '95.0', '105.0', '80.0', '115.0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0020', 'M', '-', '0', '0', '0', '-', '20.0', '35.0', '10.0', '40.0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0021', 'F', '-', '0', '0', '0', '-', '9', '39', '5', '50', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0021', 'M', '-', '0', '0', '0', '-', '11', '61', '5', '50', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0022', 'M', '-', '0', '0', '0', '-', '8.5', '10.5', '2', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0023', 'F', '-', '0', '0', '0', '-', '2.5', '5', '1', '10', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0023', 'M', '-', '0', '0', '0', '-', '2.5', '5', '1', '10', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0024', 'F', '-', '0', '0', '0', '-', '1.6', '2.6', '1', '3', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0024', 'M', '-', '0', '0', '0', '-', '1.6', '2.6', '1', '3', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0025', 'F', '-', '0', '0', '0', '-', '27', '102', '4', '300', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0026', 'M', '-', '0', '0', '0', '-', '0', '60', '0', '100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0026', 'F', '-', '0', '0', '0', '-', '0', '60', '0', '100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0027', 'F', '-', '0', '0', '0', '-', '0.3', '9.2', '0', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0027', 'M', '-', '0', '0', '0', '-', '2.5', '11.7', '0', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0028', 'M', '-', '0', '0', '0', '-', '0', '3.7', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0028', 'F', '-', '0', '0', '0', '-', '0', '3.7', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0029', 'F', '-', '0', '0', '0', '-', '230', '450', '200', '1000', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0029', 'M', '-', '0', '0', '0', '-', '230', '450', '200', '1000', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0030', 'M', '-', '0', '0', '0', '-', '17', '28', '10', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0030', 'F', '-', '0', '0', '0', '-', '17', '28', '10', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0031', 'M', '-', '0', '0', '0', '-', '30', '36', '20', '50', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0031', 'F', '-', '0', '0', '0', '-', '30', '36', '20', '50', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0032', 'M', '-', '0', '0', '0', '-', '19', '25', '10', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0032', 'F', '-', '0', '0', '0', '-', '19', '25', '10', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0033', 'M', '-', '0', '0', '0', '-', '10', '16', '5', '30', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0033', 'F', '-', '0', '0', '0', '-', '10', '16', '5', '30', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0034', 'M', '-', '0', '0', '0', '-', '6', '13', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0034', 'F', '-', '0', '0', '0', '-', '6', '13', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0035', 'M', '-', '0', '0', '0', '-', '24', '195', '20', '400', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0035', 'F', '-', '0', '0', '0', '-', '24', '195', '20', '400', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0036', 'M', '-', '0', '0', '0', '-', '0', '5', '0', '10', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0036', 'F', '-', '0', '0', '0', '-', '0', '5', '0', '10', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0037', 'M', '-', '0', '0', '0', '-', '0', '25', '0', '125', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0037', 'F', '-', '0', '0', '0', '-', '0', '25', '0', '125', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0041', 'M', '-', '0', '0', '0', '-', '70', '110', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0041', 'F', '-', '0', '0', '0', '-', '70', '110', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0042', 'F', '-', '0', '0', '0', '-', '70', '110', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0042', 'M', '-', '0', '0', '0', '-', '70', '110', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0043', 'M', '-', '0', '0', '0', '-', '70', '110', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0043', 'F', '-', '0', '0', '0', '-', '70', '110', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0044', 'M', '-', '0', '0', '0', '-', '70', '110', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0044', 'F', '-', '0', '0', '0', '-', '70', '110', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0045', 'F', '-', '0', '0', '0', '-', '0.0', '6.0', '0', '10', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0048', 'M', '-', '0', '0', '0', '-', '240', '480', '200', '500', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0048', 'F', '-', '0', '0', '0', '-', '240', '480', '200', '500', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0049', 'M', '-', '0', '0', '0', '-', '200', '280', '100', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0049', 'F', '-', '0', '0', '0', '-', '200', '280', '100', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0050', 'M', '-', '0', '0', '0', '-', '50', '80', '20', '100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0050', 'F', '-', '0', '0', '0', '-', '50', '80', '20', '100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0051', 'M', '-', '0', '0', '0', '-', '15', '45', '0', '46', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0051', 'F', '-', '0', '0', '0', '-', '15', '45', '0', '46', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0052', 'F', '-', '0', '0', '0', '-', '7.350', '7.450', '6', '8', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0052', 'M', '-', '0', '0', '0', '-', '7.350', '7.450', '6', '8', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0053', 'F', '-', '0', '0', '0', '-', '35.0', '45.0', '30', '50', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0053', 'M', '-', '0', '0', '0', '-', '35.0', '45.0', '30', '50', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0054', 'M', '-', '0', '0', '0', '-', '80.0', '100.0', '50', '200', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0055', 'F', '-', '0', '0', '0', '-', '21.0', '29.0', '10.0', '40.0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0055', 'M', '-', '0', '0', '0', '-', '21.0', '29.0', '10.0', '40.0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0056', 'F', '-', '0', '0', '0', '-', '19', '31', '10', '35', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0056', 'M', '-', '0', '0', '0', '-', '19', '31', '10', '35', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0075', 'F', '-', '0', '0', '0', '-', '1', '17', '0', '30', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0001', 'M', '-', '0', '0', '0', '-', '4.0', '10.0', '1.5', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0001', 'F', '-', '0', '0', '0', '-', '4.0', '10.0', '1.5', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0002', 'M', '-', '0', '0', '0', '-', '37', '80', '10', '90', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0002', 'F', '-', '0', '0', '0', '-', '37', '80', '10', '90', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0003', 'M', '-', '0', '0', '0', '-', '10', '50', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0003', 'F', '-', '0', '0', '0', '-', '10', '50', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0004', 'F', '-', '0', '0', '0', '-', '0', '12', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0005', 'M', '-', '0', '0', '0', '-', '0', '10', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0005', 'F', '-', '0', '0', '0', '-', '0', '10', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0006', 'F', '-', '0', '0', '0', '-', '0', '3', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0006', 'M', '-', '0', '0', '0', '-', '0', '3', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0007', 'M', '-', '0', '0', '0', '-', '3.90', '6.50', '2', '7', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0007', 'F', '-', '0', '0', '0', '-', '3.90', '6.50', '2', '7', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0008', 'F', '-', '0', '0', '0', '-', '12.0', '18.0', '10', '19', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0008', 'M', '-', '0', '0', '0', '-', '12.0', '18.0', '10', '19', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0009', 'M', '-', '0', '0', '0', '-', '36', '50', '30', '60', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0009', 'F', '-', '0', '0', '0', '-', '36', '50', '30', '60', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0010', 'M', '-', '0', '0', '0', '-', '82.0', '98.0', '75', '99', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0010', 'F', '-', '0', '0', '0', '-', '82.0', '98.0', '75', '99', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0011', 'F', '-', '0', '0', '0', '-', '27.0', '33.0', '20', '38', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0011', 'M', '-', '0', '0', '0', '-', '27.0', '33.0', '20', '38', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0012', 'F', '-', '0', '0', '0', '-', '32.0', '36.0', '28', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0012', 'M', '-', '0', '0', '0', '-', '32.0', '36.0', '28', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0013', 'M', '-', '0', '0', '0', '-', '150', '450', '120', '550', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0013', 'F', '-', '0', '0', '0', '-', '150', '450', '120', '550', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0016', 'F', '-', '0', '0', '0', '-', '0.2', '2', '0', '7', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0021', 'M', '-', '0', '0', '0', '-', '0', '20', '0', '30', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0029', 'F', '-', '0', '0', '0', '-', '6', '21', '5', '22', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0030', 'F', '-', '0', '0', '0', '-', '1', '2', '0.5', '3', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0031', 'F', '-', '0', '0', '0', '-', '10.1', '13.7', '9', '18', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0031', 'M', '-', '0', '0', '0', '-', '10.1', '13.7', '9', '18', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0032', 'F', '-', '0', '0', '0', '-', '11', '15', '10', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0032', 'M', '-', '0', '0', '0', '-', '11', '15', '10', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0034', 'F', '-', '0', '0', '0', '-', '22.0', '29.8', '20', '35', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0034', 'M', '-', '0', '0', '0', '-', '22.0', '29.8', '20', '35', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0035', 'M', '-', '0', '0', '0', '-', '26.1', '36.3', '25', '37', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0035', 'F', '-', '0', '0', '0', '-', '26.1', '36.3', '25', '37', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0036', 'F', '-', '0', '0', '0', '-', '12', '20', '10', '21', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0036', 'M', '-', '0', '0', '0', '-', '12', '20', '10', '21', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0037', 'F', '-', '0', '0', '0', '-', '14', '21', '13', '22', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0037', 'M', '-', '0', '0', '0', '-', '14', '21', '13', '22', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0058', 'F', '-', '0', '0', '0', '-', '', '/100', '0', '200', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0058', 'M', '-', '0', '0', '0', '-', '', '/100', '0', '200', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0060', 'M', '-', '0', '0', '0', '-', '35', '56', '30', '60', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0060', 'F', '-', '0', '0', '0', '-', '35', '56', '30', '60', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SPT0133', 'M', '-', '0', '0', '0', '-', '0.1', '4', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SPT0133', 'F', '-', '0', '0', '0', '-', '0.1', '4', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SPT0156', 'F', '-', '0', '0', '0', '-', '30.00', '400.00', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SPT0200', 'M', '-', '0', '0', '0', '-', '5', '15', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SPT0200', 'F', '-', '0', '0', '0', '-', '5', '15', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SPT0469', 'M', '-', '0', '0', '0', '-', '0', '0.5', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SPT0469', 'F', '-', '0', '0', '0', '-', '0', '0.5', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0003', 'M', '-', '0', '0', '0', '<', '1:80', '0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0003', 'F', '-', '0', '0', '0', '<', '1:80', '0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0004', 'F', '-', '0', '0', '0', '<', '1:80', '0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0004', 'M', '-', '0', '0', '0', '<', '1:80', '0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0005', 'F', '-', '0', '0', '0', '<', '1:80', '0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0005', 'M', '-', '0', '0', '0', '<', '1:80', '0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0006', 'M', '-', '0', '0', '0', '<', '1:80', '0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0006', 'F', '-', '0', '0', '0', '<', '1:80', '0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0007', 'M', '-', '0', '0', '0', '<=', '1:80', '0', '0', '1:320', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0007', 'F', '-', '0', '0', '0', '<=', '1:80', '0', '0', '1:320', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0008', 'M', '-', '0', '0', '0', '<=', '1:80', '0', '0', '1:320', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0008', 'F', '-', '0', '0', '0', '<=', '1:80', '0', '0', '1:320', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0009', 'M', '-', '0', '0', '0', '<=', '1:80', '0', '0', '1:320', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0009', 'F', '-', '0', '0', '0', '<=', '1:80', '0', '0', '1:320', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0011', 'F', '-', '0', '0', '0', '-', '0', '200', '0', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0011', 'M', '-', '0', '0', '0', '-', '0', '200', '0', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0012', 'M', '-', '0', '0', '0', '-', '1:8', '1:32', '1:8', '1:64', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0012', 'F', '-', '0', '0', '0', '-', '1:8', '1:32', '1:8', '1:64', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0013', 'F', '-', '0', '0', '0', '<', '3.8', '0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0019', 'M', '-', '0', '0', '0', '-', '0', '0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0019', 'F', '-', '0', '0', '0', '-', '0', '0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0020', 'M', '-', '0', '0', '0', '-', '410', '1025', '400', '1100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0020', 'F', '-', '0', '0', '0', '-', '468', '1070', '400', '1100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0021', 'F', '-', '0', '0', '0', '-', '0.65', '2.49', '0', '3', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0021', 'M', '-', '0', '0', '0', '-', '0.65', '2.49', '0', '3', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0032', 'M', '-', '0', '0', '0', '-', '0.9', '1.8', '0.8', '1.9', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0032', 'F', '-', '0', '0', '0', '-', '0.9', '1.8', '0.8', '1.9', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0033', 'M', '-', '0', '0', '0', '-', '200', '500', '100', '600', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0033', 'F', '-', '0', '0', '0', '-', '200', '500', '100', '600', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0034', 'M', '-', '0', '0', '0', '-', '0.0', '5.0', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0034', 'F', '-', '0', '0', '0', '-', '0.0', '5.0', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0035', 'F', '-', '0', '0', '0', '-', '240', '480', '200', '500', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0035', 'M', '-', '0', '0', '0', '-', '240', '480', '200', '500', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0036', 'F', '-', '0', '0', '0', '-', '0', '5', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0038', 'M', '-', '0', '0', '0', '-', '0', '90', '0', '100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0038', 'F', '-', '0', '0', '0', '-', '0', '0', '0', '0', '0', '1', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0040', 'M', '-', '0', '0', '0', '-', '0', '8', '0', '10', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0040', 'F', '-', '0', '0', '0', '-', '0', '0', '0', '0', '0', '1', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0041', 'F', '-', '0', '0', '0', '-', '0', '0', '0', '0', '0', '1', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0041', 'M', '-', '0', '0', '0', '-', '0', '6', '0', '7', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0042', 'M', '-', '0', '0', '0', '-', '0', '0.4', '0', '1', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0042', 'F', '-', '0', '0', '0', '-', '0', '0', '0', '0', '0', '1', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0043', 'M', '-', '0', '0', '0', '-', '0', '20', '0', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0043', 'F', '-', '0', '0', '0', '-', '0', '0', '0', '0', '0', '1', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0044', 'M', '-', '0', '0', '0', '-', '2.8', '8.0', '0', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0044', 'F', '-', '0', '0', '0', '-', '0.06', '0.82', '0', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0045', 'F', '-', '0', '0', '0', '-', '79', '149', '50', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0045', 'M', '-', '0', '0', '0', '-', '79', '149', '50', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0046', 'F', '-', '0', '0', '0', '-', '1.45', '3.48', '1', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0046', 'M', '-', '0', '0', '0', '-', '1.45', '3.48', '1', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0047', 'M', '-', '0', '0', '0', '-', '4.5', '12', '1', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0047', 'F', '-', '0', '0', '0', '-', '4.5', '12', '1', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0048', 'F', '-', '0', '0', '0', '-', '0.71', '1.85', '0.2', '3.0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0048', 'M', '-', '0', '0', '0', '-', '0.71', '1.85', '0.2', '3.0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0049', 'M', '-', '0', '0', '0', '-', '0.470', '4.640', '0', '6', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0049', 'F', '-', '0', '0', '0', '-', '0.470', '4.640', '0', '6', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0050', 'M', '-', '0', '0', '0', '-', '16', '62', '10', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0050', 'F', '-', '0', '0', '0', '-', '16', '62', '10', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0051', 'M', '-', '0', '0', '0', '-', '0', '20', '0', '30', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0051', 'F', '-', '0', '0', '0', '-', '0', '20', '0', '30', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0052', 'F', '-', '0', '0', '0', '-', '0', '7', '0', '8', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0052', 'M', '-', '0', '0', '0', '-', '0', '7', '0', '8', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0053', 'M', '-', '0', '0', '0', '<', '10.00', '0', '0', '11', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0053', 'F', '-', '0', '0', '0', '<', '10.00', '0', '0', '11', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0054', 'M', '-', '0', '0', '0', '<', '5', '0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0054', 'F', '-', '0', '0', '0', '<', '5', '0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0055', 'F', '-', '0', '0', '0', '-', '0', '4.00', '0', '10.00', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0055', 'M', '-', '0', '0', '0', '-', '0', '4.00', '0', '10.00', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0056', 'M', '-', '0', '0', '0', '-', '0', '35', '0', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0056', 'F', '-', '0', '0', '0', '-', '0', '35', '0', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0057', 'F', '-', '0', '0', '0', '-', '0', '39', '0', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0057', 'M', '-', '0', '0', '0', '-', '0', '39', '0', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0058', 'F', '-', '0', '0', '0', '-', '0', '37', '0', '37', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0059', 'M', '-', '0', '0', '0', '-', '0', '2.5', '0', '0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0059', 'F', '-', '0', '0', '0', '-', '0', '2.5', '0', '0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0060', 'F', '-', '0', '0', '0', '-', '275', '295', '270', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0060', 'M', '-', '0', '0', '0', '-', '275', '295', '270', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0080', 'M', '-', '0', '0', '0', '-', '28', '162', '10', '200', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0080', 'F', '-', '0', '0', '0', '-', '28', '162', '10', '200', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0081', 'M', '-', '0', '0', '0', '-', '250', '450', '200', '500', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0081', 'F', '-', '0', '0', '0', '-', '250', '450', '200', '500', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0082', 'M', '-', '0', '0', '0', '-', '240', '480', '200', '500', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0082', 'F', '-', '0', '0', '0', '-', '240', '480', '200', '500', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('URT0003', 'M', '-', '0', '0', '0', '-', '1.003', '1.030', '0', '0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('URT0003', 'F', '-', '0', '0', '0', '-', '1.003', '1.030', '0', '0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('URT0023', 'F', '-', '0', '0', '0', '-', '50', '80', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('URT0024', 'M', '-', '0', '0', '0', '-', '1.0', '2.0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('URT0025', 'F', '-', '0', '0', '0', '-', '12.0', '20.0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('URT0026', 'F', '-', '0', '0', '0', '-', '40', '220', '40', '220', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('URT0026', 'M', '-', '0', '0', '0', '-', '40', '220', '40', '220', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0003', '-', '-', '', '', '', '-', '0.5', '1.5', '0', '7.5', '20', '0', '');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0004', '-', '-', '', '', '', '-', '20', '7', '0', '15', '20', '0', '');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0005', '-', '-', '', '', '', '-', '125', '200', '0', '201', '20', '0', '');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0008', '-', '-', '', '', '', '-', '10', '110', '9', '300', '20', '0', '');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0010', '-', '-', '', '', '', '-', '3.5', '5.5', '1.0', '8.0', '20', '0', '');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0054', 'F', '-', '0', '0', '0', '-', '80.0', '100.0', '50.0', '200.0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('CHT0075', 'M', '-', '0', '0', '0', '-', '1', '17', '0', '30', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0004', 'M', '-', '0', '0', '0', '-', '0', '12', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0016', 'M', '-', '0', '0', '0', '-', '0.2', '2', '0', '7', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0021', 'F', '-', '0', '0', '0', '-', '0', '20', '0', '30', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0029', 'M', '-', '0', '0', '0', '-', '6', '21', '5', '22', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('HTT0030', 'M', '-', '0', '0', '0', '-', '1', '2', '0.5', '3', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('URT0023', 'M', '-', '0', '0', '0', '-', '50', '80', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('URT0024', 'F', '-', '0', '0', '0', '-', '0.6', '1.5', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('URT0025', 'M', '-', '0', '0', '0', '-', '12.0', '20.0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0013', 'M', '-', '0', '0', '0', '<', '3.8', '0', '0', '0', '0', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0036', 'M', '-', '0', '0', '0', '-', '0', '5', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal` VALUES ('SRT0058', 'M', '-', '0', '0', '0', '-', '0', '37', '0', '37', '20', '0', '-');

-- ----------------------------
-- Table structure for `tbl_setup_lab_test_normal_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_lab_test_normal_copy`;
CREATE TABLE `tbl_setup_lab_test_normal_copy` (
  `ID_LAB` varchar(33) NOT NULL DEFAULT '',
  `ID_Sex` varchar(33) NOT NULL DEFAULT '',
  `llevel` varchar(33) DEFAULT NULL,
  `DAge` varchar(33) DEFAULT NULL,
  `MAge` varchar(33) DEFAULT NULL,
  `YAge` varchar(33) NOT NULL,
  `lrange` varchar(33) DEFAULT NULL,
  `Vmin` varchar(35) DEFAULT NULL,
  `Vmax` varchar(35) DEFAULT NULL,
  `CL` varchar(35) DEFAULT NULL,
  `CH` varchar(35) DEFAULT NULL,
  `Delta` int(4) DEFAULT NULL,
  `Fg` varchar(33) DEFAULT NULL,
  `comment` varchar(33) DEFAULT NULL,
  PRIMARY KEY (`ID_LAB`,`ID_Sex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_lab_test_normal_copy
-- ----------------------------
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0005', 'F', '-', '0', '0', '0', '-', '0', '200', '0', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0011', 'M', '-', '0', '0', '0', '-', '1.9', '3.5', '0', '4', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0096', 'M', '-', '0', '0', '0', '-', '6.6', '8.7', '5', '7', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0097', 'M', '-', '0', '0', '0', '-', '3.8', '5.1', '2', '6', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0098', 'M', '-', '0', '0', '0', '-', '1.9', '3.5', '0', '4', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0099', 'M', '-', '0', '0', '0', '-', '<', '1.1', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0100', 'M', '-', '0', '0', '0', '-', '<', '0.4', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0101', 'M', '-', '0', '0', '0', '-', '<', '37', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0018', 'M', '-', '0', '0', '0', '-', '3.8', '5.5', '2.5', '6.5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0019', 'M', '-', '0', '0', '0', '-', '98', '110', '80', '115', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0020', 'M', '-', '0', '0', '0', '-', '22', '32', '10', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0022', 'M', '-', '0', '0', '0', '-', '8.5', '10.5', '6', '14', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0007', 'M', '-', '0', '0', '0', '-', '<=', '1:160', '0', '1:320', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0008', 'M', '-', '0', '0', '0', '-', '<=', '1:160', '0', '1:320', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0009', 'M', '-', '0', '0', '0', '-', '<=', '1:160', '0', '1:320', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0029', 'F', '-', '0', '0', '0', '-', '230', '460', '200', '1000', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0035', 'F', '-', '0', '0', '0', '-', '45', '295', '20', '400', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0001', 'F', '-', '', '', '', '-', '70', '100', '40', '250', '0', '0', '');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0032', 'M', '-', '0', '0', '0', '-', '12', '15', '9', '16', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0034', 'F', '-', '0', '0', '0', '-', '23', '34', '20', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0049', 'F', '-', '0', '0', '0', '-', '0.35', '5.50', '0', '6', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0046', 'M', '-', '0', '0', '0', '-', '2.3', '4.2', '2', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0102', 'M', '-', '0', '0', '0', '-', '<', '42', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0029', 'F', '-', '0', '0', '0', '-', '6', '21', '5', '22', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0013', 'M', '-', '0', '0', '0', '-', '0', '100', '0', '200', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0003', 'F', '-', '0', '0', '0', '-', '10', '50', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0006', 'M', '-', '0', '0', '0', '-', '0', '3', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0010', 'F', '-', '0', '0', '0', '-', '82', '98', '75', '99', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0005', 'M', '-', '0', '0', '0', '-', '0', '10', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0003', 'F', '-', '0', '0', '0', '-', '0.5', '1.5', '0', '7.5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0103', 'M', '-', '0', '0', '0', '-', '42', '128', '10', '160', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0104', 'M', '-', '0', '0', '0', '-', '135', '150', '120', '160', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0023', 'M', '-', '0', '0', '0', '-', '2.5', '5', '1', '10', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0087', 'M', '-', '0', '0', '0', '-', '0', '3', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0024', 'F', '-', '0', '0', '0', '-', '1.8', '2.1', '1', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0027', 'F', '-', '0', '0', '0', '-', '0.3', '9.2', '0', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0025', 'M', '-', '0', '0', '0', '-', '<', '220', '0', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0105', 'M', '-', '0', '0', '0', '-', '3.8', '5.5', '2.5', '6.5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0026', 'M', '-', '0', '0', '0', '-', '0', '60', '0', '100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0028', 'M', '-', '0', '0', '0', '-', '0', '3.7', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0047', 'F', '-', '0', '0', '0', '-', '250', '450', '200', '500', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0106', 'M', '-', '0', '0', '0', '-', '98', '110', '80', '115', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0107', 'M', '-', '0', '0', '0', '-', '22', '32', '10', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0036', 'M', '-', '0', '0', '0', '-', '0', '5', '0', '10', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0008', 'F', '-', '0', '0', '0', '-', '12.0', '18.0', '10', '19', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0067', 'M', '-', '0', '0', '0', '-', '11.0', '16.0', '0', '30', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0032', 'M', '-', '0', '0', '0', '-', '19', '25', '10', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0032', 'F', '-', '0', '0', '0', '-', '19', '25', '10', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0033', 'M', '-', '0', '0', '0', '-', '10', '16', '5', '30', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0033', 'F', '-', '0', '0', '0', '-', '10', '16', '5', '30', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0034', 'M', '-', '0', '0', '0', '-', '6', '13', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0034', 'F', '-', '0', '0', '0', '-', '6', '13', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0017', 'M', '-', '0', '0', '0', '-', '135', '150', '120', '160', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0087', 'F', '-', '0', '0', '0', '-', '0', '3', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0071', 'M', '-', '0', '0', '0', '-', '60', '210', '50', '220', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0062', 'M', '-', '0', '0', '0', '-', '28', '370', '10', '400', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0002', 'F', '-', '0', '0', '0', '-', '40', '70', '0', '80', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0001', 'F', '-', '0', '0', '0', '-', '5000', '10000', '1000', '15000', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0001', 'M', '-', '0', '0', '0', '-', '5000', '10000', '1000', '15000', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0021', 'F', '-', '0', '0', '0', '-', '9', '39', '5', '50', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0037', 'M', '-', '0', '0', '0', '-', '0', '25', '0', '125', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0046', 'F', '-', '0', '0', '0', '-', '28', '184', '10', '200', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0068', 'M', '-', '0', '0', '0', '-', '100', '300', '90', '310', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0061', 'F', '-', '0', '0', '0', '-', '25', '125', '10', '200', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0060', 'M', '-', '0', '0', '0', '-', '275', '295', '270', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0067', 'M', '-', '0', '0', '0', '-', '250', '750', '200', '800', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0058', 'M', '-', '0', '0', '0', '-', '82', '98', '75', '99', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0058', 'F', '-', '0', '0', '0', '-', '82', '98', '75', '99', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0059', 'M', '-', '0', '0', '0', '-', '32', '36', '28', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0052', 'M', '-', '0', '0', '0', '-', '7.35', '7.45', '6', '8', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0053', 'M', '-', '0', '0', '0', '-', '35', '45', '30', '50', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0054', 'M', '-', '0', '0', '0', '-', '80', '100', '50', '100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0036', 'M', '-', '0', '0', '0', '-', '0', '10', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0048', 'M', '-', '0', '0', '0', '-', '240', '480', '200', '500', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0048', 'F', '-', '0', '0', '0', '-', '240', '480', '200', '500', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0049', 'M', '-', '0', '0', '0', '-', '200', '280', '100', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0049', 'F', '-', '0', '0', '0', '-', '200', '280', '100', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0050', 'M', '-', '0', '0', '0', '-', '50', '80', '20', '100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0050', 'F', '-', '0', '0', '0', '-', '50', '80', '20', '100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0051', 'M', '-', '0', '0', '0', '-', '15', '45', '0', '46', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0051', 'F', '-', '0', '0', '0', '-', '15', '45', '0', '46', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0052', 'F', '-', '0', '0', '0', '-', '7.35', '7.45', '6', '8', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0054', 'F', '-', '0', '0', '0', '-', '80', '100', '50', '150', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0056', 'M', '-', '0', '0', '0', '-', '19', '31', '10', '35', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0056', 'F', '-', '0', '0', '0', '-', '19', '31', '10', '35', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0055', 'M', '-', '0', '0', '0', '-', '21', '29', '10', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0055', 'F', '-', '0', '0', '0', '-', '21', '29', '10', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0045', 'M', '-', '0', '0', '0', '-', '60', '181', '80', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0045', 'F', '-', '0', '0', '0', '-', '60', '181', '80', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0047', 'F', '-', '0', '0', '0', '-', '3.2', '12.6', '3', '13', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0047', 'M', '-', '0', '0', '0', '-', '3.2', '12.6', '3', '13', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0088', 'M', '-', '0', '0', '0', '-', '0', '3', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0010', 'M', '-', '0', '0', '0', '-', '82', '98', '75', '99', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0007', 'F', '-', '0', '0', '0', '-', '3.90', '6.50', '2', '7', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0002', '-', '-', '', '', '', '<', '23', '0', '0', '50', '15', '0', '');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0016', 'F', '-', '0', '0', '0', '-', '42', '128', '10', '600', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0002', 'M', '-', '0', '0', '0', '-', '40', '70', '0', '80', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0021', 'M', '-', '0', '0', '0', '-', '11', '61', '5', '50', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0060', 'M', '-', '0', '0', '0', '-', '40', '220', '10', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0060', 'F', '-', '0', '0', '0', '-', '40', '220', '10', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0061', 'M', '-', '0', '0', '0', '-', '25', '125', '10', '200', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0062', 'F', '-', '0', '0', '0', '-', '28', '370', '10', '400', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0037', 'F', '-', '0', '0', '0', '-', '0', '25', '0', '125', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0024', 'M', '-', '0', '0', '0', '-', '1.8', '2.1', '1', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0071', 'F', '-', '0', '0', '0', '-', '60', '210', '50', '220', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0025', 'F', '-', '0', '0', '0', '-', '<', '220', '0', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0140', 'M', '-', '0', '0', '0', '-', '70', '115', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0003', 'M', '-', '0', '0', '0', '-', '10', '50', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0007', 'M', '-', '0', '0', '0', '-', '3.90', '6.50', '2', '7', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0005', 'F', '-', '0', '0', '0', '-', '0', '10', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0011', 'F', '-', '0', '0', '0', '-', '27', '33', '20', '38', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0011', 'M', '-', '0', '0', '0', '-', '27', '33', '20', '38', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0012', 'M', '-', '0', '0', '0', '-', '32', '36', '28', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0004', 'F', '-', '0', '0', '0', '-', '0', '12', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0012', 'F', '-', '0', '0', '0', '-', '32', '36', '28', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0001', 'M', '-', '', '', '', '-', '70', '100', '40', '250', '0', '0', '');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0003', 'M', '-', '0', '0', '0', '-', '0.5', '1.5', '0', '7.5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0004', 'M', '-', '0', '0', '0', '-', '2.4', '7.0', '0', '9', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0007', 'F', '-', '0', '0', '0', '-', '30', '60', '20', '90', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0008', 'M', '-', '0', '0', '0', '-', '<', '150', '0', '250', '20', '0', '-\r\n');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0008', 'F', '-', '0', '0', '0', '-', '<', '150', '0', '250', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0013', 'F', '-', '0', '0', '0', '-', '<', '0.4', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0014', 'F', '-', '0', '0', '0', '-', '<', '37', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0015', 'F', '-', '0', '0', '0', '-', '<', '42', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0027', 'M', '-', '0', '0', '0', '-', '2.5', '11.7', '0', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0048', 'F', '-', '0', '0', '0', '-', '0.8', '1.8', '0.7', '1.9', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0038', 'M', '-', '0', '0', '0', '-', '0', '90', '0', '100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0040', 'M', '-', '0', '0', '0', '-', '0', '8', '0', '10', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0052', 'M', '-', '0', '0', '0', '-', '0', '7', '0', '8', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0051', 'M', '-', '0', '0', '0', '-', '0', '20', '0', '30', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0010', 'M', '-', '0', '0', '0', '-', '3.8', '5.1', '2', '6', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0031', 'M', '-', '0', '0', '0', '-', '10', '14', '9', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0031', 'F', '-', '0', '0', '0', '-', '10', '14', '9', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0041', 'M', '-', '0', '0', '0', '-', '0', '6', '0', '7', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0009', 'F', '-', '0', '0', '0', '-', '6.6', '8.7', '5', '9', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0042', 'M', '-', '0', '0', '0', '-', '0', '0.4', '0', '1', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0044', 'M', '-', '0', '0', '0', '-', '2.8', '8.0', '0', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0043', 'M', '-', '0', '0', '0', '-', '0', '20', '0', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0008', 'F', '-', '0', '0', '0', '-', '<=', '1:160', '0', '1:320', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0009', 'F', '-', '0', '0', '0', '-', '<=', '1:160', '0', '1:320', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0012', 'M', '-', '0', '0', '0', '-', '1:8', '1:32', '1:8', '1:64', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0053', 'M', '-', '0', '0', '0', '-', '0', '7', '0', '8', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0029', 'M', '-', '0', '0', '0', '-', '6', '21', '5', '22', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0035', 'F', '-', '0', '0', '0', '-', '26.1', '36.3', '25', '37', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0034', 'M', '-', '0', '0', '0', '-', '23', '34', '20', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0036', 'M', '-', '0', '0', '0', '-', '12', '20', '10', '21', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0036', 'F', '-', '0', '0', '0', '-', '12', '20', '10', '21', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0037', 'M', '-', '0', '0', '0', '-', '14', '21', '13', '22', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0037', 'F', '-', '0', '0', '0', '-', '14', '21', '13', '22', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0035', 'M', '-', '0', '0', '0', '-', '26.1', '36.3', '25', '37', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0020', 'M', '-', '0', '0', '0', '-', '410', '1025', '400', '1100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0020', 'F', '-', '0', '0', '0', '-', '468', '1070', '400', '1100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0021', 'F', '-', '0', '0', '0', '-', '0.65', '2.49', '0', '3', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0064', 'M', '-', '0', '0', '0', '-', '36', '50', '30', '60', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0064', 'F', '-', '0', '0', '0', '-', '36', '50', '30', '60', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0011', 'M', '-', '0', '0', '0', '-', '0', '200', '0', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0053', 'F', '-', '0', '0', '0', '-', '0', '7', '0', '8', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0054', 'M', '-', '0', '0', '0', '-', '0', '5', '0', '6', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0036', 'F', '-', '0', '0', '0', '-', '0', '10', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0032', 'F', '-', '0', '0', '0', '-', '0.9', '1.8', '0.8', '1.9', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0057', 'M', '-', '0', '0', '0', '-', '0', '39', '0', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0057', 'F', '-', '0', '0', '0', '-', '0', '39', '0', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0056', 'F', '-', '0', '0', '0', '-', '0', '35', '0', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0065', 'M', '-', '0', '0', '0', '-', '4', '11', '1.5', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0065', 'F', '-', '0', '0', '0', '-', '4', '11', '1.5', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0066', 'F', '-', '0', '0', '0', '-', '10', '50', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0019', 'F', '-', '0', '0', '0', '-', '12', '24', '0', '30', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0008', 'M', '-', '0', '0', '0', '-', '12.0', '18.0', '10', '19', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0058', 'M', '-', '0', '0', '0', '-', '0', '37', '0', '38', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0058', 'F', '-', '0', '0', '0', '-', '0', '37', '0', '38', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0033', 'M', '-', '0', '0', '0', '-', '200', '500', '100', '600', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0033', 'F', '-', '0', '0', '0', '-', '200', '500', '100', '600', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0034', 'M', '-', '0', '0', '0', '-', '2.0', '3.6', '0', '5.0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0034', 'F', '-', '0', '0', '0', '-', '2.0', '3.6', '0', '2.0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0035', 'M', '-', '0', '0', '0', '-', '240', '480', '200', '500', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0035', 'F', '-', '0', '0', '0', '-', '240', '480', '200', '500', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0038', 'F', '-', '0', '0', '0', '-', '0', '0', '0', '0', '0', '1', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0040', 'F', '-', '0', '0', '0', '-', '0', '0', '0', '0', '0', '1', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0052', 'F', '-', '0', '0', '0', '-', '0', '7', '0', '8', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0051', 'F', '-', '0', '0', '0', '-', '0', '20', '0', '30', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0041', 'F', '-', '0', '0', '0', '-', '0', '0', '0', '0', '0', '1', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0042', 'F', '-', '0', '0', '0', '-', '0', '0', '0', '0', '0', '1', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0044', 'F', '-', '0', '0', '0', '-', '0.06', '0.82', '0', '15', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0043', 'F', '-', '0', '0', '0', '-', '0', '0', '0', '0', '0', '1', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0007', 'F', '-', '0', '0', '0', '-', '<=', '1:160', '0', '1:320', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0055', 'F', '-', '0', '0', '0', '-', '0', '4', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0055', 'M', '-', '0', '0', '0', '-', '0', '4', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0016', 'F', '-', '0', '0', '0', '-', '0.2', '2', '0', '7', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0016', 'M', '-', '0', '0', '0', '-', '0.2', '2', '0', '7', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0021', 'F', '-', '0', '0', '0', '-', '0', '20', '0', '30', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0021', 'M', '-', '0', '0', '0', '-', '0', '20', '0', '30', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0030', 'M', '-', '0', '0', '0', '-', '1', '2', '0.5', '3', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0030', 'F', '-', '0', '0', '0', '-', '1', '2', '0.5', '3', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0050', 'M', '-', '0', '0', '0', '-', '16', '62', '10', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0050', 'F', '-', '0', '0', '0', '-', '16', '62', '10', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0059', 'M', '-', '0', '0', '0', '-', '0', '0.934', '0', '1', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0059', 'F', '-', '0', '0', '0', '-', '0', '0.934', '0', '1', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0011', 'F', '-', '0', '0', '0', '-', '1.9', '3.5', '0', '4', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0006', 'M', '-', '0', '0', '0', '-', '0', '200', '0', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0012', 'F', '-', '0', '0', '0', '-', '<', '1.1', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0022', 'F', '-', '0', '0', '0', '-', '8.5', '10.5', '6', '14', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0028', 'F', '-', '0', '0', '0', '-', '0', '3.7', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0046', 'M', '-', '0', '0', '0', '-', '28', '162', '10', '200', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0010', 'F', '-', '0', '0', '0', '-', '3.8', '5.1', '2', '6', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0004', 'F', '-', '0', '0', '0', '-', '2.4', '7.0', '0', '9', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0005', 'M', '-', '0', '0', '0', '-', '0', '200', '0', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0013', 'M', '-', '0', '0', '0', '-', '<', '0.4', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0068', 'F', '-', '0', '0', '0', '-', '100', '300', '90', '310', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0009', 'M', '-', '0', '0', '0', '-', '36.0', '50.0', '30', '60', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0088', 'F', '-', '0', '0', '0', '-', '0', '3', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0140', 'F', '-', '0', '0', '0', '-', '70', '115', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0026', 'F', '-', '0', '0', '0', '-', '0', '60', '0', '100', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0047', 'M', '-', '0', '0', '0', '-', '250', '450', '200', '500', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0004', 'M', '-', '0', '0', '0', '-', '0', '12', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0006', 'F', '-', '0', '0', '0', '-', '0', '3', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0013', 'M', '-', '0', '0', '0', '-', '150000', '400000', '120000', '500000', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0006', 'F', '-', '0', '0', '0', '-', '0', '200', '0', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0013', 'F', '-', '0', '0', '0', '-', '150000', '400000', '120000', '500000', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0007', 'M', '-', '0', '0', '0', '-', '30', '60', '20', '90', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0036', 'F', '-', '0', '0', '0', '-', '0', '5', '0', '10', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0066', 'M', '-', '0', '0', '0', '-', '110', '250', '100', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0066', 'F', '-', '0', '0', '0', '-', '110', '250', '100', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0067', 'F', '-', '0', '0', '0', '-', '250', '750', '200', '800', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0060', 'F', '-', '0', '0', '0', '-', '275', '295', '270', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0059', 'F', '-', '0', '0', '0', '-', '32', '36', '28', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0069', 'M', '-', '0', '0', '0', '-', '9', '17', '8', '18', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0069', 'F', '-', '0', '0', '0', '-', '9', '17', '8', '18', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0070', 'M', '-', '0', '0', '0', '-', '0.3', '1', '0.2', '1.1', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0070', 'F', '-', '0', '0', '0', '-', '0.3', '1', '0.2', '1.1', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0021', 'M', '-', '0', '0', '0', '-', '0.65', '2.49', '0', '3', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0066', 'M', '-', '0', '0', '0', '-', '10', '50', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0019', 'M', '-', '0', '0', '0', '-', '0', '10', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0009', 'M', '-', '0', '0', '0', '-', '6.6', '8.7', '5', '9', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0012', 'M', '-', '0', '0', '0', '-', '<', '1.1', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0014', 'M', '-', '0', '0', '0', '-', '<', '37', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0015', 'M', '-', '0', '0', '0', '-', '<', '42', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0016', 'M', '-', '0', '0', '0', '-', '42', '128', '10', '600', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0096', 'F', '-', '0', '0', '0', '-', '6.6', '8.7', '5', '7', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0097', 'F', '-', '0', '0', '0', '-', '3.8', '5.1', '2', '6', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0098', 'F', '-', '0', '0', '0', '-', '1.9', '3.5', '0', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0099', 'F', '-', '0', '0', '0', '-', '<', '1.1', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0017', 'F', '-', '0', '0', '0', '-', '135', '150', '120', '160', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0100', 'F', '-', '0', '0', '0', '-', '<', '0.4', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0101', 'F', '-', '0', '0', '0', '-', '<', '37', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0102', 'F', '-', '0', '0', '0', '-', '<', '42', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0103', 'F', '-', '0', '0', '0', '-', '42', '128', '10', '160', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0104', 'F', '-', '0', '0', '0', '-', '135', '150', '120', '160', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0105', 'F', '-', '0', '0', '0', '-', '3.8', '5.5', '2.5', '6.5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0106', 'F', '-', '0', '0', '0', '-', '98', '110', '80', '115', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0107', 'F', '-', '0', '0', '0', '-', '22', '32', '10', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0029', 'M', '-', '0', '0', '0', '-', '230', '460', '200', '1000', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0018', 'F', '-', '0', '0', '0', '-', '3.8', '5.5', '2.5', '6.5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0019', 'F', '-', '0', '0', '0', '-', '98', '110', '80', '115', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0020', 'F', '-', '0', '0', '0', '-', '22', '32', '10', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0023', 'F', '-', '0', '0', '0', '-', '2.5', '5', '1', '10', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0035', 'M', '-', '0', '0', '0', '-', '55', '370', '20', '400', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0053', 'F', '-', '0', '0', '0', '-', '35', '45', '30', '50', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0048', 'M', '-', '0', '0', '0', '-', '0.8', '1.8', '0.7', '1.9', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0049', 'M', '-', '0', '0', '0', '-', '0.35', '5.50', '0', '6', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0046', 'F', '-', '0', '0', '0', '-', '2.3', '4.2', '2', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0012', 'F', '-', '0', '0', '0', '-', '1:8', '1:32', '1:8', '1:64', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0011', 'F', '-', '0', '0', '0', '-', '0', '200', '0', '300', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0054', 'F', '-', '0', '0', '0', '-', '0', '5', '0', '6', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0032', 'M', '-', '0', '0', '0', '-', '0.9', '1.8', '0.8', '1.9', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0056', 'M', '-', '0', '0', '0', '-', '0', '35', '0', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0032', 'F', '-', '0', '0', '0', '-', '12', '15', '9', '16', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('SRT0013', 'F', '-', '0', '0', '0', '-', '0', '100', '0', '200', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0136', 'F', '-', '0', '0', '0', '-', '70', '115', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0136', 'M', '-', '0', '0', '0', '-', '70', '115', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0137', 'M', '-', '0', '0', '0', '-', '22', '32', '10', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0137', 'F', '-', '0', '0', '0', '-', '22', '32', '10', '40', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0067', 'F', '-', '0', '0', '0', '-', '11.0', '16.0', '0', '30', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0068', 'M', '-', '0', '0', '0', '-', '37', '80', '10', '90', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0068', 'F', '-', '0', '0', '0', '-', '37', '80', '10', '90', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0139', 'F', '-', '0', '0', '0', '-', '70', '115', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0139', 'M', '-', '0', '0', '0', '-', '70', '115', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0069', 'F', '-', '0', '0', '0', '-', '10', '50', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0069', 'M', '-', '0', '0', '0', '-', '10', '50', '0', '70', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0070', 'F', '-', '0', '0', '0', '-', '0', '12', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0070', 'M', '-', '0', '0', '0', '-', '0', '12', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0071', 'M', '-', '0', '0', '0', '-', '0', '10', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0071', 'F', '-', '0', '0', '0', '-', '0', '10', '0', '20', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0072', 'M', '-', '0', '0', '0', '-', '0', '3', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0072', 'F', '-', '0', '0', '0', '-', '0', '3', '0', '5', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('HTT0009', 'F', '-', '0', '0', '0', '-', '36.0', '50.0', '30', '60', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0141', 'F', '-', '0', '0', '0', '-', '30', '60', '20', '90', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0141', 'M', '-', '0', '0', '0', '-', '30', '60', '20', '90', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0142', 'M', '-', '0', '0', '0', '-', '<', '150', '0', '250', '20', '0', '-\r\n');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0142', 'F', '-', '0', '0', '0', '-', '<', '150', '0', '250', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0144', 'F', '-', '0', '0', '0', '-', '4.0', '6.0', '2.0', '10.0', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0145', 'M', '-', '0', '0', '0', '-', '20', '48', '10', '80', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0145', 'F', '-', '0', '0', '0', '-', '20', '48', '10', '80', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0146', 'F', '-', '0', '0', '0', '-', '70', '115', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0146', 'M', '-', '0', '0', '0', '-', '70', '115', '40', '450', '20', '0', '-');
INSERT INTO `tbl_setup_lab_test_normal_copy` VALUES ('CHT0144', 'M', '-', '0', '0', '0', '-', '4.0', '6.0', '2.0', '10.0', '20', '0', '-');

-- ----------------------------
-- Table structure for `tbl_setup_right`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_right`;
CREATE TABLE `tbl_setup_right` (
  `Right_Code` varchar(50) NOT NULL DEFAULT '',
  `Right_Name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Right_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_right
-- ----------------------------
INSERT INTO `tbl_setup_right` VALUES ('001', 'เงินสด');
INSERT INTO `tbl_setup_right` VALUES ('002', 'ป.ก.ส.');
INSERT INTO `tbl_setup_right` VALUES ('003', '30 บาท');

-- ----------------------------
-- Table structure for `tbl_setup_specimen`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_specimen`;
CREATE TABLE `tbl_setup_specimen` (
  `spec_code` varchar(4) NOT NULL DEFAULT '0',
  `spec_name` varchar(100) DEFAULT NULL,
  `Level` int(4) DEFAULT NULL,
  `point` varchar(10) DEFAULT NULL,
  `spec_kind` varchar(100) DEFAULT '',
  `isprint` int(4) DEFAULT '0',
  `ncopy` int(4) DEFAULT '0',
  PRIMARY KEY (`spec_code`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of tbl_setup_specimen
-- ----------------------------
INSERT INTO `tbl_setup_specimen` VALUES ('00', '', '-1', '', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('01', 'EDTA Blood', '3', '0', 'Tube', '1', '2');
INSERT INTO `tbl_setup_specimen` VALUES ('02', 'Clot blood', '4', '0', 'Tube', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('03', 'NaF Blood', '5', '0', 'Tube', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('04', 'Stool', '6', '0', 'Cup', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('05', 'Urine', '2', '0', 'Cup', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('06', 'PE', '1', '1', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('07', 'CXR', '7', '0', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('08', 'CXR Digital', '11', '0', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('09', 'EKG', '12', '0', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('10', 'Occ Vision', '13', '0', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('11', 'Spiro', '14', '0', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('12', 'Audiogram', '15', '0', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('13', 'HASM', '16', '0', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('14', 'LBSM', '17', '0', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('15', 'Vision', '18', '0', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('16', 'Strain', '19', '0', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('17', 'AFB Stain', '20', '0', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('18', 'Registration', '0', '0', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('19', 'Inner check', '21', '0', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('20', 'EDTA Blood(Risk)', '8', '0', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('21', 'NaF Blood(Risk)', '9', '0', '', '1', '1');
INSERT INTO `tbl_setup_specimen` VALUES ('22', 'Pre Audiogram', '10', '0', '', '1', '1');

-- ----------------------------
-- Table structure for `tbl_setup_template`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_template`;
CREATE TABLE `tbl_setup_template` (
  `idlab` varchar(50) NOT NULL DEFAULT '',
  `Template` text,
  PRIMARY KEY (`idlab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_template
-- ----------------------------
INSERT INTO `tbl_setup_template` VALUES ('STT0005', 'Organ|Not found#@Grade|few#1+#2+#3+#4+#@Value|');

-- ----------------------------
-- Table structure for `tbl_setup_unit`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_unit`;
CREATE TABLE `tbl_setup_unit` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_unit
-- ----------------------------
INSERT INTO `tbl_setup_unit` VALUES ('0', '', ' ');
INSERT INTO `tbl_setup_unit` VALUES ('1', 'mg/dl', '-');
INSERT INTO `tbl_setup_unit` VALUES ('2', 'g/dl', ' ');
INSERT INTO `tbl_setup_unit` VALUES ('3', 'U/L', '-');
INSERT INTO `tbl_setup_unit` VALUES ('4', 'mEq/L', '-');
INSERT INTO `tbl_setup_unit` VALUES ('5', '%', '-');
INSERT INTO `tbl_setup_unit` VALUES ('6', 'IU/L', '-');
INSERT INTO `tbl_setup_unit` VALUES ('7', 'ng/ml', '-');
INSERT INTO `tbl_setup_unit` VALUES ('8', 'ug/dl', '-');
INSERT INTO `tbl_setup_unit` VALUES ('9', 'umol/L', '-');
INSERT INTO `tbl_setup_unit` VALUES ('10', 'mEq/24hr', '-');
INSERT INTO `tbl_setup_unit` VALUES ('11', 'U/hr', '-');
INSERT INTO `tbl_setup_unit` VALUES ('12', 'mg/24 hrs', '-');
INSERT INTO `tbl_setup_unit` VALUES ('13', 'g/24 hrs', '-');
INSERT INTO `tbl_setup_unit` VALUES ('14', 'mL', '-');
INSERT INTO `tbl_setup_unit` VALUES ('15', 'K/uL', '-');
INSERT INTO `tbl_setup_unit` VALUES ('16', 'M/uL', '-');
INSERT INTO `tbl_setup_unit` VALUES ('17', 'fL', '-');
INSERT INTO `tbl_setup_unit` VALUES ('18', 'pg', '-');
INSERT INTO `tbl_setup_unit` VALUES ('19', 'mm/hr', '-');
INSERT INTO `tbl_setup_unit` VALUES ('20', 'min', '-');
INSERT INTO `tbl_setup_unit` VALUES ('21', 'seconds', '-');
INSERT INTO `tbl_setup_unit` VALUES ('22', '/100 WBC', '-');
INSERT INTO `tbl_setup_unit` VALUES ('23', 'mmol/mol', '-');
INSERT INTO `tbl_setup_unit` VALUES ('24', 'pg/mL', '-');
INSERT INTO `tbl_setup_unit` VALUES ('25', '/uL', '-');
INSERT INTO `tbl_setup_unit` VALUES ('26', 'mosm/kg', '-');
INSERT INTO `tbl_setup_unit` VALUES ('27', 'uU/ml', '-');
INSERT INTO `tbl_setup_unit` VALUES ('28', 'U/ml', '-');
INSERT INTO `tbl_setup_unit` VALUES ('29', 'mIU/ml', '-');
INSERT INTO `tbl_setup_unit` VALUES ('30', 'cells/uL', '-');
INSERT INTO `tbl_setup_unit` VALUES ('31', 'IU/ml', '-');
INSERT INTO `tbl_setup_unit` VALUES ('33', 'hr', '-');
INSERT INTO `tbl_setup_unit` VALUES ('34', '/HPF', '-');
INSERT INTO `tbl_setup_unit` VALUES ('35', '/LPF', '-');
INSERT INTO `tbl_setup_unit` VALUES ('36', 'mg/L', '-');
INSERT INTO `tbl_setup_unit` VALUES ('37', 'ug/dL', '-');
INSERT INTO `tbl_setup_unit` VALUES ('38', 'pg/dL', '-');
INSERT INTO `tbl_setup_unit` VALUES ('39', 'ng/dL', '-');
INSERT INTO `tbl_setup_unit` VALUES ('40', 'uIU/ml', '-');
INSERT INTO `tbl_setup_unit` VALUES ('41', 'ng/mL', '-');

-- ----------------------------
-- Table structure for `tbl_setup_user_lab`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_user_lab`;
CREATE TABLE `tbl_setup_user_lab` (
  `ID` int(4) NOT NULL DEFAULT '0',
  `iYear` varchar(50) NOT NULL DEFAULT '',
  `iMonth` varchar(50) NOT NULL DEFAULT '',
  `Iday` varchar(50) NOT NULL DEFAULT '',
  `ln` int(4) DEFAULT NULL,
  `hn` int(4) DEFAULT NULL,
  PRIMARY KEY (`ID`,`iYear`,`iMonth`,`Iday`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of tbl_setup_user_lab
-- ----------------------------
INSERT INTO `tbl_setup_user_lab` VALUES ('1', '60', '01', '12', '735', '735');

-- ----------------------------
-- Table structure for `tbl_setup_valueselect`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_valueselect`;
CREATE TABLE `tbl_setup_valueselect` (
  `idlab` varchar(100) NOT NULL DEFAULT '',
  `idhis` varchar(100) DEFAULT NULL,
  `name` varchar(800) NOT NULL DEFAULT '',
  `Ctype` varchar(200) DEFAULT '-',
  `Unit` varchar(30) DEFAULT ' ',
  `fg` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idlab`,`name`,`fg`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of tbl_setup_valueselect
-- ----------------------------
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0021', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0026', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0038', '', 'POSITIVE', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0038', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0039', '', '50-100 ng/L. ผู้ป่วยอาจเกิดภาวะ Acute Myocardial Infarction เพื่อการประเมินทางคลินิกควรตรวจวัดซ้ำภายหลัง 3-6 ชั่วโมง', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0039', '', '.... ng/L ผู้ป่วยน่าจะเกิดภาวะ Acute Myocardial Infarction ', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0039', '', '> 2000 ng/L ผู้ป่วยเป็นไปได้สูงที่จะเกิดภาวะ Acute Myocardial Infarction', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0039', '', '< 50 ng/L. ผู้ป่วยไม่น่าจะเกิดภาวะ Acute Myocrdial Infarction หากมีอาการทางคลินิกควรตรวจวัดซ้ำอีกครั้ง ( เช่น ภายหลัง 3-6 ชั่วโมง ) ก่อน rule-out ผู้ป่วย ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0048', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0049', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0093', '', 'Negative', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0093', '', 'Positive', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0014', '', 'Slightly Decrease', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0014', '', 'Decrease', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0014', '', 'Adequate', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '201011123', 'Normochromia', 'ComboBox', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '201011124', 'Normocytosis', 'ComboBox', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '201010806', 'Hypochromia', 'ComboBox', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '201010802', 'Anisocytosis', 'ComboBox', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '201010805', 'Microcyte', 'ComboBox', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '201010804', 'Macrocyte', 'ComboBox', '', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '201010803', 'Poikilocytosis', 'ComboBox', '', '7');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '201011124', 'Ovalocyte(Elliptocyte)', 'ComboBox', '', '8');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '', 'Sperocyte', 'ComboBox', '', '9');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '', 'Stomatocyte', 'ComboBox', '', '10');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '201010809', 'Burr cell', 'ComboBox', '', '11');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0017', '', 'P.VIVAX', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0017', '', 'NOT FOUND', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0023', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0024', '', 'POSITIVE', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0024', '', 'NOT FOUND', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0024', '', 'NEGATIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0038', '201010411', 'Metamyelocyte', 'TextBox', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0038', '201010404', 'Atypical lymphocyte', 'TextBox', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0038', '', 'Myeloblast', 'TextBox', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0038', '201010409', 'Promyelocyte', 'TextBox', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0039', '', 'Found gametocyte of Plasmodium falciparum', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0039', '', 'Found growing trophozoite of Plasmodium falciparum', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0039', '', 'Found schizont of Plasmodium falciparum', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0039', '', 'Found ring form of Plasmodium falciparum', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0040', '', 'Found growing trophozoite of Plasmodium vivax', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0040', '', 'Found schizont of Plasmodium vivax', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0040', '', 'Found gametocyte of Plasmodium vivax', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0040', '', 'Found ring form of Plasmodium vivax', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0041', '', 'Found growing trophozoite of Plasmodium malariae', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0041', '', 'Found ring form of Plasmodium malariae', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0041', '', 'Found gametocyte of Plasmodium malariae', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0041', '', 'Found schizont of Plasmodium malariae', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0042', '', 'Found gametocyte of Plasmodium ovale', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0042', '', 'Found growing trophozoite of Plasmodium ovale', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0042', '', 'Found ring form of Plasmodium ovale', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0042', '', 'Found schizont of Plasmodium ovale', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0051', '', 'HEMOGLOBIN E TRAIT', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0051', '', 'NORMAL PATTERN', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0052', '', 'REACTIVE 1:4', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0052', '', 'REACTIVE 1:16', '-', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0052', '', 'REACTIVE 1:2', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0052', '', 'REACTIVE 1:8', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0052', '', 'NON REACTIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0052', '', 'REACTIVE 1:1', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0052', '', 'REACTIVE 1:32', '-', '', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0053', '', 'AB', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0053', '', 'A', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0053', '', 'B', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0054', '', 'NEGATIVE', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0054', '', 'POSITIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0056', '', 'DEFICIENCY', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0056', '', 'NORMAL', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0001', '', 'Not Found', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0001', '', 'Positive 1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0001', '', 'Positive 2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0001', '', 'Positive 3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0001', '', 'Positive 4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0002', '', 'Not Found', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0002', '', 'Positive 1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0002', '', 'Positive 2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0002', '', 'Positive 3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0002', '', 'Positive 4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0003', '', 'PUS', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0003', '', 'SPUTUM', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0003', '', 'URETHAL DISCHARGE', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0003', '', 'VAGINA DISCHARGE', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0003', '', 'URINE SEDIMENT', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0003', '', 'THROAT SWAB', '-', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0004', '', 'No Bacteria Seen', 'ComboBox', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0004', '', 'Gram Negative Coccobacilli', 'ComboBox', '', '10');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0004', '', 'Gram Negative Rod', 'ComboBox', '', '7');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0004', '', 'Gram Negative Bacilli with Capsule', 'ComboBox', '', '8');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0004', '', 'Gram Positive coccobacilli', 'ComboBox', '', '9');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0004', '', 'Gram Negative  Diplococci Extracellular', 'ComboBox', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0004', '', 'Gram Negative  Diplococci Intracellular', 'ComboBox', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0005', '', '1+', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0005', '', '2+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0005', '', '3+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0005', '', '4+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0006', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0006', '', '4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0006', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0006', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0006', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0007', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0008', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0008', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0008', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0008', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0008', '', '4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0009', '', 'Numerous', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0009', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0009', '', 'Moderate', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0010', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0010', '', 'Moderate', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0010', '', 'Numerous', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0011', '', 'Numerous', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0011', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0011', '', 'Moderate', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0012', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0012', '', 'Numerous', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0012', '', 'Moderate', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0013', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0013', '', 'few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0013', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0013', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0013', '', '4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0014', '', 'few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0014', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0014', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0014', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0015', '', 'Moderate', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0015', '', 'Numerous', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0015', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0017', '', '2+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0017', '', '3+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0017', '', '1+', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0017', '', '4+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0018', '', '20-30', '-', '', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0018', '', '30-50', '-', '', '7');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0018', '', 'Few', '-', '', '10');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0018', '', '1-2', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0018', '', '10-20', '-', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0018', '', '50-100', '-', '', '8');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0018', '', 'Numerous', '-', '', '12');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0018', '', '0-1', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0018', '', '3-5', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0018', '', '5-10', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0018', '', '>100', '-', '', '9');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0018', '', 'Moderate', '-', '', '11');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0018', '', '2-3', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0019', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0019', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0020', '', '1+', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0020', '', '2+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0020', '', '3+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0020', '', '4+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0021', '', '2-3', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0021', '', '10-20', '-', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0021', '', '30-50', '-', '', '7');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0021', '', '>100', '-', '', '9');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0021', '', 'Moderate', '-', '', '11');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0021', '', 'Numerous', '-', '', '12');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0021', '', '1-2', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0021', '', '20-30', '-', '', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0021', '', '50-100', '-', '', '8');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0021', '', '0-1', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0021', '', '3-5', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0021', '', '5-10', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0021', '', 'Few', '-', '', '10');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0022', '', 'Hyphae', '-', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0022', '', 'Pseudohyphae', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0022', '', 'Budding yeast cell with pseudohyphae', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0022', '', 'Budding yeast cell', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0022', '', 'Yeast cell and budding yeast cell', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0022', '', 'Yeast cell', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0023', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0023', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0024', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0024', '', '4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0024', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0024', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0024', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0025', '', 'Few', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0025', '', 'Moderate', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0025', '', 'Numerous', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0025', '', 'Rare', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0026', '', 'Numerous', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0026', '', 'Rare', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0026', '', 'Few', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0026', '', 'Moderate', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0027', '', 'Few', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0027', '', 'Rare', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0027', '', 'Moderate', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0027', '', 'Numerous', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0028', '', 'Few', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0028', '', 'Moderate', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0028', '', 'Numerous', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0028', '', 'Rare', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0029', '', 'Rare', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0029', '', 'Few', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0029', '', 'Moderate', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0029', '', 'Numerous', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0031', '', 'Normal Flora', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0031', '', 'Enterobacteriaceae', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0032', '', 'No growth after 2  days', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0033', '', 'No growth after 2 days', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0033', '', 'Enterobacteriaceae', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0034', '', 'Non enteric pathogenic bacteria', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0035', '', 'No growth in 3 days', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0036', '', 'NO GROWTH IN 2 DAYS', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0036', '', 'Enterobacter specie', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0039', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0040', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0041', '', 'Yellow', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0041', '', 'Colorless', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0041', '', 'Red', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0041', '', 'Xanthochromia', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0042', '', 'Slightly turbid', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0042', '', 'Turbid', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0042', '', 'Clear', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0046', '', 'Negative for encapsulated yeast cells', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0046', '', 'Positive for encapsulated yeast cells', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0047', '', 'Brown', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0047', '', 'Red', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0047', '', 'White', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0049', '', '2.0 mL.', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0049', '', '1.0 mL.', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0049', '', '3.0 mL.', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0052', '', '10', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0052', '', '7', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0052', '', '9', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0052', '', '8', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0052', '', '12', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0053', '', 'Less Than 50%', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0053', '', '70%', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0053', '', '50%', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0053', '', '60%', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0053', '', '80%', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0055', '', '%Normal', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0056', '', 'Yellow', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0056', '', 'Other.................................', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0056', '', 'Red', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0056', '', 'Colorless', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0057', '', 'Clear', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0057', '', 'Slightly turbid', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0057', '', 'Turbid', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0062', '', 'Few', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0062', '', '3-5', '-', '', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0062', '', '5-10', '-', '', '7');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0062', '', '20-30', '-', '', '9');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0062', '', '0-1', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0062', '', '1-2', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0062', '', 'Moderate', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0062', '', '2-3', '-', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0062', '', '10-20', '-', '', '8');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0062', '', 'Numerous', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0062', '', '50-100', '-', '', '11');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0062', '', '>100', '-', '', '12');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0062', '', '30-50', '-', '', '10');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0063', '', '0-1', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0063', '', '1-2', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0063', '', '5-10', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0063', '', '10-20', '-', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0063', '', '20-30', '-', '', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0063', '', '2-3', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0063', '', '3-5', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0063', '', '50-100', '-', '', '8');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0063', '', 'Numerous', '-', '', '12');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0063', '', '30-50', '-', '', '7');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0063', '', '>100', '-', '', '9');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0063', '', 'Few', '-', '', '10');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0063', '', 'Moderate', '-', '', '11');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0064', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0064', '', 'Positive 1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0064', '', 'Positive 2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0064', '', 'Positive 3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0064', '', 'Positive 4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0065', '', 'Positive for multinucleated giant cell', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0065', '', 'Negative for multinucleated giant cell', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0070', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0073', '', 'Positive 3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0073', '', 'Positive 4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0073', '', 'Not Found', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0073', '', 'Positive 1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0073', '', 'Positive 2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0074', '', 'Not Found', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0074', '', 'Positive 1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0074', '', 'Positive 2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0074', '', 'Positive 3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0074', '', 'Positive 4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0077', '', 'Positive 3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0077', '', 'Positive 4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0077', '', 'Not Found', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0077', '', 'Positive 1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0077', '', 'Positive 2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0078', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0080', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0081', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0081', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0083', '', 'Sense', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0083', '', 'Intermidiate', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0083', '', 'Resist', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0107', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0115', '', 'CLASS I : ABSENCE OF ATYPICAL OR ABNORMAL CELLS', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0115', '', 'CLASS II : ATYPICAL CYTOLOGY BUT NO EVIDENCE OF MALIGNANCY', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0115', '', 'CLASS III : CYTOLOGY SUGGESTIVE OF, BUT NO EVIDENCE OF MALIGNANCY', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0116', '', 'Satisfactory for evaluation but limited by lack of endocerylcal / transformation zone component and partially inflammation', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0116', '', 'Satisfactory for evaluation but limited by partially inflammation', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0116', '', 'Satisfactory for evaluation but limited by lack of endocerylcal / transformation zone component', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0116', '', 'Satisfactory for evaluation', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0117', '', 'Bening cellular change associated with shift in vagina flora suggestive bacterial vaginosis', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0117', '', 'Atypical squamous cells of undetermined significant, favoring reactive change', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0117', '', 'Bening cellular change associated with fungal organisms morphological consistent with Candida spp.', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0117', '', 'Reactive cellular change associated with atrophy and inflammation (so called \"atrophic vaginitis\")', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0117', '', 'Within normal limited ( Negative for intraepithelial lesion or malignancy )', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0118', '', 'High estrogen effect', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0118', '', 'Moderate estrogen effect', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0118', '', 'Low estrogen effect', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0119', '', 'Repeated smear affer one year for routine check up', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0119', '', 'Repeated smear after clearing inflammation', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0123', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0127', '', 'Cervical smear', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0127', '', 'Endocervical smear', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0127', '', 'Cervical and endocervical smear', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0128', '', 'Satisfactory for evaluation;endocervical/transform', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0129', '', 'Benign cellular change;Reactive squamous cells ass', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0134', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0135', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0136', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0137', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0138', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0139', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0140', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0141', '406690000', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('PAT0142', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0001', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0002', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0003', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0004', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0005', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0006', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0007', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0008', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0009', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0010', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0011', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0012', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0013', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0014', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0015', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0016', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0017', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0018', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0019', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0020', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0021', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0042', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0043', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0044', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0045', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0046', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0047', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0048', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0050', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0051', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0052', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0053', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0054', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0055', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0056', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0057', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0058', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0059', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0060', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0061', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0062', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0063', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0064', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0064', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0065', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0066', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0067', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0068', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0069', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0070', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0071', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0072', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0073', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0074', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0075', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0076', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0077', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0078', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0079', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0083', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0084', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0109', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0110', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0115', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0116', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0118', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0119', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0121', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0128', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0134', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0134', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0135', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0135', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0136', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0137', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0138', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0139', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0145', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0145', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0148', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0152', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0156', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0158', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0158', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0163', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0167', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0173', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0174', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0178', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0183', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0187', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0187', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0198', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0202', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0203', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0212', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0212', '', 'Influenza B POSITIVE', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0212', '', 'Influenza A POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0218', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0227', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0228', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0239', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0240', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0241', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0251', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0254', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0257', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0258', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0265', '', '< 60 ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0265', '', '......', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0265', '', '> 9000', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0267', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0267', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0278', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0281', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0283', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0292', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0293', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0294', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0296', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0297', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0298', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0305', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0311', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0311', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0314', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0314', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0319', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0327', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0333', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0334', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0343', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0344', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0348', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0358', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0359', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0359', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0360', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0364', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0404', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0405', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0414', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0422', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0430', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0431', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0432', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0433', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0439', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0440', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0441', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0444', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0445', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0448', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0450', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0451', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0452', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0454', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0454', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0455', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0455', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0456', '', 'POSITIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0456', '', 'NEGATIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0457', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0459', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0460', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0461', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0462', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0463', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0463', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0464', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0465', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0466', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0467', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0468', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0469', '', '> 0.5 and < 2 ng/ml : Systemic infection ( sepsis ) is possible ,but various conditions are known to induce as well', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0469', '', '> 2 and < 10 ng/ml : Systemic infection ( sepsis ) is likely ,unless other causes are known', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0469', '', '> 10 ng/ml : Important systemic inflammatory response, almost exclusively due to severe bacterial sepsis or septic shock', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0469', '', '< 0.5 ng/ml : Local bacterial infection is possible.Systemic infection ( sepsis ) is not likely.', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0470', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0471', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0472', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0473', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0474', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0476', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0477', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0477', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0478', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0479', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0479', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0480', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0481', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0482', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0483', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0484', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0485', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0486', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0487', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0488', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0489', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0490', '406790000', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0001', '', 'NON REACTIVE BY ARCHITECT SYPHILIS TP ASSAY ( CMIA )', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0001', '', 'REACTIVE  BY ARCHITECT SYPHILIS TP ASSAY ( CMIA )  AND REACTIVE 1:       BY RPR        , PLEASE  CONFIRM   WITH     FTA-ABS.', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0002', '', 'REACTIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0002', '', 'NON REACTIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0010', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0010', '', 'POSITIVE ........ IU/ml', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0011', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0014', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0015', '', 'CONSIDER INDETERMINATE', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0015', '', 'POSITIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('', '1', '1', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0015', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0016', '', 'Reactive by Immunochromatography and ELISA method', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0016', '', 'Non reactive', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0017', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0018', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0019', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0020', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0021', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0022', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0023', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0023', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0024', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0025', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0026', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0027', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0028', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0029', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0030', '', 'POSITIVE', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0030', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0031', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0031', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0032', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0033', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0034', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0035', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0038', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0039', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0040', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0041', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0042', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0043', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0044', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0050', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0051', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0052', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0056', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0057', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0059', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0060', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0061', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0062', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0063', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0063', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0064', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0064', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0065', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0065', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0066', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0066', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0067', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0067', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0068', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0068', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0069', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0069', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0070', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0070', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0071', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0071', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0072', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0072', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0073', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0073', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0074', '', 'Reactive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0074', '', 'Non  reactive', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0075', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0076', '', 'POSITIVE', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0076', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0078', '', 'POSITIVE', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0078', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0079', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0080', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0081', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0082', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR ,PLEASE SEE ORIGINAL RESULTS. ', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0083', '', 'POSITIVE', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0083', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0084', '', 'POSITIVE', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0084', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0086', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0086', '', '3+', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0086', '', '2+', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0086', '', '1+', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0087', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0087', '', '3+', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0087', '', '2+', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0087', '', '1+', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0088', '', 'POSITIVE', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0088', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0089', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0089', '', 'POSITIVE', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0001', '', 'Yellow', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0002', '', 'Watery', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0002', '', 'Loose', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0002', '', 'Hard', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0002', '', 'Soft', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0003', '', 'Moderate', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0003', '', 'Few', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0003', '', '-', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0004', '', 'Moderate', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0004', '', 'Few', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0004', '', '-', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0005', '', 'Not found', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0005', '', 'Found..........................................', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0006', '', 'Positive', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0007', '', 'THIS TEST WAS SENT TO SUBCONTRACTOR,PLEASE SEE ORIGINAL RESULT.', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0010', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0012', '', 'POSITIVE', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0012', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0001', '', 'Red', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0001', '', 'Milky', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0001', '', 'Brownish black', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0001', '', 'Brown', '-', ' ', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0001', '', 'Yellow', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0001', '', 'Colorless', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0003', '', '1.030', '-', ' ', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0003', '', '1.025', '-', ' ', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0003', '', '1.020', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0003', '', '1.015', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0003', '', '1.010', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0003', '', '1.005', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0003', '', '1.003', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0004', '', '5.0', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0004', '', '7.5', '-', ' ', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0004', '', '5.5', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0004', '', '6.0', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0004', '', '6.5', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0004', '', '7.0', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0005', '', '1+', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0005', '', '2+', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0005', '', 'Trace', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0005', '', 'Negative', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0006', '', 'Negative', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0006', '', '2+', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0006', '', '1+', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0006', '', 'Trace', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0007', '', 'Trace', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0007', '', '1+', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0007', '', 'Negative', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0008', '', '2+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0008', '', '3+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0008', '', '4+', '-', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0008', '', '1+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0008', '', 'Trace', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0008', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0009', '', '50-100', '-', ' ', '9');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0009', '', '30-50', '-', ' ', '8');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0009', '', '20-30', '-', ' ', '7');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0009', '', '5-10', '-', ' ', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0009', '', '2-3', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0009', '', '10-20', '-', ' ', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0009', '', '3-5', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0009', '', '1-2', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0009', '', '-', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0009', '', '0-1', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0010', '', '20-30', '-', ' ', '7');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0010', '', '10-20', '-', ' ', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0010', '', '-', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0010', '', '5-10', '-', ' ', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0010', '', '3-5', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0010', '', '0-1', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0010', '', '1-2', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0010', '', '2-3', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0011', '', '20-30', '-', ' ', '7');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0011', '', '10-20', '-', ' ', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0011', '', '5-10', '-', ' ', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0011', '', '-', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0011', '', '0-1', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0011', '', '1-2', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0011', '', '2-3', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0011', '', '3-5', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0012', '', 'Few', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0012', '', '1+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0012', '', '2+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0012', '', '3+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0012', '', '4+', '-', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0012', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0013', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0013', '', 'Few', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0013', '', '1+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0013', '', '2+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0013', '', '3+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0013', '', '4+', '-', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0014', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0014', '', 'Few', '-', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0014', '', '1+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0014', '', '2+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0014', '', '3+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0014', '', '4+', '-', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', 'Cystine crystals', 'ComboBox', '', '7');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', 'Leucine crystals', 'ComboBox', '', '8');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', 'Tyrosine crystals', 'ComboBox', '', '9');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', 'Billirubin crystals', 'ComboBox', '', '10');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', 'Uric acid crystals', 'ComboBox', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', 'Calcium oxalate crystals', 'ComboBox', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', 'Calcium carbonate crystals', 'ComboBox', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', 'Ammonium urate crystals', 'ComboBox', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', 'Ammonium biurate crystals', 'ComboBox', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', 'Triple phosphate crystals', 'ComboBox', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', 'Cholesterol crystal crystal', 'ComboBox', '', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0016', '', 'White blood cast', 'ComboBox', '', '9');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0016', '', 'Hyaline cast', 'ComboBox', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0016', '', 'Fine granular cast', 'ComboBox', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0016', '', 'Coarse granular cast', 'ComboBox', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0016', '', 'Fatty cast', 'ComboBox', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0016', '', 'Waxy cast', 'ComboBox', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0016', '', 'Pigmented cast', 'ComboBox', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0016', '', 'Crytalline cast', 'ComboBox', '', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0016', '', 'Fibrillar cast', 'ComboBox', '', '7');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0016', '', 'Red blood cell cast', 'ComboBox', '', '8');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0017', '', 'Oval fat body', 'ComboBox', '', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0017', '', 'Yeast cell', 'ComboBox', '', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0017', '', 'Budding yeast cell', 'ComboBox', '', '7');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0017', '', 'Yeast cell and budding yeast cell', 'ComboBox', '', '8');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0017', '', 'Renal tubular epithelial cell', 'ComboBox', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0017', '', '-', 'ComboBox', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0017', '', 'Squamous epithelial cell', 'ComboBox', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0017', '', 'Bladder epithelial cell', 'ComboBox', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0017', '', 'Caudate epithelial cell', 'ComboBox', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0046', '', 'Negative', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0047', '', 'POSITIVE', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0047', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0048', '', 'POSITIVE', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0048', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0050', '', 'POSITIVE', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0050', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0054', '', 'NEGATIVE', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0054', '', '3+', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0054', '', '2+', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0054', '', '1+', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '201011125', 'Schistocyte', 'ComboBox', '', '16');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '', 'Sickle cell', 'ComboBox', '', '15');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '', 'Tear drop cell', 'ComboBox', '', '14');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '', 'Keratocyte', 'ComboBox', '', '13');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '', 'Acanthocyte', 'ComboBox', '', '12');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '', 'Normochromic Normocytic', 'ComboBox', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0038', '', 'Basophilic normoblast', 'TextBox', '', '7');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0038', '', 'Pronormoblast', 'TextBox', '', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0038', '201010410', 'Myelocyte', 'TextBox', '', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0038', '201010402', 'Band form', 'TextBox', '', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0014', '', 'Increase', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0014', '', 'Slightly Increase', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '201010808', 'Target cell', 'ComboBox', '', '17');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '201010807', 'Polychromasia', 'ComboBox', '', '18');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0015', '', 'Other', 'ComboBox', '', '19');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0017', '', 'P.FALCIPARUM', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0038', '201010408', 'Blast', 'TextBox', '', '8');
INSERT INTO `tbl_setup_valueselect` VALUES ('HTT0053', '', 'O', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0001', '', 'Green', '-', ' ', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0001', '', 'Orange', '-', ' ', '7');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0001', '', 'ผู้ป่วยอยู่ในช่วงมีประจำเดือน', '-', ' ', '8');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0004', '', '8.0', '-', ' ', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0004', '', '8.5', '-', ' ', '7');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0004', '', '9.0', '-', ' ', '8');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0005', '', '3+', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0005', '', '4+', '-', ' ', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0006', '', '3+', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0006', '', '4+', '-', ' ', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0007', '', '2+', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0007', '', '3+', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0007', '', '4+', '-', ' ', '5');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0009', '', '>100', '-', ' ', '10');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0009', '', 'with clumping', '-', ' ', '11');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0010', '', '30-50', '-', ' ', '8');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0010', '', '50-100', '-', ' ', '9');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0010', '', '>100', '-', ' ', '10');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0011', '', '30-50', '-', ' ', '8');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0011', '', '50-100', '-', ' ', '9');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0011', '', '1-5', '-', ' ', '10');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0016', '', 'Epithelial cell cast', 'ComboBox', '', '10');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0016', '', 'Bacterial cast', 'ComboBox', '', '11');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0016', '', 'Mixed cellular cast', 'ComboBox', '', '12');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0016', '', 'Broad cast', 'ComboBox', '', '13');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0016', '', '-', 'ComboBox', '', '14');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0046', '', 'Positive', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0054', '', '4+', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0001', '', 'Brown', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0002', '', 'Mucous', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0003', '', 'Numerous', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0004', '', 'Numerous', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0006', '', 'Negative', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('STT0010', '', 'POSITIVE', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0022', '', 'POSITIVE', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0086', '', '4+', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('SRT0087', '', '4+', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0004', '', 'Gram Negative  Diplococci Intra and Extracellular', 'ComboBox', '', '6');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0004', '', 'Gram Negative Bacilli', 'ComboBox', '', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0004', '', 'Gram Positive Cocci', 'ComboBox', '', '2');
INSERT INTO `tbl_setup_valueselect` VALUES ('MCT0004', '', 'Gram Negative  Diplococci', 'ComboBox', '', '3');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', 'Sulfathiazole crystals', 'ComboBox', '', '11');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', 'Sulfadiazine crystals', 'ComboBox', '', '12');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', 'Sulfapyridine crystals', 'ComboBox', '', '13');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', 'Hippuric crystals', 'ComboBox', '', '14');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0015', '', '-', 'ComboBox', '', '15');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0017', '', 'Budding yeast cell with pseudohyphae', 'ComboBox', '', '9');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0017', '', 'Spermatozoa', 'ComboBox', '', '10');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0017', '', 'Trichomonas vaginalis', 'ComboBox', '', '11');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0017', '', 'Ghost rbc', 'ComboBox', '', '12');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0017', '', 'Macrophage', 'ComboBox', '', '13');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0090', '', 'Negative', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('SPT0090', '', 'Positive', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0018', '', 'Negative', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('URT0018', '', 'Positive', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0080', '', 'Negative', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0080', '', 'Positive', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0081', '', 'Negative', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0081', '', 'Positive', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0088', '', 'Negative', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0088', '', 'Positive', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0090', '', 'Negative', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect` VALUES ('CHT0090', '', 'Positive', '-', ' ', '1');

-- ----------------------------
-- Table structure for `tbl_setup_valueselect_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_valueselect_copy`;
CREATE TABLE `tbl_setup_valueselect_copy` (
  `idlab` varchar(100) NOT NULL DEFAULT '',
  `idhis` varchar(100) DEFAULT NULL,
  `name` text,
  `Ctype` varchar(200) DEFAULT '-',
  `Unit` varchar(30) DEFAULT ' ',
  `fg` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idlab`,`fg`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of tbl_setup_valueselect_copy
-- ----------------------------
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0001', '', 'A', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0001', '', 'B', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0001', '', 'O', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0001', '', 'AB', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0002', '', 'POSITIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0002', '', 'NEGATIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0003', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0003', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0004', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0004', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0005', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0005', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0006', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0006', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0007', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0007', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0011', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0011', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0012', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0012', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0013', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('BBT0013', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('CHT0038', '', 'NEGATIVE\r\n', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('CHT0038', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('CHT0039', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('CHT0039', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0001', '', '...............', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0001', '', '...............', '-', ' ', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0001', '', '..............', '-', ' ', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '201010803', 'Poikilocytosis', 'ComboBox', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '201011124', 'Ovalocyte(Elliptocyte)', 'ComboBox', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '', 'Sperocyte', 'ComboBox', '', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '', 'Stomatocyte', 'ComboBox', '', '10');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '201010809', 'Burr cell', 'ComboBox', '', '11');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '', 'Acanthocyte', 'ComboBox', '', '12');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '', 'Keratocyte', 'ComboBox', '', '13');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '', 'Tear drop cell', 'ComboBox', '', '14');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '', 'Sickle cell', 'ComboBox', '', '15');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '201011125', 'Schistocyte', 'ComboBox', '', '16');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '201010808', 'Target cell', 'ComboBox', '', '17');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '201010807', 'Polychromasia', 'ComboBox', '', '18');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0003', '', '50-100', '-', ' ', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0017', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0023', '', 'NORMAL', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0023', '', 'DECREASE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0024', '', 'NOT FOUND', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0024', '', 'NEGATIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0024', '', 'POSITIVE', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0026', '', 'Alpha thalassemia 1', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0026', '', 'Alpha thalassemia 2', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0026', '', 'Hemoglobin H disease', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0026', '', 'Hemoglobin Barts disease', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0026', '', 'Beta thalassemia trait', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0026', '', 'Beta thalassemia', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0014', '', '..................', '-', ' ', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0038', '201010402', 'Band form', 'TextBox', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0038', '201010404', 'Atypical lymphocyte', 'TextBox', '%', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0039', '', 'Found ring form of Plasmodium falciparum', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0039', '', 'Found growing trophozoite of Plasmodium falciparum', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0039', '', 'Found schizont of Plasmodium falciparum', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0039', '', 'Found gametocyte of Plasmodium falciparum', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0040', '', 'Found ring form of Plasmodium vivax', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0040', '', 'Found growing trophozoite of Plasmodium vivax', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0040', '', 'Found schizont of Plasmodium vivax', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0040', '', 'Found gametocyte of Plasmodium vivax', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0041', '', 'Found ring form of Plasmodium malariae', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0041', '', 'Found growing trophozoite of Plasmodium malariae', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0041', '', 'Found schizont of Plasmodium malariae', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0041', '', 'Found gametocyte of Plasmodium malariae', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0042', '', 'Found ring form of Plasmodium ovale', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0042', '', 'Found growing trophozoite of Plasmodium ovale', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0042', '', 'Found schizont of Plasmodium ovale', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0042', '', 'Found gametocyte of Plasmodium ovale', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0051', '', 'NORMAL PATTERN', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0051', '', 'HEMOGLOBIN E TRAIT', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0052', '', 'NON REACTIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0052', '', 'REACTIVE 1:1', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0052', '', 'REACTIVE 1:2', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0052', '', 'REACTIVE 1:4', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0052', '', 'REACTIVE 1:8', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0052', '', 'REACTIVE 1:16', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0052', '', 'REACTIVE 1:32', '-', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0053', '', 'A', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0053', '', 'B', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0053', '', 'AB', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0053', '', 'O', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0054', '', 'POSITIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0054', '', 'NEGATIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0056', '', 'NOT FOUND', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0056', '', 'NEGATIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0056', '', 'POSITIVE', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0057', '', 'Normal', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0057', '', 'Decrease', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0001', '', 'Not Found', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0001', '', 'Positive 1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0001', '', 'Positive 2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0001', '', 'Positive 3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0001', '', 'Positive 4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0002', '', 'Not Found', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0002', '', 'Positive 1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0002', '', 'Positive 2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0002', '', 'Positive 3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0002', '', 'Positive 4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0003', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0003', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0003', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0003', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0003', '', '4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0004', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0004', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0004', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0004', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0004', '', '4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0005', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0005', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0005', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0005', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0005', '', '4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0006', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0006', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0006', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0006', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0006', '', '4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0007', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0007', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0007', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0007', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0007', '', '4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0008', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0008', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0008', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0008', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0008', '', '4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0009', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0009', '', 'Moderate', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0009', '', 'Numerous', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0010', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0010', '', 'Moderate', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0010', '', 'Numerous', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0011', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0011', '', 'Moderate', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0011', '', 'Numerous', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0012', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0012', '', 'Moderate', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0012', '', 'Numerous', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0013', '', 'few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0013', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0013', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0013', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0013', '', '4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0014', '', 'few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0014', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0014', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0014', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0015', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0015', '', 'Moderate', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0015', '', 'Numerous', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0017', '', '0-1', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0017', '', '1-2', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0017', '', 'Few', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0017', '', 'Moderate', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0017', '', 'Numerous', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0017', '', '2-3', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0017', '', '3-5', '-', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0017', '', '5-10', '-', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0017', '', '10-20', '-', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0017', '', '20-30', '-', '', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0017', '', '30-50', '-', '', '10');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0017', '', '50-100', '-', '', '11');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0017', '', '>100', '-', '', '12');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0018', '', '0-1', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0018', '', '1-2', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0018', '', '2-3', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0018', '', '3-5', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0018', '', '5-10', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0018', '', '10-20', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0018', '', '20-30', '-', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0018', '', '30-50', '-', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0018', '', '50-100', '-', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0018', '', '>100', '-', '', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0018', '', 'Few', '-', '', '10');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0018', '', 'Moderate', '-', '', '11');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0018', '', 'Numerous', '-', '', '12');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0019', '', 'Not Found', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0019', '', 'Found', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0020', '', '0-1', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0020', '', '1-2', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0020', '', '2-3', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0020', '', '3-5', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0020', '', '5-10', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0020', '', '10-20', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0020', '', '20-30', '-', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0020', '', '30-50', '-', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0020', '', '50-100', '-', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0020', '', '>100', '-', '', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0020', '', 'Few', '-', '', '10');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0020', '', 'Moderate', '-', '', '11');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0020', '', 'Numerous', '-', '', '12');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0021', '', '0-1', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0021', '', '1-2', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0021', '', '2-3', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0021', '', '3-5', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0021', '', '5-10', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0021', '', '10-20', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0021', '', '20-30', '-', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0021', '', '30-50', '-', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0021', '', '50-100', '-', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0021', '', '>100', '-', '', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0021', '', 'Few', '-', '', '10');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0021', '', 'Moderate', '-', '', '11');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0021', '', 'Numerous', '-', '', '12');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0022', '', '0-1', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0022', '', '1-2', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0022', '', '2-3', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0022', '', '3-5', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0022', '', '5-10', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0022', '', '10-20', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0022', '', '20-30', '-', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0022', '', '30-50', '-', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0022', '', '50-100', '-', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0022', '', '>100', '-', '', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0022', '', 'Few', '-', '', '10');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0022', '', 'Moderate', '-', '', '11');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0022', '', 'Numerous', '-', '', '12');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0023', '', 'few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0023', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0023', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0023', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0023', '', '4+\r\n', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0024', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0024', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0024', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0024', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0024', '', '4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0025', '', 'Rare', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0025', '', 'Few', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0025', '', 'Moderate', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0025', '', 'Numerous', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0026', '', 'Rare', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0026', '', 'Few', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0026', '', 'Moderate', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0026', '', 'Numerous', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0027', '', 'Rare', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0027', '', 'Few', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0027', '', 'Moderate', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0027', '', 'Numerous', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0028', '', 'Rare', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0028', '', 'Few', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0028', '', 'Moderate', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0028', '', 'Numerous', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0029', '', 'Rare', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0029', '', 'Few', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0029', '', 'Moderate', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0029', '', 'Numerous', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0031', '', 'Normal Flora', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0031', '', 'Enterobacteriaceae', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0032', '', 'No growth in  2  days', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0033', '', 'No growth in 3 days', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0033', '', 'Enterobacteriaceae', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0034', '', 'Non enteric pathogenic bacteria', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0035', '', 'No growth in 3 days', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0036', '', 'NO GROWTH IN 2 DAYS', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0036', '', 'Enterobacter specie', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0039', '', 'No growth', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0039', '', 'No growth after 3 months', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0041', '', 'Colorless', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0041', '', 'Yellow', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0041', '', 'Red', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0041', '', 'Xanthochromia', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0042', '', 'Clear', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0042', '', 'Slightly turbid', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0042', '', 'Turbid', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0046', '', 'Negative for encapsulated yeast cells', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0046', '', 'Positive for encapsulated yeast cells', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0047', '', 'White', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0047', '', 'Brown', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0047', '', 'Red', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0052', '', '5.0', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0052', '', '5.5', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0052', '', '6.0', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0052', '', '6.5', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0052', '', '7.0', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0052', '', '7.5', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0052', '', '8.0', '-', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0052', '', '8.5', '-', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0052', '', '9.0', '-', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0056', '', 'Colorless', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0056', '', 'Yellow', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0056', '', 'Red', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0056', '', 'Other.................................', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0057', '', 'Clear', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0057', '', 'Slightly turbid', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0057', '', 'Turbid', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0062', '', '0-1', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0062', '', '1-2', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0062', '', 'Few', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0062', '', 'Moderate', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0062', '', 'Numerous', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0062', '', '2-3', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0062', '', '3-5', '-', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0062', '', '5-10', '-', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0062', '', '10-20', '-', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0062', '', '20-30', '-', '', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0062', '', '30-50', '-', '', '10');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0062', '', '50-100', '-', '', '11');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0062', '', '>100', '-', '', '12');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0063', '', '0-1', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0063', '', '1-2', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0063', '', '2-3', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0063', '', '3-5', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0063', '', '5-10', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0063', '', '10-20', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0063', '', '20-30', '-', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0063', '', '30-50', '-', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0063', '', '50-100', '-', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0063', '', '>100', '-', '', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0063', '', 'Few', '-', '', '10');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0063', '', 'Moderate', '-', '', '11');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0063', '', 'Numerous', '-', '', '12');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0064', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0064', '', 'Positive 1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0064', '', 'Positive 2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0064', '', 'Positive 3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0064', '', 'Positive 4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0065', '', 'Found multinucleated giant cell', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0065', '', 'Positive for multinucleated giant cell', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0065', '', 'Not found multinucleated giant cell', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('MCT0065', '', 'Negative for multinucleated giant cell', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0115', '', 'CLASS I : ABSENCE OF ATYPICAL OR ABNORMAL CELLS', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0115', '', 'CLASS II : ATYPICAL CYTOLOGY BUT NO EVIDENCE OF MALIGNANCY', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0115', '', 'CLASS III : CYTOLOGY SUGGESTIVE OF, BUT NO EVIDENCE OF MALIGNANCY', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0116', '', 'Satisfactory for evaluation but limited by lack of endocerylcal / transformation zone component', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0116', '', 'Satisfactory for evaluation but limited by lack of endocerylcal / transformation zone component and partially inflammation', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0116', '', 'Satisfactory for evaluation but limited by partially inflammation', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0116', '', 'Satisfactory for evaluation', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0117', '', 'Within normal limited ( Negative for intraepithelial lesion or malignancy )', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0117', '', 'Atypical squamous cells of undetermined significant, favoring reactive change', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0117', '', 'Bening cellular change associated with fungal organisms morphological consistent with Candida spp.', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0117', '', 'Reactive cellular change associated with atrophy and inflammation (so called \"atrophic vaginitis\")', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0117', '', 'Bening cellular change associated with shift in vagina flora suggestive bacterial vaginosis', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0118', '', 'Low estrogen effect', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0118', '', 'Moderate estrogen effect', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0118', '', 'High estrogen effect', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0119', '', 'Repeated smear affer one year for routine check up', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0119', '', 'Repeated smear after clearing inflammation', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0127', '', 'Cervical smear', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0127', '', 'Endocervical smear', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0127', '', 'Cervical and endocervical smear', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0128', '', 'Satisfactory for evaluation;endocervical/transform', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('PAT0129', '', 'Benign cellular change;Reactive squamous cells ass', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SPT0049', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SPT0049', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SPT0056', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SPT0056', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SPT0191', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SPT0191', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SPT0358', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0001', '', 'Non Reactive', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0001', '', 'Reactive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0002', '', 'Non reactive', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0002', '', 'Reactive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0003', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0003', '', '1:20', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0003', '', '1:80', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0003', '', '1:160', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0003', '', '1:320', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0003', '', 'Other.................................', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0004', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0004', '', '1:20', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0004', '', '1:80', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0004', '', '1:160', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0004', '', '1:320', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0004', '', 'Other.................................', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0005', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0005', '', '1:20', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0005', '', '1:80', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0005', '', '1:160', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0005', '', '1:320', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0005', '', 'Other.................................', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0006', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0006', '', '1:20', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0006', '', '1:80', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0006', '', '1:160', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0006', '', '1:320', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0006', '', 'Other..................................', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0010', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0010', '', 'Positive 1:20', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0010', '', 'Positive 1:80', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0010', '', 'Positive 1:160', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0010', '', 'Positive 1:320', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0010', '', 'Other...................................', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0014', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0014', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0015', '', 'Non reactive', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0015', '', 'Reactive by Immunochromatography and ELISA method', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0016', '', 'Non reactive', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0016', '', 'Reactive by Immunochromatography and ELISA method', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0018', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0018', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0022', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0022', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0023', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0023', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0024', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0024', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0025', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0025', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0026', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0026', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0027', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0027', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0028', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0028', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0029', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0029', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0030', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0030', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0031', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0031', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0034', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0034', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0063', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0063', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0064', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0064', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0065', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0065', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0066', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0066', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0067', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0067', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0068', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0068', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0069', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0069', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0070', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0070', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0071', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0071', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0072', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0072', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0073', '', 'NEGATIVE', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0073', '', 'POSITIVE', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0074', '', 'Non  reactive', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0074', '', 'Reactive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0075', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('SRT0075', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0003', '', '30-50', '-', ' ', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0003', '', '20-30', '-', ' ', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0003', '', '10-20', '-', ' ', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0003', '', '5-10', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0003', '', '3-5', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0003', '', '2-3', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0003', '', '1-2', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0003', '', '0-1', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0004', '', '0-1', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0004', '', '1-2', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0004', '', '2-3', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0004', '', '3-5', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0004', '', '5-10', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0004', '', '10-20', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0004', '', '20-30', '-', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0004', '', '30-50', '-', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0004', '', '50-100', '-', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0004', '', '>100', '-', '', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0004', '', 'Not Found', '-', '', '10');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0005', '', 'Not found', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0005', '', 'Found..........................................', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0006', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0006', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0003', '', '1.000', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0003', '', '1.005', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0003', '', '1.010', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0003', '', '1.015', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0003', '', '1.020', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0003', '', '1.025', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0003', '', '1.030', '-', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0004', '', '5.0', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0004', '', '5.5', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0004', '', '6.0', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0004', '', '6.5', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0004', '', '7.0', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0004', '', '7.5', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0004', '', '8.0', '-', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0004', '', '8.5', '-', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0004', '', '9.0', '-', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0005', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0005', '', 'Trace', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0005', '', '1+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0005', '', '2+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0005', '', '3+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0005', '', '4+', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0006', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0006', '', 'Trace', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0006', '', '1+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0006', '', '2+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0006', '', '3+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0006', '', '4+', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0007', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0007', '', 'Trace', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0007', '', '1+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0007', '', '2+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0007', '', '3+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0007', '', '4+', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0008', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0008', '', 'Trace', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0008', '', '1+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0008', '', '2+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0008', '', '3+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0008', '', '4+', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0009', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0009', '', '0-1', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0009', '', '1-2', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0009', '', '2-3', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0009', '', '3-5', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0009', '', '5-10', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0009', '', '10-20', '-', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0009', '', '20-30', '-', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0009', '', '30-50', '-', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0009', '', '50-100', '-', '', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0009', '', '>100', '-', '', '10');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0010', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0010', '', '0-1', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0010', '', '1-2', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0010', '', '2-3', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0010', '', '3-5', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0010', '', '5-10', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0010', '', '10-20', '-', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0010', '', '20-30', '-', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0010', '', '30-50', '-', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0010', '', '50-100', '-', '', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0010', '', '>100', '-', '', '10');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0011', '', '-', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0011', '', '0-1', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0011', '', '1-2', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0011', '', '2-3', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0011', '', '3-5', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0011', '', '5-10', '-', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0011', '', '10-20', '-', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0011', '', '20-30', '-', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0011', '', '30-50', '-', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0011', '', '50-100', '-', '', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0011', '', '>100', '-', '', '10');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0012', '', '4+', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0012', '', '3+', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0012', '', '2+', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0012', '', '1+', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0012', '', 'few', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0013', '', 'Few', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0013', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0013', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0013', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0013', '', '4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0014', '', '4+', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0014', '', '3+', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0014', '', '2+', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0014', '', '1+', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0014', '', 'Few', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0015', '3104', 'Triple phosphate crystals', 'ComboBox', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0015', '', 'Cholesterol crystal crystal', 'ComboBox', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0015', '', 'Cystine crystals', 'ComboBox', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0015', '', 'Leucine crystals', 'ComboBox', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0015', '', 'Tyrosine crystals', 'ComboBox', '', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0015', '', 'Billirubin crystals', 'ComboBox', '', '10');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0015', '', 'Sulfathiazole crystals', 'ComboBox', '', '11');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0015', '', 'Sulfadiazine crystals', 'ComboBox', '', '12');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0015', '', 'Sulfapyridine crystals', 'ComboBox', '', '13');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0016', '', 'Pigmented cast', 'ComboBox', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0016', '', 'Crytalline cast', 'ComboBox', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0016', '', 'Fibrillar cast', 'ComboBox', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0016', '', 'Red blood cell cast', 'ComboBox', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0016', '', 'White blood cast', 'ComboBox', '', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0016', '', 'Epithelial cell cast', 'ComboBox', '', '10');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0016', '', 'Bacterial cast', 'ComboBox', '', '11');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0016', '', 'Mixed cellular cast', 'ComboBox', '', '12');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0017', '', 'Yeast cell and budding yeast cell', 'ComboBox', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0017', '', 'Budding yeast cell', 'ComboBox', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0017', '', 'Yeast cell', 'ComboBox', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0017', '', 'Oval fat body', 'ComboBox', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0017', '', 'Renal tubular epithelial cell', 'ComboBox', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0017', '', 'Caudate epithelial cell', 'ComboBox', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0017', '3098', 'Bladder epithelial cell', 'ComboBox', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0017', '3097', 'Squamous epithelial cell', 'ComboBox', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0017', '', '-', 'ComboBox', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0018', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0018', '', '1+', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0018', '', '2+', '-', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0018', '', '3+', '-', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0018', '', '4+', '-', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0019', '', 'Negative', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0019', '', 'Positive', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0033', '', 'Urine 24 hrs. Prot. (g/day)', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0033', '', 'Urine Prot. (spot)(mg/dl)', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0034', '', 'Urine 24 hrs. Creatinine (g/day)', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0034', '', 'Urine Creatinine (spot)(mg/dl)', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0035', '', 'Urine 24 hrs. Urea-N (g/day)', '-', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0035', '', 'Urine Urea-N (spot)(mg/dl)', '-', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0012', '', '', '-', ' ', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0012', '', '111111111', '-', ' ', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0014', '', 'Slightly decrease', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0014', '', 'Markedly decrease', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0014', '', 'Slightly increase', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0001', '', 'Yellow', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0001', '', 'Green', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0001', '', '', '-', ' ', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0001', '', '---------', '-', ' ', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0002', '', 'Clear', '-', ' ', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0002', '', '1234', '-', ' ', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0014', '', 'Markedly increase', '-', ' ', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '201010804', 'Macrocyte', 'ComboBox', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '201010805', 'Microcyte', 'ComboBox', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '201010802', 'Anisocytosis', 'ComboBox', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '201010806', 'Hypochromia', 'ComboBox', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '201011124', 'Normocytosis', 'CheckBox', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '201011123', 'Normochromia', 'CheckBox', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0038', '', 'Myeloblast', 'TextBox', '%', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0038', '201010409', 'Promyelocyte', 'TextBox', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0038', '201010410', 'Myelocyte', 'TextBox', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0038', '201010411', 'Metamyelocyte', 'TextBox', '', '5');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0038', '', 'Pronormoblast', 'TextBox', '', '6');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0038', '', 'Basophilic normoblast', 'TextBox', '', '7');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0038', '201010408', 'Blast', 'TextBox', '', '8');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('STT0003', '', '>100', '-', ' ', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0015', '', 'Normochromic Normocytic', 'CheckBox', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0015', '', 'Ammonium biurate crystals', 'ComboBox', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0015', '', 'Ammonium urate crystals', 'ComboBox', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0015', '', 'Calcium carbonate crystals', 'ComboBox', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0015', '3103', 'Calcium oxalate crystals', 'ComboBox', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0015', '3130', 'Uric acid crystals', 'ComboBox', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0016', '', 'Waxy cast', 'ComboBox', '', '4');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0016', '', 'Fatty cast', 'ComboBox', '', '3');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0016', '', 'Coarse granular cast', 'ComboBox', '', '2');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0016', '', 'Fine granular cast', 'ComboBox', '', '1');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0016', '29', 'Hyaline cast', 'ComboBox', '', '0');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0017', '', 'Budding yeast cell with pseudohyphae', 'ComboBox', '', '9');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0017', '3107', 'Spermatozoa', 'ComboBox', '', '10');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0017', '3108', 'Trichomonas vaginalis', 'ComboBox', '', '11');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0017', '', 'Ghost rbc', 'ComboBox', '', '12');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0017', '28', 'Macrophage', 'ComboBox', '', '13');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0016', '', 'Broad cast', 'ComboBox', '', '13');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('URT0015', '', 'Hippuric crystals', 'ComboBox', '', '14');
INSERT INTO `tbl_setup_valueselect_copy` VALUES ('HTT0014', '', 'Adequate', '-', ' ', '0');

-- ----------------------------
-- Table structure for `tbl_setup_ward`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setup_ward`;
CREATE TABLE `tbl_setup_ward` (
  `WardCode` varchar(50) NOT NULL DEFAULT '',
  `WardName` varchar(200) DEFAULT NULL,
  `WardCompany` varchar(50) DEFAULT NULL,
  `WardComment` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`WardCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_setup_ward
-- ----------------------------
INSERT INTO `tbl_setup_ward` VALUES ('001', 'ทดสอบระบบ', null, null);

-- ----------------------------
-- Table structure for `tbl_system_running`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_system_running`;
CREATE TABLE `tbl_system_running` (
  `company_id` varchar(50) NOT NULL DEFAULT '',
  `running_ln` varchar(50) DEFAULT NULL,
  `running_status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_system_running
-- ----------------------------
INSERT INTO `tbl_system_running` VALUES ('AHC0001', '58', '-');
INSERT INTO `tbl_system_running` VALUES ('AHC0002', '8', '-');
INSERT INTO `tbl_system_running` VALUES ('AHC0003', '102', '-');
INSERT INTO `tbl_system_running` VALUES ('AHC0004', '365', '-');
INSERT INTO `tbl_system_running` VALUES ('AHC0008', '110', '-');
INSERT INTO `tbl_system_running` VALUES ('AHC0009', '0', '-');
INSERT INTO `tbl_system_running` VALUES ('AHC0011', '111', '-');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(50) NOT NULL DEFAULT '',
  `user_name` varchar(250) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `descript` varchar(100) DEFAULT NULL,
  `access_menu` varchar(50) DEFAULT NULL,
  `access_lab` varchar(50) DEFAULT NULL,
  `access_other` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('2', 'kdotnet', 'Administrator', '1', '', '1|1|1|1|1|1|1|1|1|', '0|0|1|1|1|', '', '0');
INSERT INTO `tbl_user` VALUES ('16', 'supaporn', 'supaporn', '1234', '-', '1|1|1|1|1|1|1|1|1|', '1|1|1|1|1|', '', '0');
INSERT INTO `tbl_user` VALUES ('17', 'mkt', 'mkt', '1', '-', '1|1|1|1|1|1|1|1|1|', '1|1|1|1|1|', '', '0');

-- ----------------------------
-- Table structure for `tbltemplate_excel`
-- ----------------------------
DROP TABLE IF EXISTS `tbltemplate_excel`;
CREATE TABLE `tbltemplate_excel` (
  `OrderID` varchar(50) NOT NULL DEFAULT '',
  `No1` varchar(50) DEFAULT NULL,
  `No` varchar(50) DEFAULT NULL,
  `ID` varchar(50) NOT NULL DEFAULT '',
  `CustomerEmployeeID` varchar(50) NOT NULL DEFAULT '',
  `FName` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Age` varchar(50) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `DEPT` varchar(50) DEFAULT NULL,
  `Fact_DIV` varchar(50) DEFAULT NULL,
  `PE` varchar(50) DEFAULT NULL,
  `CBC` varchar(50) DEFAULT NULL,
  `UA` varchar(50) DEFAULT NULL,
  `AMP` varchar(50) DEFAULT NULL,
  `FBS` varchar(50) DEFAULT NULL,
  `BUN` varchar(50) DEFAULT NULL,
  `CRE` varchar(50) DEFAULT NULL,
  `CHO` varchar(50) DEFAULT NULL,
  `TG` varchar(50) DEFAULT NULL,
  `HDL` varchar(50) DEFAULT NULL,
  `LDL` varchar(50) DEFAULT NULL,
  `URIC` varchar(50) DEFAULT NULL,
  `GOT` varchar(50) DEFAULT NULL,
  `GPT` varchar(50) DEFAULT NULL,
  `ALP` varchar(50) DEFAULT NULL,
  `AFP` varchar(50) DEFAULT NULL,
  `PSA` varchar(50) DEFAULT NULL,
  `CEA` varchar(50) DEFAULT NULL,
  `CA-125` varchar(50) DEFAULT NULL,
  `CA-153` varchar(50) DEFAULT NULL,
  `CA-199` varchar(50) DEFAULT NULL,
  `HBsAg` varchar(50) DEFAULT NULL,
  `HBsAb` varchar(50) DEFAULT NULL,
  `HBcAb` varchar(50) DEFAULT NULL,
  `Anti-HCV` varchar(50) DEFAULT NULL,
  `HAV` varchar(50) DEFAULT NULL,
  `HIV` varchar(50) DEFAULT NULL,
  `VDRL` varchar(50) DEFAULT NULL,
  `ABO` varchar(50) DEFAULT NULL,
  `Rh` varchar(50) DEFAULT NULL,
  `Ca` varchar(50) DEFAULT NULL,
  `Phos` varchar(50) DEFAULT NULL,
  `Widal test` varchar(50) DEFAULT NULL,
  `Xray-L` varchar(50) DEFAULT NULL,
  `Xray-S` varchar(50) DEFAULT NULL,
  `Xray-D` varchar(50) DEFAULT NULL,
  `Spiro` varchar(50) DEFAULT NULL,
  `Audio` varchar(50) DEFAULT NULL,
  `VISION` varchar(50) DEFAULT NULL,
  `EKG` varchar(50) DEFAULT NULL,
  `StoolExam` varchar(50) DEFAULT NULL,
  `StoolCulture` varchar(50) DEFAULT NULL,
  `Pb` varchar(50) DEFAULT NULL,
  `Hg` varchar(50) DEFAULT NULL,
  `Zn` varchar(50) DEFAULT NULL,
  `Al` varchar(50) DEFAULT NULL,
  `As` varchar(50) DEFAULT NULL,
  `Mn` varchar(50) DEFAULT NULL,
  `Cr` varchar(50) DEFAULT NULL,
  `Cd_bld` varchar(50) DEFAULT NULL,
  `Cd_ua` varchar(50) DEFAULT NULL,
  `Nickle` varchar(50) DEFAULT NULL,
  `Cu` varchar(50) DEFAULT NULL,
  `Mg` varchar(50) DEFAULT NULL,
  `Sn` varchar(50) DEFAULT NULL,
  `Acetone` varchar(50) DEFAULT NULL,
  `Benzene` varchar(50) DEFAULT NULL,
  `Methanol` varchar(50) DEFAULT NULL,
  `MEK` varchar(50) DEFAULT NULL,
  `Styrene` varchar(50) DEFAULT NULL,
  `Toluene` varchar(50) DEFAULT NULL,
  `Trichlo` varchar(50) DEFAULT NULL,
  `Xylene` varchar(50) DEFAULT NULL,
  `Chlorofrom` varchar(50) DEFAULT NULL,
  `Ethanol` varchar(50) DEFAULT NULL,
  `Phenol` varchar(50) DEFAULT NULL,
  `Formaldehyde` varchar(50) DEFAULT NULL,
  `Fomalene` varchar(50) DEFAULT NULL,
  `IPA` varchar(50) DEFAULT NULL,
  `MIBK` varchar(50) DEFAULT NULL,
  `Et_Benz` varchar(50) DEFAULT NULL,
  `TCA` varchar(50) DEFAULT NULL,
  `Ammonia` varchar(50) DEFAULT NULL,
  `Thinner` varchar(50) DEFAULT NULL,
  `Hexanedione` varchar(50) DEFAULT NULL,
  `Cyanide` varchar(50) DEFAULT NULL,
  `Cholinesterase` varchar(50) DEFAULT NULL,
  `Fluoride` varchar(50) DEFAULT NULL,
  `Strength` varchar(50) DEFAULT NULL,
  `Flexibility` varchar(50) DEFAULT NULL,
  `REM` varchar(50) DEFAULT NULL,
  `Program` varchar(50) DEFAULT NULL,
  `RegDate` date DEFAULT NULL,
  `CheckEDTA` varchar(50) DEFAULT NULL,
  `CheckCloth` varchar(50) DEFAULT NULL,
  `CheckNaF` varchar(50) DEFAULT NULL,
  `CheckUA` varchar(50) DEFAULT NULL,
  `CheckPE` varchar(50) DEFAULT NULL,
  `CheckXray` varchar(50) DEFAULT NULL,
  `CheckAudio` varchar(50) DEFAULT NULL,
  `CheckSpiro` varchar(50) DEFAULT NULL,
  `CheckVision` varchar(50) DEFAULT NULL,
  `CheckStool` varchar(50) DEFAULT NULL,
  `Check Remark` varchar(50) DEFAULT NULL,
  `Date of birth` date DEFAULT NULL,
  `Work start` varchar(50) DEFAULT NULL,
  `AddNo` varchar(50) DEFAULT NULL,
  `Moo` varchar(50) DEFAULT NULL,
  `Soi` varchar(50) DEFAULT NULL,
  `Road` varchar(50) DEFAULT NULL,
  `Tumbol` varchar(50) DEFAULT NULL,
  `Amphur` varchar(50) DEFAULT NULL,
  `Province` varchar(50) DEFAULT NULL,
  `Poscode` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `ContactAddNo` varchar(100) DEFAULT NULL,
  `ContactMoo` varchar(50) DEFAULT NULL,
  `ContactSoi` varchar(100) DEFAULT NULL,
  `ContactRoad` varchar(200) DEFAULT NULL,
  `ContactTumbol` varchar(150) DEFAULT NULL,
  `ContactAmphur` varchar(150) DEFAULT NULL,
  `ContactProvince` varchar(50) DEFAULT NULL,
  `ContactPoscode` varchar(50) DEFAULT NULL,
  `ContactPhone` varchar(50) DEFAULT NULL,
  `FactAddNo` varchar(100) DEFAULT NULL,
  `FactMoo` varchar(50) DEFAULT NULL,
  `FactSoi` varchar(200) DEFAULT NULL,
  `FactRoad` varchar(200) DEFAULT NULL,
  `FactTumbol` varchar(150) DEFAULT NULL,
  `FactAmphur` varchar(150) DEFAULT NULL,
  `FactProvince` varchar(50) DEFAULT NULL,
  `FactPoscode` varchar(50) DEFAULT NULL,
  `FactPhone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OrderID`,`ID`,`CustomerEmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbltemplate_excel
-- ----------------------------

-- ----------------------------
-- View structure for `00`
-- ----------------------------
DROP VIEW IF EXISTS `00`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `00` AS select `tbl_setup_lab_profile`.`ID` AS `ID`,`tbl_information_lab_received`.`lab_rec_ln` AS `lab_rec_ln`,`tbl_information_lab_received`.`lab_rec_barcode` AS `lab_rec_barcode`,`tbl_information_lab_received`.`lab_rec_labcode` AS `lab_rec_labcode` from (`tbl_information_lab_received` join `tbl_setup_lab_profile` on((convert(`tbl_setup_lab_profile`.`profine_ID` using utf8) = `tbl_information_lab_received`.`lab_rec_labcode`)));
