-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 03 fév. 2025 à 07:55
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gef`
--

-- --------------------------------------------------------

--
-- Structure de la table `gef_gites`
--

DROP TABLE IF EXISTS `gef_gites`;
CREATE TABLE IF NOT EXISTS `gef_gites` (
  `id_gite` int NOT NULL AUTO_INCREMENT,
  `gite_nom` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `gite_adresse` text COLLATE utf8mb4_general_ci NOT NULL,
  `gite_cp` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `gite_ville` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `gite_pays` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  `id_type` int NOT NULL,
  `gite_lien` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `gite_photo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_gite`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `gef_gites`
--

INSERT INTO `gef_gites` (`id_gite`, `gite_nom`, `gite_adresse`, `gite_cp`, `gite_ville`, `gite_pays`, `id_type`, `gite_lien`, `gite_photo`) VALUES
(1, 'La roche bleu', '', '28100', 'Dreux', 'FR', 1, '', 'Product-1'),
(2, 'La roche verte', '', '28000', 'Chartres', 'FR', 2, '', 'Product-2'),
(3, 'Gîte Nature', '', '', '', '', 3, '', 'Product-3'),
(4, 'Gîte Familial', '', '', '', '', 4, '', 'Product-4'),
(5, 'Gîte Romantique', '', '', '', '', 5, '', 'Product-5'),
(6, 'Gîte Historique', '', '', '', '', 6, '', 'Product');

-- --------------------------------------------------------

--
-- Structure de la table `gef_types`
--

DROP TABLE IF EXISTS `gef_types`;
CREATE TABLE IF NOT EXISTS `gef_types` (
  `id_type` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `gef_types`
--

INSERT INTO `gef_types` (`id_type`, `type_name`) VALUES
(1, 'Standard'),
(2, 'Basique'),
(3, 'Confort'),
(4, 'Luxe'),
(5, 'Privé'),
(6, 'Authentique');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
