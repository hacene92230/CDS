-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 29 mai 2020 à 11:18
-- Version du serveur :  10.3.22-MariaDB-0+deb10u1
-- Version de PHP :  7.3.14-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cds`
--

-- --------------------------------------------------------

--
-- Structure de la table `bannis`
--

CREATE TABLE `bannis` (
  `ban_id` int(11) NOT NULL,
  `ban_utilisateur` int(11) NOT NULL,
  `ban_raison` text NOT NULL,
  `ban_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `com_id` int(11) NOT NULL,
  `com_date` date NOT NULL,
  `com_contenu` text NOT NULL,
  `com_utilisateur` text NOT NULL,
  `com_concour` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `concours`
--

CREATE TABLE `concours` (
  `con_id` int(11) NOT NULL,
  `con_titre` text NOT NULL,
  `con_neurone` int(11) NOT NULL,
  `con_consigne` text NOT NULL,
  `con_date_debut` date NOT NULL,
  `con_date_fin` date NOT NULL,
  `con_organisateur` text NOT NULL,
  `con_statut` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `concours`
--

INSERT INTO `concours` (`con_id`, `con_titre`, `con_neurone`, `con_consigne`, `con_date_debut`, `con_date_fin`, `con_organisateur`, `con_statut`) VALUES
(1, 'Dis-moi dix mots.', 200, 'Bonjour à tous !\r\n\r\nJe suis sincèrement ravi de pouvoir vous présenter ce tout premier concours qui je l’espère fera partie d’une très longue série. Si vous choisissez de participer, parlez-en autour de vous, et n’hésitez pas à encourager le plus de monde possible à en faire de même ! Sans davantage de palabre, je vous présente les modalités de ce concours.\r\n\r\nConsigne :\r\nJe vais vous donner dix mots du dictionnaire que j’ai choisi avec soin. Par la suite, vous allez devoir composer un écrit avec, aucune longueur de texte n’est requise. Vous pouvez aussi bien faire trois lignes qu’une page complète, l’important étant que votre texte contienne les dix mots en question, peu importe l’ordre dans lequel vous choisirez de les introduire. J’ai volontairement choisi des mots simples, pour que ce concours soit accessible à tous. J’ai également introduit des définitions, afin d’aider ceux qui en ont besoin. À noter que je donne un sens précis des mots dans les définitions qui suivent, mais si le mot a plusieurs définitions, vous pouvez choisir celle que vous souhaitez utiliser.\r\nVous l\'avez peut-être remarqué, il y a un onzième mot, devant lequel se trouve le signe # (dièse). Cela veut simplement dire que le mot est bonus, vous pouvez l\'utiliser dans votre composition, ou non, c\'est comme vous le souhaitez.\r\n\r\nVoici les mots à utiliser:\r\n1. Solitude : État de quelqu\'un qui est seul momentanément ou habituellement.\r\n2. Palmier : Arbre monocotylédone à tronc (stipe) peu ou pas ramifié, à frondaison sommitale formée de feuilles composées, qui sont pennées ou palmées selon l\'espèce.\r\n3. Brise : Vent, en général quand il est peu violent.\r\n4. Verrouiller : Bloquer les éléments d\'un mécanisme dans la position prévue pour son fonctionnement.\r\n5. Jour : Clarté produite sur la Terre par la lumière du Soleil.\r\n6. Oiseau : Vertébré ovipare, couvert de plumes et d\'écailles cornées, à respiration pulmonaire, homéotherme, aux mâchoires sans dents revêtues d\'un bec corné, et aux membres antérieurs, ou ailes, normalement adaptés au vol.\r\n7. Curiosité : Qualité de quelqu\'un qui a le désir de connaître, de savoir.\r\n8. Caillou : Pierre quelconque de petite dimension, le plus souvent assez dure, qui a pu être façonnée par les glaciers (caillou poli, strié), le vent (caillou à facettes), les eaux (caillou roulé).\r\n9. Réveil : Fait de se réveiller, de passer du sommeil à l\'état de veille.\r\n10. Cendre: Éléments incombustibles d\'une chose qui, après la combustion de celle-ci, se retrouvent à l\'état pulvérulent sous forme solide.\r\n#Mot bonus: -Fenêtre : Baie comportant une fermeture vitrée, pratiquée dans un mur d\'un bâtiment pour permettre l\'entrée de la lumière, la vision vers l\'extérieur et, habituellement, l\'aération.\r\n\r\n\r\nPour ce premier concours, n’ayant pas encore de jury, ça sera moi qui me chargerait d’établir le podium en fonction d’un seul critère qui me paraît essentiel :\r\n--L’originalité (c’est-à-dire une composition personnel qui parvient à s’approprier les mots proposés)\r\n\r\nVous avez quatre jours pour réaliser ce concours, jusqu’au vendredi 24 avril 2020, 16h (heure française. Comme vous l’avez peut-être remarqué, cela tombe le même jour que le tournoi de course de canard que j’organise. C’est volontaire, et de cette façon, vous aurez les résultats en exclusivité à l’antenne pour ceux qui seront parmi nous ! Bien sûr, je posterai en parallèle les résultats sur le forum.\r\nMes encouragements à tous !\r\n\r\nCanartistiquement votre,\r\nZefir', '2020-01-22', '2020-05-26', 'admin', 3),
(2, 'Des petits trous.', 100, 'Bonjour, bonsoir tout le monde !\r\n\r\nUn concours est passé, un autre s’en vient ! Je suis enchanté de pouvoir vous annoncer par le biais de ce message l’ouverture du concours numéro 2. J’espère que le dernier vous a plu et que celui-ci vous apportera autant, que dis-je, davantage de plaisir et de connaissance encore. Avant de passer aux modalités et aux explications détaillés, je vous incite à inviter toujours plus de monde à nous rejoindre dans cette aventure car plus nous sommes, plus le savoir acquis sera important. Voilà, désormais, nous pouvons passer à la suite !\r\n\r\nConsigne :\r\nCi-dessous, se trouve un texte à trou. Ces derniers sont représentés par trois * (astérisque) qui vous indique donc l’emplacement des éléments manquants. Votre mission, si vous l’acceptez, sera de réparer ce pauvre texte. Lorsque vous croiserez ces trois * (astérisque), vous pourrez les supprimer et les remplacer par un mot ou par un morceau de phrase de votre choix. L’objectif de ce concours est avant tout de développer sa capacité à avoir une vision d’ensemble. En effet, le texte devra avoir un sens à l’arrivée, il ne suffit pas de déposer au hasard les mots, mais de les agencer judicieusement pour donner vie au texte, lui offrir une consistance. Lorsqu’au détour d’une phrase vous tomberez sur ces petites étoiles (astérisque), vous pourrez ajouter ce que vous bon vous semble pour combler ces vides.\r\n\r\nJe vous donne un court exemple pour illustrer :\r\n« J’avance rapidement, le ***, il y a 5 minutes entre ***. Je longe l’immeuble, traverse la route, tourne à gauche, longe par le côté un parc… Il est tôt, mais déjà ***. Ce n’est pourtant pas la saison, nous sommes en plein hiver, que font ces ** dans le coin. Il y a encore quelques années, ces évènements étaient assez improbables. »\r\nTexte réparé :\r\n« J’avance rapidement, le cerveau encore engourdit par les brumes du sommeil, il y a 5 minutes entre chez moi et la station de métro. Je longe l’immeuble, traverse la route, tourne à gauche, longe par le côté un parc… Il est tôt, mais déjà j’entends les oiseaux pépier. Ce n’est pourtant pas la saison, nous sommes en plein hiver, que font ces mignonnes créatures dans le coin. Il y a encore quelques années, ces évènements étaient assez improbables. »\r\nVoilà, je pense que l’exemple, bien que simpliste achève l’explication.\r\n\r\nTexte :\r\nC’est le jour fatidique. Aujourd’hui, je dois ***. Je sais qu’il faut le faire, que c’est nécessaire au vu de ***, mais je ne le veux pas. De tout mon cœur, de tout mon être, je m’y refuse. On peut toujours essayer de se préparer à l’avance, le jour où cela vous tombe dessus, vos moyens n’existent plus, votre réflexion bascule dans le néant. Ces semaines passées à *** ne valent rien quand le présent se charge de vous rappeler votre petitesse. Cela doit se passer à ***. Le visage impassible, je m’avance, sans rien laisser paraître. Si je le fais, je sais que ***. Une voix intérieure m’***. Pourvu que cela se passe vite, c’est tout ce que je demande. Je progresse, pas à pas, tâchant d’avancer le plus lentement possible, tout en sachant que c’est inéluctable. J’ai l’impression de marcher pendant des heures et des heures, alors qu’il n’y a que *** entre *** et ***. Enfin, je suis parvenu au ***. Je me retrouve devant ***. Je ne sais pas que dire, j’ai la désagréable impression que quelqu’un d’autre s’est emparé de mon corps, et qu’un autre que moi dirige mon cerveau. Je suis tout engourdi, et les gouttes de pluie qui martèlent mon crâne à un rythme soutenu ne m’aident en rien. D’un geste tremblant, je passe une main sur mon visage pour en chasser l’eau. Je prends une longue inspiration et je me lance : ***. Ça y est, j’ai ***. Désormais, il ne me reste plus qu’à ***. Le corps parcouru de frissons et de tremblements incontrôlables, je fais demi-tour et m’éloigne à grand pas. Ce jour, pour moi, sera le dernier. Le dernier qui aura un lien avec ma vie passée.\r\n\r\nPour ce second concours, voici les critères de sélection dont j’userai pour déterminer le podium :\r\n--Le respect scrupuleux de la consigne. (N’hésitez pas à vous relire)\r\n--L’intérêt des mots choisis. (Sans rechercher des mots compliqués, tentez de ne pas utiliser seulement des mots de tous les jours pour former votre contribution finale)\r\n--éloignez votre texte de l’original, en lui attribuant un caractère propre. Vous devez imprégner votre écrit de votre sensibilité, de ce qui vous caractérise. Vous écrivez pour vous, avant toute autre considération.\r\n\r\nVous disposez d’environ une semaine pour déposer votre contribution, le sujet sera clos le vendredi 8 mai, aux alentours de 16h (heure française)\r\n\r\nRone et moi-même avons été les jurés de ce concours, je le remercie pour l\'aide qu\'il nous a apporté.\r\n\r\nMes encouragements à tous !\r\n\r\nCanartistiquement votre,\r\nZefir', '2020-03-22', '2020-05-29', 'admin', 3),
(3, 'Le conte.', 300, 'Nous nous retrouvons ici pour… un nouveau concours ! En effet, il s’agit du troisième, et tenez-vous bien, du dernier de la série actuelle. J’ai opté pour faire 3 concours par série, de façon à essayer de contenter le plus de monde possible. Les séries n’ont pas de nom, donc si vous voulez en proposez n’hésitez pas. J’appelle « série », 3 concours dont les thèmes se rejoignent. Nous ne reprendrons jamais une même série au complet, mais nous pourrons proposer plusieurs fois certain concours que vous avez apprécié. Comme d’habitude, mais j’aime bien le rappeler, diffusez autour de vous l’ouverture de ce nouveau concours, afin que nous soyons le plus nombreux possible pour cette belle aventure. Allez, sans tarder davantage, place aux consignes, aux attendus et au petit mot de la fin !\r\n\r\nConsigne :\r\nVoici un conte. Enfin, un tout début, de conte. Vous souvenez-vous lorsque vous étiez enfant, ou peut-être même un peu plus grand, de ces magnifiques histoires, que l’on vous racontait ou que vous lisiez le soir ? N’était-ce pas infiniment agréable, d’écouter avec votre esprit d’enfant ces merveilleux comptes, c’est jolies petites fables ? Si cela vous manque, ou que vous en lisez toujours, je vous propose de vous placer du côté de l’écrivain, de vous montrer la chose sous un autre jour.\r\nJe vais mettre à votre disposition les premières lignes d’un conte, afin de poser les bases sur lesquelles vous pourrez construire votre histoire. Vous devrez faire appel à votre imaginaire, en faisant surgir de nouveau votre esprit d’enfant pour nous proposer une suite à cette courte introduction. Je recommande également de donner un titre à votre écrit, pour le personnaliser davantage, même si c\'est là un élément facultatif. Mis à part ce début de texte, je n’impose aucune autre contrainte rédactionnelle. Sur la forme, je vous demande de faire au minimum 5 lignes, sans maximum. Vous n’êtes pas forcé de terminer le récit, vous écrirez selon votre inspiration, en fonction de vos envies.\r\n\r\nLe texte :\r\nIl était une fois, dans le temps jadis, dans un pays pas si lointain, au cœur d’une campagne méconnue vivait une petite famille. Cette dernière parvenait difficilement à subvenir à ces besoins, non point par manque de travail ou de volonté, mais à cause de la dime de plus en plus élevée que réclamait le monarque en ce temps-là. Ce personnage ? Le roi Kéroualle de Terrare, un homme qui profitait sans vergogne aucune de ces sujets et qui avait pour idée de faire Reigner l’ordre par la force et la répression. C’est durant la décade des moissons tardives que se déroule notre aventure.\r\n\r\nLes critères de sélections seront les suivants :\r\n-Une orthographe raisonnablement correcte.\r\n-La qualité du récit en tant que conte, faites-nous, faites-vous rêver.\r\n-Ne vous reposez pas uniquement sur ce que vous avez déjà lu, tentez d’écrire quelque chose produit par vous, il ne s’agit pas de recycler une autre histoire, même si, évidemment, les procédés utilisés peuvent être identiques.\r\n\r\nVous disposez d’un peu moins de 2 semaines pour déposer votre contribution, le sujet sera clos le jeudi 28 mai, aux alentours de 19h (heure française)\r\n\r\nJe n’oublie pas le petit mot de la fin : Anatidaephobie.\r\nLes individus qui y sont sujets sont terrorisés à l\'idée qu\'un canard (un animal de la famille des anatidés comme les oies et les cygnes, d\'où le nom de la phobie) est en train de les observer d\'un air malsain, quelque part dans le monde... C’est une phobie fictive qui a été inventé par un certain Gary Larson, mais qui m’a tout de même bien amusée.\r\n\r\nJ’ai hâte de vous lire et vous souhaite de passer un agréable moment sur cet écrit !\r\n\r\nCanartistiquement votre,\r\nZefir\r\n', '2020-05-24', '2020-05-28', 'admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `correction`
--

CREATE TABLE `correction` (
  `cor_id` int(11) NOT NULL,
  `cor_participation` int(11) NOT NULL,
  `cor_date` date NOT NULL,
  `cor_critique` text DEFAULT NULL,
  `cor_correcteur` int(11) NOT NULL,
  `cor_podium` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `messagerie`
--

CREATE TABLE `messagerie` (
  `mes_id` int(11) NOT NULL,
  `mes_date` text NOT NULL,
  `mes_objet` text NOT NULL,
  `mes_contenu` text NOT NULL,
  `mes_destinataire` int(11) NOT NULL,
  `mes_emetteur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `participation`
--

CREATE TABLE `participation` (
  `par_id` int(11) NOT NULL,
  `par_concour` int(11) NOT NULL,
  `par_utilisateur` int(11) NOT NULL,
  `par_date` date NOT NULL,
  `par_fichier` text DEFAULT NULL,
  `par_commentaire` text DEFAULT NULL,
  `par_texte` text DEFAULT NULL,
  `par_validitee` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `participation`
--

INSERT INTO `participation` (`par_id`, `par_concour`, `par_utilisateur`, `par_date`, `par_fichier`, `par_commentaire`, `par_texte`, `par_validitee`) VALUES
(1, 1, 7, '2020-05-25', '', 'voila un petit commentaire pour tester', 'ici, un peut de texte, avec quelques commentaires', 1),
(2, 2, 7, '2020-05-25', '7_2_20-05-25_sql.txt', 'test', '', 1),
(11, 1, 2, '2020-01-11', NULL, 'COMMENTER', 'test', 1);

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

CREATE TABLE `profil` (
  `pro_id` int(11) NOT NULL,
  `pro_nom` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`pro_id`, `pro_nom`) VALUES
(1, 'utilisateur'),
(2, 'membre de l\'équipe'),
(3, 'administrateur');

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

CREATE TABLE `statut` (
  `sta_id` int(11) NOT NULL,
  `sta_nom` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `statut`
--

INSERT INTO `statut` (`sta_id`, `sta_nom`) VALUES
(1, 'en cours'),
(2, 'fermé'),
(3, 'en attente de correction'),
(4, 'corrigé');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `uti_id` int(11) NOT NULL,
  `uti_date_inscription` date NOT NULL,
  `uti_profil` int(11) DEFAULT 1,
  `uti_nom` text NOT NULL,
  `uti_pseudo` text NOT NULL,
  `uti_mdp` text NOT NULL,
  `uti_prenom` text DEFAULT NULL,
  `uti_email` text DEFAULT NULL,
  `uti_age` text DEFAULT NULL,
  `uti_pays` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`uti_id`, `uti_date_inscription`, `uti_profil`, `uti_nom`, `uti_pseudo`, `uti_mdp`, `uti_prenom`, `uti_email`, `uti_age`, `uti_pays`) VALUES
(7, '2020-05-25', 3, 'sahraoui', 'admin', '$2y$10$VTkVfqpkBnI4t3lb8Asyv.mJEzbmDvJGeNs/djo/XVNnZnC9QP.3u', '', '', '10', ''),
(2, '2020-05-25', 1, 'sahraoui', 'test', '$2y$10$VTkVfqpkBnI4t3lb8Asyv.mJEzbmDvJGeNs/djo/XVNnZnC9QP.3u', NULL, NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bannis`
--
ALTER TABLE `bannis`
  ADD UNIQUE KEY `ban_id` (`ban_id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD UNIQUE KEY `com_id` (`com_id`);

--
-- Index pour la table `concours`
--
ALTER TABLE `concours`
  ADD UNIQUE KEY `con_id` (`con_id`);

--
-- Index pour la table `correction`
--
ALTER TABLE `correction`
  ADD UNIQUE KEY `cor_id` (`cor_id`);

--
-- Index pour la table `messagerie`
--
ALTER TABLE `messagerie`
  ADD PRIMARY KEY (`mes_id`);

--
-- Index pour la table `participation`
--
ALTER TABLE `participation`
  ADD UNIQUE KEY `par_id` (`par_id`);

--
-- Index pour la table `profil`
--
ALTER TABLE `profil`
  ADD UNIQUE KEY `pro_id` (`pro_id`);

--
-- Index pour la table `statut`
--
ALTER TABLE `statut`
  ADD UNIQUE KEY `sta_id` (`sta_id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD UNIQUE KEY `uti_id` (`uti_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bannis`
--
ALTER TABLE `bannis`
  MODIFY `ban_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `concours`
--
ALTER TABLE `concours`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `correction`
--
ALTER TABLE `correction`
  MODIFY `cor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `messagerie`
--
ALTER TABLE `messagerie`
  MODIFY `mes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `participation`
--
ALTER TABLE `participation`
  MODIFY `par_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `profil`
--
ALTER TABLE `profil`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `statut`
--
ALTER TABLE `statut`
  MODIFY `sta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `uti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
