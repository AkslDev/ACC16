-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 16 Mars 2017 à 15:16
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
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `pp` mediumtext NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `membres`
--

INSERT INTO `membres` (`id`, `email`, `mdp`, `prenom`, `nom`, `grade`, `pp`, `token`) VALUES
(1, 'admin@admin.com', 'c3a309d9403f16a12fd81aa5921ab654f345c36071d9a85ca750e0a76a40ce35', 'Pierre', 'Saigot', 1, 'https://cloudinary-a.akamaihd.net/hopwork/image/upload/w_360,h_340,c_thumb,g_auto/hzsf6leoa5all0dw9vms.jpg', '1D53A21E5AAEBDB3'),
(3, 'sdeslandesonetoo@yahoo.fr', 'c3a309d9403f16a12fd81aa5921ab654f345c36071d9a85ca750e0a76a40ce35', 'Stéphane', 'Deslandes', 1, 'http://www.happyview.fr.s0.frz.io/design/images/bandeau_new/photos/vue-homme.jpg?frz-v398', 'F2E44CBBBC1F9F15');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
