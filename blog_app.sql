-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: blog_app
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `blog_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `home_page` tinyint(1) DEFAULT '0',
  `approval` tinyint(1) DEFAULT '0',
  `category_id` int NOT NULL,
  `subhead` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`blog_id`),
  UNIQUE KEY `blog_id_UNIQUE` (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'Komple Uygulamalı Web Geliştirme Eğitimi','<h2>Web Geliştirme Nedir?</h2><p><strong>Web geliştirme</strong> komple bir web sitesinin hem web tasarım&nbsp;(<strong>html</strong>,<strong>css</strong>,<strong>javascript</strong>), hem de web programlama (asp.net mvc) konularının kullanılarak geliştirilmesidir. Sadece <strong>html&nbsp;</strong>css kullanarak statik bir site tasarlayabiliriz ancak işin içine bir web programlama dilini de katarsak dinamik bir web uygulaması&nbsp;geliştirmiş oluruz.&nbsp;</p><p>Dinamik bir web uygulaması bir&nbsp;yönetim paneline sahiptir ve yönetim paneli ile site içeriklerini dinamik bir şekilde yönetebiliriz.</p><p>Web geliştirme temel olarak 3 alan altında ele alınır; <strong>Frontend</strong>, <strong>Backend </strong>ve <strong>FullStack</strong>.</p><p><strong>Frontend</strong>, bir web sitesinde amaca uygun içeriklerin görüntülenmesi aşamasıyla ilgilenir. Bu alanda çalışacak kişiler <strong>html</strong>, <strong>css</strong> ve <strong>javascript </strong>konularına hakim kişilerdir.</p><p>Frontend geliştirici bir web sitesini html ve css kullanarak sıfırdan tasarlayarak güzel görünümlü web sayfalarını oluşturabilir.</p><p><strong>Frontend geliştiriciler,</strong> web programlama dili kullanmazlar yani&nbsp;database yapısı ve&nbsp;iş kuralları ile ilgilenmezler ancak hazır veri deposundan (restful service) gelen json ya da xml türündeki verileri kaynaktan talep&nbsp;eder ve&nbsp;web sayfasında görüntülerler. Örneğin, döviz kurlarını javascript ile api servisinden talep eder ve html etiketleri ile sayfada gösterir.</p><p><strong>Backend</strong>, bir web sitesinin tasarımı ile ilgilenmez. Backend geliştiriciler web uygulamalarının database yapısını oluşturup belirli iş kurallarını ele alarak web uygulamasının düzgün, performanslı ve güvenli bir şekilde çalışmasını sağlar.</p><p><strong>Backend geliştiriciler,</strong> frontend geliştiriciler için bir veri deposunu hazırlar (restful service) ve frontend geliştirici servisten gelen bilgileri javascript ile elde edip görüntü oluşturmak için gerekli html ve css kodlarını kullanır.</p><p><strong>Fullstack</strong>, frontend ve backend geliştiricilerin ilgilendiği tüm alanları kapsar.</p><p><strong>Fullstack </strong>bir <strong>web geliştirici</strong>, bir web uygulamasının baştan sonra hem tasarım hem de programlamasını tek başına yapan kişidir. Bu kişiler genelde freelancer olarak çalışırlar yani her hangi bir firmaya bağlı kalmadan aldıkları işleri tek başlarına yaparlar.</p><p><strong>Komple Uygulamalı Web Geliştirme</strong> kursumuz ile fullstack bir web geliştiricinin bilmesi gereken tüm konuları öğrenerek bir web uygulamasını baştan sonra kendiniz geliştirebilirsiniz. Kursu incelemek için <a href=\"https://www.udemy.com/komple-web-developer-kursu/?referralCode=5D4498D410A2750305C1\">tıklayınız.</a></p><p>Peki fullstack web geliştirici olmak için hangi konuları bilmemiz gerekiyor ?</p><h2>Html Nedir?</h2><p>İster statik ister dinamik bir web site olsun her&nbsp;web site tasarımında&nbsp;mutlaka <strong>html </strong>kullanmak zorundayız. Tüm tarayıcılar yazmış olduğumuz <strong>html</strong> içeriklerini görüntüye çevirirler. Bu yüzden web geliştirme için ilk olarak güzel bir <strong>html </strong>bilgisine ihtiyacımız vardır.</p><p>Html, xml veri yapısında tanımlanmış bazı etiketlerden oluşur.Html bir programlama dili değildir. Bu yüzden yanlış yazılan bir html içeriğini kontrol edecek bir program yoktur. Tarayıcılar gelen html içeriğini&nbsp;olduğu gibi görüntüye çevirirler&nbsp;ancak html kodlarını yazarken mutlaka uymamız gereken bir html standardı&nbsp;vardır. Çünkü web sayfa hazırlamamızdaki en büyük nedenlerden biri arama motorlarının seveceği standartlara uygun bir web tasarım yapısı oluşturmakdır.</p><p><strong>Komple Uygulamalı Web Geliştirme</strong> kursumuz ile güzel bir <strong>html </strong>bilgisine sahip olarak, <strong>html </strong>standartlarına uygun mükemmel web siteleri geliştirebilirsiniz.&nbsp;Kursu incelemek için <a href=\"https://www.udemy.com/komple-web-developer-kursu/?referralCode=5D4498D410A2750305C1\">tıklayınız.</a></p><h2>Css Nedir?</h2><p>Sağlam bir <strong>html </strong>bilgisine sahip olduktan sonra <strong>css nedir</strong>, iyi bir şekilde öğrenmemiz gerekir. Çünkü <strong>html </strong>etiketleri soluk cansız bir şekilde görüntülenir. <strong>Html </strong>etiketlerini&nbsp;renklendirmek, konumlandırmak, boyutlandırmak gibi işlemleri yapabilmek için mutlaka <strong>css nedir</strong>, bilmemiz gerekir.</p><p><strong>Css nedir</strong>, daha iyi açıklarsak; örneğin yazı yazmak için kullandığımız her hangi bir kelime işlemci programını örneğin word programını düşünelim. Yazdığımız yazılar başta yalın ve sadedir.&nbsp;Ancak yazılarımızı daha iyi hale getirmek için kullanabilecek olduğumuz bir sürü stil özellikleri vardır. Örneğin başlığı kalın yapmak ya da renklendirmek için bazı kısa yolları kullanırız. İşte css de tamamen bu şekilde oluşturulan yalın <strong>html </strong>görüntülerini canlandırır.</p><p><strong>Komple Uygulamalı Web Geliştirme</strong> kursumuz ile <strong>css nedir</strong> ve css ile harika web tasarımlarını nasıl yapabiliriz detaylı bir şekilde öğreniyoruz.&nbsp;Kursu incelemek için <a href=\"https://www.udemy.com/komple-web-developer-kursu/?referralCode=5D4498D410A2750305C1\">tıklayınız.</a></p><h2>Bootstrap Nedir?</h2><p>Şimdi ise; bir standarda bağlı daha etkin web tasarımları oluşturabilmek için <strong>bootstrap nedir</strong>, iyi bir şekilde öğrenmemiz işlerimizi oldukça kolay hale getirir.</p><p>Sayfa tasarımı için <strong>html </strong>öğrendik ve tasarımımıza görüntü kazandırmak için <strong>css </strong>bilgisini de öğrendik ancak <strong>css </strong>kodlarını en alt seviyede yazmak çoğu zaman bizi zorlar. Dolayısıyla daha etkin <strong>css </strong>yazabilmek&nbsp;için bazı firmalar tarafından oluşturulmuş hazır <strong>css </strong>kütüphaneleri vardır.&nbsp;</p><p>En basitiyle <strong>bootstrap </strong>kütüphanesi içinde oluşturulmuş bazı buton stilleri mevcuttur ve buton stillerini kullanmak için yapmamız gereken sadece buton stiline ait sınıf&nbsp;ismini kullanmamızdır, hepsi bu kadar.&nbsp;Bu sayede web sitemizin tüm sayfalarında aynı css \'e sahip aynı tarzda butonlara sahip olmuş oluruz.</p><p>Tabi ki <strong>bootstrap nedir</strong>, öğrendikten sonra yapabileceğimiz tek konu buton oluşturmak değil.&nbsp;<strong>Bootstrap </strong>ile bir çok hazır component kullanımına&nbsp;sahip oluyoruz.</p><p><strong>Komple Uygulamalı Web Geliştirme</strong> kursumuz ile <strong>bootstrap nedir</strong> ve <strong>bootstrap </strong>ile harika web tasarımlarını nasıl yapabiliriz detaylı bir şekilde öğreniyoruz.Kursu incelemek için <a href=\"https://www.udemy.com/komple-web-developer-kursu/?referralCode=5D4498D410A2750305C1\">tıklayınız.</a></p>','1.jpeg',1,1,1,'                                Sıfırdan ileri seviyeye \'Web Geliştirme\': Html, Css, Sass, Flexbox, Bootstrap, Javascript, Angular, JQuery, Asp.Net Mvc&Core Mvc\r\n                            '),(2,'Python ile Sıfırdan İleri Seviye Python Programlama','<h2>Neden Python?</h2><p><i><strong>Python</strong></i>, son zamanların en popüler programlama dili haline geldi. <i><strong>Python</strong></i>\' ın bu kadar popüler olmasındaki sebep şüphesiz öğrenmesi kolay bir yazılım dili olmasıdır.</p><p><a href=\"https://sadikturan.com/python-dersleri\">sadikturan</a>&nbsp;adreslerinde paylaşmış olduğum <i><strong>python dersleri</strong> </i>serisini&nbsp;takip ederek ister video ister yazılı kaynaklar yardımıyla kısa zamanda <i><strong>python programlama</strong></i> alanında uzmanlık kazanın ve hayal ettiğiniz projeyi gerçekleştirin.</p><p><i><strong>Python programlama</strong></i>nın popülerliğinden dolayı bir çok yazılımcı ve firma <i><strong>python</strong></i><strong> </strong>için kütüphaneler oluşturup <i><strong>python</strong></i> kütüphane&nbsp;havuzunda paylaşmaktadır. Dolayısıyla <i><strong>python</strong></i> dünyasına giriş yaptığımızda işlerimizi kolaylaştıracak bazı imkanlara sahip oluyoruz.</p><p><i><strong>Python</strong></i> \'ın sağladığı imkanlar öğrenme sürecinde&nbsp;karşılaşabileceğimiz sorunları aşmamızda bize çok yardımcı oluyor. Bu yüzden popüler bir programlama dili olan <i><strong>python programlama</strong></i>ya başlamak kesinlikle doğru bir tercih olacaktır.&nbsp;Hatta bir çok üniversitede programlamaya giriş dersi olarak <i><strong>python</strong></i><strong> </strong>öğretildiğini de bir çok yerde duymuşunuzdur.</p><p>Sıfırdan ileri seviyeye <i><strong>python programlama</strong></i> öğrenmek <i><strong>python dersleri</strong></i>&nbsp;ile artık kolay ve zevkli bir süreç haline geldi.</p><p><i><strong>Python dersleri</strong></i>&nbsp;ile baştan sona <i><strong>python&nbsp;programlama</strong></i>&nbsp;öğrenerek<strong> </strong>fark yaratın çünkü <i><strong>Python</strong></i>\' ın popülerliği tartışılmaz bir gerçektir. Gelin <strong>\"Python dersleri</strong>ne<strong>\" </strong>beraber başlayalım.</p><h2>Python Dersleri Kimlere Hitap Ediyor?</h2><p><i><strong>Python dersleri</strong></i> için her hangi bir programlama geçmişinizin olması gerekmiyor <strong>çünkü </strong>kursumuzda <i><strong>python dersleri</strong>&nbsp;</i>size sıfırdan ileri seviyeye <i><strong>python programlama</strong>yı </i>adım adım ve bol bol uygulama yaptırarak öğretecektir.</p><p><strong>Python dersleri</strong>mizdeki temel öğretim şekli ilk olarak&nbsp;konuyu öğren ve sonrasında hemen uygulama şeklinde olmaktadır. Bu yüzden programlamaya yeni başlayanlar için öğren-uygula tekniği kursumuzdaki öğretim kalitesini üst seviyeye çıkarmaktadır.</p><p>Eğer ki başka bir programlama diline hakimseniz ve <strong>python </strong>dilini de öğrenmek istiyorsanız da <strong>python dersleri</strong>miz tam size göre çünkü kursumuzda ilk olarak <strong>python programlama</strong> konuları sıfırdan anlatılmakta ancak bilgi düzeyimiz kesinlikle başlangıç seviyesinde kalmayacaktır çünkü kursumuz sizi <strong>python programlama</strong> alanında uzman seviyesine çıkaracaktır.</p><p><strong>Kurs boyunca,</strong></p><p>Her konunun kalıcılığını sağlamak için <strong>bir çok uygulama </strong>yapacağız.</p><p>Bölüm sonlarında konuların hepsini kapsayan <strong>ödevlerimizi yapacağız.</strong></p><p>Kurs boyunca <strong>en gerekli</strong> konuları <strong>en gerektiği kadar</strong> detaylıca ve uygulayarak öğreneceğiz.</p><h2>Python Dersleri ile Hangi Alanda Uygulama Geliştirebilirim?</h2><p><strong>Python programlama</strong> dilinin genel kullanımını detaylı ve güzel bir şekilde öğrendikten sonra farklı platformlarda <strong>python </strong>ile nasıl proje geliştirebileceğimizi öğreniyoruz.</p><p>Kursumuzda <strong>Python Dersleri;</strong></p><ul><li><strong>Python </strong>ile <strong>web geliştirme (Django)</strong>,</li><li><strong>Python </strong>ile <strong>masaüstü uygulama geliştirme (PyQt5)</strong>,</li><li><strong>Python </strong>ile <strong>veri analizi (Numpy ve Pandas)</strong>,</li><li><strong>Python </strong>ile <strong>veritabanı (MySql,SQLite,MongoDb)</strong>,</li><li><strong>Python </strong>ile <strong>web scraping (Requests,Beautifulsoup),</strong></li><li><strong>Python </strong>ile<strong>&nbsp;bot yazımı,&nbsp;</strong>gibi ana başlıklar altında ele alınmaktadır.</li></ul><h2>Python Dersleri Kurs Planımız</h2><p><strong>Python </strong>Geliştirme Ortamının Hazırlanması</p><p><strong>Python </strong>Objeleri ve Veri Yapıları</p><p><strong>Python&nbsp;</strong>Operatörler</p><p><strong>Python</strong>&nbsp;Koşul İfadeleri</p><p><strong>Python</strong>&nbsp;Döngüler</p><p><strong>Python&nbsp;</strong>Fonksiyonlar</p><p><strong>Python&nbsp;</strong>Nesne Tabanlı Programlama</p><p><strong>Python</strong>&nbsp;Modüller</p><p><strong>Python</strong>&nbsp;Hatalar &amp; Hata Yönetimi</p><p><strong>Python</strong>&nbsp;Dosya Yönetimi</p><p><strong>Python</strong>&nbsp;Fonksiyonların İleri Seviye Özellikleri</p><p><strong>Python&nbsp;</strong>Iterators</p><p><strong>Python</strong> Generators</p><p>İleri Seviye <strong>Python </strong>Modülleri &amp; Web Scraping</p><p><strong>Python</strong> ile Bot Yazımı</p><p>Selenium: Instagram Bot</p><p>Selenium: Twitter Bot</p><p>Veri Analizi: Numpy</p><p>Veri Analizi: Pandas</p><p>Veri Görselleştirme: MatplotLib</p><p>SQL Database: MySql &amp; SQLite</p><p>NoSQL Database: MongoDb</p><p>Masaüstü Uygulama Geliştirme: PyQt5</p><p>Web Geliştirme: Django</p><p>Zaman kaybetmeden <strong>Python </strong>dünyasına katılın ve <strong>Python</strong>\'ın getirdiği güzellikleri hep beraber görmeye başlayalım.&nbsp;</p>','2.jpeg',1,1,1,'                                \r\n                            Sıfırdan İleri Seviye Python Dersleri.Veritabanı,Veri Analizi,Bot Yazımı,Web Geliştirme(Django)'),(3,'Sıfırdan İleri Seviye Modern Javascript Dersleri E7+','<h2>Neden Javascript?</h2><p><strong>Javascript</strong> son zamanlarda en popüler diller arasında yerini aldı hatta <strong>Javascript </strong>listenin en başında diyebiliriz. Peki son zamanlarda bu kadar popüler hale gelen <strong>Javascript </strong>nedir?</p><p>Çoğu web geliştirici için <strong>Javascript </strong>sadece tarayıcıda yani client tarafında çalışan ve html içeriklerini hareketli hale getiren bir script dili olarak biliniyor.</p><p>Web sitemize eklediğimiz&nbsp;bir resim galerisi, bir butona tıkladığımızda bir pop-up kutusunun açılması gibi html içeriklerini hareketli hale getiren ve yıllardır kullandığımız programlama dili tabi ki <strong>Javascript</strong>. Bu yönüyle&nbsp;<strong>Javascript </strong>\'i yıllardır zaten kullanmaktayız. Ancak son zamanlarda <strong>Javascript</strong>\' i bu kadar popüler yapan neden nedir?</p><p><strong>Javascript dersleri</strong> video eğitimini&nbsp;incelemek için<a href=\"http://www.udemy.com/course/modern-javascript-kursu/?referralCode=039B2533A42D1A45FD32\"> tıklayınız.</a></p><h2>Javascript Neden Çok&nbsp;Popüler?</h2><p>Son zamanlarda popüler hale gelen <strong>javascript&nbsp;</strong>frontend kütüphanelerinden&nbsp;<strong>Angular</strong>, <strong>React</strong> ve <strong>VueJs </strong>gibi kütüphanelerin kullanılmasındaki artış <strong>Javascript</strong>\' i çok popüler hale getirmiştir. Çünkü&nbsp;<strong>Angular</strong>, <strong>React</strong> ve <strong>VueJs&nbsp;</strong>kütüphanelerini kullanabilmek için güçlü bir <strong>Javascript </strong>bilgisine ihtiyacımız var.</p><p>Ayrıca&nbsp;<strong>Nodejs </strong>sayesinde artık <strong>Javascript programlama</strong> dilini sadece frontend değil backend programlama dili olarak da kullanabiliyoruz ve baştan sonra <strong>nodejs </strong>ile dinamik bir web uygulamasını geliştirmek mümkün oluyor ve düşünün ki; kullandığımız dil tamamen <strong>Javascript</strong>.</p><p>Hatta <strong>Javascript </strong>ile <strong>Android </strong>ve <strong>IOS </strong>uygulamaları bile geliştirebiliyoruz.</p><p>Sizce tüm bu nedenlerden dolayı yazılım dünyası için <strong>Javascript </strong>olmazsa olmaz diyebilir miyiz ? Kesinlikle, evet!</p><h2>Javascript Frontend Dilidir</h2><p>Bazı web sitelerini&nbsp;ziyaret ettiğinizde sanki bir <strong>mobile ya da masaüstü&nbsp;uygulama</strong> kullanıyormuş hissine mutlaka kapılmışınızdır. Bu tür web uygulamalarını tamamen <strong>Javascript </strong>dili ile geliştirebilirsiniz.</p><p><strong>Javascript </strong>dili daha çok frontend tarafında ele alınır bunun sebebi; <strong>javascript&nbsp;</strong>kullanarak bize veri sağlayacak bir rest api servisine istek göndererek json türünde bir veri elde elebiliriz ve bu verilerin oluşturulma kısmı backend diliyle gerçekleştirilir ancak Javascript bununla ilgilenmez. Veri sağlayacak servis hazırdır örneğin bir hava durumu tahmin servisi ya da bize anlık döviz kurslarını sağlayacak bir exchange servisi gibi. Bu servislere restful api servisi diyebiliriz.</p><p>Javascript kullanarak restful servislerine talebi göndeririz ve gelen json bilgilere göre sitemizi dinamik şekilde hazırlarız. Bu gibi işlemleri yalın javascript bilgisi ile yapmak mümkün ancak Javascript dilini daha etkin kullanabilmek için bazı Javascript kütüphaneleri çıktı ve bu kütüphaneler son zamanlarda oldukça popüler hale geldi. Bu kütüphanelerden bazıları&nbsp;<strong>Angular</strong>, <strong>React </strong>ve <strong>VueJs&nbsp;</strong>kütüphaneleridir. Bu kütüphaneleri kullanarak oldukça etkin ve güzel frontend uygulamaları kolaylıkla geliştirebiliriz.</p><p>Bu güçlü <strong>Javascript </strong>kütüphaneleri sayesinde <strong>Javascript </strong>kullanımı tabi ki çok fazla arttı. Buraya kadar bahsettiğimiz <strong>Javascript</strong>\' in frontend tarafıydı peki ya <strong>Javascript</strong>\' i <strong>Backend dili </strong>olarak kullanabiliyor muyuz? Evet.</p><h2>Javascript Backend Dilidir</h2><p><strong>Nodejs </strong>sayesinde <strong>Javascript </strong>dilini artık bir <strong>backend programlama dili</strong> olarak kullanabiliyoruz. Yani javascipt ile hazır restful api servisi kullanmanın dışında servisin kendini de artık Javascript ile oluşturabiliriz.</p><p>Nodejs \'den önce yazdığımız <strong>Javascript </strong>kodlarını derleyip çalıştıracak olan&nbsp;<strong>Chrome Javascript V8</strong> motoru sadece tarayıcı içerisinde barındırılıyordu. Google firması kodlarımızı çalıştıracak olan&nbsp;<strong>Chrome Javascript V8</strong> motorunu&nbsp;Nodejs ismiyle bir paket haline getirip&nbsp;kullanıcılara sundu ve Nodejs sayesinde Javascript kodlarımızı tarayıcıya bağımlı olmadan tarayıcı dışında yani server tarafında derleyip çalıştırabiliyoruz.</p><p>Dolayısıyla <strong>Nodejs </strong>sayesinde <strong>Javascript</strong>\' i bir <strong>web programlama dili</strong> olarak kullanabiliyoruz. Yani artık Php, Asp.net ya da Django ile ne yapabiliyorsak <strong>Javascript </strong>ile onu yapabiliriz.</p><h2>Peki Neden Modern Javascript Diyoruz?</h2><p>Web site geliştirmeyi bilen herkesin az çok aşina olduğu Javascipt dili artık kendini oldukça geliştirdi ve ES5-ES6-ES7+ şeklinde yeni versiyonlarla karşımıza geldi. Dolayısıyla klasik Javascript söz dizimlerinden başka artık kullanmamız gereken yeni söz dizimleri mevcut.</p><p><strong>Javascript dersleri</strong> video eğitimini&nbsp;incelemek için<a href=\"http://www.udemy.com/course/modern-javascript-kursu/?referralCode=039B2533A42D1A45FD32\"> tıklayınız.</a></p><h2>Javascript Dersleri Kimlere Hitap Ediyor?</h2><p><strong>Javascript&nbsp;dersleri</strong> için her hangi bir programlama geçmişinizin olması gerekmiyor çünkü kursumuzda <strong>javascript&nbsp;dersleri&nbsp;</strong>size sıfırdan ileri seviyeye <strong>javascript&nbsp;</strong>programlamayı adım adım ve bol bol uygulama yaptırarak öğretecektir.</p><p>Ayrıca <strong>Javascript </strong>bilgisine sahip ancak Javascript bilgisini&nbsp;üst seviyeye çıkarmak isteyen tüm geliştiriciler kursumuza katılıp <strong>modern javascript</strong> tekniklerini öğrenerek, <strong>Nodejs</strong>,&nbsp;<strong>Angular</strong>, <strong>React </strong>ve <strong>VueJs</strong> kütüphaneleri için gereken alt yapıya sahip olabilirler.</p><p><strong>Javascript&nbsp;</strong>derslerimizdeki temel öğretim şekli ilk olarak&nbsp;konuyu öğren ve sonrasında hemen uygulama şeklinde olmaktadır. Bu yüzden Javascript\' e yeni başlayanlar için öğren-uygula tekniği kursumuzdaki öğretim kalitesini üst seviyeye çıkarmaktadır.</p><p><strong>Javascript dersleri</strong> video eğitimini&nbsp;incelemek için<a href=\"http://www.udemy.com/course/modern-javascript-kursu/?referralCode=039B2533A42D1A45FD32\"> tıklayınız.</a></p><h2>Javascript Dersleri Kurs Planımız</h2><p><strong>Konu Başlıklarımız,</strong></p><ol><li>Javascript Temelleri: 1.Seviye (<strong>Değişkenler</strong>,<strong>Operatörler</strong>,<strong>Objeler</strong>,<strong>Diziler</strong>)</li><li>Javascript Temelleri: 2.Seviye (<strong>Koşul İfadeleri</strong>,<strong>Döngüler</strong>,<strong>Fonksiyonlar</strong>)</li><li>Javascript ile <strong>Dom Manipulasyonu</strong></li><li>Javascript ile <strong>Events</strong></li><li>Proje #1 - <strong>Todo Uygulaması</strong> - Dom</li><li>Proje #2 - <strong>Slider Uygulaması</strong> - Dom</li><li>Javascript ile <strong>Nesne Tabanlı Programlama</strong></li><li>Javascript ile <strong>İleri Seviye Fonksiyonlar</strong></li><li>Proje #3 - Nesne Tabanlı Programlama ile <strong>Quiz Uygulaması</strong></li><li>Modern Javascript Teknikleri: <strong>ES6 / ES7+</strong></li><li><strong>Proje #4 - Kurslar Uygulaması </strong>- ES6 Class Kullanımı</li><li><strong>Asekron Programlama </strong>&amp; <strong>AJAX </strong>(<strong>Json</strong>,<strong>Restful Api</strong>, <strong>Callback</strong>, <strong>Promise</strong>, <strong>Fetch Api</strong>, <strong>Async </strong>&amp;&nbsp;<strong>Await </strong>)</li><li><strong>Proje #5 - Profil Arama Projesi - Api Projesi</strong></li><li>Javascript <strong>Patterns</strong></li><li><strong>Proje #5</strong> - <strong>Ürün Katalog Projesi</strong>- <strong>Modüller ile Proje Geliştirme</strong></li><li><strong>Nodejs </strong>&amp; <strong>Npm</strong></li><li><strong>Webpack</strong>, <strong>Babel </strong>&amp; <strong>ES6 </strong>Module</li><li><strong>TypeScript</strong></li></ol><p><strong>Kurs Boyunca,</strong></p><ul><li>Her konunun kalıcılığını sağlamak için bir çok uygulama yapacağız.</li><li>Bölüm sonlarında konuların hepsini kapsayan ödevlerimizi yapacağız.</li><li>Kurs boyunca en gerekli konuları en gerektiği kadar detaylıca ve uygulayarak öğreneceğiz.</li></ul><p><a href=\"https://www.udemy.com/course/modern-javascript-kursu/?referralCode=039B2533A42D1A45FD32\">udemy</a>&nbsp;ve&nbsp;<a href=\"https://sadikturan.com/javascript-dersleri\">sadikturan</a>&nbsp;adreslerinde paylaşmış olduğum&nbsp;<strong>javascript dersleri</strong>&nbsp;serisini&nbsp;takip ederek ister video ister yazılı kaynaklar yardımıyla kısa zamanda&nbsp;<strong>javascript programlama</strong>&nbsp;alanında uzmanlık kazanın ve hayal ettiğiniz <strong>javascript </strong>uygulamasını gerçekleştirin.</p><p><strong>Güçlü bir Javascript bilgisine sahip olmak son zamanlarda yazılım adına yapmamız gereken en önemli adımdır.</strong></p><p>Bu kursumuzda <strong>modern javascript</strong> tekniklerini iyi bir şekilde öğrenerek <strong>nodejs, angular, react</strong> ve <strong>vuejs </strong>için güzel bir temel oluşturacağız.</p>','3.jpeg',1,1,2,'                                                                                                \r\n                            Modern javascript dersleri ile (ES6 & ES7+) Nodejs, Angular, React ve VueJs için sağlam bir temel oluşturun.\r\n                   '),(4,'Node.js ile Sıfırdan İleri Seviye Web Geliştirme','<h2><strong>Neden Nodejs?</strong></h2><p>&nbsp;</p><p>En popüler&nbsp;programlama dili olan&nbsp;<strong>Javascript</strong>&nbsp;programlama dilini artık&nbsp;<strong>Node.js</strong>&nbsp;sayesinde&nbsp;server tabanlı bir dil&nbsp;olarak kullanabilirsin.</p><p>Kurs sonunda sadece&nbsp;Javascript&nbsp;programlama dilini kullanarak&nbsp;Fullstack&nbsp;bir web geliştirici olmak istiyorsan&nbsp;hemen kursa katılmalısın!</p><p>Üstelik 30 gün iade garantisiyle!</p><p>Kursumuz piyasadaki en popüler ve en güncel&nbsp;<strong>Node.js&nbsp;</strong>kursudur.</p><p><strong>Javascript</strong>&nbsp;tartışmasız günümüzdeki en popüler programlama dilidir çünkü her web uygulaması mutlaka Javascript içerir.</p><p>Eğer temel düzeyde&nbsp;Javascript&nbsp;biliyorsan artık mevcut&nbsp;Javascript&nbsp;programlama bilginle&nbsp;<strong>Node.js</strong>&nbsp;öğrenip kolaylıkla dinamik web uygulaması geliştirmeye başlayabilirsin.</p><p>Neden&nbsp;<strong>Node.js</strong>&nbsp;Öğrenmeliyim ?</p><ul><li>Ciddi iş potansiyeline sahip olan bu alanda kendinizi geliştirip iyi bir kariyer sahibi olabilirsiniz.</li><li>Freelancer olarak çalışıp kendi müşterilerinize hizmet sunabilirsiniz.</li><li>Kurumsal bir firmada iyi bir ücret karşılığında çalışabilirsiniz.</li><li>Hayal ettiğiniz projeleri gerçekleştirme fırsatına sahip olabilirsiniz.</li></ul><p><strong>Node.js</strong>&nbsp;kursumuza katılmak için temel düzeyde Javascript programlama bilgisi ve temel düzelde&nbsp;<strong>HTML/CSS&nbsp;</strong>bilgisine sahip olmanız yeterlidir. Kursumuz sıfırdan ileri seviyeye tüm&nbsp;<strong>Node.js&nbsp;</strong>konularını içeriyor ve her konu en temelden detaylı bir şekilde anlatılıyor. Ayrıca her bölümde öğrendiklerimizi uygulayabileceğimiz gerçek bir projeyi sıfırdan ileri seviyeye adım adım geliştiriyoruz.</p><p><strong>Kurs Planımız;</strong></p><ul><li><strong>Node.js</strong>&nbsp;Geliştirme Ortamının Hazırlanması</li><li><strong>Node.js</strong>&nbsp;Temelleri</li><li>Node Package Manager -&nbsp;<strong>Npm</strong></li><li><strong>Express.js</strong></li><li>Template&nbsp;Engines -&nbsp;<strong>EJS</strong></li><li>Model - View - Controller -&nbsp;<strong>MVC</strong></li><li><strong>SQL</strong></li><li>SQL&nbsp;ORM -&nbsp;<strong>Sequalize</strong></li><li>NoSQL&nbsp;ORM&nbsp;-&nbsp;<strong>Mongoose</strong></li><li>Authentication</li><li>Validations</li><li>Blog App</li><li>Node.js&nbsp;<strong>RESTFull API</strong></li><li>App Publish</li></ul>','4.jpeg',0,1,3,'                                                                \r\n                            Node.js ile sıfırdan ileri seviye dinamik web uygulaması geliştirmeyi öğren.\r\n                            '),(5,'Python Django ile Sıfırdan İleri Seviye Web Geliştirme','<h2>Neden Python Django?</h2><p>&nbsp;</p><p>En popüler <strong>Python web geliştirme</strong> çatısı <strong>Django</strong> ile sıfırdan ileri seviyeye dinamik web uygulamaları geliştirebilirsin. <strong>Python django</strong> kursumuz piyasadaki en detaylı ve en güncel kurstur.</p><p><strong>Python</strong> tartışmasız günümüzdeki en popüler programlama dili çünkü <strong>Python</strong> öğrenmesi kolay oldukça güçlü bir dildir.</p><p>Eğer temel düzeyde python biliyorsan artık <strong>mevcut python programlama bilginle Django öğrenip kolaylıkla dinamik web uygulaması geliştirmeye başlayabilirsin.</strong></p><p>Python\' in en popüler programlama dili olmasındaki sebep öğrenilmesi kolay olmasıdır bu neden şüphesiz <strong>Django</strong> için de geçerlidir. Çünkü <strong>Django oldukça kolay, güçlü ve öğrenmesi zevkli bir web programlama platformudur.</strong></p><p><strong>Python django kursu</strong>muza katılmak için temel düzeyde Python programlama bilgisi ve temel düzelde HTML/CSS bilgisine sahip olmanız yeterlidir. Kursumuz sıfırdan ileri seviyeye tüm <strong>Django</strong> konularını içeriyor ve her konu en temelden detaylı bir şekilde anlatılıyor. Ayrıca her bölümde öğrendiklerimizi uygulayabileceğimiz gerçek bir projeyi sıfırdan ileri seviyeye adım adım geliştiriyoruz.</p><p>Kurs Planımız;</p><ul><li><strong>Python Django</strong> Geliştirme Ortamının Hazırlanması</li><li>Virtual Envirenmont ile Proje Geliştirme - Sanal Dizin Ekleme</li><li><strong>Django</strong> Apps</li><li><strong>Django</strong> Views &amp;&nbsp;Urls</li><li>Templates &amp;&nbsp;Static Files</li><li>SQL&nbsp;Veritabanı</li><li><strong>Django</strong> Models &amp;&nbsp;Queries</li><li>Admin Yönetim Paneli</li><li><strong>Django</strong> Model Relationships - (One to One, One To Many ve Many to Many Relations)</li><li><strong>Django</strong> Forms</li><li><strong>Django</strong> File Uploads</li><li>Sessions</li><li>Memberships - Üyelik Yönetimi</li><li><strong>Django</strong> Publish</li><li>MovieApp projesi</li></ul><p>Mevcut python bilgini web geliştirme alanında da etkin bir şekilde kullanmak istiyorsan hemen kursa katılabilirsin.</p>','5.jpeg',1,1,1,'                                \r\n                            Python django ile sıfırdan ileri seviye dinamik web uygulaması geliştirmeyi öğren.\r\n\r\n'),(6,'Angular 12 ile Sıfırdan İleri Seviye Web Geliştirme Eğitimi','<h2><strong>Neden Angular?</strong></h2><p>&nbsp;</p><p><strong>Angular</strong>, <strong>Single Page Application (SPA)</strong> diye adlandırılan <strong>tek sayfalık </strong>javascript uygulamaları geliştirebildiğimiz ve <strong>Google </strong>tarafından geliştirilen popüler bir <strong>font-end framework</strong>\'üdür.</p><p><strong>Peki nedir tek sayfalık (SPA) javascript uygulamaları ?</strong></p><p>Eminim ki; ziyaret ettiğiniz her hangi bir web uygulamasının sanki bir <strong>masaüstü </strong>ya da <strong>mobil uygulama</strong> şeklinde çalıştığını görmüşünüzdür.&nbsp; Yani bir butona tıkladığımızda sayfanın tekrar baştan yüklenmesi şeklinde çalışan klasik web uygulamasının aksine sanki bir mobil uygulama kullanıyormuş hissi veren ve sürekli baştan yüklenmeyen dinamik, kullanıcı deneyimi en üst düzeyde olan bir javascript uygulaması. Bu tarzda çalışan web uygulamalarını angular ile kolaylıkla geliştirebiliyoruz.</p><p><strong>Angular</strong>, <strong>Google </strong>tarafından geliştirilen <strong>Javascript </strong>tabanlı en popüler <strong>front-end Framework</strong>\'üdür.</p><p>Kursumuz sıfırdan detaylı bir konu anlatımına sahiptir. Üstelik konuları baştan sonra geliştirdiğimiz uygulamalar üzerinden öğrenmekteyiz.</p><p>Kurs planımız;</p><p>Başlangıç</p><p>TypeScript</p><p>Hazırlık Projesi - TodoApp</p><p>Angular Temel Özellikleri - MovieApp</p><p>Data Binding Yöntemleri</p><p>Directives</p><p>Uygulama:&nbsp;Table Component</p><p>Template-driven Forms</p><p>Reactive Forms</p><p>Http Servisleri ile Çalışma</p><p>Routing</p><p>ShopApp - Eticaret Uygulaması</p><p>Bootstrap 4</p>','6.jpeg',1,0,1,'                                                                                                \r\n                            En popüler front-end framework\'ü Angular \'ı sıfırdan en ileri seviye kadar öğrenin.\r\n                            \r\n              ');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id_UNIQUE` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Web Geliştirme'),(2,'Programlama'),(3,'Mobil Uygulamalar'),(4,'Veri Analizi'),(7,'Yapay Zeka');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-03 11:45:15