DROP DATABASE IF EXISTS acc16;

--
-- Base de données :  `acc16`
--
CREATE DATABASE `acc16`;

use `acc16`;

-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 29 Mars 2017 à 04:16
-- Version du serveur :  10.1.16-MariaDB
-- Version de PHP :  7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `acc16`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `pp` mediumtext NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `email`, `mdp`, `prenom`, `nom`, `pp`, `token`) VALUES
(1, 'admin@admin.com', 'c3a309d9403f16a12fd81aa5921ab654f345c36071d9a85ca750e0a76a40ce35', 'Pierre', 'Saigot', 'https://cloudinary-a.akamaihd.net/hopwork/image/upload/w_360,h_340,c_thumb,g_auto/hzsf6leoa5all0dw9vms.jpg', '1D53A21E5AAEBDB3'),
(3, 'sdeslandesonetoo@yahoo.fr', 'c3a309d9403f16a12fd81aa5921ab654f345c36071d9a85ca750e0a76a40ce35', 'Stéphane', 'Deslandes', 'http://www.happyview.fr.s0.frz.io/design/images/bandeau_new/photos/vue-homme.jpg?frz-v398', 'F2E44CBBBC1F9F15');

-- --------------------------------------------------------

--
-- Structure de la table `categ`
--

CREATE TABLE `categ` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `nom_btn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categ`
--

INSERT INTO `categ` (`id`, `nom`, `nom_btn`) VALUES
(1, 'Préparations', 'btn_prepa'),
(2, 'Console - Tableau de bord', 'btn_console'),
(3, 'Mobilier - Aménagement - Cellule |', 'btn_mob'),
(4, 'Accessoires Intérieurs |', 'btn_acc_int'),
(5, 'Suspensions', 'btn_susp'),
(6, 'Sécurité', 'btn_secu'),
(7, 'Protections |', 'btn_prot'),
(8, 'Toit - Galerie |', 'btn_toit'),
(9, 'Portage |', 'btn_port'),
(10, 'Réservoirs', 'btn_reserv'),
(11, 'Sticker', 'btn_sticker'),
(12, 'Pick-up', 'btn_pickup'),
(13, 'Accessoires - RAID', 'btn_ac_raid'),
(14, 'Gamme - OFF-ROAD', 'btn_gamme_or'),
(15, 'Gamme - Vision-X', 'btn_gamme_vx'),
(16, 'Gamme - Front Runner', 'btn_gamme_fr'),
(17, 'Gamme - Bearmach', 'btn_gamme_bm');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `date_commande` varchar(255) NOT NULL,
  `produit_commande` varchar(255) NOT NULL,
  `moyen_paiement` varchar(255) NOT NULL,
  `token_acheteur` varchar(255) NOT NULL,
  `numero_tracking` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`id`, `date_commande`, `produit_commande`, `moyen_paiement`, `token_acheteur`, `numero_tracking`, `status`) VALUES
(1, '1490265026', 'Poignée P12FD45 || Rétro P12FD423R', 'Paypal', '19cd9286eccb22f19ed64949a0e96d07e215194c', '8G47146702719', 3),
(2, '1490265026', 'Poignée P12FD45 || TEST1 ', 'cb', '19cd9286eccb22f19ed64949a0e96d07e215194c', '8G47146702711', 1),
(3, '1490278274', 'DOUBDINPUMAT || KitEau47L ', 'mastercard', '19cd9286eccb22f19ed64949a0e96d07e215194c', '8G47146703054', 2),
(4, '1490265026', 'Poignée P12FD45 || TEST1 ', 'cb', '19cd9286eccb22f19ed64949a0e96d07e215194c', '8G47146702711', 1),
(5, '1490265026', 'Poignée P12FD45 || TEST1 ', 'cb', '19cd9286eccb22f19ed64949a0e96d07e215194c', '8G47146702711', 0),
(6, '1490265026', 'Poignée P12FD4', 'Virement bancaire', '19cd9286eccb22f19ed64949a0e96d07e215444c', '8G47146702743', 0);

-- --------------------------------------------------------

--
-- Structure de la table `galerie`
--

CREATE TABLE `galerie` (
  `id` int(11) NOT NULL,
  `nom_img` varchar(255) NOT NULL,
  `url_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `galerie`
--

INSERT INTO `galerie` (`id`, `nom_img`, `url_img`) VALUES
(1, 'Image 1', 'img/galerie/image-1.png'),
(2, 'Image 2', 'img/galerie/image-2.png'),
(3, 'Image 3', 'img/galerie/image-3.png'),
(4, 'Image 4', 'img/galerie/image-4.png'),
(5, 'Image 5 ', 'img/galerie/image-5.png'),
(6, 'Image 6 ', 'img/galerie/image-6.png'),
(7, 'Image 7 ', 'img/galerie/image-7.png'),
(8, 'Image 8 ', 'img/galerie/image-8.png'),
(9, 'Image 9 ', 'img/galerie/image-9.png'),
(10, 'Image 10', 'img/galerie/image-10.png'),
(11, 'Image 11', 'img/galerie/image-11.png'),
(12, 'Image 12', 'img/galerie/image-12.png'),
(13, 'Image 13', 'img/galerie/image-13.png'),
(14, 'Image 14', 'img/galerie/image-14.png'),
(15, 'Image 15 ', 'img/galerie/image-15.png'),
(16, 'Image 16', 'img/galerie/image-16.png');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `second_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`id`, `first_name`, `second_name`, `email`, `pass`, `phone`, `adress`, `birthday`, `token`) VALUES
(1, 'Pierre', 'Saigot', 'contact@pierre-saigot.com', 'db36b5795047c85cc3bd3718cd53ea4fdae74a9f85cc86a12a3e48e0ac02a0b3', '0659184420', '10 RUE DU MOULIN LE PERRAY EN YVELINES 78610 ', '1999-10-13', '772284f89beb4c9b9956855b9cd3b1cb038293a6');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `nom_produit` varchar(255) NOT NULL,
  `prix` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `categories` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`id`, `nom_produit`, `prix`, `stock`, `image`, `description`, `categories`) VALUES
(1, 'Aménagement Frigo/Tiroir/Coffre/Réservoir - Defender 90/110', 2481, 1, 'img/boutique/product/thump/photo2.png', 'Pour exemple ce mobilier réalisé dans le but d''avoir un plancher plat pour pouvoir dormir occasionnellement en rabattant les sièges avant (donc mobilier à hauteur de l''arrêt de charge), de pouvoir s''ouvrir afin de stocker du matériel et d''accueillir notre gamme de réservoir, 47 ou 70L mais également un Frigo CDF35 mais également 2 tiroirs.', 'Mobilier'),
(2, 'Aménagement Tiroir/Coffre - Defender 90/110', 2088, 1, 'img/boutique/product/thump/photo3.png', 'Pour exemple ce mobilier réalisé dans le but d''avoir un plancher plat pour pouvoir dormir occasionnellement en rabattant les sièges avant (donc mobilier à hauteur de l''arrêt de charge), de pouvoir s''ouvrir afin de stocker du matériel et d''accueillir notre gamme de réservoir, 47 ou 70L mais également un Frigo CDF35 mais également 2 tiroirs.\r\n', 'mobilier'),
(3, 'Volant Bois ACC16 36 ou 48 cannelures', 295, 1, 'img/boutique/product/thump/photo4.png', 'Ces volants superbement réalisé de diamètre 38 cms utilise uniquement des matériaux de qualité supérieure , du bois de hêtre et de rivets pleins et poli pour un fini de voiture classique.??Nous fournissons ces volants en kit complet avec un moyeu Chrome et le centre avec notre logo noir et chromé. Le kit comprend tous les boulons, écrous et rondelles raccords.??Le 36 cannelures conviendra: \r\n1998 à 2007. Seront également compatibles avec tous les Defender précédents de la date de lancement jusqu''à 1993.\r\n', 'acc-interieurs'),
(4, 'Housse de sièges - Defender', 295, 1, 'img/boutique/product/thump/photo5.png', 'Redonnez un coup de jeune à votre intérieur avec ces housses de sièges de superbe qualité qui viendront remplacer vos housses abîmées et redonnerons un aspect neuf à votre intérieur??Disponible en 3 couleurs, Gris avec surpiqûre blanche, Noir avec surpiqûre blanche ou enfin Noir avec surpiqûre orange, ??Pour tout les Defender de 1989 à 2007.??Comprends les appuis tête ainsi que rangement au dos.??Similicuir de vinyle souple et lune couche de revêtement en mousse intérieure.\r\n', 'acc-interieur'),
(5, 'Pare choc - TOYOTA KDJ90-95', 740, 1, 'img/boutique/product/thump/photo11.png', 'Cet accessoire est le résultat d'' une recherche méticuleuse et d''un nouveau design , pour ne pas mentionner les spécifications techniques requises d''un pare-chocs , robuste , une plus grande résistance , angles d'' attaque, prêt pour l''installation d''un treuil .??Déformable en cas de choc violent pour éviter d''endommager le cadre de votre Toyota Land Cruiser 90-95 acier Fe360 peinture texturée??L''installation ne nécessite pas de modification à votre Toyota Land Cruiser , facile à assembler .\r\n', 'protection'),
(6, 'Pare choc avant - MERCEDES G463 TYPE 1 ', 684, 1, 'img/boutique/product/thump/photo12.png', 'Pare choc avant se reprenant sur les points d''ancrage, support de treuil (Treuil non fourni)\r\n', 'protections'),
(7, 'Barre de toit - PATROL Y60/Y61\r\n', 139, 1, 'img/boutique/product/thump/photo13.png', 'Barre de toit NISSAN Y60 OU Y61 (Entourer le véhicule) - Acier Zinguage blanc \r\npour les pattes et brides, Aluminium section 60x30mm avec rainure pour mise en place d''écrou ', 'toit'),
(8, 'Hard top complet - Defender 130', 9850, 1, 'img/boutique/product/thump/photo16.png', 'Un ensemble esthétique, dans la ligne du véhicule, compact, ouvrant sur l''intérieur en option, literie relevable, aménagement intérieur, chauffage, réserve d''eau, isolation, etc...', 'toit'),
(9, 'Portage - Defender 90/110', 2758, 1, 'img/boutique/product/thump/photo17.png', 'Panneau de remplissage, toit, coté fixe, panneau de fermeture avant et porte arrière (avec système fermeture type ridelle basse Defender, joint, charnière)', 'portage'),
(10, 'Aménagement Frigo/Tiroir/Coffre/Réservoir - Defender 90/110', 2481, 1, 'img/boutique/product/thump/photo2.png', 'Pour exemple ce mobilier réalisé dans le but d''avoir un plancher plat pour pouvoir dormir occasionnellement en rabattant les sièges avant (donc mobilier à hauteur de l''arrêt de charge), de pouvoir s''ouvrir afin de stocker du matériel et d''accueillir notre gamme de réservoir, 47 ou 70L mais également un Frigo CDF35 mais également 2 tiroirs.', 'Mobilier'),
(11, 'Aménagement Tiroir/Coffre - Defender 90/110', 2088, 1, 'img/boutique/product/thump/photo3.png', 'Pour exemple ce mobilier réalisé dans le but d''avoir un plancher plat pour pouvoir dormir occasionnellement en rabattant les sièges avant (donc mobilier à hauteur de l''arrêt de charge), de pouvoir s''ouvrir afin de stocker du matériel et d''accueillir notre gamme de réservoir, 47 ou 70L mais également un Frigo CDF35 mais également 2 tiroirs.\r\n', 'mobilier'),
(12, 'Volant Bois ACC16 36 ou 48 cannelures', 295, 1, 'img/boutique/product/thump/photo4.png', 'Ces volants superbement réalisé de diamètre 38 cms utilise uniquement des matériaux de qualité supérieure , du bois de hêtre et de rivets pleins et poli pour un fini de voiture classique.??Nous fournissons ces volants en kit complet avec un moyeu Chrome et le centre avec notre logo noir et chromé. Le kit comprend tous les boulons, écrous et rondelles raccords.??Le 36 cannelures conviendra: \r\n1998 à 2007. Seront également compatibles avec tous les Defender précédents de la date de lancement jusqu''à 1993.\r\n', 'acc-interieurs'),
(13, 'Housse de sièges - Defender', 295, 1, 'img/boutique/product/thump/photo5.png', 'Redonnez un coup de jeune à votre intérieur avec ces housses de sièges de superbe qualité qui viendront remplacer vos housses abîmées et redonnerons un aspect neuf à votre intérieur??Disponible en 3 couleurs, Gris avec surpiqûre blanche, Noir avec surpiqûre blanche ou enfin Noir avec surpiqûre orange, ??Pour tout les Defender de 1989 à 2007.??Comprends les appuis tête ainsi que rangement au dos.??Similicuir de vinyle souple et lune couche de revêtement en mousse intérieure.\r\n', 'acc-interieur'),
(14, 'Pare choc - TOYOTA KDJ90-95', 740, 1, 'img/boutique/product/thump/photo11.png', 'Cet accessoire est le résultat d'' une recherche méticuleuse et d''un nouveau design , pour ne pas mentionner les spécifications techniques requises d''un pare-chocs , robuste , une plus grande résistance , angles d'' attaque, prêt pour l''installation d''un treuil .??Déformable en cas de choc violent pour éviter d''endommager le cadre de votre Toyota Land Cruiser 90-95 acier Fe360 peinture texturée??L''installation ne nécessite pas de modification à votre Toyota Land Cruiser , facile à assembler .\r\n', 'protection'),
(15, 'Pare choc avant - MERCEDES G463 TYPE 1 ', 684, 1, 'img/boutique/product/thump/photo12.png', 'Pare choc avant se reprenant sur les points d''ancrage, support de treuil (Treuil non fourni)\r\n', 'protections'),
(16, 'Barre de toit - PATROL Y60/Y61\r\n', 139, 1, 'img/boutique/product/thump/photo13.png', 'Barre de toit NISSAN Y60 OU Y61 (Entourer le véhicule) - Acier Zinguage blanc \r\npour les pattes et brides, Aluminium section 60x30mm avec rainure pour mise en place d''écrou ', 'toit'),
(17, 'Hard top complet - Defender 130', 9850, 1, 'img/boutique/product/thump/photo16.png', 'Un ensemble esthétique, dans la ligne du véhicule, compact, ouvrant sur l''intérieur en option, literie relevable, aménagement intérieur, chauffage, réserve d''eau, isolation, etc...', 'toit'),
(18, 'Portage - Defender 90/110', 2758, 1, 'img/boutique/product/thump/photo17.png', 'Panneau de remplissage, toit, coté fixe, panneau de fermeture avant et porte arrière (avec système fermeture type ridelle basse Defender, joint, charnière)', 'portage');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categ`
--
ALTER TABLE `categ`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `galerie`
--
ALTER TABLE `galerie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `categ`
--
ALTER TABLE `categ`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `galerie`
--
ALTER TABLE `galerie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
