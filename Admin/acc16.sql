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
-- Généré le :  Mer 29 Mars 2017 à 03:14
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
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
