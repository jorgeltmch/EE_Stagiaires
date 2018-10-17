-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 17 Octobre 2018 à 08:09
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `ee_stagiaires`
--
CREATE DATABASE IF NOT EXISTS `ee_stagiaires` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ee_stagiaires`;

-- --------------------------------------------------------

--
-- Structure de la table `stagiaires`
--

CREATE TABLE IF NOT EXISTS `stagiaires` (
  `idStagiaire` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(80) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `noTel` varchar(20) NOT NULL,
  `ecole` varchar(100) DEFAULT NULL,
  `degre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idStagiaire`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=210 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
