-- MySQL dump 10.13  Distrib 5.7.38, for Linux (x86_64)
--
-- Host: localhost    Database: products_db
-- ------------------------------------------------------
-- Server version	5.7.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('0d1404ffbec4');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_extra`
--

DROP TABLE IF EXISTS `card_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_extra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardname` varchar(100) DEFAULT NULL,
  `cardinfo` text NOT NULL,
  `cardimg` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cardname` (`cardname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_extra`
--

LOCK TABLES `card_extra` WRITE;
/*!40000 ALTER TABLE `card_extra` DISABLE KEYS */;
INSERT INTO `card_extra` VALUES (1,'Yelo light','Çoxfunksiyalı Yelo kart ilə yalnız qalıq məbləğə faiz gəliri deyil, həm də hər ödənişindən cashback qazanacaq və digər üstünlüklərindən faydalanacaqsan','https://www.yelo.az/site/assets/files/7800/55.png','2022-06-06 10:48:45','2022-06-06 10:48:45'),(2,'Yelo Premium','Harada olmağınızdan asılı olmayaraq yüksək statusu ilə eksklüziv imkanlar yaratmaqla yanaşı əlavə gəlir də qazandırır. Sifariş edərək bu kartın üstünlüklərini hiss edin.','https://www.yelo.az/site/assets/files/7856/visa-platinum.svg','2022-06-06 10:49:01','2022-06-06 10:49:01'),(3,'Yelo Kredit Kartı','Yelo Grace Light kart ilə hər ay yalnız hesablanmış faizlər ödəməklə 10 000 AZN-ə dək kredit əldə et','https://www.yelo.az/site/assets/files/7800/55.png','2022-06-06 10:49:13','2022-06-06 10:49:13');
/*!40000 ALTER TABLE `card_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardname` varchar(100) DEFAULT NULL,
  `cardinfo` text NOT NULL,
  `cardimg` text NOT NULL,
  `cardmuddet` text,
  `cardmuddet_m` text,
  `cardvalyuta` text,
  `cardvalyuta_m` text,
  `cardcashback` text,
  `cardcashback_m` text,
  `slug` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cardname` (`cardname`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (1,'Yelo Light','Yelo kart rahatlıq anlayışını dəyişəcək - rahat xərcləyəcəksən, rahat izləyəcəksən, qazanacaqsan, endirimlər alacaqsan.','https://www.yelo.az/site/assets/files/7800/55.png','Müddət','1 il / 3 il','Valyuta','AZN / USD / EUR','Cashback','30%-dək','yelolight','2022-06-06 10:46:51','2022-06-06 10:46:51'),(2,'Yelo premium','Yüksək statusun göstəricisi olan bu kart sahibinə yalnız Azərbaycanda deyil, hər yerdə və hər zaman eksklüziv imkanlar yaradır.','https://www.yelo.az/site/assets/files/7856/visa-platinum.svg','Müddət','3 il','Valyuta','AZN / USD / EUR','Cashback','30%-dək','yelopremium','2022-06-06 10:47:41','2022-06-06 10:47:41'),(3,'Yelo Kredit Karti','Yelo kredit kartı - rahat xərcləmək üçün.','https://www.yelo.az/site/assets/files/7800/55.png','Məbləğ','300 - 10 000 AZN','Güzəşt müddəti','45 - günədək','Cashback','30%-dək','yelokreditkart','2022-06-06 10:47:53','2022-06-06 10:47:53');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditsifarisdb`
--

DROP TABLE IF EXISTS `creditsifarisdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditsifarisdb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salary` varchar(25) DEFAULT NULL,
  `amount` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `work` varchar(25) NOT NULL,
  `prefix` varchar(25) NOT NULL,
  `number` varchar(25) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `salary` (`salary`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditsifarisdb`
--

LOCK TABLES `creditsifarisdb` WRITE;
/*!40000 ALTER TABLE `creditsifarisdb` DISABLE KEYS */;
/*!40000 ALTER TABLE `creditsifarisdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `depositname` varchar(100) DEFAULT NULL,
  `depositinfo` text NOT NULL,
  `depositimg` text NOT NULL,
  `depositmebleg` text NOT NULL,
  `depositmuddet` text NOT NULL,
  `depositfaiz` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `depositname` (`depositname`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
INSERT INTO `deposits` VALUES (1,'Yelo Sabit','Pulunuz sizin üçün işləsin','https://www.yelo.az/site/assets/files/6636/zefer_emaneti-isolated.png','min. 100AZN/USD','12 /18 /24 ay','aylıq və ya müddətin sonunda','2022-06-06 10:48:19','2022-06-06 10:48:19'),(2,'Yelo Yığım','Pulunuz sizin üçün işləsin','https://www.yelo.az/site/assets/files/3406/depositnew-pic.png','100AZN/USD','12 ay','aylıq və ya müddətin sonunda','2022-06-06 10:48:33','2022-06-06 10:48:33');
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `headings` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `details` text NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `image_url` varchar(400) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `headings` (`headings`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Yelo Bank-da “Women’s sharing circle” layihəsinin ikinci proqramı baş tutdu','women_sharing_circle','Yelo Bankın dəstəyi ilə DanceAbility Azərbaycan şirkəti tərəfindən “Women’s sharing circle” sosial layihəsinin ikinci proqramı baş tutdu. Ayda bir dəfə Bankın baş ofisində həyata keçirilən layihə müxtəlif yaşda, fərqli peşə sahibləri, sağlamlıq imkanları məhdud olan və olmayan qadınları bir araya gətirir. Proqram qadınlara DanceAbility metodu və aktiv meditasiya əsasında vücud vasitəsilə öz emosiyalarını ifadə etməyə, həmçinin digər insanlarla empatik ünsiyyət qurmaq imkanı yaradan universal vasitələr öyrədir. Eyni zamanda proqram sayəsində iştirakçılar fiziki fəaliyyət və bədii ifadə üçün bərabər imkanlardan faydalanır, yeni dostluq əlaqələri qazanırlar. Layihə DanceAbility və Ecstatic Awakening Dance metodları üzrə beynəlxalq dərəcəli müəllim Nigar Sultanovanın mentorluğu ilə keçirilir.\nYelo Bank-ın bu layihədə əsas məqsədi qadınları gücləndirmək, sağlamlığı və rifahı naminə seçim etmək üçün imkan yaratmaqdır. Layihə eyni zamanda zehni, emosional və fiziki sağlamlığın inkişafını da dəstəkləməyi hədəfləyir. Qeyd edək ki, müasir interyerə malik olan Bank-ın Baş ofisi fiziki məhdudiyyətli şəxslərin bankdaxilində rahat hərəkətini təmin edən imkanlara sahibdir.\nBank xidmətləri, o cümlədən, kredit kartı haqqında əlavə sualınız var? O zaman 981 nömrəsinə zəng edin və ya Facebook, Instagram  və ya Whatsapp hesablarımıza yazın.\nYelo Bank – Parlaq bankçılıq!','3 İyun 2022','https://fed.az/upload/news/4932775.jpg','2022-06-05 15:48:45','2022-06-05 15:48:45'),(2,'Yelo Bank-da İnsan hüquqları üzrə müsabiqə baş tutdu','insan_huquqlari','Fəal təhsil dəstəkçisi olan Yelo Bank bu dəfə gənc hüquqşünaslara qapılarını açdı. Bankın maliyyə və təşkilati dəstəyi ilə ELSA Azerbaijan (Avropa Hüquqşünas Tələbələr Assosiasiyası) tərəfindən İnsan hüquqları I Natiqlik Müsabiqəsi həyata keçirildi. Müsabiqənin 3 gün davam edən yarımfinal və final mərhələləri Bankın Baş ofisinin tədbir zalında baş tutdu.\n30 yaşadək gənc hüquqşünaslar seçdikləri və İnsan hüquqlarını əhatə edən mövzularda 10 dəqiqəlik çıxışlar etdilər. Aralarında Yelo Bank hüquqşünaslarının da yer aldığı münsiflər heyəti iştirakçıları mövzuya hakimlik, natiqlik qabiliyyəti, bədən dili, məzmun, analiz və s. keyfiyyətlərə görə dəyərləndirdilər. Münsif xallarına əsasən yarımfinalda ən yüksək xalı toplamış 7 gənc finala keçmək hüququ qazandı. Final 28 May Müstəqillik günü baş tutdu. Azərbaycan dövlət himninin səsləndirilməsi ilə başlayan final mərhələsinin iştirakçıları bu dəfə eyni mövzuda təsdiq və ya inkar mövqeyində yarışdılar. Çıxışların yekununda münsiflər heyətinin verdikləri xala görə 3 ən yaxşı natiq müəyyənləndirilərək qalib seçildi. Hər 3 qalibə sertifikatlar, pul mükafatı və kubok təqdim olundu.\nYelo Bank Korporativ Sosial Məsuliyyət layihələrini ərsəyə gətirərkən gənclərin fərdi inkişafı və işgüzarlıq qabiliyyətinin artırılmasına xüsusi diqqət edir. Bank il sonunadək cəmiyyətimizə daha çox fayda verəcək digər layihələrin də həyata keçirilməsini planlaşdırır.\nBank xidmətləri, o cümlədən, əmanət faizləri haqqında əlavə sualınız var? O zaman 981 nömrəsinə zəng edin və ya Facebook, Instagram  və ya Whatsapp hesablarımıza yazın.\nYelo Bank – Parlaq bankçılıq!','31 May 2022','https://bbn.az/wp-content/uploads/2022/05/AF6O9109.jpg','2022-06-05 15:48:56','2022-06-05 15:48:56'),(3,'Yelo Bankda “Uşaqlar Günü” təşkil edildi','usaqlar_gunu','1 İyun Uşaqların Müdafiəsi günü ilə əlaqədar Yelo Bank uşaqlar üçün əyləncə, bilik və yeni tanışlıqlarla dolu xüsusi gün təşkil etdi. Tədbir Bank-ın baş ofisində həyata keçirildi. Masterklassla başlayan tədbirdə mütəxəssisin iştirakı ilə uşaqlara bitkilər haqqında məlumat, onların əkilməsi və düzgün qulluq qaydaları öyrədildi. Daha sonra uşaqların yaradıcı potensialının kəşfi üçün bitkilərə ad verdilər və dibçəkləri boyadılar.\nMasterklassın ardınca tədbirin əyləncə hissəsi baş tutdu. İstirahət otağında yemək fasiləsindən sonra Bankın tədbir zalında uşaqlar üçün cizgi filmi nümayiş etdirildi. Sonda tədbirdə iştirak etmiş bütün uşaqlara sertifikat və hədiyyələr təqdim edildi.\nYelo Bank-ın müasir və rahat baş ofisi işləmək, istirahət, eyni zamanda tədbirlərin təşkili üçün geniş imkanlar yaradır. Bank sahib olduğu imkanları hərtərəfli dəyərləndirərək müxtəlif tədbirlərin həyata keçirilməsinə davam edəcək.\nBank xidmətləri, o cümlədən, əmanət faizləri haqqında əlavə sualınız var? O zaman 981 nömrəsinə zəng edin və ya Facebook, Instagram  və ya Whatsapp hesablarımıza yazın.\nYelo Bank – Parlaq bankçılıq!','31 May 2022','https://cdn.trend.az/2022/06/01/yelobank_010622_7.jpg','2022-06-05 15:49:05','2022-06-05 15:49:05'),(4,'SİMA üzrə yeni tərəfdaş olduq!','sima','Rəqəmsal İnkişaf və Nəqliyyat Nazirliyinin tabeliyində fəaliyyət göstərən “AzInTelecom” MMC tərəfindən yaradılan SİMA – bulud əsaslı yeni nəsil rəqəmsal imzanın tərəfdaş qurumların sistemlərinə inteqrasiya prosesi davam edir. Proses üzrə növbəti tərəfdaş qurum Yelo Bank oldu. Tərəfdaşlığa əsasən Yelo Bank-ın müştəriləri Yelo mobil tətbiqindən artıq SİMA imza ilə qeydiyyatdan keçə bilərlər.\nRəqəmsal imzanı əldə etmiş müştərilər növbəti mərhələdə bank xidmətləri üçün onlayn müraciət etdikdə, bütün sənədləri SİMA ilə imzalaya biləcək. Bununla da vətəndaşlar SİMA-nın üstünlüklərindən istifadə edərək banka gəlmədən, zaman itkisinə yol vermədən Bankın müxtəlif məhsullarını əldə edə biləcəklər.\nSİMA vasitəsilə bank xidmətləri ilə yanaşı, digər sahələr üzrə də elektron xidmətlərdən yararlanmaq mümkündür. Bunlara rəqəmsal dövlət, BOKT, sığorta, mobil operatorlar, elektronika, məişət, TV və internet provayderlər, bir sözlə imza tətbiq olunan bütün sahələr daxildir.\nYeni nəsil rəqəmsal imzanın həm vətəndaşlar, həm də xidmət təklif edənlər üçün bir sıra üstünlükləri var. Bunlara maliyyə xərclərinin azaldılması və vaxt itkisinin qarşısının alınması daxildir. Eyni zamanda, SİMA-nın istənilən sistemə inteqrasiya oluna bilməsi, eləcə də avtomatlaşdırılma istifadəçilərə sürətli və istənilən sayda imzalama imkanı qazandırır.\nMobil tətbiqlə işləyən imzanı əldə etmək üçün SİMA tətbiqini mobil cihaza yükləmək və bir dəfə qeydiyyatdan keçmək kifayətdir. Rəqəmsal xidmətlərə əlçatanlığı artıran imzanın ölkəmizdə biznes proseslərini sürətləndirəcəyi gözlənilir. SİMA rəqamsal imza ilə bağlı daha ətraflı məlumatı şirkətin rəsmi saytından və 157 Çağrı Mərkəzi ilə əlaqə saxlayaraq əldə edə bilərsiniz. ','26 May 2022','https://banker.az/wp-content/uploads/2022/05/Yelo-Sima-AZE.png','2022-06-05 15:49:14','2022-06-05 15:49:14'),(5,'Yelo kartla yüksək cashback-lər qazanın!','cashback','Yelo kartla indi daha çox cashback qazanacaqsınız. Yelo Bank partnyor şəbəkəsində və hər ödəniş üzrə təqdim etdiyi standart cashback-lərlə bərabər yeni yüksək cashback kateqoriyalarını da təqdim edir. Kart sahibləri 4 cashback kateqoriyasından ikisini seçməklə həmin ay ərzində heç bir dövriyyə tələbi olmadan daha çox cashback əldə edə bilər:\n•    Kafe və restoranlarda - Yelo Light 4%, Yelo Premium 5%\n•    Yanacaqdoldurma məntəqələrində - Yelo Light 4%, Yelo Premium 5%\n•    Geyim mağazalarında - Yelo Light 4%, Yelo Premium 5%\n•    Marketlərdə - hər iki kart ilə 2%\nSeçilmiş kateqoriyaları hər ayın 1-i Yelo mobil tətbiqi üzərindən dəyişdirmək mümkündür. Ay ərzində bu kateqoriyalar üzrə maksimum 100 AZN cashback qazanmaq mümkündür. Üstəlik kateqoriya seçib-seçməməyinizdən asılı olmayaraq bütün ödənişlərdə Yelo Light kartı üzrə 0.5%, Yelo Premium üzrə 1% (ölkədaxili onlayn və POS terminallarda alış-veriş əməliyyatları) cashback qazanmağa da davam edirsiniz. Bütün bunlarla yanaşı yüzlərlə partnyor şəbəkəsindən 30%-dək əlavə cashback təklifləri də qüvvədədir. Əgər partnyor yüksək cashback-li kateqoriyaya daxildirsə, o zaman kateqoriya cashbacki ilə partnyorun verdiyi cashback vəsaiti toplanır.\nQazanılmış cashback-lər istənilən vaxt istənilən Yelo Bank kartına köçürülə bilər. Həmçinin kartdakı vəsaiti də komissiyasız nağdlaşdırmaq imkanı verilib. \nYelo kart müştəriləri təkcə xərcləyərək qazanmır. Eyni zamanda kartlarındakı qalıq məbləğdən də gəlir əldə edirlər. Belə ki, AZN valyutalı Yelo Light kartlarına illik 5%, USD-yə 0.1%, AZN valyutalı Yelo Premium kartlarına illik 7%, USD-yə isə 0.2% əlavə gəlir hesablanır. \nBu qədər funksionallığı özündə cəmləmiş Yelo kartı 3 illik pulsuz əldə etmək mümkündür. Bunun üçün Yelo Light kartına 100 AZN/50 USD/EUR, Yelo Premium kartına isə 1000 AZN/500 USD/EUR mədaxil etmək kifayətdir.\nYelo mobil tətbiqi ilə Yelo kartlarını idarə etmək daha rahatdır. Tətbiq vasitəsilə köçürmə və ödənişlər edə, qazandığınız cashback-ləri və əməliyyatlarınızı izləyə, kart üzrə limitlər təyin edə, habelə debet kart sifarişi edə və digər üstünlüklərdən faydalana bilərsiniz. Sifariş üçün: https://bit.ly/ylplshs \nDaha ətraflı: https://bit.ly/yltgkl \nƏlavə sualınız var? O zaman 981 nömrəsinə zəng edin və ya Facebook, Instagram  və ya Whatsapp hesablarımıza yazın cavablandıraq!\nYelo Bank – Parlaq bankçılıq!  ','26 May 2022','https://qafqazinfo.az/uploads/1652783520/Yelokart-cashback-AZE.png','2022-06-05 15:49:24','2022-06-05 15:49:24'),(6,'Yelo Bank-dan illik 11.5%-dək qazandıran yeni təklif','yeni_teklif','Yelo Bank-ın yeni əmanət faizini qaçırmayın! İndi Yelo Sabit əmanətindən daha yüksək gəlir əldə edə bilərsiniz. Belə ki, manat ilə 18 və 24 ay müddətlərinə yerləşdirilən əmanətlərə illik 11.5% gəlir təklif olunur. Əmanətiniz Bankda etibarlı qorunmaqla yanaşı, həm də qarşıdakı illərdə maliyyə təminatçınız olacaq.\nƏmanətləri 24 ayadək müddətə yerləşdirmək mümkündür və müddətin uzadılması avtomatikdir. Əmanət hesabı açmaq üçün tələb olunan minimal məbləğ 100 AZN-dir. Üstəlik, əmanət gəlirlərini necə alacağınızı özünüz seçirsiniz - istər müddətin sonunda, istərsə də hər ay kart vasitəsi ilə.\nQeyd edək ki, Yelo Bank-da yerləşdirilmiş əmanətlər Əmanətlərin Sığortalması fondunun qaydalarına uyğun olaraq sığortalanır.\nBankın təklif etdiyi əmanət şərtləri hər kəsin ürəyincədir. Təsadüfi deyil ki, ötən il depozit portfelinin artımına görə banklar arasında ən yüksək dinamika (50%) Yelo Bank-da müşahidə olunub. Bankın hazırda depozit portfeli 500 milyon manata yaxınlaşır.\nƏtraflı məlumat üçün: https://bit.ly/ylths \nBank xidmətləri, o cümlədən, əmanət faizləri haqqında əlavə sualınız var? O zaman 981 nömrəsinə zəng edin və ya Facebook, Instagram  və ya Whatsapp hesablarımıza yazın.\nYelo Bank – Parlaq bankçılıq!','26 May 2022','https://cdn.karvannews.com/uploadedfiles/custom/2021/4/23/1/d5fc276b-c93c-430a-8f0d-5b455f4ad0fb/yelo-bank.jpg','2022-06-05 15:49:35','2022-06-05 15:49:35'),(7,'Yelo Bank-dan illik 5%-lik kreditlə biznesinizi böyüdün','five_percent','Sahibkarlığın inkişafına və maliyyələşməsinə hər zaman dəstək olan Yelo Bank real sektorun inkişafı istiqamətində geniş imkanlar yaradır. Belə ki, Bank Sahibkarlığın İnkişafı Fondu (SİF) ilə əməkdaşlıq çərçivəsində illik 5%-dən başlayan biznes kreditləri təklif edir.\nFondun vəsaiti hesabına Yelo Bank-dan 10 milyon manatadək biznes kreditini illik cəmi 5% ilə əldə etmək mümkündür. Əlavə olaraq, kredit götürmüş sahibkarlar kredit müddətinin yarısınadək güzəşt müddəti üstünlüyündən də faydalana bilər.\nQeyd edək ki, Yelo Bank 2022-ci ilin ilk rübü üzrə Sahibkarlığın İnkişafı Fondunun (SİF) vəsaitləri hesabına verilən kreditlərin sayına görə müvəkkil banklar arasında ilk 5-likdə qərarlaşıb. Aprel ayının sonunadək Yelo Bank böyük əksəriyyəti regionlar, xüsusilə də kənd təsərrüfatı olmaqla, real sektorun inkişafına 2.3 milyon manat güzəştli kredit verib. Ümumilikdə isə bu dövr ərzində Bank bizneslərin maliyyələşməsinə 110.5 milyon manat kredit ayırıb.\nBank xidmətləri, o cümlədən, əmanət faizləri haqqında əlavə sualınız var? O zaman 981 nömrəsinə zəng edin və ya Facebook, Instagram  və ya Whatsapp hesablarımıza yazın.\nYelo Bank – Parlaq bankçılıq!','26 May 2022','https://www.bizimyol.info/az/wp-content/uploads/2022/05/Sif-kredit-yelobank.png','2022-06-05 15:49:43','2022-06-05 15:49:43'),(8,'Müştərilərin nəzərinə','information','Dəyərli müştərilər,\nMəlumat üçün bildiririk ki, “Yelo Bank” ASC-nin iki filialı barəsində aşağıdakı dəyişikliklər həyata keçirilmişdir:\nBakı şəh., Şəmsi Bədəlbəyli küç., 102 ünvanında yerləşən “28 May” filialının Bakı şəh., Şəmsi Bədəlbəyli küç., 92 ünvanına köçürülmüş;\nBakı şəh., Şəmsi Bədəlbəyli küç ., 92 ünvanında yerləşən “3 saylı” filial Bakı şəh., Şəmsi Bədəlbəyli küç., 102 ünvanına köçürülərək “Mərkəz” filialı adlandırılmışdır.','26 May 2022','.https://www.yelo.az/site/templates/images/yelo-share.jpg','2022-06-05 15:49:53','2022-06-05 15:49:53'),(9,'Yelo Bank bayram ərəfəsində şəhid ailələrini ziyarət etdi','war','Yelo Bank Vətənimizin ərazi bütövlüyü naminə döyüşmüş, torpaqlarımız uğrunda şəhid olmuş hərbçilərimizə və onların ailələrinə dəstək göstərməyi özünün vətəndaşlıq və insanlıq borcu hesab edir. Bu dəfə Bank müqəddəs Ramazan bayramı münasibətilə Qarabağ uğrunda döyüşlərdə şəhid olan qəhrəmanlarımızın ailələrinə dəstək oldu.\nXocavənd rayonu Qızıl Aypara Cəmiyyəti ilə birlikdə şəhidlərimizin əmanəti olan ailələrə bayramqabağı ziyarət edildi. Bankın və Cəmiyyətin birgə maliyyə dəstəyi ilə hazırlanmış bayram sovqatlarından ibarət bağlamalar onlara təhvil verildi.\nXatırladaq ki, Yelo Bank korporativ sosial məsuliyyəti çərçivəsində şəhid ailələri və qazilərimizə həssaslıqla yanaşır və Qarabağ döyüşlərinin ilk günlərindən bu istiqamətdə çoxsaylı layihələr həyata keçirir.','29 Aprel 2022','http://interfax.az/upload/yelobayramziyaret.jpg','2022-06-05 15:50:02','2022-06-05 15:50:02'),(10,'Bankımızda Autizm Günü təşkil edildi','autism','Aprel ayı dünyada Autizm Maarifləndirmə ayı kimi geniş qeyd edilir. Autizmə diqqət və dəstək məqsədli ardıcıl layihələr həyata keçirən Bankımız bu dəfə qapılarını “Birgə və Sağlam” İctimai Birliyinə açdı. Baş ofisdə təşkil edilmiş Autizm günü çərçivəsində təşrif buyuran autizm spektrli uşaqlar adi iş gününə fərqli atmosfer qatdılar.\nQonaqlar Baş ofisdəki iş mühiti və kollektivlə tanış oldular. Daha sonra birliyin nəzdində fəaliyyət göstərən “Kashalata Café” tərəfindən yeməkxanamızda şirniyyat yarmarkası həyata keçirildi. Autizm sindromlu gənclərin hazırladığı müxtəlif şirniyyatlar əməkdaşlarımızın böyük marağına səbəb oldu.\nQonaqlar Bankımıza xüsusi sürpriz də hazırlamışdılar: yarmarkanın ardınca tədbir zalımızda birliyin “Mavi Ürəklər” xor qrupu konsert proqramı ilə çıxış etdi. İstedadlı qrup üzvlərinin çıxışları tədbirin axarına xüsusi rəng qatdı. Konsertdə ifa zamanı əməkdaşlarımız da qrup üzvlərini müşahidə etdilər. Tədbirdə Yelo Bankın İdarə Heyəti sədrinin müavini Günay Cəlilova və Birliyinin sədri Aytən Eynalova söz alaraq autizmli şəxslərin cəmiyyətə adaptasiyasını dəstəkləmək üçün bu kimi layihələrin nə qədər önəmli olduğunu vurğuladılar.\nBankımız cəmiyyətdə autizm sindromlu uşaqlara tolerantlığı artırmaq məqsədilə davamlı təşviqat və təbliğat layihələri həyata keçirəcək. Bu cür sosial təşəbbüslərdə əsas məqsədimiz autizmə fərqlilik, eyni zamanda bərabərlik kimi yanaşmanı aşılamaqdır. \nQeyd edək ki, bu, ay ərzində autizmə dəstək məqsədilə keçirilmiş 2-ci layihəmizdir. Əvvəlki layihə çərçivəsində autizm spektrli və digər fiziki imkanları məhdud uşaqlarla birgə quş yuvaları düzəldərək şəhərimizin müxtəlif parklarında yerləşdirdik.','28 Aprel 2022','https://azertag.az/files/galleryphoto/2017/1/1000x669/1491105560469558075_1000x669.jpg','2022-06-05 15:53:41','2022-06-05 15:53:41'),(11,'Yelo Bank-ın əmanət portfeli 100 milyon artıb','portfolio','Yelo Bank 2022-ci ilin birinci rübü üzrə maliyyə hesabatını açıqladı. Bank əsas maliyyə göstəriciləri üzrə pozitiv artım dinamikasını qorumaqla ilə parlaq şəkildə başlayıb. Bankın cəmi aktivləri ötən ilin sonu ilə müqayisədə 145 milyon, yəni 27% artaraq 678 milyon manatı ötüb.\nBank kredit portfeli üzrə də uzun müddətdir ki, artım tendensiyasını qoruyub saxlayır. Belə ki, 2021-ci ilin sonu ilə müqayisədə kredit portfeli 26 milyon manat artaraq 472 milyon manata çatıb. Hesabat dövrü ərzində Bank real sektorun maliyyələşməsinə 77 milyon manat kredit ayrılıb.\nİlk rüb ərzində 4000-ə yaxın müştəriyə 27 milyondan çox istehlak krediti verilib və nəticədə bu istiqamət üzrə kredit portfeli 8 milyon artaraq 119 milyon manata çatıb. Bu satışın demək olar ki, 30%-i onlayn kanallar vasitəsilə həyata keçirilib.\nBu dövr üzrə əmanət portfelində də 100 milyon manatlıq 28% artım müşahidə olunur. Bunun fiziki şəxslərin əmanətləri hesabına baş verməsi müştərilərin Yelo Bank-a inamının da artmasını göstərir. Belə ki, 2022-ci ilin ilk 3 ayı ərzində 1200-dən çox müştəri öz əmanətlərini Yelo Bank-a etibar edib və Bankın əmanət portfeli 452 milyon manatı ötüb.\nEyni zamanda hesabat dövrü üzrə Bankın xalis faiz gəlirləri 12 milyon manat olub. Bu da ötən ilin analoji dövrü ilə müqayisədə 20% artım deməkdir. Qeyd edək ki, Bank 3.4 milyon kredit ehtiyatı yaradaraq rübü 345 min manat mənfəət ilə tamamlayıb. İlk rüb üzrə qeyri-faiz gəlirləri 1.3 milyondan çox olub ki, bu da ötən ilin eyni dövrü üzrə müqayisədə 2 dəfədən çox artım deməkdir.\nBank-ın məcmu kapitalı 89 milyon manat təşkil edib ki, bu da requlyativ tələbdən 39 milyon manat çoxdur. Məcmu kapitalın adekvatlıq əmsalı 14.61%, birinci dərəcəli kapitalın adekvatlıq əmsalı isə 9.33% olmaqla, hər iki göstərici üzrə tələb olunan normanı üstələyir.\nYelo Bank-ın İdarə Heyətinin sədri Anar Həsənov 1-ci rübün maliyyə nəticələrini belə şərh edib: \"Bankımızın həm ötən il, həm də bu ilin ilk ayları üzrə nəticələrinə baxdıqda inkişaf strategiyamız üzrə düzgün irəlilədiyimizə bir daha əmin oluram. Təbii ki, bu nəticələr peşəkar komandamız və müştərilərimizin artan etibarı olmadan reallaşa bilməzdi. 2022-ci ilə hədəflərimizə uyğun start vermişik. Bu il müştərilərimizin həyatını rahatlaşdıracaq daha bir neçə yeni rəqəmsal məhsullarımızı istifadəyə verməyi və xüsusilə regional istiqamətdə xidmət şəbəkəmizi genişləndirməyi nəzərdə tutmuşuq.\"\nQeyd edək ki, Bank 2022-ci ilin ilk rübü ərzində Salyanda və Ağcabədidə olmaqla artıq 2 yeni regional filialını istifadəyə verib.','26 Aprel 2022','https://www.bizimyol.info/az/wp-content/uploads/2022/04/Maliyye-neticeleri-yelobank.png','2022-06-05 15:53:50','2022-06-05 15:53:50'),(12,'Yelo Bank reabilitasiya mərkəzindəki uşaqlarla birgə quşlar üçün yuvalar hazırladı','rehab','Aprel ayı Autizm Maarifləndirmə ayı kimi qeyd edilir. Bu münasibətlə Yelo Bank-ın və “GID CSR Consulting”in birgə təşəbbüsü ilə növbəti sosial tədbir həyata keçirilib. \"Balaca əllərlə rəngli yuvalar\" adlı tədbir 2 nömrəli Uşaq Reabilitasiya Mərkəzində baş tutub. Layihənin əsas məqsədi Mərkəzdə müalicə alan uşaqlara erkən yaşlarından təbiətdəki dostlarımıza qarşı mərhəmət, sevgi hisslərini aşılamaqdır.\nTədbir autizm spektrli və sağlamlıq imkanları məhdud uşaqlarla iş üzrə ixtisaslaşmış psixoloqun interaktiv təlimi ilə başladı və daha sonra quşlar üçün yuvaların qurulması ilə davam etdi. Yekunda uşaqlara Yelo Bank tərəfindən sertifikat və hədiyyələr təqdim olundu. Uşaqların imzası ilə tamamlanmış quş evlərindən bir neçəsi Reabilitasiya Mərkəzinin bağçasındakı ağaclarda yerləşdirildi, digərlərini isə tezliklə Bakı şəhərindəki digər park ərazilərində görə biləcəksiniz.\nXatırladaq ki, bu, Yelo Bank-ın sahibsiz heyvanların qayğısı üçün həyata keçirdiyi ilk sosial layihə deyil. Bundan öncə bank əməkdaşlarının övladları pişik evləri hazırlamış və küçə heyvanlarının xüsusiyyətləri ilə  və onlara düzgün rəftarla bağlı interaktiv təlimdə iştirak etmişdi. Hazırda pişik evləri müxtəlif ictimai-iaşə obyektlərinin qarşısında yerləşdirilib.\nYelo Bank autizmli və sağlamlıq imkanları məhdud olan uşaqlar üçün daha gözəl bir mühitin formalaşdırılması naminə sosial layihələrinə davam edəcək.\nBank xidmətləri, o cümlədən, əmanət faizləri haqqında əlavə sualınız var? O zaman 981 nömrəsinə zəng edin və ya Facebook, Instagram  və ya Whatsapp hesablarımıza yazın.\nYelo Bank – Parlaq bankçılıq!','20 Aprel 2022','https://fins.az/file/articles/2022/04/20/1650461407_af6o5657.jpg','2022-06-05 15:53:58','2022-06-05 15:53:58');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yelocreditcardsifaris`
--

DROP TABLE IF EXISTS `yelocreditcardsifaris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yelocreditcardsifaris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardtype` varchar(25) NOT NULL,
  `salary` varchar(25) DEFAULT NULL,
  `amount` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `work` varchar(25) NOT NULL,
  `prefix` varchar(25) NOT NULL,
  `number` varchar(25) NOT NULL,
  `idcardfront` text NOT NULL,
  `idcardback` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `salary` (`salary`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yelocreditcardsifaris`
--

LOCK TABLES `yelocreditcardsifaris` WRITE;
/*!40000 ALTER TABLE `yelocreditcardsifaris` DISABLE KEYS */;
/*!40000 ALTER TABLE `yelocreditcardsifaris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yelolightcardsifaris`
--

DROP TABLE IF EXISTS `yelolightcardsifaris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yelolightcardsifaris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardtype` varchar(25) NOT NULL,
  `valyuta` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `prefix` varchar(25) NOT NULL,
  `number` varchar(25) NOT NULL,
  `keyword` varchar(25) NOT NULL,
  `branch` varchar(80) NOT NULL,
  `idcardfront` text NOT NULL,
  `idcardback` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yelolightcardsifaris`
--

LOCK TABLES `yelolightcardsifaris` WRITE;
/*!40000 ALTER TABLE `yelolightcardsifaris` DISABLE KEYS */;
/*!40000 ALTER TABLE `yelolightcardsifaris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yelopremiumcardsifaris`
--

DROP TABLE IF EXISTS `yelopremiumcardsifaris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yelopremiumcardsifaris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardtype` varchar(25) NOT NULL,
  `valyuta` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `prefix` varchar(25) NOT NULL,
  `number` varchar(25) NOT NULL,
  `keyword` varchar(25) NOT NULL,
  `branch` varchar(80) NOT NULL,
  `idcardfront` text NOT NULL,
  `idcardback` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yelopremiumcardsifaris`
--

LOCK TABLES `yelopremiumcardsifaris` WRITE;
/*!40000 ALTER TABLE `yelopremiumcardsifaris` DISABLE KEYS */;
/*!40000 ALTER TABLE `yelopremiumcardsifaris` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-06 14:00:33
