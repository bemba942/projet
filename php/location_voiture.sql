-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 20 Novembre 2023 à 16:25
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `location_voiture`
--

-- --------------------------------------------------------

--
-- Structure de la table `tables_clients`
--

CREATE TABLE IF NOT EXISTS `tables_clients` (
  `cni` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `num_permis` varchar(50) NOT NULL,
  PRIMARY KEY (`cni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tables_clients`
--

INSERT INTO `tables_clients` (`cni`, `nom`, `prenom`, `date_naissance`, `adresse`, `num_permis`) VALUES
('12A', 'kebe', 'bemba', '0000-00-00', 'rue gabriel peri', '9425000123'),
('12B', 'upamecano', 'dayo', '0000-00-00', 'rue des martinets', '12300123');

-- --------------------------------------------------------

--
-- Structure de la table `table_location`
--

CREATE TABLE IF NOT EXISTS `table_location` (
  `code_location` varchar(50) NOT NULL,
  `date_location` date NOT NULL,
  `prix_jour` int(11) NOT NULL,
  `duree` int(11) NOT NULL,
  `caution` int(11) NOT NULL,
  `code_client` varchar(50) NOT NULL,
  `immatriculation` varchar(50) NOT NULL,
  PRIMARY KEY (`code_location`),
  KEY `code_client` (`code_client`),
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table_location`
--


-- --------------------------------------------------------

--
-- Structure de la table `table_voiture`
--

CREATE TABLE IF NOT EXISTS `table_voiture` (
  `immatriculation` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `prix_achat` int(11) NOT NULL,
  `marque` varchar(50) NOT NULL,
  `couleur` varchar(50) NOT NULL,
  `nbre_porte` int(11) NOT NULL,
  `carburant` int(11) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `boite_vitesse` varchar(50) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table_voiture`
--

INSERT INTO `table_voiture` (`immatriculation`, `model`, `prix_achat`, `marque`, `couleur`, `nbre_porte`, `carburant`, `kilometrage`, `boite_vitesse`) VALUES
('AM-257-EA', 'R8', 250000, 'audi', 'noir', 5, 0, 25300, 'auto'),
('FL-120-EP', 'octavia', 30000, 'skoda', 'noir', 5, 0, 150000, 'manuelle');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `table_location`
--
ALTER TABLE `table_location`
  ADD CONSTRAINT `table_location_ibfk_2` FOREIGN KEY (`code_client`) REFERENCES `tables_clients` (`cni`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `table_location_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `table_voiture` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
