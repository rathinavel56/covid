/*
Navicat MySQL Data Transfer

Source Server         : locahost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : sample

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-02-22 09:02:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `attachments`
-- ----------------------------
DROP TABLE IF EXISTS `attachments`;
CREATE TABLE `attachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `class` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `filename` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dir` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `mimetype` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filesize` bigint(20) DEFAULT NULL,
  `height` bigint(20) DEFAULT NULL,
  `width` bigint(20) DEFAULT NULL,
  `thumb` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `location` longtext COLLATE utf8_unicode_ci,
  `caption` longtext COLLATE utf8_unicode_ci,
  `is_primary` tinyint(1) DEFAULT '0',
  `approved_user_id` bigint(20) DEFAULT '0',
  `is_admin_approval` int(2) DEFAULT '0',
  `ispaid` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `attachments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of attachments
-- ----------------------------
INSERT INTO `attachments` VALUES ('1', '2012-02-16 08:16:35', '2012-02-16 08:16:35', 'UserAvatar', '0', null, 'default_avatar.png', 'UserAvatar/0', 'image/png', '3606', '286', '256', '0', null, null, null, '1', '0', '2', '0');

-- ----------------------------
-- Table structure for `cards`
-- ----------------------------
DROP TABLE IF EXISTS `cards`;
CREATE TABLE `cards` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` longtext NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `card_number` longtext NOT NULL,
  `card_display_number` longtext NOT NULL,
  `expiry_date` varchar(255) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cards
-- ----------------------------

-- ----------------------------
-- Table structure for `contacts`
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of contacts
-- ----------------------------

-- ----------------------------
-- Table structure for `countries`
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_alpha2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_alpha3` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_numeric` int(11) DEFAULT NULL,
  `fips_code` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capital` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `areainsqkm` double DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `continent` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tld` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currencyname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postalcodeformat` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postalcoderegex` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `geonameid` int(11) DEFAULT NULL,
  `neighbours` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `equivalentfipscode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('1', 'AF', 'AFG', '4', 'AF', 'Afghanistan', 'Kabul', '647500', '29121286', 'AS', '.af', 'AFN', 'Afghani', '93', '', '', 'fa-AF,ps,uz-AF,tk', '1149361', 'TM,CN,IR,TJ,PK,UZ', '\r', null, null);
INSERT INTO `countries` VALUES ('2', 'AX', 'ALA', '248', '', 'Aland Islands', 'Mariehamn', '0', '26711', 'EU', '.ax', 'EUR', 'Euro', '+358-18', '', '', 'sv-AX', '661882', '', 'FI\r', null, null);
INSERT INTO `countries` VALUES ('3', 'AL', 'ALB', '8', 'AL', 'Albania', 'Tirana', '28748', '2986952', 'EU', '.al', 'ALL', 'Lek', '355', '', '', 'sq,el', '783754', 'MK,GR,CS,ME,RS,XK', '\r', null, null);
INSERT INTO `countries` VALUES ('4', 'DZ', 'DZA', '12', 'AG', 'Algeria', 'Algiers', '2381740', '34586184', 'AF', '.dz', 'DZD', 'Dinar', '213', '#####', '^(d{5})$', 'ar-DZ', '2589581', 'NE,EH,LY,MR,TN,MA,ML', '\r', null, null);
INSERT INTO `countries` VALUES ('5', 'AS', 'ASM', '16', 'AQ', 'American Samoa', 'Pago Pago', '199', '57881', 'OC', '.as', 'USD', 'Dollar', '+1-684', '', '', 'en-AS,sm,to', '5880801', '', '\r', null, null);
INSERT INTO `countries` VALUES ('6', 'AD', 'AND', '20', 'AN', 'Andorra', 'Andorra la Vella', '468', '84000', 'EU', '.ad', 'EUR', 'Euro', '376', 'AD###', '^(?:AD)*(d{3})$', 'ca', '3041565', 'ES,FR', '\r', null, null);
INSERT INTO `countries` VALUES ('7', 'AO', 'AGO', '24', 'AO', 'Angola', 'Luanda', '1246700', '13068161', 'AF', '.ao', 'AOA', 'Kwanza', '244', '', '', 'pt-AO', '3351879', 'CD,NA,ZM,CG', '\r', null, null);
INSERT INTO `countries` VALUES ('8', 'AI', 'AIA', '660', 'AV', 'Anguilla', 'The Valley', '102', '13254', 'NA', '.ai', 'XCD', 'Dollar', '+1-264', '', '', 'en-AI', '3573511', '', '\r', null, null);
INSERT INTO `countries` VALUES ('9', 'AQ', 'ATA', '10', 'AY', 'Antarctica', '', '14000000', '0', 'AN', '.aq', '', '', '', '', '', '', '6697173', '', '\r', null, null);
INSERT INTO `countries` VALUES ('10', 'AG', 'ATG', '28', 'AC', 'Antigua and Barbuda', 'St. John\'s', '443', '86754', 'NA', '.ag', 'XCD', 'Dollar', '+1-268', '', '', 'en-AG', '3576396', '', '\r', null, null);
INSERT INTO `countries` VALUES ('11', 'AR', 'ARG', '32', 'AR', 'Argentina', 'Buenos Aires', '2766890', '41343201', 'SA', '.ar', 'ARS', 'Peso', '54', '@####@@@', '^([A-Z]d{4}[A-Z]{3})', 'es-AR,en,it,de,fr,gn', '3865483', 'CL,BO,UY,PY,BR', '\r', null, null);
INSERT INTO `countries` VALUES ('12', 'AM', 'ARM', '51', 'AM', 'Armenia', 'Yerevan', '29800', '2968000', 'AS', '.am', 'AMD', 'Dram', '374', '######', '^(d{6})$', 'hy', '174982', 'GE,IR,AZ,TR', '\r', null, null);
INSERT INTO `countries` VALUES ('13', 'AW', 'ABW', '533', 'AA', 'Aruba', 'Oranjestad', '193', '71566', 'NA', '.aw', 'AWG', 'Guilder', '297', '', '', 'nl-AW,es,en', '3577279', '', '\r', null, null);
INSERT INTO `countries` VALUES ('14', 'AU', 'AUS', '36', 'AS', 'Australia', 'Canberra', '7686850', '21515754', 'OC', '.au', 'AUD', 'Dollar', '61', '####', '^(d{4})$', 'en-AU', '2077456', '', '\r', null, null);
INSERT INTO `countries` VALUES ('15', 'AT', 'AUT', '40', 'AU', 'Austria', 'Vienna', '83858', '8205000', 'EU', '.at', 'EUR', 'Euro', '43', '####', '^(d{4})$', 'de-AT,hr,hu,sl', '2782113', 'CH,DE,HU,SK,CZ,IT,SI', '\r', null, null);
INSERT INTO `countries` VALUES ('16', 'AZ', 'AZE', '31', 'AJ', 'Azerbaijan', 'Baku', '86600', '8303512', 'AS', '.az', 'AZN', 'Manat', '994', 'AZ ####', '^(?:AZ)*(d{4})$', 'az,ru,hy', '587116', 'GE,IR,AM,TR,RU', '\r', null, null);
INSERT INTO `countries` VALUES ('17', 'BS', 'BHS', '44', 'BF', 'Bahamas', 'Nassau', '13940', '301790', 'NA', '.bs', 'BSD', 'Dollar', '+1-242', '', '', 'en-BS', '3572887', '', '\r', null, null);
INSERT INTO `countries` VALUES ('18', 'BH', 'BHR', '48', 'BA', 'Bahrain', 'Manama', '665', '738004', 'AS', '.bh', 'BHD', 'Dinar', '973', '####|###', '^(d{3}d?)$', 'ar-BH,en,fa,ur', '290291', '', '\r', null, null);
INSERT INTO `countries` VALUES ('19', 'BD', 'BGD', '50', 'BG', 'Bangladesh', 'Dhaka', '144000', '156118464', 'AS', '.bd', 'BDT', 'Taka', '880', '####', '^(d{4})$', 'bn-BD,en', '1210997', 'MM,IN', '\r', null, null);
INSERT INTO `countries` VALUES ('20', 'BB', 'BRB', '52', 'BB', 'Barbados', 'Bridgetown', '431', '285653', 'NA', '.bb', 'BBD', 'Dollar', '+1-246', 'BB#####', '^(?:BB)*(d{5})$', 'en-BB', '3374084', '', '\r', null, null);
INSERT INTO `countries` VALUES ('21', 'BY', 'BLR', '112', 'BO', 'Belarus', 'Minsk', '207600', '9685000', 'EU', '.by', 'BYR', 'Ruble', '375', '######', '^(d{6})$', 'be,ru', '630336', 'PL,LT,UA,RU,LV', '\r', null, null);
INSERT INTO `countries` VALUES ('22', 'BE', 'BEL', '56', 'BE', 'Belgium', 'Brussels', '30510', '10403000', 'EU', '.be', 'EUR', 'Euro', '32', '####', '^(d{4})$', 'nl-BE,fr-BE,de-BE', '2802361', 'DE,NL,LU,FR', '\r', null, null);
INSERT INTO `countries` VALUES ('23', 'BZ', 'BLZ', '84', 'BH', 'Belize', 'Belmopan', '22966', '314522', 'NA', '.bz', 'BZD', 'Dollar', '501', '', '', 'en-BZ,es', '3582678', 'GT,MX', '\r', null, null);
INSERT INTO `countries` VALUES ('24', 'BJ', 'BEN', '204', 'BN', 'Benin', 'Porto-Novo', '112620', '9056010', 'AF', '.bj', 'XOF', 'Franc', '229', '', '', 'fr-BJ', '2395170', 'NE,TG,BF,NG', '\r', null, null);
INSERT INTO `countries` VALUES ('25', 'BM', 'BMU', '60', 'BD', 'Bermuda', 'Hamilton', '53', '65365', 'NA', '.bm', 'BMD', 'Dollar', '+1-441', '@@ ##', '^([A-Z]{2}d{2})$', 'en-BM,pt', '3573345', '', '\r', null, null);
INSERT INTO `countries` VALUES ('26', 'BT', 'BTN', '64', 'BT', 'Bhutan', 'Thimphu', '47000', '699847', 'AS', '.bt', 'BTN', 'Ngultrum', '975', '', '', 'dz', '1252634', 'CN,IN', '\r', null, null);
INSERT INTO `countries` VALUES ('27', 'BO', 'BOL', '68', 'BL', 'Bolivia', 'Sucre', '1098580', '9947418', 'SA', '.bo', 'BOB', 'Boliviano', '591', '', '', 'es-BO,qu,ay', '3923057', 'PE,CL,PY,BR,AR', '\r', null, null);
INSERT INTO `countries` VALUES ('28', 'BQ', 'BES', '535', '', 'Bonaire, Saint Eustatius and Saba ', '', '0', '18012', 'NA', '.bq', 'USD', 'Dollar', '599', '', '', 'nl,pap,en', '7626844', '', '\r', null, null);
INSERT INTO `countries` VALUES ('29', 'BA', 'BIH', '70', 'BK', 'Bosnia and Herzegovina', 'Sarajevo', '51129', '4590000', 'EU', '.ba', 'BAM', 'Marka', '387', '#####', '^(d{5})$', 'bs,hr-BA,sr-BA', '3277605', 'CS,HR,ME,RS', '\r', null, null);
INSERT INTO `countries` VALUES ('30', 'BW', 'BWA', '72', 'BC', 'Botswana', 'Gaborone', '600370', '2029307', 'AF', '.bw', 'BWP', 'Pula', '267', '', '', 'en-BW,tn-BW', '933860', 'ZW,ZA,NA', '\r', null, null);
INSERT INTO `countries` VALUES ('31', 'BV', 'BVT', '74', 'BV', 'Bouvet Island', '', '0', '0', 'AN', '.bv', 'NOK', 'Krone', '', '', '', '', '3371123', '', '\r', null, null);
INSERT INTO `countries` VALUES ('32', 'BR', 'BRA', '76', 'BR', 'Brazil', 'Brasilia', '8511965', '201103330', 'SA', '.br', 'BRL', 'Real', '55', '#####-###', '^(d{8})$', 'pt-BR,es,en,fr', '3469034', 'SR,PE,BO,UY,GY,PY,GF', '\r', null, null);
INSERT INTO `countries` VALUES ('33', 'IO', 'IOT', '86', 'IO', 'British Indian Ocean Territory', 'Diego Garcia', '60', '4000', 'AS', '.io', 'USD', 'Dollar', '246', '', '', 'en-IO', '1282588', '', '\r', null, null);
INSERT INTO `countries` VALUES ('34', 'VG', 'VGB', '92', 'VI', 'British Virgin Islands', 'Road Town', '153', '21730', 'NA', '.vg', 'USD', 'Dollar', '+1-284', '', '', 'en-VG', '3577718', '', '\r', null, null);
INSERT INTO `countries` VALUES ('35', 'BN', 'BRN', '96', 'BX', 'Brunei', 'Bandar Seri Begawan', '5770', '395027', 'AS', '.bn', 'BND', 'Dollar', '673', '@@####', '^([A-Z]{2}d{4})$', 'ms-BN,en-BN', '1820814', 'MY', '\r', null, null);
INSERT INTO `countries` VALUES ('36', 'BG', 'BGR', '100', 'BU', 'Bulgaria', 'Sofia', '110910', '7148785', 'EU', '.bg', 'BGN', 'Lev', '359', '####', '^(d{4})$', 'bg,tr-BG', '732800', 'MK,GR,RO,CS,TR,RS', '\r', null, null);
INSERT INTO `countries` VALUES ('37', 'BF', 'BFA', '854', 'UV', 'Burkina Faso', 'Ouagadougou', '274200', '16241811', 'AF', '.bf', 'XOF', 'Franc', '226', '', '', 'fr-BF', '2361809', 'NE,BJ,GH,CI,TG,ML', '\r', null, null);
INSERT INTO `countries` VALUES ('38', 'BI', 'BDI', '108', 'BY', 'Burundi', 'Bujumbura', '27830', '9863117', 'AF', '.bi', 'BIF', 'Franc', '257', '', '', 'fr-BI,rn', '433561', 'TZ,CD,RW', '\r', null, null);
INSERT INTO `countries` VALUES ('39', 'KH', 'KHM', '116', 'CB', 'Cambodia', 'Phnom Penh', '181040', '14453680', 'AS', '.kh', 'KHR', 'Riels', '855', '#####', '^(d{5})$', 'km,fr,en', '1831722', 'LA,TH,VN', '\r', null, null);
INSERT INTO `countries` VALUES ('40', 'CM', 'CMR', '120', 'CM', 'Cameroon', 'Yaounde', '475440', '19294149', 'AF', '.cm', 'XAF', 'Franc', '237', '', '', 'en-CM,fr-CM', '2233387', 'TD,CF,GA,GQ,CG,NG', '\r', null, null);
INSERT INTO `countries` VALUES ('41', 'CA', 'CAN', '124', 'CA', 'Canada', 'Ottawa', '9984670', '33679000', 'NA', '.ca', 'CAD', 'Dollar', '1', '@#@ #@#', '^([a-zA-Z]d[a-zA-Z]d', 'en-CA,fr-CA,iu', '6251999', 'US', '\r', null, null);
INSERT INTO `countries` VALUES ('42', 'CV', 'CPV', '132', 'CV', 'Cape Verde', 'Praia', '4033', '508659', 'AF', '.cv', 'CVE', 'Escudo', '238', '####', '^(d{4})$', 'pt-CV', '3374766', '', '\r', null, null);
INSERT INTO `countries` VALUES ('43', 'KY', 'CYM', '136', 'CJ', 'Cayman Islands', 'George Town', '262', '44270', 'NA', '.ky', 'KYD', 'Dollar', '+1-345', '', '', 'en-KY', '3580718', '', '\r', null, null);
INSERT INTO `countries` VALUES ('44', 'CF', 'CAF', '140', 'CT', 'Central African Republic', 'Bangui', '622984', '4844927', 'AF', '.cf', 'XAF', 'Franc', '236', '', '', 'fr-CF,sg,ln,kg', '239880', 'TD,SD,CD,SS,CM,CG', '\r', null, null);
INSERT INTO `countries` VALUES ('45', 'TD', 'TCD', '148', 'CD', 'Chad', 'N\'Djamena', '1284000', '10543464', 'AF', '.td', 'XAF', 'Franc', '235', '', '', 'fr-TD,ar-TD,sre', '2434508', 'NE,LY,CF,SD,CM,NG', '\r', null, null);
INSERT INTO `countries` VALUES ('46', 'CL', 'CHL', '152', 'CI', 'Chile', 'Santiago', '756950', '16746491', 'SA', '.cl', 'CLP', 'Peso', '56', '#######', '^(d{7})$', 'es-CL', '3895114', 'PE,BO,AR', '\r', null, null);
INSERT INTO `countries` VALUES ('47', 'CN', 'CHN', '156', 'CH', 'China', 'Beijing', '9596960', '1330044000', 'AS', '.cn', 'CNY', 'Yuan Renminbi', '86', '######', '^(d{6})$', 'zh-CN,yue,wuu,dta,ug,za', '1814991', 'LA,BT,TJ,KZ,MN,AF,NP', '\r', null, null);
INSERT INTO `countries` VALUES ('48', 'CX', 'CXR', '162', 'KT', 'Christmas Island', 'Flying Fish Cove', '135', '1500', 'AS', '.cx', 'AUD', 'Dollar', '61', '####', '^(d{4})$', 'en,zh,ms-CC', '2078138', '', '\r', null, null);
INSERT INTO `countries` VALUES ('49', 'CC', 'CCK', '166', 'CK', 'Cocos Islands', 'West Island', '14', '628', 'AS', '.cc', 'AUD', 'Dollar', '61', '', '', 'ms-CC,en', '1547376', '', '\r', null, null);
INSERT INTO `countries` VALUES ('50', 'CO', 'COL', '170', 'CO', 'Colombia', 'Bogota', '1138910', '44205293', 'SA', '.co', 'COP', 'Peso', '57', '', '', 'es-CO', '3686110', 'EC,PE,PA,BR,VE', '\r', null, null);
INSERT INTO `countries` VALUES ('51', 'KM', 'COM', '174', 'CN', 'Comoros', 'Moroni', '2170', '773407', 'AF', '.km', 'KMF', 'Franc', '269', '', '', 'ar,fr-KM', '921929', '', '\r', null, null);
INSERT INTO `countries` VALUES ('52', 'CK', 'COK', '184', 'CW', 'Cook Islands', 'Avarua', '240', '21388', 'OC', '.ck', 'NZD', 'Dollar', '682', '', '', 'en-CK,mi', '1899402', '', '\r', null, null);
INSERT INTO `countries` VALUES ('53', 'CR', 'CRI', '188', 'CS', 'Costa Rica', 'San Jose', '51100', '4516220', 'NA', '.cr', 'CRC', 'Colon', '506', '####', '^(d{4})$', 'es-CR,en', '3624060', 'PA,NI', '\r', null, null);
INSERT INTO `countries` VALUES ('54', 'HR', 'HRV', '191', 'HR', 'Croatia', 'Zagreb', '56542', '4491000', 'EU', '.hr', 'HRK', 'Kuna', '385', 'HR-#####', '^(?:HR)*(d{5})$', 'hr-HR,sr', '3202326', 'HU,SI,CS,BA,ME,RS', '\r', null, null);
INSERT INTO `countries` VALUES ('55', 'CU', 'CUB', '192', 'CU', 'Cuba', 'Havana', '110860', '11423000', 'NA', '.cu', 'CUP', 'Peso', '53', 'CP #####', '^(?:CP)*(d{5})$', 'es-CU', '3562981', 'US', '\r', null, null);
INSERT INTO `countries` VALUES ('56', 'CW', 'CUW', '531', 'UC', 'Curacao', ' Willemstad', '0', '141766', 'NA', '.cw', 'ANG', 'Guilder', '599', '', '', 'nl,pap', '7626836', '', '\r', null, null);
INSERT INTO `countries` VALUES ('57', 'CY', 'CYP', '196', 'CY', 'Cyprus', 'Nicosia', '9250', '1102677', 'EU', '.cy', 'EUR', 'Euro', '357', '####', '^(d{4})$', 'el-CY,tr-CY,en', '146669', '', '\r', null, null);
INSERT INTO `countries` VALUES ('58', 'CZ', 'CZE', '203', 'EZ', 'Czech Republic', 'Prague', '78866', '10476000', 'EU', '.cz', 'CZK', 'Koruna', '420', '### ##', '^(d{5})$', 'cs,sk', '3077311', 'PL,DE,SK,AT', '\r', null, null);
INSERT INTO `countries` VALUES ('59', 'CD', 'COD', '180', 'CG', 'Democratic Republic of the Congo', 'Kinshasa', '2345410', '70916439', 'AF', '.cd', 'CDF', 'Franc', '243', '', '', 'fr-CD,ln,kg', '203312', 'TZ,CF,SS,RW,ZM,BI,UG', '\r', null, null);
INSERT INTO `countries` VALUES ('60', 'DK', 'DNK', '208', 'DA', 'Denmark', 'Copenhagen', '43094', '5484000', 'EU', '.dk', 'DKK', 'Krone', '45', '####', '^(d{4})$', 'da-DK,en,fo,de-DK', '2623032', 'DE', '\r', null, null);
INSERT INTO `countries` VALUES ('61', 'DJ', 'DJI', '262', 'DJ', 'Djibouti', 'Djibouti', '23000', '740528', 'AF', '.dj', 'DJF', 'Franc', '253', '', '', 'fr-DJ,ar,so-DJ,aa', '223816', 'ER,ET,SO', '\r', null, null);
INSERT INTO `countries` VALUES ('62', 'DM', 'DMA', '212', 'DO', 'Dominica', 'Roseau', '754', '72813', 'NA', '.dm', 'XCD', 'Dollar', '+1-767', '', '', 'en-DM', '3575830', '', '\r', null, null);
INSERT INTO `countries` VALUES ('63', 'DO', 'DOM', '214', 'DR', 'Dominican Republic', 'Santo Domingo', '48730', '9823821', 'NA', '.do', 'DOP', 'Peso', '+1-809 and', '#####', '^(d{5})$', 'es-DO', '3508796', 'HT', '\r', null, null);
INSERT INTO `countries` VALUES ('64', 'TL', 'TLS', '626', 'TT', 'East Timor', 'Dili', '15007', '1154625', 'OC', '.tl', 'USD', 'Dollar', '670', '', '', 'tet,pt-TL,id,en', '1966436', 'ID', '\r', null, null);
INSERT INTO `countries` VALUES ('65', 'EC', 'ECU', '218', 'EC', 'Ecuador', 'Quito', '283560', '14790608', 'SA', '.ec', 'USD', 'Dollar', '593', '@####@', '^([a-zA-Z]d{4}[a-zA-', 'es-EC', '3658394', 'PE,CO', '\r', null, null);
INSERT INTO `countries` VALUES ('66', 'EG', 'EGY', '818', 'EG', 'Egypt', 'Cairo', '1001450', '80471869', 'AF', '.eg', 'EGP', 'Pound', '20', '#####', '^(d{5})$', 'ar-EG,en,fr', '357994', 'LY,SD,IL', '\r', null, null);
INSERT INTO `countries` VALUES ('67', 'SV', 'SLV', '222', 'ES', 'El Salvador', 'San Salvador', '21040', '6052064', 'NA', '.sv', 'USD', 'Dollar', '503', 'CP ####', '^(?:CP)*(d{4})$', 'es-SV', '3585968', 'GT,HN', '\r', null, null);
INSERT INTO `countries` VALUES ('68', 'GQ', 'GNQ', '226', 'EK', 'Equatorial Guinea', 'Malabo', '28051', '1014999', 'AF', '.gq', 'XAF', 'Franc', '240', '', '', 'es-GQ,fr', '2309096', 'GA,CM', '\r', null, null);
INSERT INTO `countries` VALUES ('69', 'ER', 'ERI', '232', 'ER', 'Eritrea', 'Asmara', '121320', '5792984', 'AF', '.er', 'ERN', 'Nakfa', '291', '', '', 'aa-ER,ar,tig,kun,ti-ER', '338010', 'ET,SD,DJ', '\r', null, null);
INSERT INTO `countries` VALUES ('70', 'EE', 'EST', '233', 'EN', 'Estonia', 'Tallinn', '45226', '1291170', 'EU', '.ee', 'EUR', 'Euro', '372', '#####', '^(d{5})$', 'et,ru', '453733', 'RU,LV', '\r', null, null);
INSERT INTO `countries` VALUES ('71', 'ET', 'ETH', '231', 'ET', 'Ethiopia', 'Addis Ababa', '1127127', '88013491', 'AF', '.et', 'ETB', 'Birr', '251', '####', '^(d{4})$', 'am,en-ET,om-ET,ti-ET,so-ET,sid', '337996', 'ER,KE,SD,SS,SO,DJ', '\r', null, null);
INSERT INTO `countries` VALUES ('72', 'FK', 'FLK', '238', 'FK', 'Falkland Islands', 'Stanley', '12173', '2638', 'SA', '.fk', 'FKP', 'Pound', '500', '', '', 'en-FK', '3474414', '', '\r', null, null);
INSERT INTO `countries` VALUES ('73', 'FO', 'FRO', '234', 'FO', 'Faroe Islands', 'Torshavn', '1399', '48228', 'EU', '.fo', 'DKK', 'Krone', '298', 'FO-###', '^(?:FO)*(d{3})$', 'fo,da-FO', '2622320', '', '\r', null, null);
INSERT INTO `countries` VALUES ('74', 'FJ', 'FJI', '242', 'FJ', 'Fiji', 'Suva', '18270', '875983', 'OC', '.fj', 'FJD', 'Dollar', '679', '', '', 'en-FJ,fj', '2205218', '', '\r', null, null);
INSERT INTO `countries` VALUES ('75', 'FI', 'FIN', '246', 'FI', 'Finland', 'Helsinki', '337030', '5244000', 'EU', '.fi', 'EUR', 'Euro', '358', '#####', '^(?:FI)*(d{5})$', 'fi-FI,sv-FI,smn', '660013', 'NO,RU,SE', '\r', null, null);
INSERT INTO `countries` VALUES ('76', 'FR', 'FRA', '250', 'FR', 'France', 'Paris', '547030', '64768389', 'EU', '.fr', 'EUR', 'Euro', '33', '#####', '^(d{5})$', 'fr-FR,frp,br,co,ca,eu,oc', '3017382', 'CH,DE,BE,LU,IT,AD,MC', '\r', null, null);
INSERT INTO `countries` VALUES ('77', 'GF', 'GUF', '254', 'FG', 'French Guiana', 'Cayenne', '91000', '195506', 'SA', '.gf', 'EUR', 'Euro', '594', '#####', '^((97)|(98)3d{2})$', 'fr-GF', '3381670', 'SR,BR', '\r', null, null);
INSERT INTO `countries` VALUES ('78', 'PF', 'PYF', '258', 'FP', 'French Polynesia', 'Papeete', '4167', '270485', 'OC', '.pf', 'XPF', 'Franc', '689', '#####', '^((97)|(98)7d{2})$', 'fr-PF,ty', '4030656', '', '\r', null, null);
INSERT INTO `countries` VALUES ('79', 'TF', 'ATF', '260', 'FS', 'French Southern Territories', 'Port-aux-Francais', '7829', '140', 'AN', '.tf', 'EUR', 'Euro', '', '', '', 'fr', '1546748', '', '\r', null, null);
INSERT INTO `countries` VALUES ('80', 'GA', 'GAB', '266', 'GB', 'Gabon', 'Libreville', '267667', '1545255', 'AF', '.ga', 'XAF', 'Franc', '241', '', '', 'fr-GA', '2400553', 'CM,GQ,CG', '\r', null, null);
INSERT INTO `countries` VALUES ('81', 'GM', 'GMB', '270', 'GA', 'Gambia', 'Banjul', '11300', '1593256', 'AF', '.gm', 'GMD', 'Dalasi', '220', '', '', 'en-GM,mnk,wof,wo,ff', '2413451', 'SN', '\r', null, null);
INSERT INTO `countries` VALUES ('82', 'GE', 'GEO', '268', 'GG', 'Georgia', 'Tbilisi', '69700', '4630000', 'AS', '.ge', 'GEL', 'Lari', '995', '####', '^(d{4})$', 'ka,ru,hy,az', '614540', 'AM,AZ,TR,RU', '\r', null, null);
INSERT INTO `countries` VALUES ('83', 'DE', 'DEU', '276', 'GM', 'Germany', 'Berlin', '357021', '81802257', 'EU', '.de', 'EUR', 'Euro', '49', '#####', '^(d{5})$', 'de', '2921044', 'CH,PL,NL,DK,BE,CZ,LU', '\r', null, null);
INSERT INTO `countries` VALUES ('84', 'GH', 'GHA', '288', 'GH', 'Ghana', 'Accra', '239460', '24339838', 'AF', '.gh', 'GHS', 'Cedi', '233', '', '', 'en-GH,ak,ee,tw', '2300660', 'CI,TG,BF', '\r', null, null);
INSERT INTO `countries` VALUES ('85', 'GI', 'GIB', '292', 'GI', 'Gibraltar', 'Gibraltar', '6.5', '27884', 'EU', '.gi', 'GIP', 'Pound', '350', '', '', 'en-GI,es,it,pt', '2411586', 'ES', '\r', null, null);
INSERT INTO `countries` VALUES ('86', 'GR', 'GRC', '300', 'GR', 'Greece', 'Athens', '131940', '11000000', 'EU', '.gr', 'EUR', 'Euro', '30', '### ##', '^(d{5})$', 'el-GR,en,fr', '390903', 'AL,MK,TR,BG', '\r', null, null);
INSERT INTO `countries` VALUES ('87', 'GL', 'GRL', '304', 'GL', 'Greenland', 'Nuuk', '2166086', '56375', 'NA', '.gl', 'DKK', 'Krone', '299', '####', '^(d{4})$', 'kl,da-GL,en', '3425505', '', '\r', null, null);
INSERT INTO `countries` VALUES ('88', 'GD', 'GRD', '308', 'GJ', 'Grenada', 'St. George\'s', '344', '107818', 'NA', '.gd', 'XCD', 'Dollar', '+1-473', '', '', 'en-GD', '3580239', '', '\r', null, null);
INSERT INTO `countries` VALUES ('89', 'GP', 'GLP', '312', 'GP', 'Guadeloupe', 'Basse-Terre', '1780', '443000', 'NA', '.gp', 'EUR', 'Euro', '590', '#####', '^((97)|(98)d{3})$', 'fr-GP', '3579143', 'AN', '\r', null, null);
INSERT INTO `countries` VALUES ('90', 'GU', 'GUM', '316', 'GQ', 'Guam', 'Hagatna', '549', '159358', 'OC', '.gu', 'USD', 'Dollar', '+1-671', '969##', '^(969d{2})$', 'en-GU,ch-GU', '4043988', '', '\r', null, null);
INSERT INTO `countries` VALUES ('91', 'GT', 'GTM', '320', 'GT', 'Guatemala', 'Guatemala City', '108890', '13550440', 'NA', '.gt', 'GTQ', 'Quetzal', '502', '#####', '^(d{5})$', 'es-GT', '3595528', 'MX,HN,BZ,SV', '\r', null, null);
INSERT INTO `countries` VALUES ('92', 'GG', 'GGY', '831', 'GK', 'Guernsey', 'St Peter Port', '78', '65228', 'EU', '.gg', 'GBP', 'Pound', '+44-1481', '@# #@@|@## #@@|@@# #', '^(([A-Z]d{2}[A-Z]{2}', 'en,fr', '3042362', '', '\r', null, null);
INSERT INTO `countries` VALUES ('93', 'GN', 'GIN', '324', 'GV', 'Guinea', 'Conakry', '245857', '10324025', 'AF', '.gn', 'GNF', 'Franc', '224', '', '', 'fr-GN', '2420477', 'LR,SN,SL,CI,GW,ML', '\r', null, null);
INSERT INTO `countries` VALUES ('94', 'GW', 'GNB', '624', 'PU', 'Guinea-Bissau', 'Bissau', '36120', '1565126', 'AF', '.gw', 'XOF', 'Franc', '245', '####', '^(d{4})$', 'pt-GW,pov', '2372248', 'SN,GN', '\r', null, null);
INSERT INTO `countries` VALUES ('95', 'GY', 'GUY', '328', 'GY', 'Guyana', 'Georgetown', '214970', '748486', 'SA', '.gy', 'GYD', 'Dollar', '592', '', '', 'en-GY', '3378535', 'SR,BR,VE', '\r', null, null);
INSERT INTO `countries` VALUES ('96', 'HT', 'HTI', '332', 'HA', 'Haiti', 'Port-au-Prince', '27750', '9648924', 'NA', '.ht', 'HTG', 'Gourde', '509', 'HT####', '^(?:HT)*(d{4})$', 'ht,fr-HT', '3723988', 'DO', '\r', null, null);
INSERT INTO `countries` VALUES ('97', 'HM', 'HMD', '334', 'HM', 'Heard Island and McDonald Islands', '', '412', '0', 'AN', '.hm', 'AUD', 'Dollar', '', '', '', '', '1547314', '', '\r', null, null);
INSERT INTO `countries` VALUES ('98', 'HN', 'HND', '340', 'HO', 'Honduras', 'Tegucigalpa', '112090', '7989415', 'NA', '.hn', 'HNL', 'Lempira', '504', '@@####', '^([A-Z]{2}d{4})$', 'es-HN', '3608932', 'GT,NI,SV', '\r', null, null);
INSERT INTO `countries` VALUES ('99', 'HK', 'HKG', '344', 'HK', 'Hong Kong', 'Hong Kong', '1092', '6898686', 'AS', '.hk', 'HKD', 'Dollar', '852', '', '', 'zh-HK,yue,zh,en', '1819730', '', '\r', null, null);
INSERT INTO `countries` VALUES ('100', 'HU', 'HUN', '348', 'HU', 'Hungary', 'Budapest', '93030', '9930000', 'EU', '.hu', 'HUF', 'Forint', '36', '####', '^(d{4})$', 'hu-HU', '719819', 'SK,SI,RO,UA,CS,HR,AT', '\r', null, null);
INSERT INTO `countries` VALUES ('101', 'IS', 'ISL', '352', 'IC', 'Iceland', 'Reykjavik', '103000', '308910', 'EU', '.is', 'ISK', 'Krona', '354', '###', '^(d{3})$', 'is,en,de,da,sv,no', '2629691', '', '\r', null, null);
INSERT INTO `countries` VALUES ('102', 'IN', 'IND', '356', 'IN', 'India', 'New Delhi', '3287590', '1173108018', 'AS', '.in', 'INR', 'Rupee', '91', '######', '^(d{6})$', 'en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,ks,ne,sd,kok,doi,mni,sit,sa,fr,lus,inc', '1269750', 'CN,NP,MM,BT,PK,BD', '\r', null, null);
INSERT INTO `countries` VALUES ('103', 'ID', 'IDN', '360', 'ID', 'Indonesia', 'Jakarta', '1919440', '242968342', 'AS', '.id', 'IDR', 'Rupiah', '62', '#####', '^(d{5})$', 'id,en,nl,jv', '1643084', 'PG,TL,MY', '\r', null, null);
INSERT INTO `countries` VALUES ('104', 'IR', 'IRN', '364', 'IR', 'Iran', 'Tehran', '1648000', '76923300', 'AS', '.ir', 'IRR', 'Rial', '98', '##########', '^(d{10})$', 'fa-IR,ku', '130758', 'TM,AF,IQ,AM,PK,AZ,TR', '\r', null, null);
INSERT INTO `countries` VALUES ('105', 'IQ', 'IRQ', '368', 'IZ', 'Iraq', 'Baghdad', '437072', '29671605', 'AS', '.iq', 'IQD', 'Dinar', '964', '#####', '^(d{5})$', 'ar-IQ,ku,hy', '99237', 'SY,SA,IR,JO,TR,KW', '\r', null, null);
INSERT INTO `countries` VALUES ('106', 'IE', 'IRL', '372', 'EI', 'Ireland', 'Dublin', '70280', '4622917', 'EU', '.ie', 'EUR', 'Euro', '353', '', '', 'en-IE,ga-IE', '2963597', 'GB', '\r', null, null);
INSERT INTO `countries` VALUES ('107', 'IM', 'IMN', '833', 'IM', 'Isle of Man', 'Douglas, Isle of Man', '572', '75049', 'EU', '.im', 'GBP', 'Pound', '+44-1624', '@# #@@|@## #@@|@@# #', '^(([A-Z]d{2}[A-Z]{2}', 'en,gv', '3042225', '', '\r', null, null);
INSERT INTO `countries` VALUES ('108', 'IL', 'ISR', '376', 'IS', 'Israel', 'Jerusalem', '20770', '7353985', 'AS', '.il', 'ILS', 'Shekel', '972', '#####', '^(d{5})$', 'he,ar-IL,en-IL,', '294640', 'SY,JO,LB,EG,PS', '\r', null, null);
INSERT INTO `countries` VALUES ('109', 'IT', 'ITA', '380', 'IT', 'Italy', 'Rome', '301230', '60340328', 'EU', '.it', 'EUR', 'Euro', '39', '#####', '^(d{5})$', 'it-IT,de-IT,fr-IT,sc,ca,co,sl', '3175395', 'CH,VA,SI,SM,FR,AT', '\r', null, null);
INSERT INTO `countries` VALUES ('110', 'CI', 'CIV', '384', 'IV', 'Ivory Coast', 'Yamoussoukro', '322460', '21058798', 'AF', '.ci', 'XOF', 'Franc', '225', '', '', 'fr-CI', '2287781', 'LR,GH,GN,BF,ML', '\r', null, null);
INSERT INTO `countries` VALUES ('111', 'JM', 'JAM', '388', 'JM', 'Jamaica', 'Kingston', '10991', '2847232', 'NA', '.jm', 'JMD', 'Dollar', '+1-876', '', '', 'en-JM', '3489940', '', '\r', null, null);
INSERT INTO `countries` VALUES ('112', 'JP', 'JPN', '392', 'JA', 'Japan', 'Tokyo', '377835', '127288000', 'AS', '.jp', 'JPY', 'Yen', '81', '###-####', '^(d{7})$', 'ja', '1861060', '', '\r', null, null);
INSERT INTO `countries` VALUES ('113', 'JE', 'JEY', '832', 'JE', 'Jersey', 'Saint Helier', '116', '90812', 'EU', '.je', 'GBP', 'Pound', '+44-1534', '@# #@@|@## #@@|@@# #', '^(([A-Z]d{2}[A-Z]{2}', 'en,pt', '3042142', '', '\r', null, null);
INSERT INTO `countries` VALUES ('114', 'JO', 'JOR', '400', 'JO', 'Jordan', 'Amman', '92300', '6407085', 'AS', '.jo', 'JOD', 'Dinar', '962', '#####', '^(d{5})$', 'ar-JO,en', '248816', 'SY,SA,IQ,IL,PS', '\r', null, null);
INSERT INTO `countries` VALUES ('115', 'KZ', 'KAZ', '398', 'KZ', 'Kazakhstan', 'Astana', '2717300', '15340000', 'AS', '.kz', 'KZT', 'Tenge', '7', '######', '^(d{6})$', 'kk,ru', '1522867', 'TM,CN,KG,UZ,RU', '\r', null, null);
INSERT INTO `countries` VALUES ('116', 'KE', 'KEN', '404', 'KE', 'Kenya', 'Nairobi', '582650', '40046566', 'AF', '.ke', 'KES', 'Shilling', '254', '#####', '^(d{5})$', 'en-KE,sw-KE', '192950', 'ET,TZ,SS,SO,UG', '\r', null, null);
INSERT INTO `countries` VALUES ('117', 'KI', 'KIR', '296', 'KR', 'Kiribati', 'Tarawa', '811', '92533', 'OC', '.ki', 'AUD', 'Dollar', '686', '', '', 'en-KI,gil', '4030945', '', '\r', null, null);
INSERT INTO `countries` VALUES ('118', 'XK', 'XKX', '0', 'KV', 'Kosovo', 'Pristina', '0', '1800000', 'EU', '', 'EUR', 'Euro', '', '', '', 'sq,sr', '831053', 'RS,AL,MK,ME', '\r', null, null);
INSERT INTO `countries` VALUES ('119', 'KW', 'KWT', '414', 'KU', 'Kuwait', 'Kuwait City', '17820', '2789132', 'AS', '.kw', 'KWD', 'Dinar', '965', '#####', '^(d{5})$', 'ar-KW,en', '285570', 'SA,IQ', '\r', null, null);
INSERT INTO `countries` VALUES ('120', 'KG', 'KGZ', '417', 'KG', 'Kyrgyzstan', 'Bishkek', '198500', '5508626', 'AS', '.kg', 'KGS', 'Som', '996', '######', '^(d{6})$', 'ky,uz,ru', '1527747', 'CN,TJ,UZ,KZ', '\r', null, null);
INSERT INTO `countries` VALUES ('121', 'LA', 'LAO', '418', 'LA', 'Laos', 'Vientiane', '236800', '6368162', 'AS', '.la', 'LAK', 'Kip', '856', '#####', '^(d{5})$', 'lo,fr,en', '1655842', 'CN,MM,KH,TH,VN', '\r', null, null);
INSERT INTO `countries` VALUES ('122', 'LV', 'LVA', '428', 'LG', 'Latvia', 'Riga', '64589', '2217969', 'EU', '.lv', 'LVL', 'Lat', '371', 'LV-####', '^(?:LV)*(d{4})$', 'lv,ru,lt', '458258', 'LT,EE,BY,RU', '\r', null, null);
INSERT INTO `countries` VALUES ('123', 'LB', 'LBN', '422', 'LE', 'Lebanon', 'Beirut', '10400', '4125247', 'AS', '.lb', 'LBP', 'Pound', '961', '#### ####|####', '^(d{4}(d{4})?)$', 'ar-LB,fr-LB,en,hy', '272103', 'SY,IL', '\r', null, null);
INSERT INTO `countries` VALUES ('124', 'LS', 'LSO', '426', 'LT', 'Lesotho', 'Maseru', '30355', '1919552', 'AF', '.ls', 'LSL', 'Loti', '266', '###', '^(d{3})$', 'en-LS,st,zu,xh', '932692', 'ZA', '\r', null, null);
INSERT INTO `countries` VALUES ('125', 'LR', 'LBR', '430', 'LI', 'Liberia', 'Monrovia', '111370', '3685076', 'AF', '.lr', 'LRD', 'Dollar', '231', '####', '^(d{4})$', 'en-LR', '2275384', 'SL,CI,GN', '\r', null, null);
INSERT INTO `countries` VALUES ('126', 'LY', 'LBY', '434', 'LY', 'Libya', 'Tripolis', '1759540', '6461454', 'AF', '.ly', 'LYD', 'Dinar', '218', '', '', 'ar-LY,it,en', '2215636', 'TD,NE,DZ,SD,TN,EG', '\r', null, null);
INSERT INTO `countries` VALUES ('127', 'LI', 'LIE', '438', 'LS', 'Liechtenstein', 'Vaduz', '160', '35000', 'EU', '.li', 'CHF', 'Franc', '423', '####', '^(d{4})$', 'de-LI', '3042058', 'CH,AT', '\r', null, null);
INSERT INTO `countries` VALUES ('128', 'LT', 'LTU', '440', 'LH', 'Lithuania', 'Vilnius', '65200', '3565000', 'EU', '.lt', 'LTL', 'Litas', '370', 'LT-#####', '^(?:LT)*(d{5})$', 'lt,ru,pl', '597427', 'PL,BY,RU,LV', '\r', null, null);
INSERT INTO `countries` VALUES ('129', 'LU', 'LUX', '442', 'LU', 'Luxembourg', 'Luxembourg', '2586', '497538', 'EU', '.lu', 'EUR', 'Euro', '352', '####', '^(d{4})$', 'lb,de-LU,fr-LU', '2960313', 'DE,BE,FR', '\r', null, null);
INSERT INTO `countries` VALUES ('130', 'MO', 'MAC', '446', 'MC', 'Macao', 'Macao', '254', '449198', 'AS', '.mo', 'MOP', 'Pataca', '853', '', '', 'zh,zh-MO,pt', '1821275', '', '\r', null, null);
INSERT INTO `countries` VALUES ('131', 'MK', 'MKD', '807', 'MK', 'Macedonia', 'Skopje', '25333', '2061000', 'EU', '.mk', 'MKD', 'Denar', '389', '####', '^(d{4})$', 'mk,sq,tr,rmm,sr', '718075', 'AL,GR,CS,BG,RS,XK', '\r', null, null);
INSERT INTO `countries` VALUES ('132', 'MG', 'MDG', '450', 'MA', 'Madagascar', 'Antananarivo', '587040', '21281844', 'AF', '.mg', 'MGA', 'Ariary', '261', '###', '^(d{3})$', 'fr-MG,mg', '1062947', '', '\r', null, null);
INSERT INTO `countries` VALUES ('133', 'MW', 'MWI', '454', 'MI', 'Malawi', 'Lilongwe', '118480', '15447500', 'AF', '.mw', 'MWK', 'Kwacha', '265', '', '', 'ny,yao,tum,swk', '927384', 'TZ,MZ,ZM', '\r', null, null);
INSERT INTO `countries` VALUES ('134', 'MY', 'MYS', '458', 'MY', 'Malaysia', 'Kuala Lumpur', '329750', '28274729', 'AS', '.my', 'MYR', 'Ringgit', '60', '#####', '^(d{5})$', 'ms-MY,en,zh,ta,te,ml,pa,th', '1733045', 'BN,TH,ID', '\r', null, null);
INSERT INTO `countries` VALUES ('135', 'MV', 'MDV', '462', 'MV', 'Maldives', 'Male', '300', '395650', 'AS', '.mv', 'MVR', 'Rufiyaa', '960', '#####', '^(d{5})$', 'dv,en', '1282028', '', '\r', null, null);
INSERT INTO `countries` VALUES ('136', 'ML', 'MLI', '466', 'ML', 'Mali', 'Bamako', '1240000', '13796354', 'AF', '.ml', 'XOF', 'Franc', '223', '', '', 'fr-ML,bm', '2453866', 'SN,NE,DZ,CI,GN,MR,BF', '\r', null, null);
INSERT INTO `countries` VALUES ('137', 'MT', 'MLT', '470', 'MT', 'Malta', 'Valletta', '316', '403000', 'EU', '.mt', 'EUR', 'Euro', '356', '@@@ ###|@@@ ##', '^([A-Z]{3}d{2}d?)$', 'mt,en-MT', '2562770', '', '\r', null, null);
INSERT INTO `countries` VALUES ('138', 'MH', 'MHL', '584', 'RM', 'Marshall Islands', 'Majuro', '181.3', '65859', 'OC', '.mh', 'USD', 'Dollar', '692', '', '', 'mh,en-MH', '2080185', '', '\r', null, null);
INSERT INTO `countries` VALUES ('139', 'MQ', 'MTQ', '474', 'MB', 'Martinique', 'Fort-de-France', '1100', '432900', 'NA', '.mq', 'EUR', 'Euro', '596', '#####', '^(d{5})$', 'fr-MQ', '3570311', '', '\r', null, null);
INSERT INTO `countries` VALUES ('140', 'MR', 'MRT', '478', 'MR', 'Mauritania', 'Nouakchott', '1030700', '3205060', 'AF', '.mr', 'MRO', 'Ouguiya', '222', '', '', 'ar-MR,fuc,snk,fr,mey,wo', '2378080', 'SN,DZ,EH,ML', '\r', null, null);
INSERT INTO `countries` VALUES ('141', 'MU', 'MUS', '480', 'MP', 'Mauritius', 'Port Louis', '2040', '1294104', 'AF', '.mu', 'MUR', 'Rupee', '230', '', '', 'en-MU,bho,fr', '934292', '', '\r', null, null);
INSERT INTO `countries` VALUES ('142', 'YT', 'MYT', '175', 'MF', 'Mayotte', 'Mamoudzou', '374', '159042', 'AF', '.yt', 'EUR', 'Euro', '262', '#####', '^(d{5})$', 'fr-YT', '1024031', '', '\r', null, null);
INSERT INTO `countries` VALUES ('143', 'MX', 'MEX', '484', 'MX', 'Mexico', 'Mexico City', '1972550', '112468855', 'NA', '.mx', 'MXN', 'Peso', '52', '#####', '^(d{5})$', 'es-MX', '3996063', 'GT,US,BZ', '\r', null, null);
INSERT INTO `countries` VALUES ('144', 'FM', 'FSM', '583', 'FM', 'Micronesia', 'Palikir', '702', '107708', 'OC', '.fm', 'USD', 'Dollar', '691', '#####', '^(d{5})$', 'en-FM,chk,pon,yap,kos,uli,woe,nkr,kpg', '2081918', '', '\r', null, null);
INSERT INTO `countries` VALUES ('145', 'MD', 'MDA', '498', 'MD', 'Moldova', 'Chisinau', '33843', '4324000', 'EU', '.md', 'MDL', 'Leu', '373', 'MD-####', '^(?:MD)*(d{4})$', 'ro,ru,gag,tr', '617790', 'RO,UA', '\r', null, null);
INSERT INTO `countries` VALUES ('146', 'MC', 'MCO', '492', 'MN', 'Monaco', 'Monaco', '1.95', '32965', 'EU', '.mc', 'EUR', 'Euro', '377', '#####', '^(d{5})$', 'fr-MC,en,it', '2993457', 'FR', '\r', null, null);
INSERT INTO `countries` VALUES ('147', 'MN', 'MNG', '496', 'MG', 'Mongolia', 'Ulan Bator', '1565000', '3086918', 'AS', '.mn', 'MNT', 'Tugrik', '976', '######', '^(d{6})$', 'mn,ru', '2029969', 'CN,RU', '\r', null, null);
INSERT INTO `countries` VALUES ('148', 'ME', 'MNE', '499', 'MJ', 'Montenegro', 'Podgorica', '14026', '666730', 'EU', '.me', 'EUR', 'Euro', '382', '#####', '^(d{5})$', 'sr,hu,bs,sq,hr,rom', '3194884', 'AL,HR,BA,RS,XK', '\r', null, null);
INSERT INTO `countries` VALUES ('149', 'MS', 'MSR', '500', 'MH', 'Montserrat', 'Plymouth', '102', '9341', 'NA', '.ms', 'XCD', 'Dollar', '+1-664', '', '', 'en-MS', '3578097', '', '\r', null, null);
INSERT INTO `countries` VALUES ('150', 'MA', 'MAR', '504', 'MO', 'Morocco', 'Rabat', '446550', '31627428', 'AF', '.ma', 'MAD', 'Dirham', '212', '#####', '^(d{5})$', 'ar-MA,fr', '2542007', 'DZ,EH,ES', '\r', null, null);
INSERT INTO `countries` VALUES ('151', 'MZ', 'MOZ', '508', 'MZ', 'Mozambique', 'Maputo', '801590', '22061451', 'AF', '.mz', 'MZN', 'Metical', '258', '####', '^(d{4})$', 'pt-MZ,vmw', '1036973', 'ZW,TZ,SZ,ZA,ZM,MW', '\r', null, null);
INSERT INTO `countries` VALUES ('152', 'MM', 'MMR', '104', 'BM', 'Myanmar', 'Nay Pyi Taw', '678500', '53414374', 'AS', '.mm', 'MMK', 'Kyat', '95', '#####', '^(d{5})$', 'my', '1327865', 'CN,LA,TH,BD,IN', '\r', null, null);
INSERT INTO `countries` VALUES ('153', 'NA', 'NAM', '516', 'WA', 'Namibia', 'Windhoek', '825418', '2128471', 'AF', '.na', 'NAD', 'Dollar', '264', '', '', 'en-NA,af,de,hz,naq', '3355338', 'ZA,BW,ZM,AO', '\r', null, null);
INSERT INTO `countries` VALUES ('154', 'NR', 'NRU', '520', 'NR', 'Nauru', 'Yaren', '21', '10065', 'OC', '.nr', 'AUD', 'Dollar', '674', '', '', 'na,en-NR', '2110425', '', '\r', null, null);
INSERT INTO `countries` VALUES ('155', 'NP', 'NPL', '524', 'NP', 'Nepal', 'Kathmandu', '140800', '28951852', 'AS', '.np', 'NPR', 'Rupee', '977', '#####', '^(d{5})$', 'ne,en', '1282988', 'CN,IN', '\r', null, null);
INSERT INTO `countries` VALUES ('156', 'NL', 'NLD', '528', 'NL', 'Netherlands', 'Amsterdam', '41526', '16645000', 'EU', '.nl', 'EUR', 'Euro', '31', '#### @@', '^(d{4}[A-Z]{2})$', 'nl-NL,fy-NL', '2750405', 'DE,BE', '\r', null, null);
INSERT INTO `countries` VALUES ('157', 'AN', 'ANT', '530', 'NT', 'Netherlands Antilles', 'Willemstad', '960', '136197', 'NA', '.an', 'ANG', 'Guilder', '599', '', '', 'nl-AN,en,es', '0', 'GP', '\r', null, null);
INSERT INTO `countries` VALUES ('158', 'NC', 'NCL', '540', 'NC', 'New Caledonia', 'Noumea', '19060', '216494', 'OC', '.nc', 'XPF', 'Franc', '687', '#####', '^(d{5})$', 'fr-NC', '2139685', '', '\r', null, null);
INSERT INTO `countries` VALUES ('159', 'NZ', 'NZL', '554', 'NZ', 'New Zealand', 'Wellington', '268680', '4252277', 'OC', '.nz', 'NZD', 'Dollar', '64', '####', '^(d{4})$', 'en-NZ,mi', '2186224', '', '\r', null, null);
INSERT INTO `countries` VALUES ('160', 'NI', 'NIC', '558', 'NU', 'Nicaragua', 'Managua', '129494', '5995928', 'NA', '.ni', 'NIO', 'Cordoba', '505', '###-###-#', '^(d{7})$', 'es-NI,en', '3617476', 'CR,HN', '\r', null, null);
INSERT INTO `countries` VALUES ('161', 'NE', 'NER', '562', 'NG', 'Niger', 'Niamey', '1267000', '15878271', 'AF', '.ne', 'XOF', 'Franc', '227', '####', '^(d{4})$', 'fr-NE,ha,kr,dje', '2440476', 'TD,BJ,DZ,LY,BF,NG,ML', '\r', null, null);
INSERT INTO `countries` VALUES ('162', 'NG', 'NGA', '566', 'NI', 'Nigeria', 'Abuja', '923768', '154000000', 'AF', '.ng', 'NGN', 'Naira', '234', '######', '^(d{6})$', 'en-NG,ha,yo,ig,ff', '2328926', 'TD,NE,BJ,CM', '\r', null, null);
INSERT INTO `countries` VALUES ('163', 'NU', 'NIU', '570', 'NE', 'Niue', 'Alofi', '260', '2166', 'OC', '.nu', 'NZD', 'Dollar', '683', '', '', 'niu,en-NU', '4036232', '', '\r', null, null);
INSERT INTO `countries` VALUES ('164', 'NF', 'NFK', '574', 'NF', 'Norfolk Island', 'Kingston', '34.6', '1828', 'OC', '.nf', 'AUD', 'Dollar', '672', '', '', 'en-NF', '2155115', '', '\r', null, null);
INSERT INTO `countries` VALUES ('165', 'KP', 'PRK', '408', 'KN', 'North Korea', 'Pyongyang', '120540', '22912177', 'AS', '.kp', 'KPW', 'Won', '850', '###-###', '^(d{6})$', 'ko-KP', '1873107', 'CN,KR,RU', '\r', null, null);
INSERT INTO `countries` VALUES ('166', 'MP', 'MNP', '580', 'CQ', 'Northern Mariana Islands', 'Saipan', '477', '53883', 'OC', '.mp', 'USD', 'Dollar', '+1-670', '', '', 'fil,tl,zh,ch-MP,en-MP', '4041468', '', '\r', null, null);
INSERT INTO `countries` VALUES ('167', 'NO', 'NOR', '578', 'NO', 'Norway', 'Oslo', '324220', '4985870', 'EU', '.no', 'NOK', 'Krone', '47', '####', '^(d{4})$', 'no,nb,nn,se,fi', '3144096', 'FI,RU,SE', '\r', null, null);
INSERT INTO `countries` VALUES ('168', 'OM', 'OMN', '512', 'MU', 'Oman', 'Muscat', '212460', '2967717', 'AS', '.om', 'OMR', 'Rial', '968', '###', '^(d{3})$', 'ar-OM,en,bal,ur', '286963', 'SA,YE,AE', '\r', null, null);
INSERT INTO `countries` VALUES ('169', 'PK', 'PAK', '586', 'PK', 'Pakistan', 'Islamabad', '803940', '184404791', 'AS', '.pk', 'PKR', 'Rupee', '92', '#####', '^(d{5})$', 'ur-PK,en-PK,pa,sd,ps,brh', '1168579', 'CN,AF,IR,IN', '\r', null, null);
INSERT INTO `countries` VALUES ('170', 'PW', 'PLW', '585', 'PS', 'Palau', 'Melekeok', '458', '19907', 'OC', '.pw', 'USD', 'Dollar', '680', '96940', '^(96940)$', 'pau,sov,en-PW,tox,ja,fil,zh', '1559582', '', '\r', null, null);
INSERT INTO `countries` VALUES ('171', 'PS', 'PSE', '275', 'WE', 'Palestinian Territory', 'East Jerusalem', '5970', '3800000', 'AS', '.ps', 'ILS', 'Shekel', '970', '', '', 'ar-PS', '6254930', 'JO,IL', '\r', null, null);
INSERT INTO `countries` VALUES ('172', 'PA', 'PAN', '591', 'PM', 'Panama', 'Panama City', '78200', '3410676', 'NA', '.pa', 'PAB', 'Balboa', '507', '', '', 'es-PA,en', '3703430', 'CR,CO', '\r', null, null);
INSERT INTO `countries` VALUES ('173', 'PG', 'PNG', '598', 'PP', 'Papua New Guinea', 'Port Moresby', '462840', '6064515', 'OC', '.pg', 'PGK', 'Kina', '675', '###', '^(d{3})$', 'en-PG,ho,meu,tpi', '2088628', 'ID', '\r', null, null);
INSERT INTO `countries` VALUES ('174', 'PY', 'PRY', '600', 'PA', 'Paraguay', 'Asuncion', '406750', '6375830', 'SA', '.py', 'PYG', 'Guarani', '595', '####', '^(d{4})$', 'es-PY,gn', '3437598', 'BO,BR,AR', '\r', null, null);
INSERT INTO `countries` VALUES ('175', 'PE', 'PER', '604', 'PE', 'Peru', 'Lima', '1285220', '29907003', 'SA', '.pe', 'PEN', 'Sol', '51', '', '', 'es-PE,qu,ay', '3932488', 'EC,CL,BO,BR,CO', '\r', null, null);
INSERT INTO `countries` VALUES ('176', 'PH', 'PHL', '608', 'RP', 'Philippines', 'Manila', '300000', '99900177', 'AS', '.ph', 'PHP', 'Peso', '63', '####', '^(d{4})$', 'tl,en-PH,fil', '1694008', '', '\r', null, null);
INSERT INTO `countries` VALUES ('177', 'PN', 'PCN', '612', 'PC', 'Pitcairn', 'Adamstown', '47', '46', 'OC', '.pn', 'NZD', 'Dollar', '870', '', '', 'en-PN', '4030699', '', '\r', null, null);
INSERT INTO `countries` VALUES ('178', 'PL', 'POL', '616', 'PL', 'Poland', 'Warsaw', '312685', '38500000', 'EU', '.pl', 'PLN', 'Zloty', '48', '##-###', '^(d{5})$', 'pl', '798544', 'DE,LT,SK,CZ,BY,UA,RU', '\r', null, null);
INSERT INTO `countries` VALUES ('179', 'PT', 'PRT', '620', 'PO', 'Portugal', 'Lisbon', '92391', '10676000', 'EU', '.pt', 'EUR', 'Euro', '351', '####-###', '^(d{7})$', 'pt-PT,mwl', '2264397', 'ES', '\r', null, null);
INSERT INTO `countries` VALUES ('180', 'PR', 'PRI', '630', 'RQ', 'Puerto Rico', 'San Juan', '9104', '3916632', 'NA', '.pr', 'USD', 'Dollar', '+1-787 and', '#####-####', '^(d{9})$', 'en-PR,es-PR', '4566966', '', '\r', null, null);
INSERT INTO `countries` VALUES ('181', 'QA', 'QAT', '634', 'QA', 'Qatar', 'Doha', '11437', '840926', 'AS', '.qa', 'QAR', 'Rial', '974', '', '', 'ar-QA,es', '289688', 'SA', '\r', null, null);
INSERT INTO `countries` VALUES ('182', 'CG', 'COG', '178', 'CF', 'Republic of the Congo', 'Brazzaville', '342000', '3039126', 'AF', '.cg', 'XAF', 'Franc', '242', '', '', 'fr-CG,kg,ln-CG', '2260494', 'CF,GA,CD,CM,AO', '\r', null, null);
INSERT INTO `countries` VALUES ('183', 'RE', 'REU', '638', 'RE', 'Reunion', 'Saint-Denis', '2517', '776948', 'AF', '.re', 'EUR', 'Euro', '262', '#####', '^((97)|(98)(4|7|8)d{', 'fr-RE', '935317', '', '\r', null, null);
INSERT INTO `countries` VALUES ('184', 'RO', 'ROU', '642', 'RO', 'Romania', 'Bucharest', '237500', '21959278', 'EU', '.ro', 'RON', 'Leu', '40', '######', '^(d{6})$', 'ro,hu,rom', '798549', 'MD,HU,UA,CS,BG,RS', '\r', null, null);
INSERT INTO `countries` VALUES ('185', 'RU', 'RUS', '643', 'RS', 'Russia', 'Moscow', '17100000', '140702000', 'EU', '.ru', 'RUB', 'Ruble', '7', '######', '^(d{6})$', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,mns,bua,myv,mdf,chm,ba,inh,tut,kbd,krc,ava,sah,nog', '2017370', 'GE,CN,BY,UA,KZ,LV,PL', '\r', null, null);
INSERT INTO `countries` VALUES ('186', 'RW', 'RWA', '646', 'RW', 'Rwanda', 'Kigali', '26338', '11055976', 'AF', '.rw', 'RWF', 'Franc', '250', '', '', 'rw,en-RW,fr-RW,sw', '49518', 'TZ,CD,BI,UG', '\r', null, null);
INSERT INTO `countries` VALUES ('187', 'BL', 'BLM', '652', 'TB', 'Saint Barthelemy', 'Gustavia', '21', '8450', 'NA', '.gp', 'EUR', 'Euro', '590', '### ###', '', 'fr', '3578476', '', '\r', null, null);
INSERT INTO `countries` VALUES ('188', 'SH', 'SHN', '654', 'SH', 'Saint Helena', 'Jamestown', '410', '7460', 'AF', '.sh', 'SHP', 'Pound', '290', 'STHL 1ZZ', '^(STHL1ZZ)$', 'en-SH', '3370751', '', '\r', null, null);
INSERT INTO `countries` VALUES ('189', 'KN', 'KNA', '659', 'SC', 'Saint Kitts and Nevis', 'Basseterre', '261', '49898', 'NA', '.kn', 'XCD', 'Dollar', '+1-869', '', '', 'en-KN', '3575174', '', '\r', null, null);
INSERT INTO `countries` VALUES ('190', 'LC', 'LCA', '662', 'ST', 'Saint Lucia', 'Castries', '616', '160922', 'NA', '.lc', 'XCD', 'Dollar', '+1-758', '', '', 'en-LC', '3576468', '', '\r', null, null);
INSERT INTO `countries` VALUES ('191', 'MF', 'MAF', '663', 'RN', 'Saint Martin', 'Marigot', '53', '35925', 'NA', '.gp', 'EUR', 'Euro', '590', '### ###', '', 'fr', '3578421', 'SX', '\r', null, null);
INSERT INTO `countries` VALUES ('192', 'PM', 'SPM', '666', 'SB', 'Saint Pierre and Miquelon', 'Saint-Pierre', '242', '7012', 'NA', '.pm', 'EUR', 'Euro', '508', '#####', '^(97500)$', 'fr-PM', '3424932', '', '\r', null, null);
INSERT INTO `countries` VALUES ('193', 'VC', 'VCT', '670', 'VC', 'Saint Vincent and the Grenadines', 'Kingstown', '389', '104217', 'NA', '.vc', 'XCD', 'Dollar', '+1-784', '', '', 'en-VC,fr', '3577815', '', '\r', null, null);
INSERT INTO `countries` VALUES ('194', 'WS', 'WSM', '882', 'WS', 'Samoa', 'Apia', '2944', '192001', 'OC', '.ws', 'WST', 'Tala', '685', '', '', 'sm,en-WS', '4034894', '', '\r', null, null);
INSERT INTO `countries` VALUES ('195', 'SM', 'SMR', '674', 'SM', 'San Marino', 'San Marino', '61.2', '31477', 'EU', '.sm', 'EUR', 'Euro', '378', '4789#', '^(4789d)$', 'it-SM', '3168068', 'IT', '\r', null, null);
INSERT INTO `countries` VALUES ('196', 'ST', 'STP', '678', 'TP', 'Sao Tome and Principe', 'Sao Tome', '1001', '175808', 'AF', '.st', 'STD', 'Dobra', '239', '', '', 'pt-ST', '2410758', '', '\r', null, null);
INSERT INTO `countries` VALUES ('197', 'SA', 'SAU', '682', 'SA', 'Saudi Arabia', 'Riyadh', '1960582', '25731776', 'AS', '.sa', 'SAR', 'Rial', '966', '#####', '^(d{5})$', 'ar-SA', '102358', 'QA,OM,IQ,YE,JO,AE,KW', '\r', null, null);
INSERT INTO `countries` VALUES ('198', 'SN', 'SEN', '686', 'SG', 'Senegal', 'Dakar', '196190', '12323252', 'AF', '.sn', 'XOF', 'Franc', '221', '#####', '^(d{5})$', 'fr-SN,wo,fuc,mnk', '2245662', 'GN,MR,GW,GM,ML', '\r', null, null);
INSERT INTO `countries` VALUES ('199', 'RS', 'SRB', '688', 'RI', 'Serbia', 'Belgrade', '88361', '7344847', 'EU', '.rs', 'RSD', 'Dinar', '381', '######', '^(d{6})$', 'sr,hu,bs,rom', '6290252', 'AL,HU,MK,RO,HR,BA,BG', '\r', null, null);
INSERT INTO `countries` VALUES ('200', 'CS', 'SCG', '891', 'YI', 'Serbia and Montenegro', 'Belgrade', '102350', '10829175', 'EU', '.cs', 'RSD', 'Dinar', '381', '#####', '^(d{5})$', 'cu,hu,sq,sr', '0', 'AL,HU,MK,RO,HR,BA,BG', '\r', null, null);
INSERT INTO `countries` VALUES ('201', 'SC', 'SYC', '690', 'SE', 'Seychelles', 'Victoria', '455', '88340', 'AF', '.sc', 'SCR', 'Rupee', '248', '', '', 'en-SC,fr-SC', '241170', '', '\r', null, null);
INSERT INTO `countries` VALUES ('202', 'SL', 'SLE', '694', 'SL', 'Sierra Leone', 'Freetown', '71740', '5245695', 'AF', '.sl', 'SLL', 'Leone', '232', '', '', 'en-SL,men,tem', '2403846', 'LR,GN', '\r', null, null);
INSERT INTO `countries` VALUES ('203', 'SG', 'SGP', '702', 'SN', 'Singapore', 'Singapur', '692.7', '4701069', 'AS', '.sg', 'SGD', 'Dollar', '65', '######', '^(d{6})$', 'cmn,en-SG,ms-SG,ta-SG,zh-SG', '1880251', '', '\r', null, null);
INSERT INTO `countries` VALUES ('204', 'SX', 'SXM', '534', 'NN', 'Sint Maarten', 'Philipsburg', '0', '37429', 'NA', '.sx', 'ANG', 'Guilder', '599', '', '', 'nl,en', '7609695', 'MF', '\r', null, null);
INSERT INTO `countries` VALUES ('205', 'SK', 'SVK', '703', 'LO', 'Slovakia', 'Bratislava', '48845', '5455000', 'EU', '.sk', 'EUR', 'Euro', '421', '###  ##', '^(d{5})$', 'sk,hu', '3057568', 'PL,HU,CZ,UA,AT', '\r', null, null);
INSERT INTO `countries` VALUES ('206', 'SI', 'SVN', '705', 'SI', 'Slovenia', 'Ljubljana', '20273', '2007000', 'EU', '.si', 'EUR', 'Euro', '386', 'SI- ####', '^(?:SI)*(d{4})$', 'sl,sh', '3190538', 'HU,IT,HR,AT', '\r', null, null);
INSERT INTO `countries` VALUES ('207', 'SB', 'SLB', '90', 'BP', 'Solomon Islands', 'Honiara', '28450', '559198', 'OC', '.sb', 'SBD', 'Dollar', '677', '', '', 'en-SB,tpi', '2103350', '', '\r', null, null);
INSERT INTO `countries` VALUES ('208', 'SO', 'SOM', '706', 'SO', 'Somalia', 'Mogadishu', '637657', '10112453', 'AF', '.so', 'SOS', 'Shilling', '252', '@@  #####', '^([A-Z]{2}d{5})$', 'so-SO,ar-SO,it,en-SO', '51537', 'ET,KE,DJ', '\r', null, null);
INSERT INTO `countries` VALUES ('209', 'ZA', 'ZAF', '710', 'SF', 'South Africa', 'Pretoria', '1219912', '49000000', 'AF', '.za', 'ZAR', 'Rand', '27', '####', '^(d{4})$', 'zu,xh,af,nso,en-ZA,tn,st,ts,ss,ve,nr', '953987', 'ZW,SZ,MZ,BW,NA,LS', '\r', null, null);
INSERT INTO `countries` VALUES ('210', 'GS', 'SGS', '239', 'SX', 'South Georgia and the South Sandwich Islands', 'Grytviken', '3903', '30', 'AN', '.gs', 'GBP', 'Pound', '', '', '', 'en', '3474415', '', '\r', null, null);
INSERT INTO `countries` VALUES ('211', 'KR', 'KOR', '410', 'KS', 'South Korea', 'Seoul', '98480', '48422644', 'AS', '.kr', 'KRW', 'Won', '82', 'SEOUL ###-###', '^(?:SEOUL)*(d{6})$', 'ko-KR,en', '1835841', 'KP', '\r', null, null);
INSERT INTO `countries` VALUES ('212', 'SS', 'SSD', '728', 'OD', 'South Sudan', 'Juba', '644329', '8260490', 'AF', '', 'SSP', 'Pound', '211', '', '', 'en', '7909807', 'CD,CF,ET,KE,SD,UG,', '\r', null, null);
INSERT INTO `countries` VALUES ('213', 'ES', 'ESP', '724', 'SP', 'Spain', 'Madrid', '504782', '46505963', 'EU', '.es', 'EUR', 'Euro', '34', '#####', '^(d{5})$', 'es-ES,ca,gl,eu,oc', '2510769', 'AD,PT,GI,FR,MA', '\r', null, null);
INSERT INTO `countries` VALUES ('214', 'LK', 'LKA', '144', 'CE', 'Sri Lanka', 'Colombo', '65610', '21513990', 'AS', '.lk', 'LKR', 'Rupee', '94', '#####', '^(d{5})$', 'si,ta,en', '1227603', '', '\r', null, null);
INSERT INTO `countries` VALUES ('215', 'SD', 'SDN', '729', 'SU', 'Sudan', 'Khartoum', '1861484', '35000000', 'AF', '.sd', 'SDG', 'Pound', '249', '#####', '^(d{5})$', 'ar-SD,en,fia', '366755', 'SS,TD,EG,ET,ER,LY,CF', '\r', null, null);
INSERT INTO `countries` VALUES ('216', 'SR', 'SUR', '740', 'NS', 'Suriname', 'Paramaribo', '163270', '492829', 'SA', '.sr', 'SRD', 'Dollar', '597', '', '', 'nl-SR,en,srn,hns,jv', '3382998', 'GY,BR,GF', '\r', null, null);
INSERT INTO `countries` VALUES ('217', 'SJ', 'SJM', '744', 'SV', 'Svalbard and Jan Mayen', 'Longyearbyen', '62049', '2550', 'EU', '.sj', 'NOK', 'Krone', '47', '', '', 'no,ru', '607072', '', '\r', null, null);
INSERT INTO `countries` VALUES ('218', 'SZ', 'SWZ', '748', 'WZ', 'Swaziland', 'Mbabane', '17363', '1354051', 'AF', '.sz', 'SZL', 'Lilangeni', '268', '@###', '^([A-Z]d{3})$', 'en-SZ,ss-SZ', '934841', 'ZA,MZ', '\r', null, null);
INSERT INTO `countries` VALUES ('219', 'SE', 'SWE', '752', 'SW', 'Sweden', 'Stockholm', '449964', '9045000', 'EU', '.se', 'SEK', 'Krona', '46', 'SE-### ##', '^(?:SE)*(d{5})$', 'sv-SE,se,sma,fi-SE', '2661886', 'NO,FI', '\r', null, null);
INSERT INTO `countries` VALUES ('220', 'CH', 'CHE', '756', 'SZ', 'Switzerland', 'Berne', '41290', '7581000', 'EU', '.ch', 'CHF', 'Franc', '41', '####', '^(d{4})$', 'de-CH,fr-CH,it-CH,rm', '2658434', 'DE,IT,LI,FR,AT', '\r', null, null);
INSERT INTO `countries` VALUES ('221', 'SY', 'SYR', '760', 'SY', 'Syria', 'Damascus', '185180', '22198110', 'AS', '.sy', 'SYP', 'Pound', '963', '', '', 'ar-SY,ku,hy,arc,fr,en', '163843', 'IQ,JO,IL,TR,LB', '\r', null, null);
INSERT INTO `countries` VALUES ('222', 'TW', 'TWN', '158', 'TW', 'Taiwan', 'Taipei', '35980', '22894384', 'AS', '.tw', 'TWD', 'Dollar', '886', '#####', '^(d{5})$', 'zh-TW,zh,nan,hak', '1668284', '', '\r', null, null);
INSERT INTO `countries` VALUES ('223', 'TJ', 'TJK', '762', 'TI', 'Tajikistan', 'Dushanbe', '143100', '7487489', 'AS', '.tj', 'TJS', 'Somoni', '992', '######', '^(d{6})$', 'tg,ru', '1220409', 'CN,AF,KG,UZ', '\r', null, null);
INSERT INTO `countries` VALUES ('224', 'TZ', 'TZA', '834', 'TZ', 'Tanzania', 'Dodoma', '945087', '41892895', 'AF', '.tz', 'TZS', 'Shilling', '255', '', '', 'sw-TZ,en,ar', '149590', 'MZ,KE,CD,RW,ZM,BI,UG', '\r', null, null);
INSERT INTO `countries` VALUES ('225', 'TH', 'THA', '764', 'TH', 'Thailand', 'Bangkok', '514000', '67089500', 'AS', '.th', 'THB', 'Baht', '66', '#####', '^(d{5})$', 'th,en', '1605651', 'LA,MM,KH,MY', '\r', null, null);
INSERT INTO `countries` VALUES ('226', 'TG', 'TGO', '768', 'TO', 'Togo', 'Lome', '56785', '6587239', 'AF', '.tg', 'XOF', 'Franc', '228', '', '', 'fr-TG,ee,hna,kbp,dag,ha', '2363686', 'BJ,GH,BF', '\r', null, null);
INSERT INTO `countries` VALUES ('227', 'TK', 'TKL', '772', 'TL', 'Tokelau', '', '10', '1466', 'OC', '.tk', 'NZD', 'Dollar', '690', '', '', 'tkl,en-TK', '4031074', '', '\r', null, null);
INSERT INTO `countries` VALUES ('228', 'TO', 'TON', '776', 'TN', 'Tonga', 'Nuku\'alofa', '748', '122580', 'OC', '.to', 'TOP', 'Pa\'anga', '676', '', '', 'to,en-TO', '4032283', '', '\r', null, null);
INSERT INTO `countries` VALUES ('229', 'TT', 'TTO', '780', 'TD', 'Trinidad and Tobago', 'Port of Spain', '5128', '1228691', 'NA', '.tt', 'TTD', 'Dollar', '+1-868', '', '', 'en-TT,hns,fr,es,zh', '3573591', '', '\r', null, null);
INSERT INTO `countries` VALUES ('230', 'TN', 'TUN', '788', 'TS', 'Tunisia', 'Tunis', '163610', '10589025', 'AF', '.tn', 'TND', 'Dinar', '216', '####', '^(d{4})$', 'ar-TN,fr', '2464461', 'DZ,LY', '\r', null, null);
INSERT INTO `countries` VALUES ('231', 'TR', 'TUR', '792', 'TU', 'Turkey', 'Ankara', '780580', '77804122', 'AS', '.tr', 'TRY', 'Lira', '90', '#####', '^(d{5})$', 'tr-TR,ku,diq,az,av', '298795', 'SY,GE,IQ,IR,GR,AM,AZ', '\r', null, null);
INSERT INTO `countries` VALUES ('232', 'TM', 'TKM', '795', 'TX', 'Turkmenistan', 'Ashgabat', '488100', '4940916', 'AS', '.tm', 'TMT', 'Manat', '993', '######', '^(d{6})$', 'tk,ru,uz', '1218197', 'AF,IR,UZ,KZ', '\r', null, null);
INSERT INTO `countries` VALUES ('233', 'TC', 'TCA', '796', 'TK', 'Turks and Caicos Islands', 'Cockburn Town', '430', '20556', 'NA', '.tc', 'USD', 'Dollar', '+1-649', 'TKCA 1ZZ', '^(TKCA 1ZZ)$', 'en-TC', '3576916', '', '\r', null, null);
INSERT INTO `countries` VALUES ('234', 'TV', 'TUV', '798', 'TV', 'Tuvalu', 'Funafuti', '26', '10472', 'OC', '.tv', 'AUD', 'Dollar', '688', '', '', 'tvl,en,sm,gil', '2110297', '', '\r', null, null);
INSERT INTO `countries` VALUES ('235', 'VI', 'VIR', '850', 'VQ', 'U.S. Virgin Islands', 'Charlotte Amalie', '352', '108708', 'NA', '.vi', 'USD', 'Dollar', '+1-340', '', '', 'en-VI', '4796775', '', '\r', null, null);
INSERT INTO `countries` VALUES ('236', 'UG', 'UGA', '800', 'UG', 'Uganda', 'Kampala', '236040', '33398682', 'AF', '.ug', 'UGX', 'Shilling', '256', '', '', 'en-UG,lg,sw,ar', '226074', 'TZ,KE,SS,CD,RW', '\r', null, null);
INSERT INTO `countries` VALUES ('237', 'UA', 'UKR', '804', 'UP', 'Ukraine', 'Kiev', '603700', '45415596', 'EU', '.ua', 'UAH', 'Hryvnia', '380', '#####', '^(d{5})$', 'uk,ru-UA,rom,pl,hu', '690791', 'PL,MD,HU,SK,BY,RO,RU', '\r', null, null);
INSERT INTO `countries` VALUES ('238', 'AE', 'ARE', '784', 'AE', 'United Arab Emirates', 'Abu Dhabi', '82880', '4975593', 'AS', '.ae', 'AED', 'Dirham', '971', '', '', 'ar-AE,fa,en,hi,ur', '290557', 'SA,OM', '\r', null, null);
INSERT INTO `countries` VALUES ('239', 'GB', 'GBR', '826', 'UK', 'United Kingdom', 'London', '244820', '62348447', 'EU', '.uk', 'GBP', 'Pound', '44', '@# #@@|@## #@@|@@# #', '^(([A-Z]d{2}[A-Z]{2}', 'en-GB,cy-GB,gd', '2635167', 'IE', '\r', null, null);
INSERT INTO `countries` VALUES ('240', 'US', 'USA', '840', 'US', 'United States', 'Washington', '9629091', '310232863', 'NA', '.us', 'USD', 'Dollar', '1', '#####-####', '^(d{9})$', 'en-US,es-US,haw,fr', '6252001', 'CA,MX,CU', '\r', null, null);
INSERT INTO `countries` VALUES ('241', 'UM', 'UMI', '581', '', 'United States Minor Outlying Islands', '', '0', '0', 'OC', '.um', 'USD', 'Dollar', '1', '', '', 'en-UM', '5854968', '', '\r', null, null);
INSERT INTO `countries` VALUES ('242', 'UY', 'URY', '858', 'UY', 'Uruguay', 'Montevideo', '176220', '3477000', 'SA', '.uy', 'UYU', 'Peso', '598', '#####', '^(d{5})$', 'es-UY', '3439705', 'BR,AR', '\r', null, null);
INSERT INTO `countries` VALUES ('243', 'UZ', 'UZB', '860', 'UZ', 'Uzbekistan', 'Tashkent', '447400', '27865738', 'AS', '.uz', 'UZS', 'Som', '998', '######', '^(d{6})$', 'uz,ru,tg', '1512440', 'TM,AF,KG,TJ,KZ', '\r', null, null);
INSERT INTO `countries` VALUES ('244', 'VU', 'VUT', '548', 'NH', 'Vanuatu', 'Port Vila', '12200', '221552', 'OC', '.vu', 'VUV', 'Vatu', '678', '', '', 'bi,en-VU,fr-VU', '2134431', '', '\r', null, null);
INSERT INTO `countries` VALUES ('245', 'VA', 'VAT', '336', 'VT', 'Vatican', 'Vatican City', '0.44', '921', 'EU', '.va', 'EUR', 'Euro', '379', '', '', 'la,it,fr', '3164670', 'IT', '\r', null, null);
INSERT INTO `countries` VALUES ('246', 'VE', 'VEN', '862', 'VE', 'Venezuela', 'Caracas', '912050', '27223228', 'SA', '.ve', 'VEF', 'Bolivar', '58', '####', '^(d{4})$', 'es-VE', '3625428', 'GY,BR,CO', '\r', null, null);
INSERT INTO `countries` VALUES ('247', 'VN', 'VNM', '704', 'VM', 'Vietnam', 'Hanoi', '329560', '89571130', 'AS', '.vn', 'VND', 'Dong', '84', '######', '^(d{6})$', 'vi,en,fr,zh,km', '1562822', 'CN,LA,KH', '\r', null, null);
INSERT INTO `countries` VALUES ('248', 'WF', 'WLF', '876', 'WF', 'Wallis and Futuna', 'Mata Utu', '274', '16025', 'OC', '.wf', 'XPF', 'Franc', '681', '#####', '^(986d{2})$', 'wls,fud,fr-WF', '4034749', '', '\r', null, null);
INSERT INTO `countries` VALUES ('249', 'EH', 'ESH', '732', 'WI', 'Western Sahara', 'El-Aaiun', '266000', '273008', 'AF', '.eh', 'MAD', 'Dirham', '212', '', '', 'ar,mey', '2461445', 'DZ,MR,MA', '\r', null, null);
INSERT INTO `countries` VALUES ('250', 'YE', 'YEM', '887', 'YM', 'Yemen', 'Sanaa', '527970', '23495361', 'AS', '.ye', 'YER', 'Rial', '967', '', '', 'ar-YE', '69543', 'SA,OM', '\r', null, null);
INSERT INTO `countries` VALUES ('251', 'ZM', 'ZMB', '894', 'ZA', 'Zambia', 'Lusaka', '752614', '13460305', 'AF', '.zm', 'ZMK', 'Kwacha', '260', '#####', '^(d{5})$', 'en-ZM,bem,loz,lun,lue,ny,toi', '895949', 'ZW,TZ,MZ,CD,NA,MW,AO', '\r', null, null);
INSERT INTO `countries` VALUES ('252', 'ZW', 'ZWE', '716', 'ZI', 'Zimbabwe', 'Harare', '390580', '11651858', 'AF', '.zw', 'ZWL', 'Dollar', '263', '', '', 'en-ZW,sn,nr,nd', '878675', 'ZA,MZ,BW,ZM', '\r', null, null);

-- ----------------------------
-- Table structure for `custom_time_slots`
-- ----------------------------
DROP TABLE IF EXISTS `custom_time_slots`;
CREATE TABLE `custom_time_slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_detail` date NOT NULL,
  `center_id` bigint(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of custom_time_slots
-- ----------------------------

-- ----------------------------
-- Table structure for `daily_test`
-- ----------------------------
DROP TABLE IF EXISTS `daily_test`;
CREATE TABLE `daily_test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `fill_date` date NOT NULL,
  `covid_contact` int(11) NOT NULL DEFAULT '1',
  `result` tinyint(4) NOT NULL DEFAULT '0',
  `is_symptom` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of daily_test
-- ----------------------------

-- ----------------------------
-- Table structure for `daily_test_symptoms`
-- ----------------------------
DROP TABLE IF EXISTS `daily_test_symptoms`;
CREATE TABLE `daily_test_symptoms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `daily_test_id` bigint(20) NOT NULL,
  `symptom_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of daily_test_symptoms
-- ----------------------------

-- ----------------------------
-- Table structure for `documents`
-- ----------------------------
DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of documents
-- ----------------------------

-- ----------------------------
-- Table structure for `email_templates`
-- ----------------------------
DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `from` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `reply_to` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `text_email_content` longtext COLLATE utf8_unicode_ci,
  `html_email_content` longtext COLLATE utf8_unicode_ci,
  `notification_content` longtext COLLATE utf8_unicode_ci,
  `email_variables` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `is_html` tinyint(4) NOT NULL,
  `is_notify` tinyint(4) DEFAULT NULL,
  `display_name` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_templates_name` (`name`(255))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of email_templates
-- ----------------------------
INSERT INTO `email_templates` VALUES ('1', '2009-02-20 10:24:49', '2015-04-17 12:40:54', '##FROM_EMAIL##', '', 'forgotpassword', 'we will send this mail, when user submit the forgot password form.', '[##SITE_NAME##] Forgot password', 'Hi ##USERNAME##, \n\nWe have changed new password as per your requested.\n\nNew password: \n\n##PASSWORD##\n\nThanks, \n##SITE_NAME## \n##SITE_URL##', '<div style=\"background: url(\'##SITE_URL##/images/login-background.jpg\');\">\r\n  <link href=\"http://fonts.googleapis.com/css?family=Open+Sans\" rel=\"stylesheet\" type=\"text/css\" />\r\n  <center><div style=\"margin: 5px 0pt; padding: 20px; width: 700px; font-family: Open Sans,sans-serif;background-repeat: no-repeat;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;\">\r\n	 <div style=\"border-bottom: 1px solid #ccc; margin: 0pt; background: -moz-linear-gradient(top, #fccd39 0%, #f49a2a 100%);\r\n		background: -webkit-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -o-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -ms-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#fccd39\', endColorstr=\'#f49a2a\',GradientType=0 ); \r\n		min-height: 70px;\">\r\n			<center><img style=\"margin-top: 15px;padding-right: 15px;width: 66px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/email.png\" alt=\"[Image: ##SITE_NAME##]\" /></center>\r\n	 </div>\r\n	 <div style=\"background: url(\'rose_bg2.png\') repeat;padding: 20px; background-color: #ffffff; box-shadow: 0 0 7px rgba(0, 0, 0, 0.067);\">\r\n		<table width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td style=\"padding: 20px 30px 5px;\">\r\n					Hi ##USERNAME##, <br />\n<br />\nWe have changed new password as per your requested.<br />\n<br />\nNew password: <br />\n<br />\n##PASSWORD##<br />\n<br />\nThanks, <br />\n##SITE_NAME## <br />\n##SITE_URL##\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n		<table style=\"margin-top: 2px;\" width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td>\r\n					<p style=\" color: #000; font-size: 12px;text-align:center;line-height:16px;\">\r\n					<span style=\"color:#000;font-size:12px;text-align:center;margin:10px;font-weight: bold;\">It\'s time to turn your dreams into reality.</span><br><br><img style=\"width: 150px;padding-right: 15px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/logo.png\" alt=\"[Image: ##SITE_NAME##]\" /></p>\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n	 </div>\r\n	 </center>\r\n</div>', null, 'USERNAME,RESET_URL,SITE_NAME', '0', '0', 'Forgot Password');
INSERT INTO `email_templates` VALUES ('2', '2009-02-20 10:15:57', '2015-05-07 08:29:31', '##FROM_EMAIL##', '', 'activationrequest', 'we will send this mail, when user registering an account he/she will get an activation request.', '[##SITE_NAME##] Please activate your ##SITE_NAME## account', 'Hi ##USERNAME##,\n\nYour account has been created. \nPlease visit the following URL to activate your account.\n##ACTIVATION_URL##\n\nThanks,\n##SITE_NAME##\n##SITE_URL##', '<div style=\"background: url(\'##SITE_URL##/images/login-background.jpg\');\">\r\n  <link href=\"http://fonts.googleapis.com/css?family=Open+Sans\" rel=\"stylesheet\" type=\"text/css\" />\r\n  <center><div style=\"margin: 5px 0pt; padding: 20px; width: 700px; font-family: Open Sans,sans-serif;background-repeat: no-repeat;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;\">\r\n	 <div style=\"border-bottom: 1px solid #ccc; margin: 0pt; background: -moz-linear-gradient(top, #fccd39 0%, #f49a2a 100%);\r\n		background: -webkit-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -o-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -ms-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#fccd39\', endColorstr=\'#f49a2a\',GradientType=0 ); \r\n		min-height: 70px;\">\r\n			<center><img style=\"margin-top: 15px;padding-right: 15px;width: 66px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/email.png\" alt=\"[Image: ##SITE_NAME##]\" /></center>\r\n	 </div>\r\n	 <div style=\"background: url(\'rose_bg2.png\') repeat;padding: 20px; background-color: #ffffff; box-shadow: 0 0 7px rgba(0, 0, 0, 0.067);\">\r\n		<table width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td style=\"padding: 20px 30px 5px;\">\r\n					Hi ##USERNAME##,<br />\n<br />\nYour account has been created. <br />\nPlease visit the following URL to activate your account.<br />\n##ACTIVATION_URL##<br />\n<br />\nThanks,<br />\n##SITE_NAME##<br />\n##SITE_URL##\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n		<table style=\"margin-top: 2px;\" width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td>\r\n					<p style=\" color: #000; font-size: 12px;text-align:center;line-height:16px;\">\r\n					<span style=\"color:#000;font-size:12px;text-align:center;margin:10px;font-weight: bold;\">It\'s time to turn your dreams into reality.</span><br><br><img style=\"width: 150px;padding-right: 15px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/logo.png\" alt=\"[Image: ##SITE_NAME##]\" /></p>\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n	 </div>\r\n	 </center>\r\n</div>', null, 'SITE_NAME,USERNAME,ACTIVATION_URL', '0', '0', 'Activation Request');
INSERT INTO `email_templates` VALUES ('3', '2009-02-20 10:15:19', '2015-04-10 14:14:02', '##FROM_EMAIL##', '', 'newuserjoin', 'we will send this mail to admin, when a new user registered in the site. For this you have to enable \"admin mail after register\" in the settings page.', '[##SITE_NAME##] New user joined in ##SITE_NAME## account', 'Hi, \n\nA new user named \"##USERNAME##\" has joined in ##SITE_NAME## account. \n\nUsername: ##USERNAME##\nEmail: ##USEREMAIL##\nSignup IP: ##SIGNUPIP##\n\n\nThanks,\n##SITE_NAME##\n##SITE_URL##', '<div style=\"background: url(\'##SITE_URL##/images/login-background.jpg\');\">\r\n  <link href=\"http://fonts.googleapis.com/css?family=Open+Sans\" rel=\"stylesheet\" type=\"text/css\" />\r\n  <center><div style=\"margin: 5px 0pt; padding: 20px; width: 700px; font-family: Open Sans,sans-serif;background-repeat: no-repeat;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;\">\r\n	 <div style=\"border-bottom: 1px solid #ccc; margin: 0pt; background: -moz-linear-gradient(top, #fccd39 0%, #f49a2a 100%);\r\n		background: -webkit-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -o-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -ms-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#fccd39\', endColorstr=\'#f49a2a\',GradientType=0 ); \r\n		min-height: 70px;\">\r\n			<center><img style=\"margin-top: 15px;padding-right: 15px;width: 66px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/email.png\" alt=\"[Image: ##SITE_NAME##]\" /></center>\r\n	 </div>\r\n	 <div style=\"background: url(\'rose_bg2.png\') repeat;padding: 20px; background-color: #ffffff; box-shadow: 0 0 7px rgba(0, 0, 0, 0.067);\">\r\n		<table width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td style=\"padding: 20px 30px 5px;\">\r\n					Hi, <br />\n<br />\nA new user named \"##USERNAME##\" has joined in ##SITE_NAME## account. <br />\n<br />\nUsername: ##USERNAME##<br />\nEmail: ##USEREMAIL##<br />\nSignup IP: ##SIGNUPIP##<br />\n<br />\n<br />\nThanks,<br />\n##SITE_NAME##<br />\n##SITE_URL##\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n		<table style=\"margin-top: 2px;\" width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td>\r\n					<p style=\" color: #000; font-size: 12px;text-align:center;line-height:16px;\">\r\n					<span style=\"color:#000;font-size:12px;text-align:center;margin:10px;font-weight: bold;\">It\'s time to turn your dreams into reality.</span><br><br><img style=\"width: 150px;padding-right: 15px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/logo.png\" alt=\"[Image: ##SITE_NAME##]\" /></p>\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n	 </div>\r\n	 </center>\r\n</div>', null, 'SITE_NAME,USERNAME', '0', '0', 'New User Join');
INSERT INTO `email_templates` VALUES ('4', '2009-03-02 00:00:00', '2015-04-10 14:18:22', '##FROM_EMAIL##', '', 'Admin User Add', 'we will send this mail to user, when a admin add a new user.', '[##SITE_NAME##] Welcome to ##SITE_NAME##', 'Hi ##USERNAME##,\n\n##SITE_NAME## team added you as a user in ##SITE_NAME##.\n\nYour account details.\n##LOGINLABEL##: ##USEDTOLOGIN##\nPassword: ##PASSWORD##\n\nThanks,\n##SITE_NAME##\n##SITE_URL##', '<div style=\"background: url(\'##SITE_URL##/images/login-background.jpg\');\">\r\n  <link href=\"http://fonts.googleapis.com/css?family=Open+Sans\" rel=\"stylesheet\" type=\"text/css\" />\r\n  <center><div style=\"margin: 5px 0pt; padding: 20px; width: 700px; font-family: Open Sans,sans-serif;background-repeat: no-repeat;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;\">\r\n	 <div style=\"border-bottom: 1px solid #ccc; margin: 0pt; background: -moz-linear-gradient(top, #fccd39 0%, #f49a2a 100%);\r\n		background: -webkit-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -o-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -ms-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#fccd39\', endColorstr=\'#f49a2a\',GradientType=0 ); \r\n		min-height: 70px;\">\r\n			<center><img style=\"margin-top: 15px;padding-right: 15px;width: 66px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/email.png\" alt=\"[Image: ##SITE_NAME##]\" /></center>\r\n	 </div>\r\n	 <div style=\"background: url(\'rose_bg2.png\') repeat;padding: 20px; background-color: #ffffff; box-shadow: 0 0 7px rgba(0, 0, 0, 0.067);\">\r\n		<table width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td style=\"padding: 20px 30px 5px;\">\r\n					Hi ##USERNAME##,<br />\n<br />\n##SITE_NAME## team added you as a user in ##SITE_NAME##.<br />\n<br />\nYour account details.<br />\n##LOGINLABEL##: ##USEDTOLOGIN##<br />\nPassword: ##PASSWORD##<br />\n<br />\nThanks,<br />\n##SITE_NAME##<br />\n##SITE_URL##\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n		<table style=\"margin-top: 2px;\" width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td>\r\n					<p style=\" color: #000; font-size: 12px;text-align:center;line-height:16px;\">\r\n					<span style=\"color:#000;font-size:12px;text-align:center;margin:10px;font-weight: bold;\">It\'s time to turn your dreams into reality.</span><br><br><img style=\"width: 150px;padding-right: 15px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/logo.png\" alt=\"[Image: ##SITE_NAME##]\" /></p>\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n	 </div>\r\n	 </center>\r\n</div>', null, 'SITE_NAME,USERNAME,PASSWORD, LOGINLABEL, USEDTOLOGIN', '0', '0', 'Admin User Add');
INSERT INTO `email_templates` VALUES ('5', '2009-05-22 16:51:14', '2015-04-10 14:19:22', '##FROM_EMAIL##', '', 'welcomemail', 'we will send this mail, when user register in this site and get activate.', '[##SITE_NAME##] Welcome to ##SITE_NAME##', 'Hi ##USERNAME##,\n\nWe wish to say a quick hello and thanks for registering at ##SITE_NAME##.\n\nIf you did not request this account and feel this is in error, please\ncontact us at ##CONTACT_MAIL##\n\nThanks,\n##SITE_NAME##\n##SITE_URL##', '<div style=\"background: url(\'##SITE_URL##/images/login-background.jpg\');\">\r\n  <link href=\"http://fonts.googleapis.com/css?family=Open+Sans\" rel=\"stylesheet\" type=\"text/css\" />\r\n  <center><div style=\"margin: 5px 0pt; padding: 20px; width: 700px; font-family: Open Sans,sans-serif;background-repeat: no-repeat;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;\">\r\n	 <div style=\"border-bottom: 1px solid #ccc; margin: 0pt; background: -moz-linear-gradient(top, #fccd39 0%, #f49a2a 100%);\r\n		background: -webkit-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -o-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -ms-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#fccd39\', endColorstr=\'#f49a2a\',GradientType=0 ); \r\n		min-height: 70px;\">\r\n			<center><img style=\"margin-top: 15px;padding-right: 15px;width: 66px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/email.png\" alt=\"[Image: ##SITE_NAME##]\" /></center>\r\n	 </div>\r\n	 <div style=\"background: url(\'rose_bg2.png\') repeat;padding: 20px; background-color: #ffffff; box-shadow: 0 0 7px rgba(0, 0, 0, 0.067);\">\r\n		<table width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td style=\"padding: 20px 30px 5px;\">\r\n					Hi ##USERNAME##,<br />\n<br />\nWe wish to say a quick hello and thanks for registering at ##SITE_NAME##.<br />\n<br />\nIf you did not request this account and feel this is in error, please<br />\ncontact us at ##CONTACT_MAIL##<br />\n<br />\nThanks,<br />\n##SITE_NAME##<br />\n##SITE_URL##\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n		<table style=\"margin-top: 2px;\" width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td>\r\n					<p style=\" color: #000; font-size: 12px;text-align:center;line-height:16px;\">\r\n					<span style=\"color:#000;font-size:12px;text-align:center;margin:10px;font-weight: bold;\">It\'s time to turn your dreams into reality.</span><br><br><img style=\"width: 150px;padding-right: 15px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/logo.png\" alt=\"[Image: ##SITE_NAME##]\" /></p>\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n	 </div>\r\n	 </center>\r\n</div>', null, 'SITE_NAME, USERNAME, SUPPORT_EMAIL', '0', '0', 'Welcome Email');
INSERT INTO `email_templates` VALUES ('7', '2009-05-22 16:45:38', '2015-04-10 14:21:20', '##FROM_EMAIL##', '', 'Admin User Active ', 'We will send this mail to user, when user active   \r\nby administator.', '[##SITE_NAME##] Your ##SITE_NAME## account has been activated', 'Hi ##USERNAME##,\n\nYour account has been activated.\n\nThanks,\n##SITE_NAME##\n##SITE_URL##\n', '<div style=\"background: url(\'##SITE_URL##/images/login-background.jpg\');\">\r\n  <link href=\"http://fonts.googleapis.com/css?family=Open+Sans\" rel=\"stylesheet\" type=\"text/css\" />\r\n  <center><div style=\"margin: 5px 0pt; padding: 20px; width: 700px; font-family: Open Sans,sans-serif;background-repeat: no-repeat;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;\">\r\n	 <div style=\"border-bottom: 1px solid #ccc; margin: 0pt; background: -moz-linear-gradient(top, #fccd39 0%, #f49a2a 100%);\r\n		background: -webkit-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -o-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -ms-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#fccd39\', endColorstr=\'#f49a2a\',GradientType=0 ); \r\n		min-height: 70px;\">\r\n			<center><img style=\"margin-top: 15px;padding-right: 15px;width: 66px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/email.png\" alt=\"[Image: ##SITE_NAME##]\" /></center>\r\n	 </div>\r\n	 <div style=\"background: url(\'rose_bg2.png\') repeat;padding: 20px; background-color: #ffffff; box-shadow: 0 0 7px rgba(0, 0, 0, 0.067);\">\r\n		<table width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td style=\"padding: 20px 30px 5px;\">\r\n					Hi ##USERNAME##,<br />\n<br />\nYour account has been activated.<br />\n<br />\nThanks,<br />\n##SITE_NAME##<br />\n##SITE_URL##<br />\n\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n		<table style=\"margin-top: 2px;\" width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td>\r\n					<p style=\" color: #000; font-size: 12px;text-align:center;line-height:16px;\">\r\n					<span style=\"color:#000;font-size:12px;text-align:center;margin:10px;font-weight: bold;\">It\'s time to turn your dreams into reality.</span><br><br><img style=\"width: 150px;padding-right: 15px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/logo.png\" alt=\"[Image: ##SITE_NAME##]\" /></p>\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n	 </div>\r\n	 </center>\r\n</div>', null, 'SITE_NAME,USERNAME', '0', '0', 'Admin User Active ');
INSERT INTO `email_templates` VALUES ('8', '2009-05-22 16:48:38', '2015-04-10 14:21:46', '##FROM_EMAIL##', '', 'Admin User Deactivate', 'We will send this mail to user, when user deactive by administator.', '[##SITE_NAME##] Your ##SITE_NAME## account has been deactivated', 'Hi ##USERNAME##,\n\nYour ##SITE_NAME## account has been deactivated.\n\nThanks,\n##SITE_NAME##\n##SITE_URL##', '<div style=\"background: url(\'##SITE_URL##/images/login-background.jpg\');\">\r\n  <link href=\"http://fonts.googleapis.com/css?family=Open+Sans\" rel=\"stylesheet\" type=\"text/css\" />\r\n  <center><div style=\"margin: 5px 0pt; padding: 20px; width: 700px; font-family: Open Sans,sans-serif;background-repeat: no-repeat;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;\">\r\n	 <div style=\"border-bottom: 1px solid #ccc; margin: 0pt; background: -moz-linear-gradient(top, #fccd39 0%, #f49a2a 100%);\r\n		background: -webkit-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -o-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -ms-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#fccd39\', endColorstr=\'#f49a2a\',GradientType=0 ); \r\n		min-height: 70px;\">\r\n			<center><img style=\"margin-top: 15px;padding-right: 15px;width: 66px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/email.png\" alt=\"[Image: ##SITE_NAME##]\" /></center>\r\n	 </div>\r\n	 <div style=\"background: url(\'rose_bg2.png\') repeat;padding: 20px; background-color: #ffffff; box-shadow: 0 0 7px rgba(0, 0, 0, 0.067);\">\r\n		<table width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td style=\"padding: 20px 30px 5px;\">\r\n					Hi ##USERNAME##,<br />\n<br />\nYour ##SITE_NAME## account has been deactivated.<br />\n<br />\nThanks,<br />\n##SITE_NAME##<br />\n##SITE_URL##\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n		<table style=\"margin-top: 2px;\" width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td>\r\n					<p style=\" color: #000; font-size: 12px;text-align:center;line-height:16px;\">\r\n					<span style=\"color:#000;font-size:12px;text-align:center;margin:10px;font-weight: bold;\">It\'s time to turn your dreams into reality.</span><br><br><img style=\"width: 150px;padding-right: 15px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/logo.png\" alt=\"[Image: ##SITE_NAME##]\" /></p>\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n	 </div>\r\n	 </center>\r\n</div>', null, 'SITE_NAME,USERNAME', '0', '0', 'Admin User Deactivate');
INSERT INTO `email_templates` VALUES ('9', '2009-05-22 16:50:25', '2015-04-10 14:22:10', '##FROM_EMAIL##', '', 'adminuserdelete', 'We will send this mail to user, when user delete by administrator.', '[##SITE_NAME##] Your ##SITE_NAME## account has been removed', 'Hi ##USERNAME##,\n\nYour ##SITE_NAME## account has been removed.\n\nThanks,\n##SITE_NAME##\n##SITE_URL##', '<div style=\"background: url(\'##SITE_URL##/images/login-background.jpg\');\">\r\n  <link href=\"http://fonts.googleapis.com/css?family=Open+Sans\" rel=\"stylesheet\" type=\"text/css\" />\r\n  <center><div style=\"margin: 5px 0pt; padding: 20px; width: 700px; font-family: Open Sans,sans-serif;background-repeat: no-repeat;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;\">\r\n	 <div style=\"border-bottom: 1px solid #ccc; margin: 0pt; background: -moz-linear-gradient(top, #fccd39 0%, #f49a2a 100%);\r\n		background: -webkit-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -o-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -ms-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#fccd39\', endColorstr=\'#f49a2a\',GradientType=0 ); \r\n		min-height: 70px;\">\r\n			<center><img style=\"margin-top: 15px;padding-right: 15px;width: 66px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/email.png\" alt=\"[Image: ##SITE_NAME##]\" /></center>\r\n	 </div>\r\n	 <div style=\"background: url(\'rose_bg2.png\') repeat;padding: 20px; background-color: #ffffff; box-shadow: 0 0 7px rgba(0, 0, 0, 0.067);\">\r\n		<table width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td style=\"padding: 20px 30px 5px;\">\r\n					Hi ##USERNAME##,<br />\n<br />\nYour ##SITE_NAME## account has been removed.<br />\n<br />\nThanks,<br />\n##SITE_NAME##<br />\n##SITE_URL##\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n		<table style=\"margin-top: 2px;\" width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td>\r\n					<p style=\" color: #000; font-size: 12px;text-align:center;line-height:16px;\">\r\n					<span style=\"color:#000;font-size:12px;text-align:center;margin:10px;font-weight: bold;\">It\'s time to turn your dreams into reality.</span><br><br><img style=\"width: 150px;padding-right: 15px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/logo.png\" alt=\"[Image: ##SITE_NAME##]\" /></p>\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n	 </div>\r\n	 </center>\r\n</div>', null, 'SITE_NAME,USERNAME', '0', '0', 'Admin User Delete');
INSERT INTO `email_templates` VALUES ('10', '2009-07-07 15:47:09', '2015-04-10 14:23:09', '##FROM_EMAIL##', '', 'adminchangepassword', 'we will send this mail to user, when admin change user\'s password.', '[##SITE_NAME##] Password changed', 'Hi ##USERNAME##,\n\nAdmin reset your password for your  ##SITE_NAME## account.\n\nYour new password: ##PASSWORD##\n\nThanks,\n##SITE_NAME##\n##SITE_URL##', '<div style=\"background: url(\'##SITE_URL##/images/login-background.jpg\');\">\r\n  <link href=\"http://fonts.googleapis.com/css?family=Open+Sans\" rel=\"stylesheet\" type=\"text/css\" />\r\n  <center><div style=\"margin: 5px 0pt; padding: 20px; width: 700px; font-family: Open Sans,sans-serif;background-repeat: no-repeat;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;\">\r\n	 <div style=\"border-bottom: 1px solid #ccc; margin: 0pt; background: -moz-linear-gradient(top, #fccd39 0%, #f49a2a 100%);\r\n		background: -webkit-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -o-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -ms-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#fccd39\', endColorstr=\'#f49a2a\',GradientType=0 ); \r\n		min-height: 70px;\">\r\n			<center><img style=\"margin-top: 15px;padding-right: 15px;width: 66px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/email.png\" alt=\"[Image: ##SITE_NAME##]\" /></center>\r\n	 </div>\r\n	 <div style=\"background: url(\'rose_bg2.png\') repeat;padding: 20px; background-color: #ffffff; box-shadow: 0 0 7px rgba(0, 0, 0, 0.067);\">\r\n		<table width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td style=\"padding: 20px 30px 5px;\">\r\n					Hi ##USERNAME##,<br />\n<br />\nAdmin reset your password for your  ##SITE_NAME## account.<br />\n<br />\nYour new password: ##PASSWORD##<br />\n<br />\nThanks,<br />\n##SITE_NAME##<br />\n##SITE_URL##\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n		<table style=\"margin-top: 2px;\" width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td>\r\n					<p style=\" color: #000; font-size: 12px;text-align:center;line-height:16px;\">\r\n					<span style=\"color:#000;font-size:12px;text-align:center;margin:10px;font-weight: bold;\">It\'s time to turn your dreams into reality.</span><br><br><img style=\"width: 150px;padding-right: 15px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/logo.png\" alt=\"[Image: ##SITE_NAME##]\" /></p>\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n	 </div>\r\n	 </center>\r\n</div>', null, 'SITE_NAME,PASSWORD,USERNAME', '0', '0', 'Admin Change Password');
INSERT INTO `email_templates` VALUES ('11', '2009-10-14 18:31:14', '2015-04-10 14:25:08', '##FROM_EMAIL##', '##REPLY_TO_EMAIL##', 'Contact Us ', 'We will send this mail to admin, when user submit any contact form.', '[##SITE_NAME##] ##SUBJECT##', '##MESSAGE##\n\n----------------------------------------------------\nTelephone    : ##TELEPHONE##\nIP           : ##IP##, ##SITE_ADDR##\nWhois        : http://whois.sc/##IP##\nURL          : ##FROM_URL##\n----------------------------------------------------', '<div style=\"background: url(\'##SITE_URL##/images/login-background.jpg\');\">\r\n  <link href=\"http://fonts.googleapis.com/css?family=Open+Sans\" rel=\"stylesheet\" type=\"text/css\" />\r\n  <center><div style=\"margin: 5px 0pt; padding: 20px; width: 700px; font-family: Open Sans,sans-serif;background-repeat: no-repeat;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;\">\r\n	 <div style=\"border-bottom: 1px solid #ccc; margin: 0pt; background: -moz-linear-gradient(top, #fccd39 0%, #f49a2a 100%);\r\n		background: -webkit-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -o-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -ms-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#fccd39\', endColorstr=\'#f49a2a\',GradientType=0 ); \r\n		min-height: 70px;\">\r\n			<center><img style=\"margin-top: 15px;padding-right: 15px;width: 66px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/email.png\" alt=\"[Image: ##SITE_NAME##]\" /></center>\r\n	 </div>\r\n	 <div style=\"background: url(\'rose_bg2.png\') repeat;padding: 20px; background-color: #ffffff; box-shadow: 0 0 7px rgba(0, 0, 0, 0.067);\">\r\n		<table width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td style=\"padding: 20px 30px 5px;\">\r\n					##MESSAGE##<br />\n<br />\n----------------------------------------------------<br />\nTelephone    : ##TELEPHONE##<br />\nIP           : ##IP##, ##SITE_ADDR##<br />\nWhois        : http://whois.sc/##IP##<br />\nURL          : ##FROM_URL##<br />\n----------------------------------------------------\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n		<table style=\"margin-top: 2px;\" width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td>\r\n					<p style=\" color: #000; font-size: 12px;text-align:center;line-height:16px;\">\r\n					<span style=\"color:#000;font-size:12px;text-align:center;margin:10px;font-weight: bold;\">It\'s time to turn your dreams into reality.</span><br><br><img style=\"width: 150px;padding-right: 15px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/logo.png\" alt=\"[Image: ##SITE_NAME##]\" /></p>\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n	 </div>\r\n	 </center>\r\n</div>', null, 'FROM_URL, IP, TELEPHONE, MESSAGE, SITE_NAME, SUBJECT, FROM_EMAIL, LAST_NAME, FIRST_NAME', '0', '0', 'Contact Us ');
INSERT INTO `email_templates` VALUES ('12', '2009-10-14 19:20:59', '2015-04-10 14:35:19', '##FROM_EMAIL##', '', 'Contact Us Auto Reply', 'we will send this mail ti user, when user submit the contact us form.', '[##SITE_NAME##] RE: ##SUBJECT##', 'Hi ##FIRST_NAME####LAST_NAME##,\n\n   Thanks for contacting us. We\'ll get back to you shortly.\n\n   Please do not reply to this automated response. If you have not contacted us and if you feel this is an error, please contact us through our site ##CONTACT_URL##\n\n------ On ##POST_DATE## you wrote from ##IP## -----\n\n##MESSAGE##\n\n\nThanks,\n##SITE_NAME##\n##SITE_URL##', '<div style=\"background: url(\'##SITE_URL##/images/login-background.jpg\');\">\r\n  <link href=\"http://fonts.googleapis.com/css?family=Open+Sans\" rel=\"stylesheet\" type=\"text/css\" />\r\n  <center><div style=\"margin: 5px 0pt; padding: 20px; width: 700px; font-family: Open Sans,sans-serif;background-repeat: no-repeat;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;\">\r\n	 <div style=\"border-bottom: 1px solid #ccc; margin: 0pt; background: -moz-linear-gradient(top, #fccd39 0%, #f49a2a 100%);\r\n		background: -webkit-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -o-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		background: -ms-linear-gradient(top, #fccd39 0%,#f49a2a 100%);\r\n		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#fccd39\', endColorstr=\'#f49a2a\',GradientType=0 ); \r\n		min-height: 70px;\">\r\n			<center><img style=\"margin-top: 15px;padding-right: 15px;width: 66px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/email.png\" alt=\"[Image: ##SITE_NAME##]\" /></center>\r\n	 </div>\r\n	 <div style=\"background: url(\'rose_bg2.png\') repeat;padding: 20px; background-color: #ffffff; box-shadow: 0 0 7px rgba(0, 0, 0, 0.067);\">\r\n		<table width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td style=\"padding: 20px 30px 5px;\">\r\n					Hi ##FIRST_NAME####LAST_NAME##,<br />\n<br />\n   Thanks for contacting us. We\'ll get back to you shortly.<br />\n<br />\n   Please do not reply to this automated response. If you have not contacted us and if you feel this is an error, please contact us through our site ##CONTACT_URL##<br />\n<br />\n------ On ##POST_DATE## you wrote from ##IP## -----<br />\n<br />\n##MESSAGE##<br />\n<br />\n<br />\nThanks,<br />\n##SITE_NAME##<br />\n##SITE_URL##\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n		<table style=\"margin-top: 2px;\" width=\"100%\">\r\n		   <tbody>\r\n			  <tr>\r\n				 <td>\r\n					<p style=\" color: #000; font-size: 12px;text-align:center;line-height:16px;\">\r\n					<span style=\"color:#000;font-size:12px;text-align:center;margin:10px;font-weight: bold;\">It\'s time to turn your dreams into reality.</span><br><br><img style=\"width: 150px;padding-right: 15px; border: 0px 1px 0px 0px none solid none none -moz-use-text-color #333333 -moz-use-text-color -moz-use-text-color;\" src=\"##SITE_URL##/images/logo.png\" alt=\"[Image: ##SITE_NAME##]\" /></p>\r\n				 </td>\r\n			  </tr>\r\n		   </tbody>\r\n		</table>\r\n	 </div>\r\n	 </center>\r\n</div>', null, 'MESSAGE, POST_DATE, SITE_NAME, CONTACT_URL, FIRST_NAME, LAST_NAME, SUBJECT, SITE_URL', '0', '0', 'Contact Us Auto Reply');

-- ----------------------------
-- Table structure for `ips`
-- ----------------------------
DROP TABLE IF EXISTS `ips`;
CREATE TABLE `ips` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ip` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `timezone_id` bigint(20) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ips
-- ----------------------------

-- ----------------------------
-- Table structure for `islands`
-- ----------------------------
DROP TABLE IF EXISTS `islands`;
CREATE TABLE `islands` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(500) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of islands
-- ----------------------------

-- ----------------------------
-- Table structure for `oauth_access_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `scope` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_client_id` (`client_id`),
  KEY `oauth_access_tokens_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for `oauth_authorization_codes`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_authorization_codes`;
CREATE TABLE `oauth_authorization_codes` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `authorization_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `scope` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_authorization_codes_client_id` (`client_id`),
  KEY `oauth_authorization_codes_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oauth_authorization_codes
-- ----------------------------

-- ----------------------------
-- Table structure for `oauth_clients`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `client_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `client_secret` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grant_types` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tos_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_url` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_client_id` (`client_id`),
  KEY `oauth_clients_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------

-- ----------------------------
-- Table structure for `oauth_refresh_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `refresh_token` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `scope` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_client_id` (`client_id`),
  KEY `oauth_refresh_tokens_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for `oauth_scopes`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_scopes`;
CREATE TABLE `oauth_scopes` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `scope` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oauth_scopes
-- ----------------------------
INSERT INTO `oauth_scopes` VALUES ('1', 'canUser', '0');
INSERT INTO `oauth_scopes` VALUES ('2', 'canAdmin', '0');
INSERT INTO `oauth_scopes` VALUES ('3', 'canContestantUser', '0');
INSERT INTO `oauth_scopes` VALUES ('4', 'canCompanyUser', null);

-- ----------------------------
-- Table structure for `pages`
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_meta_tag` longtext COLLATE utf8_unicode_ci,
  `url` longtext COLLATE utf8_unicode_ci,
  `dispaly_url` longtext COLLATE utf8_unicode_ci,
  `slug` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_title` (`title`(255))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('2', '2009-07-11 11:16:54', '2020-04-20 08:38:47', 'About B-Id', 'Test', null, null, '/page/aboutus', 'aboutus', 'aboutus', '0');
INSERT INTO `pages` VALUES ('7', '2009-07-21 15:56:45', '2020-04-20 06:54:07', 'Privacy Policy', '<p>Coming soon.,</p>', '', '', '/page/privacy-policy', 'privacy_policy', 'privacy-policy', '0');
INSERT INTO `pages` VALUES ('9', '2011-06-24 16:55:35', '2020-04-20 06:54:41', 'Data Security', '<p>Coming soon..</p>', null, '', '/page/datasecurity', 'datasecurity', 'datasecurity', '0');
INSERT INTO `pages` VALUES ('14', '2011-04-01 20:05:15', '2011-04-01 20:05:15', 'Open-Source Libraries', 'Test', null, null, '/page/open-source', 'open-source', 'open-source', '0');
INSERT INTO `pages` VALUES ('15', '2011-04-01 20:05:15', '2020-04-20 08:46:17', 'Terms & Conditions', 'Test', null, null, '/page/terms', 'terms', 'term', '0');
INSERT INTO `pages` VALUES ('16', '2016-12-16 11:27:37', '2020-04-18 23:53:02', 'FAQ', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer erat  augue, condimentum ac commodo in, consectetur pellentesque quam. Sed  varius semper suscipit. Fusce tincidunt pharetra leo, quis tincidunt  magna posuere non. Quisque hendrerit quam nec elit ornare volutpat.  Proin consectetur iaculis orci ac tincidunt. Nam ultrices fermentum mi  eu consectetur. Praesent ante quam, viverra placerat mollis non,  scelerisque quis erat. Maecenas elit sapien, gravida nec sagittis at,  ultricies bibendum dolor.</p>&#10;<p>Suspendisse dolor ante, dignissim nec aliquet rhoncus, egestas rhoncus  dui. Nulla rutrum, ipsum at ullamcorper porttitor, dolor erat eleifend  odio, in consectetur nisl mi eget nulla. In non enim quis eros viverra  interdum. Phasellus venenatis sem in mi accumsan vel pretium ligula  sodales. Praesent eu gravida sem. In et semper urna. Suspendisse  potenti. Proin a ipsum sit amet purus laoreet hendrerit sed sed tellus.  Nulla feugiat enim sapien, at feugiat turpis. Aliquam ac ante in ipsum  feugiat dignissim.</p>&#10;<p>Cras tempus venenatis dictum. Fusce laoreet turpis hendrerit tortor  gravida non lacinia lectus elementum. Proin posuere odio fermentum orci  placerat ac tempor mauris condimentum. Pellentesque luctus turpis eget  ligula imperdiet auctor. Nam eros elit, fermentum vitae varius non,  dignissim quis erat. Ut accumsan bibendum dui eget elementum. Mauris  ante magna, lacinia aliquet sollicitudin at, interdum vel lorem. Nullam  odio dui, malesuada a feugiat sed, tincidunt non augue.</p>', 'NULL', null, '/page/faq', 'faq', 'faq', '0');

-- ----------------------------
-- Table structure for `payment_gateways`
-- ----------------------------
DROP TABLE IF EXISTS `payment_gateways`;
CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sanbox_userid` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `live_userid` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sanbox_password` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `live_password` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sanbox_signature` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `live_signature` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sanbox_application_id` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `live_application_id` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sanbox_secret_key` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `live_secret_key` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sanbox_publish_key` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `live_publish_key` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_test_mode` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `paypal_more_ten` double DEFAULT NULL,
  `paypal_more_ten_in_cents` double DEFAULT NULL,
  `paypal_less_ten` double DEFAULT NULL,
  `paypal_less_ten_in_cents` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_gateways_name` (`name`(255)),
  KEY `payment_gateways_slug` (`slug`(255)),
  KEY `userid` (`sanbox_userid`(255))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of payment_gateways
-- ----------------------------
INSERT INTO `payment_gateways` VALUES ('1', '2017-05-16 12:28:30', '2020-04-30 09:46:12', 'PlugnPay', 'plugnpay', '', '', '', '', '', '', '', '', ' ', ' ', ' ', ' ', '', '1', '1', '2.9', '0.3', '5', '0.05');

-- ----------------------------
-- Table structure for `payment_gateway_settings`
-- ----------------------------
DROP TABLE IF EXISTS `payment_gateway_settings`;
CREATE TABLE `payment_gateway_settings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `payment_gateway_id` int(11) NOT NULL,
  `name` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8_unicode_ci NOT NULL,
  `test_mode_value` longtext COLLATE utf8_unicode_ci,
  `live_mode_value` longtext COLLATE utf8_unicode_ci,
  `label` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_gateway_settings_payment_gateway_id` (`payment_gateway_id`),
  CONSTRAINT `payment_gateway_settings_payment_gateway_id_fkey` FOREIGN KEY (`payment_gateway_id`) REFERENCES `payment_gateways` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of payment_gateway_settings
-- ----------------------------

-- ----------------------------
-- Table structure for `providers`
-- ----------------------------
DROP TABLE IF EXISTS `providers`;
CREATE TABLE `providers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(265) COLLATE utf8_unicode_ci NOT NULL,
  `secret_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `button_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `position` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `providers_name` (`name`),
  KEY `providers_slug` (`slug`(255))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of providers
-- ----------------------------
INSERT INTO `providers` VALUES ('1', '2017-01-02 06:38:18', '2017-01-02 06:38:18', 'Twitter', 'twitter', null, null, 'fa-twitter', 'btn-twitter', '1', '2');
INSERT INTO `providers` VALUES ('2', '2017-01-02 06:38:18', '2017-01-02 06:38:18', 'Facebook', 'facebook', null, null, 'fa-facebook', 'btn-facebook', '1', '2');
INSERT INTO `providers` VALUES ('3', '2017-01-02 06:38:18', '2017-01-02 06:38:18', 'Google', 'google', 'tLSNL_IpY1ysJtfYgVYuhXi5', '263189942868-n5vmdmtk8i0snumqqtnhoels6bg8cqnn.apps.googleusercontent.com', 'fa-google-plus', 'btn-google', '1', '3');

-- ----------------------------
-- Table structure for `provider_users`
-- ----------------------------
DROP TABLE IF EXISTS `provider_users`;
CREATE TABLE `provider_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `provider_id` bigint(20) NOT NULL,
  `foreign_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_token` longtext COLLATE utf8_unicode_ci NOT NULL,
  `access_token_secret` longtext COLLATE utf8_unicode_ci,
  `is_connected` tinyint(4) NOT NULL DEFAULT '1',
  `profile_picture_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `provider_users_foreign_id` (`foreign_id`),
  KEY `provider_users_provider_id` (`provider_id`),
  KEY `provider_users_user_id` (`user_id`),
  CONSTRAINT `provider_users_provider_id_fkey` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `provider_users_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of provider_users
-- ----------------------------
INSERT INTO `provider_users` VALUES ('4', '2020-02-24 19:38:51', '2020-04-27 11:33:06', null, '3', '110451747209539670618', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjI4Yjc0MWU4ZGU5ODRhNDcxNTlmMTllNmQ3NzgzZTlkNGZhODEwZGIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxODE1NDkwMTAzNjItMmo5cDlpZWZmdWZuZTd2Z3Q2bTJ2bXVjY29xMGtxMXIuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIxODE1NDkwMTAzNjItMmo5cDlpZWZmdWZuZTd2Z3Q2bTJ2bXVjY29xMGtxMXIuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTA0NTE3NDcyMDk1Mzk2NzA2MTgiLCJlbWFpbCI6ImViZ3V5czA0MTJAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF0X2hhc2giOiJIZmdWSVhBSTl6V2Q2OTlMTVBTMnB3Iiwibm9uY2UiOiJwRDlvQnE3SE9qeUpoOVZzUTdBQUVvaUhpWUF5d0VOdG1DTnF6TEpseTJ3IiwibmFtZSI6ImViZ3V5cyAwNDEyIiwicGljdHVyZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS8tWWlfOGd4R2pqbGsvQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQUFLV0pKT3hXZnRKam5weldfRl93aUpJVjNacHUxcjc5QS9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiZWJndXlzIiwiZmFtaWx5X25hbWUiOiIwNDEyIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODc5NDAzODYsImV4cCI6MTU4Nzk0Mzk4Nn0.hZ1N0-oRjryRm8Ruxfrgu-U1En4TGATry0k1DNJjmfZTGNbp3m3Y1b4EbyZE_ACcMsvRow_7tp4Y3XAXWbP8JdNDyjhNwY_iTvaBWVpYQcCvfxsqYqq_jNhmyDSlbIXdYTutIubRh9y18-fFkoDJqsPvtAAfOcHhAiZLR8AFopKDIxTGwLohg-5BUNbuDfjhb-rbyZY77fHZnmSgWr1pGhyB9oJ3XT17DFj_TwFdeVOhtsEtzvY9MHZ-2vMacsADgaKJiu4Rqspdv0bDyaZ7UuJ97HNW0Ef98h6L02ctQeR99XmKOYAN4TTDIr0WOMw6OxGI12pJFgdsc5vHIxBpXA', 'eyJhbGciOiJSUzI1NiIsImtpZCI6Ijc5YzgwOWRkMTE4NmNjMjI4YzRiYWY5MzU4NTk5NTMwY2U5MmI0YzgiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxODE1NDkwMTAzNjItMmo5cDlpZWZmdWZuZTd2Z3Q2bTJ2bXVjY29xMGtxMXIuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIxODE1NDkwMTAzNjItMmo5cDlpZWZmdWZuZTd2Z3Q2bTJ2bXVjY29xMGtxMXIuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTA0NTE3NDcyMDk1Mzk2NzA2MTgiLCJlbWFpbCI6ImViZ3V5czA0MTJAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF0X2hhc2giOiJnc1lad0lhLWFaenJoVE41bmlJcERnIiwibm9uY2UiOiJwbnI0WkxKMFVEYWI3cDdQVFdfQ2EtN2hNZXRyVFBycXB3NXc1b3Z4akVBIiwibmFtZSI6ImViZ3V5cyAwNDEyIiwicGljdHVyZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS8tWWlfOGd4R2pqbGsvQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQUNIaTNyY0s4cXJZWDdjZ3pmeklSRl8yTTd5Wm82NkdQQS9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiZWJndXlzIiwiZmFtaWx5X25hbWUiOiIwNDEyIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODI1NjkyMDcsImV4cCI6MTU4MjU3MjgwN30.VGZ64rpGKU2CXJoEklKJwAO4_MUSR2j3uXA-97lUcEMZSxBKPgtk7uPRZQh5unwE4bxkSCzwvvA-411rqLcy1CmY8vJQZx0fUlZPciNkbHotAcw31sm0J-PE-DUIfg610pTx8FyiAvR6ihTofMismHBq5o6kyqgagip5St3UjyxHyQkLE9H529r3MjLrACPLyPmXgHo7sA7-lkm5hmOWm4GThn0ClkJpLCmLMO63tWXFDE5LSXH3J1bzRFttLpch8St6OKorW68iXepzbT-KoWeUI5oZioH7K0V9eZHSLeJYZCgHjC26XneP_ybK4zWF5vDKgKpLZb0qQDKadIWNyw', '1', 'https://lh3.googleusercontent.com/-Yi_8gxGjjlk/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcK8qrYX7cgzfzIRF_2M7yZo66GPA/s96-c/photo.jpg');
INSERT INTO `provider_users` VALUES ('5', '2020-03-05 00:10:52', '2020-03-05 00:10:52', null, '3', '100337429546421893438', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjE3ZDU1ZmY0ZTEwOTkxZDZiMGVmZDM5MmI5MWEzM2U1NGMwZTIxOGIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM5ODY4ODQ2MzI0LTRnaXJhMXB0dHYyMG44cTBrdWx1Y2VtbXBpcmppOWZnLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzOTg2ODg0NjMyNC0zdHVidGJvZGFjcWd2dG90NXZwcGJta2dhMDNoaW4zMy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjEwMDMzNzQyOTU0NjQyMTg5MzQzOCIsImVtYWlsIjoic3VuZGFyZGV2ZWxvcGVyLmNzZUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwibmFtZSI6IlN1bmRhciBSYWoiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDYuZ29vZ2xldXNlcmNvbnRlbnQuY29tLy1sQ1NXSEQtYzBOdy9BQUFBQUFBQUFBSS9BQUFBQUFBQUFBQS9BS0YwNW5BMVBSS1NmTkVGd2dJZTNzOFhzcHdXUndma0NBL3M5Ni1jL3Bob3RvLmpwZyIsImdpdmVuX25hbWUiOiJTdW5kYXIiLCJmYW1pbHlfbmFtZSI6IlJhaiIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNTgzMzYzNDQ5LCJleHAiOjE1ODMzNjcwNDl9.BIKaebirRfd5dA_p5a8PoEm7EAKsZMcPeZ7j6bj2taera4i9JYZrQZvZBCBZ_cZIHjueVV_8XehE_H0BCTSA1HETnTRQQdRiE8OVWSMglUUCtxzxGBVlQ2o-04DShqKiG5PMSggEigyVwmCHMOgKQeAw9GQ99pQ4LgVvPE-6ZI_2ulIWq0bBc-H2hEzypRx7DUdu9a7VX9-iaDSuL8E3LydmHHPp3VBvF8cD-0CvZHKjaqkeYcqVRrdfjnSl_56qyDMru1PpDI5QLyBv1A4LzVNUtaHNAcnhUK4oLVlXvyghTuoCOye1o9YHEUSAXtkRj_xdaZwljPL9yNGwNZ42Lw', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjE3ZDU1ZmY0ZTEwOTkxZDZiMGVmZDM5MmI5MWEzM2U1NGMwZTIxOGIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM5ODY4ODQ2MzI0LTRnaXJhMXB0dHYyMG44cTBrdWx1Y2VtbXBpcmppOWZnLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzOTg2ODg0NjMyNC0zdHVidGJvZGFjcWd2dG90NXZwcGJta2dhMDNoaW4zMy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjEwMDMzNzQyOTU0NjQyMTg5MzQzOCIsImVtYWlsIjoic3VuZGFyZGV2ZWxvcGVyLmNzZUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwibmFtZSI6IlN1bmRhciBSYWoiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDYuZ29vZ2xldXNlcmNvbnRlbnQuY29tLy1sQ1NXSEQtYzBOdy9BQUFBQUFBQUFBSS9BQUFBQUFBQUFBQS9BS0YwNW5BMVBSS1NmTkVGd2dJZTNzOFhzcHdXUndma0NBL3M5Ni1jL3Bob3RvLmpwZyIsImdpdmVuX25hbWUiOiJTdW5kYXIiLCJmYW1pbHlfbmFtZSI6IlJhaiIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNTgzMzYzNDQ5LCJleHAiOjE1ODMzNjcwNDl9.BIKaebirRfd5dA_p5a8PoEm7EAKsZMcPeZ7j6bj2taera4i9JYZrQZvZBCBZ_cZIHjueVV_8XehE_H0BCTSA1HETnTRQQdRiE8OVWSMglUUCtxzxGBVlQ2o-04DShqKiG5PMSggEigyVwmCHMOgKQeAw9GQ99pQ4LgVvPE-6ZI_2ulIWq0bBc-H2hEzypRx7DUdu9a7VX9-iaDSuL8E3LydmHHPp3VBvF8cD-0CvZHKjaqkeYcqVRrdfjnSl_56qyDMru1PpDI5QLyBv1A4LzVNUtaHNAcnhUK4oLVlXvyghTuoCOye1o9YHEUSAXtkRj_xdaZwljPL9yNGwNZ42Lw', '1', 'https://lh6.googleusercontent.com/-lCSWHD-c0Nw/AAAAAAAAAAI/AAAAAAAAAAA/AKF05nA1PRKSfNEFwgIe3s8XspwWRwfkCA/s96-c/photo.jpg');
INSERT INTO `provider_users` VALUES ('6', '2020-03-05 07:55:05', '2020-04-23 08:59:37', null, '3', '104826415210483823674', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImY5ZDk3YjRjYWU5MGJjZDc2YWViMjAwMjZmNmI3NzBjYWMyMjE3ODMiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM5ODY4ODQ2MzI0LTRnaXJhMXB0dHYyMG44cTBrdWx1Y2VtbXBpcmppOWZnLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzOTg2ODg0NjMyNC0zdHVidGJvZGFjcWd2dG90NXZwcGJta2dhMDNoaW4zMy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjEwNDgyNjQxNTIxMDQ4MzgyMzY3NCIsImVtYWlsIjoibXVydWdhbjIxMTg5QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJuYW1lIjoiTXVydWdhbiBoIiwicGljdHVyZSI6Imh0dHBzOi8vbGg0Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8tbE5OZUg2djNFNnMvQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQUFLV0pKTnhGcGdDSXYyc0k0T045aFR3LU9xQ3BCVHdzZy9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiTXVydWdhbiIsImZhbWlseV9uYW1lIjoiaCIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNTg3NTg1NTc1LCJleHAiOjE1ODc1ODkxNzV9.SIXbN5v3w9-yWL0gDackCpdBuf-dLYdYzWRNjhloFyId-v-GekPU5EMeUcYGjifOaV3lVfOf7wVjQF6d3JKxI72Fwi0WSdu0WqAEo8h6g8laFHchE5RabAT0Qub_D4Ooc8D1e2YV7qIsmhoVeZmZNQfxI01Qs7ZKDdCI2Vy8igprNzWtuzNejgSAEr-hu6Oa4Aeud9AmxzUKM38CarPtRwWuVG_sT2Psca_L2Gomx4K2zFN3Oz-hlbvWM6Rji5eSU2cv-_egWk_kFW96yc6NFdNPAU6qcxEQQcsINRpvgfEhut-T8qDI1sNXIx8WS0OXjWsvD4crbpDhwBbG9L8Jjw', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjE3ZDU1ZmY0ZTEwOTkxZDZiMGVmZDM5MmI5MWEzM2U1NGMwZTIxOGIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM5ODY4ODQ2MzI0LTRnaXJhMXB0dHYyMG44cTBrdWx1Y2VtbXBpcmppOWZnLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzOTg2ODg0NjMyNC0zdHVidGJvZGFjcWd2dG90NXZwcGJta2dhMDNoaW4zMy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjEwNDgyNjQxNTIxMDQ4MzgyMzY3NCIsImVtYWlsIjoibXVydWdhbjIxMTg5QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJuYW1lIjoiTXVydWdhbiBoIiwicGljdHVyZSI6Imh0dHBzOi8vbGg0Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8tbE5OZUg2djNFNnMvQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQUtGMDVuQ21iT3FONU9PQmJpVmRfZTVmc0QzTzYwckdSZy9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiTXVydWdhbiIsImZhbWlseV9uYW1lIjoiaCIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNTgzMzkxMzAzLCJleHAiOjE1ODMzOTQ5MDN9.F-ssF_H4ntP6rTY_lFCbBebQ7XvWX4-0KEUyJ9nzUGFWG9Ymnp4tpM78gY1YOgTTzrQMQkG4AuQ5YiKh6lxsqs5mSyc0pfaiCYmWr1y8E_0IaOFxbAwOsRkXTj3Mg9uscuwwcmIBYiuGJb4ozdqgURbI9vUCw_H9E3Tm6kHE66m5f06ItMj4uQEVJkOkJHAKfZ0gL4y-vqWE5J_jGQIyfHZI30QYyM9oCC5k2dw-R4P9EbIHExZV5Q1jRJe8Vh17Glc1tD_Z652HH3nJ_ek3an6Co3PgvBSbBedMlN4dseX6u4KFf_RTclylGk575AAbhl3ohe5MeVR8WyqiGiIKWA', '1', 'https://lh4.googleusercontent.com/-lNNeH6v3E6s/AAAAAAAAAAI/AAAAAAAAAAA/AKF05nCmbOqN5OOBbiVd_e5fsD3O60rGRg/s96-c/photo.jpg');
INSERT INTO `provider_users` VALUES ('8', '2020-03-07 17:24:49', '2020-03-07 17:24:49', null, '3', '112978327091398387895', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjE3ZDU1ZmY0ZTEwOTkxZDZiMGVmZDM5MmI5MWEzM2U1NGMwZTIxOGIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM5ODY4ODQ2MzI0LTRnaXJhMXB0dHYyMG44cTBrdWx1Y2VtbXBpcmppOWZnLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzOTg2ODg0NjMyNC0zdHVidGJvZGFjcWd2dG90NXZwcGJta2dhMDNoaW4zMy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjExMjk3ODMyNzA5MTM5ODM4Nzg5NSIsImVtYWlsIjoiZnJlZWxhbmNlcmF0b3pAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsIm5hbWUiOiJmcmVlbGFuY2VyIGYiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDQuZ29vZ2xldXNlcmNvbnRlbnQuY29tLy1DcVQySjh5UjhRdy9BQUFBQUFBQUFBSS9BQUFBQUFBQUFBQS9BS0YwNW5CTkxQWGpQQTV5TlZoZV90aWMtQlh5VG02MzRnL3M5Ni1jL3Bob3RvLmpwZyIsImdpdmVuX25hbWUiOiJmcmVlbGFuY2VyIiwiZmFtaWx5X25hbWUiOiJmIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODM1OTgyODksImV4cCI6MTU4MzYwMTg4OX0.Crr2A8Jfw2Zpcy2AUNMXF9XTP4wlH0SNaF9C88V7oNb6W2CrqzPIskiZHatvpZ1Mxu30bGs-5gf8Hi4H6-fd33ymhMF0pMkdcM82mDaikB2u40JlBNwBkOZo7s3G7BEZmacqylroo3s0lfszJGTEGaemEmyERlUgRMmGaNRh3-X8vzQRM60liOGbPebOJsmiy0QkEfop-Ph6CjEWlw00hp56qlJkdZ_NrNUl0hUMpXumNv3dqkqXPgYmB5Ol4gk6pUqNcRG6hctSmi9axagS9ZS7wJsG_mKaKEwIOxX5A6fMUG9LYbtWjBZe881i6sqrFROqdm55pKICiFzH40yLCg', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjE3ZDU1ZmY0ZTEwOTkxZDZiMGVmZDM5MmI5MWEzM2U1NGMwZTIxOGIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM5ODY4ODQ2MzI0LTRnaXJhMXB0dHYyMG44cTBrdWx1Y2VtbXBpcmppOWZnLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzOTg2ODg0NjMyNC0zdHVidGJvZGFjcWd2dG90NXZwcGJta2dhMDNoaW4zMy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjExMjk3ODMyNzA5MTM5ODM4Nzg5NSIsImVtYWlsIjoiZnJlZWxhbmNlcmF0b3pAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsIm5hbWUiOiJmcmVlbGFuY2VyIGYiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDQuZ29vZ2xldXNlcmNvbnRlbnQuY29tLy1DcVQySjh5UjhRdy9BQUFBQUFBQUFBSS9BQUFBQUFBQUFBQS9BS0YwNW5CTkxQWGpQQTV5TlZoZV90aWMtQlh5VG02MzRnL3M5Ni1jL3Bob3RvLmpwZyIsImdpdmVuX25hbWUiOiJmcmVlbGFuY2VyIiwiZmFtaWx5X25hbWUiOiJmIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODM1OTgyODksImV4cCI6MTU4MzYwMTg4OX0.Crr2A8Jfw2Zpcy2AUNMXF9XTP4wlH0SNaF9C88V7oNb6W2CrqzPIskiZHatvpZ1Mxu30bGs-5gf8Hi4H6-fd33ymhMF0pMkdcM82mDaikB2u40JlBNwBkOZo7s3G7BEZmacqylroo3s0lfszJGTEGaemEmyERlUgRMmGaNRh3-X8vzQRM60liOGbPebOJsmiy0QkEfop-Ph6CjEWlw00hp56qlJkdZ_NrNUl0hUMpXumNv3dqkqXPgYmB5Ol4gk6pUqNcRG6hctSmi9axagS9ZS7wJsG_mKaKEwIOxX5A6fMUG9LYbtWjBZe881i6sqrFROqdm55pKICiFzH40yLCg', '1', 'https://lh4.googleusercontent.com/-CqT2J8yR8Qw/AAAAAAAAAAI/AAAAAAAAAAA/AKF05nBNLPXjPA5yNVhe_tic-BXyTm634g/s96-c/photo.jpg');
INSERT INTO `provider_users` VALUES ('10', '2020-03-07 18:23:25', '2020-04-12 16:22:00', null, '3', '104180251654583771191', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxODE1NDkwMTAzNjItMmo5cDlpZWZmdWZuZTd2Z3Q2bTJ2bXVjY29xMGtxMXIuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIxODE1NDkwMTAzNjItMmo5cDlpZWZmdWZuZTd2Z3Q2bTJ2bXVjY29xMGtxMXIuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDQxODAyNTE2NTQ1ODM3NzExOTEiLCJlbWFpbCI6Imxha3NoYXBhbmRpQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiN0x2QmNHQ2VrUDN2MUxQSkg1MldXdyIsIm5vbmNlIjoiMGVhbXJhZUtJbnFQN0J1ajZ1YTVCMTFiM3FLRlRZdlNKVHJZc3dlengtOCIsIm5hbWUiOiJsYWtzaGEgcGFuZGlhbiIsInBpY3R1cmUiOiJodHRwczovL2xoNi5nb29nbGV1c2VyY29udGVudC5jb20vLUhuZjZBdzVPanpZL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSlBDbFBOcGVJVWJtRmhzSEtyeWI4c2dJc0xTTWcvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6Imxha3NoYSIsImZhbWlseV9uYW1lIjoicGFuZGlhbiIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNTg2NzAxMzE4LCJleHAiOjE1ODY3MDQ5MTh9.Ww2zEeBpB0lz__8YBT-zMw4E6Q7QncV9FsVKl0QHukXkP_mV90oXKmsFBFFhmLsPbo1CGLMuZhDCIIyoKknr8ijS8OKa1BlgFGt1cLSmJyuwpi6_WlJ3p6vNGthqWa9kvNbklbHbX1RMOGNyVsxmIAVXpLKzAu3n-f87aC3p13jzdSHM0kQl5vd_KTRFz2PDqvSw6hTsn0caJCMGVwJfe-T4bwHDE4nkpYZel3FPCeEOs7XfRbyrd5j3zthUUwxRNUl9oWqkiM4GYAuik-BWOvaFO99qt75s4Yd66vnURZ3V5_tESDypK2vMx_WYdcn3refPFchYmT7Qc-Cy3gGHWQ', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjE3ZDU1ZmY0ZTEwOTkxZDZiMGVmZDM5MmI5MWEzM2U1NGMwZTIxOGIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxODE1NDkwMTAzNjItMmo5cDlpZWZmdWZuZTd2Z3Q2bTJ2bXVjY29xMGtxMXIuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIxODE1NDkwMTAzNjItMmo5cDlpZWZmdWZuZTd2Z3Q2bTJ2bXVjY29xMGtxMXIuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDQxODAyNTE2NTQ1ODM3NzExOTEiLCJlbWFpbCI6Imxha3NoYXBhbmRpQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiRnJjamRfMk8wRU1tVGM1T1Q1SXMxdyIsIm5vbmNlIjoiMTVCSGNjZ0x6QnY4bFZzc1h3Tm94bnJqQU5JczFnODNBNVJzbWJzV1JOMCIsIm5hbWUiOiJsYWtzaGEgcGFuZGlhbiIsInBpY3R1cmUiOiJodHRwczovL2xoNi5nb29nbGV1c2VyY29udGVudC5jb20vLUhuZjZBdzVPanpZL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FLRjA1bkRXRzlHZmM4REJ6UTRUV1JpaVA2TnlzYkw4NUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6Imxha3NoYSIsImZhbWlseV9uYW1lIjoicGFuZGlhbiIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNTgzNTk3OTE2LCJleHAiOjE1ODM2MDE1MTZ9.XGL2iNC6nB2Fz2FUMe8leQDxAkuE77CKm6VDpqiyJK1yaTqDUdPnfUIRx7SlihiFAyc5U7XdpzVovsDvG9FmVynz_-PIn8gii4YIpXdI0Xw-KyTKTLAUxxjhtxGGvLMeBb6idpbAYy8EEELB8IQadovl56OJFXN2AkJzF0klAuCsFzy7Bxa4YAcyZgJWpeZiXE7Mj6InM-iBL0JrJ3BcVfrCRdXbQZBweOmUx1uu_W-p18tWY7h_CkjqwVpXDQrrDmsBAE4Gs14BUzieO132Br8IyfYaRWuHoVw_J9x1qaeZfaqM4zOC4KH-N1TzIeEO5RsXH-PyUWQIx9Jvg7teIA', '1', 'https://lh6.googleusercontent.com/-Hnf6Aw5OjzY/AAAAAAAAAAI/AAAAAAAAAAA/AKF05nDWG9Gfc8DBzQ4TWRiiP6NysbL85A/s96-c/photo.jpg');
INSERT INTO `provider_users` VALUES ('11', '2020-03-07 18:25:38', '2020-03-07 18:25:38', null, '3', '115518875962369515278', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImNiNDA0MzgzODQ0YjQ2MzEyNzY5YmI5MjllY2VjNTdkMGFkOGUzYmIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM5ODY4ODQ2MzI0LTRnaXJhMXB0dHYyMG44cTBrdWx1Y2VtbXBpcmppOWZnLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzOTg2ODg0NjMyNC0zdHVidGJvZGFjcWd2dG90NXZwcGJta2dhMDNoaW4zMy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjExNTUxODg3NTk2MjM2OTUxNTI3OCIsImVtYWlsIjoicmF0aGluYXZlbHN1YnJhbWFuaTU2QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJuYW1lIjoiUmF0aGluYXZlbCBTdWJyYW1hbmkiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2l4VWVqV1M3OFVzQjBwWkdhbDNaQllPdXNOOG5kbkEtRTJEQ0M4PXM5Ni1jIiwiZ2l2ZW5fbmFtZSI6IlJhdGhpbmF2ZWwiLCJmYW1pbHlfbmFtZSI6IlN1YnJhbWFuaSIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNTgzNjAxOTM3LCJleHAiOjE1ODM2MDU1Mzd9.j4NkJBymlM-q-HDFhc8yLpatJ17U9SVhOllovg47UBMXuaUUL7TLfpX5MKt2H8L28J8wU_YXedVGd2CAxGc5oMz0LRDiMJM39BPGl82ABZCVNjAkEFL4D_OGJLsXjgtJvnlPT9uBqA_KnnuFzFmZXr6GopJF_3waFTcTSheF5fcG5NKwrMkhLyNU_1T6a8QY8Rj7gnPp2chQurAbc_8F6GsKeGvKiF5Q7xcjnTQhE1u6PDydhe0SEmI13FOMcpq90ma3y1zv9c5ZHs3plkAbR9x6yD0VKv17AgZLF06JoBP9nGCVXmYi4fs1Czhsz4WxrUxmp1DFnR88hKihUYWiaw', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImNiNDA0MzgzODQ0YjQ2MzEyNzY5YmI5MjllY2VjNTdkMGFkOGUzYmIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM5ODY4ODQ2MzI0LTRnaXJhMXB0dHYyMG44cTBrdWx1Y2VtbXBpcmppOWZnLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzOTg2ODg0NjMyNC0zdHVidGJvZGFjcWd2dG90NXZwcGJta2dhMDNoaW4zMy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjExNTUxODg3NTk2MjM2OTUxNTI3OCIsImVtYWlsIjoicmF0aGluYXZlbHN1YnJhbWFuaTU2QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJuYW1lIjoiUmF0aGluYXZlbCBTdWJyYW1hbmkiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2l4VWVqV1M3OFVzQjBwWkdhbDNaQllPdXNOOG5kbkEtRTJEQ0M4PXM5Ni1jIiwiZ2l2ZW5fbmFtZSI6IlJhdGhpbmF2ZWwiLCJmYW1pbHlfbmFtZSI6IlN1YnJhbWFuaSIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNTgzNjAxOTM3LCJleHAiOjE1ODM2MDU1Mzd9.j4NkJBymlM-q-HDFhc8yLpatJ17U9SVhOllovg47UBMXuaUUL7TLfpX5MKt2H8L28J8wU_YXedVGd2CAxGc5oMz0LRDiMJM39BPGl82ABZCVNjAkEFL4D_OGJLsXjgtJvnlPT9uBqA_KnnuFzFmZXr6GopJF_3waFTcTSheF5fcG5NKwrMkhLyNU_1T6a8QY8Rj7gnPp2chQurAbc_8F6GsKeGvKiF5Q7xcjnTQhE1u6PDydhe0SEmI13FOMcpq90ma3y1zv9c5ZHs3plkAbR9x6yD0VKv17AgZLF06JoBP9nGCVXmYi4fs1Czhsz4WxrUxmp1DFnR88hKihUYWiaw', '1', 'https://lh3.googleusercontent.com/a-/AOh14GixUejWS78UsB0pZGal3ZBYOusN8ndnA-E2DCC8=s96-c');
INSERT INTO `provider_users` VALUES ('12', '2020-03-09 20:40:58', '2020-03-19 21:40:56', null, '3', '111097149991547601232', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImE1NDFkNmVmMDIyZDc3YTIzMThmN2RkNjU3ZjI3NzkzMjAzYmVkNGEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM5ODY4ODQ2MzI0LTRnaXJhMXB0dHYyMG44cTBrdWx1Y2VtbXBpcmppOWZnLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzOTg2ODg0NjMyNC0zdHVidGJvZGFjcWd2dG90NXZwcGJta2dhMDNoaW4zMy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjExMTA5NzE0OTk5MTU0NzYwMTIzMiIsImVtYWlsIjoic3VyeWFsYWtzaGE5NEBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwibmFtZSI6InN1cnlhIGxha3NoYSIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLXZybEZBbXBRQTl3L0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FLRjA1bkFMcUNpa1QtRkNSRGl5cURvMWlldkV1bkNFOUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6InN1cnlhIiwiZmFtaWx5X25hbWUiOiJsYWtzaGEiLCJsb2NhbGUiOiJlbiIsImlhdCI6MTU4NDY1MDQ1NCwiZXhwIjoxNTg0NjU0MDU0fQ.T5tB7-1mU7-E5UEvVpGXcMGUbM5NpLtoWXf8-7_GOL4RlWjDWugbPF-46j1h_6ojl37lOpgWYUnyFh0BieBF3ZgpHawcva0lxpRmOUESVRfKy_J-uE84x-l8DcfZDPxE7chAKpxx4Dp0oTsrJ6jAIhIq8m95EjsbOrNHlUYpXzykbTCFE4tEu2Q2p_smBTLuXGc_R5mdwsPY4CUl4HdbgnhQ9eJvq4kEYf613XfvohyQLMR1BywZZSj11ZNgBZ-TUWVqD14j7FtugBYflE5ymbNfz023vZu8A5R52j3ZX95jiOAVuaWn_vvhbL1sX8eSeX7a_EVICaAD_y3AYUg6Gw', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImNiNDA0MzgzODQ0YjQ2MzEyNzY5YmI5MjllY2VjNTdkMGFkOGUzYmIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxODE1NDkwMTAzNjItMmo5cDlpZWZmdWZuZTd2Z3Q2bTJ2bXVjY29xMGtxMXIuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIxODE1NDkwMTAzNjItMmo5cDlpZWZmdWZuZTd2Z3Q2bTJ2bXVjY29xMGtxMXIuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTEwOTcxNDk5OTE1NDc2MDEyMzIiLCJlbWFpbCI6InN1cnlhbGFrc2hhOTRAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF0X2hhc2giOiJoSzNiRzR4TkpiZGtENW1yVUpvOFd3Iiwibm9uY2UiOiJKVUhDM3p0dTZsWkJxVzJObkUwNkNSNFpJbkpRZXA3cmFJTW1CMXowYWdVIiwibmFtZSI6InN1cnlhIGxha3NoYSIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLXZybEZBbXBRQTl3L0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FLRjA1bkFMcUNpa1QtRkNSRGl5cURvMWlldkV1bkNFOUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6InN1cnlhIiwiZmFtaWx5X25hbWUiOiJsYWtzaGEiLCJsb2NhbGUiOiJlbiIsImlhdCI6MTU4Mzc4Mjg1NywiZXhwIjoxNTgzNzg2NDU3fQ.muFepg-B8hhaDzSE6eQeqXmTftBT99xeX25EogoN62xA1HW6tVUziBfz2KfBrBjoDaG2Sio3eAJIkbX_6Z6hHdBH31k7DOYkThj-0zjdpksoWw3O6WYnSkLrkjZNml-q4by5-uI_RYmx-sYEXD4YIQ05psl3rFUX3SdwInN6kaF9lsxQuZmTm3WSD16ZET6cb7jw7diQEHsXF-LOcZi4j0sxnZQPTCKwbk2Zz-jsZ4Lb6dZVU-o1d6-n0MOAOz8AMAc6a-1vRrlmgbbc8_NRhnItI5d0i34AjK37EsDASOfcJhty0jaaCFcUFnqsQiGSK9hONjTdFN9RiR53cvBbaA', '1', 'https://lh4.googleusercontent.com/-vrlFAmpQA9w/AAAAAAAAAAI/AAAAAAAAAAA/AKF05nALqCikT-FCRDiyqDo1ievEunCE9A/s96-c/photo.jpg');
INSERT INTO `provider_users` VALUES ('13', '2020-03-15 13:10:53', '2020-04-12 20:51:02', null, '3', '107935821312043560236', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM5ODY4ODQ2MzI0LTRnaXJhMXB0dHYyMG44cTBrdWx1Y2VtbXBpcmppOWZnLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzOTg2ODg0NjMyNC0zdHVidGJvZGFjcWd2dG90NXZwcGJta2dhMDNoaW4zMy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjEwNzkzNTgyMTMxMjA0MzU2MDIzNiIsImVtYWlsIjoid29ybGRsaW5lc291dGhhc2lhQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJuYW1lIjoiV29ybGRsaW5lIFNvdXRoIEFzaWEiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDYuZ29vZ2xldXNlcmNvbnRlbnQuY29tLy13czZ5TzRmMUFPYy9BQUFBQUFBQUFBSS9BQUFBQUFBQUFBQS9BQUtXSkpPYmhpUjFGX0FQVVdQeDk3TUk3eUFMVzJkLUFBL3M5Ni1jL3Bob3RvLmpwZyIsImdpdmVuX25hbWUiOiJXb3JsZGxpbmUiLCJmYW1pbHlfbmFtZSI6IlNvdXRoIEFzaWEiLCJsb2NhbGUiOiJlbiIsImlhdCI6MTU4NjcxNzQ2MCwiZXhwIjoxNTg2NzIxMDYwfQ.wXe9h6ovRqHmIBWGhNVuJtR8lsScWDY9EPPKDYM5qVNmkYJ57dLS7i-iW-8Hcn0-qQouG3N3omjrv_8jAY1pkdg92ilEXRnMrcxqFZDQ4800L4vFikva1g_D0jV2wVpm4lkrfmjsZ9vOiZVGOa-IiW09FeMpQQD-p2frFoBQqSYjT-hEwZpS-yNSv7-mkmK6jQitYmWBNV6w_1h_RxVcY4-3uh50LOeXw5CfM8OtKO7n4ahvJbUGHwiCqbkTDM-_q-yU8ZVbCzIeRY1faPuqn_ecKyjgwRtZIj79tTPeBXNPcuOiwiRjepQAfBxK0gL40_0DvTAlDwyf6QcRbYXlkQ', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImE1NDFkNmVmMDIyZDc3YTIzMThmN2RkNjU3ZjI3NzkzMjAzYmVkNGEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM5ODY4ODQ2MzI0LTRnaXJhMXB0dHYyMG44cTBrdWx1Y2VtbXBpcmppOWZnLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzOTg2ODg0NjMyNC0zdHVidGJvZGFjcWd2dG90NXZwcGJta2dhMDNoaW4zMy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjEwNzkzNTgyMTMxMjA0MzU2MDIzNiIsImVtYWlsIjoid29ybGRsaW5lc291dGhhc2lhQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJuYW1lIjoiV29ybGRsaW5lIFNvdXRoIEFzaWEiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDYuZ29vZ2xldXNlcmNvbnRlbnQuY29tLy13czZ5TzRmMUFPYy9BQUFBQUFBQUFBSS9BQUFBQUFBQUFBQS9BS0YwNW5CX0pUUDRGaUowRi1UXzVoQVY3Z05pUGpOa0hnL3M5Ni1jL3Bob3RvLmpwZyIsImdpdmVuX25hbWUiOiJXb3JsZGxpbmUiLCJmYW1pbHlfbmFtZSI6IlNvdXRoIEFzaWEiLCJsb2NhbGUiOiJlbiIsImlhdCI6MTU4NDI3NDI1MSwiZXhwIjoxNTg0Mjc3ODUxfQ.CjbikuLr5kCA1Q3FpB-991kOnq9sChFsG_jH5J0r_0ACKopVMPC7SHpHB2VMo5d5E5MTMKq7KjyOFeBf2AGubNHmQSq0LPoGPEUs2eEofzWsw3oS6AY14RTRQv089fIcvuUk0iZFVwagPRlcCk9VCM8039tmjVydnIvGEowW_Y8g9e_Yw6rYqT41rPMKRHQHHTORIGKHAHSAaGIwJpefKhYXHSdoi8l1Vz2OKUDB-rxtH-Cmw_stN0VCya0ySDSJLtuKpIcAfEifaYVNuxKvETs9PrOg43-ThZc1vakPPp-uK17xa-CF80VgmCK_HgYzVD8UGNqHEtZQtHEMdw1XYQ', '1', 'https://lh6.googleusercontent.com/-ws6yO4f1AOc/AAAAAAAAAAI/AAAAAAAAAAA/AKF05nB_JTP4FiJ0F-T_5hAV7gNiPjNkHg/s96-c/photo.jpg');
INSERT INTO `provider_users` VALUES ('14', '2020-03-27 18:41:27', '2020-03-27 18:41:27', null, '3', '111586717682476515298', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjUzYzY2YWFiNTBjZmRkOTFhMTQzNTBhNjY0ODJkYjM4MDBjODNjNjMiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM5ODY4ODQ2MzI0LTRnaXJhMXB0dHYyMG44cTBrdWx1Y2VtbXBpcmppOWZnLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzOTg2ODg0NjMyNC0zdHVidGJvZGFjcWd2dG90NXZwcGJta2dhMDNoaW4zMy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjExMTU4NjcxNzY4MjQ3NjUxNTI5OCIsImVtYWlsIjoiaGFyaXNoNDgyM0BnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwibmFtZSI6IkhhcmlzaCBSYWoiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2cxbXhxUmxTTUdxanBOZkxVeWhxTmVhc1dodGM3R1c3NjdQeTRPPXM5Ni1jIiwiZ2l2ZW5fbmFtZSI6IkhhcmlzaCIsImZhbWlseV9uYW1lIjoiUmFqIiwibG9jYWxlIjoiZW4tR0IiLCJpYXQiOjE1ODUzMzA4ODEsImV4cCI6MTU4NTMzNDQ4MX0.FYCPPaF5rkqcWS1w8lS96F5_sUXc8AI9rpeuzRL4jt-JXkYFzruRZPV0p2XlHlPIVvkImOfXOsZAVQ1BneFQxoGenJDNaESNdp4pUk0hmhRkuqk65vyRkMKELN43xwctmiTZVorYfZjqG4ccz-mIOfXOmMbq6aXsftFEa0zbHmb2UHrYhcLgZXRelsk2gEAkZ_UoUs4n_uPyM1uKxkKrQ4BOsh4ULr09k1dg3qOrPJTN-rW1ROD21DpnkF_1kS-Q2vXUiZNc49KraAAYG_72tX_V88-Y4kujAD6vw2pRvN20WHC-IGQYcYMV6aBoK89Geco1LKrSTLWW-XMYVoSj8Q', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjUzYzY2YWFiNTBjZmRkOTFhMTQzNTBhNjY0ODJkYjM4MDBjODNjNjMiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM5ODY4ODQ2MzI0LTRnaXJhMXB0dHYyMG44cTBrdWx1Y2VtbXBpcmppOWZnLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzOTg2ODg0NjMyNC0zdHVidGJvZGFjcWd2dG90NXZwcGJta2dhMDNoaW4zMy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjExMTU4NjcxNzY4MjQ3NjUxNTI5OCIsImVtYWlsIjoiaGFyaXNoNDgyM0BnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwibmFtZSI6IkhhcmlzaCBSYWoiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2cxbXhxUmxTTUdxanBOZkxVeWhxTmVhc1dodGM3R1c3NjdQeTRPPXM5Ni1jIiwiZ2l2ZW5fbmFtZSI6IkhhcmlzaCIsImZhbWlseV9uYW1lIjoiUmFqIiwibG9jYWxlIjoiZW4tR0IiLCJpYXQiOjE1ODUzMzA4ODEsImV4cCI6MTU4NTMzNDQ4MX0.FYCPPaF5rkqcWS1w8lS96F5_sUXc8AI9rpeuzRL4jt-JXkYFzruRZPV0p2XlHlPIVvkImOfXOsZAVQ1BneFQxoGenJDNaESNdp4pUk0hmhRkuqk65vyRkMKELN43xwctmiTZVorYfZjqG4ccz-mIOfXOmMbq6aXsftFEa0zbHmb2UHrYhcLgZXRelsk2gEAkZ_UoUs4n_uPyM1uKxkKrQ4BOsh4ULr09k1dg3qOrPJTN-rW1ROD21DpnkF_1kS-Q2vXUiZNc49KraAAYG_72tX_V88-Y4kujAD6vw2pRvN20WHC-IGQYcYMV6aBoK89Geco1LKrSTLWW-XMYVoSj8Q', '1', 'https://lh3.googleusercontent.com/a-/AOh14Gg1mxqRlSMGqjpNfLUyhqNeasWhtc7GW767Py4O=s96-c');
INSERT INTO `provider_users` VALUES ('15', '2020-04-12 20:51:51', '2020-04-12 20:51:51', null, '3', '111532092309084639686', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM5ODY4ODQ2MzI0LTRnaXJhMXB0dHYyMG44cTBrdWx1Y2VtbXBpcmppOWZnLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzOTg2ODg0NjMyNC0zdHVidGJvZGFjcWd2dG90NXZwcGJta2dhMDNoaW4zMy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjExMTUzMjA5MjMwOTA4NDYzOTY4NiIsImVtYWlsIjoia2FydGhpbnJhakBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwibmFtZSI6ImthcnRoaWNrIHJhaiIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLVVUeThCNmRPejNjL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSk10TlBUb2VmZTI1SVBsWGhGQUdpT1MzRV9KSlEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6ImthcnRoaWNrIiwiZmFtaWx5X25hbWUiOiJyYWoiLCJsb2NhbGUiOiJlbiIsImlhdCI6MTU4NjcxNzUxMCwiZXhwIjoxNTg2NzIxMTEwfQ.JJq_8_AcAtncp5nXoWIYxuK3AxStrXgAgEf63_FaLubdoERq0UPA99TdSHG0VGVHEUn4kTIfhvllINT2b2vmUdQMCm1BCI06xK6YRYpE-mtFfxjfABb-YpG4btfLfJCeo-nEV3COL20mLaLBjk91AAcFVFC_ITRCQEtIWGpmMsY4SP9bPDbSLvEDhQxzHnT7PLvbeCZ6igNBkpbRthEVHMcxSYfhfHFfC5xdgYU03C-wgOr2x_kyyi-_v4jw2c886a84TB_flFXjnJlpetNOPBLrNIE4Uon473BblqGHOCo7WRbOXWpKOUyz-0npl5LBu0yirCQNT5Sw-z2GhTSaSA', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM5ODY4ODQ2MzI0LTRnaXJhMXB0dHYyMG44cTBrdWx1Y2VtbXBpcmppOWZnLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzOTg2ODg0NjMyNC0zdHVidGJvZGFjcWd2dG90NXZwcGJta2dhMDNoaW4zMy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjExMTUzMjA5MjMwOTA4NDYzOTY4NiIsImVtYWlsIjoia2FydGhpbnJhakBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwibmFtZSI6ImthcnRoaWNrIHJhaiIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLVVUeThCNmRPejNjL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSk10TlBUb2VmZTI1SVBsWGhGQUdpT1MzRV9KSlEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6ImthcnRoaWNrIiwiZmFtaWx5X25hbWUiOiJyYWoiLCJsb2NhbGUiOiJlbiIsImlhdCI6MTU4NjcxNzUxMCwiZXhwIjoxNTg2NzIxMTEwfQ.JJq_8_AcAtncp5nXoWIYxuK3AxStrXgAgEf63_FaLubdoERq0UPA99TdSHG0VGVHEUn4kTIfhvllINT2b2vmUdQMCm1BCI06xK6YRYpE-mtFfxjfABb-YpG4btfLfJCeo-nEV3COL20mLaLBjk91AAcFVFC_ITRCQEtIWGpmMsY4SP9bPDbSLvEDhQxzHnT7PLvbeCZ6igNBkpbRthEVHMcxSYfhfHFfC5xdgYU03C-wgOr2x_kyyi-_v4jw2c886a84TB_flFXjnJlpetNOPBLrNIE4Uon473BblqGHOCo7WRbOXWpKOUyz-0npl5LBu0yirCQNT5Sw-z2GhTSaSA', '1', 'https://lh4.googleusercontent.com/-UTy8B6dOz3c/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJMtNPToefe25IPlXhFAGiOS3E_JJQ/s96-c/photo.jpg');
INSERT INTO `provider_users` VALUES ('16', '2020-10-28 00:52:31', '2020-10-28 00:52:31', null, '3', '115598465570262196664', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImQwNWVmMjBjNDUxOTFlZmY2NGIyNWQzODBkNDZmZGU1NWFjMjI5ZDEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxODE1NDkwMTAzNjItMmo5cDlpZWZmdWZuZTd2Z3Q2bTJ2bXVjY29xMGtxMXIuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIxODE1NDkwMTAzNjItMmo5cDlpZWZmdWZuZTd2Z3Q2bTJ2bXVjY29xMGtxMXIuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTU1OTg0NjU1NzAyNjIxOTY2NjQiLCJoZCI6Im1lYWxicml0ZS5jb20iLCJlbWFpbCI6Im11cnVnYW5AbWVhbGJyaXRlLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiXzdjbzJNRld6OHoySjFwM2lSRVdKQSIsIm5vbmNlIjoiTlJiVExUNjNsM3JQcDlMcjFWYlRKbXE1emR3TmNlVndzR25wZ0NjaWZpQSIsIm5hbWUiOiJNdXJ1Z2FuIElvcyIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLWY3Z0RhU1BBSjZ3L0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FNWnV1Y25Gc28tR1Z4S3M3WmV2RkNfcVFhWEFNTERwR0Evczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6Ik11cnVnYW4iLCJmYW1pbHlfbmFtZSI6IklvcyIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjAzNzk1OTQ5LCJleHAiOjE2MDM3OTk1NDl9.UbP8_Hx-oL0Z-GLewTjzJF0njyOY2-6cf8sbZhUtbuUKehbSWVNq_OL2YOZclISJcGGd3BJdDAt2exhu9iaxKOVbER9LIQEqhHZKhZT8fowVIdsvR2hc0donZh_apQcuqnqaGH9f1Iar0L-k83iTh_J5Il7VcUDLkmcAK4Q6-tw8zNj21BAmmDNibAYsEMJ9H-ZoSA0Q9yxYQow-18tG_VQTUbLgDgMYuDbviFaasFTXCP5TuBRiY0S_sH4RHCEcnEVA98dXT47riCJXLyTH4IBslO-gnv4j0MBcr9fYrQ_Z1di_fHC0mmyDJiORPNFgROvk2Nb8FwIz9GwJUSUcjw', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImQwNWVmMjBjNDUxOTFlZmY2NGIyNWQzODBkNDZmZGU1NWFjMjI5ZDEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxODE1NDkwMTAzNjItMmo5cDlpZWZmdWZuZTd2Z3Q2bTJ2bXVjY29xMGtxMXIuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIxODE1NDkwMTAzNjItMmo5cDlpZWZmdWZuZTd2Z3Q2bTJ2bXVjY29xMGtxMXIuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTU1OTg0NjU1NzAyNjIxOTY2NjQiLCJoZCI6Im1lYWxicml0ZS5jb20iLCJlbWFpbCI6Im11cnVnYW5AbWVhbGJyaXRlLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiXzdjbzJNRld6OHoySjFwM2lSRVdKQSIsIm5vbmNlIjoiTlJiVExUNjNsM3JQcDlMcjFWYlRKbXE1emR3TmNlVndzR25wZ0NjaWZpQSIsIm5hbWUiOiJNdXJ1Z2FuIElvcyIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLWY3Z0RhU1BBSjZ3L0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FNWnV1Y25Gc28tR1Z4S3M3WmV2RkNfcVFhWEFNTERwR0Evczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6Ik11cnVnYW4iLCJmYW1pbHlfbmFtZSI6IklvcyIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjAzNzk1OTQ5LCJleHAiOjE2MDM3OTk1NDl9.UbP8_Hx-oL0Z-GLewTjzJF0njyOY2-6cf8sbZhUtbuUKehbSWVNq_OL2YOZclISJcGGd3BJdDAt2exhu9iaxKOVbER9LIQEqhHZKhZT8fowVIdsvR2hc0donZh_apQcuqnqaGH9f1Iar0L-k83iTh_J5Il7VcUDLkmcAK4Q6-tw8zNj21BAmmDNibAYsEMJ9H-ZoSA0Q9yxYQow-18tG_VQTUbLgDgMYuDbviFaasFTXCP5TuBRiY0S_sH4RHCEcnEVA98dXT47riCJXLyTH4IBslO-gnv4j0MBcr9fYrQ_Z1di_fHC0mmyDJiORPNFgROvk2Nb8FwIz9GwJUSUcjw', '1', 'https://lh4.googleusercontent.com/-f7gDaSPAJ6w/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnFso-GVxKs7ZevFC_qQaXAMLDpGA/s96-c/photo.jpg');

-- ----------------------------
-- Table structure for `push_notifications`
-- ----------------------------
DROP TABLE IF EXISTS `push_notifications`;
CREATE TABLE `push_notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `body` longtext NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of push_notifications
-- ----------------------------

-- ----------------------------
-- Table structure for `register_temp`
-- ----------------------------
DROP TABLE IF EXISTS `register_temp`;
CREATE TABLE `register_temp` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of register_temp
-- ----------------------------

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `roles_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', '2016-10-12 19:16:55', '2016-10-12 19:16:55', 'Admin', '1');
INSERT INTO `roles` VALUES ('2', '2016-10-12 19:16:55', '2016-10-12 19:16:55', 'User', '1');
INSERT INTO `roles` VALUES ('3', '2017-01-06 12:11:52', '2017-01-06 12:11:52', 'Employer', '1');
INSERT INTO `roles` VALUES ('4', '2017-01-06 12:11:52', '2017-01-06 12:11:52', 'Company', '1');

-- ----------------------------
-- Table structure for `schedule_test`
-- ----------------------------
DROP TABLE IF EXISTS `schedule_test`;
CREATE TABLE `schedule_test` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `center_id` bigint(20) NOT NULL,
  `test_type_id` bigint(20) NOT NULL,
  `reg_date` date NOT NULL,
  `from_timeslot` varchar(500) NOT NULL,
  `qr_code` varchar(500) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT '15',
  `is_paid` tinyint(1) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `two_day_notify` int(11) NOT NULL DEFAULT '0',
  `two_hour_notify` int(11) NOT NULL DEFAULT '0',
  `card_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_type_id` (`test_type_id`),
  CONSTRAINT `schedule_test_ibfk_1` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of schedule_test
-- ----------------------------

-- ----------------------------
-- Table structure for `settings`
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `setting_category_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `option_values` longtext COLLATE utf8_unicode_ci,
  `reference` longtext COLLATE utf8_unicode_ci,
  `is_web` tinyint(1) NOT NULL DEFAULT '1',
  `is_mobile` tinyint(1) NOT NULL DEFAULT '0',
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `settings_setting_category_id` (`setting_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=656 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', '2016-05-30 12:25:53', '2020-12-07 08:38:31', '1', 'SITE_FROM_EMAIL', 'freelanceratoz@gmail.com', 'You can change this email address so that \'From\' email will be changed in all email communication.', 'text', 'From Email Address', '1', null, null, '0', '0', '0', '1');
INSERT INTO `settings` VALUES ('2', '2016-05-30 12:25:53', '2020-12-07 08:38:31', '1', 'SITE_CONTACT_EMAIL', 'freelanceratoz@gmail.com', 'Contact email', 'test', 'Contact Email', '3', null, null, '0', '0', '0', '1');
INSERT INTO `settings` VALUES ('3', '2016-05-30 12:17:27', '2020-12-07 08:38:31', '1', 'SITE_REPLY_TO_EMAIL', 'freelanceratoz@gmail.com', 'You can change this email address so that \'Reply To\' email will be changed in all email communication.', 'text', 'Reply To Email Address', '2', null, null, '0', '0', '0', '1');
INSERT INTO `settings` VALUES ('4', '2016-05-30 12:25:53', '2020-12-07 08:38:31', '1', 'SUPPORT_EMAIL', 'freelanceratoz@gmail.com', 'Support email', 'text', 'Support Email Address', '4', null, null, '0', '0', '0', '1');
INSERT INTO `settings` VALUES ('5', '2016-05-30 12:25:53', '2020-12-07 08:38:31', '1', 'SITE_NAME', '', 'This name will be used in all pages and emails.', 'text', 'Site name', '1', null, null, '1', '0', '0', '1');
INSERT INTO `settings` VALUES ('11', '2016-05-30 12:25:53', '2016-05-30 12:25:53', '3', 'SITE_LANGUAGE', 'en', 'The selected language will be used as default language all over the site.', 'select', 'Site language ', '1', null, null, '1', '1', '0', '0');
INSERT INTO `settings` VALUES ('12', '2016-05-30 12:25:53', '2016-05-30 12:24:36', '3', 'CURRENCY_SYMBOL', '$', 'Site Currency symbol of PayPal Currency Code. eg. $ for USD', 'text', 'Site Currency Symbol', '1', null, null, '1', '1', '0', '1');
INSERT INTO `settings` VALUES ('13', '2016-05-30 12:17:27', '2016-05-30 12:17:27', '3', 'CURRENCY_CODE', 'USD', 'PayPal doesnt support all currencies; refer, <a href=\"https://www.paypal.com/cgi-bin/webscr?cmd=p/sell/mc/mc_wa-outside\">https://www.paypal.com/cgi-bin/webscr?cmd=p/sell/mc/mc_wa-outside</a> for list of supported currencies in PayPal. The selected currency will be used as site default currency. (All payments, transaction will use this currency).', 'text', 'Currency Code', '2', '', null, '1', '0', '0', '1');
INSERT INTO `settings` VALUES ('14', '2016-05-30 12:24:36', '2016-05-30 12:24:36', '4', 'USER_IS_ALLOW_SWITCH_LANGUAGE', '1', 'On enabling this feature, users can change site language to their choice.', 'checkbox', 'Enable User to Switch Language', '1', null, null, '1', '0', '0', '0');
INSERT INTO `settings` VALUES ('15', '2016-05-30 12:17:27', '2016-05-30 12:17:27', '4', 'USER_USING_TO_LOGIN', 'email', 'You can select the option from the drop-downs to login into the site', 'select', 'Login Handle', '1', 'username,email', null, '1', '0', '0', '1');
INSERT INTO `settings` VALUES ('19', '2016-05-30 12:17:27', '2016-05-30 12:17:27', '4', 'USER_IS_ADMIN_ACTIVATE_AFTER_REGISTER', '0', 'On enabling this feature, the user will not be able to login until the Admin (that will be you) approves their registration.', 'checkbox', 'Enable Administrator Approval After Registration', '1', null, null, '1', '0', '0', '1');
INSERT INTO `settings` VALUES ('20', '2016-05-30 12:17:27', '2016-05-30 12:17:27', '4', 'USER_IS_EMAIL_VERIFICATION_FOR_REGISTER', '1', 'On enabling this feature, the users are required to verify their email address which will be provided by them during registration. (Users cannot login until the email address is verified)', 'checkbox', 'Enable Email Verification After Registration', '2', null, null, '1', '0', '0', '1');
INSERT INTO `settings` VALUES ('21', '2016-05-30 12:17:27', '2016-05-30 12:17:27', '4', 'USER_IS_AUTO_LOGIN_AFTER_REGISTER', '1', 'On enabling this feature, users will be automatically logged-in after registration. (Only when \"Email Verification\" & \"Admin Approval\" is disabled)', 'checkbox', 'Enable Auto Login After Registration', '3', null, null, '1', '1', '0', '1');
INSERT INTO `settings` VALUES ('22', '2016-05-30 12:17:27', '2016-05-30 12:17:27', '5', 'WALLET_MIN_WALLET_AMOUNT', '10', 'This is the minimum amount a user can add to his wallet.', 'text', 'Minimum wallet amount', '1', null, null, '1', '0', '0', '1');
INSERT INTO `settings` VALUES ('23', '2016-05-30 12:24:36', '2016-05-30 12:24:36', '5', 'WALLET_MAX_WALLET_AMOUNT', '20000', 'This is the maximum amount a user can add to his wallet. (If left empty, then, no maximum amount restrictions).', 'text', 'Maximum wallet amount', '2', null, null, '1', '0', '0', '1');
INSERT INTO `settings` VALUES ('24', '2016-05-30 12:24:36', '2016-05-30 12:24:36', '6', 'USER_MINIMUM_WITHDRAW_AMOUNT', '2', 'This is the minimum amount a user can withdraw from their wallet.', 'text', 'Minimum Withdrawal Amount', '1', null, null, '1', '0', '0', '1');
INSERT INTO `settings` VALUES ('27', '2016-05-30 12:17:27', '2016-05-30 12:17:27', '4', 'USER_IS_LOGOUT_AFTER_CHANGE_PASSWORD', '0', 'By enabling this feature, When user changes the password, he will automatically log-out.', 'checkbox', 'Enable User to Logout after Password Change', '5', null, null, '1', '1', '0', '1');
INSERT INTO `settings` VALUES ('28', '2016-05-30 12:17:27', '2016-05-30 12:17:27', '4', 'USER_IS_WELCOME_MAIL_AFTER_REGISTER', '0', 'On enabling this feature, users will receive a welcome mail after registration.', 'checkbox', 'Enable Sending Welcome Mail After Registration', '6', null, null, '0', '0', '0', '1');
INSERT INTO `settings` VALUES ('29', '2016-05-30 12:17:27', '2016-05-30 12:17:27', '4', 'USER_IS_ADMIN_MAIL_AFTER_REGISTER', '0', 'On enabling this feature, notification mail will be sent to administrator on each registration.', 'checkbox', 'Enable Notify Administrator on Each Registration', '7', null, null, '0', '0', '0', '1');
INSERT INTO `settings` VALUES ('30', '2016-05-30 12:17:27', '2016-05-30 12:17:27', '4', 'USER_IS_CAPTCHA_ENABLED_FORGOT_PASSWORD', '0', 'On enabling this feature, captcha will display forgot password page.', 'checkbox', 'Enable Captcha Forgot password', '8', null, null, '1', '0', '0', '0');
INSERT INTO `settings` VALUES ('480', '2016-08-10 12:25:53', '2016-12-10 11:17:57', '0', 'SITE_DOMAIN_SECRET_HASH', '0614868e-ad76-413b-a991-4fa3ef440b3c', 'Zazpay Domain Secret Hash', 'text', 'Zazpay Domain Secret hash', '0', null, null, '0', '0', '0', '1');
INSERT INTO `settings` VALUES ('485', '2016-11-28 11:29:32', '2016-11-28 11:29:32', '133', 'WATERMARK_TEXT', 'IMA', '', 'text', 'Watermark Text', '10', null, null, '0', '0', '0', '0');
INSERT INTO `settings` VALUES ('486', '2016-11-28 11:29:32', '2016-11-28 11:29:32', '133', 'WATERMARK_POSITION_Y', '73', '', 'text', 'Y Position of Watermark', '11', null, null, '0', '0', '0', '0');
INSERT INTO `settings` VALUES ('487', '2016-11-28 11:29:32', '2016-11-28 11:29:32', '133', 'WATERMARK_POSITION_X', '30', '', 'text', 'X Position of Watermark', '12', null, null, '0', '0', '0', '0');
INSERT INTO `settings` VALUES ('488', '2016-11-28 11:29:32', '2016-11-28 11:29:32', '133', 'WATERMARK_IMAGE', 'logo.png', 'Upload JPG, PNG or GIF image to be used as watermark. PNG images with transparency give the best results.', 'file', 'Watermark Image', '13', null, null, '0', '0', '0', '0');
INSERT INTO `settings` VALUES ('489', '2016-11-28 11:29:32', '2016-11-28 11:29:32', '133', 'WATERMARK_TYPE', 'Watermark Image', 'By selecting the water mark type can be changed.', 'radio', 'Watermark Type', '14', 'Watermark Image,Enable Text Watermark', null, '0', '0', '0', '0');
INSERT INTO `settings` VALUES ('504', '2016-12-09 06:16:22', '2020-12-07 08:38:31', '1', 'SITE_FACEBOOK_URL', 'https://www.facebook.com/imp', '', 'text', 'Site Facebook URL', '6', null, null, '1', '0', '0', '1');
INSERT INTO `settings` VALUES ('505', '2016-12-09 20:13:57', '2020-12-07 08:38:31', '1', 'SITE_TWITTER_URL', 'https://twitter.com/imp', null, 'text', 'Site Twitter URL', '7', null, null, '1', '0', '0', '1');
INSERT INTO `settings` VALUES ('506', '2016-12-09 06:16:22', '2020-12-07 08:38:31', '1', 'SITE_YOUTUBE_URL', 'https://www.youtube.com/channel/UCcxmjGrb-E8CKXFv2RKOG5A', null, 'text', 'Site Youtube URL', '8', null, null, '1', '0', '0', '1');
INSERT INTO `settings` VALUES ('570', '2016-12-20 15:09:42', '2020-12-07 08:38:31', '1', 'SITE_INSTAGRAM_URL', null, 'This is the site\'s \"Instagram\" url displayed in the footer.', 'text', 'Instagram URL', '16', null, null, '1', '0', '0', '1');
INSERT INTO `settings` VALUES ('594', '2017-03-29 12:25:53', '2017-03-29 12:25:53', '4', 'IS_ENABLED_DUAL_REGISTER', '1', 'On enabling this option, system will allow users to register both Employer and Freelancer', 'checkbox', 'Enable dual registration (Both Employer & Freelancer)', '10', null, null, '1', '0', '0', '0');
INSERT INTO `settings` VALUES ('597', '2017-05-18 12:17:27', '2017-05-18 12:17:27', '133', 'MAX_UPLOAD_SIZE_OF_USER_AVATAR', '20', 'By changing this value allowed user avatar size will be changed. (In MB). Leave it blank for no validation.', 'text', 'Maximum allowed file size for user avatar', '5', null, null, '1', '1', '0', '1');
INSERT INTO `settings` VALUES ('598', '2017-05-18 12:17:27', '2017-05-18 12:17:27', '133', 'ALLOWED_MIME_TYPES_OF_USER_AVATAR', 'image/jpeg,image/jpg,image/png', 'By changing this value allowed mimetype will be changed. System will validate user\'s file with this list. Leave it blank for no validation.\r\n', 'text', 'Allowed mime type for user avatar', '6', null, null, '1', '1', '0', '1');
INSERT INTO `settings` VALUES ('599', '2017-05-18 12:17:27', '2017-05-18 12:17:27', '133', 'ALLOWED_EXTENSIONS_OF_USER_AVATAR', 'jpg,jpeg,png', 'By changing this value allowed extension will be changed. This will only display in user end near browse file button.', 'text', 'Allowed file extension for user avatar', '7', null, null, '1', '1', '0', '1');
INSERT INTO `settings` VALUES ('623', '2017-05-22 11:29:32', '2020-12-07 08:38:31', '1', 'CAPTCHA_TYPE', 'Normal', '', 'options', 'Captcha Type', '17', 'Normal,Google reCAPTCHA', null, '1', '0', '0', '1');
INSERT INTO `settings` VALUES ('624', '2017-06-13 13:27:25', '2020-12-07 08:38:31', '1', 'SITE_TIMEZONE', 'Pacific/Apia', 'This is the site timezone that will used for all the time displaying.', 'select', 'Site Timezone', '0', null, '/timezones', '1', '0', '0', '1');
INSERT INTO `settings` VALUES ('638', '2016-05-30 12:25:53', '2016-05-30 12:24:36', '3', 'SHOW_CURRENCY_SYMBOL', 'true', 'Site Currency symbol of PayPal Currency Code. eg. $ for USD', 'boolean', 'Site Currency Symbol', '1', null, null, '0', '0', '0', '1');
INSERT INTO `settings` VALUES ('639', '2017-05-18 12:17:27', '2017-05-18 12:17:27', '133', 'MAX_UPLOAD_SIZE_OF_USER_PROFILE', '20', 'By changing this value allowed user avatar size will be changed. (In MB). Leave it blank for no validation.', 'text', 'Maximum allowed file size for user avatar', '5', null, null, '1', '1', '0', '1');
INSERT INTO `settings` VALUES ('640', '2017-05-18 12:17:27', '2017-05-18 12:17:27', '133', 'ALLOWED_MIME_TYPES_OF_USER_PROFILE', 'image/jpeg,image/jpg,image/gif,image/png,video/mp4', 'By changing this value allowed mimetype will be changed. System will validate user\'s file with this list. Leave it blank for no validation.\r\n', 'text', 'Allowed mime type for user avatar', '6', null, null, '1', '1', '0', '1');
INSERT INTO `settings` VALUES ('641', '2017-05-18 12:17:27', '2017-05-18 12:17:27', '4', 'ALLOWED_EXTENSIONS_OF_USER_PROFILE', 'jpg,jpeg,gif,png,mp4', 'By changing this value allowed extension will be changed. This will only display in user end near browse file button.', 'text', 'Allowed file extension for user profile', '7', null, null, '1', '1', '0', '1');
INSERT INTO `settings` VALUES ('642', '2017-05-18 12:17:27', '2017-05-18 12:17:27', '133', 'MAX_UPLOAD_SIZE_OF_PRODUCT', '20', 'By changing this value allowed user avatar size will be changed. (In MB). Leave it blank for no validation.', 'text', 'Maximum allowed file size for user avatar', '5', null, null, '1', '1', '0', '0');
INSERT INTO `settings` VALUES ('643', '2017-05-18 12:17:27', '2017-05-18 12:17:27', '133', 'ALLOWED_MIME_TYPES_OF_PRODUCT', 'image/jpeg,image/jpg,image/gif,image/png', 'By changing this value allowed mimetype will be changed. System will validate user\'s file with this list. Leave it blank for no validation.\r\n', 'text', 'Allowed mime type for user avatar', '6', null, null, '1', '1', '0', '0');
INSERT INTO `settings` VALUES ('644', '2017-05-18 12:17:27', '2017-05-18 12:17:27', '133', 'ALLOWED_EXTENSIONS_OF_PRODUCT', 'jpg,jpeg,gif,png', 'By changing this value allowed extension will be changed. This will only display in user end near browse file button.', 'text', 'Allowed file extension for user avatar', '7', null, null, '1', '1', '0', '0');
INSERT INTO `settings` VALUES ('645', '2017-05-18 12:17:27', '2017-05-18 12:17:27', '133', 'MAX_UPLOAD_FILES_USER_PROFILE', '5', 'By changing this value allowed user avatar size will be changed. (In MB). Leave it blank for no validation.', 'text', 'Maximum allowed file size for user profile', '5', null, null, '1', '1', '0', '1');
INSERT INTO `settings` VALUES ('646', '2016-11-25 11:29:32', '2016-11-25 11:29:32', '9', 'CONTEST_END_DATE', '2021-01-01', '', 'text', 'Contest End Date', '2', null, null, '1', '1', '0', '1');
INSERT INTO `settings` VALUES ('647', '2016-11-25 11:29:32', '2016-11-25 11:29:32', '133', 'USERPROFILE_VIDEO_LENGTH', '10', '', 'text', 'Userprofile Video Length in secs', '2', null, null, '1', '1', '0', '1');
INSERT INTO `settings` VALUES ('648', '2016-05-30 12:25:53', '2020-04-19 08:33:03', '134', 'SITE_FEE', '15', 'Covid Test Fee', 'text', 'Covid Test Fee', '1', null, null, '0', '1', '0', '1');
INSERT INTO `settings` VALUES ('655', '2016-05-30 12:25:53', '2020-12-07 08:38:31', '1', 'CART_MAX_AMOUNT', '10000', 'This will restrict the total amount checkout in cart', 'text', 'Cart Total Amount Checkout Restriction', '1', null, null, '1', '0', '0', '1');

-- ----------------------------
-- Table structure for `setting_categories`
-- ----------------------------
DROP TABLE IF EXISTS `setting_categories`;
CREATE TABLE `setting_categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `setting_categories_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of setting_categories
-- ----------------------------
INSERT INTO `setting_categories` VALUES ('1', '2016-05-30 12:17:27', '2016-05-30 12:17:27', 'System', 'Manage site name, contact email, from email and reply to email.', '1');
INSERT INTO `setting_categories` VALUES ('2', '2016-05-30 12:17:27', '2016-05-30 12:17:27', 'SEO', 'Manage content, meta data and other information relevant to browsers or search engines.', '0');
INSERT INTO `setting_categories` VALUES ('3', '2016-05-30 12:24:36', '2016-05-30 12:24:36', 'Regional, Currency', 'Manage site currency', '1');
INSERT INTO `setting_categories` VALUES ('4', '2016-05-30 12:25:53', '2016-05-30 12:25:53', 'Account', 'Manage user account related settings', '1');
INSERT INTO `setting_categories` VALUES ('5', '2016-05-30 12:17:27', '2016-05-30 12:17:27', 'Wallet', 'Manage wallet related settings.', '0');
INSERT INTO `setting_categories` VALUES ('6', '2016-05-30 12:17:27', '2016-05-30 12:17:27', 'Withdrawals', 'Manage withdrawal related settings.', '0');
INSERT INTO `setting_categories` VALUES ('7', '2016-05-30 12:17:27', '2016-05-30 12:17:27', 'Third Party API', 'Manage third party API related settings', '1');
INSERT INTO `setting_categories` VALUES ('9', '2016-11-25 11:29:32', '2016-11-25 11:29:32', 'Contest', 'Manage Contest related settings', '0');
INSERT INTO `setting_categories` VALUES ('133', '2017-05-11 11:29:32', '2017-05-11 11:29:32', 'Image Resource', 'Manage Image Resource related settings', '1');
INSERT INTO `setting_categories` VALUES ('134', '2017-05-11 11:29:32', '2017-05-11 11:29:32', 'Commission', 'Payment Commission', '1');

-- ----------------------------
-- Table structure for `slots`
-- ----------------------------
DROP TABLE IF EXISTS `slots`;
CREATE TABLE `slots` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `center_id` bigint(20) NOT NULL,
  `time_slot_id` bigint(20) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `from_timeslot` varchar(20) NOT NULL,
  `slot_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of slots
-- ----------------------------

-- ----------------------------
-- Table structure for `symptoms`
-- ----------------------------
DROP TABLE IF EXISTS `symptoms`;
CREATE TABLE `symptoms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `level` int(1) NOT NULL DEFAULT '3',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of symptoms
-- ----------------------------
INSERT INTO `symptoms` VALUES ('0', '2019-03-21 03:01:05', '2019-03-21 03:01:05', 'None', '1', '0');
INSERT INTO `symptoms` VALUES ('1', '2020-12-16 06:03:07', '2020-12-16 06:03:07', 'Fever Or Chills', '2', '1');
INSERT INTO `symptoms` VALUES ('2', '2020-12-16 06:03:26', '2020-12-16 06:03:26', 'Cough', '2', '1');
INSERT INTO `symptoms` VALUES ('4', '2020-12-22 08:33:40', '2020-12-22 08:33:40', 'Unusual fatigue', '3', '1');
INSERT INTO `symptoms` VALUES ('5', '2020-12-22 08:34:06', '2020-12-22 08:34:06', 'New loss of taste and/ or smell', '3', '1');
INSERT INTO `symptoms` VALUES ('6', '2020-12-22 08:34:21', '2020-12-22 08:34:21', 'sore throat', '3', '1');
INSERT INTO `symptoms` VALUES ('7', '2020-12-22 08:34:59', '2020-12-22 08:34:59', 'New or increased shortness of breath or difficulty breathing', '3', '1');
INSERT INTO `symptoms` VALUES ('8', '2020-12-22 08:35:38', '2020-12-22 08:35:38', 'loss of appetite', '3', '1');
INSERT INTO `symptoms` VALUES ('9', '2020-12-22 08:36:02', '2020-12-22 08:36:02', 'Diarrhea', '3', '1');
INSERT INTO `symptoms` VALUES ('10', '2020-12-22 08:36:23', '2020-12-22 08:36:23', 'Nauses and vomiting', '3', '1');
INSERT INTO `symptoms` VALUES ('11', '2020-12-22 08:36:43', '2020-12-22 08:36:43', 'New or Increased headache', '3', '1');
INSERT INTO `symptoms` VALUES ('12', '2020-12-22 08:37:03', '2020-12-22 08:37:03', 'None of these above', '3', '1');

-- ----------------------------
-- Table structure for `testing_centers`
-- ----------------------------
DROP TABLE IF EXISTS `testing_centers`;
CREATE TABLE `testing_centers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `island_id` bigint(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `lat` decimal(10,6) NOT NULL,
  `lon` decimal(10,6) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of testing_centers
-- ----------------------------

-- ----------------------------
-- Table structure for `testing_center_types`
-- ----------------------------
DROP TABLE IF EXISTS `testing_center_types`;
CREATE TABLE `testing_center_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `test_type_id` bigint(20) NOT NULL,
  `center_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of testing_center_types
-- ----------------------------

-- ----------------------------
-- Table structure for `test_types`
-- ----------------------------
DROP TABLE IF EXISTS `test_types`;
CREATE TABLE `test_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(500) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of test_types
-- ----------------------------
INSERT INTO `test_types` VALUES ('1', '2020-03-08 10:42:28', '2019-03-21 03:01:05', 'Type 1', '1');
INSERT INTO `test_types` VALUES ('2', '2019-03-21 03:01:05', '2019-03-21 03:01:05', 'Type 2', '1');

-- ----------------------------
-- Table structure for `timezones`
-- ----------------------------
DROP TABLE IF EXISTS `timezones`;
CREATE TABLE `timezones` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `gmt_offset` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dst_offset` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `raw_offset` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hasdst` tinyint(4) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `timezones_name` (`code`(255))
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of timezones
-- ----------------------------
INSERT INTO `timezones` VALUES ('1', '2010-05-10 20:13:09', '2010-05-10 20:13:09', 'Pacific/Apia', '(GMT-11:00) Apia', '-10.0', '-11.0', '-11.0', '1', '1');
INSERT INTO `timezones` VALUES ('2', '2010-05-10 20:13:09', '2010-05-10 20:13:09', 'Pacific/Midway', '(GMT-11:00) Midway', '-11.0', '-11.0', '-11.0', '0', '1');
INSERT INTO `timezones` VALUES ('3', '2010-05-10 20:13:09', '2010-05-10 20:13:09', 'Pacific/Niue', '(GMT-11:00) Niue', '-11.0', '-11.0', '-11.0', '0', '1');
INSERT INTO `timezones` VALUES ('4', '2010-05-10 20:13:09', '2010-05-10 20:13:09', 'Pacific/Pago_Pago', '(GMT-11:00) Pago Pago', '-11.0', '-11.0', '-11.0', '0', '1');
INSERT INTO `timezones` VALUES ('5', '2010-05-10 20:13:09', '2010-05-10 20:13:09', 'Pacific/Fakaofo', '(GMT-10:00) Fakaofo', '-10.0', '-10.0', '-10.0', '0', '1');
INSERT INTO `timezones` VALUES ('6', '2010-05-10 20:13:09', '2010-05-10 20:13:09', 'Pacific/Honolulu', '(GMT-10:00) Hawaii Time', '-10.0', '-10.0', '-10.0', '0', '1');
INSERT INTO `timezones` VALUES ('7', '2010-05-10 20:13:09', '2010-05-10 20:13:09', 'Pacific/Johnston', '(GMT-10:00) Johnston', '-10.0', '-10.0', '-10.0', '0', '1');
INSERT INTO `timezones` VALUES ('8', '2010-05-10 20:13:09', '2010-05-10 20:13:09', 'Pacific/Rarotonga', '(GMT-10:00) Rarotonga', '-10.0', '-10.0', '-10.0', '0', '1');
INSERT INTO `timezones` VALUES ('9', '2010-05-10 20:13:09', '2010-05-10 20:13:09', 'Pacific/Tahiti', '(GMT-10:00) Tahiti', '-10.0', '-10.0', '-10.0', '0', '1');
INSERT INTO `timezones` VALUES ('10', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'Pacific/Marquesas', '(GMT-09:30) Marquesas', '-9.5', '-9.5', '-9.5', '0', '1');
INSERT INTO `timezones` VALUES ('11', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Anchorage', '(GMT-09:00) Alaska Time', '-9.0', '-8.0', '-9.0', '1', '1');
INSERT INTO `timezones` VALUES ('12', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'Pacific/Gambier', '(GMT-09:00) Gambier', '-9.0', '-9.0', '-9.0', '0', '1');
INSERT INTO `timezones` VALUES ('13', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Los_Angeles', '(GMT-08:00) Pacific Time', '-8.0', '-7.0', '-8.0', '1', '1');
INSERT INTO `timezones` VALUES ('14', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Tijuana', '(GMT-08:00) Pacific Time - Tijuana', '-8.0', '-7.0', '-8.0', '1', '1');
INSERT INTO `timezones` VALUES ('15', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Vancouver', '(GMT-08:00) Pacific Time - Vancouver', '-8.0', '-7.0', '-8.0', '1', '1');
INSERT INTO `timezones` VALUES ('16', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Whitehorse', '(GMT-08:00) Pacific Time - Whitehorse', '-8.0', '-7.0', '-8.0', '1', '1');
INSERT INTO `timezones` VALUES ('17', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'Pacific/Pitcairn', '(GMT-08:00) Pitcairn', '-8.0', '-8.0', '-8.0', '0', '1');
INSERT INTO `timezones` VALUES ('18', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Dawson_Creek', '(GMT-07:00) Mountain Time - Dawson Creek', '-7.0', '-7.0', '-7.0', '0', '1');
INSERT INTO `timezones` VALUES ('19', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Denver', '(GMT-07:00) Mountain Time (America/Denver)', '-7.0', '-6.0', '-7.0', '1', '1');
INSERT INTO `timezones` VALUES ('20', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Edmonton', '(GMT-07:00) Mountain Time - Edmonton', '-7.0', '-6.0', '-7.0', '1', '1');
INSERT INTO `timezones` VALUES ('21', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Hermosillo', '(GMT-07:00) Mountain Time - Hermosillo', '-7.0', '-7.0', '-7.0', '0', '1');
INSERT INTO `timezones` VALUES ('22', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Mazatlan', '(GMT-07:00) Mountain Time - Chihuahua, Mazatlan', '-7.0', '-6.0', '-7.0', '1', '1');
INSERT INTO `timezones` VALUES ('23', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Phoenix', '(GMT-07:00) Mountain Time - Arizona', '-7.0', '-7.0', '-7.0', '0', '1');
INSERT INTO `timezones` VALUES ('24', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Yellowknife', '(GMT-07:00) Mountain Time - Yellowknife', '-7.0', '-6.0', '-7.0', '1', '1');
INSERT INTO `timezones` VALUES ('25', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Belize', '(GMT-06:00) Belize', '-6.0', '-6.0', '-6.0', '0', '1');
INSERT INTO `timezones` VALUES ('26', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Chicago', '(GMT-06:00) Central Time', '-6.0', '-5.0', '-6.0', '1', '1');
INSERT INTO `timezones` VALUES ('27', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Costa_Rica', '(GMT-06:00) Costa Rica', '-6.0', '-6.0', '-6.0', '0', '1');
INSERT INTO `timezones` VALUES ('28', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/El_Salvador', '(GMT-06:00) El Salvador', '-6.0', '-6.0', '-6.0', '0', '1');
INSERT INTO `timezones` VALUES ('29', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Guatemala', '(GMT-06:00) Guatemala', '-6.0', '-6.0', '-6.0', '0', '1');
INSERT INTO `timezones` VALUES ('30', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Managua', '(GMT-06:00) Managua', '-6.0', '-6.0', '-6.0', '0', '1');
INSERT INTO `timezones` VALUES ('31', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Mexico_City', '(GMT-06:00) Central Time - Mexico City', '-6.0', '-5.0', '-6.0', '1', '1');
INSERT INTO `timezones` VALUES ('32', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Regina', '(GMT-06:00) Central Time - Regina', '-6.0', '-6.0', '-6.0', '0', '1');
INSERT INTO `timezones` VALUES ('33', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Tegucigalpa', '(GMT-06:00) Central Time (America/Tegucigalpa)', '-6.0', '-6.0', '-6.0', '0', '1');
INSERT INTO `timezones` VALUES ('34', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Winnipeg', '(GMT-06:00) Central Time - Winnipeg', '-6.0', '-5.0', '-6.0', '1', '1');
INSERT INTO `timezones` VALUES ('35', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'Pacific/Easter', '(GMT-06:00) Easter Island', '-6.0', '-5.0', '-6.0', '1', '1');
INSERT INTO `timezones` VALUES ('36', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'Pacific/Galapagos', '(GMT-06:00) Galapagos', '-6.0', '-6.0', '-6.0', '0', '1');
INSERT INTO `timezones` VALUES ('37', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Bogota', '(GMT-05:00) Bogota', '-5.0', '-5.0', '-5.0', '0', '1');
INSERT INTO `timezones` VALUES ('38', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Cayman', '(GMT-05:00) Cayman', '-5.0', '-4.0', '-5.0', '1', '1');
INSERT INTO `timezones` VALUES ('39', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Grand_Turk', '(GMT-05:00) Grand Turk', '-5.0', '-4.0', '-5.0', '1', '1');
INSERT INTO `timezones` VALUES ('40', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Guayaquil', '(GMT-05:00) Guayaquil', '-5.0', '-5.0', '-5.0', '0', '1');
INSERT INTO `timezones` VALUES ('41', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Havana', '(GMT-05:00) Havana', '-5.0', '-4.0', '-5.0', '1', '1');
INSERT INTO `timezones` VALUES ('42', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Iqaluit', '(GMT-05:00) Eastern Time - Iqaluit', '-5.0', '-4.0', '-5.0', '1', '1');
INSERT INTO `timezones` VALUES ('43', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Jamaica', '(GMT-05:00) Jamaica', '-5.0', '-5.0', '-5.0', '0', '1');
INSERT INTO `timezones` VALUES ('44', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Lima', '(GMT-05:00) Lima', '-5.0', '-5.0', '-5.0', '0', '1');
INSERT INTO `timezones` VALUES ('45', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Montreal', '(GMT-05:00) Eastern Time - Montreal', '-5.0', '-4.0', '-5.0', '1', '1');
INSERT INTO `timezones` VALUES ('46', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Nassau', '(GMT-05:00) Nassau', '-5.0', '-4.0', '-5.0', '1', '1');
INSERT INTO `timezones` VALUES ('47', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/New_York', '(GMT-05:00) Eastern Time', '-5.0', '-4.0', '-5.0', '1', '1');
INSERT INTO `timezones` VALUES ('48', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Panama', '(GMT-05:00) Panama', '-5.0', '-5.0', '-5.0', '0', '1');
INSERT INTO `timezones` VALUES ('49', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Port-au-Prince', '(GMT-05:00) Port-au-Prince', '-5.0', '-5.0', '-5.0', '0', '1');
INSERT INTO `timezones` VALUES ('50', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Toronto', '(GMT-05:00) Eastern Time - Toronto', '-5.0', '-4.0', '-5.0', '1', '1');
INSERT INTO `timezones` VALUES ('51', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Caracas', '(GMT-04:30) Caracas', '-4.5', '-4.5', '-4.5', '0', '1');
INSERT INTO `timezones` VALUES ('52', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Anguilla', '(GMT-04:00) Anguilla', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('53', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Antigua', '(GMT-04:00) Antigua', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('54', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Aruba', '(GMT-04:00) Aruba', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('55', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Asuncion', '(GMT-04:00) Asuncion', '-3.0', '-4.0', '-4.0', '1', '1');
INSERT INTO `timezones` VALUES ('56', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Barbados', '(GMT-04:00) Barbados', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('57', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Boa_Vista', '(GMT-04:00) Boa Vista', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('58', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Campo_Grande', '(GMT-04:00) Campo Grande', '-3.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('59', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Cuiaba', '(GMT-04:00) Cuiaba', '-3.0', '-4.0', '-4.0', '1', '1');
INSERT INTO `timezones` VALUES ('60', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Curacao', '(GMT-04:00) Curacao', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('61', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Dominica', '(GMT-04:00) Dominica', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('62', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Grenada', '(GMT-04:00) Grenada', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('63', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Guadeloupe', '(GMT-04:00) Guadeloupe', '-4.0', '0.0', '-4.0', '1', '1');
INSERT INTO `timezones` VALUES ('64', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Guyana', '(GMT-04:00) Guyana', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('65', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Halifax', '(GMT-04:00) Atlantic Time - Halifax', '0.0', '1.0', '0.0', '1', '1');
INSERT INTO `timezones` VALUES ('66', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/La_Paz', '(GMT-04:00) La Paz', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('67', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Manaus', '(GMT-04:00) Manaus', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('68', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Martinique', '(GMT-04:00) Martinique', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('69', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Montserrat', '(GMT-04:00) Montserrat', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('70', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Port_of_Spain', '(GMT-04:00) Port of Spain', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('71', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Porto_Velho', '(GMT-04:00) Porto Velho', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('72', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Puerto_Rico', '(GMT-04:00) Puerto Rico', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('73', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Rio_Branco', '(GMT-04:00) Rio Branco', '', '', '', '0', '1');
INSERT INTO `timezones` VALUES ('74', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Santiago', '(GMT-04:00) Santiago', '-3.0', '-4.0', '-4.0', '1', '1');
INSERT INTO `timezones` VALUES ('75', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/Santo_Domingo', '(GMT-04:00) Santo Domingo', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('76', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/St_Kitts', '(GMT-04:00) St. Kitts', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('77', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/St_Lucia', '(GMT-04:00) St. Lucia', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('78', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/St_Thomas', '(GMT-04:00) St. Thomas', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('79', '2010-05-10 20:13:10', '2010-05-10 20:13:10', 'America/St_Vincent', '(GMT-04:00) St. Vincent', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('80', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Thule', '(GMT-04:00) Thule', '11.0', '10.0', '10.0', '1', '1');
INSERT INTO `timezones` VALUES ('81', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Tortola', '(GMT-04:00) Tortola', '-4.0', '-4.0', '-4.0', '0', '1');
INSERT INTO `timezones` VALUES ('82', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Antarctica/Palmer', '(GMT-04:00) Palmer', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('83', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Atlantic/Bermuda', '(GMT-04:00) Bermuda', '-4.0', '-3.0', '-4.0', '1', '1');
INSERT INTO `timezones` VALUES ('84', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Atlantic/Stanley', '(GMT-04:00) Stanley', '11.0', '10.0', '10.0', '1', '1');
INSERT INTO `timezones` VALUES ('85', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/St_Johns', '(GMT-03:30) Newfoundland Time - St. Johns', '-3.5', '-2.5', '-3.5', '1', '1');
INSERT INTO `timezones` VALUES ('86', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Araguaina', '(GMT-03:00) Araguaina', '-3.0', '-3.0', '-3.0', '0', '1');
INSERT INTO `timezones` VALUES ('87', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Argentina/Buenos_Aires', '(GMT-03:00) Buenos Aires', '-3.0', '-3.0', '-3.0', '0', '1');
INSERT INTO `timezones` VALUES ('88', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Bahia', '(GMT-03:00) Salvador', '-3.0', '-3.0', '-3.0', '0', '1');
INSERT INTO `timezones` VALUES ('89', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Belem', '(GMT-03:00) Belem', '-3.0', '-3.0', '-3.0', '0', '1');
INSERT INTO `timezones` VALUES ('90', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Cayenne', '(GMT-03:00) Cayenne', '-3.0', '-3.0', '-3.0', '0', '1');
INSERT INTO `timezones` VALUES ('91', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Fortaleza', '(GMT-03:00) Fortaleza', '-3.0', '-3.0', '-3.0', '0', '1');
INSERT INTO `timezones` VALUES ('92', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Godthab', '(GMT-03:00) Godthab', '-3.0', '-2.0', '-3.0', '1', '1');
INSERT INTO `timezones` VALUES ('93', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Maceio', '(GMT-03:00) Maceio', '-3.0', '-3.0', '-3.0', '0', '1');
INSERT INTO `timezones` VALUES ('94', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Miquelon', '(GMT-03:00) Miquelon', '-3.0', '-2.0', '-3.0', '1', '1');
INSERT INTO `timezones` VALUES ('95', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Montevideo', '(GMT-03:00) Montevideo', '-2.0', '-3.0', '-3.0', '1', '1');
INSERT INTO `timezones` VALUES ('96', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Paramaribo', '(GMT-03:00) Paramaribo', '-3.0', '-3.0', '-3.0', '0', '1');
INSERT INTO `timezones` VALUES ('97', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Recife', '(GMT-03:00) Recife', '-3.0', '-3.0', '-3.0', '0', '1');
INSERT INTO `timezones` VALUES ('98', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Sao_Paulo', '(GMT-03:00) Sao Paulo', '-2.0', '-3.0', '-3.0', '0', '1');
INSERT INTO `timezones` VALUES ('99', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Antarctica/Rothera', '(GMT-03:00) Rothera', '-3.0', '-3.0', '-3.0', '0', '1');
INSERT INTO `timezones` VALUES ('100', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Noronha', '(GMT-02:00) Noronha', '-2.0', '-3.0', '-3.0', '1', '1');
INSERT INTO `timezones` VALUES ('101', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Atlantic/South_Georgia', '(GMT-02:00) South Georgia', '-2.0', '-2.0', '-2.0', '0', '1');
INSERT INTO `timezones` VALUES ('102', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Scoresbysund', '(GMT-01:00) Scoresbysund', '-1.0', '0.0', '-1.0', '1', '1');
INSERT INTO `timezones` VALUES ('103', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Atlantic/Azores', '(GMT-01:00) Azores', '-1.0', '0.0', '-1.0', '1', '1');
INSERT INTO `timezones` VALUES ('104', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Atlantic/Cape_Verde', '(GMT-01:00) Cape Verde', '-1.0', '-0.0', '-1.0', '0', '1');
INSERT INTO `timezones` VALUES ('105', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Abidjan', '(GMT+00:00) Abidjan', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('106', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Accra', '(GMT+00:00) Accra', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('107', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Bamako', '(GMT+00:00) Bamako', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('108', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Banjul', '(GMT+00:00) Banjul', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('109', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Bissau', '(GMT+00:00) Bissau', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('110', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Casablanca', '(GMT+00:00) Casablanca', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('111', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Conakry', '(GMT+00:00) Conakry', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('112', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Dakar', '(GMT+00:00) Dakar', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('113', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/El_Aaiun', '(GMT+00:00) El Aaiun', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('114', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Freetown', '(GMT+00:00) Freetown', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('115', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Lome', '(GMT+00:00) Lome', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('116', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Monrovia', '(GMT+00:00) Monrovia', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('117', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Nouakchott', '(GMT+00:00) Nouakchott', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('118', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Ouagadougou', '(GMT+00:00) Ouagadougou', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('119', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Sao_Tome', '(GMT+00:00) Sao Tome', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('120', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'America/Danmarkshavn', '(GMT+00:00) Danmarkshavn', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('121', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Atlantic/Canary', '(GMT+00:00) Canary Islands', '', '', '', '0', '1');
INSERT INTO `timezones` VALUES ('122', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Atlantic/Faroe', '(GMT+00:00) Faeroe', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('123', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Atlantic/Reykjavik', '(GMT+00:00) Reykjavik', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('124', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Atlantic/St_Helena', '(GMT+00:00) St Helena', '-1.0', '0.0', '-1.0', '0', '1');
INSERT INTO `timezones` VALUES ('125', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Etc/GMT', '(GMT+00:00) GMT (no daylight saving)', '0.0', '0.0', '0.0', '0', '1');
INSERT INTO `timezones` VALUES ('126', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Dublin', '(GMT+00:00) Dublin', '0.0', '1.0', '0.0', '1', '1');
INSERT INTO `timezones` VALUES ('127', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Lisbon', '(GMT+00:00) Lisbon', '0.0', '1.0', '0.0', '1', '1');
INSERT INTO `timezones` VALUES ('128', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/London', '(GMT+00:00) London', '0.0', '1.0', '0.0', '1', '1');
INSERT INTO `timezones` VALUES ('129', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Algiers', '(GMT+01:00) Algiers', '1.0', '1.0', '1.0', '0', '1');
INSERT INTO `timezones` VALUES ('130', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Bangui', '(GMT+01:00) Bangui', '1.0', '1.0', '1.0', '0', '1');
INSERT INTO `timezones` VALUES ('131', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Brazzaville', '(GMT+01:00) Brazzaville', '1.0', '1.0', '1.0', '0', '1');
INSERT INTO `timezones` VALUES ('132', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Ceuta', '(GMT+01:00) Ceuta', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('133', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Douala', '(GMT+01:00) Douala', '1.0', '1.0', '1.0', '0', '1');
INSERT INTO `timezones` VALUES ('134', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Kinshasa', '(GMT+01:00) Kinshasa', '1.0', '1.0', '1.0', '0', '1');
INSERT INTO `timezones` VALUES ('135', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Lagos', '(GMT+01:00) Lagos', '1.0', '1.0', '1.0', '0', '1');
INSERT INTO `timezones` VALUES ('136', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Libreville', '(GMT+01:00) Libreville', '1.0', '1.0', '1.0', '0', '1');
INSERT INTO `timezones` VALUES ('137', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Luanda', '(GMT+01:00) Luanda', '1.0', '1.0', '1.0', '0', '1');
INSERT INTO `timezones` VALUES ('138', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Malabo', '(GMT+01:00) Malabo', '1.0', '1.0', '1.0', '0', '1');
INSERT INTO `timezones` VALUES ('139', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Ndjamena', '(GMT+01:00) Ndjamena', '1.0', '1.0', '1.0', '0', '1');
INSERT INTO `timezones` VALUES ('140', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Niamey', '(GMT+01:00) Niamey', '1.0', '1.0', '1.0', '0', '1');
INSERT INTO `timezones` VALUES ('141', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Porto-Novo', '(GMT+01:00) Porto-Novo', '1.0', '1.0', '1.0', '0', '1');
INSERT INTO `timezones` VALUES ('142', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Tunis', '(GMT+01:00) Tunis', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('143', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Windhoek', '(GMT+01:00) Windhoek', '2.0', '1.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('144', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Amsterdam', '(GMT+01:00) Amsterdam', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('145', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Andorra', '(GMT+01:00) Andorra', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('146', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Belgrade', '(GMT+01:00) Central European Time (Europe/Belgrade)', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('147', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Berlin', '(GMT+01:00) Berlin', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('148', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Brussels', '(GMT+01:00) Brussels', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('149', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Budapest', '(GMT+01:00) Budapest', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('150', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Copenhagen', '(GMT+01:00) Copenhagen', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('151', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Gibraltar', '(GMT+01:00) Gibraltar', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('152', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Luxembourg', '(GMT+01:00) Luxembourg', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('153', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Madrid', '(GMT+01:00) Madrid', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('154', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Malta', '(GMT+01:00) Malta', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('155', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Monaco', '(GMT+01:00) Monaco', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('156', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Oslo', '(GMT+01:00) Oslo', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('157', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Paris', '(GMT+01:00) Paris', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('158', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Prague', '(GMT+01:00) Central European Time (Europe/Prague)', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('159', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Rome', '(GMT+01:00) Rome', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('160', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Stockholm', '(GMT+01:00) Stockholm', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('161', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Tirane', '(GMT+01:00) Tirane', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('162', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Vaduz', '(GMT+01:00) Vaduz', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('163', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Vienna', '(GMT+01:00) Vienna', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('164', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Warsaw', '(GMT+01:00) Warsaw', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('165', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Zurich', '(GMT+01:00) Zurich', '1.0', '2.0', '1.0', '1', '1');
INSERT INTO `timezones` VALUES ('166', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Blantyre', '(GMT+02:00) Blantyre', '2.0', '2.0', '2.0', '0', '1');
INSERT INTO `timezones` VALUES ('167', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Bujumbura', '(GMT+02:00) Bujumbura', '2.0', '2.0', '2.0', '0', '1');
INSERT INTO `timezones` VALUES ('168', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Cairo', '(GMT+02:00) Cairo', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('169', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Gaborone', '(GMT+02:00) Gaborone', '2.0', '2.0', '2.0', '0', '1');
INSERT INTO `timezones` VALUES ('170', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Harare', '(GMT+02:00) Harare', '2.0', '2.0', '2.0', '0', '1');
INSERT INTO `timezones` VALUES ('171', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Johannesburg', '(GMT+02:00) Johannesburg', '2.0', '2.0', '2.0', '0', '1');
INSERT INTO `timezones` VALUES ('172', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Kigali', '(GMT+02:00) Kigali', '2.0', '2.0', '2.0', '0', '1');
INSERT INTO `timezones` VALUES ('173', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Lubumbashi', '(GMT+02:00) Lubumbashi', '2.0', '2.0', '2.0', '0', '1');
INSERT INTO `timezones` VALUES ('174', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Lusaka', '(GMT+02:00) Lusaka', '2.0', '2.0', '2.0', '0', '1');
INSERT INTO `timezones` VALUES ('175', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Maputo', '(GMT+02:00) Maputo', '2.0', '2.0', '2.0', '0', '1');
INSERT INTO `timezones` VALUES ('176', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Maseru', '(GMT+02:00) Maseru', '2.0', '2.0', '2.0', '0', '1');
INSERT INTO `timezones` VALUES ('177', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Mbabane', '(GMT+02:00) Mbabane', '2.0', '2.0', '2.0', '0', '1');
INSERT INTO `timezones` VALUES ('178', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Tripoli', '(GMT+02:00) Tripoli', '2.0', '2.0', '2.0', '0', '1');
INSERT INTO `timezones` VALUES ('179', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Amman', '(GMT+02:00) Amman', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('180', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Beirut', '(GMT+02:00) Beirut', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('181', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Damascus', '(GMT+02:00) Damascus', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('182', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Gaza', '(GMT+02:00) Gaza', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('183', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Jerusalem', '(GMT+02:00) Jerusalem', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('184', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Nicosia', '(GMT+02:00) Nicosia', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('185', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Athens', '(GMT+02:00) Athens', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('186', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Bucharest', '(GMT+02:00) Bucharest', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('187', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Chisinau', '(GMT+02:00) Chisinau', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('188', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Helsinki', '(GMT+02:00) Helsinki', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('189', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Istanbul', '(GMT+02:00) Istanbul', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('190', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Kaliningrad', '(GMT+02:00) Moscow-01 - Kaliningrad', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('191', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Kiev', '(GMT+02:00) Kiev', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('192', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Minsk', '(GMT+02:00) Minsk', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('193', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Riga', '(GMT+02:00) Riga', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('194', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Sofia', '(GMT+02:00) Sofia', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('195', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Tallinn', '(GMT+02:00) Tallinn', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('196', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Vilnius', '(GMT+02:00) Vilnius', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('197', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Addis_Ababa', '(GMT+03:00) Addis Ababa', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('198', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Asmara', '(GMT+03:00) Asmera', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('199', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Dar_es_Salaam', '(GMT+03:00) Dar es Salaam', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('200', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Djibouti', '(GMT+03:00) Djibouti', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('201', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Kampala', '(GMT+03:00) Kampala', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('202', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Khartoum', '(GMT+03:00) Khartoum', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('203', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Mogadishu', '(GMT+03:00) Mogadishu', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('204', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Africa/Nairobi', '(GMT+03:00) Nairobi', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('205', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Antarctica/Syowa', '(GMT+03:00) Syowa', '9.0', '9.0', '9.0', '0', '1');
INSERT INTO `timezones` VALUES ('206', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Aden', '(GMT+03:00) Aden', '2.0', '3.0', '2.0', '1', '1');
INSERT INTO `timezones` VALUES ('207', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Baghdad', '(GMT+03:00) Baghdad', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('208', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Bahrain', '(GMT+03:00) Bahrain', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('209', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Kuwait', '(GMT+03:00) Kuwait', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('210', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Qatar', '(GMT+03:00) Qatar', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('211', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Riyadh', '(GMT+03:00) Riyadh', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('212', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Europe/Moscow', '(GMT+03:00) Moscow+00', '3.0', '4.0', '3.0', '1', '1');
INSERT INTO `timezones` VALUES ('213', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Indian/Antananarivo', '(GMT+03:00) Antananarivo', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('214', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Indian/Comoro', '(GMT+03:00) Comoro', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('215', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Indian/Mayotte', '(GMT+03:00) Mayotte', '3.0', '3.0', '3.0', '0', '1');
INSERT INTO `timezones` VALUES ('216', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Tehran', '(GMT+03:30) Tehran', '3.5', '4.5', '3.5', '1', '1');
INSERT INTO `timezones` VALUES ('217', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Baku', '(GMT+04:00) Baku', '4.0', '5.0', '4.0', '1', '1');
INSERT INTO `timezones` VALUES ('218', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Dubai', '(GMT+04:00) Dubai', '4.0', '4.0', '4.0', '0', '1');
INSERT INTO `timezones` VALUES ('219', '2010-05-10 20:13:11', '2010-05-10 20:13:11', 'Asia/Muscat', '(GMT+04:00) Muscat', '4.0', '4.0', '4.0', '0', '1');
INSERT INTO `timezones` VALUES ('220', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Tbilisi', '(GMT+04:00) Tbilisi', '4.0', '4.0', '4.0', '0', '1');
INSERT INTO `timezones` VALUES ('221', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Yerevan', '(GMT+04:00) Yerevan', '4.0', '5.0', '4.0', '1', '1');
INSERT INTO `timezones` VALUES ('222', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Europe/Samara', '(GMT+04:00) Moscow+01 - Samara', '4.0', '5.0', '4.0', '1', '1');
INSERT INTO `timezones` VALUES ('223', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Indian/Mahe', '(GMT+04:00) Mahe', '4.0', '4.0', '4.0', '0', '1');
INSERT INTO `timezones` VALUES ('224', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Indian/Mauritius', '(GMT+04:00) Mauritius', '4.0', '4.0', '4.0', '0', '1');
INSERT INTO `timezones` VALUES ('225', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Indian/Reunion', '(GMT+04:00) Reunion', '4.0', '4.0', '4.0', '0', '1');
INSERT INTO `timezones` VALUES ('226', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Kabul', '(GMT+04:30) Kabul', '4.5', '4.5', '4.5', '0', '1');
INSERT INTO `timezones` VALUES ('227', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Aqtau', '(GMT+05:00) Aqtau', '5.0', '5.0', '5.0', '0', '1');
INSERT INTO `timezones` VALUES ('228', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Aqtobe', '(GMT+05:00) Aqtobe', '5.0', '5.0', '5.0', '0', '1');
INSERT INTO `timezones` VALUES ('229', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Ashgabat', '(GMT+05:00) Ashgabat', '5.0', '5.0', '5.0', '0', '1');
INSERT INTO `timezones` VALUES ('230', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Dushanbe', '(GMT+05:00) Dushanbe', '5.0', '5.0', '5.0', '0', '1');
INSERT INTO `timezones` VALUES ('231', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Karachi', '(GMT+05:00) Karachi', '5.0', '6.0', '5.0', '1', '1');
INSERT INTO `timezones` VALUES ('232', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Tashkent', '(GMT+05:00) Tashkent', '5.0', '5.0', '5.0', '0', '1');
INSERT INTO `timezones` VALUES ('233', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Yekaterinburg', '(GMT+05:00) Moscow+02 - Yekaterinburg', '5.0', '6.0', '5.0', '1', '1');
INSERT INTO `timezones` VALUES ('234', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Indian/Kerguelen', '(GMT+05:00) Kerguelen', '5.0', '5.0', '5.0', '0', '1');
INSERT INTO `timezones` VALUES ('235', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Indian/Maldives', '(GMT+05:00) Maldives', '5.0', '5.0', '5.0', '0', '1');
INSERT INTO `timezones` VALUES ('236', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Kolkata', '(GMT+05:30) India Standard Time', '5.5', '5.5', '5.5', '0', '1');
INSERT INTO `timezones` VALUES ('237', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Colombo', '(GMT+05:30) Colombo', '5.5', '5.5', '5.5', '0', '1');
INSERT INTO `timezones` VALUES ('238', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Katmandu', '(GMT+05:45) Katmandu', '5.75', '5.75', '5.75', '0', '1');
INSERT INTO `timezones` VALUES ('239', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Antarctica/Mawson', '(GMT+06:00) Mawson', '6.0', '6.0', '6.0', '0', '1');
INSERT INTO `timezones` VALUES ('240', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Antarctica/Vostok', '(GMT+06:00) Vostok', '6.0', '6.0', '6.0', '0', '1');
INSERT INTO `timezones` VALUES ('241', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Almaty', '(GMT+06:00) Almaty', '6.0', '6.0', '6.0', '0', '1');
INSERT INTO `timezones` VALUES ('242', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Bishkek', '(GMT+06:00) Bishkek', '6.0', '6.0', '6.0', '0', '1');
INSERT INTO `timezones` VALUES ('243', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Dhaka', '(GMT+06:00) Dhaka', '6.0', '7.0', '6.0', '1', '1');
INSERT INTO `timezones` VALUES ('244', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Omsk', '(GMT+06:00) Moscow+03 - Omsk, Novosibirsk', '6.0', '7.0', '6.0', '1', '1');
INSERT INTO `timezones` VALUES ('245', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Thimphu', '(GMT+06:00) Thimphu', '6.0', '6.0', '6.0', '0', '1');
INSERT INTO `timezones` VALUES ('246', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Indian/Chagos', '(GMT+06:00) Chagos', '6.0', '6.0', '6.0', '0', '1');
INSERT INTO `timezones` VALUES ('247', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Rangoon', '(GMT+06:30) Rangoon', '6.5', '6.5', '6.5', '0', '1');
INSERT INTO `timezones` VALUES ('248', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Indian/Cocos', '(GMT+06:30) Cocos', '6.5', '6.5', '6.5', '0', '1');
INSERT INTO `timezones` VALUES ('249', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Antarctica/Davis', '(GMT+07:00) Davis', '-8.0', '-7.0', '-8.0', '1', '1');
INSERT INTO `timezones` VALUES ('250', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Bangkok', '(GMT+07:00) Bangkok', '7.0', '7.0', '7.0', '0', '1');
INSERT INTO `timezones` VALUES ('251', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Hovd', '(GMT+07:00) Hovd', '7.0', '7.0', '7.0', '0', '1');
INSERT INTO `timezones` VALUES ('252', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Jakarta', '(GMT+07:00) Jakarta', '7.0', '7.0', '7.0', '0', '1');
INSERT INTO `timezones` VALUES ('253', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Krasnoyarsk', '(GMT+07:00) Moscow+04 - Krasnoyarsk', '7.0', '8.0', '7.0', '1', '1');
INSERT INTO `timezones` VALUES ('254', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Phnom_Penh', '(GMT+07:00) Phnom Penh', '7.0', '7.0', '7.0', '0', '1');
INSERT INTO `timezones` VALUES ('255', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Saigon', '(GMT+07:00) Hanoi', '7.0', '7.0', '7.0', '0', '1');
INSERT INTO `timezones` VALUES ('256', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Vientiane', '(GMT+07:00) Vientiane', '7.0', '7.0', '7.0', '0', '1');
INSERT INTO `timezones` VALUES ('257', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Indian/Christmas', '(GMT+07:00) Christmas', '-7.0', '-7.0', '-7.0', '0', '1');
INSERT INTO `timezones` VALUES ('258', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Antarctica/Casey', '(GMT+08:00) Casey', '8.0', '8.0', '8.0', '0', '1');
INSERT INTO `timezones` VALUES ('259', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Brunei', '(GMT+08:00) Brunei', '8.0', '8.0', '8.0', '0', '1');
INSERT INTO `timezones` VALUES ('260', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Choibalsan', '(GMT+08:00) Choibalsan', '8.0', '8.0', '8.0', '0', '1');
INSERT INTO `timezones` VALUES ('261', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Hong_Kong', '(GMT+08:00) Hong Kong', '8.0', '8.0', '8.0', '0', '1');
INSERT INTO `timezones` VALUES ('262', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Irkutsk', '(GMT+08:00) Moscow+05 - Irkutsk', '8.0', '9.0', '8.0', '1', '1');
INSERT INTO `timezones` VALUES ('263', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Kuala_Lumpur', '(GMT+08:00) Kuala Lumpur', '8.0', '8.0', '8.0', '0', '1');
INSERT INTO `timezones` VALUES ('264', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Macau', '(GMT+08:00) Macau', '8.0', '8.0', '8.0', '0', '1');
INSERT INTO `timezones` VALUES ('265', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Makassar', '(GMT+08:00) Makassar', '8.0', '8.0', '8.0', '0', '1');
INSERT INTO `timezones` VALUES ('266', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Manila', '(GMT+08:00) Manila', '8.0', '8.0', '8.0', '0', '1');
INSERT INTO `timezones` VALUES ('267', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Shanghai', '(GMT+08:00) China Time - Beijing', '8.0', '8.0', '8.0', '0', '1');
INSERT INTO `timezones` VALUES ('268', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Singapore', '(GMT+08:00) Singapore', '8.0', '8.0', '8.0', '0', '1');
INSERT INTO `timezones` VALUES ('269', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Taipei', '(GMT+08:00) Taipei', '8.0', '8.0', '8.0', '0', '1');
INSERT INTO `timezones` VALUES ('270', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Ulaanbaatar', '(GMT+08:00) Ulaanbaatar', '8.0', '8.0', '8.0', '0', '1');
INSERT INTO `timezones` VALUES ('271', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Australia/Perth', '(GMT+08:00) Western Time - Perth', '8.0', '8.0', '8.0', '0', '1');
INSERT INTO `timezones` VALUES ('272', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Dili', '(GMT+09:00) Dili', '8.0', '8.0', '8.0', '0', '1');
INSERT INTO `timezones` VALUES ('273', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Jayapura', '(GMT+09:00) Jayapura', '9.0', '9.0', '9.0', '0', '1');
INSERT INTO `timezones` VALUES ('274', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Pyongyang', '(GMT+09:00) Pyongyang', '9.0', '9.0', '9.0', '0', '1');
INSERT INTO `timezones` VALUES ('275', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Seoul', '(GMT+09:00) Seoul', '9.0', '9.0', '9.0', '0', '1');
INSERT INTO `timezones` VALUES ('276', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Tokyo', '(GMT+09:00) Tokyo', '9.0', '9.0', '9.0', '0', '1');
INSERT INTO `timezones` VALUES ('277', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Yakutsk', '(GMT+09:00) Moscow+06 - Yakutsk', '9.0', '10.0', '9.0', '1', '1');
INSERT INTO `timezones` VALUES ('278', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Palau', '(GMT+09:00) Palau', '9.0', '9.0', '9.0', '0', '1');
INSERT INTO `timezones` VALUES ('279', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Australia/Adelaide', '(GMT+09:30) Central Time - Adelaide', '10.5', '9.5', '9.5', '1', '1');
INSERT INTO `timezones` VALUES ('280', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Australia/Darwin', '(GMT+09:30) Central Time - Darwin', '9.5', '9.5', '9.5', '0', '1');
INSERT INTO `timezones` VALUES ('281', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Antarctica/DumontDUrville', '(GMT+10:00) Dumont D\'Urville', '10.0', '10.0', '10.0', '0', '1');
INSERT INTO `timezones` VALUES ('282', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Vladivostok', '(GMT+10:00) Moscow+07 - Yuzhno-Sakhalinsk', '10.0', '11.0', '10.0', '1', '1');
INSERT INTO `timezones` VALUES ('283', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Australia/Brisbane', '(GMT+10:00) Eastern Time - Brisbane', '10.0', '10.0', '10.0', '0', '1');
INSERT INTO `timezones` VALUES ('284', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Australia/Hobart', '(GMT+10:00) Eastern Time - Hobart', '-6.0', '-5.0', '-6.0', '1', '1');
INSERT INTO `timezones` VALUES ('285', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Australia/Sydney', '(GMT+10:00) Eastern Time - Melbourne, Sydney', '11.0', '10.0', '10.0', '1', '1');
INSERT INTO `timezones` VALUES ('286', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Guam', '(GMT+10:00) Guam', '10.0', '10.0', '10.0', '0', '1');
INSERT INTO `timezones` VALUES ('287', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Port_Moresby', '(GMT+10:00) Port Moresby', '10.0', '10.0', '10.0', '0', '1');
INSERT INTO `timezones` VALUES ('288', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Saipan', '(GMT+10:00) Saipan', '10.0', '10.0', '10.0', '0', '1');
INSERT INTO `timezones` VALUES ('289', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Truk', '(GMT+10:00) Truk', '10.0', '10.0', '10.0', '0', '1');
INSERT INTO `timezones` VALUES ('290', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Magadan', '(GMT+11:00) Moscow+08 - Magadan', '11.0', '12.0', '11.0', '1', '1');
INSERT INTO `timezones` VALUES ('291', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Efate', '(GMT+11:00) Efate', '11.0', '11.0', '11.0', '0', '1');
INSERT INTO `timezones` VALUES ('292', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Guadalcanal', '(GMT+11:00) Guadalcanal', '11.0', '11.0', '11.0', '0', '1');
INSERT INTO `timezones` VALUES ('293', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Kosrae', '(GMT+11:00) Kosrae', '11.0', '11.0', '11.0', '0', '1');
INSERT INTO `timezones` VALUES ('294', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Noumea', '(GMT+11:00) Noumea', '11.0', '11.0', '11.0', '0', '1');
INSERT INTO `timezones` VALUES ('295', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Ponape', '(GMT+11:00) Ponape', '11.0', '11.0', '11.0', '0', '1');
INSERT INTO `timezones` VALUES ('296', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Norfolk', '(GMT+11:30) Norfolk', '11.5', '11.5', '11.5', '0', '1');
INSERT INTO `timezones` VALUES ('297', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Asia/Kamchatka', '(GMT+12:00) Moscow+09 - Petropavlovsk-Kamchatskiy', '12.0', '13.0', '12.0', '1', '1');
INSERT INTO `timezones` VALUES ('298', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Auckland', '(GMT+12:00) Auckland', '13.0', '12.0', '12.0', '1', '1');
INSERT INTO `timezones` VALUES ('299', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Fiji', '(GMT+12:00) Fiji', '12.0', '12.0', '12.0', '0', '1');
INSERT INTO `timezones` VALUES ('300', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Funafuti', '(GMT+12:00) Funafuti', '12.0', '12.0', '12.0', '0', '1');
INSERT INTO `timezones` VALUES ('301', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Kwajalein', '(GMT+12:00) Kwajalein', '12.0', '12.0', '12.0', '0', '1');
INSERT INTO `timezones` VALUES ('302', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Majuro', '(GMT+12:00) Majuro', '12.0', '12.0', '12.0', '0', '1');
INSERT INTO `timezones` VALUES ('303', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Nauru', '(GMT+12:00) Nauru', '12.0', '12.0', '12.0', '0', '1');
INSERT INTO `timezones` VALUES ('304', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Tarawa', '(GMT+12:00) Tarawa', '12.0', '12.0', '12.0', '0', '1');
INSERT INTO `timezones` VALUES ('305', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Wake', '(GMT+12:00) Wake', '12.0', '12.0', '12.0', '0', '1');
INSERT INTO `timezones` VALUES ('306', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Wallis', '(GMT+12:00) Wallis', '12.0', '12.0', '12.0', '0', '1');
INSERT INTO `timezones` VALUES ('307', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Enderbury', '(GMT+13:00) Enderbury', '13.0', '13.0', '13.0', '0', '1');
INSERT INTO `timezones` VALUES ('308', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Tongatapu', '(GMT+13:00) Tongatapu', '13.0', '13.0', '13.0', '0', '1');
INSERT INTO `timezones` VALUES ('309', '2010-05-10 20:13:12', '2010-05-10 20:13:12', 'Pacific/Kiritimati', '(GMT+14:00) Kiritimati', '14.0', '14.0', '14.0', '0', '1');

-- ----------------------------
-- Table structure for `time_slots`
-- ----------------------------
DROP TABLE IF EXISTS `time_slots`;
CREATE TABLE `time_slots` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `center_id` bigint(20) NOT NULL,
  `day` varchar(20) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of time_slots
-- ----------------------------

-- ----------------------------
-- Table structure for `transactions`
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `to_user_id` bigint(20) DEFAULT NULL,
  `parent_user_id` bigint(20) DEFAULT '0',
  `transactionStatus` longtext COLLATE utf8_unicode_ci,
  `senderTransactionId` longtext COLLATE utf8_unicode_ci,
  `transactionId` longtext COLLATE utf8_unicode_ci,
  `foreign_id` bigint(20) DEFAULT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_type` bigint(20) NOT NULL,
  `payment_gateway_id` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL,
  `site_revenue_from_freelancer` double DEFAULT '0',
  `coupon_id` smallint(6) DEFAULT NULL,
  `site_revenue_from_employer` double NOT NULL DEFAULT '0',
  `is_sanbox` tinyint(1) NOT NULL DEFAULT '0',
  `card_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of transactions
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `island_id` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lat` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lon` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT '2',
  `username` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_login_count` bigint(20) NOT NULL DEFAULT '0',
  `available_wallet_amount` double DEFAULT '0',
  `ip_id` bigint(20) DEFAULT NULL,
  `last_login_ip_id` bigint(20) DEFAULT NULL,
  `last_logged_in_time` datetime DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `is_archive` tinyint(1) DEFAULT '0',
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_email_confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `view_count` bigint(20) NOT NULL DEFAULT '0',
  `flag_count` bigint(20) NOT NULL DEFAULT '0',
  `total_votes` bigint(20) NOT NULL DEFAULT '0',
  `votes` bigint(20) DEFAULT '0',
  `instagram_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tiktok_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available_credit_count` bigint(20) DEFAULT NULL,
  `instant_vote_pay_key` longtext COLLATE utf8_unicode_ci,
  `vote_pay_key` longtext COLLATE utf8_unicode_ci,
  `vote_to_purchase` int(11) DEFAULT '0',
  `instant_vote_to_purchase` int(11) DEFAULT NULL,
  `subscription_pay_key` longtext COLLATE utf8_unicode_ci,
  `fund_pay_key` longtext COLLATE utf8_unicode_ci,
  `donated` double DEFAULT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `paypal_email` longtext COLLATE utf8_unicode_ci,
  `is_paypal_connect` tinyint(1) DEFAULT '0',
  `is_stripe_connect` tinyint(1) DEFAULT '0',
  `subscription_end_date` date DEFAULT NULL,
  `device_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT '',
  `device_token` varchar(500) COLLATE utf8_unicode_ci DEFAULT '',
  `latitude` varchar(500) COLLATE utf8_unicode_ci DEFAULT '',
  `longitude` varchar(500) COLLATE utf8_unicode_ci DEFAULT '',
  `model` varchar(500) COLLATE utf8_unicode_ci DEFAULT '',
  `os` varchar(500) COLLATE utf8_unicode_ci DEFAULT '',
  `platform` varchar(500) COLLATE utf8_unicode_ci DEFAULT '',
  `version` varchar(500) COLLATE utf8_unicode_ci DEFAULT '',
  `account_update_action` tinyint(1) DEFAULT '1',
  `detail_shared` tinyint(1) DEFAULT '1',
  `account_update_finished` tinyint(1) DEFAULT '1',
  `dob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkups` bigint(20) DEFAULT NULL,
  `last_test_status` tinyint(4) DEFAULT NULL,
  `last_test_type` int(11) DEFAULT NULL,
  `last_test_date` date DEFAULT NULL,
  `untested` tinyint(4) DEFAULT '0',
  `quarantined` tinyint(4) DEFAULT '0',
  `quarantined_days` bigint(11) DEFAULT '0',
  `reinstated` tinyint(1) DEFAULT '0',
  `symptom` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '2011-02-16 08:00:17', '2021-02-21 20:22:16', null, null, null, null, null, null, null, '1', 'admin', 'ima-admin', 'productdemo.admin@gmail.com', '$2y$12$7bABMRw9YB9l4RgQVXoGNu3TNZ8UfjyUcKL2md0s0BOUKiBw.N8Ry', '521', '50', null, null, '2015-09-29 08:08:58', '1', '0', 'IMA', 'Admin', null, '1', '0', '0', '0', '0', null, null, null, null, null, null, 'AP-7C591997TB481302Y', 'AP-23C356733B1265744', '20', '30', '', 'AP-07090940L6468720H', null, null, null, '0', '0', '2020-05-29', null, null, null, null, null, null, null, null, '1', '1', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `user_address`
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `addressline1` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `addressline2` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` int(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_address
-- ----------------------------

-- ----------------------------
-- Table structure for `user_documents`
-- ----------------------------
DROP TABLE IF EXISTS `user_documents`;
CREATE TABLE `user_documents` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `document_id` bigint(20) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_documents
-- ----------------------------

-- ----------------------------
-- Table structure for `user_logins`
-- ----------------------------
DROP TABLE IF EXISTS `user_logins`;
CREATE TABLE `user_logins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `ip_id` bigint(20) DEFAULT NULL,
  `user_agent` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_logins
-- ----------------------------
