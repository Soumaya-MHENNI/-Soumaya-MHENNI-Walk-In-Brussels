-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 24, 2022 at 10:07 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `walk_in_brussels`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `id_user`, `message`) VALUES
(1, 1, 'merci');

-- --------------------------------------------------------

--
-- Table structure for table `poi`
--

CREATE TABLE `poi` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `desc` varchar(600) NOT NULL,
  `URL_maps` varchar(500) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poi`
--

INSERT INTO `poi` (`id`, `title`, `desc`, `URL_maps`, `image`) VALUES
(1, 'Manneken Pis', 'Créé en 1388, le Manneken Pis est l’un des symboles les plus représentatifs et prisés de Bruxelles. Le Manneken Pis est une petite statue d’une cinquantaine de centimètres qui représente un petit garçon effronté en train d’uriner sur le haut d’une fontaine. Cet emblème se trouve dans la partie ancienne de la capitale belge,\r\n    entre L’Etuve et Chêne, à côté de la Grand-Place.', 'https://goo.gl/maps/cfHv1y4ZGp9JMxRd9', 'assets\\images\\place\\MannekenPis.jpg'),
(2, 'Grand-place', 'La Grand-Place (Grote Markt en flamand) est non seulement le centre géographique, historique et commercial de Bruxelles, mais aussi l’une des places les plus importantes en Europe. \r\n                    Cette place pavée animée fait partie du plus bel ensemble architectural du XVIIe siècle de Belgique.', 'https://goo.gl/maps/Yfw35orJXVPwHSff6', 'assets\\images\\place\\GrandPlace.jpg'),
(3, 'Tour japonaise', 'La Tour japonaise a été construite pour l’Exposition Universelle de Paris en 1900. Elle a ensuite été rachetée et érigée à Laeken par le roi Léopold II qui souhaitait ériger sur le site avoisinant le château de Laeken des témoins d’architectures non européennes. ', 'https://goo.gl/maps/nzPBYiaztaJHr7gu8', 'assets\\images\\place\\tourjaponaise.jpg'),
(4, 'Parc Royal', 'Le parc de Bruxelles, auparavant appelé « Parc royal », est le plus ancien parc de la ville qui fut le premier à être public. Aménagé sur les ruines de celui des ducs de Bourgogne et des gouverneurs des Pays-Bas, il est situé entre le parlement Fédéral – ou Palais de la Nation – et le palais Royal, symboles du pouvoir et de la royauté. ', 'https://goo.gl/maps/hGmZihBYdC767i3u7', 'assets\\images\\place\\parcRoyal.jpg'),
(5, 'Parc cinquantenaire', 'Construit en 1880 pour le 50e anniversaire de l’indépendance de la Belgique, le parc du Cinquantenaire est à la fois un ensemble de jardins « à la française » et un site historique où découvrir monuments, sculptures et musées.\r\nIl est dominé par un arc de triomphe à trois arcades avec, au sommet, un quadrige de bronze et un panorama avec une vue imprenable sur la capitale.\r\nLes grandes allées vous conduisent au Pavillon des Passions humaines dessiné par Victor Horta, au Musée Royal de l\'Armée et d\'Histoire Militaire, au Musée Art & Histoire et à Autoworld, le musée de l’automobile.', 'https://goo.gl/maps/xPVEjrtBYDVkcdFAA', 'assets\\images\\place\\parcCinquentenaire.jpg'),
(6, 'Monts des Arts', 'Le jardin du Mont des Arts est situé en contrebas de la place Royale, il assure une transition verte entre le haut et le bas de la ville, entre la place Royale et la Grand-Place qu’on retrouve dans le centre historique de Bruxelles.', 'https://goo.gl/maps/qDzMA4udWPUC1ucm8', 'assets\\images\\place\\montDesArts.jpg'),
(7, 'Château Royal Laeken ', 'Résidence du roi des Belges, le château intègre le vaste domaine royal de Laeken, qui atteindra 186 hectares à son apogée !\r\nÀ la fin du 18e siècle, quelques années avant la Révolution française, le couple autrichien qui est nommé gouverneur général des Pays-Bas décide de se construire une nouvelle résidence d’été : le château de Schoonenberg (littéralement, « Beau Mont »), ancêtre du château de Laeken.', 'https://goo.gl/maps/cQRYvZz2KDwnQghXA', 'assets\\images\\place\\ChâteauRoyalLaeken.jpg'),
(8, 'Palais de Justice', 'Le Palais de justice de Bruxelles est un imposant bâtiment de style éclectique d\'inspiration gréco-romaine situé sur la plus grande place de Bruxelles, la place Poelaert. D\'une surface au sol de 26 000 m2, il est plus vaste que la Basilique Saint-Pierre de Rome. ', 'https://goo.gl/maps/quTGYxN3VWjYQWyAA', 'assets\\images\\place\\plaisDeJustice2.jpg'),
(9, 'Atomium', 'L’Atomium est un monument de Bruxelles, en Belgique, construit à l\'occasion de l\'Exposition universelle de 1958 et représentant la maille conventionnelle du cristal de fer (structure cubique centrée) agrandie 165 milliards de fois.', 'https://g.page/atomium-brussels?share', 'assets\\images\\place\\atomium.jpg'),
(10, 'Basilique de Koekelberg', 'La basilique du Sacré-Cœur (familièrement appelée basilique de Koekelberg, car sise sur le plateau de Koekelberg), est un édifice religieux catholique situé à cheval sur les communes de Koekelberg et de Ganshoren,\r\ndans la Région bruxelloise en Belgique. ', 'https://goo.gl/maps/DkDQDeCLvUxA3YLJA', 'assets\\images\\place\\basilique.jpg'),
(11, 'Bourse', 'Érigé à Bruxelles sur le boulevard Anspach entre 1868 et 1873 d’après les plans de l\'architecte Léon-Pierre Suys, le bâtiment de la Bourse de Bruxelles ou la Bourse (en néerlandais : Beurs van Brussel ou de Beurs) s’inscrit dans le programme d’assainissement et d’embellissement de la ville,\r\ndu voûtement de la Senne et de la création des boulevards du centre. ', 'https://goo.gl/maps/pMQTGBYdAATHrNry9', 'assets\\images\\place\\bourse.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `poi_avis`
--

CREATE TABLE `poi_avis` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` varchar(50) NOT NULL,
  `id_poi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `poi_div`
--

CREATE TABLE `poi_div` (
  `id` int(11) NOT NULL,
  `id_poi` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url_img` varchar(500) NOT NULL,
  `url_div` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poi_div`
--

INSERT INTO `poi_div` (`id`, `id_poi`, `title`, `url_img`, `url_div`) VALUES
(1, 1, 'Brussels Beer Box', './assets/images/bar/BrusselsBeerBox.jpg', 'Brussels Beer Box, Eikstraat 1, 1000 Brussel'),
(2, 1, 'Poechenellekelder', './assets/images/bar/Poechenellekelder.jpeg', 'https://poechenellekelder.be/fr'),
(3, 1, 'The Blue Restaurant', './assets/images/bar/TheBlueRestaurant.jpg', 'The Blue Restaurant , Kaasmarkt 18, 1000 Brussel'),
(4, 2, 'Le Cercueil', './assets/images/bar/Le Cercueil.png', 'https://fr-fr.facebook.com/barlecercueil/'),
(5, 2, 'Hard Rock Cafe ', './assets/images/bar/hard Rock Cafe.jpeg', 'https://www.hardrockcafe.com/location/brussels/'),
(6, 2, 'The Sister Brussels Café', 'assets\\images\\restaurant\\the sister.jpg', 'https://www.thesistercafe-brussels.com/'),
(7, 4, 'Le Café Floréo', './assets/images/bar/floréo.jpg', 'https://cafefloreo.be/'),
(8, 4, 'Pasta divina', './assets/image/restaurant/pasta-divina.jpg', 'https://www.pastadivina.be/'),
(9, 5, 'La maison Cauchie', './assets/images/A faire/Maison-Cauchie.jpg', 'https://cauchie.be/fr/home'),
(10, 5, 'Musée des arts & Histoire', './assets/images/A faire/Musée arts & histoire.jpg', 'https://www.artandhistory.museum/fr'),
(11, 5, 'Africa museum', './assets/images/A faire/Afrique-museum.jpg', 'https://www.africamuseum.be/fr'),
(12, 6, 'Coco Donuts', 'assets\\images\\restaurant\\Coco-donutsjpg.jpg', 'https://www.instagram.com/cocodonutsbrussels/?hl=fr'),
(13, 6, 'Pois Chiche', './assets/images/restaurant/Pois-Chiche.jpg', 'https://www.instagram.com/poischichebrussels/'),
(14, 6, 'Chemistry and botanic\'s', './assets/images/bar/chemistry-botanics.jpg', 'https://www.instagram.com/chemistrybotanics/'),
(15, 7, 'L\'Orangerie', './assets/images/A faire/L\'orangerie.jpg', 'https://www.visit.brussels/fr/visiteurs/venue-details.L-orangerie-Du-Parc-D-egmont.260996'),
(16, 7, 'Serre Royal de Laeken:', './assets/images/A faire/Serre-royal.jpg', 'https://www.monarchie.be/fr/patrimoine/serres-royales-de-laeken'),
(17, 7, 'Design museum brussels', './assets/images/A faire/design museum.jpg', 'https://designmuseum.brussels/'),
(18, 8, 'La Grande Roue', './assets/images/A faire/grande-roue.jpg', 'https://www.bruxelles.be/la-grande-roue-place-poelaert'),
(19, 8, 'Buddy Buddy', './assets/images/restaurant/Buddy.jpg', 'https://www.instagram.com/buddybuddy/?hl=fr'),
(20, 8, 'Impérial Premium bar', './assets/images/bar/Impérial-Premium-bar.jpg', 'https://www.instagram.com/limperialpremiumbar/?hl=fr'),
(21, 9, 'Atomium Restaurant', './assets/images/restaurant/atomium-resto.jpg', 'https://www.atomiumrestaurant.be/?utm_source=google&utm_medium=organic&utm_campaign=MyBusiness'),
(22, 9, 'Atomium-expo', './assets/images/A faire/atomium-expo.jpg', 'https://atomium.be/home/Index?lang=fr&gclid=EAIaIQobChMI8oaPx7vs-gIV25BoCR3Z9gFBEAAYASAAEgIDe_D_BwE'),
(23, 9, 'La Petite Fourchette', './assets/images/restaurant/laPetiteFourchette.jpg', 'https://www.lapetitefourchette.be/'),
(24, 10, 'Village du chocolat', './assets/images/A faire/village-chocolat.jpg', 'https://www.belgianchocolatevillage.be/'),
(25, 10, 'Parc Elisabeth', './assets/images/A faire/parcElisabeth.jpg', 'https://www.koekelberg.be/w/index.php?cont=3016&lgn=1'),
(26, 10, 'Bruneau', './assets/images/restaurant/Bruneau.jpg', 'https://maximemaziers.be/'),
(27, 11, 'Le floréo', './assets/images/bar/floréo.jpg', 'https://cafefloreo.be/'),
(28, 11, 'Kaffei', './assets/images/restaurant/Kaffei.jpg', 'https://kafeidansaert.eatbu.com/?lang=fr'),
(29, 11, 'Life is beautiful', './assets/images/bar/lifeIsBeautifull.jpg', 'https://www.instagram.com/libcocktailbar/?igshid=YmMyMTA2M2Y%3D'),
(31, 3, 'Musée Extrême Orient', './assets/images/A faire/muséeExtremeOrient.jpg', 'https://www.kmkg-mrah.be/fr/musees-dextreme-orient'),
(32, 3, 'La villa Bantou', './assets/images/restaurant/LaVillaBantou.jpg', 'https://www.instagram.com/la_villa_bantou_restaurant/'),
(33, 3, 'Fontaine de Neptune', './assets/images/A faire/fontaineDeNeptune.jpg', 'https://monument.heritage.brussels/fr/buildings/39528'),
(34, 4, 'CHEZWaWa café', './assets/images/restaurant/CHEZWaWa.jpg', 'https://chezwawa.com/');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirmPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `confirmPassword`) VALUES
(1, 'Soumaya', 'soumaya@gmail.com', 'Soumaya123*', 'Soumaya123*');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_userr` (`id_user`);

--
-- Indexes for table `poi`
--
ALTER TABLE `poi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poi_avis`
--
ALTER TABLE `poi_avis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user` (`id_user`),
  ADD KEY `fk_id_poi` (`id_poi`);

--
-- Indexes for table `poi_div`
--
ALTER TABLE `poi_div`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_poi_div` (`id_poi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `poi`
--
ALTER TABLE `poi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `poi_avis`
--
ALTER TABLE `poi_avis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `poi_div`
--
ALTER TABLE `poi_div`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `fk_id_userr` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poi_avis`
--
ALTER TABLE `poi_avis`
  ADD CONSTRAINT `fk_id_poi` FOREIGN KEY (`id_poi`) REFERENCES `poi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poi_div`
--
ALTER TABLE `poi_div`
  ADD CONSTRAINT `fk_id_poi_div` FOREIGN KEY (`id_poi`) REFERENCES `poi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
