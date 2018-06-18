/*
Navicat MySQL Data Transfer

Source Server         : benerin
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : db_kuisioner

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-06-18 09:59:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dummy kuisioner
-- ----------------------------
DROP TABLE IF EXISTS `dummy kuisioner`;
CREATE TABLE `dummy kuisioner` (
  `Kode` varchar(255) DEFAULT NULL,
  `Mata Kuliah` varchar(255) DEFAULT NULL,
  `Kelas` varchar(255) DEFAULT NULL,
  `Pengajar` varchar(255) DEFAULT NULL,
  `Skor Kuisioner` varchar(255) DEFAULT NULL,
  `Rataan Nilai` varchar(255) DEFAULT NULL,
  `Rataan Kehadiran (%)` varchar(255) DEFAULT NULL,
  `Skor_Kuisioner` double DEFAULT NULL,
  `Rataan_Nilai` double DEFAULT NULL,
  `Rataan_Kehadiran` double DEFAULT NULL,
  `Kluster` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dummy kuisioner
-- ----------------------------
INSERT INTO `dummy kuisioner` VALUES ('DK14BB21', 'KECAKAPAN INTERPERSONAL', 'A', 'Suki S. Bass', '21.7632', '67.51', '82.86', '3.6272', '6.751', '8.286', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14BB21', 'KECAKAPAN INTERPERSONAL', 'B', 'Suki S. Bass', '21.9063', '70.75', '87.63', '3.65105', '7.075', '8.763', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14BB41', 'MANAJEMEN PEMASARAN', 'A', 'Christopher E. Chen', '21.2941', '66.21', '72.67', '3.5490166667', '6.621', '7.267', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14BB41', 'MANAJEMEN PEMASARAN', 'B', 'Christopher E. Chen', '21.5455', '71.85', '89.13', '3.5909166667', '7.185', '8.913', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14BB61', 'KEWIRAUSAHAAN II', 'A', 'Whoopi G. Barry', '25.52', '80.82', '88.86', '4.2533333333', '8.082', '8.886', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14BB61', 'KEWIRAUSAHAAN II', 'B', 'Whoopi G. Barry', '23.3333', '77.69', '89.58', '3.8888833333', '7.769', '8.958', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14BB81', 'AGAMA ISLAM', 'A', 'Beck G. Black', '22.6765', '73.44', '86.32', '3.7794166667', '7.344', '8.632', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14BB81', 'AGAMA ISLAM', 'B', 'Beck G. Black', '21.871', '75.46', '84.52', '3.6451666667', '7.546', '8.452', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KB21', 'DESAIN KOMUNIKASI VISUAL 1', 'A1', 'Alisa P. Norman', '23.8947', '67.42', '81.99', '3.98245', '6.742', '8.199', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KB21', 'DESAIN KOMUNIKASI VISUAL 1', 'A2', 'Quinn E. Hester', '25.7778', '66.03', '82.14', '4.2963', '6.603', '8.214', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KB21', 'DESAIN KOMUNIKASI VISUAL 1', 'B1', 'Whoopi G. Barry', '27.2941', '78.21', '93.75', '4.5490166667', '7.821', '9.375', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KB21', 'DESAIN KOMUNIKASI VISUAL 1', 'B2', 'Merrill A. Peck', '25.2857', '56.12', '80.67', '4.2142833333', '5.612', '8.067', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KB44', 'DESAIN KOMUNIKASI VISUAL 3', 'A1', 'Quinn E. Hester', '50.1739', '75.83', '90.18', '8.3623166667', '7.583', '9.018', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KB44', 'DESAIN KOMUNIKASI VISUAL 3', 'A2', 'Whoopi G. Barry', '51.25', '69.41', '90.48', '8.5416666667', '6.941', '9.048', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KB62', 'DESAIN KOMUNIKASI VISUAL 5', 'A', 'William K. Velez', '47.6842', '76.53', '80.45', '7.9473666667', '7.653', '8.045', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KB62', 'DESAIN KOMUNIKASI VISUAL 5', 'B', 'Alisa P. Norman', '25.36', '87.02', '90.29', '4.2266666667', '8.702', '9.029', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK21', 'PHOTOGRAPHIC', 'A1', 'Zephr Q. Baxter', '23.4737', '61.46', '80.12', '3.9122833333', '6.146', '8.012', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK21', 'PHOTOGRAPHIC', 'A2', 'Zephr Q. Baxter', '25', '61.67', '83.67', '4.1666666667', '6.167', '8.367', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK21', 'PHOTOGRAPHIC', 'B1', 'Zephr Q. Baxter', '25.8235', '73.07', '91.67', '4.3039166667', '7.307', '9.167', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK21', 'PHOTOGRAPHIC', 'B2', 'Merrill A. Peck', '26.1538', '55.79', '83.61', '4.3589666667', '5.579', '8.361', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK22', 'BASIC DESIGN 2', 'A1', 'Chadwick J. Alexander', '22.85', '61.02', '83.33', '3.8083333333', '6.102', '8.333', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK22', 'BASIC DESIGN 2', 'A2', 'Chadwick J. Alexander', '24.5882', '58.79', '81.63', '4.0980333333', '5.879', '8.163', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK22', 'BASIC DESIGN 2', 'B1', 'Piper Q. Mercer', '22', '72.04', '95.83', '3.6666666667', '7.204', '9.583', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK22', 'BASIC DESIGN 2', 'B2', 'Zephr Q. Baxter', '22.2308', '54.56', '74.11', '3.7051333333', '5.456', '7.411', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK23', 'TYPOGRAPHIC 2', 'A1', 'Freya H. Taylor', '21.2105', '61.61', '85.09', '3.5350833333', '6.161', '8.509', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK23', 'TYPOGRAPHIC 2', 'A2', 'Freya H. Taylor', '21.1765', '61.96', '81.97', '3.5294166667', '6.196', '8.197', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK23', 'TYPOGRAPHIC 2', 'B1', 'Freya H. Taylor', '23.6471', '77.24', '88.99', '3.9411833333', '7.724', '8.899', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK23', 'TYPOGRAPHIC 2', 'B2', 'Piper Q. Mercer', '23.1538', '55.99', '71.83', '3.8589666667', '5.599', '7.183', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK41', 'VIDEO EDITING', 'A1', 'Merrill A. Peck', '26.0909', '64.8', '82.74', '4.3484833333', '6.48', '8.274', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK41', 'VIDEO EDITING', 'A2', 'Raphael G. Mcdowell', '23.2273', '77.15', '92.22', '3.8712166667', '7.715', '9.222', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK41', 'VIDEO EDITING', 'B', 'Raphael G. Mcdowell', '22.7333', '73.01', '86.16', '3.7888833333', '7.301', '8.616', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK42', 'MULTIMEDIA 1', 'A1', 'Valentine L. Bishop', '23.9286', '69.33', '79.56', '3.9881', '6.933', '7.956', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK42', 'MULTIMEDIA 1', 'A2', 'Valentine L. Bishop', '23.2', '59.51', '67.62', '3.8666666667', '5.951', '6.762', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK42', 'MULTIMEDIA 1', 'B', 'Valentine L. Bishop', '22.6667', '70.68', '83.63', '3.7777833333', '7.068', '8.363', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK43', 'ANIMASI 3D', 'A1', 'Madaline K. Bush', '23.5789', '78.52', '85.71', '3.9298166667', '7.852', '8.571', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK43', 'ANIMASI 3D', 'A2', 'Madaline K. Bush', '24.3333', '80.74', '90.95', '4.05555', '8.074', '9.095', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14KK43', 'ANIMASI 3D', 'B', 'Madaline K. Bush', '19.1818', '77.4', '79.59', '3.1969666667', '7.74', '7.959', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14PA61', 'DIGITAL ADVERTISING', 'A', 'William K. Velez', '24.0667', '78.02', '80.24', '4.0111166667', '7.802', '8.024', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14PB61', 'BAHASA INGGRIS II', 'A', 'Nora E. Wood', '25.4815', '74.16', '90.74', '4.2469166667', '7.416', '9.074', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14PB61', 'BAHASA INGGRIS II', 'B', 'Nora E. Wood', '26', '76.56', '92.86', '4.3333333333', '7.656', '9.286', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14PK21', 'COMMUNICATION PROCESS', 'A', 'Clinton F. Guerra', '23.4167', '62.4', '84.9', '3.9027833333', '6.24', '8.49', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14PK21', 'COMMUNICATION PROCESS', 'B', 'Clinton F. Guerra', '22.9', '61.68', '82.65', '3.8166666667', '6.168', '8.265', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14PK41', 'TINJAUAN DESAIN', 'A', 'Merrill A. Peck', '24.5833', '72.28', '87.19', '4.0972166667', '7.228', '8.719', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14PK41', 'TINJAUAN DESAIN', 'B', 'Quinn E. Hester', '24.7027', '76.23', '94.69', '4.1171166667', '7.623', '9.469', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14PK61', 'PSIKOLOGI PERSEPSI', 'A', 'Suki S. Bass', '23.9459', '81.96', '92.28', '3.9909833333', '8.196', '9.228', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14PK61', 'PSIKOLOGI PERSEPSI', 'B', 'Suki S. Bass', '21.4118', '80.24', '85.71', '3.5686333333', '8.024', '8.571', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14PM61', 'MUSIC DIGITAL', 'A', 'Alisa P. Norman', '25.1538', '69.43', '87.36', '4.1923', '6.943', '8.736', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14PM61', 'MUSIC DIGITAL', 'B', 'Samantha W. Gregory', '25.7143', '78.95', '83.16', '4.2857166667', '7.895', '8.316', null);
INSERT INTO `dummy kuisioner` VALUES ('DK14PW62', 'WEB DESIGN', 'A', 'Damian W. Castillo', '25', '74.52', '83.6', '4.1666666667', '7.452', '8.36', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14BB21', 'KECAKAPAN INTERPERSONAL', 'A', 'Nero X. Watson', '24.2778', '79.62', '79.64', '4.0463', '7.962', '7.964', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KB21', 'BASIS DATA', 'A', 'Clare E. Moran', '25.3684', '62.96', '84.01', '4.2280666667', '6.296', '8.401', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KB22', 'PEMROGRAMAN DASAR I ', 'A', 'Tyrone I. Gibson', '23.8889', '70.88', '84.29', '3.9814833333', '7.088', '8.429', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KB23', 'PRAKTIKUM BASIS DATA', 'A', 'Clare E. Moran', '23.8333', '71.12', '87.62', '3.9722166667', '7.112', '8.762', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KB24', 'PRAKTIKUM PEMROGRAMAN DASAR I ', 'A', 'Samantha W. Gregory', '23.4118', '63.26', '90.71', '3.9019666667', '6.326', '9.071', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KB41', 'ANALISA DAN PERANCANGAN SISTEM  INFORMASI', 'A', 'Dakota K. Hurley', '26.8125', '68.91', '91.18', '4.46875', '6.891', '9.118', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KB42', 'BASIS DATA LANJUT', 'A', 'Sybill K. Jacobson', '26.3125', '72.18', '94.54', '4.3854166667', '7.218', '9.454', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KB43', 'DESAIN GRAFIS', 'A', 'William K. Velez', '24.8571', '66.07', '80.75', '4.14285', '6.607', '8.075', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KB45', 'PEMROGRAMAN WEB LANJUT', 'A', 'Damian W. Castillo', '27.5263', '70.27', '85.71', '4.5877166667', '7.027', '8.571', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KB46', 'PRAKTEK ANALISA DAN PERANCANGAN SISTEM INFORMASI', 'A', 'Dakota K. Hurley', '26.75', '71.89', '94.71', '4.4583333333', '7.189', '9.471', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KB51', 'APLIKASI MOBILE', 'A', 'Samantha W. Gregory', '27.3333', '73.4', '92.86', '4.55555', '7.34', '9.286', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KK21', 'PRAKTIKUM SISTEM OPERASI', 'A', 'Amery K. Frank', '24.6471', '78.5', '92', '4.10785', '7.85', '9.2', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KK22', 'SISTEM INFORMASI MANAJEMEN', 'A', 'Dakota K. Hurley', '25.2353', '65.14', '84.29', '4.2058833333', '6.514', '8.429', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KK23', 'SISTEM OPERASI', 'A', 'Amery K. Frank', '24.7647', '57.68', '83.21', '4.12745', '5.768', '8.321', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KK24', 'STATISTIKA', 'A', 'Wendy Y. Evans', '22.9412', '56.92', '80', '3.8235333333', '5.692', '8', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KK41', 'AKUNTANSI', 'A', 'Nero X. Watson', '27.3478', '79.8', '89.71', '4.5579666667', '7.98', '8.971', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14KK42', 'PRAKTIKUM AKUNTANSI', 'A', 'Nero X. Watson', '26.3478', '80.58', '95.2', '4.3913', '8.058', '9.52', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14PK51', 'PANCASILA DAN KEWARGANEGARAAN', 'A', 'Logan D. Curtis', '27', '77.48', '88.57', '4.5', '7.748', '8.857', null);
INSERT INTO `dummy kuisioner` VALUES ('MI14PK61', 'BAHASA INGGRIS II', 'A', 'Brooke Y. Swanson', '26.1765', '81.26', '91.67', '4.36275', '8.126', '9.167', null);
INSERT INTO `dummy kuisioner` VALUES ('MI16BB31', 'KEWIRAUSAHAAN I', 'A', 'Kermit F. Riggs', '24', '70.25', '64.29', '4', '7.025', '6.429', null);
INSERT INTO `dummy kuisioner` VALUES ('MI16BB42', 'KEWIRAUSAHAAN II', 'A', 'Kermit F. Riggs', '25.625', '69.28', '92.41', '4.2708333333', '6.928', '9.241', null);
INSERT INTO `dummy kuisioner` VALUES ('MI16KB41', 'INTERAKSI MANUSIA DAN KOMPUTER', 'A', 'Samantha W. Gregory', '27.1667', '76.45', '90.98', '4.5277833333', '7.645', '9.098', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KB21', 'PEMROGRAMAN DASAR I', 'A', 'Samantha W. Gregory', '25.8571', '67.77', '85.12', '4.3095166667', '6.777', '8.512', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KB22', 'PRAKTIKUM PEMROGRAMAN DASAR I ', 'A', 'Samantha W. Gregory', '25.1818', '65.92', '80.38', '4.1969666667', '6.592', '8.038', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KB41', 'ANALISA DAN PERANCANGAN SISTEM INFORMASI II', 'A', 'Dakota K. Hurley', '26.1429', '71.77', '85.71', '4.35715', '7.177', '8.571', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KB42', 'ENTERPRISE SYSTEM', 'A', 'Amir J. Ferguson', '24.2143', '70.82', '86.67', '4.0357166667', '7.082', '8.667', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KB43', 'JARINGAN KOMPUTER DAN KOMUNIKASI DATA', 'A', 'Kaseem H. Barton', '25.8667', '63.82', '84.03', '4.3111166667', '6.382', '8.403', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KB44', 'PRAKTIKUM JARINGAN KOMPUTER DAN KOMUNIKASI DATA', 'A', 'Amery K. Frank', '24.3529', '66.62', '82.63', '4.0588166667', '6.662', '8.263', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KB45', 'PEMROGRAMAN WEB', 'A', 'Damian W. Castillo', '27.1333', '58.41', '81.93', '4.5222166667', '5.841', '8.193', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KB46', 'PRAKTIKUM PEMROGRAMAN WEB', 'A', 'Damian W. Castillo', '26.4', '65.21', '84.12', '4.4', '6.521', '8.412', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KB61', 'E-BISNIS', 'A', 'Michael Y. Olson', '28.9091', '77.75', '87.5', '4.8181833333', '7.775', '8.75', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KK21', 'SISTEM INFORMASI MANAJEMEN', 'A', 'Clare E. Moran', '26.7143', '59.16', '80.95', '4.4523833333', '5.916', '8.095', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KK22', 'BASIS DATA', 'A', 'Clare E. Moran', '26.8095', '60.28', '83.04', '4.46825', '6.028', '8.304', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KK23', 'PRAKTIKUM BASIS DATA', 'A', 'Clare E. Moran', '26.1905', '71.79', '85', '4.3650833333', '7.179', '8.5', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KK24', 'ALGORITMA DAN STRUKTUR DATA II', 'A', 'Tyrone I. Gibson', '24.8182', '58.29', '82.14', '4.1363666667', '5.829', '8.214', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KK25', 'RISET OPERASI', 'A', 'Wendy Y. Evans', '24.5238', '60.3', '79.46', '4.0873', '6.03', '7.946', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KK26', 'SISTEM FUNGSIONAL BISNIS ', 'A', 'Vivien C. Grant', '24.8095', '39.11', '75', '4.1349166667', '3.911', '7.5', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KK41', 'PERENCANAAN STRATEGIS SISTEM INFORMASI', 'A', 'Bertha D. Schroeder', '27', '74.06', '93.37', '4.5', '7.406', '9.337', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KK42', 'STATISTIKA', 'A', 'Lunea N. Horton', '24.8125', '70.01', '85.71', '4.1354166667', '7.001', '8.571', null);
INSERT INTO `dummy kuisioner` VALUES ('SI15KK43', 'MANAJEMEN INVESTASI', 'A', 'Kermit F. Riggs', '24.2308', '73.14', '92.35', '4.0384666667', '7.314', '9.235', null);
INSERT INTO `dummy kuisioner` VALUES ('SI16KB41', 'KEWIRAUSAHAAN I', 'A', 'Kermit F. Riggs', '25.2143', '74.55', '83.81', '4.2023833333', '7.455', '8.381', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14BB41', 'KEWIRAUSAHAAN I', 'A', 'Kermit F. Riggs', '24.5641', '77.07', '87.5', '4.0940166667', '7.707', '8.75', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14BB41', 'KEWIRAUSAHAAN I', 'B', 'Kermit F. Riggs', '24.7692', '76.94', '87.68', '4.1282', '7.694', '8.768', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14BB41', 'KEWIRAUSAHAAN I', 'C', 'Kermit F. Riggs', '24.4615', '75.17', '81.07', '4.0769166667', '7.517', '8.107', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14BB81', 'ETIKA KOMPUTER', 'A', 'Channing M. Chen', '19.871', '56.17', '79.02', '3.3118333333', '5.617', '7.902', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14BB81', 'ETIKA KOMPUTER', 'B', 'Channing M. Chen', '20.5385', '58.3', '77.04', '3.4230833333', '5.83', '7.704', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14BB81', 'ETIKA KOMPUTER', 'C', 'Channing M. Chen', '21.2143', '58.99', '81.12', '3.5357166667', '5.899', '8.112', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB21', 'BASIS DATA', 'A', 'Maia K. Schultz', '25.5385', '68.86', '81.53', '4.2564166667', '6.886', '8.153', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB21', 'BASIS DATA', 'B', 'Clare E. Moran', '25.5556', '66.68', '82.51', '4.2592666667', '6.668', '8.251', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB21', 'BASIS DATA', 'C', 'Amery K. Frank', '25.64', '62.12', '82.02', '4.2733333333', '6.212', '8.202', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB22', 'PRAKTIKUM BASIS DATA', 'A', 'Clare E. Moran', '23.2', '77.02', '92.59', '3.8666666667', '7.702', '9.259', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB22', 'PRAKTIKUM BASIS DATA', 'B', 'Clare E. Moran', '24.72', '72.09', '90.37', '4.12', '7.209', '9.037', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB22', 'PRAKTIKUM BASIS DATA', 'C', 'Clare E. Moran', '23.88', '69.49', '92.96', '3.98', '6.949', '9.296', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB23', 'PEMROGRAMAN DASAR I', 'A', 'Shay G. Cohen', '24.48', '66.79', '84.18', '4.08', '6.679', '8.418', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB23', 'PEMROGRAMAN DASAR I', 'B', 'Shay G. Cohen', '24.8', '68.2', '87.83', '4.1333333333', '6.82', '8.783', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB23', 'PEMROGRAMAN DASAR I', 'C', 'Tyrone I. Gibson', '25.5', '77.08', '91.27', '4.25', '7.708', '9.127', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB23', 'PEMROGRAMAN DASAR I', 'D', 'Shay G. Cohen', '25', '36.4', '45.24', '4.1666666667', '3.64', '4.524', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB24', 'PRAKTIKUM PEMROGRAMAN DASAR I', 'A', 'Samantha W. Gregory', '24.32', '78.12', '90.69', '4.0533333333', '7.812', '9.069', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB24', 'PRAKTIKUM PEMROGRAMAN DASAR I', 'B', 'Samantha W. Gregory', '24.68', '85', '90.37', '4.1133333333', '8.5', '9.037', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB24', 'PRAKTIKUM PEMROGRAMAN DASAR I', 'C', 'Samantha W. Gregory', '24.4583', '64.57', '92.59', '4.0763833333', '6.457', '9.259', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB24', 'PRAKTIKUM PEMROGRAMAN DASAR I', 'D', 'Samantha W. Gregory', '23.2', '29.76', '42.22', '3.8666666667', '2.976', '4.222', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB41', 'PEMROGRAMAN BERORIENTASI OBJEK', 'A', 'Bertha D. Schroeder', '25.96', '67.59', '94', '4.3266666667', '6.759', '9.4', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB41', 'PEMROGRAMAN BERORIENTASI OBJEK', 'B', 'Bertha D. Schroeder', '25.72', '67.91', '88.19', '4.2866666667', '6.791', '8.819', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB41', 'PEMROGRAMAN BERORIENTASI OBJEK', 'C', 'Bertha D. Schroeder', '25.8182', '60.9', '82.86', '4.3030333333', '6.09', '8.286', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB41', 'PEMROGRAMAN BERORIENTASI OBJEK', 'D', 'McKenzie L. Cummings', '23.6667', '50.24', '71.71', '3.94445', '5.024', '7.171', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB41', 'PEMROGRAMAN BERORIENTASI OBJEK', 'E', 'McKenzie L. Cummings', '24.8095', '49.4', '75.6', '4.1349166667', '4.94', '7.56', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB42', 'INTERAKSI MANUSIA DAN KOMPUTER', 'A', 'Channing M. Chen', '21.8333', '52.68', '80.52', '3.6388833333', '5.268', '8.052', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB42', 'INTERAKSI MANUSIA DAN KOMPUTER', 'B', 'Channing M. Chen', '21.3871', '48.26', '77.78', '3.5645166667', '4.826', '7.778', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB42', 'INTERAKSI MANUSIA DAN KOMPUTER', 'C', 'Eliana G. Best', '23.8649', '73.78', '85.54', '3.9774833333', '7.378', '8.554', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB44', 'PEMROGRAMAN WEB', 'A', 'Damian W. Castillo', '26.3913', '75.75', '91.71', '4.39855', '7.575', '9.171', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB44', 'PEMROGRAMAN WEB', 'B', 'Amery K. Frank', '25.44', '80.98', '94.86', '4.24', '8.098', '9.486', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB44', 'PEMROGRAMAN WEB', 'C', 'Amir J. Ferguson', '24.4348', '65.96', '88.29', '4.0724666667', '6.596', '8.829', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB44', 'PEMROGRAMAN WEB', 'D', 'Amir J. Ferguson', '21.3636', '26.18', '54.2', '3.5606', '2.618', '5.42', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB44', 'PEMROGRAMAN WEB', 'E', 'Amir J. Ferguson', '22.1364', '63.85', '78', '3.6894', '6.385', '7.8', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB46', 'JARINGAN KOMPUTER DAN KOMUNIKASI DATA', 'A', 'Kaseem H. Barton', '25.2778', '59.76', '73.48', '4.2129666667', '5.976', '7.348', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB46', 'JARINGAN KOMPUTER DAN KOMUNIKASI DATA', 'B', 'Kaseem H. Barton', '25.381', '69.53', '87.01', '4.2301666667', '6.953', '8.701', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB46', 'JARINGAN KOMPUTER DAN KOMUNIKASI DATA', 'C', 'Kaseem H. Barton', '24.1111', '62.95', '83.33', '4.0185166667', '6.295', '8.333', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB47', 'PRAKTIKUM JARINGAN KOMPUTER DAN KOMUNIKASI DATA', 'A', 'Amery K. Frank', '24.8421', '77.4', '88.5', '4.14035', '7.74', '8.85', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB47', 'PRAKTIKUM JARINGAN KOMPUTER DAN KOMUNIKASI DATA', 'B', 'Amery K. Frank', '23.8333', '71.6', '95', '3.9722166667', '7.16', '9.5', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB47', 'PRAKTIKUM JARINGAN KOMPUTER DAN KOMUNIKASI DATA', 'C', 'Amery K. Frank', '24.2105', '66.34', '89.44', '4.0350833333', '6.634', '8.944', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB47', 'PRAKTIKUM JARINGAN KOMPUTER DAN KOMUNIKASI DATA', 'D', 'Amery K. Frank', '22.1818', '64.42', '82.31', '3.6969666667', '6.442', '8.231', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB47', 'PRAKTIKUM JARINGAN KOMPUTER DAN KOMUNIKASI DATA', 'E', 'Amery K. Frank', '25.5714', '72.33', '85.33', '4.2619', '7.233', '8.533', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB47', 'PRAKTIKUM JARINGAN KOMPUTER DAN KOMUNIKASI DATA', 'F', 'Amery K. Frank', '25.0556', '75.69', '90', '4.1759333333', '7.569', '9', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB55', 'PENGEMBANGAN GAME DASAR', 'A', 'McKenzie L. Cummings', '24.2', '28.4', '44.29', '4.0333333333', '2.84', '4.429', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB61', 'PENGOLAHAN CITRA DIGITAL', 'A', 'Sybill K. Jacobson', '24', '56.19', '84.82', '4', '5.619', '8.482', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB61', 'PENGOLAHAN CITRA DIGITAL', 'B', 'Sybill K. Jacobson', '24.04', '59.13', '78.84', '4.0066666667', '5.913', '7.884', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB61', 'PENGOLAHAN CITRA DIGITAL', 'C', 'Maia K. Schultz', '24.6', '60.58', '78.35', '4.1', '6.058', '7.835', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB62', 'REKAYASA PERANGKAT LUNAK', 'A', 'Eliana G. Best', '23.6', '58.66', '78.57', '3.9333333333', '5.866', '7.857', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB62', 'REKAYASA PERANGKAT LUNAK', 'B', 'Eliana G. Best', '21.6154', '68.92', '84.07', '3.6025666667', '6.892', '8.407', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB62', 'REKAYASA PERANGKAT LUNAK', 'C', 'Eliana G. Best', '21.4722', '56.12', '75.54', '3.5787', '5.612', '7.554', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB63', 'SISTEM INFORMASI GEOGRAFIS', 'A', 'McKenzie L. Cummings', '23.5', '69.5', '75', '3.9166666667', '6.95', '7.5', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB64', 'PENGEMBANGAN APLIKASI PERANGKAT BERGERAK', 'A', 'McKenzie L. Cummings', '22.9091', '56.27', '68.83', '3.8181833333', '5.627', '6.883', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB67', 'PEMROGRAMAN GRAFIS', 'A', 'Evangeline M. Butler', '24.48', '71.36', '84', '4.08', '7.136', '8.4', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB67', 'PEMROGRAMAN GRAFIS', 'B', 'Evangeline M. Butler', '24.6667', '68.1', '77.14', '4.1111166667', '6.81', '7.714', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB67', 'PEMROGRAMAN GRAFIS', 'C', 'Evangeline M. Butler', '25.0256', '72.12', '89.93', '4.1709333333', '7.212', '8.993', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB67', 'PEMROGRAMAN GRAFIS', 'P', 'Evangeline M. Butler', '26.8', '67.17', '0', '4.4666666667', '6.717', '0', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB68', 'PRAKTIKUM PEMROGRAMAN GRAFIS', 'A', 'Evangeline M. Butler', '25.3704', '77.37', '90.12', '4.2284', '7.737', '9.012', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB68', 'PRAKTIKUM PEMROGRAMAN GRAFIS', 'B', 'Evangeline M. Butler', '23.7368', '72.53', '81', '3.9561333333', '7.253', '8.1', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB68', 'PRAKTIKUM PEMROGRAMAN GRAFIS', 'C', 'Evangeline M. Butler', '24.2083', '79.1', '93.33', '4.0347166667', '7.91', '9.333', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KB68', 'PRAKTIKUM PEMROGRAMAN GRAFIS', 'D', 'Evangeline M. Butler', '21.3571', '81.39', '90', '3.5595166667', '8.139', '9', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK21', 'STATISTIKA', 'A', 'Wendy Y. Evans', '23.931', '62.91', '83.93', '3.9885', '6.291', '8.393', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK21', 'STATISTIKA', 'B', 'Lunea N. Horton', '23.12', '61.44', '81.32', '3.8533333333', '6.144', '8.132', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK21', 'STATISTIKA', 'C', 'Vivien C. Grant', '24.1538', '44.3', '79.8', '4.0256333333', '4.43', '7.98', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK22', 'MATEMATIKA DISKRIT', 'A', 'Lunea N. Horton', '22.1071', '58.04', '81.8', '3.6845166667', '5.804', '8.18', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK22', 'MATEMATIKA DISKRIT', 'B', 'Lunea N. Horton', '23.9286', '55.5', '78.81', '3.9881', '5.55', '7.881', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK22', 'MATEMATIKA DISKRIT', 'C', 'Lunea N. Horton', '26', '58.04', '85.46', '4.3333333333', '5.804', '8.546', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK23', 'SISTEM INFORMASI ', 'A', 'Alan I. Avila', '23.8929', '61.58', '77.37', '3.98215', '6.158', '7.737', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK23', 'SISTEM INFORMASI ', 'B', 'Alan I. Avila', '22.68', '53.2', '78.57', '3.78', '5.32', '7.857', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK23', 'SISTEM INFORMASI ', 'C', 'Alan I. Avila', '23.2692', '55.12', '84.98', '3.8782', '5.512', '8.498', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK24', 'ORGANISASI DAN ARSITEKTUR KOMPUTER', 'A', 'Gail K. Goff', '24.5', '67.21', '82.69', '4.0833333333', '6.721', '8.269', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK24', 'ORGANISASI DAN ARSITEKTUR KOMPUTER', 'B', 'Gail K. Goff', '22.6667', '73.81', '86.7', '3.7777833333', '7.381', '8.67', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK24', 'ORGANISASI DAN ARSITEKTUR KOMPUTER', 'C', 'Alan I. Avila', '23.68', '51.47', '75.32', '3.9466666667', '5.147', '7.532', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK41', 'ARTIFICIAL INTELLIGENCE', 'A', 'Tyrone I. Gibson', '25.1538', '77.56', '87.68', '4.1923', '7.756', '8.768', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK41', 'ARTIFICIAL INTELLIGENCE', 'B', 'Sybill K. Jacobson', '25.1667', '67.19', '87.14', '4.19445', '6.719', '8.714', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK41', 'ARTIFICIAL INTELLIGENCE', 'C', 'Sybill K. Jacobson', '25.087', '65.78', '80.29', '4.1811666667', '6.578', '8.029', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK42', 'STRATEGI ALGORITMA', 'A', 'Evangeline M. Butler', '25.359', '63.52', '92.5', '4.2265', '6.352', '9.25', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK42', 'STRATEGI ALGORITMA', 'B', 'Evangeline M. Butler', '23.9697', '52.41', '80.36', '3.99495', '5.241', '8.036', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK42', 'STRATEGI ALGORITMA', 'C', 'Amir J. Ferguson', '23.65', '54.11', '79.27', '3.9416666667', '5.411', '7.927', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK55', 'DATA MINING', 'A', 'Maia K. Schultz', '25.5', '83.17', '88.49', '4.25', '8.317', '8.849', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK55', 'DATA MINING', 'B', 'Maia K. Schultz', '24.5833', '61.54', '78.27', '4.0972166667', '6.154', '7.827', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK56', 'SISTEM PENUNJANG KEPUTUSAN', 'A', 'Michael Y. Olson', '24.75', '37.44', '56.35', '4.125', '3.744', '5.635', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK61', 'KOMPUTASI PERVASIF', 'A', 'Shay G. Cohen', '25.8', '74.24', '76.43', '4.3', '7.424', '7.643', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK61', 'KOMPUTASI PERVASIF', 'B', 'Shay G. Cohen', '23.7692', '71.95', '83.86', '3.9615333333', '7.195', '8.386', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK63', 'KRIPTOGRAFI', 'A', 'Zenaida Q. Nunez', '24.7778', '70.18', '93.81', '4.1296333333', '7.018', '9.381', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14KK63', 'KRIPTOGRAFI', 'B', 'Zenaida Q. Nunez', '24.3478', '66.71', '81.55', '4.0579666667', '6.671', '8.155', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14PK61', 'BAHASA INGGRIS II', 'A', 'Castor G. Hamilton', '24.2414', '78.25', '88.92', '4.0402333333', '7.825', '8.892', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14PK61', 'BAHASA INGGRIS II', 'B', 'Castor G. Hamilton', '25.45', '80.26', '78.57', '4.2416666667', '8.026', '7.857', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14PK61', 'BAHASA INGGRIS II', 'C', 'Castor G. Hamilton', '24.3103', '75.66', '87.44', '4.0517166667', '7.566', '8.744', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14PK61', 'BAHASA INGGRIS II', 'D', 'Brooke Y. Swanson', '24.9444', '80.35', '86.09', '4.1574', '8.035', '8.609', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14PK71', 'AGAMA ISLAM', 'A', 'Beck G. Black', '24', '73.8', '115.38', '4', '7.38', '11.538', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14PK71', 'AGAMA ISLAM', 'B', 'Beck G. Black', '25.2381', '71.6', '82.14', '4.20635', '7.16', '8.214', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14PK81', 'PANCASILA DAN KEWARGANEGARAAN', 'A', 'Logan D. Curtis', '25.9091', '73.08', '83.19', '4.3181833333', '7.308', '8.319', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14PK81', 'PANCASILA DAN KEWARGANEGARAAN', 'B', 'Logan D. Curtis', '24.9333', '81.23', '93.81', '4.15555', '8.123', '9.381', null);
INSERT INTO `dummy kuisioner` VALUES ('TI14PK81', 'PANCASILA DAN KEWARGANEGARAAN', 'C', 'Logan D. Curtis', '25.1111', '74.51', '86.73', '4.1851833333', '7.451', '8.673', null);

-- ----------------------------
-- Table structure for tb_ketercapaian
-- ----------------------------
DROP TABLE IF EXISTS `tb_ketercapaian`;
CREATE TABLE `tb_ketercapaian` (
  `nama_dosen` varchar(255) DEFAULT NULL,
  `mata_kuliah` varchar(255) DEFAULT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `ketercapaian` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ketercapaian
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
