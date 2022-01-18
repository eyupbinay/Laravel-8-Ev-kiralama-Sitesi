-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 16 Oca 2022, 17:54:00
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `evilansitesi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `keywords`, `description`, `image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Daire', 'daire', 'daire', NULL, 'kiralik-daire', 'true', NULL, NULL),
(2, 0, 'Residence', 'Residence', 'Residence', NULL, 'residence', 'true', NULL, NULL),
(3, 0, 'Müstakil Ev', 'Müstakil Ev', 'Müstakil Ev', NULL, 'mustakil-ev', 'true', NULL, NULL),
(4, 0, 'Villa', 'Villa', 'Villa', NULL, 'villa', 'true', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Siteye Nasıl Kaydolurum?', '<p><em><strong>REGISTER KISMINDAN KAYDOLABİLİRSİNİZ..</strong></em></p>', 1, 'true', '2021-01-24 08:23:26', '2021-01-24 08:24:56'),
(2, 'Nasıl İlan ekleyebilirim?', '<p><em><strong>İLAN EKLE BUTONUNDAN TIKLAYABİLİRSİNİZ...</strong></em></p>', 2, 'true', '2021-01-24 08:24:18', '2021-01-24 08:24:18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `filemanager`
--

CREATE TABLE `filemanager` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` double(8,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `absolute_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`extra`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `houses`
--

CREATE TABLE `houses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metrekare` int(11) DEFAULT NULL,
  `isitma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `odasayisi` int(11) DEFAULT NULL,
  `katsayisi` int(11) DEFAULT NULL,
  `esya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `binayasi` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `aidat` double(8,2) DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `houses`
--

INSERT INTO `houses` (`id`, `title`, `keywords`, `description`, `image`, `category_id`, `user_id`, `address`, `phone`, `metrekare`, `isitma`, `odasayisi`, `katsayisi`, `esya`, `binayasi`, `price`, `aidat`, `detail`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bahçelievler metrobüse 5 dk kiralık 3+1 dublex daire', 'Bahçelievler metrobüse 5 dk kiralık 3+1 dublex daire', 'Bahçelievler metrobüse 5 dk kiralık 3+1 dublex daire', 'images/notYfhw1nsNpd7140IiMITm2GjszcCzsDS3q5Cmb.webp', 1, 1, 'İstanbul - Bahçelievler - Bahçelievler Mahallesi', '08601213252', 140, 'Doğalgaz', 4, 2, 'yok', 2, 10000.00, 100.00, '<p>İlan Bilgileri</p>\r\n\r\n<p>İlan Numarası</p>\r\n\r\n<p>10450301</p>\r\n\r\n<p>İlan G&uuml;ncelleme Tarihi</p>\r\n\r\n<p>30 Aralık 2021</p>\r\n\r\n<p>Kategorisi</p>\r\n\r\n<p>Kiralık</p>\r\n\r\n<p>Br&uuml;t Metrekare</p>\r\n\r\n<p>140 M2</p>\r\n\r\n<p>Binanın Yaşı</p>\r\n\r\n<p>5-10</p>\r\n\r\n<p>Binanın Kat Sayısı</p>\r\n\r\n<p>5</p>\r\n\r\n<p>Kullanım Durumu</p>\r\n\r\n<p>Boş</p>\r\n\r\n<p>Yapı Tipi</p>\r\n\r\n<p>Betonarme</p>\r\n\r\n<p>Eşya Durumu</p>\r\n\r\n<p>Eşyalı</p>\r\n\r\n<p>Depozito</p>\r\n\r\n<p>2 TL</p>\r\n\r\n<p>Banyo Sayısı</p>\r\n\r\n<p>2</p>\r\n\r\n<p>Fiyat Durumu</p>\r\n\r\n<p>Birim Fiyat</p>\r\n\r\n<p>İlan Oluşturma Tarihi</p>\r\n\r\n<p>30 Aralık 2021</p>\r\n\r\n<p>T&uuml;r&uuml;</p>\r\n\r\n<p>Konut</p>\r\n\r\n<p>Net Metrekare</p>\r\n\r\n<p>130 M2</p>\r\n\r\n<p>Oda Sayısı</p>\r\n\r\n<p>3+1</p>\r\n\r\n<p>Bulunduğu Kat</p>\r\n\r\n<p>&Ccedil;atı Dubleks</p>\r\n\r\n<p>Isıtma Tipi</p>\r\n\r\n<p>Kombi Doğalgaz</p>\r\n\r\n<p>Yapı Durumu</p>\r\n\r\n<p>İkinci El</p>\r\n\r\n<p>Site İ&ccedil;erisinde</p>\r\n\r\n<p>Hayır</p>\r\n\r\n<p>Aidat</p>\r\n\r\n<p>100 TL</p>\r\n\r\n<p>Takas</p>\r\n\r\n<p>Yok</p>\r\n\r\n<p>WC Sayısı</p>\r\n\r\n<p>2</p>\r\n\r\n<p>G&ouml;r&uuml;nt&uuml;l&uuml; Gezilebilir Mi?</p>\r\n\r\n<p>Hayır</p>\r\n\r\n<p>Daha Fazla G&ouml;ster</p>\r\n\r\n<p>İlan A&ccedil;ıklaması</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>YABANCIYA UYGUN !!!!!!!!!!!!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>BAH&Ccedil;ELİEVLERDE METROB&Uuml;SE Y&Uuml;R&Uuml;ME MESAFESİ 5 DK&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>MERKEZİ KONUMDA</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>OKUL HASTANE RESTORANLAR VE DİĞER TOPLU ULAŞIMLARIN MERKEZİNDE</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3+1 DUBLEX</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>MANZARALI VE GENİŞ TERASLI</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ASANS&Ouml;RL&Uuml;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DETAYLI BİLGİ VE SUNUM İ&Ccedil;İN ARAYIN!!!!!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>İlan &Ouml;zellikleri</p>\r\n\r\n<p>İ&ccedil; &Ouml;zellikler</p>\r\n\r\n<p><em>done</em>Kiler</p>\r\n\r\n<p><em>done</em>Dolaplı Mutfak</p>\r\n\r\n<p><em>done</em>Hazır Mutfak</p>\r\n\r\n<p><em>done</em>Mutfak Mobilyası</p>\r\n\r\n<p><em>done</em>Bulaşık Makinesi</p>\r\n\r\n<p><em>done</em>Marley</p>\r\n\r\n<p><em>done</em>Set&uuml;st&uuml; Ocak</p>\r\n\r\n<p><em>done</em>Ocak Doğalgazı</p>\r\n\r\n<p><em>done</em>Fırın</p>\r\n\r\n<p><em>done</em>Ankastre Mutfak</p>\r\n\r\n<p><em>done</em>Laminant Mutfak</p>\r\n\r\n<p><em>done</em>Sıcak Su</p>\r\n\r\n<p><em>done</em>Duşakabinli</p>\r\n\r\n<p><em>done</em>&Ccedil;amaşır Makinesi</p>\r\n\r\n<p><em>done</em>Ebeveyn Banyo</p>\r\n\r\n<p><em>done</em>Kartonpiyer</p>\r\n\r\n<p><em>done</em>Giyinme Odası</p>\r\n\r\n<p><em>done</em>&Ccedil;elik Kapı</p>\r\n\r\n<p><em>done</em>Parke</p>\r\n\r\n<p><em>done</em>Spot Işık</p>\r\n\r\n<p><em>done</em>&Ccedil;amaşır Odası</p>\r\n\r\n<p><em>done</em>Y&uuml;ksek Tavan</p>\r\n\r\n<p><em>done</em>Beyaz Eşya</p>\r\n\r\n<p><em>done</em>Laminant</p>\r\n\r\n<p><em>done</em>Wi-Fi</p>\r\n\r\n<p><em>done</em>Intercom</p>\r\n\r\n<p><em>done</em>Kablo TV - Uydu</p>\r\n\r\n<p><em>done</em>ADSL</p>\r\n\r\n<p><em>done</em>Fiber</p>\r\n\r\n<p>Dış &Ouml;zellikler</p>\r\n\r\n<p><em>done</em>G&uuml;ney Cepheli</p>\r\n\r\n<p><em>done</em>Doğu Cepheli</p>\r\n\r\n<p><em>done</em>Engelliye Uygun</p>\r\n\r\n<p><em>done</em>A&ccedil;ık Otopark</p>\r\n\r\n<p><em>done</em>Ş&ouml;mine</p>\r\n\r\n<p><em>done</em>Asans&ouml;r</p>\r\n\r\n<p><em>done</em>Ses Yalıtımı</p>\r\n\r\n<p><em>done</em>G&ouml;r&uuml;nt&uuml;l&uuml; Diafon</p>\r\n\r\n<p><em>done</em>Isıcam</p>\r\n\r\n<p><em>done</em>Apartman G&ouml;revlisi</p>\r\n\r\n<p>Konum &Ouml;zellikleri</p>\r\n\r\n<p><em>done</em>Dolmuş</p>\r\n\r\n<p><em>done</em>Okula Yakın</p>\r\n\r\n<p><em>done</em>Anayol</p>\r\n\r\n<p><em>done</em>E-5</p>\r\n\r\n<p><em>done</em>Minib&uuml;s</p>\r\n\r\n<p><em>done</em>Otob&uuml;s</p>\r\n\r\n<p><em>done</em>Hastaneye Yakın</p>\r\n\r\n<p><em>done</em>Metrob&uuml;s</p>\r\n\r\n<p><em>done</em>Otoban</p>\r\n\r\n<p><em>done</em>Caddeye Yakın</p>\r\n\r\n<p><em>done</em>Şehir Manzaralı</p>\r\n\r\n<p>Yakınında Neler Var?</p>\r\n\r\n<p><img alt=\"Tüm Kategoriler\" src=\"https://www.emlakjet.com/static/img/near-locations/all.svg\" style=\"height:22px; width:22px\" />T&uuml;m Kategoriler<img alt=\"Ulaşım\" src=\"https://www.emlakjet.com/static/img/near-locations/transport-w@3x.png\" style=\"height:22px; width:22px\" />Ulaşım<img alt=\"Okullar\" src=\"https://www.emlakjet.com/static/img/near-locations/education.svg\" style=\"height:22px; width:22px\" />Okullar<img alt=\"Marketler\" src=\"https://www.emlakjet.com/static/img/near-locations/market.svg\" style=\"height:22px; width:22px\" />Marketler<img alt=\"Kafe/Restoranlar\" src=\"https://www.emlakjet.com/static/img/near-locations/restaurant.svg\" style=\"height:22px; width:22px\" />Kafe/Restoranlar<img alt=\"Sağlık Kurumları\" src=\"https://www.emlakjet.com/static/img/near-locations/hospital.svg\" style=\"height:22px; width:22px\" />Sağlık Kurumları</p>\r\n\r\n<p>İETT Bah&ccedil;elievler Metrob&uuml;s Durağı299.8 m<em>chevron_right</em></p>\r\n\r\n<p>M1A - Bah&ccedil;elievler Asans&ouml;r299.9 m<em>chevron_right</em></p>\r\n\r\n<p>M1A - Bah&ccedil;elievler Metro İstasyonu401.1 m<em>chevron_right</em></p>', 'bahcelievler-metrobuse-5-dk-kiralik-31-dublex-daire-10450301', 'true', '2021-12-30 07:15:19', '2021-12-30 07:15:19'),
(9, 'TEB\'TEN TARABYA VADİ KONAKLARI BÜYÜK BAHÇE KATI 2+1', 'TEB\'TEN TARABYA VADİ KONAKLARI BÜYÜK BAHÇE KATI 2+1', 'TEB\'TEN TARABYA VADİ KONAKLARI BÜYÜK BAHÇE KATI 2+1', 'images/rd9ONxusX9fqlAz6fosf1yfxkEazDwihIHewm6eb.jpg', 1, 1, 'İstanbul Sarıyer Ferahevler', '555555555', 24, 'Doğalgaz', 6, 5, 'yok', 1, 5000.00, 150.00, '<ul>\r\n	<li>İstanbul</li>\r\n	<li>Sarıyer</li>\r\n	<li>Ferahevler</li>\r\n	<li>Kiralık</li>\r\n	<li>Daire</li>\r\n	<li>2 + 1</li>\r\n	<li>90 m2</li>\r\n</ul>\r\n\r\n<p>İlan Bilgileri</p>\r\n\r\n<ul>\r\n	<li>İlan no125623-39</li>\r\n	<li>Son G&uuml;ncelleme Tarihi6 G&uuml;n &Ouml;nce</li>\r\n	<li>İlan DurumuKiralık</li>\r\n	<li>Konut ŞekliDaire</li>\r\n	<li>Oda + Salon Sayısı2 + 1</li>\r\n	<li>Br&uuml;t / Net M290 m2/ 75 m2</li>\r\n	<li>Bulunduğu KatBah&ccedil;e Katı</li>\r\n	<li>Bina YaşıSıfır Bina</li>\r\n	<li>Isınma TipiKombi</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Kat Sayısı5 Katlı</li>\r\n	<li>Eşya DurumuEşyalı Değil</li>\r\n	<li>Banyo Sayısı1</li>\r\n	<li>Yapı TipiBetonarme</li>\r\n	<li>Yapının DurumuSıfır</li>\r\n	<li>Kullanım DurumuBoş</li>\r\n	<li>CepheKuzey, G&uuml;ney, Doğu, Batı</li>\r\n	<li>Yakıt TipiDoğalgaz</li>\r\n	<li>Yetkili OfisEvet</li>\r\n</ul>\r\n\r\n<p>İlan A&ccedil;ıklaması</p>\r\n\r\n<p>DAİRE B&Uuml;Y&Uuml;K VE L ŞEKLINDE BAH&Ccedil;EYE SAHİPTİR.</p>\r\n\r\n<p>SIFIR 3. ETAP<br />\r\n24 SAAT G&Uuml;VENLİK<br />\r\nY&Uuml;ZME HAVUZU, SAUNA, FİTNES, HAMAM<br />\r\n&Ccedil;OCUK OYUN PARKI<br />\r\nA&Ccedil;IK VE KAPALI OTOPARK</p>\r\n\r\n<p>RANDEVU VE BİLGİ İ&Ccedil;İN<br />\r\nT&Uuml;RKİYE EMLAK&Ccedil;ILAR BİRLİĞİ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>İ&ccedil; &Ouml;zellikler</p>\r\n\r\n<ul>\r\n	<li>ADSL</li>\r\n	<li>Ahşap Doğrama</li>\r\n	<li>Alarm</li>\r\n	<li>Ankastre Mutfak</li>\r\n	<li>Balkon</li>\r\n	<li>Beyaz Eşyalı</li>\r\n	<li>&Ccedil;amaşır Odası</li>\r\n	<li>&Ccedil;elik Kapı</li>\r\n	<li>Duşakabin</li>\r\n	<li>G&ouml;mme Dolap</li>\r\n	<li>G&ouml;r&uuml;nt&uuml;l&uuml; Diafon</li>\r\n	<li>Hilton Banyo</li>\r\n	<li>Isıcam</li>\r\n	<li>Kablo TV-Uydu</li>\r\n	<li>Kartonpiyer</li>\r\n	<li>Klima</li>\r\n	<li>Mutfak Doğalgazı</li>\r\n	<li>Panel Kapı</li>\r\n	<li>Parke</li>\r\n	<li>Parke - Laminant</li>\r\n	<li>Parke - Lamine</li>\r\n	<li>Saten Al&ccedil;ı</li>\r\n	<li>Saten Boya</li>\r\n	<li>Sauna</li>\r\n	<li>Spot Işık</li>\r\n	<li>Vestiyer</li>\r\n	<li>Yerden Isıtma</li>\r\n</ul>\r\n\r\n<p>Dış &Ouml;zellikler</p>\r\n\r\n<ul>\r\n	<li>Ahşap Doğrama</li>\r\n	<li>Asans&ouml;r</li>\r\n	<li>Bah&ccedil;eli</li>\r\n	<li>Fitness</li>\r\n	<li>G&uuml;venlik</li>\r\n	<li>Hidrofor</li>\r\n	<li>Isı Yalıtım</li>\r\n	<li>Jenerat&ouml;r</li>\r\n	<li>Otopark - A&ccedil;ık</li>\r\n	<li>Otopark - Kapalı</li>\r\n	<li>Oyun Parkı</li>\r\n	<li>PVC Doğrama</li>\r\n	<li>Site i&ccedil;erisinde</li>\r\n	<li>Su deposu</li>\r\n	<li>Yangın Merdiveni</li>\r\n	<li>Y&uuml;zme Havuzu</li>\r\n</ul>\r\n\r\n<p>Konum</p>\r\n\r\n<ul>\r\n	<li>Boğaz k&ouml;pr&uuml;lerine yakın</li>\r\n	<li>Cadde &Uuml;zerinde</li>\r\n	<li>Caddeye yakın</li>\r\n	<li>Deniz Ulaşımına yakın</li>\r\n	<li>Denize yakın</li>\r\n	<li>E-5&#39;e yakın</li>\r\n	<li>Manzara</li>\r\n	<li>Manzara - Boğaz</li>\r\n	<li>Manzara - Doğa</li>\r\n	<li>Manzara - Şehir</li>\r\n	<li>Merkezde</li>\r\n	<li>Metroya yakın</li>\r\n	<li>Minib&uuml;s / Dolmuşa yakın</li>\r\n	<li>Otobana yakın</li>\r\n	<li>&Ouml;n cephe</li>\r\n	<li>TEM&#39;e yakın</li>\r\n	<li>Toplu Ulaşıma yakın</li>\r\n</ul>', 'istanbul-sariyer-ferahevler-kiralik', 'true', '2022-01-02 11:40:47', '2022-01-02 11:43:00'),
(10, 'Ulus Prestijli Binada Lüx 3+1 Asansörlü Otoparklı', 'Ulus Prestijli Binada Lüx 3+1 Asansörlü Otoparklı', 'Ulus Prestijli Binada Lüx 3+1 Asansörlü Otoparklı', 'images/8AgxDg8axqIs9dgRhHSctdNbmmJ9bPV9DW3Agje7.jpg', 3, 1, 'İstanbul Beşiktaş Ulus Kiralık', '46456456456', 54, 'Doğalgaz', 5, 2, 'Evet', 5, 3500.00, 100.00, '<p>İlan Bilgileri</p>\r\n\r\n<ul>\r\n	<li>İlan no2600-17025</li>\r\n	<li>Son G&uuml;ncelleme Tarihi4 G&uuml;n &Ouml;nce</li>\r\n	<li>İlan DurumuKiralık</li>\r\n	<li>Konut ŞekliDaire</li>\r\n	<li>Oda + Salon Sayısı3 + 1</li>\r\n	<li>Br&uuml;t / Net M2170 m2/ 150 m2</li>\r\n	<li>Bulunduğu Kat3. Kat</li>\r\n	<li>Bina Yaşı7 Yaşında</li>\r\n	<li>Isınma TipiMerkezi (Pay &Ouml;l&ccedil;er)</li>\r\n	<li>Kat Sayısı5 Katlı</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Eşya DurumuEşyalı Değil</li>\r\n	<li>Banyo Sayısı2</li>\r\n	<li>Yapı TipiBetonarme</li>\r\n	<li>Yapının DurumuSıfır</li>\r\n	<li>Kullanım DurumuBoş</li>\r\n	<li>Aidat1 TL</li>\r\n	<li>CepheG&uuml;ney, Doğu, Batı</li>\r\n	<li>Depozito1 TL</li>\r\n	<li>Yakıt TipiDoğalgaz</li>\r\n	<li>Yetkili OfisEvet</li>\r\n</ul>\r\n\r\n<p>İlan A&ccedil;ıklaması</p>\r\n\r\n<p>Ulus Prestijli Binada L&uuml;x 3+1 Asans&ouml;rl&uuml; Otoparklı daire<br />\r\nDetaylı bilgi ve randevu i&ccedil;in bizi arayınız...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>İ&ccedil; &Ouml;zellikler</p>\r\n\r\n<ul>\r\n	<li>ADSL</li>\r\n	<li>Balkon</li>\r\n	<li>Beyaz Eşyalı</li>\r\n	<li>&Ccedil;amaşır Odası</li>\r\n	<li>&Ccedil;elik Kapı</li>\r\n	<li>Duşakabin</li>\r\n	<li>Duvar Kağıdı</li>\r\n	<li>Ebeveyn Banyolu</li>\r\n	<li>Giyinme Odası</li>\r\n	<li>G&ouml;mme Dolap</li>\r\n	<li>G&ouml;r&uuml;nt&uuml;l&uuml; Diafon</li>\r\n	<li>Hazır Mutfak</li>\r\n	<li>Hilton Banyo</li>\r\n	<li>Isıcam</li>\r\n	<li>Jakuzi</li>\r\n	<li>Kablo TV-Uydu</li>\r\n	<li>Kapalı Balkon</li>\r\n	<li>Kartonpiyer</li>\r\n	<li>Klima</li>\r\n	<li>Panjur</li>\r\n	<li>Parke</li>\r\n	<li>Parke - Lamine</li>\r\n	<li>Saten Al&ccedil;ı</li>\r\n	<li>Saten Boya</li>\r\n	<li>Spot Işık</li>\r\n	<li>Ş&ouml;mine</li>\r\n	<li>Teras</li>\r\n	<li>Vestiyer</li>\r\n	<li>Yerden Isıtma</li>\r\n</ul>\r\n\r\n<p>Dış &Ouml;zellikler</p>\r\n\r\n<ul>\r\n	<li>Ahşap Doğrama</li>\r\n	<li>Asans&ouml;r</li>\r\n	<li>Bah&ccedil;eli</li>\r\n	<li>G&uuml;venlik</li>\r\n	<li>Hidrofor</li>\r\n	<li>Jenerat&ouml;r</li>\r\n	<li>Kapıcı</li>\r\n	<li>Otopark - A&ccedil;ık</li>\r\n	<li>Oyun Parkı</li>\r\n	<li>Site i&ccedil;erisinde</li>\r\n	<li>Su deposu</li>\r\n	<li>Tenis Kortu</li>\r\n	<li>Yangın Merdiveni</li>\r\n	<li>Y&uuml;zme Havuzu</li>\r\n</ul>\r\n\r\n<p>Konum</p>\r\n\r\n<ul>\r\n	<li>Cadde &Uuml;zerinde</li>\r\n	<li>Caddeye yakın</li>\r\n	<li>Deniz Ulaşımına yakın</li>\r\n	<li>Manzara - Deniz</li>\r\n	<li>Manzara - Doğa</li>\r\n	<li>Manzara - Şehir</li>\r\n	<li>Merkezde</li>\r\n	<li>Metroya yakın</li>\r\n	<li>&Ouml;n cephe</li>\r\n	<li>Toplu Ulaşıma yakın</li>\r\n</ul>', 'istanbul-besiktas-ulus-kiralik', 'true', '2022-01-02 11:45:13', '2022-01-02 11:45:13'),
(11, 'Ev ilanı', 'Ev ilanı', 'Ev ilanı', 'images/tOnpPI4H2J0hH3kbDJheBH5yc5qIwUakmawG6nqu.jpg', 3, 1, 'İstanbul', '5555555', 111, 'ısıtma', 2, 1, 'var', 2, 1500.00, 100.00, '<p>Ev detayı</p>', 'ev-1', 'true', '2022-01-14 07:52:59', '2022-01-14 07:52:59');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `images`
--

INSERT INTO `images` (`id`, `title`, `image`, `house_id`, `created_at`, `updated_at`) VALUES
(4, '1', 'images/0Y7KviCyZkZau6UjFHouD5dnC9PPRThS3fJ83CU1.jpg', 2, '2021-01-20 13:31:17', '2021-01-20 13:31:17'),
(5, '2', 'images/gMpWmjEYk07ZkuwDSIbf8HH4JWaOBgOUtl676yHP.jpg', 2, '2021-01-20 13:31:26', '2021-01-20 13:31:26'),
(6, '3', 'images/1hlkaj28MlvCh4hq9XmkttIZc7HPug6yzRhn4Hkc.jpg', 2, '2021-01-20 13:31:33', '2021-01-20 13:31:33'),
(7, '1', 'images/vgwoUW5W3SFndww8GJuOhjMqXw5Jw7zm9CjGiehQ.jpg', 3, '2021-01-22 06:51:40', '2021-01-22 06:51:40'),
(8, '2', 'images/3gCvrg9GXTpLovcAsUPcUQdlKvJJf3z3Ez4YcfcJ.jpg', 3, '2021-01-22 06:51:49', '2021-01-22 06:51:49'),
(10, '1', 'images/6v6gGc1VrcYsQM0pHxxy8HUfKDK1B3Jug2OXwFc2.jpg', 5, '2021-01-24 10:00:07', '2021-01-24 10:00:07'),
(11, '2', 'images/ILrUeXd1Ukr9zhLoMnpsxdukSgA7XcvkTnB1ppy9.jpg', 5, '2021-01-24 10:00:15', '2021-01-24 10:00:15'),
(12, '3', 'images/NBTnQTedz96maJ4G2QF3eYrPoBFxgs21Kh0SbwkU.jpg', 5, '2021-01-24 10:00:24', '2021-01-24 10:00:24'),
(13, '1', 'images/kCFs6iiK5En07KrI0vIypSHXyC0EGdyTqA57es9w.jpg', 6, '2021-01-24 10:10:06', '2021-01-24 10:10:06'),
(14, '2', 'images/zen1Mg9j5vXevFiAikx1a3EP40igSYT1fFPp8IO7.jpg', 6, '2021-01-24 10:10:16', '2021-01-24 10:10:16'),
(15, 'foto1', 'images/HdwJb0HQr8nD1zcN0bW7Mwxp6xo2D0BDV9DYOSTB.webp', 1, '2021-12-30 07:55:27', '2021-12-30 07:55:27'),
(16, 'foto2', 'images/HWlC14j2f8v1ZrAJw0mUxv28gjbOAlM8Je8R4mKA.webp', 1, '2021-12-30 07:55:34', '2021-12-30 07:55:34'),
(17, 'foto', 'images/XBg0a1XNSmkS2UAlSwjbvxsqQafHzUj1tqHxhsvz.jpg', 9, '2022-01-02 11:41:06', '2022-01-02 11:41:06'),
(18, 'foto1', 'images/SqB8wGQ4r4Ey9lC8XixeSygFMIwrppYXl0zqHTK8.jpg', 9, '2022-01-02 11:41:12', '2022-01-02 11:41:12'),
(19, 'foto2', 'images/rLQHPOSlG2iYUM9c6vrFj58cGfPVU1GqCuZgL8QP.jpg', 9, '2022-01-02 11:41:18', '2022-01-02 11:41:18'),
(20, 'foto', 'images/FRv2ICBpI6zFPnDTK1wG2jObi5naAl8tRVoWCh7T.jpg', 10, '2022-01-02 11:45:23', '2022-01-02 11:45:23'),
(21, 'foto2', 'images/pWsw8Kaun0xo654GmP0modkvG1dKfCEO9rfiUguw.jpg', 10, '2022-01-02 11:45:28', '2022-01-02 11:45:28'),
(22, 'ev', 'images/aTvDWeb4NIzV94Ae7suBfZKHGp4KWmkXDg3TeiPp.jpg', 11, '2022-01-14 07:53:09', '2022-01-14 07:53:09');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `note`, `status`, `created_at`, `updated_at`) VALUES
(3, 'asdas', 'sadkashd@gmail.com', '5654654', 'asdasd', 'dsaasadsas', NULL, 'New', '2022-01-16 03:45:59', '2022-01-16 03:45:59');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_01_14_084044_create_sessions_table', 1),
(7, '2020_05_02_100001_create_filemanager_table', 2),
(8, '2022_01_16_062447_add_phone_to_users', 3),
(9, '2022_01_16_062609_add_address_to_users', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `house_id`, `subject`, `review`, `IP`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'yorum', 'yorum', '127.0.0.1', 'New', '2022-01-02 11:32:30', '2022-01-02 11:32:30'),
(2, 1, 10, 'yorum', 'yorum', '127.0.0.1', 'New', '2022-01-16 03:02:43', '2022-01-16 03:02:43'),
(3, 2, 11, 'yorum', 'yorumm', '127.0.0.1', 'New', '2022-01-16 03:42:24', '2022-01-16 03:42:24'),
(4, 2, 9, 'Yorum', 'Yorummmm', '127.0.0.1', 'New', '2022-01-16 03:42:36', '2022-01-16 03:42:36');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2iBKLLmoR6ZG5Bt0uAZddLjppWKaeZ2VJIrJ257m', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOW8zd2FiVDF3RUx0OVE5M0tLVVZzNHl2SU9oY3l2ZVBMN25hd0pHeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob3VzZS8xMC9pc3RhbmJ1bC1iZXNpa3Rhcy11bHVzLWtpcmFsaWsiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkR3RHcXNkZEZSOTJMY09RdkxVUi5ILjhLdmluYk94Z3NzQ1dRNkwuRnVucjJpMnBvZ2lEMXkiO30=', 1642315898),
('C570WwCoFP7xUKPJBaTlyYjDpiOPPdN0m31JcH4t', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiazNWbHY5cjZqQUxHeDcwWEljeGJnODBFS3RaQjlubmtLVGh0THo4QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTY0MjI0MzM4MTt9czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRHdEdxc2RkRlI5MkxjT1F2TFVSLkguOEt2aW5iT3hnc3NDV1E2TC5GdW5yMmkycG9naUQxeSI7fQ==', 1642244277),
('OvtL0i2hTWmwf7iggr4NiHVYNUVirWxpkmb6ipNR', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZXZEdVhrc1M3RG16djZwc0x3eHd6ckl5TEhZMXRValJmaTRIaTRKYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi91c2VyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEd0R3FzZGRGUjkyTGNPUXZMVVIuSC44S3ZpbmJPeGdzc0NXUTZMLkZ1bnIyaTJwb2dpRDF5IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRHdEdxc2RkRlI5MkxjT1F2TFVSLkguOEt2aW5iT3hnc3NDV1E2TC5GdW5yMmkycG9naUQxeSI7fQ==', 1642160665);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `smtpserver` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` int(11) DEFAULT 0,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `references` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `title`, `keywords`, `description`, `company`, `address`, `phone`, `fax`, `email`, `smtpserver`, `smtpemail`, `smtppassword`, `smtpport`, `facebook`, `twitter`, `instagram`, `youtube`, `aboutus`, `contact`, `references`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kiralık Emlak Sitesi', 'Kiralık Emlak Sitesi', 'Kiralık Emlak Sitesi', 'Kiralık Emlak Sitesi', 'Karabük', '111212121', '21212122121', 'site@info.com', 'smtp.sitemiz.com', 'smtp@email.com', '12345', 578, 'facebook.com', 'twitter.com', 'instagram.com', 'youtube.com', '<h1>D&uuml;nden Bug&uuml;ne</h1>\r\n\r\n<p>&quot;2000 yılında T&uuml;rkiye&rsquo;nin sahibinden.com&rsquo;u olmak i&ccedil;in yola &ccedil;ıktık....&quot;</p>\r\n\r\n<p>T&uuml;rkiye&rsquo;nin ilan ve alışverişte ilk adresi sahibinden.com, 2000 yılında Aksoy Group b&uuml;nyesinde hayata ge&ccedil;irildi. Bir e-ticaret sitesi olmanın &ouml;tesinde, &uuml;lkemizde e-ticaretin doğuşundan bug&uuml;ne olan s&uuml;recin de temsilcisi olan sahibinden.com, T&uuml;rkiye&rsquo;nin en b&uuml;y&uuml;k elektronik ticaret ve ilan platformlarından birisi olma &ouml;zelliğini taşıyor.</p>\r\n\r\n<p>Emlak, Vasıta, Alışveriş, İş Makineleri &amp; Sanayi, Yedek Par&ccedil;a-Aksesuar-Donanım &amp; Tuning, Hizmetler, İş İlanları, Hayvanlar &Acirc;lemi, &Ouml;zel Ders Verenler ve Yardımcı Arayanlar olmak &uuml;zere toplam 10 kategoride hizmet veren sahibinden.com, kullanıcılarının hayatını kolaylaştıracak &uuml;r&uuml;n ve servisleriyle de ulusal ve uluslararası arenada &ccedil;ok sayıda &ouml;d&uuml;l&uuml;n sahibi oldu.</p>\r\n\r\n<p>sahibinden.com ayrıca İstanbul&rsquo;daki genel merkezi sahiplex ile T&uuml;rkiye&rsquo;nin &ldquo;Yeşil Ofis&rdquo; se&ccedil;ilen ilk e-ticaret şirketi unvanına sahip.</p>\r\n\r\n<p>İşine tutkuyla bağlı profesyonel insan kaynağı, g&uuml;&ccedil;l&uuml; teknolojik altyapısı ve m&uuml;şteri odaklı hizmet anlayışı ile sahibinden.com, kullanıcılarının hayatlarına dokunarak değer yaratmak, hayallerine ulaşmalarına aracılık etmek ve en iyi deneyimleri yaşatmak i&ccedil;in t&uuml;m g&uuml;c&uuml;yle &ccedil;alışmaya devam ediyor.</p>', '<h1>İletişim</h1>\r\n\r\n<p>İşletme Adı</p>\r\n\r\n<p>sahibinden.com</p>\r\n\r\n<p>Ticaret &Uuml;nvanı</p>\r\n\r\n<p>Sahibinden Bilgi Teknolojileri Paz.ve Tic. A.Ş.</p>\r\n\r\n<p>Sorumlu Kişi</p>\r\n\r\n<p>Filiz Saran</p>\r\n\r\n<p>Ticaret Sicil No</p>\r\n\r\n<p>433844</p>\r\n\r\n<p>KEP Adresi</p>\r\n\r\n<p><img src=\"https://s0.shbdn.com/assets/images/kep-mail-link:2be714133f5696d2b9e1493e5e88c3a8.png\" style=\"height:21px; width:161px\" /></p>\r\n\r\n<p>MERSİS Numarası</p>\r\n\r\n<p>0739014655600017</p>\r\n\r\n<p>Merkez Ofis</p>\r\n\r\n<p>Değirmen Yolu Cad. No:28 Asia OfisPark A Blok Kat:2<br />\r\n34752 Ataşehir/İstanbul T&uuml;rkiye</p>\r\n\r\n<p>&Ccedil;ağrı Merkezi</p>\r\n\r\n<p>0 850 222 44 44</p>\r\n\r\n<p>Destek Merkezi *</p>\r\n\r\n<p><a href=\"http://www.sahibinden.com/destek/\">sahibinden.com/destek</a></p>\r\n\r\n<p>D-100 Kadık&ouml;y-Ankara y&ouml;n&uuml;nde ilerleyin</p>\r\n\r\n<ol>\r\n	<li>İ&ccedil;erenk&ouml;y-K.Bakkalk&ouml;y &ccedil;ıkışına girin</li>\r\n	<li>Bostancı Oto Sanayi y&ouml;n&uuml;ne d&ouml;n&uuml;n</li>\r\n	<li>Fındıklı y&ouml;n&uuml;ne d&ouml;n&uuml;n, sağdaki ilk binadayız</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>D-100 Ankara-Kadık&ouml;y y&ouml;n&uuml;nde ilerleyin</li>\r\n	<li>Fındıklı y&ouml;n&uuml;ne d&ouml;n&uuml;n, sağdaki ilk binadayız</li>\r\n</ol>\r\n\r\n<p>İlgili kanun ve y&ouml;netmelikler</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://yardim.sahibinden.com/hc/tr/articles/360014679213-T%C3%BCketicinin-Korunmas%C4%B1-Hakk%C4%B1nda-Kanun\">T&uuml;keticinin korunması hakkında kanun</a></li>\r\n	<li><a href=\"https://yardim.sahibinden.com/hc/tr/articles/360014678893-Mesafeli-S%C3%B6zle%C5%9Fmeler-Y%C3%B6netmeli%C4%9Fi\">Mesafeli s&ouml;zleşmeler y&ouml;netmeliği</a></li>\r\n	<li><a href=\"https://yardim.sahibinden.com/hc/tr/articles/360014592854-Elektronik-Ticaretin-D%C3%BCzenlenmesi-Hakk%C4%B1nda-Kanun\">Elektronik ticaretin d&uuml;zenlenmesi hakkında kanun</a></li>\r\n	<li><a href=\"https://yardim.sahibinden.com/hc/tr/articles/360014593394-Ticari-%C4%B0leti%C5%9Fim-ve-Ticari-Elektronik-%C4%B0letiler-Hakk%C4%B1nda-Y%C3%B6netmelik\">Ticari iletişim ve ticari elektronik iletiler hakkında y&ouml;netmelik</a></li>\r\n	<li><a href=\"https://yardim.sahibinden.com/hc/tr/articles/360014678733-Elektronik-Ticarette-Hizmet-Sa%C4%9Flay%C4%B1c%C4%B1-ve-Arac%C4%B1-Hizmet-Sa%C4%9Flay%C4%B1c%C4%B1lar-Hakk%C4%B1nda-Y%C3%B6netmelik\">Elektronik ticarette hizmet sağlayıcı ve aracı hizmet sağlayıcılar hakkında y&ouml;netmelik</a></li>\r\n</ul>\r\n\r\n<p><img src=\"https://image5.sahibinden.com/cms/files/corporate/contact-dipnot-2x-v2.png\" style=\"height:34px; width:644px\" /></p>', '<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/26.jpg\" /></p>\r\n\r\n	<p>Atat&uuml;rk Dil Tarih Kurumu</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/18.jpg\" /></p>\r\n\r\n	<p>Orta Doğu Teknik &Uuml;niversitesi--Odt&uuml;</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/31.jpg\" /></p>\r\n\r\n	<p>T.C. Ekonomi Bakanlığı</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/6.jpg\" /></p>\r\n\r\n	<p>T.C.Sağlık Bakanlığı</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/33.jpg\" /></p>\r\n\r\n	<p>T&uuml;rkiye İş Kurumu Genel M&uuml;d&uuml;rl&uuml;ğ&uuml; İşkur--İşkur</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/49.jpg\" /></p>\r\n\r\n	<p>Yenilenebilir Enerji Genel M&uuml;d&uuml;rl&uuml;ğ&uuml; - Yegm</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/1.jpg\" /></p>\r\n\r\n	<p>&nbsp;&nbsp;T. C. Başbakanlık Afet Ve Acil Durum Y&ouml;netimi Başkanlığı --Afad</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/1.jpg\" /></p>\r\n\r\n	<p>21.Y.Y. &Ouml;zel Eğitim Hizm.A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_acibadem_logo.jpg\" /></p>\r\n\r\n	<p>Acıbadem</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//5/b_akbas_l.jpg\" /></p>\r\n\r\n	<p>Akbaş Holding</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/2.jpg\" /></p>\r\n\r\n	<p>Akbaşlar Tekstil A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/3.jpg\" /></p>\r\n\r\n	<p>Akpres Metal Yed.Par&ccedil;a Mak.San.Tic.Aş</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/4.jpg\" /></p>\r\n\r\n	<p>Aktaş Hava S&uuml;spansiyon Sistemleri San.Tic.A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//5/basari_aktas_logo.jpg\" /></p>\r\n\r\n	<p>Aktaş Holding</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_aktifbank_logo.jpg\" /></p>\r\n\r\n	<p>Aktif Bank</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//5/b_akyapak_l.jpg\" /></p>\r\n\r\n	<p>Akyapak Makine</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_alarko_logo.jpg\" /></p>\r\n\r\n	<p>Alarko</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/b_albaraka_l.jpg\" /></p>\r\n\r\n	<p>Albaraka T&uuml;rk</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//5/b_alta_l.jpg\" /></p>\r\n\r\n	<p>Alta Yedek Par&ccedil;a Ve Kalıp San. Tic.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/56.jpg\" /></p>\r\n\r\n	<p>Amerikan El&ccedil;iliği</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_anadoluhayat_logo.jpg\" /></p>\r\n\r\n	<p>Anadolu Hayat</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_anadolusigorta_logo.jpg\" /></p>\r\n\r\n	<p>Anadolu Sigorta</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//5/basari_aroma_logo.jpg\" /></p>\r\n\r\n	<p>Aroma</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/3.jpg\" /></p>\r\n\r\n	<p>Atat&uuml;rk Orman &Ccedil;iftliği --Ao&ccedil;</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/58.jpg\" /></p>\r\n\r\n	<p>Atılım &Uuml;niversitesi</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//5/b_aunde_l.jpg\" /></p>\r\n\r\n	<p>Aunde Teknik</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/5.jpg\" /></p>\r\n\r\n	<p>Aunde Teknik Tekstil San.Ve Tic.A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_avea_logo.jpg\" /></p>\r\n\r\n	<p>Avea</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_aviva_logo.jpg\" /></p>\r\n\r\n	<p>Aviva Sigorta A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_bankpozitif_logo.jpg\" /></p>\r\n\r\n	<p>Bank Pozitif</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/6.jpg\" /></p>\r\n\r\n	<p>Barida Makina San. Tic. Ltd. Şti.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/32.jpg\" /></p>\r\n\r\n	<p>Başkent Doğalgaz</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_beckman_logo.jpg\" /></p>\r\n\r\n	<p>Beckman Coulter</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//5/basari_beycelik_logo.jpg\" /></p>\r\n\r\n	<p>Bey&ccedil;elik - Gestamp</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/7.jpg\" /></p>\r\n\r\n	<p>Bey&ccedil;elik Gestamp Kalıp Ve Oto Yan San.Paz.Tic.A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/artivearti_basari_biskotl.jpg\" /></p>\r\n\r\n	<p>Biskot Bisk&uuml;vi Fabrikası</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/8.jpg\" /></p>\r\n\r\n	<p>Bor&ccedil;elik &Ccedil;elik San.Tic.A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/37.jpg\" /></p>\r\n\r\n	<p>Boru Hatları İle Petrol Taşıma Anonim Şirketi--Botaş</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_borusan_logo.jpg\" /></p>\r\n\r\n	<p>Borusan Holding</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_borusanlojistik_logo.jpg\" /></p>\r\n\r\n	<p>Borusan Lojistik</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/9.jpg\" /></p>\r\n\r\n	<p>Bosch San. Ve Tic. A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_burgan_logo.jpg\" /></p>\r\n\r\n	<p>Burganbank</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//5/b_bursaorganize_l.jpg\" /></p>\r\n\r\n	<p>Bursa Organize Sanayi B&ouml;lge M&uuml;d&uuml;rl&uuml;ğ&uuml;</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/10.jpg\" /></p>\r\n\r\n	<p>Bursa Ticaret Ve Sanayi Odası</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/11.jpg\" /></p>\r\n\r\n	<p>Bursagaz Bursa Şehiri&ccedil;i Doğalgaz Dağıtım Ticaret Ve Taahh&uuml;t A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/12.jpg\" /></p>\r\n\r\n	<p>Bursalı Tekstil Sanayi Ve Ticaret A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/13.jpg\" /></p>\r\n\r\n	<p>Bursalı Tekstil Sanayi Ve Ticaret A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/14.jpg\" /></p>\r\n\r\n	<p>Burtom &Ouml;zel Sağlık Tesisleri A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/b_carrefoursa_l.jpg\" /></p>\r\n\r\n	<p>Carrefoursa (Hp Designjet)</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/55.jpg\" /></p>\r\n\r\n	<p>Cepaş A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_ceva_logo.jpg\" /></p>\r\n\r\n	<p>Ceva Lojistik</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_citi_logo.jpg\" /></p>\r\n\r\n	<p>Citibank</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_cnn_logo.jpg\" /></p>\r\n\r\n	<p>Cnn</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_cocacola_logo.jpg\" /></p>\r\n\r\n	<p>Coca-Cola</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_colgate_logo.jpg\" /></p>\r\n\r\n	<p>Colgate</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/15.jpg\" /></p>\r\n\r\n	<p>Componenta D&ouml;k&uuml;mc&uuml;l&uuml;k Tic. San. A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_corus_logo.jpg\" /></p>\r\n\r\n	<p>Corus &Ccedil;elik</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//5/b_crowne_l.jpg\" /></p>\r\n\r\n	<p>Crowne Plaza</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/cvk_l.jpg\" /></p>\r\n\r\n	<p>Cvk Park Bosphorus Hotel</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_calik_logo.jpg\" /></p>\r\n\r\n	<p>&Ccedil;alık Holding</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//5/b_celikpan_l.jpg\" /></p>\r\n\r\n	<p>&Ccedil;elikpan</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_deloitte_logo.jpg\" /></p>\r\n\r\n	<p>Deloitte</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_denizbank_logo.jpg\" /></p>\r\n\r\n	<p>Denizbank</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_dhl_logo.jpg\" /></p>\r\n\r\n	<p>Dhl</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/57.jpg\" /></p>\r\n\r\n	<p>Dış İşleri Bakanlığı</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/16.jpg\" /></p>\r\n\r\n	<p>Diniz Adıent Oto Donanım San.Ve Tic.A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//5/b_diniz_l.jpg\" /></p>\r\n\r\n	<p>Diniz Holding</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/17.jpg\" /></p>\r\n\r\n	<p>Diniz Holding A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/b_divan_l.jpg\" /></p>\r\n\r\n	<p>Divan Otel</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/22.jpg\" /></p>\r\n\r\n	<p>Diyanet İşleri Başkanlığı</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/21.jpg\" /></p>\r\n\r\n	<p>Diyanet Vakfı</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_dogantelekom_logo.jpg\" /></p>\r\n\r\n	<p>Doğan Telekom</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_doganyayin_logo.jpg\" /></p>\r\n\r\n	<p>Doğan Yayın Holding</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_dsmart_logo.jpg\" /></p>\r\n\r\n	<p>Dsmart</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//5/b_durmazlar_l.jpg\" /></p>\r\n\r\n	<p>Durmazlar Makina</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/18.jpg\" /></p>\r\n\r\n	<p>Durmazlar Makina San Ve Tic.A.Ş</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/b_eczacibasi_l.jpg\" /></p>\r\n\r\n	<p>Eczacıbaşı Topluluğu</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/5.jpg\" /></p>\r\n\r\n	<p>Ego Genel M&uuml;d&uuml;rl&uuml;ğ&uuml;</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/50.jpg\" /></p>\r\n\r\n	<p>Elektrik &Uuml;retim Anonim Şirketi - E&uuml;aş</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/elginkan_l.jpg\" /></p>\r\n\r\n	<p>Elginkan</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_elitecard_logo.jpg\" /></p>\r\n\r\n	<p>Elitecard</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//5/b_elvin_l.jpg\" /></p>\r\n\r\n	<p>Elvin Tekstil</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/artivearti_basari_embill.jpg\" /></p>\r\n\r\n	<p>Embil İla&ccedil; Sanayii</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//1/basari_emerson_logo.jpg\" /></p>\r\n\r\n	<p>Emerson</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/12.jpg\" /></p>\r\n\r\n	<p>Emniyet Genel M&uuml;d&uuml;rl&uuml;ğ&uuml; Bt Daire Başkanlığı</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/13.jpg\" /></p>\r\n\r\n	<p>Emniyet Genel M&uuml;d&uuml;rl&uuml;ğ&uuml; Ka&ccedil;ak&ccedil;ılık Ve Organize İşlerle M&uuml;cadele Daire Başkanlığı</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/14.jpg\" /></p>\r\n\r\n	<p>Emniyet Genel M&uuml;d&uuml;rl&uuml;ğ&uuml; Ter&ouml;rle M&uuml;cadele Daire Başkanlığı</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//5/basari_erikli_logo.jpg\" /></p>\r\n\r\n	<p>Erikli &amp; Nestle Waters</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//2/19.jpg\" /></p>\r\n\r\n	<p>Erkurt Holding A.Ş.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/8.jpg\" /></p>\r\n\r\n	<p>Eskişehir Doğalgaz Dağıtım&mdash;Esgaz</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"/images/bhbanner/logolar//3/51.jpg\" /></p>\r\n\r\n	<p>Eti Maden İşletmeleri</p>\r\n	</li>\r\n</ul>', 'true', '2021-12-28 13:11:46', '2022-01-14 07:59:57');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `phone`, `address`) VALUES
(1, 'Admin Yönetici', 'admin@gmail.com', NULL, '$2y$10$GtGqsddFR92LcOQvLUR.H.8KvinbOxgssCWQ6L.Funr2i2pogiD1y', NULL, NULL, NULL, NULL, 'profile-photos/V1ptNPErrmGhhwT6VXWRdZFRYwfisTpQaWpq8Ji4.png', '2022-01-14 05:45:09', '2022-01-16 03:47:12', '05555555', 'Karabük'),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$tHHVqYI0t7FP8gj7toFFFe7bE78TxNypgRpgRe46trkybUZ2Icmq.', NULL, NULL, NULL, NULL, NULL, '2022-01-16 03:41:12', '2022-01-16 03:41:12', NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `filemanager`
--
ALTER TABLE `filemanager`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `houses`
--
ALTER TABLE `houses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
