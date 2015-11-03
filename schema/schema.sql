-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2015 at 07:49 PM
-- Server version: 5.5.38
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tripbuilder`
--
CREATE DATABASE IF NOT EXISTS `tripbuilder` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tripbuilder`;

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
CREATE TABLE IF NOT EXISTS `airports` (
`id` int(11) NOT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `name_fr` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lat` decimal(9,6) NOT NULL,
  `lon` decimal(9,6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=181 ;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`id`, `code`, `name_en`, `name_fr`, `lat`, `lon`) VALUES
(1, 'YYZ', 'Toronto Pearson International Airport', 'Aéroport international Pearson de Toronto', 43.677223, -79.630555),
(2, 'YUL', 'Montréal–Pierre Elliott Trudeau International Airport', 'Aéroport international Pierre-Elliott-Trudeau de Montréal', 45.470556, -73.740832),
(3, 'YHZ', 'Halifax Stanfield International Airport', 'Aéroport international Stanfield d''Halifax', 44.880833, -63.508609),
(4, 'YOW', 'Ottawa Macdonald–Cartier International Airport', 'Aéroport international Macdonald-Cartier', 45.322500, -75.669166),
(5, 'YYC', 'Calgary International Airport', 'Aéroport international de Calgary', 51.113888, -114.020277),
(6, 'YEG', 'Edmonton International Airport', 'Aéroport international d''Edmonton', 53.533333, -113.483333),
(7, 'YVR', 'Vancouver International Airport', 'Aéroport international de Vancouver', 49.193889, -123.184443),
(8, 'YWG', 'Winnipeg James Armstrong Richardson International Airport', 'Aéroport international James Armstrong Richardson de Winnipeg', 49.910036, -97.239885),
(9, 'LGA', 'LaGuardia Airport', 'Aéroport de New-York-La Guardia', 40.777250, -73.872610),
(10, 'ORD', 'Chicago O''Hare International Airport', 'Aéroport international O''Hare de Chicago', 41.979333, -87.907388),
(11, 'LAX', 'Los Angeles International Airport', 'Aéroport international de Los Angeles', 33.942495, -118.408067),
(12, 'SFO', 'San Francisco International Airport', 'Aéroport international de San Francisco', 37.618817, -122.375427),
(13, 'HKG', 'Hong Kong International Airport', 'Aéroport international de Hong Kong', 22.308889, 113.914722),
(14, 'HND', 'Haneda Airport', 'Aéroport international de Tokyo-Haneda', 35.553333, 139.781111),
(15, 'SYD', 'Sydney Airport', 'Aéroport Sydney-Kingsford Smith', -33.946110, 151.177222),
(16, 'EZE', 'Ministro Pistarini International Airport', 'Aéroport international d''Ezeiza', -34.822221, -58.535832),
(17, 'FRA', 'Frankfurt Airport', 'Aéroport de Francfort-Rhein/Main', 50.026421, 8.543125),
(18, 'LHR', 'London Heathrow Airport', 'Aéroport de Londres Heathrow', 51.477500, -0.461388),
(19, 'CDG', 'Charles de Gaulle Airport', 'Aéroport de Paris-Charles-de-Gaulle', 49.009722, 2.547778),
(20, 'ZRH', 'Zürich Airport', 'Aéroport international de Zurich', 47.464722, 8.549167),
(21, 'PSP', 'Palm Springs Regional Airport', 'Aéroport régional de Palm Springs', 33.830319, -116.507047),
(22, 'SCL', 'Comodoro Arturo Merino Benítez International Airport', 'Aéroport international Comodoro Arturo Merino Benítez ', -33.392974, -70.785802),
(23, 'MIA', 'Miami International Airport', 'Aéroport international de Miami', 25.795361, -80.290110),
(24, 'SEA', 'Seattle–Tacoma International Airport', 'Aéroport international de Seattle-Tacoma', 47.449889, -122.311777),
(25, 'DFW', 'Dallas/Fort Worth International Airport', 'Aéroport international de Dallas-Fort Worth', 32.896828, -97.037995),
(26, 'YBG', 'Bagotville Airport', 'Aéroport de Bagotville', 48.330555, -70.996390),
(27, 'YBC', 'Baie-Comeau Airport', 'Aéroport de Baie-Comeau', 49.132500, -68.204443),
(28, 'ZBF', 'Bathurst Airport', 'Aéroport de Bathurst', 47.629723, -65.738888),
(29, 'YCG', 'West Kootenay Regional Airport', 'Aéroport régional de West Kootenay', 49.296389, -117.632499),
(30, 'YYG', 'Charlottetown Airport', 'Aéroport de Charlottetown', 46.290001, -63.121110),
(31, 'YXC', 'Cranbrook/Canadian Rockies International Airport', 'Aéroport international de Cranbrook/Rocheuses canadiennes', 49.612222, -115.781943),
(32, 'YDF', 'Deer Lake Regional Airport', 'Aéroport régional de Deer Lake', 49.210833, -57.391387),
(33, 'YFC', 'Fredericton International Airport', 'Aéroport international de Fredericton', 45.868889, -66.537221),
(34, 'YXJ', 'Fort St. John Airport', 'Aéroport de Fort St. John', 56.238056, -120.740277),
(35, 'YMM', 'Fort McMurray International Airport', 'Aéroport de Fort McMurray ', 56.653333, -111.221943),
(36, 'YQX', 'Gander International Airport', 'Aéroport international de Gander', 48.936944, -54.568055),
(37, 'YGP', 'Michel-Pouliot Gaspé Airport', 'Aéroport Michel Pouliot de Gaspé', 48.775278, -64.478610),
(38, 'YYR', 'Goose Bay Airport', 'Aéroport de Goose Bay', 53.319168, -60.425832),
(39, 'YQU', 'Grande Prairie Airport', 'Aéroport de Grande Prairie', 55.179722, -118.884999),
(40, 'YGR', 'Îles-de-la-Madeleine Airport', 'Aéroport d''Îles-de-la-Madeleine', 47.424721, -61.778055),
(41, 'YKA', 'Kamloops Airport', 'Aéroport de Kamloops ', 50.702222, -120.444443),
(42, 'YLW', 'Kelowna International Airport', 'Aéroport international de Kelowna', 49.956112, -119.377777),
(43, 'YGK', 'Kingston/Norman Rogers Airport', 'Aéroport de Kingston/Norman Rogers', 44.225277, -76.596943),
(44, 'YQL', 'Lethbridge Airport', 'Aéroport de Lethbridge ', 49.630278, -112.799721),
(45, 'YXU', 'London International Airport', 'Aéroport international de London', 43.033056, -81.151110),
(46, 'YXH', 'Medicine Hat Airport', 'Aéroport de Medicine Hat ', 50.018890, -110.720832),
(47, 'YQM', 'Greater Moncton International Airport', 'Aéroport international du Grand Moncton', 46.112221, -64.678610),
(48, 'YYY', 'Mont-Joli Airport', 'Aéroport de Mont-Joli', 48.608612, -68.208055),
(49, 'YCD', 'Nanaimo Airport', 'Aéroport de Nanaimo ', 49.054550, -123.870666),
(50, 'YYB', 'North Bay/Jack Garland Airport', 'Aéroport de North Bay/Jack Garland ', 46.363611, -79.422777),
(51, 'YYF', 'Penticton Regional Airport', 'Aéroport régional de Penticton', 49.463056, -119.602221),
(52, 'YXS', 'Prince George Airport', 'Aéroport de Prince George', 53.889444, -122.678888),
(53, 'YPR', 'Prince Rupert Airport', 'Aéroport de Prince Rupert', 54.286110, -130.444721),
(54, 'YQB', 'Québec City Jean Lesage International Airport', 'Aéroport international Jean-Lesage de Québec', 46.791111, -71.393332),
(55, 'YQF', 'Red Deer Regional Airport', 'Aéroport régional de Red Deer', 52.182222, -113.894443),
(56, 'YQR', 'Regina International Airport', 'Aéroport international de Regina', 50.431944, -104.665832),
(57, 'YUY', 'Rouyn-Noranda Airport', 'Aéroport de Rouyn-Noranda', 48.206111, -78.835555),
(58, 'YZP', 'Sandspit Airport', 'Aéroport de Sandspit', 53.254333, -131.813832),
(59, 'YZR', 'Sarnia Chris Hadfield Airport', 'Aéroport de Sarnia Chris Hadfield ', 42.999444, -82.308888),
(60, 'YXE', 'Saskatoon John G. Diefenbaker International Airport', 'Aéroport John G. Diefenbaker', 52.170834, -106.699721),
(61, 'YAM', 'Sault Ste. Marie Airport', 'Aéroport de Sault Ste. Marie', 46.485001, -84.509444),
(62, 'YZV', 'Sept-Îles Airport', 'Aéroport de Sept-Îles', 50.223333, -66.265555),
(63, 'YYD', 'Smithers Airport', 'Aéroport de Smithers', 54.824722, -127.182777),
(64, 'YSJ', 'Saint John Airport', 'Aéroport de Saint-Jean', 45.316111, -65.890277),
(65, 'YYT', 'St. John''s International Airport', 'Aéroport international de Saint-Jean de Terre-Neuve', 47.618610, -52.751944),
(66, 'YSB', 'Sudbury Airport', 'Aéroport de Sudbury', 46.625000, -80.798888),
(67, 'YQY', 'Sydney/J.A. Douglas McCurdy Airport', 'Aéroport de Sydney/J.A. Douglas McCurdy ', 46.161388, -60.047778),
(68, 'YXT', 'Northwest Regional Airport Terrace-Kitimat', 'Aéroport Northwest Regional Terrace-Kitimat', 54.468508, -128.576218),
(69, 'YQT', 'Thunder Bay International Airport', 'Aéroport international de Thunder Bay', 48.371944, -89.323888),
(70, 'YTS', 'Timmins/Victor M. Power Airport', 'Aéroport Timmins/Victor M. Power', 48.569721, -81.376666),
(71, 'YTZ', 'Billy Bishop Toronto City Airport', 'Aéroport Billy-Bishop de Toronto', 43.627499, -79.396166),
(72, 'YVO', 'Val-d''Or Airport', 'Aéroport de Val-d''Or', 48.053333, -77.782777),
(73, 'YYJ', 'Victoria International Airport', 'Aéroport international de Victoria', 48.646944, -123.425832),
(74, 'YWK', 'Wabush Airport', 'Aéroport de Wabush', 52.921944, -66.864443),
(75, 'YXY', 'Erik Nielsen Whitehorse International Airport', 'Aéroport international Erik Nielsen de Whitehorse', 60.709553, -135.067268),
(76, 'YQG', 'Windsor Airport', 'Aéroport Windsor', 42.275556, -82.955555),
(77, 'YZF', 'Yellowknife Airport', 'Aéroport de Yellowknife', 62.462778, -114.440277),
(78, 'ANC', 'Ted Stevens Anchorage International Airport', 'Aéroport international d''Anchorage Ted-Stevens', 61.174083, -149.998193),
(79, 'ATL', 'Hartsfield–Jackson Atlanta International Airport', 'Aéroport international Hartsfield-Jackson d''Atlanta', 33.636700, -84.427863),
(80, 'BWI', 'Baltimore–Washington International Airport', 'Aéroport international Thurgood Marshall de Baltimore-Washington', 39.175361, -76.668332),
(81, 'BOS', 'Boston Logan International Airport', 'Aéroport international de Boston-Logan', 42.362942, -71.006392),
(82, 'CLT', 'Charlotte Douglas International Airport', 'Aéroport international Charlotte-Douglas', 35.213741, -80.949068),
(83, 'CVG', 'Cincinnati/Northern Kentucky International Airport', 'Aéroport international de Cincinnati-Northern Kentucky', 39.048837, -84.667821),
(84, 'CLE', 'Cleveland Hopkins International Airport', 'Aéroport international de Cleveland-Hopkins', 41.409417, -81.854693),
(85, 'CMH', 'Port Columbus International Airport', 'Aéroport international Port Columbus', 39.996944, -82.892166),
(86, 'DEN', 'Denver International Airport', 'Aéroport international de Denver', 39.861667, -104.673166),
(87, 'DTW', 'Detroit Metropolitan Wayne County Airport', 'Aéroport métropolitain de Détroit', 42.212417, -83.353388),
(88, 'FLL', 'Fort Lauderdale–Hollywood International Airport', 'Aéroport international de Fort Lauderdale-Hollywood', 26.072596, -80.152740),
(89, 'RSW', 'Southwest Florida International Airport', 'Aéroport international du sud-ouest de la Floride', 26.536167, -81.755166),
(90, 'MDT', 'Harrisburg International Airport', 'Aéroport international d''Harrisburg', 40.193191, -76.762620),
(91, 'BDL', 'Bradley International Airport', 'Aéroport international Bradley', 41.939145, -72.683370),
(92, 'HNL', 'Honolulu International Airport', 'Aéroport international d''Honolulu', 21.317827, -157.920262),
(93, 'IAH', 'George Bush Intercontinental Airport', 'Aéroport intercontinental George-Bush de Houston', 29.984444, -95.341443),
(94, 'IND', 'Indianapolis International Airport', 'Aéroport international d''Indianapolis', 39.717299, -86.294660),
(95, 'OGG', 'Kahului Airport', 'Aéroport de Kahului', 20.898650, -156.430457),
(96, 'MCI', 'Kansas City International Airport', 'Aéroport international de Kansas City', 39.297605, -94.713905),
(97, 'KOA', 'Kona International Airport', 'Aéroport international de Kona', 19.738766, -156.045630),
(98, 'LAS', 'McCarran International Airport', 'Aéroport international McCarran', 36.080056, -115.152249),
(99, 'MKE', 'General Mitchell International Airport', 'Aéroport international General Mitchell de Milwaukee', 42.946944, -87.897055),
(100, 'MSP', 'Minneapolis–Saint Paul International Airport', 'Aéroport international de Minneapolis-Saint-Paul', 44.881972, -93.221777),
(101, 'BNA', 'Nashville International Airport', 'Aéroport international de Nashville', 36.124472, -86.678193),
(102, 'MSY', 'Louis Armstrong New Orleans International Airport', 'Aéroport international Louis Armstrong de La Nouvelle-Orléans', 29.993278, -90.259027),
(103, 'JFK', 'John F. Kennedy International Airport', 'Aéroport international John F. Kennedy', 40.639751, -73.778925),
(104, 'EWR', 'Newark Liberty International Airport', 'Aéroport international Newark Liberty', 40.692480, -74.168686),
(105, 'MCO', 'Orlando International Airport', 'Aéroport international d''Orlando', 28.429389, -81.308999),
(106, 'PHL', 'Philadelphia International Airport', 'Aéroport international de Philadelphie', 39.872249, -75.240865),
(107, 'PHX', 'Phoenix Sky Harbor International Airport', 'Aéroport de Phoenix-Sky Harbor', 33.434278, -112.011582),
(108, 'PIT', 'Pittsburgh International Airport', 'Aéroport international de Pittsburgh', 40.491417, -80.232693),
(109, 'PDX', 'Portland International Airport', 'Aéroport international de Portland', 45.588709, -122.596868),
(110, 'RDU', 'Raleigh–Durham International Airport', 'Aéroport international de Raleigh-Durham', 35.877639, -78.787471),
(111, 'ROC', 'Greater Rochester International Airport', 'Aéroport international de Rochester', 43.119142, -77.671868),
(112, 'SAN', 'San Diego International Airport', 'Aéroport international de San Diego', 32.733556, -117.189666),
(113, 'SRQ', 'Sarasota–Bradenton International Airport', 'Aéroport international de Sarasota–Bradenton', 27.395444, -82.554388),
(114, 'STL', 'Lambert–St. Louis International Airport', 'Aéroport international de Lambert-Saint Louis', 38.748697, -90.370028),
(115, 'SYR', 'Syracuse Hancock International Airport', 'Aéroport international de Syracuse-Hancock', 43.111194, -76.106305),
(116, 'TPA', 'Tampa International Airport', 'Aéroport international de Tampa', 27.975472, -82.533249),
(117, 'EGE', 'Eagle County Regional Airport', 'Aéroport régional d''Eagle County', 39.642750, -106.915943),
(118, 'DCA', 'Ronald Reagan Washington National Airport', 'Aéroport national Ronald Reagan', 38.851916, -77.037698),
(119, 'PBI', 'Palm Beach International Airport', 'Aéroport international de Palm Beach ', 26.683167, -80.095582),
(120, 'ANU', 'V. C. Bird International Airport', 'Aéroport international V. C. Bird', 17.136667, -61.792777),
(121, 'AUA', 'Queen Beatrix International Airport', 'Aéroport international Reine-Beatrix', 12.501389, -70.015220),
(122, 'BGI', 'Grantley Adams International Airport', 'Aéroport international Grantley-Adams', 13.074603, -59.492455),
(123, 'BDA', 'L.F. Wade International Airport', 'Aéroport international L.F. Wade', 32.364042, -64.678702),
(124, 'CUN', 'Cancún International Airport', 'Aéroport international de Cancún', 21.036528, -86.877082),
(125, 'CCC', 'Jardines del Rey Airport', 'Aéroport de Jardines del Rey', 22.461111, -78.328610),
(126, 'CYO', 'Vilo Acuña Airport', 'Aéroport de Vilo Acuña', 21.616453, -81.545988),
(127, 'CZM', 'Cozumel International Airport', 'Aéroport international de Cozumel', 20.522403, -86.925643),
(128, 'CUR', 'Curaçao International Airport', 'Aéroport international Hato', 12.188853, -68.959802),
(129, 'FDF', 'Martinique Aimé Césaire International Airport', 'Aéroport international Martinique Aimé Césaire', 14.592222, -60.996388),
(130, 'GGT', 'Exuma International Airport', 'Aéroport international Exuma', 23.562631, -75.877599),
(131, 'GCM', 'Owen Roberts International Airport', 'Aéroport international Owen Roberts', 19.292778, -81.357749),
(132, 'GND', 'Maurice Bishop International Airport', 'Aéroport de Pointe Salines', 12.004167, -61.788055),
(133, 'HAV', 'José Martí International Airport', 'Aéroport international José Martí', 22.989167, -82.409166),
(134, 'HOG', 'Frank País Airport', 'Aéroport de Frank País', 20.785556, -76.314999),
(135, 'HUX', 'Bahías de Huatulco International Airport', 'Aéroport international Bahías de Huatulco', 15.775317, -96.262571),
(136, 'ZIH', 'Ixtapa-Zihuatanejo International Airport', 'Aéroport international d''Ixtapa-Zihuatanejo ', 17.601569, -101.460535),
(137, 'KIN', 'Norman Manley International Airport', 'Aéroport international Norman Manley de Kingston', 17.935667, -76.787499),
(138, 'LRM', 'La Romana International Airport', 'Aéroport international Casa de Campo', 18.450711, -68.911832),
(139, 'LIR', 'Daniel Oduber Quirós International Airport', 'Aéroport international Daniel Oduber Quirós', 10.593015, -85.545544),
(140, 'MEX', 'Mexico City International Airport', 'Aéroport international de Mexico', 9.436303, -99.072096),
(141, 'MBJ', 'Sangster International Airport', 'Aéroport international Donald-Sangster', 18.503717, -77.913357),
(142, 'NAS', 'Lynden Pindling International Airport', 'Aéroport international Lynden Pindling', 25.038958, -77.466230),
(143, 'PTP', 'Pointe-à-Pitre International Airport', 'Aérodrome de Pointe-à-Pitre Le Raizet', 16.264167, -61.525832),
(144, 'PAP', 'Toussaint Louverture International Airport', 'Aéroport international Toussaint-Louverture', 18.580050, -72.292541),
(145, 'PLS', 'Providenciales International Airport', 'Aéroport international de Providenciales', 21.773764, -72.268674),
(146, 'POP', 'Gregorio Luperón International Airport', 'Aéroport international Gregorio-Luperón', 19.757900, -70.570032),
(147, 'PVR', 'Licenciado Gustavo Díaz Ordaz International Airport', 'Aéroport international Licenciado Gustavo Díaz Ordaz', 20.680083, -105.254166),
(148, 'PUJ', 'Punta Cana International Airport', 'Aéroport international de Punta Cana', 18.567367, -68.363430),
(149, 'SKB', 'Robert L. Bradshaw International Airport', 'Aéroport international Robert L. Bradshaw', 17.311389, -62.718610),
(150, 'AZS', 'Samaná El Catey International Airport', 'Aéroport international El Catey', 19.267000, -69.742000),
(151, 'SJD', 'Los Cabos International Airport', 'Aéroport international de Los Cabos', 23.151850, -109.721043),
(152, 'SJO', 'Juan Santamaría International Airport', 'Aéroport international Juan Santamaría de San José', 9.993903, -84.208855),
(153, 'SJU', 'Luis Muñoz Marín International Airport', 'Aéroport international Luis-Muñoz-Marín', 18.439399, -66.002134),
(154, 'SNU', 'Abel Santamaría Airport', 'Aéroport d''Abel Santamaría', 22.492192, -79.943610),
(155, 'UVF', 'Hewanorra International Airport', 'Aéroport international Hewanorra', 13.732222, -60.951943),
(156, 'SXM', 'Princess Juliana International Airport', 'Aéroport international Princess Juliana', 18.040953, -63.108899),
(157, 'VRA', 'Juan Gualberto Gómez Airport', 'Aéroport international Juan Gualberto Gómez', 23.034444, -81.435277),
(158, 'BOG', 'El Dorado International Airport', 'Aéroport international El Dorado', 4.703056, -74.138332),
(159, 'CCS', 'Simón Bolívar International Airport', 'Aéroport international Maiquetía - Simón Bolívar', 10.603117, -66.990582),
(160, 'LIM', 'Jorge Chávez International Airport', 'Aéroport international Jorge-Chávez', -12.021888, -77.114318),
(161, 'GIG', 'Rio de Janeiro–Galeão International Airport', 'Aéroport international de Rio de Janeiro-Galeão', -22.808902, -43.243646),
(162, 'ATH', 'Athens International Airport', 'Aéroport international d''Athènes Elefthérios-Venizélos', 37.936358, 23.944467),
(163, 'BCN', 'Barcelona–El Prat Airport', 'Aéroport international de Barcelone-El Prat', 41.297078, 2.078464),
(164, 'BRU', 'Brussels Airport', 'Aéroport de Bruxelles', 50.901389, 4.484444),
(165, 'CPH', 'Copenhagen Airport', 'Aéroport de Copenhague', 55.617917, 12.655972),
(166, 'DUB', 'Dublin Airport', 'Aéroport international de Dublin', 53.421389, -6.269999),
(167, 'EDI', 'Edinburgh Airport', 'Aéroport d''Édimbourg', 55.950000, -3.372499),
(168, 'GVA', 'Geneva International Airport', 'Aéroport international de Genève', 46.238064, 6.108950),
(169, 'IST', 'Istanbul Atatürk Airport', 'Aéroport Atatürk d''Istanbul', 40.976111, 28.813889),
(170, 'LIS', 'Lisbon Portela Airport', 'Aéroport de Lisbonne-Portela', 38.781311, -9.135918),
(171, 'MAD', 'Adolfo Suárez Madrid–Barajas Airport', 'Aéroport Adolfo-Suárez de Madrid-Barajas', 40.493556, -3.566763),
(172, 'MAN', 'Manchester Airport', 'Aéroport de Manchester', 53.353744, -2.274949),
(173, 'MXP', 'Malpensa Airport', 'Aéroport de Milan Malpensa', 45.630606, 8.728111),
(174, 'MUC', 'Munich Airport', 'Aéroport de Munich-Franz-Josef Strauss', 48.353783, 11.786086),
(175, 'NCE', 'Nice Côte d''Azur Airport', 'Aéroport de Nice-Côte d''Azur', 43.665278, 7.215000),
(176, 'FCO', 'Leonardo da Vinci–Fiumicino Airport', 'Aéroport Léonard-de-Vinci de Rome Fiumicino', 41.804475, 12.250797),
(177, 'TLV', 'Ben Gurion Airport', 'Aéroport international de Tel Aviv-David Ben Gourion', 32.011389, 34.886667),
(178, 'VCE', 'Venice Marco Polo Airport', 'Aéroport de Venise-Marco Polo', 45.505278, 12.351944),
(179, 'PEK', 'Beijing Capital International Airport', 'Aéroport international de Pékin', 40.080111, 116.584556),
(180, 'ICN', 'Incheon International Airport', 'Aéroport international d''Incheon', 37.469075, 126.450517);

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
CREATE TABLE IF NOT EXISTS `flights` (
`id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `from_airport_id` int(11) NOT NULL,
  `to_airport_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `trip_id`, `from_airport_id`, `to_airport_id`) VALUES
(1, 1, 1, 3),
(2, 2, 12, 13),
(3, 2, 45, 88);

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
CREATE TABLE IF NOT EXISTS `trips` (
`id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `name`) VALUES
(1, 'My Test Trip (Cancelled)'),
(2, 'My 2nd Trip');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airports`
--
ALTER TABLE `airports`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=181;
--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
