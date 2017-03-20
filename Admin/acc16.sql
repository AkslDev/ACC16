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
-- Généré le :  Lun 20 Mars 2017 à 12:46
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
  `grade` int(11) NOT NULL,
  `pp` mediumtext NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `email`, `mdp`, `prenom`, `nom`, `grade`, `pp`, `token`) VALUES
(1, 'admin@admin.com', 'c3a309d9403f16a12fd81aa5921ab654f345c36071d9a85ca750e0a76a40ce35', 'Pierre', 'Saigot', 1, 'https://cloudinary-a.akamaihd.net/hopwork/image/upload/w_360,h_340,c_thumb,g_auto/hzsf6leoa5all0dw9vms.jpg', '1D53A21E5AAEBDB3'),
(3, 'sdeslandesonetoo@yahoo.fr', 'c3a309d9403f16a12fd81aa5921ab654f345c36071d9a85ca750e0a76a40ce35', 'Stéphane', 'Deslandes', 1, 'http://www.happyview.fr.s0.frz.io/design/images/bandeau_new/photos/vue-homme.jpg?frz-v398', 'F2E44CBBBC1F9F15');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `second_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`id`, `first_name`, `second_name`, `email`, `phone`, `adress`, `birthday`, `token`) VALUES
(1, 'Axel', 'Coquin', 'test@test.com', '+3365914837', '10 RUE DU PARIS 75003 PARIS', '10-01-1997', '3D848FE15649F2331362582ECF5C4'),
(3, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(4, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(5, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(6, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(7, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(8, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(9, 'Axel', 'Coquin', 'test@test.com', '+3365914837', '10 RUE DU PARIS 75003 PARIS', '10-01-1997', '3D848FE15649F2331362582ECF5C4'),
(10, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(11, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(12, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(13, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(14, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(15, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(16, 'Axel', 'Coquin', 'test@test.com', '+3365914837', '10 RUE DU PARIS 75003 PARIS', '10-01-1997', '3D848FE15649F2331362582ECF5C4'),
(17, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(18, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(19, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(20, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(21, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(22, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(23, 'Axel', 'Coquin', 'test@test.com', '+3365914837', '10 RUE DU PARIS 75003 PARIS', '10-01-1997', '3D848FE15649F2331362582ECF5C4'),
(24, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(25, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(26, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(27, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(28, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(29, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(30, 'Axel', 'Coquin', 'test@test.com', '+3365914837', '10 RUE DU PARIS 75003 PARIS', '10-01-1997', '3D848FE15649F2331362582ECF5C4'),
(31, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(32, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(33, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(34, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ'),
(35, 'Pierre', 'Saigot', 'test@test.com', '+3876789876567', '10 RUE DE NEMS 75001 PARIS', '10-10-1993', 'IDNJUDZNDZNDKJ');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
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
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
