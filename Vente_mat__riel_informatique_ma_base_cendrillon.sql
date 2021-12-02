-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 02 déc. 2021 à 12:36
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Vente_matériel_informatique`
--

-- --------------------------------------------------------

--
-- Structure de la table `Carte_graphique`
--

CREATE TABLE `Carte_graphique` (
  `Numero_inventaire` int(33) NOT NULL,
  `Adresse_ip` int(22) NOT NULL,
  `Type` varchar(11) NOT NULL,
  `Modele` varchar(55) NOT NULL,
  `Date_acquisition` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Carte_graphique`
--

INSERT INTO `Carte_graphique` (`Numero_inventaire`, `Adresse_ip`, `Type`, `Modele`, `Date_acquisition`) VALUES
(10, 195, 'DVI', 'Windows8', 29),
(11, 196, 'HDMI', 'Windows10', 30),
(12, 192, 'HDMI', 'Windows10', 22),
(15, 192, 'HDMI', 'Windows7', 3),
(23, 192, 'VGA', 'Windows10', 23),
(28, 190, 'VGA', 'Windows7', 9),
(43, 123, 'DVI', 'Windows8', 3),
(56, 126, 'VGA', 'Windows7', 14),
(59, 167, 'HDMI', 'Windows8', 8),
(76, 169, 'VGA', 'Windows7', 27);

-- --------------------------------------------------------

--
-- Structure de la table `Clients`
--

CREATE TABLE `Clients` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(22) NOT NULL,
  `Email` varchar(33) NOT NULL,
  `Nationnalité` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Clients`
--

INSERT INTO `Clients` (`Id`, `Nom`, `Email`, `Nationnalité`) VALUES
(1, 'Abakar', 'abakar@gmail.com', 'Camerounais'),
(2, 'Max', 'max@gmail.com', 'Congolais'),
(3, 'Astride', 'astride@gmail.com', 'Centrafricaine'),
(4, 'Wilfrid', 'wilfrig@gmail.com', 'gabonnais'),
(5, 'Jefferson', 'jefferson@gmail.com', 'centrafricain'),
(6, 'Gwladys', 'gwladys@gmail.com', 'centrafricaine'),
(7, 'Alphansine', 'alphansine@gmail.com', 'centrafricaine'),
(8, 'Debo', 'debo@gmail.com', 'kenyanne'),
(9, 'issa', 'issa@gmail.com', 'malien'),
(10, 'Sawda', 'sawda@gmail.com', 'tchadienne');

-- --------------------------------------------------------

--
-- Structure de la table `Dirigeant`
--

CREATE TABLE `Dirigeant` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(22) NOT NULL,
  `Email` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Dirigeant`
--

INSERT INTO `Dirigeant` (`Id`, `Nom`, `Email`) VALUES
(1, 'Trinidade', 'trinidade@gmail.com'),
(2, 'Léo', 'leo@gmail.com'),
(3, 'Emmanuella', 'emmanuella@gmail.com'),
(4, 'Elvice', 'elvice@gmail.com'),
(5, 'Noura', 'noura@gmail.com'),
(6, 'Moussa', 'moussa@gmail.com'),
(7, 'Janckson', 'janckson@gmail'),
(8, 'Maxwell', 'maxwell@gmail.com'),
(9, 'Adoum', 'adoum@gmail.com'),
(10, 'Bekas', 'bekas@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `Entreprise`
--

CREATE TABLE `Entreprise` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(22) NOT NULL,
  `Zone` varchar(33) NOT NULL,
  `Caractéristique` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Entreprise`
--

INSERT INTO `Entreprise` (`Id`, `Nom`, `Zone`, `Caractéristique`) VALUES
(1, 'Labellelune', 'Mardjandjaffak', 'Vente_matériel'),
(2, 'Natur_elle', 'Moursal', 'Vente_matériel'),
(3, 'Plazza', 'Dembe', 'Vente_matériel'),
(4, 'Firstlady', 'goudji', 'Vente_matériel'),
(5, 'Meandyou', 'Bangui', 'Vente_matériel'),
(6, 'Hirondelle', 'Ndjamena', 'Vente_matériel'),
(7, 'Natur_elle', 'Dinguessou', 'Vente_matériel'),
(8, 'Labellelune', 'Farcha', 'Vente_matériel'),
(9, 'Labelledenuits', 'Permise', 'Vente_matériel'),
(10, 'Hirondelle', 'Moursal', 'Vente_matériel');

-- --------------------------------------------------------

--
-- Structure de la table `Fournisseurs`
--

CREATE TABLE `Fournisseurs` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(33) NOT NULL,
  `Email` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Fournisseurs`
--

INSERT INTO `Fournisseurs` (`Id`, `Nom`, `Email`) VALUES
(1, 'Fermaud', 'fermaud@gmail.com'),
(2, 'Elvice', 'elvice@gmail.com'),
(3, 'Kevin', 'kevin@gmail.com'),
(4, 'Odette', 'odette@gmail.com'),
(5, 'Tina', 'tina@gmail.com'),
(6, 'Sylvain', 'sissou@gmail.com'),
(7, 'Me', 'me@gmail.com'),
(8, 'Haroune', 'haroune@gmail.com'),
(9, 'Tahir', 'tahir@gmail.com'),
(10, 'Moussa', 'moussa@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `Imprimante`
--

CREATE TABLE `Imprimante` (
  `Numero_inventaire` int(11) NOT NULL,
  `Adresse_ip` int(22) NOT NULL,
  `Type` varchar(33) NOT NULL,
  `Modele` varchar(44) NOT NULL,
  `Date_acquisition` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Imprimante`
--

INSERT INTO `Imprimante` (`Numero_inventaire`, `Adresse_ip`, `Type`, `Modele`, `Date_acquisition`) VALUES
(12, 186, 'Marguerite', 'Canon', 6),
(27, 198, 'Jet d\'encre', 'Samsung', 15),
(34, 345, 'Bulle d\'encre', 'Canon', 30),
(36, 876, 'Jet d\'encre', 'Samsung', 25),
(45, 195, 'bulle', 'Canon', 18),
(46, 567, 'Marguerite', 'Samsung', 9),
(67, 965, 'Laser', 'HP', 2),
(87, 165, 'Jet', 'HP', 24),
(98, 765, 'Laser', 'HP', 19),
(876, 3456, 'Marguerite', 'Samsung', 19);

-- --------------------------------------------------------

--
-- Structure de la table `Logiciel_anti_virus`
--

CREATE TABLE `Logiciel_anti_virus` (
  `Numero_inventaire` int(34) NOT NULL,
  `Adresse_ip` int(55) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Modele` varchar(11) NOT NULL,
  `Date_acquisition` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Logiciel_anti_virus`
--

INSERT INTO `Logiciel_anti_virus` (`Numero_inventaire`, `Adresse_ip`, `Type`, `Modele`, `Date_acquisition`) VALUES
(4, 164, 'Sécurité', 'AdwCleaner', 27),
(19, 756, 'Nauge', 'Avira', 22),
(42, 923, 'Sécurité', 'Avast', 31),
(86, 196, 'Autonome', 'Norton', 23),
(98, 245, 'Autonome', 'Panda', 17),
(432, 198, 'Autonome', 'Avira', 13),
(435, 890, 'Nuage', 'Avira', 10),
(586, 245, 'Autonome', 'Norton', 24),
(587, 346, 'Sécurité', 'Avast', 11),
(864, 896, 'Nuage', 'AdwCleaner', 19);

-- --------------------------------------------------------

--
-- Structure de la table `Matériels`
--

CREATE TABLE `Matériels` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(22) NOT NULL,
  `Date_vente` int(33) NOT NULL,
  `Heure_vente` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Matériels`
--

INSERT INTO `Matériels` (`Id`, `Nom`, `Date_vente`, `Heure_vente`) VALUES
(1, 'Ordinateur', 22, 14),
(2, 'Tablette', 12, 9),
(3, 'Lecteur', 24, 18),
(4, 'Imprimante', 14, 17),
(5, 'Lecteur', 19, 12),
(6, 'Tablette', 4, 17),
(7, 'Souris', 16, 16),
(8, 'Disquedur', 7, 9),
(9, 'Ordinateur', 6, 5),
(10, 'Tablette', 12, 18);

-- --------------------------------------------------------

--
-- Structure de la table `Ordinateur`
--

CREATE TABLE `Ordinateur` (
  `Numero_inventaire` int(11) NOT NULL,
  `Adresse_ip` int(22) NOT NULL,
  `Type` varchar(33) NOT NULL,
  `Modele` varchar(44) NOT NULL,
  `Date_acquisition` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Ordinateur`
--

INSERT INTO `Ordinateur` (`Numero_inventaire`, `Adresse_ip`, `Type`, `Modele`, `Date_acquisition`) VALUES
(2, 192, 'Portable', 'DELL', 15),
(3, 192, 'Bureau', 'Lenovo', 16),
(6, 192, 'Bureau', 'HP', 28),
(34, 786, 'Portable', 'DELL', 1),
(35, 678, 'Bureau', 'HP', 19),
(45, 345, 'Fixe', 'HP', 19),
(65, 176, 'Bureau', 'PB', 10),
(87, 987, 'Portable', 'DELL', 5),
(89, 976, 'Fixe', 'Lenovo', 26),
(456, 178, 'Portable', 'Lenovo', 28);

-- --------------------------------------------------------

--
-- Structure de la table `Personnel_entreprise`
--

CREATE TABLE `Personnel_entreprise` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(22) NOT NULL,
  `Adresse` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Personnel_entreprise`
--

INSERT INTO `Personnel_entreprise` (`Id`, `Nom`, `Adresse`) VALUES
(1, 'Abdraman', 'abdraman@gmail.com'),
(2, 'Fatma', 'fatma@gmail.com'),
(3, 'Olivia', 'olivia@gmail.com'),
(4, 'Nicaise', 'nicaise@gmail.com'),
(5, 'Cendy', 'cendy@gmail.com'),
(6, 'Maxime', 'maxime@gmail.com'),
(7, 'Florence', 'florence@gmail.com'),
(8, 'Brice', 'brice@gmail.com'),
(9, 'Liliane', 'liliane@gmail.com'),
(10, 'Kev', 'kevin@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `Processeur`
--

CREATE TABLE `Processeur` (
  `Numero_inventaire` int(11) NOT NULL,
  `Adresse_ip` int(22) NOT NULL,
  `Type` varchar(11) NOT NULL,
  `Modele` varchar(55) NOT NULL,
  `Date_acquisition` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Processeur`
--

INSERT INTO `Processeur` (`Numero_inventaire`, `Adresse_ip`, `Type`, `Modele`, `Date_acquisition`) VALUES
(34, 678, 'Pentium', 'Bureau', 16),
(65, 654, 'Pentium', 'Bureau', 7),
(93, 943, 'AMD', 'Bureau', 24),
(98, 297, 'AMD', 'Bureau', 15),
(234, 678, 'AMD', 'Bureau', 27),
(654, 275, 'POWERPC', 'Bureau', 19),
(678, 191, 'Pentium', 'Bureau', 3),
(687, 875, 'POWERPC', 'Bureau', 25),
(745, 197, 'AMD', 'Bureau', 18),
(879, 654, 'POWERPC', 'Bureau', 15);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Carte_graphique`
--
ALTER TABLE `Carte_graphique`
  ADD PRIMARY KEY (`Numero_inventaire`);

--
-- Index pour la table `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Dirigeant`
--
ALTER TABLE `Dirigeant`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Entreprise`
--
ALTER TABLE `Entreprise`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Fournisseurs`
--
ALTER TABLE `Fournisseurs`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Imprimante`
--
ALTER TABLE `Imprimante`
  ADD PRIMARY KEY (`Numero_inventaire`);

--
-- Index pour la table `Logiciel_anti_virus`
--
ALTER TABLE `Logiciel_anti_virus`
  ADD PRIMARY KEY (`Numero_inventaire`);

--
-- Index pour la table `Matériels`
--
ALTER TABLE `Matériels`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Ordinateur`
--
ALTER TABLE `Ordinateur`
  ADD PRIMARY KEY (`Numero_inventaire`);

--
-- Index pour la table `Personnel_entreprise`
--
ALTER TABLE `Personnel_entreprise`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Processeur`
--
ALTER TABLE `Processeur`
  ADD PRIMARY KEY (`Numero_inventaire`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
