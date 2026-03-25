-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 13 Eki 2025, 22:26:22
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `gidenle`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_cats`
--

CREATE TABLE `blog_cats` (
  `blog_cats_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_type` varchar(50) NOT NULL DEFAULT 'item',
  `cat_name` varchar(255) NOT NULL DEFAULT '0',
  `cat_url` varchar(255) NOT NULL,
  `cat_parent_id` int(11) NOT NULL,
  `cat_status` varchar(50) NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ekategori`
--

CREATE TABLE `ekategori` (
  `cat_id` int(11) NOT NULL,
  `katAdi` varchar(255) CHARACTER SET utf8 NOT NULL,
  `turId` int(11) NOT NULL,
  `altkatoncelik` int(11) NOT NULL DEFAULT 0,
  `altkat_image` varchar(255) NOT NULL,
  `silkat` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `ekategori`
--

INSERT INTO `ekategori` (`cat_id`, `katAdi`, `turId`, `altkatoncelik`, `altkat_image`, `silkat`) VALUES
(1, 'Bilgi Teknolojileri', 1, 0, '', 1),
(2, 'Finansal Hizmetler', 1, 0, '', 1),
(3, 'Hukuk', 1, 0, '', 1),
(4, 'İnsan Kaynakları', 1, 0, '', 1),
(5, 'Kalite Yönetimi', 1, 0, '', 1),
(6, 'Kişisel Gelişim', 1, 0, '', 1),
(7, 'Liderlik ve Yönetim', 1, 0, '', 1),
(8, 'Muhasebe ve Denetim', 1, 0, '', 1),
(9, 'Sağlık ve Güvenlik', 1, 0, '', 1),
(10, 'Satış ve Pazarlama', 1, 0, '', 1),
(11, 'Tedarik Yönetimi', 1, 0, '', 1),
(12, 'Uluslararası Ticaret', 1, 0, '', 1),
(13, 'E-Learning', 1, 0, '', 1),
(14, 'Yurtdışı', 1, 0, '', 1),
(15, 'Yabancı Dil', 1, 0, '', 1),
(16, 'Teknik Eğitimler', 1, 0, '', 1),
(17, 'Aşçılık', 1, 0, '', 1),
(18, 'Moda', 1, 0, '', 1),
(19, 'El Sanatları', 1, 0, '', 1),
(20, 'Görsel Sanatlar', 1, 0, '', 1),
(21, 'Meslek Edindirme', 1, 0, '', 1),
(22, 'Peyzaj', 1, 0, '', 1),
(23, 'Genel Yönetim', 1, 0, '', 0),
(24, 'Proje Yönetimi', 1, 0, '', 0),
(25, 'Zaman Yönetimi', 1, 0, '', 0),
(26, 'Kalite Yönetimi', 1, 0, '', 0),
(27, 'İş Yönetimi', 1, 0, '', 0),
(28, 'Üretim Yönetimi', 1, 0, '', 0),
(29, 'İngilizce Dil Eğitimi', 2, 0, '', 0),
(30, 'Almanca Dil Eğitimi', 2, 0, '', 0),
(31, 'Fransızca Dil Eğitimi', 2, 0, '', 0),
(32, 'İtalyanca Dil Eğitimi', 2, 0, '', 0),
(33, 'Rusça Dil Eğitimi', 2, 0, '', 0),
(34, 'Arapça Dil Eğitimi', 2, 0, '', 0),
(35, 'İspanyolca  Dil Eğitimi', 2, 0, '', 0),
(36, 'Çince  Dil Eğitimi', 2, 0, '', 0),
(37, 'Osmanlıca  Dil Eğitimi', 2, 0, '', 0),
(38, 'Türkçe  Dil Eğitimi', 2, 0, '', 0),
(39, 'Farsça  Dil Eğitimi', 2, 0, '', 0),
(40, 'Bağlama Eğitimi', 3, 0, '', 0),
(41, 'Saz Eğitimi', 3, 0, '', 0),
(42, 'Gitar Eğitimi', 3, 0, '', 0),
(43, 'Kanun Eğitimi', 3, 0, '', 0),
(44, 'Kemane Eğitimi', 3, 0, '', 0),
(45, 'Klarnet Eğitimi', 3, 0, '', 0),
(46, 'Ney Eğitimi', 3, 0, '', 0),
(47, 'Piyano Eğitimi', 3, 0, '', 0),
(48, 'Ritim Eğitimi', 3, 0, '', 0),
(49, 'Solfej Eğitimi', 3, 0, '', 0),
(50, 'Ud Eğitimi', 3, 0, '', 0),
(51, 'Yan Bağlama Eğitimi', 3, 0, '', 0),
(52, 'Yazılım', 4, 0, '', 0),
(53, 'Ağ Temelleri', 4, 0, '', 0),
(54, 'Veri Tabanı', 4, 0, '', 0),
(55, 'Genel Bilgisayar', 4, 0, '', 0),
(56, 'İnternet', 4, 0, '', 0),
(57, 'Microsoft Office', 4, 0, '', 0),
(58, 'İşletim Sistemleri', 4, 0, '', 0),
(59, 'Grafik Tasarım', 4, 0, '', 0),
(60, 'Web Tasarım', 4, 0, '', 0),
(61, 'Donanım', 4, 0, '', 0),
(62, 'DGS', 5, 0, '', 0),
(63, 'ALES', 5, 0, '', 0),
(64, 'LYS', 5, 0, '', 0),
(65, 'YGS', 5, 0, '', 0),
(66, 'KPSS', 5, 0, '', 0),
(67, 'TUS', 5, 0, '', 0),
(68, 'ÜDS', 5, 0, '', 0),
(69, 'TOEFL', 5, 0, '', 0),
(70, 'Açık Öğretim', 5, 0, '', 0),
(71, 'SMMM', 5, 0, '', 0),
(72, 'DUS', 5, 0, '', 0),
(73, 'Ebru', 7, 0, '', 0),
(74, 'Gravür', 7, 0, '', 0),
(75, 'Guaj Boya', 7, 0, '', 0),
(76, 'Hüsn-i Hat', 7, 0, '', 0),
(77, 'Minyatür', 7, 0, '', 0),
(78, 'Yağlı Boya', 7, 0, '', 0),
(79, 'Cam Süsleme', 7, 0, '', 0),
(80, 'Beden Dili Eğitimi', 8, 0, '', 0),
(81, 'İşaret Dili  Eğitimi', 8, 0, '', 0),
(82, 'Liderlik Eğitimi', 8, 50, '', 0),
(83, 'Etkili Konuşma  Eğitimi', 8, 0, '', 0),
(84, 'Aile Yönetimi  Eğitimi', 8, 0, '', 0),
(85, 'Aerobik', 9, 0, '', 0),
(86, 'Plates', 9, 0, '', 0),
(87, 'Fitness', 9, 0, '', 0),
(88, 'Yüzme', 9, 0, '', 0),
(89, 'Tenis', 9, 0, '', 0),
(90, 'Voleybol', 9, 0, '', 0),
(91, 'Kayak', 9, 0, '', 0),
(92, 'Masa Tenisi', 9, 0, '', 0),
(93, 'Polo', 9, 0, '', 0),
(94, 'Sörf', 9, 0, '', 0),
(95, 'Su kayağı', 9, 0, '', 0),
(96, 'Tekvando', 9, 0, '', 0),
(97, 'Su Topu', 9, 0, '', 0),
(98, 'Halter', 9, 0, '', 0),
(99, 'Judo', 9, 0, '', 0),
(100, 'Hentbol', 9, 0, '', 0),
(101, 'Golf', 9, 0, '', 0),
(102, 'Badminton', 9, 0, '', 0),
(103, 'Atıcılık', 9, 0, '', 0),
(104, 'Atletizm', 9, 0, '', 0),
(105, 'Basketbol', 9, 0, '', 0),
(106, 'Boks', 9, 0, '', 0),
(107, 'Cimnastik', 9, 0, '', 0),
(108, 'Eskrim', 9, 0, '', 0),
(109, 'Futbol', 9, 0, '', 0),
(110, 'Kano', 9, 0, '', 0),
(111, 'Kürek Sporu', 9, 0, '', 0),
(112, 'Okçuluk', 9, 0, '', 0),
(113, 'Yelken Sporu', 9, 0, '', 0),
(114, 'Ahşap Teknolojisi', 12, 0, '', 0),
(115, 'Bahçecilik', 12, 0, '', 0),
(116, 'Büro Yönetim ve Sekreterlik', 12, 0, '', 0),
(117, 'Gazetecilik', 12, 0, '', 0),
(118, 'Giyim Üretim Teknolojileri/Moda', 12, 0, '', 0),
(119, 'Güzellik Hizmetleri', 12, 0, '', 0),
(120, 'Halkla İlişkiler ve Organizasyon', 12, 0, '', 0),
(121, 'Hukuk', 12, 0, '', 0),
(122, 'Kuyumculuk Teknolojileri', 12, 0, '', 0),
(123, 'Muhasebe ve Finansman', 12, 0, '', 0),
(124, 'Radyo ve Televizyon', 12, 0, '', 0),
(125, 'Pastacılık', 12, 0, '', 1),
(126, 'Aşçılık', 12, 0, '', 1),
(127, 'Bale', 13, 0, '', 0),
(128, 'Modern Dans', 13, 0, '', 0),
(129, 'Türk Halk Dansları', 13, 0, '', 0),
(130, 'Sirtaki', 13, 0, '', 0),
(131, 'Oryantal', 13, 0, '', 0),
(132, 'Roman', 13, 0, '', 0),
(133, 'Jazz ', 13, 0, '', 0),
(134, 'Latin Pop', 13, 0, '', 0),
(135, 'Hip Hop', 13, 0, '', 0),
(136, 'Latin Dansları', 13, 0, '', 0),
(137, 'Salsa', 13, 0, '', 0),
(138, 'Tango', 13, 0, '', 0),
(139, 'Aşçılık', 14, 0, '', 0),
(140, 'Pastacılık', 14, 0, '', 0),
(141, 'A Sınıfı İş Güvenliği', 15, 0, '', 0),
(142, 'B Sınıfı İş Güvenliği', 15, 0, '', 0),
(143, 'C Sınıfı İş Güvenliği', 15, 0, '', 0),
(144, 'Bütçe Yönetimi', 1, 0, '', 0),
(145, 'İş Hukuku', 15, 0, '', 0),
(146, 'Ürün Tanıtım', 16, 0, '', 0),
(147, 'Kişisel Bakım', 16, 0, '', 0),
(148, 'Basın ve Yayın', 12, 0, '', 0),
(149, 'Hasta ve Yaşlı Bakım Hizmetleri', 16, 0, '', 0),
(150, 'YDS', 5, 0, '', 0),
(151, 'İçecek', 14, 0, '', 0),
(152, 'Ermenice  Dil Eğitimi', 2, 0, '', 0),
(153, 'IELTS', 5, 0, '', 0),
(154, 'Risk Değerlendirme', 15, 0, '', 0),
(155, 'Diksiyon Eğitimi', 8, 0, '', 0),
(156, 'Teorik Müzik Eğitimi', 3, 0, '', 0),
(157, 'Şan Eğitimi', 3, 0, '', 0),
(158, 'Beden Eğitimi ve Spor Yüksek Okulu Hazırlık', 9, 0, '', 0),
(159, 'Yoga', 9, 0, '', 0),
(160, 'Flamenko', 13, 0, '', 0),
(161, 'Zeybek', 13, 0, '', 0),
(162, 'Zumba', 13, 0, '', 0),
(163, 'İşyeri hekimliği', 15, 0, '', 0),
(164, 'İşyeri hemşireliği', 15, 0, '', 0),
(165, 'Keman Eğitimi', 3, 0, '', 0),
(166, 'Yan Flüt Eğitimi', 3, 0, '', 0),
(167, 'Düğün Dansı', 13, 0, '', 0),
(168, 'Oyunlu Spor Eğitimi', 9, 0, '', 0),
(169, 'Çocuk Spor Eğitimi', 9, 0, '', 0),
(170, 'Yüksekte Çalışma Eğitimi', 15, 0, '', 0),
(171, 'İskele Eğitimi', 15, 0, '', 0),
(172, 'Patlamadan Korunma Dökümanı Hazırlama Eğitimi', 15, 0, '', 0),
(173, 'Saha Uygulamaları Eğitimi', 15, 0, '', 0),
(174, 'Saksafon Eğitimi', 3, 0, '', 0),
(175, 'İlkyardım', 16, 0, '', 0),
(176, 'Hijyen', 16, 0, '', 0),
(177, 'Dijital Pazarlama', 8, 0, '', 1),
(178, 'Koçluk Eğitimi', 8, 30, '', 0),
(179, 'Marka Yönetimi', 17, 0, '', 0),
(180, 'ERP Yazılımları', 4, -1, '', 0),
(181, 'Dijital Pazarlama', 17, 0, '', 0),
(182, 'Sunum Becerileri', 8, 100, '', 0),
(183, 'İlk Yardım', 15, 0, '', 0),
(184, 'Satış', 17, 0, '', 0),
(185, 'Başarı Eğitimi', 8, 40, '', 0),
(186, 'Güvenlik/Denetim', 4, 0, '', 0),
(187, 'Dış Ticaret', 17, 0, '', 0),
(188, 'Bilişim ve Teknoloji Hukuku', 18, 0, '', 0),
(189, 'Ekonomi Hukuku', 18, 0, '', 0),
(190, 'Enerji Hukuku', 18, 0, '', 0),
(191, 'Gayrimenkul Hukuku', 18, 0, '', 0),
(192, 'İş Hukuku', 18, 0, '', 0),
(193, 'Kamulaştırma Hukuku', 18, 0, '', 0),
(194, 'Medya Hukuku', 18, 0, '', 0),
(195, 'Sağlık Hukuku', 18, 0, '', 0),
(196, 'Sözleşmeler Hukuku', 18, 0, '', 0),
(197, 'Spor Hukuku', 18, 0, '', 0),
(198, 'Japonca Dil Eğitimi', 2, 0, '', 0),
(199, 'Diğer', 1, 0, '', 0),
(200, 'Diğer', 2, 0, '', 0),
(201, 'Diğer', 3, 0, '', 0),
(202, 'Diğer', 4, 0, '', 0),
(203, 'Diğer', 5, 0, '', 0),
(204, 'Diğer', 6, 0, '', 0),
(205, 'Diğer', 7, 0, '', 0),
(206, 'Diğer', 8, 999, '', 0),
(207, 'Diğer', 9, 0, '', 0),
(208, 'Diğer', 10, 0, '', 0),
(209, 'Diğer', 11, 0, '', 0),
(210, 'Diğer', 12, 0, '', 0),
(211, 'Diğer', 13, 0, '', 0),
(212, 'Diğer', 14, 0, '', 0),
(213, 'Diğer', 15, 0, '', 0),
(214, 'Diğer', 16, 0, '', 0),
(215, 'Diğer', 17, 0, '', 0),
(216, 'Diğer', 18, 0, '', 0),
(217, 'Programlama', 4, 0, '', 0),
(218, 'Kariyer Gelişimi', 8, 10, '', 0),
(219, 'Kişisel Marka', 8, 20, '', 0),
(220, 'Diğer', 19, 999, '', 0),
(221, 'Tehlikeli Madde Güvenliği Danışmanlığı', 15, 0, '', 0),
(222, 'İlk Yardım Eğitici Eğitimi', 15, 0, '', 0),
(223, 'Yüksek Lisans İş Güvenliği', 15, 0, '', 0),
(224, 'Dil Okulları', 23, 10, '', 0),
(225, 'Yaz Okulları', 23, 20, '', 0),
(226, 'Yüksek Lisans ', 23, 30, '', 0),
(227, 'Üniversite', 23, 40, '', 0),
(228, 'Sertifika', 23, 50, '', 0),
(229, 'Sosyal Medya', 17, 0, '', 0),
(230, 'ÖABT', 5, 0, '', 0),
(231, 'Teknik Çizim', 4, 0, '', 0),
(232, 'TEOG', 5, 0, '', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etur`
--

CREATE TABLE `etur` (
  `id` int(11) NOT NULL,
  `turadi` varchar(255) NOT NULL,
  `katoncelik` int(11) NOT NULL DEFAULT 0,
  `kat_image` varchar(255) NOT NULL,
  `siltur` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `etur`
--

INSERT INTO `etur` (`id`, `turadi`, `katoncelik`, `kat_image`, `siltur`) VALUES
(1, 'Yönetim', 20, '', 0),
(2, 'Dil Eğitimleri', 200, '', 0),
(3, 'Müzik', 500, '', 0),
(4, 'Bilişim', 10, '', 0),
(5, 'Sınavlara Hazırlık Kursları', 250, '', 0),
(6, 'Sağlık', 0, '', 1),
(7, 'Sanat ve Hobi', 550, '', 0),
(8, 'Kişisel Gelişim', 50, '', 0),
(9, 'Spor', 400, '', 0),
(10, 'Bilimsel', 0, '', 1),
(11, 'Meslek Edindirme', 0, '', 1),
(12, 'Meslek Edindirme Kursları', 60, '', 0),
(13, 'Dans', 450, '', 0),
(14, 'Yemek (Aşçılık ve Pastacılık) Eğitimi', 600, '', 0),
(15, 'İş Sağlığı Güvenliği', 100, '', 0),
(16, 'Sağlık Eğitimleri', 300, '', 0),
(17, 'Satış ve Pazarlama', 30, '', 0),
(18, 'Hukuk Eğitimleri', 110, '', 0),
(19, 'DİĞER', 701, '', 1),
(20, 'Ehliyet Kursu', 700, '', 0),
(21, 'Diğer', 999, '', 1),
(22, 'Yurtdışı Eğitim ', 800, '', 1),
(23, 'Yurtdışı Eğitim ', 800, '', 0),
(24, 'Diğer', 999, '', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `il`
--

CREATE TABLE `il` (
  `il_id` int(11) NOT NULL,
  `il_kodu` int(11) DEFAULT NULL,
  `il_adi` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `il`
--

INSERT INTO `il` (`il_id`, `il_kodu`, `il_adi`) VALUES
(1, 1, 'Adana'),
(2, 2, 'Adıyaman'),
(3, 3, 'Afyon'),
(4, 4, 'Ağrı'),
(5, 5, 'Amasya'),
(6, 6, 'Ankara'),
(7, 7, 'Antalya'),
(8, 8, 'Artvin'),
(9, 9, 'Aydın'),
(10, 10, 'Balıkesir'),
(11, 11, 'Bilecik'),
(12, 12, 'Bingöl'),
(13, 13, 'Bitlis'),
(14, 14, 'Bolu'),
(15, 15, 'Burdur'),
(16, 16, 'Bursa'),
(17, 17, 'Çanakkale'),
(18, 18, 'Çankırı'),
(19, 19, 'Çorum'),
(20, 20, 'Denizli'),
(21, 21, 'Diyarbakır'),
(22, 22, 'Edirne'),
(23, 23, 'Elazığ'),
(24, 24, 'Erzincan'),
(25, 25, 'Erzurum'),
(26, 26, 'Eskişehir'),
(27, 27, 'Gaziantep'),
(28, 28, 'Giresun'),
(29, 29, 'Gümüşhane'),
(30, 30, 'Hakkari'),
(31, 31, 'Hatay'),
(32, 32, 'Isparta'),
(33, 33, 'İ&#231;el'),
(34, 34, 'İstanbul'),
(35, 35, 'İzmir'),
(36, 36, 'Kars'),
(37, 37, 'Kastamonu'),
(38, 38, 'Kayseri'),
(39, 39, 'Kırklareli'),
(40, 40, 'Kırşehir'),
(41, 41, 'Kocaeli'),
(42, 42, 'Konya'),
(43, 43, 'Kütahya'),
(44, 44, 'Malatya'),
(45, 45, 'Manisa'),
(46, 46, 'K.Maraş'),
(47, 47, 'Mardin'),
(48, 48, 'Muğla'),
(49, 49, 'Muş'),
(50, 50, 'Nevşehir'),
(51, 51, 'Niğde'),
(52, 52, 'Ordu'),
(53, 53, 'Rize'),
(54, 54, 'Sakarya'),
(55, 55, 'Samsun'),
(56, 56, 'Siirt'),
(57, 57, 'Sinop'),
(58, 58, 'Sivas'),
(59, 59, 'Tekirdağ'),
(60, 60, 'Tokat'),
(61, 61, 'Trabzon'),
(62, 62, 'Tunceli'),
(63, 63, 'Şanlıurfa'),
(64, 64, 'Uşak'),
(65, 65, 'Van'),
(66, 66, 'Yozgat'),
(67, 67, 'Zonguldak'),
(68, 68, 'Aksaray'),
(69, 69, 'Bayburt'),
(70, 70, 'Karaman'),
(71, 71, 'Kırıkkale'),
(72, 72, 'Batman'),
(73, 73, 'Şırnak'),
(74, 74, 'Bartın'),
(75, 75, 'Ardahan'),
(76, 76, 'Iğdır'),
(77, 77, 'Yalova'),
(78, 78, 'Karabük'),
(79, 79, 'Kilis'),
(80, 80, 'Osmaniye'),
(81, 81, 'Düzce');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilce`
--

CREATE TABLE `ilce` (
  `ilce_id` int(11) NOT NULL,
  `il_kodu` int(11) DEFAULT NULL,
  `ilce_kodu` int(11) DEFAULT NULL,
  `ilce_adi` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ilce`
--

INSERT INTO `ilce` (`ilce_id`, `il_kodu`, `ilce_kodu`, `ilce_adi`) VALUES
(1, 1, 0, 'MERKEZ'),
(2, 1, 20, 'ALADAG'),
(3, 1, 28, 'CEYHAN'),
(4, 1, 36, 'FEKE'),
(5, 1, 40, 'IMAMOGLU'),
(6, 1, 48, 'KARAISALI'),
(7, 1, 52, 'KARATAS'),
(8, 1, 56, 'KOZAN'),
(9, 1, 64, 'POZANTI'),
(10, 1, 68, 'SAIMBEYLI'),
(11, 1, 72, 'SEYHAN'),
(12, 1, 76, 'TUFANBEYLI'),
(13, 1, 80, 'YUMURTALIK'),
(14, 1, 84, 'YÜREGIR'),
(15, 2, 0, 'MERKEZ'),
(16, 2, 20, 'BESNI'),
(17, 2, 25, 'ÇELIKHAN'),
(18, 2, 30, 'GERGER'),
(19, 2, 35, 'GÖLBASI'),
(20, 2, 40, 'KAHTA'),
(21, 2, 45, 'SAMSAT'),
(22, 2, 50, 'SINCIK'),
(23, 2, 55, 'TUT'),
(24, 3, 0, 'MERKEZ'),
(25, 3, 20, 'BASMAKÇI'),
(26, 3, 24, 'BAYAT'),
(27, 3, 28, 'BOLVADIN'),
(28, 3, 32, 'ÇOBANLAR'),
(29, 3, 36, 'ÇAY'),
(30, 3, 40, 'DAZKIRI'),
(31, 3, 44, 'DINAR'),
(32, 3, 48, 'EMIRDAG'),
(33, 3, 52, 'EVCILER'),
(34, 3, 56, 'HOCALAR'),
(35, 3, 60, 'IHSANIYE'),
(36, 3, 64, 'ISCEHISAR'),
(37, 3, 68, 'KIZILÖREN'),
(38, 3, 72, 'SANDIKLI'),
(39, 3, 76, 'SINCANLI'),
(40, 3, 80, 'SULTANDAGI'),
(41, 3, 84, 'SUHUT'),
(42, 4, 0, 'MERKEZ'),
(43, 4, 20, 'DIYADIN'),
(44, 4, 25, 'DOGUBEYAZIT'),
(45, 4, 30, 'ELESKIRT'),
(46, 4, 35, 'HAMUR'),
(47, 4, 40, 'PATNOS'),
(48, 4, 45, 'TASLIÇAY'),
(49, 4, 50, 'TUTAK'),
(50, 5, 0, 'MERKEZ'),
(51, 5, 20, 'GÖYNÜCEK'),
(52, 5, 25, 'GÜMÜSHACIKÖY'),
(53, 5, 30, 'HAMAMÖZÜ'),
(54, 5, 35, 'MERZIFON'),
(55, 5, 40, 'SULUOVA'),
(56, 5, 45, 'TASOVA'),
(57, 6, 0, 'MERKEZ'),
(58, 6, 20, 'AKYURT'),
(59, 6, 23, 'ALTINDAG'),
(60, 6, 26, 'AYAS'),
(61, 6, 29, 'BALA'),
(62, 6, 32, 'BEYPAZARI'),
(63, 6, 35, 'ÇAMLIDERE'),
(64, 6, 38, 'ÇANKAYA'),
(65, 6, 41, 'ÇUBUK'),
(66, 6, 44, 'ELMADAG'),
(67, 6, 47, 'ETIMESGUT'),
(68, 6, 50, 'EVREN'),
(69, 6, 53, 'GÖLBASI'),
(70, 6, 56, 'GÜDÜL'),
(71, 6, 59, 'HAYMANA'),
(72, 6, 62, 'KALECIK'),
(73, 6, 65, 'KAZAN'),
(74, 6, 68, 'KEÇIÖREN'),
(75, 6, 71, 'KIZILCAHAMAM'),
(76, 6, 74, 'MAMAK'),
(77, 6, 77, 'NALLIHAN'),
(78, 6, 80, 'POLATLI'),
(79, 6, 83, 'SINCAN'),
(80, 6, 86, 'SEREFLIKOÇ'),
(81, 6, 89, 'YENIMAHALLE'),
(82, 7, 0, 'MERKEZ'),
(83, 7, 20, 'AKSEKI'),
(84, 7, 25, 'ALANYA'),
(85, 7, 28, 'DEMRE'),
(86, 7, 30, 'ELMALI'),
(87, 7, 35, 'FINIKE'),
(88, 7, 40, 'GAZIPASA'),
(89, 7, 45, 'GÜNDOGMUS'),
(90, 7, 50, 'IBRADI'),
(91, 7, 55, 'KALE'),
(92, 7, 60, 'KAS'),
(93, 7, 65, 'KEMER'),
(94, 7, 70, 'KORKUTELI'),
(95, 7, 75, 'KUMLUCA'),
(96, 7, 80, 'MANAVGAT'),
(97, 7, 85, 'SERIK'),
(98, 8, 0, 'MERKEZ'),
(99, 8, 20, 'ARDANUÇ'),
(100, 8, 25, 'ARHAVI'),
(101, 8, 30, 'BORÇKA'),
(102, 8, 32, 'HOPA'),
(103, 8, 35, 'MURGUL'),
(104, 8, 45, 'SAVSAT'),
(105, 8, 50, 'YUSUFELI'),
(106, 9, 0, 'MERKEZ'),
(107, 9, 20, 'BOZDOGAN'),
(108, 9, 24, 'BUHARKENT'),
(109, 9, 28, 'ÇINE'),
(110, 9, 32, 'GERMENCIK'),
(111, 9, 36, 'INCIRLIOVA'),
(112, 9, 40, 'KARACASU'),
(113, 9, 44, 'KARPUZLU'),
(114, 9, 48, 'KOÇARLI'),
(115, 9, 52, 'KÖSK'),
(116, 9, 56, 'KUSADASI'),
(117, 9, 60, 'KUYUCAK'),
(118, 9, 64, 'NAZILLI'),
(119, 9, 68, 'SÖKE'),
(120, 9, 72, 'SULTANHISAR'),
(121, 9, 76, 'YENIHISAR'),
(122, 9, 80, 'YENIPAZAR'),
(123, 10, 0, 'MERKEZ'),
(124, 10, 20, 'AYVALIK'),
(125, 10, 21, 'AKÇAY'),
(126, 10, 24, 'BALYA'),
(127, 10, 28, 'BANDIRMA'),
(128, 10, 32, 'BIGADIÇ'),
(129, 10, 36, 'BURHANIYE'),
(130, 10, 40, 'DURSUNBEY'),
(131, 10, 44, 'EDREMIT'),
(132, 10, 48, 'ERDEK'),
(133, 10, 52, 'GÖNEN'),
(134, 10, 56, 'GÖMEÇ'),
(135, 10, 60, 'HAVRAN'),
(136, 10, 64, 'IVRINDI'),
(137, 10, 68, 'KEPSUT'),
(138, 10, 72, 'MANYAS'),
(139, 10, 76, 'MARMARA'),
(140, 10, 80, 'SAVASTEPE'),
(141, 10, 84, 'SINDIRGI'),
(142, 10, 88, 'SUSURLUK'),
(143, 11, 0, 'MERKEZ'),
(144, 11, 20, 'BOZÖYÜK'),
(145, 11, 25, 'GÖLPAZARI'),
(146, 11, 30, 'INHISAR'),
(147, 11, 35, 'OSMANELI'),
(148, 11, 40, 'PAZARYERI'),
(149, 11, 45, 'SÖGÜT'),
(150, 11, 50, 'YENIPAZAR'),
(151, 12, 0, 'MERKEZ'),
(152, 12, 20, 'ADAKLI'),
(153, 12, 25, 'GENÇ'),
(154, 12, 30, 'KARLIOVA'),
(155, 12, 35, 'KIGI'),
(156, 12, 40, 'SOLHAN'),
(157, 12, 45, 'YAYLADERE'),
(158, 12, 55, 'YEDISU'),
(159, 13, 0, 'MERKEZ'),
(160, 13, 20, 'ADILCEVAZ'),
(161, 13, 25, 'AHLAT'),
(162, 13, 30, 'GÜROYMAK'),
(163, 13, 35, 'HIZAN'),
(164, 13, 40, 'MUTKI'),
(165, 13, 45, 'TATVAN'),
(166, 14, 0, 'MERKEZ'),
(167, 14, 35, 'DÖRTDIVAN'),
(168, 14, 45, 'GEREDE'),
(169, 14, 55, 'GÖYNÜK'),
(170, 14, 60, 'KIBRISCIK'),
(171, 14, 65, 'MENGEN'),
(172, 14, 70, 'MUDURNU'),
(173, 14, 75, 'SEBEN'),
(174, 14, 80, 'YENIÇAGA'),
(175, 15, 0, 'MERKEZ'),
(176, 15, 20, 'ALTINYAYLA'),
(177, 15, 25, 'AGLASUN'),
(178, 15, 30, 'BUCAK'),
(179, 15, 35, 'ÇAVDIR'),
(180, 15, 40, 'ÇELTIKÇI'),
(181, 15, 45, 'GÖLHISAR'),
(182, 15, 50, 'KARAMANLI'),
(183, 15, 55, 'KEMER'),
(184, 15, 60, 'TEFENNI'),
(185, 15, 65, 'YESILOVA'),
(186, 16, 0, 'MERKEZ'),
(187, 16, 24, 'BÜYÜKORHAN'),
(188, 16, 28, 'GEMLIK'),
(189, 16, 32, 'GÜRSU'),
(190, 16, 36, 'HARMANCIK'),
(191, 16, 40, 'INEGÖL'),
(192, 16, 44, 'IZNIK'),
(193, 16, 48, 'KARACABEY'),
(194, 16, 52, 'KELES'),
(195, 16, 56, 'KESTEL'),
(196, 16, 60, 'MUDANYA'),
(197, 16, 64, 'MUSTAFAKEMA'),
(198, 16, 68, 'NILÜFER'),
(199, 16, 72, 'ORHANELI'),
(200, 16, 76, 'ORHANGAZI'),
(201, 16, 80, 'OSMANGAZI'),
(202, 16, 84, 'YENISEHIR'),
(203, 16, 88, 'YILDIRIM'),
(204, 17, 0, 'MERKEZ'),
(205, 17, 25, 'AYVACIK'),
(206, 17, 30, 'BAYRAMIÇ'),
(207, 17, 32, 'BOZCAADA'),
(208, 17, 35, 'BIGA'),
(209, 17, 40, 'ÇAN'),
(210, 17, 45, 'ECEABAT'),
(211, 17, 50, 'EZINE'),
(212, 17, 55, 'GELIBOLU'),
(213, 17, 57, 'GÖKÇEADA'),
(214, 17, 65, 'LAPSEKI'),
(215, 17, 70, 'YENICE'),
(216, 18, 0, 'MERKEZ'),
(217, 18, 25, 'ATKARACALAR'),
(218, 18, 30, 'BAYRAMÖREN'),
(219, 18, 35, 'ÇERKES'),
(220, 18, 40, 'ELDIVAN'),
(221, 18, 50, 'ILGAZ'),
(222, 18, 55, 'KIZILIRMAK'),
(223, 18, 60, 'KORGUN'),
(224, 18, 65, 'KURSUNLU'),
(225, 18, 70, 'ORTA'),
(226, 18, 75, 'OVACIK'),
(227, 18, 80, 'SABANÖZÜ'),
(228, 18, 85, 'YAPRAKLI'),
(229, 19, 0, 'MERKEZ'),
(230, 19, 25, 'ALACA'),
(231, 19, 30, 'BAYAT'),
(232, 19, 35, 'BOGAZKALE'),
(233, 19, 40, 'DODURGA'),
(234, 19, 45, 'ISKILIP'),
(235, 19, 50, 'KARGI'),
(236, 19, 55, 'LAÇIN'),
(237, 19, 60, 'MECITÖZÜ'),
(238, 19, 65, 'OGUZLAR'),
(239, 19, 70, 'ORTAKÖY'),
(240, 19, 75, 'OSMANCIK'),
(241, 19, 80, 'SUNGURLU'),
(242, 19, 85, 'UGURLUDAG'),
(243, 20, 0, 'MERKEZ'),
(244, 20, 23, 'ACIPAYAM'),
(245, 20, 26, 'AKKÖY'),
(246, 20, 29, 'BABADAG'),
(247, 20, 32, 'BAKLAN'),
(248, 20, 35, 'BEKILLI'),
(249, 20, 38, 'BEYAGAÇ'),
(250, 20, 41, 'BULDAN'),
(251, 20, 44, 'BOZKURT'),
(252, 20, 47, 'ÇAL'),
(253, 20, 50, 'ÇAMELI'),
(254, 20, 53, 'ÇARDAK'),
(255, 20, 56, 'ÇIVRIL'),
(256, 20, 59, 'GÜNEY'),
(257, 20, 62, 'HONAZ'),
(258, 20, 65, 'KALE'),
(259, 20, 68, 'SARAYKÖY'),
(260, 20, 71, 'SERINHISAR'),
(261, 20, 74, 'TAVAS'),
(262, 21, 0, 'MERKEZ'),
(263, 21, 25, 'BISMIL'),
(264, 21, 30, 'ÇERMIK'),
(265, 21, 35, 'ÇINAR'),
(266, 21, 40, 'ÇÜNGÜS'),
(267, 21, 45, 'DICLE'),
(268, 21, 50, 'EGIL'),
(269, 21, 55, 'ERGANI'),
(270, 21, 60, 'HANI'),
(271, 21, 65, 'HAZRO'),
(272, 21, 70, 'KOCAKÖY'),
(273, 21, 75, 'KULP'),
(274, 21, 80, 'LICE'),
(275, 21, 85, 'SILVAN'),
(276, 22, 0, 'MERKEZ'),
(277, 22, 25, 'ENEZ'),
(278, 22, 30, 'HAVSA'),
(279, 22, 35, 'IPSALA'),
(280, 22, 40, 'KESAN'),
(281, 22, 45, 'LALAPASA'),
(282, 22, 50, 'MERIÇ'),
(283, 22, 55, 'SÜLOGLU'),
(284, 22, 60, 'UZUNKÖPRÜ'),
(285, 23, 0, 'MERKEZ'),
(286, 23, 25, 'AGIN'),
(287, 23, 30, 'ALACAKAYA'),
(288, 23, 35, 'ARICAK'),
(289, 23, 40, 'BASKIL'),
(290, 23, 45, 'KARAKOÇAN'),
(291, 23, 50, 'KEBAN'),
(292, 23, 55, 'KOVANCILAR'),
(293, 23, 60, 'MADEN'),
(294, 23, 65, 'PALU'),
(295, 23, 70, 'SIVRICE'),
(296, 24, 0, 'MERKEZ'),
(297, 24, 25, 'ÇAYIRLI'),
(298, 24, 30, 'ILIÇ'),
(299, 24, 35, 'KEMAH'),
(300, 24, 40, 'KEMALIYE'),
(301, 24, 45, 'OTLUKBELI'),
(302, 24, 50, 'REFAHIYE'),
(303, 24, 55, 'TERCAN'),
(304, 24, 60, 'ÜZÜMLÜ'),
(305, 25, 0, 'MERKEZ'),
(306, 25, 23, 'ASKALE'),
(307, 25, 26, 'ÇAT'),
(308, 25, 29, 'HINIS'),
(309, 25, 32, 'HORASAN'),
(310, 25, 35, 'ILICA'),
(311, 25, 38, 'ISPIR'),
(312, 25, 41, 'KARAÇOBAN'),
(313, 25, 44, 'KARAYAZI'),
(314, 25, 47, 'KÖPRÜKÖY'),
(315, 25, 50, 'NARMAN'),
(316, 25, 53, 'OLTU'),
(317, 25, 55, 'OLUR'),
(318, 25, 58, 'PASINLER'),
(319, 25, 61, 'PAZARYOLU'),
(320, 25, 64, 'SENKAYA'),
(321, 25, 67, 'TEKMAN'),
(322, 25, 70, 'TORTUM'),
(323, 25, 73, 'UZUNDERE'),
(324, 26, 0, 'MERKEZ'),
(325, 26, 25, 'ALPU'),
(326, 26, 30, 'BEYLIKOVA'),
(327, 26, 35, 'ÇIFTELER'),
(328, 26, 40, 'GÜNYÜZÜ'),
(329, 26, 45, 'HAN'),
(330, 26, 50, 'INÖNÜ'),
(331, 26, 55, 'MAHMUDIYE'),
(332, 26, 60, 'MIHALGAZI'),
(333, 26, 65, 'MIHALIÇÇIK'),
(334, 26, 70, 'SARICAKAYA'),
(335, 26, 75, 'SEYITGAZI'),
(336, 26, 80, 'SIVRIHISAR'),
(337, 27, 0, 'MERKEZ'),
(338, 27, 25, 'ARABAN'),
(339, 27, 30, 'ISLAHIYE'),
(340, 27, 35, 'KILIS'),
(341, 27, 40, 'KARGAMIS'),
(342, 27, 45, 'NIZIP'),
(343, 27, 50, 'NURDAGI'),
(344, 27, 55, 'OGUZELI'),
(345, 27, 60, 'SAHINBEY'),
(346, 27, 65, 'SEHITKAMIL'),
(347, 27, 70, 'YAVUZELI'),
(348, 28, 0, 'MERKEZ'),
(349, 28, 25, 'ALUCRA'),
(350, 28, 30, 'BULANCAK'),
(351, 28, 32, 'ÇAMOLUK'),
(352, 28, 35, 'ÇANAKÇI'),
(353, 28, 40, 'DERELI'),
(354, 28, 42, 'DOGANKENT'),
(355, 28, 45, 'ESPIYE'),
(356, 28, 50, 'EYNESIL'),
(357, 28, 55, 'GÖRELE'),
(358, 28, 60, 'GÜCE'),
(359, 28, 65, 'KESAP'),
(360, 28, 70, 'PIRAZIZ'),
(361, 28, 75, 'SEBINKARAHISAR'),
(362, 28, 80, 'TIREBOLU'),
(363, 28, 85, 'YAGLIDERE'),
(364, 29, 0, 'MERKEZ'),
(365, 29, 25, 'KELKIT'),
(366, 29, 30, 'KÖSE'),
(367, 29, 35, 'KÜRTÜN'),
(368, 29, 40, 'SIRAN'),
(369, 29, 45, 'TORUL'),
(370, 30, 0, 'MERKEZ'),
(371, 30, 25, 'ÇUKURCA'),
(372, 30, 30, 'SEMDINLI'),
(373, 30, 35, 'YÜKSEKOVA'),
(374, 31, 0, 'MERKEZ'),
(375, 31, 25, 'ALTINÖZÜ'),
(376, 31, 30, 'BELEN'),
(377, 31, 35, 'DÖRTYOL'),
(378, 31, 40, 'ERZIN'),
(379, 31, 45, 'HASSA'),
(380, 31, 50, 'ISKENDERUN'),
(381, 31, 55, 'KIRIKHAN'),
(382, 31, 60, 'KUMLU'),
(383, 31, 65, 'REYHANLI'),
(384, 31, 70, 'SAMANDAGI'),
(385, 31, 75, 'YAYLADAGI'),
(386, 32, 0, 'MERKEZ'),
(387, 32, 25, 'AKSU'),
(388, 32, 30, 'ATABEY'),
(389, 32, 35, 'EGIRDIR'),
(390, 32, 40, 'GELENDOST'),
(391, 32, 45, 'GÖNEN'),
(392, 32, 50, 'KEÇIBORLU'),
(393, 32, 55, 'SENIRKENT'),
(394, 32, 60, 'SÜTÇÜLER'),
(395, 32, 65, 'SARKIKARAAG'),
(396, 32, 70, 'ULUBORLU'),
(397, 32, 75, 'YENISARBADE'),
(398, 32, 80, 'YALVAÇ'),
(399, 33, 0, 'MERKEZ'),
(400, 33, 25, 'ANAMUR'),
(401, 33, 30, 'AYDINCIK'),
(402, 33, 35, 'BOZYAZI'),
(403, 33, 40, 'ÇAMLIYAYLA'),
(404, 33, 45, 'ERDEMLI'),
(405, 33, 50, 'GÜLNAR'),
(406, 33, 55, 'MUT'),
(407, 33, 60, 'SILIFKE'),
(408, 33, 65, 'TARSUS'),
(409, 34, 0, 'MERKEZ'),
(410, 34, 23, 'ADALAR'),
(411, 34, 24, 'AVCILAR'),
(412, 34, 25, 'BAGCILAR'),
(413, 34, 26, 'BAKIRKÖY'),
(414, 34, 27, 'BAHÇELIEVLE'),
(415, 34, 29, 'BAYRAMPASA'),
(416, 34, 32, 'BESIKTAS'),
(417, 34, 35, 'BEYKOZ'),
(418, 34, 38, 'BEYOGLU'),
(419, 34, 41, 'BÜYÜKÇEKMECE'),
(420, 34, 44, 'ÇATALCA'),
(421, 34, 47, 'EMINÖNÜ'),
(422, 34, 50, 'EYÜP'),
(423, 34, 51, 'ESENLER'),
(424, 34, 53, 'FATIH'),
(425, 34, 56, 'GAZIOSMANPASA'),
(426, 34, 57, 'GÜNGÖREN'),
(427, 34, 59, 'KADIKÖY'),
(428, 34, 61, 'KAGITHANE'),
(429, 34, 64, 'KARTAL'),
(430, 34, 67, 'KÜÇÜKÇEKMECE'),
(431, 34, 68, 'MALTEPE'),
(432, 34, 70, 'PENDIK'),
(433, 34, 73, 'SARIYER'),
(434, 34, 76, 'SILIVRI'),
(435, 34, 77, 'SULTANBEYLI'),
(436, 34, 79, 'SILE'),
(437, 34, 81, 'SISLI'),
(438, 34, 82, 'TUZLA'),
(439, 34, 84, 'ÜMRANIYE'),
(440, 34, 87, 'ÜSKÜDAR'),
(441, 34, 90, 'YALOVA'),
(442, 34, 93, 'ZEYTINBURNU'),
(443, 35, 0, 'MERKEZ'),
(444, 35, 23, 'ALIAGA'),
(445, 35, 26, 'BAYINDIR'),
(446, 35, 27, 'BALÇOVA'),
(447, 35, 29, 'BERGAMA'),
(448, 35, 32, 'BEYDAG'),
(449, 35, 35, 'BORNOVA'),
(450, 35, 37, 'BUCA'),
(451, 35, 41, 'ÇESME'),
(452, 35, 42, 'ÇIGLI'),
(453, 35, 44, 'DIKILI'),
(454, 35, 47, 'FOÇA'),
(455, 35, 48, 'GAZIEMIR'),
(456, 35, 49, 'GÜZELBAHÇE'),
(457, 35, 50, 'KARABURUN'),
(458, 35, 53, 'KARSIYAKA'),
(459, 35, 56, 'KEMALPASA'),
(460, 35, 59, 'KINIK'),
(461, 35, 62, 'KIRAZ'),
(462, 35, 65, 'KONAK'),
(463, 35, 68, 'MENDERES'),
(464, 35, 71, 'MENEMEN'),
(465, 35, 72, 'NARLIDERE'),
(466, 35, 74, 'ÖDEMIS'),
(467, 35, 77, 'SEFERIHISAR'),
(468, 35, 80, 'SELÇUK'),
(469, 35, 83, 'TIRE'),
(470, 35, 86, 'TORBALI'),
(471, 35, 89, 'URLA'),
(472, 36, 0, 'MERKEZ'),
(473, 36, 24, 'AKYAKA'),
(474, 36, 36, 'ARPAÇAY'),
(475, 36, 44, 'DIGOR'),
(476, 36, 60, 'KAGIZMAN'),
(477, 36, 68, 'SARIKAMIS'),
(478, 36, 72, 'SELIM'),
(479, 36, 76, 'SUSUZ'),
(480, 37, 0, 'MERKEZ'),
(481, 37, 23, 'ABANA'),
(482, 37, 26, 'AGLI'),
(483, 37, 29, 'ARAÇ'),
(484, 37, 32, 'AZDAVAY'),
(485, 37, 35, 'BOZKURT'),
(486, 37, 38, 'CIDE'),
(487, 37, 41, 'ÇATALZEYTIN'),
(488, 37, 44, 'DADAY'),
(489, 37, 47, 'DEVREKANI'),
(490, 37, 50, 'DOGANYURT'),
(491, 37, 53, 'HANÖNÜ'),
(492, 37, 56, 'IHSANGAZI'),
(493, 37, 59, 'INEBOLU'),
(494, 37, 62, 'KÜRE'),
(495, 37, 65, 'PINARBASI'),
(496, 37, 68, 'SEYDILER'),
(497, 37, 71, 'SENPAZAR'),
(498, 37, 74, 'TASKÖPRÜ'),
(499, 37, 77, 'TOSYA'),
(500, 38, 0, 'MERKEZ'),
(501, 38, 24, 'AKKISLA'),
(502, 38, 28, 'BÜNYAN'),
(503, 38, 32, 'DEVELI'),
(504, 38, 36, 'FELAHIYE'),
(505, 38, 40, 'HACILAR'),
(506, 38, 44, 'INCESU'),
(507, 38, 48, 'KOCASINAN'),
(508, 38, 52, 'MELIKGAZI'),
(509, 38, 56, 'ÖZVATAN'),
(510, 38, 60, 'PINARBASI'),
(511, 38, 64, 'SARIOGLAN'),
(512, 38, 68, 'SARIZ'),
(513, 38, 72, 'TALAS'),
(514, 38, 76, 'TOMARZA'),
(515, 38, 80, 'YAHYALI'),
(516, 38, 84, 'YESILHISAR'),
(517, 39, 0, 'MERKEZ'),
(518, 39, 25, 'BABAESKI'),
(519, 39, 30, 'DEMIRKÖY'),
(520, 39, 35, 'KOFÇAZ'),
(521, 39, 40, 'LÜLEBURGAZ'),
(522, 39, 45, 'PEHLIVANKÖY'),
(523, 39, 50, 'PINARHISAR'),
(524, 39, 55, 'VIZE'),
(525, 40, 0, 'MERKEZ'),
(526, 40, 20, 'AKÇAKENT'),
(527, 40, 25, 'AKPINAR'),
(528, 40, 27, 'BOZTEPE'),
(529, 40, 30, 'ÇIÇEKDAGI'),
(530, 40, 35, 'KAMAN'),
(531, 40, 40, 'MUCUR'),
(532, 41, 0, 'MERKEZ'),
(533, 41, 20, 'DARICA'),
(534, 41, 25, 'GEBZE'),
(535, 41, 30, 'GÖLCÜK'),
(536, 41, 35, 'KANDIRA'),
(537, 41, 40, 'KARAMÜRSEL'),
(538, 41, 45, 'KÖRFEZ'),
(539, 42, 0, 'MERKEZ'),
(540, 42, 22, 'AHIRLI'),
(541, 42, 24, 'AKÖREN'),
(542, 42, 26, 'AKSEHIR'),
(543, 42, 28, 'ALTINEKIN'),
(544, 42, 30, 'BEYSEHIR'),
(545, 42, 32, 'BOZKIR'),
(546, 42, 34, 'DEREBUCAK'),
(547, 42, 36, 'CIHANBEYLI'),
(548, 42, 38, 'ÇUMRA'),
(549, 42, 40, 'ÇELTIK'),
(550, 42, 42, 'DERBENT'),
(551, 42, 44, 'DOGANHISAR'),
(552, 42, 46, 'EMIRGAZI'),
(553, 42, 48, 'EREGLI'),
(554, 42, 50, 'GÜNEYSINIR'),
(555, 42, 52, 'HALKAPINAR'),
(556, 42, 54, 'HADIM'),
(557, 42, 55, 'HALKAPINAR'),
(558, 42, 56, 'HÜYÜK'),
(559, 42, 58, 'ILGIN'),
(560, 42, 60, 'KADINHANI'),
(561, 42, 62, 'KARAPINAR'),
(562, 42, 64, 'KARATAY'),
(563, 42, 66, 'KULU'),
(564, 42, 68, 'MERAM'),
(565, 42, 70, 'SARAYÖNÜ'),
(566, 42, 72, 'SELÇUKLU'),
(567, 42, 74, 'SEYDISEHIR'),
(568, 42, 76, 'TASKENT'),
(569, 42, 78, 'TUZLUKÇU'),
(570, 42, 80, 'YALIHÖYÜK'),
(571, 42, 82, 'YUNAK'),
(572, 43, 0, 'MERKEZ'),
(573, 43, 25, 'ALTINTAS'),
(574, 43, 30, 'ASLANAPA'),
(575, 43, 35, 'CAVDARHISAR'),
(576, 43, 40, 'DOMANIÇ'),
(577, 43, 45, 'DUMLUPINAR'),
(578, 43, 50, 'EMET'),
(579, 43, 55, 'GEDIZ'),
(580, 43, 60, 'HISARCIK'),
(581, 43, 65, 'PAZARLAR'),
(582, 43, 70, 'SIMAV'),
(583, 43, 75, 'SAPHANE'),
(584, 43, 80, 'TAVSANLI'),
(585, 44, 0, 'MERKEZ'),
(586, 44, 25, 'AKÇADAG'),
(587, 44, 30, 'ARAPGIR'),
(588, 44, 35, 'ARGUVAN'),
(589, 44, 40, 'BATTALGAZI'),
(590, 44, 45, 'DARENDE'),
(591, 44, 50, 'DOGANSEHIR'),
(592, 44, 55, 'DOGANYOL'),
(593, 44, 60, 'HEKIMHAN'),
(594, 44, 65, 'KALE'),
(595, 44, 70, 'KULUNCAK'),
(596, 44, 75, 'PÖTÜRGE'),
(597, 44, 80, 'YAZIHAN'),
(598, 44, 85, 'YESILYURT'),
(599, 45, 0, 'MERKEZ'),
(600, 45, 25, 'AHMETLI'),
(601, 45, 30, 'AKHISAR'),
(602, 45, 35, 'ALASEHIR'),
(603, 45, 40, 'DEMIRCI'),
(604, 45, 45, 'GÖLMARMARA'),
(605, 45, 50, 'GÖRDES'),
(606, 45, 55, 'KIRKAGAÇ'),
(607, 45, 60, 'KÖPRÜBASI'),
(608, 45, 65, 'KULA'),
(609, 45, 70, 'SALIHLI'),
(610, 45, 75, 'SARIGÖL'),
(611, 45, 80, 'SARUHANLI'),
(612, 45, 85, 'SELENDI'),
(613, 45, 90, 'SOMA'),
(614, 45, 95, 'TURGUTLU'),
(615, 46, 0, 'MERKEZ'),
(616, 46, 25, 'AFSIN'),
(617, 46, 30, 'ANDIRIN'),
(618, 46, 35, 'ÇAGLAYANCER'),
(619, 46, 40, 'EKINÖZÜ'),
(620, 46, 45, 'ELBISTAN'),
(621, 46, 50, 'GÖKSUN'),
(622, 46, 55, 'NURHAK'),
(623, 46, 60, 'PAZARCIK'),
(624, 46, 65, 'TÜRKOGLU'),
(625, 47, 0, 'MERKEZ'),
(626, 47, 25, 'DARGEÇIT'),
(627, 47, 30, 'DERIK'),
(628, 47, 40, 'KIZILTEPE'),
(629, 47, 45, 'MAZIDAGI'),
(630, 47, 50, 'MIDYAT'),
(631, 47, 55, 'NUSAYBIN'),
(632, 47, 60, 'ÖMERLI'),
(633, 47, 65, 'SAVUR'),
(634, 47, 70, 'YESILLI'),
(635, 48, 0, 'MERKEZ'),
(636, 48, 25, 'BODRUM'),
(637, 48, 30, 'DALAMAN'),
(638, 48, 35, 'DATÇA'),
(639, 48, 40, 'FETHIYE'),
(640, 48, 45, 'KAVAKLIDERE'),
(641, 48, 50, 'KÖYCEGIZ'),
(642, 48, 55, 'MARMARIS'),
(643, 48, 60, 'MILAS'),
(644, 48, 65, 'ORTACA'),
(645, 48, 70, 'ULA'),
(646, 48, 75, 'YATAGAN'),
(647, 49, 0, 'MERKEZ'),
(648, 49, 25, 'BULANIK'),
(649, 49, 30, 'HASKÖY'),
(650, 49, 35, 'KORKUT'),
(651, 49, 40, 'MALAZGIRT'),
(652, 49, 45, 'VARTO'),
(653, 50, 0, 'MERKEZ'),
(654, 50, 25, 'ACIGÖL'),
(655, 50, 30, 'AVANOS'),
(656, 50, 35, 'DERINKUYU'),
(657, 50, 40, 'GÜLSEHIR'),
(658, 50, 45, 'HACIBEKTAS'),
(659, 50, 50, 'KOZAKLI'),
(660, 50, 55, 'ÜRGÜP'),
(661, 51, 0, 'MERKEZ'),
(662, 51, 25, 'ALTUNHISAR'),
(663, 51, 30, 'BOR'),
(664, 51, 35, 'ÇAMARDI'),
(665, 51, 40, 'ÇIFTLIK'),
(666, 51, 45, 'ULUKISLA'),
(667, 52, 0, 'MERKEZ'),
(668, 52, 23, 'AKKUS'),
(669, 52, 26, 'AYBASTI'),
(670, 52, 29, 'ÇAMAS'),
(671, 52, 32, 'ÇATALPINAR'),
(672, 52, 35, 'ÇAYBASI'),
(673, 52, 38, 'FATSA'),
(674, 52, 41, 'GÖLKÖY'),
(675, 52, 44, 'GÖLYALI'),
(676, 52, 47, 'GÜRGENTEPE'),
(677, 52, 50, 'IKIZCE'),
(678, 52, 53, 'KORGAN'),
(679, 52, 56, 'KABADÜZ'),
(680, 52, 59, 'KABATAS'),
(681, 52, 62, 'KUMRU'),
(682, 52, 65, 'MESUDIYE'),
(683, 52, 68, 'PERSEMBE'),
(684, 52, 71, 'ULUBEY'),
(685, 52, 74, 'ÜNYE'),
(686, 53, 0, 'MERKEZ'),
(687, 53, 25, 'ARDESEN'),
(688, 53, 30, 'ÇAMLIHEMSIN'),
(689, 53, 35, 'ÇAYELI'),
(690, 53, 40, 'DEREPAZARI'),
(691, 53, 45, 'FINDIKLI'),
(692, 53, 50, 'GÜNEYSU'),
(693, 53, 55, 'HEMSIN'),
(694, 53, 60, 'IKIZDERE'),
(695, 53, 65, 'IYIDERE'),
(696, 53, 70, 'KALKANDERE'),
(697, 53, 75, 'PAZAR'),
(698, 54, 0, 'MERKEZ'),
(699, 54, 25, 'AKYAZI'),
(700, 54, 30, 'FERIZLI'),
(701, 54, 35, 'GEYVE'),
(702, 54, 40, 'HENDEK'),
(703, 54, 45, 'KARAPÜRÇEK'),
(704, 54, 50, 'KARASU'),
(705, 54, 55, 'KAYNARCA'),
(706, 54, 60, 'KOCAALI'),
(707, 54, 65, 'PAMUKOVA'),
(708, 54, 70, 'SAPANCA'),
(709, 54, 75, 'SÖGÜTLÜ'),
(710, 54, 80, 'TARAKLI'),
(711, 55, 0, 'MERKEZ'),
(712, 55, 25, 'ALAÇAM'),
(713, 55, 30, 'ASARCIK'),
(714, 55, 35, 'AYVACIK'),
(715, 55, 40, 'BAFRA'),
(716, 55, 45, 'ÇARSAMBA'),
(717, 55, 50, 'HAVZA'),
(718, 55, 55, 'KAVAK'),
(719, 55, 60, 'LADIK'),
(720, 55, 65, '19MAYIS'),
(721, 55, 70, 'SALIPAZARI'),
(722, 55, 75, 'TEKKEKÖY'),
(723, 55, 80, 'TERME'),
(724, 55, 85, 'VEZIRKÖPRÜ'),
(725, 55, 90, 'YAKAKENT'),
(726, 56, 0, 'MERKEZ'),
(727, 56, 25, 'AYDINLAR'),
(728, 56, 30, 'BAYKAN'),
(729, 56, 35, 'ERUH'),
(730, 56, 42, 'KOZLUK'),
(731, 56, 45, 'KURTALAN'),
(732, 56, 50, 'PERVARI'),
(733, 56, 55, 'SIRVAN'),
(734, 57, 0, 'MERKEZ'),
(735, 57, 25, 'AYANCIK'),
(736, 57, 30, 'BOYABAT'),
(737, 57, 35, 'DIKMEN'),
(738, 57, 40, 'DURAGAN'),
(739, 57, 45, 'ERFELEK'),
(740, 57, 50, 'GERZE'),
(741, 57, 55, 'SARAYDÜZÜ'),
(742, 57, 60, 'TÜRKELI'),
(743, 58, 0, 'MERKEZ'),
(744, 58, 24, 'AKINCILAR'),
(745, 58, 28, 'ALTINYAYLA'),
(746, 58, 32, 'DIVRIGI'),
(747, 58, 36, 'DOGANSAR'),
(748, 58, 40, 'GEMEREK'),
(749, 58, 44, 'GÖLOVA'),
(750, 58, 48, 'GÜRÜN'),
(751, 58, 52, 'HAFIK'),
(752, 58, 56, 'IMRANLI'),
(753, 58, 60, 'KANGAL'),
(754, 58, 64, 'KOYULHISAR'),
(755, 58, 68, 'SUSEHRI'),
(756, 58, 72, 'SARKISLA'),
(757, 58, 76, 'ULAS'),
(758, 58, 80, 'YILDIZELI'),
(759, 58, 84, 'ZARA'),
(760, 59, 0, 'MERKEZ'),
(761, 59, 25, 'ÇERKEZKÖY'),
(762, 59, 30, 'ÇORLU'),
(763, 59, 35, 'HAYRABOLU'),
(764, 59, 40, 'MALKARA'),
(765, 59, 45, 'MARMARAEREGLI'),
(766, 59, 50, 'MURATLI'),
(767, 59, 55, 'SARAY'),
(768, 59, 60, 'SARKÖY'),
(769, 60, 0, 'MERKEZ'),
(770, 60, 25, 'ALMUS'),
(771, 60, 30, 'ARTOVA'),
(772, 60, 35, 'BASÇIFTLIK'),
(773, 60, 40, 'ERBAA'),
(774, 60, 45, 'NIKSAR'),
(775, 60, 50, 'PAZAR'),
(776, 60, 55, 'RESADIYE'),
(777, 60, 60, 'SULUSARAY'),
(778, 60, 65, 'TURHAL'),
(779, 60, 70, 'YESILYURT'),
(780, 60, 75, 'ZILE'),
(781, 61, 0, 'MERKEZ'),
(782, 61, 24, 'AKÇAABAT'),
(783, 61, 28, 'ARAKLI'),
(784, 61, 32, 'ARSIN'),
(785, 61, 36, 'BESIKDÜZÜ'),
(786, 61, 40, 'ÇARSIBASI'),
(787, 61, 44, 'ÇAYKARA'),
(788, 61, 48, 'DERNEKPAZAR'),
(789, 61, 52, 'DÜZKÖY'),
(790, 61, 56, 'HAYRAT'),
(791, 61, 60, 'KÖPRÜBASI'),
(792, 61, 64, 'MAÇKA'),
(793, 61, 68, 'OF'),
(794, 61, 72, 'SÜRMENE'),
(795, 61, 76, 'SALPAZARI'),
(796, 61, 80, 'TONYA'),
(797, 61, 84, 'VAKFIKEBIR'),
(798, 61, 88, 'YOMRA'),
(799, 62, 0, 'MERKEZ'),
(800, 62, 25, 'ÇEMISGEZEK'),
(801, 62, 30, 'HOZAT'),
(802, 62, 35, 'MAZGIRT'),
(803, 62, 40, 'NAZIMIYE'),
(804, 62, 45, 'OVACIK'),
(805, 62, 50, 'PERTEK'),
(806, 62, 55, 'PÜLÜMÜR'),
(807, 63, 0, 'MERKEZ'),
(808, 63, 25, 'AKÇAKALE'),
(809, 63, 30, 'BIRECIK'),
(810, 63, 35, 'BOZOVA'),
(811, 63, 40, 'CEYLANPINAR'),
(812, 63, 45, 'HALFETI'),
(813, 63, 50, 'HARRAN'),
(814, 63, 55, 'HILVAN'),
(815, 63, 60, 'SIVEREK'),
(816, 63, 65, 'SURUÇ'),
(817, 63, 70, 'VIRANSEHIR'),
(818, 64, 0, 'MERKEZ'),
(819, 64, 25, 'BANAZ'),
(820, 64, 30, 'ESME'),
(821, 64, 35, 'KARAHALLI'),
(822, 64, 40, 'SIVASLI'),
(823, 64, 45, 'ULUBEY'),
(824, 65, 0, 'MERKEZ'),
(825, 65, 25, 'BAHÇESARAY'),
(826, 65, 30, 'BASKALE'),
(827, 65, 35, 'ÇALDIRAN'),
(828, 65, 40, 'ÇATAK'),
(829, 65, 45, 'EDREMIT'),
(830, 65, 50, 'ERCIS'),
(831, 65, 55, 'GEVAS'),
(832, 65, 60, 'GÜRPINAR'),
(833, 65, 65, 'MURADIYE'),
(834, 65, 70, 'ÖZALP'),
(835, 65, 75, 'SARAY'),
(836, 66, 0, 'MERKEZ'),
(837, 66, 25, 'AKDAGMADENI'),
(838, 66, 30, 'AYDINCIK'),
(839, 66, 35, 'BOGAZLIYAN'),
(840, 66, 40, 'ÇANDIR'),
(841, 66, 45, 'ÇAYIRALAN'),
(842, 66, 50, 'ÇEKEREK'),
(843, 66, 55, 'KADISEHRI'),
(844, 66, 60, 'SARIKAYA'),
(845, 66, 65, 'SARAYKENT'),
(846, 66, 70, 'SORGUN'),
(847, 66, 75, 'SEFAATLI'),
(848, 66, 80, 'YENIFAKILI'),
(849, 66, 85, 'YERKÖY'),
(850, 67, 0, 'MERKEZ'),
(851, 67, 24, 'ALAPLI'),
(852, 67, 36, 'ÇAMOLUK'),
(853, 67, 38, 'ÇAYCUMA'),
(854, 67, 44, 'DEVREK'),
(855, 67, 52, 'EFLANI'),
(856, 67, 56, 'EREGLI'),
(857, 67, 60, 'GÖKÇEBEY'),
(858, 68, 0, 'MERKEZ'),
(859, 68, 25, 'AGAÇÖREN'),
(860, 68, 30, 'ESKIL'),
(861, 68, 35, 'GÜLAGAÇ'),
(862, 68, 40, 'GÜZELYURT'),
(863, 68, 45, 'ORTAKÖY'),
(864, 68, 50, 'SARIYAHSI'),
(865, 69, 0, 'MERKEZ'),
(866, 69, 25, 'AYDINTEPE'),
(867, 69, 30, 'DEMIRÖZÜ'),
(868, 70, 0, 'MERKEZ'),
(869, 70, 25, 'AYRANCI'),
(870, 70, 30, 'BASYAYLA'),
(871, 70, 35, 'ERMENEK'),
(872, 70, 40, 'KAZIMKARABEKIR'),
(873, 70, 45, 'SARIVELILER'),
(874, 71, 0, 'MERKEZ'),
(875, 71, 25, 'BAHSILI'),
(876, 71, 30, 'BAGLISEYH'),
(877, 71, 35, 'ÇELEBI'),
(878, 71, 40, 'DELICE'),
(879, 71, 45, 'KARAKEÇILI'),
(880, 71, 50, 'KESKIN'),
(881, 71, 55, 'SULAKYURT'),
(882, 71, 60, 'YAHSIHAN'),
(883, 72, 0, 'MERKEZ'),
(884, 72, 25, 'GERCÜS'),
(885, 72, 30, 'HASANKEYF'),
(886, 72, 35, 'BESIRI'),
(887, 72, 37, 'KOZLUK'),
(888, 72, 40, 'SASON'),
(889, 73, 0, 'MERKEZ'),
(890, 73, 25, 'BEYTÜSSEBA'),
(891, 73, 30, 'ULUDERE'),
(892, 73, 35, 'CIZRE'),
(893, 73, 40, 'IDIL'),
(894, 73, 45, 'SILOPI'),
(895, 73, 55, 'GÜÇLÜKONAK'),
(896, 74, 0, 'MERKEZ'),
(897, 74, 20, 'AMASRA'),
(898, 74, 30, 'KURUCASILE'),
(899, 74, 40, 'ULUS'),
(900, 75, 0, 'MERKEZ'),
(901, 75, 30, 'ÇILDIR'),
(902, 75, 35, 'DAMAL'),
(903, 75, 50, 'GÖLE'),
(904, 75, 55, 'HANAK'),
(905, 75, 75, 'POSOF'),
(906, 76, 0, 'MERKEZ'),
(907, 76, 25, 'ARALIK'),
(908, 76, 50, 'KARAKOYUNLU'),
(909, 76, 75, 'TUZLUCA'),
(910, 77, 0, 'MERKEZ'),
(911, 77, 10, 'ALTINOVA'),
(912, 77, 15, 'ARMUTLU'),
(913, 77, 20, 'CINARCIK'),
(914, 77, 22, 'CIFTLIKKOY'),
(915, 77, 80, 'TERMAL'),
(916, 78, 0, 'MERKEZ'),
(917, 78, 30, 'EFLANI'),
(918, 78, 33, 'ESKIPAZAR'),
(919, 78, 50, 'OVACIK'),
(920, 78, 70, 'SAFRANBOLU'),
(921, 78, 90, 'YENICE'),
(922, 79, 0, 'MERKEZ'),
(923, 79, 30, 'ELBEYLI'),
(924, 79, 50, 'MUSABEYLI'),
(925, 79, 60, 'POLATELI'),
(926, 80, 0, 'MERKEZ'),
(927, 80, 20, 'BAHÇE'),
(928, 80, 23, 'HASANBEYLI'),
(929, 80, 25, 'DÜZIÇI'),
(930, 80, 30, 'KADIRLI'),
(931, 80, 45, 'SUNBAS'),
(932, 80, 50, 'TOPRAKKALE'),
(933, 81, 0, 'MERKEZ'),
(934, 81, 20, 'AKÇAKOCA'),
(935, 81, 25, 'CUMAYERI'),
(936, 81, 30, 'ÇILIMLI'),
(937, 81, 35, 'GÖLYAKA'),
(938, 81, 40, 'GÜMÜSOVA'),
(939, 81, 45, 'KAYNASLI'),
(940, 81, 50, 'YIGILCA'),
(941, 3, 0, 'SINANPASA'),
(942, 9, 0, 'DIDIM'),
(943, 41, 0, 'DERINCE');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `level_target`
--

CREATE TABLE `level_target` (
  `level_target_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `level_target_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `level_target`
--

INSERT INTO `level_target` (`level_target_id`, `kategori_id`, `level_target_type_id`) VALUES
(1, 15, 1),
(2, 15, 2),
(3, 15, 3),
(4, 15, 4),
(5, 15, 5),
(6, 1, 6),
(7, 2, 6),
(8, 3, 6),
(9, 4, 6),
(10, 5, 6),
(11, 6, 6),
(12, 7, 6),
(13, 8, 6),
(14, 9, 6),
(15, 10, 6),
(16, 11, 6),
(17, 12, 6),
(18, 13, 6),
(19, 14, 6),
(20, 15, 6),
(21, 16, 6),
(22, 17, 6),
(23, 18, 6),
(24, 19, 6),
(25, 20, 6),
(26, 21, 6),
(27, 22, 6),
(28, 23, 6),
(29, 24, 6),
(30, 25, 6),
(31, 26, 6),
(32, 27, 6),
(33, 28, 6),
(34, 29, 6),
(35, 30, 6),
(36, 31, 6),
(37, 32, 6),
(38, 33, 6),
(39, 34, 6),
(40, 35, 6),
(41, 36, 6),
(42, 37, 6),
(43, 38, 6),
(44, 39, 6),
(45, 40, 6),
(46, 41, 6),
(47, 42, 6),
(48, 43, 6),
(49, 44, 6),
(50, 45, 6),
(51, 46, 6),
(52, 47, 6),
(53, 48, 6),
(54, 49, 6),
(55, 50, 6),
(56, 51, 6),
(57, 52, 6),
(58, 53, 6),
(59, 54, 6),
(60, 55, 6),
(61, 56, 6),
(62, 57, 6),
(63, 58, 6),
(64, 59, 6),
(65, 60, 6),
(66, 61, 6),
(67, 62, 6),
(68, 63, 6),
(69, 64, 6),
(70, 65, 6),
(71, 66, 6),
(72, 67, 6),
(73, 68, 6),
(74, 69, 6),
(75, 70, 6),
(76, 71, 6),
(77, 72, 6),
(78, 73, 6),
(79, 74, 6),
(80, 75, 6),
(81, 76, 6),
(82, 77, 6),
(83, 78, 6),
(84, 79, 6),
(85, 80, 6),
(86, 81, 6),
(87, 82, 6),
(88, 83, 6),
(89, 84, 6),
(90, 85, 6),
(91, 86, 6),
(92, 87, 6),
(93, 88, 6),
(94, 89, 6),
(95, 90, 6),
(96, 91, 6),
(97, 92, 6),
(98, 93, 6),
(99, 94, 6),
(100, 95, 6),
(101, 96, 6),
(102, 97, 6),
(103, 98, 6),
(104, 99, 6),
(105, 100, 6),
(106, 101, 6),
(107, 102, 6),
(108, 103, 6),
(109, 104, 6),
(110, 105, 6),
(111, 106, 6),
(112, 107, 6),
(113, 108, 6),
(114, 109, 6),
(115, 110, 6),
(116, 111, 6),
(117, 112, 6),
(118, 113, 6),
(119, 114, 6),
(120, 115, 6),
(121, 116, 6),
(122, 117, 6),
(123, 118, 6),
(124, 119, 6),
(125, 120, 6),
(126, 121, 6),
(127, 122, 6),
(128, 123, 6),
(129, 124, 6),
(130, 125, 6),
(131, 126, 6),
(132, 127, 6),
(133, 128, 6),
(134, 129, 6),
(135, 130, 6),
(136, 131, 6),
(137, 132, 6),
(138, 133, 6),
(139, 134, 6),
(140, 135, 6),
(141, 136, 6),
(142, 137, 6),
(143, 138, 6),
(144, 139, 6),
(145, 140, 6),
(146, 141, 6),
(147, 142, 6),
(148, 143, 6),
(149, 144, 6),
(150, 145, 6),
(151, 146, 6),
(152, 147, 6),
(153, 148, 6),
(154, 149, 6),
(155, 150, 6),
(156, 151, 6),
(157, 152, 6),
(158, 153, 6),
(159, 154, 6),
(160, 155, 6),
(161, 156, 6),
(162, 157, 6),
(163, 158, 6),
(164, 159, 6),
(165, 160, 6),
(166, 161, 6),
(167, 162, 6),
(168, 163, 6),
(169, 164, 6),
(170, 165, 6),
(171, 166, 6),
(172, 167, 6),
(173, 168, 6),
(174, 169, 6),
(175, 170, 6),
(176, 171, 6),
(177, 172, 6),
(178, 173, 6),
(179, 174, 6),
(180, 175, 6),
(181, 176, 6),
(182, 177, 6),
(183, 178, 6),
(184, 179, 6),
(185, 180, 6),
(186, 181, 6),
(187, 182, 6),
(188, 183, 6),
(189, 184, 6),
(190, 185, 6),
(191, 186, 6),
(192, 187, 6),
(193, 188, 6),
(194, 189, 6),
(195, 190, 6),
(196, 191, 6),
(197, 192, 6),
(198, 193, 6),
(199, 194, 6),
(200, 195, 6),
(201, 196, 6),
(202, 197, 6),
(203, 198, 6),
(204, 199, 6),
(205, 200, 6),
(206, 201, 6),
(207, 202, 6),
(208, 203, 6),
(209, 204, 6),
(210, 205, 6),
(211, 206, 6),
(212, 207, 6),
(213, 208, 6),
(214, 209, 6),
(215, 210, 6),
(216, 211, 6),
(217, 212, 6),
(218, 213, 6),
(219, 214, 6),
(220, 215, 6),
(221, 216, 6),
(222, 217, 6),
(223, 218, 6),
(224, 219, 6),
(225, 220, 6),
(226, 221, 6),
(227, 222, 6),
(228, 223, 6),
(229, 224, 6),
(230, 225, 6),
(231, 226, 6),
(232, 227, 6),
(233, 228, 6),
(234, 229, 6),
(235, 230, 6),
(236, 231, 6),
(237, 232, 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `level_target_types`
--

CREATE TABLE `level_target_types` (
  `level_target_types_id` int(11) NOT NULL,
  `level_target_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `level_target_types`
--

INSERT INTO `level_target_types` (`level_target_types_id`, `level_target_type_name`) VALUES
(1, 'TOEFL Hazırlık'),
(2, 'Anaokulu Seviyesi'),
(3, 'İlkokul Seviyesi'),
(4, 'Lise Seviyesi'),
(5, 'YDS Hazırlık'),
(6, 'Genel');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `place_types`
--

CREATE TABLE `place_types` (
  `place_types_id` int(11) NOT NULL,
  `place_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `place_types`
--

INSERT INTO `place_types` (`place_types_id`, `place_type_name`) VALUES
(1, 'Ders Alanın Yeri veya Ofisi'),
(2, 'Ders Verenin Yeri veya Ofisi'),
(3, 'Dışarıda Bir Yer'),
(4, 'Internet Üzerinden Uzaktan Ders');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

CREATE TABLE `posts` (
  `postid` bigint(20) NOT NULL,
  `postauthor` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `postdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `postitle` varchar(255) NOT NULL DEFAULT '',
  `safe_url` varchar(255) NOT NULL,
  `posticon` varchar(50) DEFAULT 'fa fa-book',
  `postcontent` longtext NOT NULL,
  `post_main_photo` varchar(255) NOT NULL,
  `postkeywords` text NOT NULL,
  `poststatus` varchar(20) NOT NULL DEFAULT 'publish',
  `postviews` varchar(11) NOT NULL DEFAULT '',
  `commentstatus` varchar(20) NOT NULL DEFAULT 'open',
  `pingstatus` varchar(20) NOT NULL DEFAULT 'open',
  `postseoname` varchar(255) NOT NULL DEFAULT '',
  `postmodified` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `postparent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `menuviews` varchar(11) NOT NULL DEFAULT 'top',
  `menuorder` int(4) NOT NULL DEFAULT 0,
  `postype` varchar(20) NOT NULL DEFAULT 'post',
  `commentcount` bigint(20) NOT NULL DEFAULT 0,
  `langselect` varchar(8) NOT NULL DEFAULT 'tr_TR',
  `price` varchar(255) NOT NULL,
  `hit` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`postid`, `postauthor`, `postdate`, `postitle`, `safe_url`, `posticon`, `postcontent`, `post_main_photo`, `postkeywords`, `poststatus`, `postviews`, `commentstatus`, `pingstatus`, `postseoname`, `postmodified`, `postparent`, `menuviews`, `menuorder`, `postype`, `commentcount`, `langselect`, `price`, `hit`, `create_date`) VALUES
(1, 1, '2018-05-01 10:20:51', 'Test', 'test', 'fa fa-book', 'test', '', 'test', 'publish', 'page', 'open', 'open', 'test', 0, 0, 'deleted', 0, 'blog', 0, 'tr_TR', '', 0, '2018-05-01 13:20:51'),
(2, 1, '2018-05-01 10:21:12', 'Test', 'test', 'fa fa-book', 'test', '', 'test', 'publish', 'page', 'open', 'open', 'test', 0, 0, 'deleted', 0, 'blog', 0, 'tr_TR', '', 0, '2018-05-01 13:21:12'),
(3, 1, '2018-05-01 10:24:22', 'tres', 'tres', 'fa fa-book', '<p>test</p>\r\n', '', '', 'publish', 'page', 'open', 'open', 'tres', 0, 0, 'top', 0, 'blog', 0, 'tr_TR', '', 0, '2018-05-01 13:24:22'),
(4, 1, '2018-05-01 10:28:13', 'ekle', 'ekle', 'fa fa-book', 'tes', '', '', 'publish', 'page', 'open', 'open', 'ekle', 0, 0, 'top', 0, 'blog', 0, 'tr_TR', '', 0, '2018-05-01 13:28:13'),
(5, 1, '2018-05-01 10:29:19', 'tst', 'tst', 'fa fa-book', 'tes', '', 'esdad', 'publish', 'page', 'open', 'open', 'tst', 0, 0, 'deleted', 0, 'blog', 0, 'tr_TR', '', 0, '2018-05-01 13:29:19'),
(6, 1, '2018-05-01 10:29:57', 'tst', 'tst', 'fa fa-book', 'tes', 'assets/images/blog/tst_21324.png', 'esdad', 'publish', 'page', 'open', 'open', 'tst', 0, 0, 'deleted', 0, 'blog', 0, 'tr_TR', '', 0, '2018-05-01 13:29:57'),
(7, 1, '2018-05-01 10:30:29', 'test', 'test', 'fa fa-book', '<p>test34</p>\r\n', '', 'tes', 'publish', 'page', 'open', 'open', 'test', 0, 0, 'top', 0, 'blog', 0, 'tr_TR', '', 0, '2018-05-01 13:30:29'),
(8, 1, '2018-05-01 11:04:17', 'ettes', 'ettes', 'fa fa-book', '<p>asdas</p>\r\n', 'ettes_93734.png', 'test', 'publish', 'page', 'open', 'open', 'ettes', 0, 0, 'top', 0, 'blog', 0, 'tr_TR', '', 0, '2018-05-01 14:04:17'),
(9, 1, '2018-05-01 11:04:52', 'yine test', 'yine-test', 'fa fa-book', '<p>fasd</p>\r\n', 'yine-test_29302.png', '', 'publish', 'page', 'open', 'open', 'yine-test', 0, 0, 'top', 0, 'blog', 0, 'tr_TR', '', 0, '2018-05-01 14:04:52'),
(10, 1, '2018-06-23 19:20:29', 'sweqwada', 'sweqwada', 'fa fa-book', '<p>sadsadadasdadasdsa</p>\r\n', 'sweqwada_43017.png', 'er', 'publish', 'page', 'open', 'open', 'sweqwada', 0, 0, 'top', 0, 'blog', 0, 'tr_TR', '', 0, '2018-06-23 22:20:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `requests`
--

CREATE TABLE `requests` (
  `request_id` int(11) NOT NULL,
  `request_owner_id` int(11) NOT NULL,
  `request_cat_id` int(11) NOT NULL,
  `request_real_cat_id` int(11) NOT NULL,
  `level_target` int(11) NOT NULL,
  `safe_url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `request_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `request_details` text CHARACTER SET utf8 NOT NULL,
  `il` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ilce` varchar(255) CHARACTER SET utf8 NOT NULL,
  `first_lesson_free` int(11) NOT NULL DEFAULT 0,
  `offer_price` varchar(255) NOT NULL,
  `request_date` datetime NOT NULL,
  `request_status` varchar(255) NOT NULL DEFAULT 'passive',
  `create_date` datetime DEFAULT current_timestamp(),
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `requests`
--

INSERT INTO `requests` (`request_id`, `request_owner_id`, `request_cat_id`, `request_real_cat_id`, `level_target`, `safe_url`, `request_title`, `request_details`, `il`, `ilce`, `first_lesson_free`, `offer_price`, `request_date`, `request_status`, `create_date`, `expire_date`) VALUES
(1, 15, 0, 0, 0, 'test-1', 'test', 'testtttt', 'Muğla', 'MERKEZ', 0, '', '0000-00-00 00:00:00', 'pending', '2018-04-04 22:58:47', '0000-00-00 00:00:00'),
(5, 22, 13, 0, 0, 'test-5', 'test', 'test', 'AĞRI', 'MERKEZ', 1, '', '0000-00-00 00:00:00', 'pending', '2018-04-29 23:18:38', '0000-00-00 00:00:00'),
(7, 25, 15, 0, 0, 'ingilizce-kursu-7', 'İngilizce Kursu', 'İngilizce kursu veren var mı güngörende ?', 'İstanbul', 'Küçükçekmece', 0, '', '0000-00-00 00:00:00', 'pending', '2018-04-29 23:37:28', '0000-00-00 00:00:00'),
(8, 1, 12, 0, 0, 'test-8', 'test', 'test', 'Özel Ders İl', 'Özel Ders İlce', 0, '', '0000-00-00 00:00:00', 'passive', '2018-05-01 19:06:43', '0000-00-00 00:00:00'),
(9, 26, 9, 0, 0, 'test-9', 'test', 'test', 'Ağrı', 'HAMUR', 0, '', '0000-00-00 00:00:00', 'pending', '2018-05-01 19:45:12', '0000-00-00 00:00:00'),
(10, 27, 12, 0, 0, 'gazetecilik-dersi-ariyorum-10', 'Gazetecilik dersi arıyorum', 'gazete', 'Amasya', 'MERZIFON', 0, '', '0000-00-00 00:00:00', 'passive', '2018-05-06 14:38:50', '0000-00-00 00:00:00'),
(11, 28, 14, 151, 0, 'icecek-dersi-ariyorum-11', 'İçecek dersi arıyorum', 'test içecek', 'Balıkesir', 'GÖMEÇ', 0, '', '0000-00-00 00:00:00', 'passive', '2018-05-06 14:40:23', '0000-00-00 00:00:00'),
(12, 29, 5, 67, 0, 'tus-dersi-ariyorum-12', 'TUS dersi arıyorum', 'ads', 'Bilecik', 'MERKEZ', 1, '', '0000-00-00 00:00:00', 'pending', '2018-06-23 20:58:28', '0000-00-00 00:00:00'),
(13, 30, 18, 188, 0, 'bilisim-ve-teknoloji-hukuku-dersi-almak-istiyorum-13', 'Bilişim ve Teknoloji Hukuku dersi almak istiyorum', 'fsadsa', 'Adıyaman', 'MERKEZ', 1, '', '0000-00-00 00:00:00', 'passive', '2018-06-28 23:23:13', '0000-00-00 00:00:00'),
(14, 31, 17, 179, 0, 'marka-yonetimi-dersi-almak-istiyorum-14', 'Marka Yönetimi dersi almak istiyorum', 'te', 'Afyon', 'MERKEZ', 0, '', '0000-00-00 00:00:00', 'passive', '2018-06-28 23:25:21', '0000-00-00 00:00:00'),
(15, 32, 17, 181, 0, 'dijital-pazarlama-dersi-almak-istiyorum-15', 'Dijital Pazarlama dersi almak istiyorum', '21313', 'Bursa', 'MERKEZ', 0, '', '0000-00-00 00:00:00', 'passive', '2018-06-28 23:26:40', '0000-00-00 00:00:00'),
(16, 0, 0, 0, 0, '', '', '', '', '', 0, '', '0000-00-00 00:00:00', 'temp', '2018-07-04 23:15:43', '0000-00-00 00:00:00'),
(18, 1, 14, 139, 0, 'ascilik-dersi-almak-istiyorum-18', 'Aşçılık dersi almak istiyorum', 'asdd', 'Bolu', 'MERKEZ', 0, '5', '0000-00-00 00:00:00', 'pending', '2018-07-05 21:16:34', '0000-00-00 00:00:00'),
(19, 0, 0, 0, 0, '', '', '', '', '', 0, '', '0000-00-00 00:00:00', 'temp', '2018-07-06 22:02:53', '0000-00-00 00:00:00'),
(20, 0, 0, 0, 0, '', '', '', '', '', 0, '', '0000-00-00 00:00:00', 'temp', '2018-07-27 23:12:53', '0000-00-00 00:00:00'),
(21, 22, 4, 52, 0, 'yazilim-dersi-almak-istiyorum-21', 'Yazılım dersi almak istiyorum', 'Yazılım kursu arıyorum', 'Balıkesir', 'MERKEZ', 1, '5', '0000-00-00 00:00:00', 'success', '2018-09-15 19:30:14', '0000-00-00 00:00:00'),
(22, 22, 15, 141, 0, 'saha-uygulamalari-egitimi-dersi-almak-istiyorum-22', 'Saha Uygulamaları Eğitimi dersi almak istiyorum', 'saha', 'Bitlis', 'AHLAT', 1, '', '0000-00-00 00:00:00', 'passive', '2018-09-15 19:31:25', '0000-00-00 00:00:00'),
(23, 22, 9, 85, 0, 'aerobik-dersi-almak-istiyorum-23', 'Aerobik dersi almak istiyorum', 'aerobik', 'Bursa', 'ORHANELI', 1, '', '0000-00-00 00:00:00', 'passive', '2018-09-15 20:44:20', '0000-00-00 00:00:00'),
(25, 39, 16, 146, 0, 'urun-tanitim-dersi-almak-istiyorum-25', 'Ürün Tanıtım dersi almak istiyorum', 'sss', 'Bursa', 'ORHANELI', 1, '', '0000-00-00 00:00:00', 'passive', '2018-09-15 20:45:18', '0000-00-00 00:00:00'),
(26, 21, 16, 176, 0, 'hijyen-dersi-almak-istiyorum-26', 'Hijyen dersi almak istiyorum', '1212', 'Amasya', 'MERKEZ', 1, '233', '0000-00-00 00:00:00', 'deleted', '2018-10-14 01:10:27', '0000-00-00 00:00:00'),
(28, 42, 16, 146, 0, 'urun-tanitim-dersi-almak-istiyorum-28', 'Ürün Tanıtım dersi almak istiyorum', 'asdsd', 'Antalya', 'MERKEZ', 0, '', '0000-00-00 00:00:00', 'passive', '2018-10-14 19:08:29', '0000-00-00 00:00:00'),
(29, 43, 16, 146, 0, 'urun-tanitim-dersi-almak-istiyorum-29', 'Ürün Tanıtım dersi almak istiyorum', 'ssad', 'Özel Ders İl', 'Özel Ders İlce', 0, '0', '0000-00-00 00:00:00', 'pending', '2018-10-14 19:18:03', '0000-00-00 00:00:00'),
(30, 0, 0, 0, 0, '', '', '', '', '', 0, '', '0000-00-00 00:00:00', 'temp', '2018-10-27 18:27:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `requests_offer`
--

CREATE TABLE `requests_offer` (
  `requests_offer_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `offer_user_id` int(11) NOT NULL,
  `offer` varchar(255) NOT NULL,
  `offer_details` text NOT NULL,
  `offer_egitim_name` varchar(255) NOT NULL,
  `offer_egitim_start_date` datetime NOT NULL,
  `offer_egitim_end_date` int(11) NOT NULL,
  `offer_commission` varchar(255) NOT NULL,
  `offer_first_lesson_free` int(11) NOT NULL DEFAULT 0,
  `create_date` int(11) NOT NULL,
  `offer_status` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `requests_offer`
--

INSERT INTO `requests_offer` (`requests_offer_id`, `request_id`, `offer_user_id`, `offer`, `offer_details`, `offer_egitim_name`, `offer_egitim_start_date`, `offer_egitim_end_date`, `offer_commission`, `offer_first_lesson_free`, `create_date`, `offer_status`) VALUES
(2, 21, 19, '23', 'test', 'Test', '2018-04-06 00:00:00', 2018, '', 0, 0, 'rejected'),
(3, 1, 19, '231', 'adasdasd', '', '2018-06-28 00:00:00', 2018, '', 0, 0, 'pending'),
(4, 5, 19, '21332', '123123123', '', '2018-06-28 00:00:00', 2018, '', 0, 0, 'success'),
(5, 5, 19, '21332', '123123123', '', '2018-06-28 00:00:00', 2018, '', 0, 0, 'pending'),
(6, 5, 19, '21332', '123123123', '', '2018-06-28 00:00:00', 2018, '', 0, 0, 'pending'),
(7, 5, 19, '21332', '123123123', '', '2018-06-22 00:00:00', 2018, '', 0, 0, 'success'),
(8, 5, 19, '21332', '123123123', '', '2018-06-28 00:00:00', 2018, '', 0, 0, 'pending'),
(9, 5, 19, '21332', '123123123', '', '2018-06-16 00:00:00', 2018, '', 0, 0, 'pending'),
(10, 5, 38, '12323', 'deta', '', '2018-09-16 00:00:00', 2018, '', 0, 0, 'success'),
(11, 21, 38, '12', 'detay', '', '2018-09-06 00:00:00', 2018, '', 0, 0, 'success');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `request_offer_places`
--

CREATE TABLE `request_offer_places` (
  `request_offer_places_id` int(11) NOT NULL,
  `request_offer_id` int(11) NOT NULL,
  `request_offer_place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `request_offer_places`
--

INSERT INTO `request_offer_places` (`request_offer_places_id`, `request_offer_id`, `request_offer_place_id`) VALUES
(13, 8, 0),
(14, 8, 0),
(15, 8, 0),
(16, 8, 0),
(17, 9, 1),
(18, 9, 2),
(19, 9, 3),
(20, 9, 4),
(21, 10, 2),
(22, 11, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `request_offer_times`
--

CREATE TABLE `request_offer_times` (
  `request_offer_times_id` int(11) NOT NULL,
  `request_offer_id` int(11) NOT NULL,
  `request_offer_time_types_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `request_offer_times`
--

INSERT INTO `request_offer_times` (`request_offer_times_id`, `request_offer_id`, `request_offer_time_types_id`) VALUES
(1, 3, 2),
(2, 5, 2),
(3, 6, 2),
(4, 8, 2),
(5, 9, 2),
(6, 9, 4),
(7, 10, 2),
(8, 10, 3),
(9, 11, 1),
(10, 11, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `request_places`
--

CREATE TABLE `request_places` (
  `request_places_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `request_place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `request_places`
--

INSERT INTO `request_places` (`request_places_id`, `request_id`, `request_place_id`) VALUES
(5, 15, 1),
(6, 15, 2),
(7, 15, 3),
(8, 18, 1),
(9, 18, 3),
(10, 21, 1),
(11, 21, 2),
(12, 22, 2),
(13, 23, 1),
(14, 23, 3),
(15, 25, 2),
(16, 26, 1),
(17, 26, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `request_times`
--

CREATE TABLE `request_times` (
  `request_times_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `time_types_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `request_times`
--

INSERT INTO `request_times` (`request_times_id`, `request_id`, `time_types_id`) VALUES
(1, 5, 1),
(2, 5, 2),
(3, 7, 1),
(4, 7, 2),
(5, 7, 3),
(6, 7, 4),
(7, 8, 1),
(8, 9, 2),
(9, 9, 3),
(10, 10, 1),
(11, 10, 2),
(12, 11, 1),
(13, 11, 3),
(14, 12, 1),
(15, 12, 2),
(16, 13, 1),
(17, 13, 2),
(18, 14, 1),
(19, 14, 3),
(20, 14, 4),
(21, 15, 4),
(22, 18, 2),
(23, 18, 4),
(24, 21, 1),
(25, 21, 2),
(26, 22, 2),
(27, 23, 2),
(28, 23, 3),
(29, 25, 2),
(30, 25, 3),
(31, 26, 2),
(32, 26, 3),
(33, 28, 2),
(34, 28, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `time_types`
--

CREATE TABLE `time_types` (
  `time_types_id` int(11) NOT NULL,
  `time_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `time_types`
--

INSERT INTO `time_types` (`time_types_id`, `time_type`) VALUES
(1, 'Haftasonu Sabah'),
(2, 'Haftasonu Akşam'),
(3, 'Haftaiçi Gündüz'),
(4, 'Haftaiçi Akşam');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT 0,
  `user_type` int(11) NOT NULL,
  `email_verify` int(11) NOT NULL DEFAULT 0,
  `gender` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone_verify` int(11) NOT NULL DEFAULT 0,
  `short_info` text COLLATE utf8_unicode_ci NOT NULL,
  `il` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ilce` varchar(255) CHARACTER SET utf8 NOT NULL,
  `kayit_tarihi` datetime NOT NULL,
  `last_online_time` datetime DEFAULT NULL,
  `silinme_tarihi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_pass`, `user_status`, `user_type`, `email_verify`, `gender`, `phone_verify`, `short_info`, `il`, `ilce`, `kayit_tarihi`, `last_online_time`, `silinme_tarihi`) VALUES
(1, 'Metin ERBEK', 'erbekmetin@gmail.com', '5374494800', '4297f44b13955235245b2497399d7a93', 0, 3, 1, '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(2, 'Test', 'metinvia@gmail.com', '123123', '4297f44b13955235245b2497399d7a93', 0, 1, 0, '', 0, '', '', '', '2018-02-19 19:33:32', '0000-00-00 00:00:00', 0),
(3, 'Kayit', 'kayit@yopmail.com', '', '4297f44b13955235245b2497399d7a93', 0, 2, 0, '', 0, '', '', '', '2018-02-19 21:01:18', '0000-00-00 00:00:00', 0),
(5, 'Metin ERBEK', 'metinvia1@gmail.com', '+6285743463030', '4297f44b13955235245b2497399d7a93', 0, 2, 0, '', 0, '', '', '', '2018-02-20 20:39:11', '0000-00-00 00:00:00', 0),
(7, 'Metin ERBEK', 'metinvia2@gmail.com', '+6285743463030', '4297f44b13955235245b2497399d7a93', 0, 2, 0, '', 0, '', '', '', '2018-02-20 20:39:52', '0000-00-00 00:00:00', 0),
(8, 'murat', 'metinerbekis@gmail.com', '05433029662', '15c3779ce38c924d72e60cb5ba5de187', 0, 2, 0, '', 0, '', '', '', '2018-02-23 21:36:51', '0000-00-00 00:00:00', 0),
(9, 'Test', 'erbekm@yopmail.com', '234234', '4297f44b13955235245b2497399d7a93', 0, 2, 0, '', 0, '', '', '', '2018-03-05 22:30:08', '0000-00-00 00:00:00', 0),
(11, 'Test', 'erbekm6@yopmail.com', '234234', '4297f44b13955235245b2497399d7a93', 0, 2, 0, '', 0, '', '', '', '2018-03-05 22:30:46', '0000-00-00 00:00:00', 0),
(12, 'Test', 'testegitimveren@yopmail.com', '23112312312312', '4297f44b13955235245b2497399d7a93', 0, 2, 1, 'Kadın', 0, 'asdsd', 'Antalya', 'DEMRE', '2018-04-02 22:20:20', '0000-00-00 00:00:00', 0),
(13, 'Metin', 'coktest@yopmail.com', '1231231', '4297f44b13955235245b2497399d7a93', 0, 1, 0, '', 0, '', '', '', '2018-04-04 21:57:56', NULL, NULL),
(15, 'Metin', 'coktest1@yopmail.com', '1231231', '4297f44b13955235245b2497399d7a93', 0, 1, 0, '', 0, '', '', '', '2018-04-04 21:58:47', NULL, NULL),
(16, 'Metin', 'coktest2@yopmail.com', '1231231', '4297f44b13955235245b2497399d7a93', 0, 1, 0, '', 0, '', '', '', '2018-04-04 21:59:20', NULL, NULL),
(17, 'Test EĞitim veren', 'testegitimv@yopmail.com', '12123213123', '4297f44b13955235245b2497399d7a93', 0, 2, 0, '', 0, '', '', '', '2018-04-04 23:10:56', NULL, NULL),
(18, 'Test', 'testliderlik@yopmail.com', '23412313123', '4297f44b13955235245b2497399d7a93', 0, 1, 0, '', 0, '', '', '', '2018-04-05 20:50:48', NULL, NULL),
(19, 'Egitim Talepçisi', 'egitimtalep@yopmail.com', '213123213123', '4297f44b13955235245b2497399d7a93', 0, 2, 1, '', 0, '', '', '', '2018-04-05 22:35:19', NULL, NULL),
(20, 'Admin', 'admin@egitimtalebi.com', '5374494800', '4297f44b13955235245b2497399d7a93', 1, 3, 0, '', 0, '', '', '', '2018-04-08 00:00:00', '2018-04-08 00:00:00', NULL),
(21, 'Test Talepçi', 'talepediyorum@yopmail.com', '231232423412332', '4297f44b13955235245b2497399d7a93', 0, 1, 1, '', 0, '', '', '', '2018-04-08 09:30:20', NULL, NULL),
(22, 'test', 'testmetinyop@yopmail.com', '234234234', '4297f44b13955235245b2497399d7a93', 0, 1, 1, '', 0, '', '', '', '2018-04-29 22:18:38', NULL, NULL),
(23, 'Metin ERBEK', 'metin_gg@yopmail.com', '5374494800', '4297f44b13955235245b2497399d7a93', 0, 1, 0, '', 0, '', '', '', '2018-04-29 22:36:58', NULL, NULL),
(25, 'Metin ERBEK', 'metin_6@yopmail.com', '5374494800', '4297f44b13955235245b2497399d7a93', 0, 1, 0, '', 0, '', '', '', '2018-04-29 22:37:28', NULL, NULL),
(26, 'test', 'test_metin_2@yopmail.com', '2434', '4297f44b13955235245b2497399d7a93', 0, 1, 0, '', 0, '', '', '', '2018-05-01 18:45:12', NULL, NULL),
(27, 'metin', 'gazete_12@yopmail.com', '23123123', '4297f44b13955235245b2497399d7a93', 0, 1, 0, '', 0, '', '', '', '2018-05-06 13:38:50', NULL, NULL),
(28, 'Metin', 'test_another_4@yopmail.com', '21312421312', '4297f44b13955235245b2497399d7a93', 0, 1, 0, '', 0, '', '', '', '2018-05-06 13:40:23', NULL, NULL),
(29, 'Metin', 'test_metin32@yopmail.com', '123123', '4297f44b13955235245b2497399d7a93', 0, 1, 0, '', 0, '', '', '', '2018-06-23 19:58:27', NULL, NULL),
(30, 'Test', 'testwe3@yopmail.com', '23123123', '4297f44b13955235245b2497399d7a93', 1, 1, 1, '', 1, '', '', '', '2018-06-28 22:23:13', NULL, NULL),
(31, 'treee', 'tesssst@yopmail.com', '23213213', 'b3ddbc502e307665f346cbd6e52cc10d', 0, 1, 0, '', 0, '', '', '', '2018-06-28 22:25:21', NULL, NULL),
(32, 'teess', 'asdasd@yopmail.com', '21323', '043c00e6c7ff021e8cc4d394d3264cb5', 0, 1, 0, '', 0, '', '', '', '2018-06-28 22:26:40', NULL, NULL),
(33, 'Özel Ders Verici', 'test_metin@yopmail.com', '23112412312', '4297f44b13955235245b2497399d7a93', 0, 2, 0, '', 0, '', '', '', '2018-07-10 20:45:53', NULL, NULL),
(34, 'test', 'erbekmetin23@yopmail.com', 'test', '4297f44b13955235245b2497399d7a93', 0, 2, 0, '', 0, '', '', '', '2018-09-15 11:00:56', NULL, NULL),
(35, 'test', 'erbekmetin232@yopmail.com', 'test', '4297f44b13955235245b2497399d7a93', 0, 2, 0, '', 0, '', '', '', '2018-09-15 11:01:22', NULL, NULL),
(36, 'Test', 'testegitimveren123@yopmail.com', '213123123', '4297f44b13955235245b2497399d7a93', 0, 2, 1, '', 0, '', '', '', '2018-09-15 15:18:11', NULL, NULL),
(37, 'Kayit', 'metin444@yopmail.com', '2311221', '4297f44b13955235245b2497399d7a93', 0, 2, 0, '', 0, '', '', '', '2018-09-15 16:46:00', NULL, NULL),
(38, 'Kayit2sad', 'metin4443@yopmail.com', '2311221', '4297f44b13955235245b2497399d7a93', 0, 2, 1, '', 0, '', '', '', '2018-09-15 16:46:43', NULL, NULL),
(39, 'Test', 'erbekmetin222222@yopmail.com', '1231231234', '4297f44b13955235245b2497399d7a93', 0, 1, 0, '', 0, '', '', '', '2018-09-15 19:45:18', NULL, NULL),
(40, 'Test', 'testmetin2@yopmail.com', '2312312422', '4297f44b13955235245b2497399d7a93', 0, 2, 0, '', 0, '', '', '', '2018-09-15 19:54:08', NULL, NULL),
(41, 'Test EĞitim veren', 'tekrartest@yopmail.com', '22223', '4297f44b13955235245b2497399d7a93', 0, 2, 1, '', 0, '', '', '', '2018-09-15 19:55:41', NULL, NULL),
(42, 'Test Emre', 'metinvia1213@yopmail.com', '1231231234', '4297f44b13955235245b2497399d7a93', 0, 1, 0, '', 0, '', '', '', '2018-10-14 18:08:29', NULL, NULL),
(43, 'Test Emre', 'testmetin24@yopmail.com', '4444444', '4297f44b13955235245b2497399d7a93', 0, 1, 1, '', 0, '', '', '', '2018-10-14 18:17:59', NULL, NULL),
(44, 'Mtein', 'metin@yopmail.com', '231231', '4297f44b13955235245b2497399d7a93', 0, 1, 0, '', 0, '', '', '', '2025-10-13 22:07:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_cats`
--

CREATE TABLE `user_cats` (
  `user_cats_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `profile_desc` text CHARACTER SET utf8 NOT NULL,
  `diploma_cert` text CHARACTER SET utf8 NOT NULL,
  `first_lesson_free` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `user_cats`
--

INSERT INTO `user_cats` (`user_cats_id`, `user_id`, `cat_id`, `profile_desc`, `diploma_cert`, `first_lesson_free`) VALUES
(6, 12, 80, 'asdas', 'dsdad', 0),
(7, 12, 15, 'SAD', 'asdasdd', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_cats_levels`
--

CREATE TABLE `user_cats_levels` (
  `user_cats_level_id` int(11) NOT NULL,
  `level_target_id` int(11) NOT NULL,
  `user_cats_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user_cats_levels`
--

INSERT INTO `user_cats_levels` (`user_cats_level_id`, `level_target_id`, `user_cats_id`) VALUES
(11, 6, 5),
(13, 6, 6),
(14, 3, 7),
(15, 4, 7);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_school`
--

CREATE TABLE `user_school` (
  `user_school_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `school_type` varchar(255) NOT NULL,
  `shool_name` varchar(255) NOT NULL,
  `school_dep` varchar(255) NOT NULL,
  `school_graduate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user_school`
--

INSERT INTO `user_school` (`user_school_id`, `user_id`, `school_type`, `shool_name`, `school_dep`, `school_graduate`) VALUES
(15, 12, 'Lise', '12321321323232222', '213231', '213');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `blog_cats`
--
ALTER TABLE `blog_cats`
  ADD PRIMARY KEY (`blog_cats_id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Tablo için indeksler `ekategori`
--
ALTER TABLE `ekategori`
  ADD PRIMARY KEY (`cat_id`);

--
-- Tablo için indeksler `etur`
--
ALTER TABLE `etur`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `il`
--
ALTER TABLE `il`
  ADD PRIMARY KEY (`il_id`);

--
-- Tablo için indeksler `ilce`
--
ALTER TABLE `ilce`
  ADD PRIMARY KEY (`ilce_id`);

--
-- Tablo için indeksler `level_target`
--
ALTER TABLE `level_target`
  ADD PRIMARY KEY (`level_target_id`);

--
-- Tablo için indeksler `level_target_types`
--
ALTER TABLE `level_target_types`
  ADD PRIMARY KEY (`level_target_types_id`);

--
-- Tablo için indeksler `place_types`
--
ALTER TABLE `place_types`
  ADD PRIMARY KEY (`place_types_id`);

--
-- Tablo için indeksler `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postid`);

--
-- Tablo için indeksler `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`request_id`);

--
-- Tablo için indeksler `requests_offer`
--
ALTER TABLE `requests_offer`
  ADD PRIMARY KEY (`requests_offer_id`);

--
-- Tablo için indeksler `request_offer_places`
--
ALTER TABLE `request_offer_places`
  ADD PRIMARY KEY (`request_offer_places_id`);

--
-- Tablo için indeksler `request_offer_times`
--
ALTER TABLE `request_offer_times`
  ADD PRIMARY KEY (`request_offer_times_id`);

--
-- Tablo için indeksler `request_places`
--
ALTER TABLE `request_places`
  ADD PRIMARY KEY (`request_places_id`);

--
-- Tablo için indeksler `request_times`
--
ALTER TABLE `request_times`
  ADD PRIMARY KEY (`request_times_id`);

--
-- Tablo için indeksler `time_types`
--
ALTER TABLE `time_types`
  ADD PRIMARY KEY (`time_types_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_user_email_unique` (`user_email`);

--
-- Tablo için indeksler `user_cats`
--
ALTER TABLE `user_cats`
  ADD PRIMARY KEY (`user_cats_id`);

--
-- Tablo için indeksler `user_cats_levels`
--
ALTER TABLE `user_cats_levels`
  ADD PRIMARY KEY (`user_cats_level_id`);

--
-- Tablo için indeksler `user_school`
--
ALTER TABLE `user_school`
  ADD PRIMARY KEY (`user_school_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `blog_cats`
--
ALTER TABLE `blog_cats`
  MODIFY `blog_cats_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `ekategori`
--
ALTER TABLE `ekategori`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- Tablo için AUTO_INCREMENT değeri `etur`
--
ALTER TABLE `etur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `il`
--
ALTER TABLE `il`
  MODIFY `il_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Tablo için AUTO_INCREMENT değeri `ilce`
--
ALTER TABLE `ilce`
  MODIFY `ilce_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=944;

--
-- Tablo için AUTO_INCREMENT değeri `level_target`
--
ALTER TABLE `level_target`
  MODIFY `level_target_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- Tablo için AUTO_INCREMENT değeri `level_target_types`
--
ALTER TABLE `level_target_types`
  MODIFY `level_target_types_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `place_types`
--
ALTER TABLE `place_types`
  MODIFY `place_types_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `posts`
--
ALTER TABLE `posts`
  MODIFY `postid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `requests`
--
ALTER TABLE `requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `requests_offer`
--
ALTER TABLE `requests_offer`
  MODIFY `requests_offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `request_offer_places`
--
ALTER TABLE `request_offer_places`
  MODIFY `request_offer_places_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `request_offer_times`
--
ALTER TABLE `request_offer_times`
  MODIFY `request_offer_times_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `request_places`
--
ALTER TABLE `request_places`
  MODIFY `request_places_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `request_times`
--
ALTER TABLE `request_times`
  MODIFY `request_times_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `time_types`
--
ALTER TABLE `time_types`
  MODIFY `time_types_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Tablo için AUTO_INCREMENT değeri `user_cats`
--
ALTER TABLE `user_cats`
  MODIFY `user_cats_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `user_cats_levels`
--
ALTER TABLE `user_cats_levels`
  MODIFY `user_cats_level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
