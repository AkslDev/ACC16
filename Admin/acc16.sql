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
-- Généré le :  Mar 28 Mars 2017 à 22:45
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
(179, 'bhbyb', 'rejlu', 'ykcknakcfi', '', '00000000', 'fjudzjduz', '7Y73723', '97b42b6b47cda8954e8ab82f8f6e717d1b8aca2b'),
(180, 'kuprl', 'blbbl', 'eaymeidtsh', '', '00000000', 'fjudzjduz', '7Y73723', '07cd775baf07111c5d1c24a8b69ac091ae2b9623'),
(181, 'ymubr', 'bvuuc', 'luprjlgfpr', '', '00000000', 'fjudzjduz', '7Y73723', '68e79bc0eeb94d57863d7fbb781979e20cfd5a33'),
(182, 'casah', 'mufsb', 'pulrlstrps', '', '00000000', 'fjudzjduz', '7Y73723', '50f4c0803762ce5beb22c4ef57d6ea3ab1ac0549'),
(183, 'qwxkh', 'sbatk', 'lindrxwplw', '', '00000000', 'fjudzjduz', '7Y73723', '69f4305a1626719308358f85371ecbf7df23967e'),
(184, 'nrjsp', 'fkxsi', 'mqedynbasg', '', '00000000', 'fjudzjduz', '7Y73723', '97cce3c3363580425de7d150481c9ca86049122c'),
(185, 'walgn', 'gbskk', 'gsdyiscdtk', '', '00000000', 'fjudzjduz', '7Y73723', '09661b1f20b9dc5612e3a19740ae88d512eb3a2e'),
(186, 'ckpeu', 'lmtwv', 'gdlencxdbk', '', '00000000', 'fjudzjduz', '7Y73723', '35b64cddd962c06eebe15ee10ccac037ff6ffd23');

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
  `commentaire` varchar(255) NOT NULL
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
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
