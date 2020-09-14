-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2020 at 07:49 PM
-- Server version: 5.6.47
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techtark_countries`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `alpha2` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `alpha3` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `area` varchar(250) DEFAULT NULL,
  `capital` varchar(19) CHARACTER SET utf8 DEFAULT NULL,
  `continent` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `pname` varchar(250) NOT NULL,
  `population` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `alpha2`, `alpha3`, `area`, `capital`, `continent`, `name`, `pname`, `population`) VALUES
(1, 'AD', 'AND', '468.0', 'Andorra la Vella', 'EU', 'Andorra', 'آندورا', '84000'),
(2, 'AE', 'ARE', '82880.0', 'Abu Dhabi', 'AS', 'United Arab Emirates', 'امارات متحده عربی', '4975593'),
(3, 'AF', 'AFG', '647500.0', 'Kabul', 'AS', 'Afghanistan', 'افغانستان', '29121286'),
(4, 'AG', 'ATG', '443.0', 'St. John\'s', 'NA', 'Antigua and Barbuda', 'آنتیگوا و باربودا', '86754'),
(5, 'AI', 'AIA', '102.0', 'The Valley', 'NA', 'Anguilla', 'آنگویلا', '13254'),
(6, 'AL', 'ALB', '28748.0', 'Tirana', 'EU', 'Albania', 'آلبانی', '2986952'),
(7, 'AM', 'ARM', '29800.0', 'Yerevan', 'AS', 'Armenia', 'ارمنستان', '2968000'),
(8, 'AN', 'ANT', '960.0', 'Willemstad', 'NA', 'Netherlands Antilles', 'آنتیل هلند', '300000'),
(9, 'AO', 'AGO', '1246700.0', 'Luanda', 'AF', 'Angola', 'آنگولا', '13068161'),
(10, 'AQ', 'ATA', '14000000.0', NULL, 'AN', 'Antarctica', 'قطب جنوب', '0'),
(11, 'AR', 'ARG', '2766890.0', 'Buenos Aires', 'SA', 'Argentina', 'آرژانتین', '41343201'),
(12, 'AS', 'ASM', '199.0', 'Pago Pago', 'OC', 'American Samoa', 'ساموا', '57881'),
(13, 'AT', 'AUT', '83858.0', 'Vienna', 'EU', 'Austria', 'اتریش', '8205000'),
(14, 'AU', 'AUS', '7686850.0', 'Canberra', 'OC', 'Australia', 'استرالیا', '21515754'),
(15, 'AW', 'ABW', '193.0', 'Oranjestad', 'NA', 'Aruba', 'آروبا', '71566'),
(16, 'AX', 'ALA', '1580.0', 'Mariehamn', 'EU', 'Åland', 'آلاند', '26711'),
(17, 'AZ', 'AZE', '86600.0', 'Baku', 'AS', 'Azerbaijan', 'آذربایجان', '8303512'),
(18, 'BA', 'BIH', '51129.0', 'Sarajevo', 'EU', 'Bosnia and Herzegovina', 'بوسنی و هرزگوین', '4590000'),
(19, 'BB', 'BRB', '431.0', 'Bridgetown', 'NA', 'Barbados', 'باربادوس', '285653'),
(20, 'BD', 'BGD', '144000.0', 'Dhaka', 'AS', 'Bangladesh', 'بنگلادش', '156118464'),
(21, 'BE', 'BEL', '30510.0', 'Brussels', 'EU', 'Belgium', 'بلژیک', '10403000'),
(22, 'BF', 'BFA', '274200.0', 'Ouagadougou', 'AF', 'Burkina Faso', 'بورکینافاسو', '16241811'),
(23, 'BG', 'BGR', '110910.0', 'Sofia', 'EU', 'Bulgaria', 'بلغارستان', '7000039'),
(24, 'BH', 'BHR', '665.0', 'Manama', 'AS', 'Bahrain', 'بحرین', '738004'),
(25, 'BI', 'BDI', '27830.0', 'Gitega', 'AF', 'Burundi', 'بوروندی', '9863117'),
(26, 'BJ', 'BEN', '112620.0', 'Porto-Novo', 'AF', 'Benin', 'بنین', '9056010'),
(27, 'BL', 'BLM', '21.0', 'Gustavia', 'NA', 'Saint Barthélemy', 'Saint Barthélemy', '8450'),
(28, 'BM', 'BMU', '53.0', 'Hamilton', 'NA', 'Bermuda', 'برمودا', '65365'),
(29, 'BN', 'BRN', '5770.0', 'Bandar Seri Begawan', 'AS', 'Brunei Darussalam', 'برونئی', '395027'),
(30, 'BO', 'BOL', '1098580.0', 'Sucre', 'SA', 'Bolivia', 'بولیوی', '9947418'),
(31, 'BQ', 'BES', '328.0', NULL, 'NA', 'Bonaire, Sint Eustatius, and Saba', 'بونیر سنت Eustatius and Saba', '18012'),
(32, 'BR', 'BRA', '8511965.0', 'Brasilia', 'SA', 'Brazil', 'برزیل', '201103330'),
(33, 'BS', 'BHS', '13940.0', 'Nassau', 'NA', 'Bahamas', 'باهاما', '301790'),
(34, 'BT', 'BTN', '47000.0', 'Thimphu', 'AS', 'Bhutan', 'بوتان', '699847'),
(35, 'BV', 'BVT', '49.0', NULL, 'AN', 'Bouvet Island', 'جزیره بووه', '0'),
(36, 'BW', 'BWA', '600370.0', 'Gaborone', 'AF', 'Botswana', 'بوتسوانا', '2029307'),
(37, 'BY', 'BLR', '207600.0', 'Minsk', 'EU', 'Belarus', 'بلاروس', '9685000'),
(38, 'BZ', 'BLZ', '22966.0', 'Belmopan', 'NA', 'Belize', 'بلیز', '314522'),
(39, 'CA', 'CAN', '9984670.0', 'Ottawa', 'NA', 'Canada', 'کانادا', '33679000'),
(40, 'CC', 'CCK', '14.0', 'West Island', 'AS', 'Cocos [Keeling] Islands', 'جزایر کوچک دورافتاده ایالات متحده', '628'),
(41, 'CD', 'COD', '2345410.0', 'Kinshasa', 'AF', 'Congo (Kinshasa)', 'جمهوری دموکراتیک کنگو', '70916439'),
(42, 'CF', 'CAF', '622984.0', 'Bangui', 'AF', 'Central African Republic', 'جمهوری آفریقای مرکزی', '4844927'),
(43, 'CG', 'COG', '342000.0', 'Brazzaville', 'AF', 'Congo (Brazzaville)', 'جمهوری کنگو', '3039126'),
(44, 'CH', 'CHE', '41290.0', 'Bern', 'EU', 'Switzerland', 'سوئیس', '8484100'),
(45, 'CI', 'CIV', '322460.0', 'Yamoussoukro', 'AF', 'Ivory Coast', 'ساحل عاج', '21058798'),
(46, 'CK', 'COK', '240.0', 'Avarua', 'OC', 'Cook Islands', 'جزایر کوک', '21388'),
(47, 'CL', 'CHL', '756950.0', 'Santiago', 'SA', 'Chile', 'شیلی', '16746491'),
(48, 'CM', 'CMR', '475440.0', 'Yaounde', 'AF', 'Cameroon', 'کامرون', '19294149'),
(49, 'CN', 'CHN', '9596960.0', 'Beijing', 'AS', 'China', 'چین', '1330044000'),
(50, 'CO', 'COL', '1138910.0', 'Bogota', 'SA', 'Colombia', 'کلمبیا', '47790000'),
(51, 'CR', 'CRI', '51100.0', 'San Jose', 'NA', 'Costa Rica', 'کاستاریکا', '4516220'),
(52, 'CS', 'SCG', '102350.0', 'Belgrade', 'EU', 'Serbia and Montenegro', 'صربستان و مونته نگرو', '10829175'),
(53, 'CU', 'CUB', '110860.0', 'Havana', 'NA', 'Cuba', 'کوبا', '11423000'),
(54, 'CV', 'CPV', '4033.0', 'Praia', 'AF', 'Cabo Verde', 'Cabo Verde', '508659'),
(55, 'CW', 'CUW', '444.0', 'Willemstad', 'NA', 'Curaçao', 'ویدیو', '141766'),
(56, 'CX', 'CXR', '135.0', 'Flying Fish Cove', 'OC', 'Christmas Island', 'جزیره کریسمس', '1500'),
(57, 'CY', 'CYP', '9250.0', 'Nicosia', 'EU', 'Cyprus', 'قبرس', '1102677'),
(58, 'CZ', 'CZE', '78866.0', 'Prague', 'EU', 'Czechia', 'جمهوری چک', '10476000'),
(59, 'DE', 'DEU', '357021.0', 'Berlin', 'EU', 'Germany', 'آلمان', '81802257'),
(60, 'DJ', 'DJI', '23000.0', 'Djibouti', 'AF', 'Djibouti', 'جیبوتی', '740528'),
(61, 'DK', 'DNK', '43094.0', 'Copenhagen', 'EU', 'Denmark', 'دانمارک', '5484000'),
(62, 'DM', 'DMA', '754.0', 'Roseau', 'NA', 'Dominica', 'دومینیکا', '72813'),
(63, 'DO', 'DOM', '48730.0', 'Santo Domingo', 'NA', 'Dominican Republic', 'جمهوری دومینیکن', '9823821'),
(64, 'DZ', 'DZA', '2381740.0', 'Algiers', 'AF', 'Algeria', 'الجزایر', '34586184'),
(65, 'EC', 'ECU', '283560.0', 'Quito', 'SA', 'Ecuador', 'اکوادور', '14790608'),
(66, 'EE', 'EST', '45226.0', 'Tallinn', 'EU', 'Estonia', 'استونی', '1291170'),
(67, 'EG', 'EGY', '1001450.0', 'Cairo', 'AF', 'Egypt', 'مصر', '80471869'),
(68, 'EH', 'ESH', '266000.0', 'El-Aaiun', 'AF', 'Western Sahara', 'صحرای غربی', '273008'),
(69, 'ER', 'ERI', '121320.0', 'Asmara', 'AF', 'Eritrea', 'اریتره', '5792984'),
(70, 'ES', 'ESP', '504782.0', 'Madrid', 'EU', 'Spain', 'اسپانیا', '46505963'),
(71, 'ET', 'ETH', '1127127.0', 'Addis Ababa', 'AF', 'Ethiopia', 'اتیوپی', '88013491'),
(72, 'FI', 'FIN', '337030.0', 'Helsinki', 'EU', 'Finland', 'فنلاند', '5244000'),
(73, 'FJ', 'FJI', '18270.0', 'Suva', 'OC', 'Fiji', 'فیجی', '875983'),
(74, 'FK', 'FLK', '12173.0', 'Stanley', 'SA', 'Falkland Islands', 'پوند جزایر فالکلند', '2638'),
(75, 'FM', 'FSM', '702.0', 'Palikir', 'OC', 'Micronesia', 'میکرونزی', '107708'),
(76, 'FO', 'FRO', '1399.0', 'Torshavn', 'EU', 'Faroe Islands', 'جزایر فارو', '48228'),
(77, 'FR', 'FRA', '547030.0', 'Paris', 'EU', 'France', 'فرانسه', '64768389'),
(78, 'GA', 'GAB', '267667.0', 'Libreville', 'AF', 'Gabon', 'گابن', '1545255'),
(79, 'GB', 'GBR', '244820.0', 'London', 'EU', 'United Kingdom', 'بریتانیا', '62348447'),
(80, 'GD', 'GRD', '344.0', 'St. George\'s', 'NA', 'Grenada', 'گرانادا', '107818'),
(81, 'GE', 'GEO', '69700.0', 'Tbilisi', 'AS', 'Georgia', 'گرجستان', '4630000'),
(82, 'GF', 'GUF', '91000.0', 'Cayenne', 'SA', 'French Guiana', 'گویان فرانسه', '195506'),
(83, 'GG', 'GGY', '78.0', 'St Peter Port', 'EU', 'Guernsey', 'گورنسی', '65228'),
(84, 'GH', 'GHA', '239460.0', 'Accra', 'AF', 'Ghana', 'غنا', '24339838'),
(85, 'GI', 'GIB', '6.5', 'Gibraltar', 'EU', 'Gibraltar', 'جبل الطارق', '27884'),
(86, 'GL', 'GRL', '2166086.0', 'Nuuk', 'NA', 'Greenland', 'گرینلند', '56375'),
(87, 'GM', 'GMB', '11300.0', 'Banjul', 'AF', 'Gambia', 'گامبیا', '1593256'),
(88, 'GN', 'GIN', '245857.0', 'Conakry', 'AF', 'Guinea', 'گینه', '10324025'),
(89, 'GP', 'GLP', '1780.0', 'Basse-Terre', 'NA', 'Guadeloupe', 'جزیره گوادلوپ', '443000'),
(90, 'GQ', 'GNQ', '28051.0', 'Malabo', 'AF', 'Equatorial Guinea', 'گینه استوایی', '1014999'),
(91, 'GR', 'GRC', '131940.0', 'Athens', 'EU', 'Greece', 'یونان', '11000000'),
(92, 'GS', 'SGS', '3903.0', 'Grytviken', 'AN', 'South Georgia and South Sandwich Islands', 'جورجیای جنوبی و جزایر ساندویچ جنوبی', '30'),
(93, 'GT', 'GTM', '108890.0', 'Guatemala City', 'NA', 'Guatemala', 'گواتمالا', '13550440'),
(94, 'GU', 'GUM', '549.0', 'Hagatna', 'OC', 'Guam', 'گوام', '159358'),
(95, 'GW', 'GNB', '36120.0', 'Bissau', 'AF', 'Guinea-Bissau', 'گینه بیسائو', '1565126'),
(96, 'GY', 'GUY', '214970.0', 'Georgetown', 'SA', 'Guyana', 'گویان', '748486'),
(97, 'HK', 'HKG', '1092.0', 'Hong Kong', 'AS', 'Hong Kong, SAR China', 'هنگ کنگ', '6898686'),
(98, 'HM', 'HMD', '412.0', NULL, 'AN', 'Heard Island and McDonald Islands', 'جزیره هرد و جزایر مک دونالد', '0'),
(99, 'HN', 'HND', '112090.0', 'Tegucigalpa', 'NA', 'Honduras', 'هندوراس', '7989415'),
(100, 'HR', 'HRV', '56542.0', 'Zagreb', 'EU', 'Croatia', 'کرواسی', '4284889'),
(101, 'HT', 'HTI', '27750.0', 'Port-au-Prince', 'NA', 'Haiti', 'هائیتی', '9648924'),
(102, 'HU', 'HUN', '93030.0', 'Budapest', 'EU', 'Hungary', 'مجارستان', '9982000'),
(103, 'ID', 'IDN', '1919440.0', 'Jakarta', 'AS', 'Indonesia', 'اندونزی', '242968342'),
(104, 'IE', 'IRL', '70280.0', 'Dublin', 'EU', 'Ireland', 'ایرلند', '4622917'),
(105, 'IL', 'ISR', '20770.0', 'Jerusalem', 'AS', 'Israel', 'اسرائیل', '7353985'),
(106, 'IM', 'IMN', '572.0', 'Douglas', 'EU', 'Isle of Man', 'جزیره من', '75049'),
(107, 'IN', 'IND', '3287590.0', 'New Delhi', 'AS', 'India', 'هند', '1173108018'),
(108, 'IO', 'IOT', '60.0', 'Diego Garcia', 'AS', 'British Indian Ocean Territory', 'قلمرو بریتانیا در اقیانوس هند', '4000'),
(109, 'IQ', 'IRQ', '437072.0', 'Baghdad', 'AS', 'Iraq', 'عراق', '29671605'),
(110, 'IR', 'IRN', '1648000.0', 'Tehran', 'AS', 'Iran, Islamic Republic of', 'ایران', '76923300'),
(111, 'IS', 'ISL', '103000.0', 'Reykjavik', 'EU', 'Iceland', 'ایسلند', '308910'),
(112, 'IT', 'ITA', '301230.0', 'Rome', 'EU', 'Italy', 'ایتالیا', '60340328'),
(113, 'JE', 'JEY', '116.0', 'Saint Helier', 'EU', 'Jersey', 'نیوجرسی', '90812'),
(114, 'JM', 'JAM', '10991.0', 'Kingston', 'NA', 'Jamaica', 'جامائیکا', '2847232'),
(115, 'JO', 'JOR', '92300.0', 'Amman', 'AS', 'Jordan', 'اردن', '6407085'),
(116, 'JP', 'JPN', '377835.0', 'Tokyo', 'AS', 'Japan', 'ژاپن', '127288000'),
(117, 'KE', 'KEN', '582650.0', 'Nairobi', 'AF', 'Kenya', 'کنیا', '40046566'),
(118, 'KG', 'KGZ', '198500.0', 'Bishkek', 'AS', 'Kyrgyzstan', 'قرقیزستان', '5776500'),
(119, 'KH', 'KHM', '181040.0', 'Phnom Penh', 'AS', 'Cambodia', 'کامبوج', '14453680'),
(120, 'KI', 'KIR', '811.0', 'Tarawa', 'OC', 'Kiribati', 'کیریباتی', '92533'),
(121, 'KM', 'COM', '2170.0', 'Moroni', 'AF', 'Comoros', 'کومور', '773407'),
(122, 'KN', 'KNA', '261.0', 'Basseterre', 'NA', 'St Kitts and Nevis', 'سنت کیتس و نویس', '51134'),
(123, 'KP', 'PRK', '120540.0', 'Pyongyang', 'AS', 'Korea (North)', 'کره شمالی', '22912177'),
(124, 'KR', 'KOR', '98480.0', 'Seoul', 'AS', 'Korea (South)', 'کره جنوبی', '48422644'),
(125, 'KW', 'KWT', '17820.0', 'Kuwait City', 'AS', 'Kuwait', 'کویت', '2789132'),
(126, 'KY', 'CYM', '262.0', 'George Town', 'NA', 'Cayman Islands', 'جزایر کیمن', '44270'),
(127, 'KZ', 'KAZ', '2717300.0', 'Nur-Sultan', 'AS', 'Kazakhstan', 'قزاقستان', '15340000'),
(128, 'LA', 'LAO', '236800.0', 'Vientiane', 'AS', 'Laos', 'لائوس', '6368162'),
(129, 'LB', 'LBN', '10400.0', 'Beirut', 'AS', 'Lebanon', 'لبنان', '4125247'),
(130, 'LC', 'LCA', '616.0', 'Castries', 'NA', 'Saint Lucia', 'سنت لوسیا', '160922'),
(131, 'LI', 'LIE', '160.0', 'Vaduz', 'EU', 'Liechtenstein', 'لیختن اشتاین', '35000'),
(132, 'LK', 'LKA', '65610.0', 'Colombo', 'AS', 'Sri Lanka', 'سریلانکا', '21513990'),
(133, 'LR', 'LBR', '111370.0', 'Monrovia', 'AF', 'Liberia', 'لیبریا', '3685076'),
(134, 'LS', 'LSO', '30355.0', 'Maseru', 'AF', 'Lesotho', 'لسوتو', '1919552'),
(135, 'LT', 'LTU', '65200.0', 'Vilnius', 'EU', 'Lithuania', 'لیتوانی', '2944459'),
(136, 'LU', 'LUX', '2586.0', 'Luxembourg', 'EU', 'Luxembourg', 'لوکزامبورگ', '497538'),
(137, 'LV', 'LVA', '64589.0', 'Riga', 'EU', 'Latvia', 'لتونی', '2217969'),
(138, 'LY', 'LBY', '1759540.0', 'Tripoli', 'AF', 'Libya', 'لیبی', '6461454'),
(139, 'MA', 'MAR', '446550.0', 'Rabat', 'AF', 'Morocco', 'مراکش', '33848242'),
(140, 'MC', 'MCO', '1.9', 'Monaco', 'EU', 'Monaco', 'موناکو', '32965'),
(141, 'MD', 'MDA', '33843.0', 'Chisinau', 'EU', 'Moldova', 'مولداوی', '4324000'),
(142, 'ME', 'MNE', '14026.0', 'Podgorica', 'EU', 'Montenegro', 'مونته نگرو', '666730'),
(143, 'MF', 'MAF', '53.0', 'Marigot', 'NA', 'Saint Martin', 'سنت مارتین', '35925'),
(144, 'MG', 'MDG', '587040.0', 'Antananarivo', 'AF', 'Madagascar', 'ماداگاسکار', '21281844'),
(145, 'MH', 'MHL', '181.3', 'Majuro', 'OC', 'Marshall Islands', 'جزایر مارشال', '65859'),
(146, 'MK', 'MKD', '25333.0', 'Skopje', 'EU', 'North Macedonia', 'شمال مقدونیه', '2062294'),
(147, 'ML', 'MLI', '1240000.0', 'Bamako', 'AF', 'Mali', 'مالی', '13796354'),
(148, 'MM', 'MMR', '678500.0', 'Nay Pyi Taw', 'AS', 'Myanmar', 'میانمار', '53414374'),
(149, 'MN', 'MNG', '1565000.0', 'Ulaanbaatar', 'AS', 'Mongolia', 'مغولستان', '3086918'),
(150, 'MO', 'MAC', '254.0', 'Macao', 'AS', 'Macao, SAR China', 'ماکائو', '449198'),
(151, 'MP', 'MNP', '477.0', 'Saipan', 'OC', 'Northern Mariana Islands', 'Northern Mariana Islands', '53883'),
(152, 'MQ', 'MTQ', '1100.0', 'Fort-de-France', 'NA', 'Martinique', 'مارتینیک', '432900'),
(153, 'MR', 'MRT', '1030700.0', 'Nouakchott', 'AF', 'Mauritania', 'موریتانی', '3205060'),
(154, 'MS', 'MSR', '102.0', 'Plymouth', 'NA', 'Montserrat', 'مونتسرات', '9341'),
(155, 'MT', 'MLT', '316.0', 'Valletta', 'EU', 'Malta', 'مالت', '403000'),
(156, 'MU', 'MUS', '2040.0', 'Port Louis', 'AF', 'Mauritius', 'موریس', '1294104'),
(157, 'MV', 'MDV', '300.0', 'Male', 'AS', 'Maldives', 'مالدیو', '395650'),
(158, 'MW', 'MWI', '118480.0', 'Lilongwe', 'AF', 'Malawi', 'مالاوی', '17563749'),
(159, 'MX', 'MEX', '1972550.0', 'Mexico City', 'NA', 'Mexico', 'مکزیک', '112468855'),
(160, 'MY', 'MYS', '329750.0', 'Kuala Lumpur', 'AS', 'Malaysia', 'مالزی', '28274729'),
(161, 'MZ', 'MOZ', '801590.0', 'Maputo', 'AF', 'Mozambique', 'موزامبیک', '22061451'),
(162, 'NA', 'NAM', '825418.0', 'Windhoek', 'AF', 'Namibia', 'نامیبیا', '2128471'),
(163, 'NC', 'NCL', '19060.0', 'Noumea', 'OC', 'New Caledonia', 'کالدونیای جدید', '216494'),
(164, 'NE', 'NER', '1267000.0', 'Niamey', 'AF', 'Niger', 'نیجر', '15878271'),
(165, 'NF', 'NFK', '34.6', 'Kingston', 'OC', 'Norfolk Island', 'جزیره نورفولک', '1828'),
(166, 'NG', 'NGA', '923768.0', 'Abuja', 'AF', 'Nigeria', 'نیجریه', '154000000'),
(167, 'NI', 'NIC', '129494.0', 'Managua', 'NA', 'Nicaragua', 'نیکاراگوئه', '5995928'),
(168, 'NL', 'NLD', '41526.0', 'Amsterdam', 'EU', 'Netherlands', 'هلند', '16645000'),
(169, 'NO', 'NOR', '324220.0', 'Oslo', 'EU', 'Norway', 'نروژ', '5009150'),
(170, 'NP', 'NPL', '140800.0', 'Kathmandu', 'AS', 'Nepal', 'نپال', '28951852'),
(171, 'NR', 'NRU', '21.0', 'Yaren', 'OC', 'Nauru', 'نائورو', '10065'),
(172, 'NU', 'NIU', '260.0', 'Alofi', 'OC', 'Niue', 'نیووی', '2166'),
(173, 'NZ', 'NZL', '268680.0', 'Wellington', 'OC', 'New Zealand', 'نیوزیلند', '4252277'),
(174, 'OM', 'OMN', '212460.0', 'Muscat', 'AS', 'Oman', 'عمان', '2967717'),
(175, 'PA', 'PAN', '78200.0', 'Panama City', 'NA', 'Panama', 'پاناما', '3410676'),
(176, 'PE', 'PER', '1285220.0', 'Lima', 'SA', 'Peru', 'پرو', '29907003'),
(177, 'PF', 'PYF', '4167.0', 'Papeete', 'OC', 'French Polynesia', 'پلینزی فرانسه', '270485'),
(178, 'PG', 'PNG', '462840.0', 'Port Moresby', 'OC', 'Papua New Guinea', 'پاپوآ گینه نو', '6064515'),
(179, 'PH', 'PHL', '300000.0', 'Manila', 'AS', 'Philippines', 'فیلیپین', '99900177'),
(180, 'PK', 'PAK', '803940.0', 'Islamabad', 'AS', 'Pakistan', 'پاکستان', '184404791'),
(181, 'PL', 'POL', '312685.0', 'Warsaw', 'EU', 'Poland', 'لهستان', '38500000'),
(182, 'PM', 'SPM', '242.0', 'Saint-Pierre', 'NA', 'Saint Pierre and Miquelon', 'سنت پیر و میکلون', '7012'),
(183, 'PN', 'PCN', '47.0', 'Adamstown', 'OC', 'Pitcairn Islands', 'Pitcairn Islands', '46'),
(184, 'PR', 'PRI', '9104.0', 'San Juan', 'NA', 'Puerto Rico', 'پورتوریکو', '3916632'),
(185, 'PS', 'PSE', '5970.0', 'East Jerusalem', 'AS', 'Palestinian Territory', 'فلسطین', '3800000'),
(186, 'PT', 'PRT', '92391.0', 'Lisbon', 'EU', 'Portugal', 'پرتغال', '10676000'),
(187, 'PW', 'PLW', '458.0', 'Melekeok', 'OC', 'Palau', 'پالائو', '19907'),
(188, 'PY', 'PRY', '406750.0', 'Asuncion', 'SA', 'Paraguay', 'پاراگوئه', '6375830'),
(189, 'QA', 'QAT', '11437.0', 'Doha', 'AS', 'Qatar', 'قطر', '840926'),
(190, 'RE', 'REU', '2517.0', 'Saint-Denis', 'AF', 'Réunion', 'رئونیون', '776948'),
(191, 'RO', 'ROU', '237500.0', 'Bucharest', 'EU', 'Romania', 'رومانی', '21959278'),
(192, 'RS', 'SRB', '88361.0', 'Belgrade', 'EU', 'Serbia', 'صربستان', '7344847'),
(193, 'RU', 'RUS', '17100000.0', 'Moscow', 'EU', 'Russia', 'روسیه', '140702000'),
(194, 'RW', 'RWA', '26338.0', 'Kigali', 'AF', 'Rwanda', 'رواندا', '11055976'),
(195, 'SA', 'SAU', '1960582.0', 'Riyadh', 'AS', 'Saudi Arabia', 'عربستان سعودی', '25731776'),
(196, 'SB', 'SLB', '28450.0', 'Honiara', 'OC', 'Solomon Islands', 'جزایر سلیمان', '559198'),
(197, 'SC', 'SYC', '455.0', 'Victoria', 'AF', 'Seychelles', 'سیشل', '88340'),
(198, 'SD', 'SDN', '1861484.0', 'Khartoum', 'AF', 'Sudan', 'سودان', '35000000'),
(199, 'SE', 'SWE', '449964.0', 'Stockholm', 'EU', 'Sweden', 'سوئد', '9828655'),
(200, 'SG', 'SGP', '692.7', 'Singapore', 'AS', 'Singapore', 'سنگاپور', '4701069'),
(201, 'SH', 'SHN', '410.0', 'Jamestown', 'AF', 'Saint Helena', 'پوند سنت هلن', '7460'),
(202, 'SI', 'SVN', '20273.0', 'Ljubljana', 'EU', 'Slovenia', 'اسلوونی', '2007000'),
(203, 'SJ', 'SJM', '62049.0', 'Longyearbyen', 'EU', 'Svalbard and Jan Mayen', 'سوالبارد و یان ماین', '2550'),
(204, 'SK', 'SVK', '48845.0', 'Bratislava', 'EU', 'Slovakia', 'اسلواکی', '5455000'),
(205, 'SL', 'SLE', '71740.0', 'Freetown', 'AF', 'Sierra Leone', 'سیرالئون', '5245695'),
(206, 'SM', 'SMR', '61.2', 'San Marino', 'EU', 'San Marino', 'سان مارینو', '31477'),
(207, 'SN', 'SEN', '196190.0', 'Dakar', 'AF', 'Senegal', 'سنگال', '12323252'),
(208, 'SO', 'SOM', '637657.0', 'Mogadishu', 'AF', 'Somalia', 'سومالی', '10112453'),
(209, 'SR', 'SUR', '163270.0', 'Paramaribo', 'SA', 'Suriname', 'سورینام', '492829'),
(210, 'SS', 'SSD', '644329.0', 'Juba', 'AF', 'South Sudan', 'سودان جنوبی', '8260490'),
(211, 'ST', 'STP', '1001.0', 'Sao Tome', 'AF', 'São Tomé and Príncipe', 'São Tomé and Príncipe', '197700'),
(212, 'SV', 'SLV', '21040.0', 'San Salvador', 'NA', 'El Salvador', 'ال سالوادور', '6052064'),
(213, 'SX', 'SXM', '21.0', 'Philipsburg', 'NA', 'Sint Maarten', 'Sint Maarten', '37429'),
(214, 'SY', 'SYR', '185180.0', 'Damascus', 'AS', 'Syria', 'سوریه', '22198110'),
(215, 'SZ', 'SWZ', '17363.0', 'Mbabane', 'AF', 'Eswatini', 'Eswatini', '1354051'),
(216, 'TC', 'TCA', '430.0', 'Cockburn Town', 'NA', 'Turks and Caicos Islands', 'ترکس و کیاکوس', '20556'),
(217, 'TD', 'TCD', '1284000.0', 'N\'Djamena', 'AF', 'Chad', 'چاد', '10543464'),
(218, 'TF', 'ATF', '7829.0', 'Port-aux-Francais', 'AN', 'French Southern Territories', 'French Southern Territories', '140'),
(219, 'TG', 'TGO', '56785.0', 'Lome', 'AF', 'Togo', 'توگو', '6587239'),
(220, 'TH', 'THA', '514000.0', 'Bangkok', 'AS', 'Thailand', 'تایلند', '67089500'),
(221, 'TJ', 'TJK', '143100.0', 'Dushanbe', 'AS', 'Tajikistan', 'تاجیکستان', '7487489'),
(222, 'TK', 'TKL', '10.0', NULL, 'OC', 'Tokelau', 'توکلائو', '1466'),
(223, 'TL', 'TLS', '15007.0', 'Dili', 'OC', 'Timor-Leste', 'تیمور-لسته', '1154625'),
(224, 'TM', 'TKM', '488100.0', 'Ashgabat', 'AS', 'Turkmenistan', 'ترکمنستان', '4940916'),
(225, 'TN', 'TUN', '163610.0', 'Tunis', 'AF', 'Tunisia', 'تونس', '10589025'),
(226, 'TO', 'TON', '748.0', 'Nuku\'alofa', 'OC', 'Tonga', 'تونگا', '122580'),
(227, 'TR', 'TUR', '780580.0', 'Ankara', 'AS', 'Turkey', 'ترکیه', '77804122'),
(228, 'TT', 'TTO', '5128.0', 'Port of Spain', 'NA', 'Trinidad and Tobago', 'ترینیداد و توباگو', '1328019'),
(229, 'TV', 'TUV', '26.0', 'Funafuti', 'OC', 'Tuvalu', 'تووالو', '10472'),
(230, 'TW', 'TWN', '35980.0', 'Taipei', 'AS', 'Taiwan', 'تایوان', '22894384'),
(231, 'TZ', 'TZA', '945087.0', 'Dodoma', 'AF', 'anzania, United Republic of', 'تانزانیا', '41892895'),
(232, 'UA', 'UKR', '603700.0', 'Kyiv', 'EU', 'Ukraine', 'اوکراین', '45415596'),
(233, 'UG', 'UGA', '236040.0', 'Kampala', 'AF', 'Uganda', 'اوگاندا', '33398682'),
(234, 'UM', 'UMI', '0.0', NULL, 'OC', 'U.S. Minor Outlying Islands', 'جزایر کوچک حاشیهای ایالات متحده', '0'),
(235, 'US', 'USA', '9629091.0', 'Washington', 'NA', 'United States of America', 'ایالات متحده آمریکا', '310232863'),
(236, 'UY', 'URY', '176220.0', 'Montevideo', 'SA', 'Uruguay', 'اروگوئه', '3477000'),
(237, 'UZ', 'UZB', '447400.0', 'Tashkent', 'AS', 'Uzbekistan', 'ازبکستان', '27865738'),
(238, 'VA', 'VAT', '0.4', 'Vatican City', 'EU', 'Vatican City', 'شهر واتیکان', '921'),
(239, 'VC', 'VCT', '389.0', 'Kingstown', 'NA', 'St Vincent and Grenadines', 'سنت وینسنت و گرنادینها', '104217'),
(240, 'VE', 'VEN', '912050.0', 'Caracas', 'SA', 'Venezuela', 'ونزوئلا', '27223228'),
(241, 'VG', 'VGB', '153.0', 'Road Town', 'NA', 'British Virgin Islands', 'جزایر ویرجین بریتانیا', '21730'),
(242, 'VI', 'VIR', '352.0', 'Charlotte Amalie', 'NA', 'Virgin Islands, US', 'جزایر ویرجین ایالات متحده', '108708'),
(243, 'VN', 'VNM', '329560.0', 'Hanoi', 'AS', 'Viet Nam', 'ویتنام', '89571130'),
(244, 'VU', 'VUT', '12200.0', 'Port Vila', 'OC', 'Vanuatu', 'وانواتو', '221552'),
(245, 'WF', 'WLF', '274.0', 'Mata Utu', 'OC', 'Wallis and Futuna Islands', 'والیس و فوتونا', '16025'),
(246, 'WS', 'WSM', '2944.0', 'Apia', 'OC', 'Samoa', 'ساموآ', '192001'),
(247, 'XK', 'XKX', '10908.0', 'Pristina', 'EU', 'Republic of Kosovo', 'کوزوو', '1800000'),
(248, 'YE', 'YEM', '527970.0', 'Sanaa', 'AS', 'Yemen', 'یمن', '23495361'),
(249, 'YT', 'MYT', '374.0', 'Mamoudzou', 'AF', 'Mayotte', 'Mayotte', '159042'),
(250, 'ZA', 'ZAF', '1219912.0', 'Pretoria', 'AF', 'South Africa', 'آفریقای جنوبی', '49000000'),
(251, 'ZM', 'ZMB', '752614.0', 'Lusaka', 'AF', 'Zambia', 'زامبیا', '13460305'),
(252, 'ZW', 'ZWE', '390580.0', 'Harare', 'AF', 'Zimbabwe', 'زیمبابوه', '13061000'),
(253, 'xx', 'xxx', '1000000000.0', 'Sky', 'UNX', 'World', 'جهان', '2147483647'),
(254, 'eu', 'EUR', '2753828.0', 'Brussels', 'EU', 'Euro Zone', 'منطقه یورو', '341925002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
