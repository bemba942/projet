-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 04 Décembre 2023 à 16:15
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `festival_musique`
--

-- --------------------------------------------------------

--
-- Structure de la table `musicien`
--

CREATE TABLE IF NOT EXISTS `musicien` (
  `Num_mus` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `#Num_Rep` int(11) NOT NULL,
  PRIMARY KEY (`Num_mus`),
  KEY `#Num_Rep` (`#Num_Rep`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `musicien`
--


-- --------------------------------------------------------

--
-- Structure de la table `programmer`
--

CREATE TABLE IF NOT EXISTS `programmer` (
  `id_programmation` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Num_Rep` int(11) NOT NULL,
  `tarif` int(11) NOT NULL,
  PRIMARY KEY (`id_programmation`),
  KEY `#Num_Rep` (`Num_Rep`),
  KEY `Num_Rep` (`Num_Rep`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `programmer`
--


-- --------------------------------------------------------

--
-- Structure de la table `representation`
--

CREATE TABLE IF NOT EXISTS `representation` (
  `Num_Rep` int(11) NOT NULL,
  `titre_Rep` varchar(50) NOT NULL,
  `lieu` varchar(50) NOT NULL,
  PRIMARY KEY (`Num_Rep`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `representation`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `musicien`
--
ALTER TABLE `musicien`
  ADD CONSTRAINT `musicien_ibfk_1` FOREIGN KEY (`#Num_Rep`) REFERENCES `representation` (`Num_Rep`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `representation`
--
ALTER TABLE `representation`
  ADD CONSTRAINT `representation_ibfk_1` FOREIGN KEY (`Num_Rep`) REFERENCES `programmer` (`Num_Rep`) ON DELETE CASCADE ON UPDATE CASCADE;
#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Pays
#------------------------------------------------------------

CREATE TABLE Pays(
        Id_Pays           Int  Auto_increment  NOT NULL ,
        Nom               Varchar (50) NOT NULL ,
        Nombre_d_habitant Int NOT NULL ,
        Superficie        Int NOT NULL
  ,CONSTRAINT Pays_PK PRIMARY KEY (Id_Pays)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Marque
#------------------------------------------------------------

CREATE TABLE Marque(
        Id_marque Int  Auto_increment  NOT NULL ,
        Nom       Varchar (50) NOT NULL
  ,CONSTRAINT Marque_PK PRIMARY KEY (Id_marque)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Agence
#------------------------------------------------------------

CREATE TABLE Agence(
        Id_Agence   Int  Auto_increment  NOT NULL ,
        Nom         Varchar (50) NOT NULL ,
        Nb_employes Int NOT NULL ,
        Id_Pays     Int NOT NULL
  ,CONSTRAINT Agence_PK PRIMARY KEY (Id_Agence)

  ,CONSTRAINT Agence_Pays_FK FOREIGN KEY (Id_Pays) REFERENCES Pays(Id_Pays)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Modèle
#------------------------------------------------------------

CREATE TABLE Modele(
        Id_Modele    Int  Auto_increment  NOT NULL ,
        Denomination Varchar (50) NOT NULL ,
        Puissance    Int NOT NULL
  ,CONSTRAINT Modele_PK PRIMARY KEY (Id_Modele)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Client
#------------------------------------------------------------

CREATE TABLE Client(
        Id_Client    Int  Auto_increment  NOT NULL ,
        Nom          Varchar (50) NOT NULL ,
        Adresse      Varchar (50) NOT NULL ,
        Code_postale Int NOT NULL ,
        Ville        Varchar (50) NOT NULL
  ,CONSTRAINT Client_PK PRIMARY KEY (Id_Client)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Type
#------------------------------------------------------------

CREATE TABLE Type(
        Id_Type Int  Auto_increment  NOT NULL ,
        Libelle Varchar (50) NOT NULL
  ,CONSTRAINT Type_PK PRIMARY KEY (Id_Type)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Categorie
#------------------------------------------------------------

CREATE TABLE Categorie(
        Id_Categorie Int  Auto_increment  NOT NULL ,
        Libelle      Varchar (50) NOT NULL
  ,CONSTRAINT Categorie_PK PRIMARY KEY (Id_Categorie)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Vehicule
#------------------------------------------------------------

CREATE TABLE Vehicule(
        Id_Vehicule     Int  Auto_increment  NOT NULL ,
        Immatriculation Varchar (50) NOT NULL ,
        Age             Int NOT NULL ,
        Etat            Varchar (50) NOT NULL ,
        Id_marque       Int NOT NULL ,
        Id_Agence       Int NOT NULL ,
        Id_Modele       Int NOT NULL ,
        Id_Type         Int NOT NULL ,
        Id_Categorie    Int NOT NULL
  ,CONSTRAINT Vehicule_PK PRIMARY KEY (Id_Vehicule)

  ,CONSTRAINT Vehicule_Marque_FK FOREIGN KEY (Id_marque) REFERENCES Marque(Id_marque)
  ,CONSTRAINT Vehicule_Agence0_FK FOREIGN KEY (Id_Agence) REFERENCES Agence(Id_Agence)
  ,CONSTRAINT Vehicule_Modele1_FK FOREIGN KEY (Id_Modele) REFERENCES Modele(Id_Modele)
  ,CONSTRAINT Vehicule_Type2_FK FOREIGN KEY (Id_Type) REFERENCES Type(Id_Type)
  ,CONSTRAINT Vehicule_Categorie3_FK FOREIGN KEY (Id_Categorie) REFERENCES Categorie(Id_Categorie)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ...a loué...
#------------------------------------------------------------

CREATE TABLE a_loue(
        Id_Vehicule     Int NOT NULL ,
        Id_Client       Int NOT NULL ,
        Date_de_retrait Date NOT NULL ,
        Date_de_retour  Date NOT NULL
  ,CONSTRAINT a_loue_PK PRIMARY KEY (Id_Vehicule,Id_Client)

  ,CONSTRAINT a_loue_Vehicule_FK FOREIGN KEY (Id_Vehicule) REFERENCES Vehicule(Id_Vehicule)
  ,CONSTRAINT a_loue_Client0_FK FOREIGN KEY (Id_Client) REFERENCES Client(Id_Client)
)ENGINE=InnoDB;

