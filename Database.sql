-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 07 déc. 2023 à 12:25
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_scolaire`
--
CREATE DATABASE IF NOT EXISTS `gestion_scolaire` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gestion_scolaire`;

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

CREATE TABLE `absence` (
  `id` int(11) NOT NULL,
  `seance` int(11) NOT NULL,
  `etudiant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `absence`
--

INSERT INTO `absence` (`id`, `seance`, `etudiant`) VALUES
(11, 32, 5),
(12, 32, 9);

-- --------------------------------------------------------

--
-- Structure de la table `anneeformation`
--

CREATE TABLE `anneeformation` (
  `AF` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `anneeformation`
--

INSERT INTO `anneeformation` (`AF`) VALUES
('2022/2023');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `matricule` varchar(50) NOT NULL,
  `cin` varchar(50) NOT NULL,
  `dateN` date NOT NULL,
  `lieuN` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `etat` tinyint(1) NOT NULL,
  `AF` varchar(50) NOT NULL,
  `groupe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `matricule`, `cin`, `dateN`, `lieuN`, `adresse`, `telephone`, `nom`, `prenom`, `email`, `etat`, `AF`, `groupe`) VALUES
(5, 'J130050563', 'AA90006', '2001-03-30', '', '', '', 'EL ABDOUNI', 'ABDERRAZZAQ', 'abdo@gmail.com', 1, '2022/2023', 27),
(6, 'J130050564', 'AA90005', '2000-03-30', '', '', '', 'BENEZZINE', 'ISSAM', 'issam@gmail.com', 1, '2022/2023', 27),
(7, 'J130050565', 'AA90004', '1999-03-24', '', '', '', 'HAZMIRI', 'YOUNES', 'YOUNES@gmail.com', 1, '2022/2023', 27),
(9, 'j10074947', 'A9099091', '2001-04-27', '', '', '', 'ESSITER', 'MOUAD', 'MOUAD@gmail.com', 1, '2022/2023', 27),
(10, 'j100749488', 'A9099098', '2001-04-27', '', '', '', 'BOUZID', 'ABDERRAHIM', 'BOUZID@gmail.com', 1, '2022/2023', 27),
(11, 'J18999999', 'A90909092', '2023-04-04', '', '', '', 'EL OUADANI', 'ABDELKARIM', 'ELOUADANI@gmail.com', 1, '2022/2023', 27),
(12, 'J1899999', 'A90909097', '2023-04-04', '', '', '', 'CHAOUKI', 'HAITAM', 'CHAOUKI@gmail.com', 1, '2022/2023', 27),
(13, 'J18999994', 'A90909095', '2023-04-04', '', '', '', 'ZAINOUN', 'AYMANE', 'ZAYNOUN@gmail.com', 1, '2022/2023', 27),
(14, 'J18999993', 'A90909093', '2023-04-04', '', '', '', 'MAKKAOUI', 'ZAKARIA', 'MAKKAOUI@gmail.com', 1, '2022/2023', 27),
(15, 'J18999992', 'A90909092', '2023-04-04', '', '', '', 'LAHRACHE', 'ABDELGHAFOR', 'LAHRACHE@gmail.com', 1, '2022/2023', 27);

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `code_filiere` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `af` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`code_filiere`, `nom`, `af`) VALUES
('GI', 'GENIE INFO', '2022/2023'),
('MBDIO', 'MASTER BIG DATA ET INTERNET DES OBJETS', '2022/2023');

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id_groupe` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `annee` int(11) NOT NULL,
  `af` varchar(50) NOT NULL,
  `etat` tinyint(1) NOT NULL,
  `filiere` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id_groupe`, `nom`, `annee`, `af`, `etat`, `filiere`) VALUES
(27, 'MBDIO', 1, '2022/2023', 1, 'MBDIO'),
(28, 'GI', 1, '2022/2023', 1, 'GI');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id_module` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `mh` decimal(10,0) NOT NULL,
  `af` varchar(50) NOT NULL,
  `etat` tinyint(1) NOT NULL,
  `filiere` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id_module`, `nom`, `mh`, `af`, `etat`, `filiere`) VALUES
(14, 'JAVA', '30', '2022/2023', 1, 'MBDIO'),
(15, 'UML', '30', '2022/2023', 1, 'MBDIO'),
(16, 'PYTHON', '30', '2022/2023', 1, 'MBDIO'),
(17, 'ANALYSE DE DONNES', '30', '2022/2023', 1, 'MBDIO'),
(18, 'SYSTEME EMBARQUE', '30', '2022/2023', 1, 'MBDIO');

-- --------------------------------------------------------

--
-- Structure de la table `module_enseignant_groupe`
--

CREATE TABLE `module_enseignant_groupe` (
  `id` int(11) NOT NULL,
  `module` int(11) NOT NULL,
  `groupe` int(11) NOT NULL,
  `enseignant` varchar(50) DEFAULT NULL,
  `af` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `module_enseignant_groupe`
--

INSERT INTO `module_enseignant_groupe` (`id`, `module`, `groupe`, `enseignant`, `af`) VALUES
(39, 14, 27, 'AA00001', '2022/2023'),
(40, 15, 27, 'AA00001', '2022/2023'),
(41, 16, 27, 'AA00002', '2022/2023'),
(42, 17, 27, 'AA00004', '2022/2023'),
(43, 18, 27, 'AA00003', '2022/2023');

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `id_note` int(11) NOT NULL,
  `note_1` decimal(10,0) NOT NULL,
  `note_2` decimal(10,0) NOT NULL,
  `note_f` decimal(10,0) NOT NULL,
  `meg` int(11) NOT NULL,
  `etudiant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`id_note`, `note_1`, `note_2`, `note_f`, `meg`, `etudiant`) VALUES
(13, '18', '18', '18', 39, 5);

-- --------------------------------------------------------

--
-- Structure de la table `seance`
--

CREATE TABLE `seance` (
  `id` int(11) NOT NULL,
  `id_meg` int(11) NOT NULL,
  `jour` varchar(50) NOT NULL,
  `hd` time NOT NULL,
  `hf` time NOT NULL,
  `af` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `seance`
--

INSERT INTO `seance` (`id`, `id_meg`, `jour`, `hd`, `hf`, `af`) VALUES
(24, 41, 'Lundi', '08:00:00', '10:00:00', '2022/2023'),
(25, 41, 'Lundi', '10:00:00', '12:00:00', '2022/2023'),
(26, 43, 'Mardi', '10:00:00', '12:00:00', '2022/2023'),
(27, 43, 'Mardi', '14:00:00', '16:00:00', '2022/2023'),
(28, 40, 'Jeudi', '08:00:00', '10:00:00', '2022/2023'),
(29, 39, 'Jeudi', '10:00:00', '12:00:00', '2022/2023'),
(30, 42, 'Mercredi', '08:00:00', '10:00:00', '2022/2023'),
(31, 42, 'Mercredi', '10:00:00', '12:00:00', '2022/2023'),
(32, 39, 'Lundi', '16:00:00', '18:00:00', '2022/2023');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `Matricule` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `etat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`Matricule`, `nom`, `prenom`, `telephone`, `email`, `login`, `password`, `role`, `adresse`, `etat`) VALUES
('AA00001', 'EL FAQUIH', 'LOUBNA', '', 'ELFAQUIH@gmail.com', 'ELFAQUIH', '0000', 'enseignant', '', 1),
('AA00002', 'GUALZIM', 'MOHAMMED', '', 'GUELZIM@gmail.com', 'GUELZIM', '0000', 'enseignant', '', 1),
('AA00003', 'BABA', 'MOHAMED', '', 'ALI@gmail.com', 'BABA', '0000', 'enseignant', '', 1),
('AA00004', 'AZMI', 'MOHAMED', '', 'AZMI@gmail.com', 'AZMI', '0000', 'enseignant', '', 1),
('AA90006', 'EL ABDOUNI', 'ABDERRAZZAQ', '0653539113', 'abiidooxel00@gmail.co', 'abdou', '0000', 'admin', 'akkari', 1),
('AA90007', 'HAZMIRI', 'YOUNES', '0677879798', 'hazmiri@gmail.com', 'YOUNES', '0000', 'chef scolarite', '', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_abs_sea` (`seance`),
  ADD KEY `fk_abs_etu` (`etudiant`);

--
-- Index pour la table `anneeformation`
--
ALTER TABLE `anneeformation`
  ADD PRIMARY KEY (`AF`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_etu_af` (`AF`),
  ADD KEY `fk_etu_grp` (`groupe`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`code_filiere`),
  ADD KEY `fk_filiere_af` (`af`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id_groupe`),
  ADD KEY `fk_grp_fil` (`filiere`),
  ADD KEY `fk_grp_af` (`af`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id_module`),
  ADD KEY `fk_mod_fil` (`filiere`),
  ADD KEY `fk_mod_af` (`af`);

--
-- Index pour la table `module_enseignant_groupe`
--
ALTER TABLE `module_enseignant_groupe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_meg_ens` (`enseignant`),
  ADD KEY `fk_meg_mod` (`module`),
  ADD KEY `fk_meg_grp` (`groupe`),
  ADD KEY `fk_meg_af` (`af`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id_note`),
  ADD KEY `fk_note_etu` (`etudiant`),
  ADD KEY `fk_note_meg` (`meg`);

--
-- Index pour la table `seance`
--
ALTER TABLE `seance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sea_af` (`af`),
  ADD KEY `fk_sea_meg` (`id_meg`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`Matricule`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `absence`
--
ALTER TABLE `absence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `id_groupe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `id_module` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `module_enseignant_groupe`
--
ALTER TABLE `module_enseignant_groupe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `id_note` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `seance`
--
ALTER TABLE `seance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `absence`
--
ALTER TABLE `absence`
  ADD CONSTRAINT `fk_abs_etu` FOREIGN KEY (`etudiant`) REFERENCES `etudiant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_abs_sea` FOREIGN KEY (`seance`) REFERENCES `seance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `fk_etu_af` FOREIGN KEY (`AF`) REFERENCES `anneeformation` (`AF`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_etu_grp` FOREIGN KEY (`groupe`) REFERENCES `groupe` (`id_groupe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD CONSTRAINT `fk_filiere_af` FOREIGN KEY (`af`) REFERENCES `anneeformation` (`AF`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD CONSTRAINT `fk_grp_af` FOREIGN KEY (`af`) REFERENCES `anneeformation` (`AF`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_grp_fil` FOREIGN KEY (`filiere`) REFERENCES `filiere` (`code_filiere`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `fk_mod_af` FOREIGN KEY (`af`) REFERENCES `anneeformation` (`AF`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mod_fil` FOREIGN KEY (`filiere`) REFERENCES `filiere` (`code_filiere`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `module_enseignant_groupe`
--
ALTER TABLE `module_enseignant_groupe`
  ADD CONSTRAINT `fk_meg_af` FOREIGN KEY (`af`) REFERENCES `anneeformation` (`AF`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_meg_ens` FOREIGN KEY (`enseignant`) REFERENCES `utilisateur` (`Matricule`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_meg_grp` FOREIGN KEY (`groupe`) REFERENCES `groupe` (`id_groupe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_meg_mod` FOREIGN KEY (`module`) REFERENCES `module` (`id_module`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `fk_note_etu` FOREIGN KEY (`etudiant`) REFERENCES `etudiant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_note_meg` FOREIGN KEY (`meg`) REFERENCES `module_enseignant_groupe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `seance`
--
ALTER TABLE `seance`
  ADD CONSTRAINT `fk_sea_af` FOREIGN KEY (`af`) REFERENCES `anneeformation` (`AF`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sea_meg` FOREIGN KEY (`id_meg`) REFERENCES `module_enseignant_groupe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
