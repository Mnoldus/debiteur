-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 18 dec 2022 om 21:18
-- Serverversie: 10.4.24-MariaDB
-- PHP-versie: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oefening`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `debiteur`
--

CREATE TABLE `debiteur` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `naam` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `getal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `debiteur`
--

INSERT INTO `debiteur` (`id`, `naam`, `email`, `getal`) VALUES
(2, 'bedroof v ', 'fringilla.cursus@icloud.edu', '$13.27'),
(3, 'Kyra X. Wall', 'nisl.elementum@google.edu', '$95.77'),
(4, 'Deirdre E. Skinner', 'augue@yahoo.ca', '$89.24'),
(5, 'Paki M. Alston', 'vel.arcu.eu@icloud.ca', '$32.07'),
(6, 'Mona F. Noel', 'ac.fermentum@outlook.couk', '$32.14'),
(7, 'Davis M. Patton', 'mauris.id.sapien@outlook.org', '$10.29'),
(8, 'Ignatius Q. Montgomery', 'iaculis@google.com', '$53.98'),
(9, 'Madison S. Stewart', 'dolor@hotmail.org', '$20.85'),
(10, 'Irene G. Waller', 'sem.elit@google.com', '$48.88'),
(11, 'James P. Andrews', 'dui.nec@hotmail.net', '$97.97'),
(12, 'Thomas M. Mckay', 'phasellus@protonmail.org', '$45.74'),
(13, 'Camden H. Leon', 'at.fringilla.purus@hotmail.couk', '$98.66'),
(14, 'Beau J. Nunez', 'et.magnis.dis@aol.edu', '$47.50'),
(15, 'Kirestin T. Pugh', 'pede.nec@icloud.com', '$5.67'),
(16, 'Karly K. Crane', 'sapien.cursus@yahoo.edu', '$79.35'),
(17, 'Germaine W. Hobbs', 'porttitor.scelerisque@aol.edu', '$64.76'),
(18, 'Otto Q. Ramsey', 'ultricies.adipiscing@outlook.com', '$29.55'),
(19, 'Tara U. Carter', 'augue.malesuada@yahoo.org', '$14.34'),
(20, 'Aileen A. Osborne', 'tincidunt.nibh@icloud.net', '$99.67'),
(21, 'Hedley A. Charles', 'velit.aliquam.nisl@aol.edu', '$38.96'),
(22, 'Laurel W. Woodard', 'faucibus.id@yahoo.edu', '$60.77'),
(23, 'Amena B. Cruz', 'arcu.curabitur@protonmail.edu', '$90.04'),
(24, 'Conan K. Sawyer', 'egestas@hotmail.org', '$95.84'),
(25, 'Daquan B. Spence', 'hendrerit.id.ante@google.com', '$13.66'),
(26, 'Sierra F. Ellis', 'libero@google.edu', '$83.97'),
(27, 'Vaughan T. Talley', 'ut.pharetra@aol.ca', '$13.85'),
(28, 'Sebastian R. Bryan', 'suspendisse.dui@protonmail.com', '$55.50'),
(29, 'Chantale E. Lancaster', 'aliquam.nec@google.couk', '$27.05'),
(30, 'Imogene H. Hammond', 'ipsum.cursus.vestibulum@outlook.ca', '$74.99'),
(31, 'Josephine M. Shaw', 'arcu.curabitur@google.edu', '$36.85'),
(32, 'Caleb W. Weeks', 'urna.suscipit@icloud.edu', '$83.12'),
(33, 'Kirby G. Acevedo', 'in.molestie.tortor@google.couk', '$56.01'),
(34, 'Kevin L. Harmon', 'cursus.in@hotmail.org', '$91.34'),
(35, 'Julie C. Kirkland', 'leo@aol.couk', '$30.46'),
(36, 'Brennan I. Acosta', 'integer.vitae.nibh@yahoo.ca', '$35.49'),
(37, 'Quentin A. Burke', 'mi.pede@google.edu', '$48.76'),
(38, 'Xenos U. Rivas', 'egestas.a@aol.ca', '$73.46'),
(39, 'Dominic B. Tillman', 'est.mollis@outlook.ca', '$69.76'),
(40, 'Tyler Q. Carey', 'ipsum.suspendisse@icloud.net', '$68.52'),
(41, 'Hedley A. Charles', 'velit.aliquam.nisl@aol.edu', '$38.96'),
(42, 'Laurel W. Woodard', 'faucibus.id@yahoo.edu', '$60.77'),
(43, 'Amena B. Cruz', 'arcu.curabitur@protonmail.edu', '$90.04'),
(44, 'Conan K. Sawyer', 'egestas@hotmail.org', '$95.84'),
(45, 'Daquan B. Spence', 'hendrerit.id.ante@google.com', '$13.66'),
(46, 'Sierra F. Ellis', 'libero@google.edu', '$83.97'),
(47, 'Vaughan T. Talley', 'ut.pharetra@aol.ca', '$13.85'),
(48, 'Sebastian R. Bryan', 'suspendisse.dui@protonmail.com', '$55.50'),
(49, 'Chantale E. Lancaster', 'aliquam.nec@google.couk', '$27.05'),
(50, 'Imogene H. Hammond', 'ipsum.cursus.vestibulum@outlook.ca', '$74.99'),
(51, 'Josephine M. Shaw', 'arcu.curabitur@google.edu', '$36.85'),
(52, 'Caleb W. Weeks', 'urna.suscipit@icloud.edu', '$83.12'),
(53, 'Kirby G. Acevedo', 'in.molestie.tortor@google.couk', '$56.01'),
(54, 'Kevin L. Harmon', 'cursus.in@hotmail.org', '$91.34'),
(55, 'Julie C. Kirkland', 'leo@aol.couk', '$30.46'),
(56, 'Brennan I. Acosta', 'integer.vitae.nibh@yahoo.ca', '$35.49'),
(57, 'Quentin A. Burke', 'mi.pede@google.edu', '$48.76'),
(58, 'Xenos U. Rivas', 'egestas.a@aol.ca', '$73.46'),
(59, 'Dominic B. Tillman', 'est.mollis@outlook.ca', '$69.76'),
(60, 'Tyler Q. Carey', 'ipsum.suspendisse@icloud.net', '$68.52'),
(61, 'Mathews, Melyssa U.', 'velit.aliquam.nisl@aol.edu', '$38.96'),
(62, 'Francis, Audra D.', 'faucibus.id@yahoo.edu', '$60.77'),
(63, 'Delgado, Cyrus U.', 'arcu.curabitur@protonmail.edu', '$90.04'),
(64, 'Huffman, Beatrice L.', 'egestas@hotmail.org', '$95.84'),
(65, 'Randolph, Armand K.', 'hendrerit.id.ante@google.com', '$13.66'),
(66, 'Huber, Laith K.', 'libero@google.edu', '$83.97'),
(67, 'Petty, Hadassah X.', 'ut.pharetra@aol.ca', '$13.85'),
(68, 'Barnett, Eaton V.', 'suspendisse.dui@protonmail.com', '$55.50'),
(69, 'Melton, Jamalia C.', 'aliquam.nec@google.couk', '$27.05'),
(70, 'Ellison, Wynne L.', 'ipsum.cursus.vestibulum@outlook.ca', '$74.99'),
(71, 'Dickson, Colorado J.', 'arcu.curabitur@google.edu', '$36.85'),
(72, 'Larson, Ila Y.', 'urna.suscipit@icloud.edu', '$83.12'),
(73, 'Lyons, Peter S.', 'in.molestie.tortor@google.couk', '$56.01'),
(74, 'Sims, Merrill B.', 'cursus.in@hotmail.org', '$91.34'),
(75, 'Rose, Jesse O.', 'leo@aol.couk', '$30.46'),
(76, 'Downs, Elijah Y.', 'integer.vitae.nibh@yahoo.ca', '$35.49'),
(77, 'Armstrong, Valentine O.', 'mi.pede@google.edu', '$48.76'),
(78, 'Norman, Audra C.', 'egestas.a@aol.ca', '$73.46'),
(79, 'Huff, Aretha P.', 'est.mollis@outlook.ca', '$69.76'),
(80, 'Bentley, Avram I.', 'ipsum.suspendisse@icloud.net', '$68.52'),
(87, 'henry v kutjes', '69knight@gmail.cum', '$69,69'),
(88, 'carllll v luther', 'shitter@hond.ddf', '€42,01');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `debiteur`
--
ALTER TABLE `debiteur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `debiteur`
--
ALTER TABLE `debiteur`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
