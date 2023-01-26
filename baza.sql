-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 54.38.131.251:3306
-- Czas generowania: 23 Wrz 2021, 14:21
-- Wersja serwera: 10.3.29-MariaDB-0+deb10u1
-- Wersja PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `db_71834`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('caution', 'Caution', 0),
('property', 'Propriete', 0),
('property_black_money', 'Mieszkanie', 0),
('society_ambulance', 'Ambulance', 1),
('society_cardealer', 'Concesionnaire', 1),
('society_mecano', 'Mecano', 1),
('society_police', 'Police', 1),
('society_psm', 'PSM', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) DEFAULT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `account_money` int(11) DEFAULT 0,
  `owner` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `addon_inventory`
--

INSERT INTO `addon_inventory` (`id`, `name`, `label`, `shared`) VALUES
(1, 'property', 'Mieszkanie', 0),
(3, 'society_ambulance', 'Ambulance', 1),
(5, 'society_cardealer', 'Cardealer', 1),
(9, 'society_mecano', 'Mechanik', 1),
(10, 'society_police', 'Police', 1),
(11, 'society_taxi', 'Taxi', 1),
(12, 'society_psm', '4PSM', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) DEFAULT NULL,
  `inventory_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `baninfo`
--

CREATE TABLE `baninfo` (
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `banlist`
--

CREATE TABLE `banlist` (
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `added` datetime DEFAULT current_timestamp(),
  `expiration` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `banlisthistory`
--

CREATE TABLE `banlisthistory` (
  `id` int(11) DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timeat` int(11) DEFAULT NULL,
  `added` datetime DEFAULT current_timestamp(),
  `expiration` int(11) DEFAULT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `billing`
--

CREATE TABLE `billing` (
  `id` int(11) DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bwh_bans`
--

CREATE TABLE `bwh_bans` (
  `id` int(11) DEFAULT NULL,
  `receiver` text DEFAULT NULL,
  `sender` varchar(60) DEFAULT NULL,
  `length` datetime DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `unbanned` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bwh_identifiers`
--

CREATE TABLE `bwh_identifiers` (
  `steam` varchar(60) DEFAULT NULL,
  `license` varchar(60) DEFAULT NULL,
  `ip` varchar(60) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `xbl` varchar(60) DEFAULT NULL,
  `live` varchar(60) DEFAULT NULL,
  `discord` varchar(60) DEFAULT NULL,
  `fivem` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Struktura tabeli dla tabeli `bwh_warnings`
--

CREATE TABLE `bwh_warnings` (
  `id` int(11) DEFAULT NULL,
  `receiver` text DEFAULT NULL,
  `sender` varchar(60) DEFAULT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) DEFAULT NULL,
  `vehicle` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `characters`
--

CREATE TABLE `characters` (
  `identifier` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `dateofbirth` varchar(255) DEFAULT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'f',
  `height` varchar(128) DEFAULT NULL,
  `first` varchar(255) NOT NULL DEFAULT 'Brak',
  `second` varchar(255) NOT NULL DEFAULT 'Brak',
  `third` varchar(255) NOT NULL DEFAULT 'Brak',
  `fourth` varchar(255) NOT NULL DEFAULT 'Brak',
  `fifth` varchar(255) NOT NULL DEFAULT 'Brak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Struktura tabeli dla tabeli `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'NieruchomoĹ›Ä‡', 0),
('society_ambulance', 'Ambulance', 1),
('society_mecano', 'Mechanik', 1),
('society_police', 'Police', 1),
('society_psm', '4PSM', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `data` longtext COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;


--
-- Struktura tabeli dla tabeli `dopeplants`
--

CREATE TABLE `dopeplants` (
  `owner` varchar(50) DEFAULT NULL,
  `plant` longtext DEFAULT NULL,
  `plantid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `hungerthirst`
--

CREATE TABLE `hungerthirst` (
  `idSteam` varchar(255) DEFAULT NULL,
  `hunger` int(11) NOT NULL DEFAULT 100,
  `thirst` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `items`
--

CREATE TABLE `items` (
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `limit` int(11) NOT NULL DEFAULT 5,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('4psm_material', 'Material 4PSM', 160, 0, 1),
('4psm_paczkaubran', 'Paczka ubraĹ„ 4PSM', 10, 0, 1),
('4psm_paragon', 'Paragon 4PSM', 1000, 0, 1),
('advancedrifle', 'Zaawansowany Karabin', 5, 0, 1),
('alitas', 'Skrzydelka', 1, 0, 1),
('alive_chicken', 'Ĺ»ywy kurczak', 2, 0, 50),
('appistol', 'APP Pistol', 5, 0, 1),
('assaultrifle', 'Karabin Szturmowy', 5, 0, 1),
('assaultrifle_mk2', 'assaultrifle_mk2', 5, 0, 1),
('assaultshotgun', 'Strzelba Szturmowa', 5, 0, 1),
('assaultsmg', 'Szturmowy SMG', 5, 0, 1),
('autoshotgun', 'AA52', 5, 0, 1),
('bagniak', 'Bagniak', 50, 0, 1),
('ball', 'Pilka', 5, 0, 1),
('ball_ammo', 'ball_ammo', 100, 0, 1),
('bandage', 'BandaĹĽe', 5, 0, 1),
('bat', 'Kij', 5, 0, 1),
('battleaxe', 'Battle Axe', 5, 0, 1),
('beer', 'Piwo', 15, 0, 1),
('bird_crap_ammo', 'bird_crap_ammo', 100, 0, 1),
('blowpipe', 'Wytrych', 10, 0, 1),
('bodycam', 'Bodycam', 2, 0, 1),
('bottle', 'Butelka', 5, 0, 1),
('bread', 'Chleb', 25, 0, 1),
('breadfresh', 'ĹšwieĹĽy chleb', 40, 0, 1),
('bullpuprifle', 'Type 86-S', 5, 0, 1),
('bullpuprifle_mk2', 'bullpuprifle_mk2', 5, 0, 1),
('bullpupshotgun', 'Strzelba Bullpup', 5, 0, 1),
('burguer', 'Big Mac', 1, 0, 1),
('bursztyn', 'Bursztyn', 20, 0, 1),
('bzgas', 'bz gas', 5, 0, 1),
('carbinerifle', 'Karabin', 5, 0, 1),
('carbinerifle_mk2', 'carbinerifle_mk2', 5, 0, 1),
('carokit', 'Zestaw karoserii', 3, 0, 1),
('carotool', 'Narzedzia do karoserii', 4, 0, 1),
('champagne', 'Szampan', 10, 0, 1),
('chips', 'Chipsy', 5, 0, 1),
('chocolate', 'Czekolada', 10, 0, 1),
('cigarett', 'Papieros', 20, 0, 1),
('clip', 'Magazynek', 5, 0, 1),
('clothe', 'OdzieĹĽ', 25, 0, 1),
('cocacola', 'Coca-cola', 15, 0, 1),
('coffe', 'Kawa', 15, 0, 1),
('coke', 'Kokaina', 120, 0, 1),
('coke_pooch', 'Paczka Kokainy', 100, 0, 1),
('colacola', 'Coca-cola', 1, 0, 1),
('combatmg', 'Bojowy Karabin Maszynowy', 5, 0, 1),
('combatmg_mk2', 'combatmg_mk2', 5, 0, 1),
('combatpdw', 'PDW', 5, 0, 1),
('combatpistol', 'Pistolet Bojowy', 5, 0, 1),
('compactlauncher', 'M79 GL', 5, 0, 1),
('compactrifle', 'Micro Draco AK Pistol', 5, 0, 1),
('copper', 'MiedĹş', 50, 0, 1),
('crack', 'Crack', 120, 0, 1),
('crack_pooch', 'Paczka Cracku', 100, 0, 1),
('crowbar', 'Lom', 5, 0, 1),
('cupcake', 'Babeczka', 15, 0, 1),
('cutted_wood', 'Pociete drewno', 50, 0, 1),
('dagger', 'Dagger', 5, 0, 1),
('dbshotgun', 'Zabala short-barreled side-by-side shotgun', 5, 0, 1),
('diamond', 'Diament', 50, 0, 1),
('digiscanner', 'digiscanner', 5, 0, 1),
('doubleaction', 'doubleaction', 5, 0, 1),
('drill', 'Wiertlo', 10, 0, 1),
('enemy_laser_ammo', 'enemy_laser_ammo', 100, 0, 1),
('energy', 'Redbull', 20, 0, 1),
('epic_blat', 'Blat EPIC', 10, 0, 1),
('epic_cienkiblat', 'Cienki blat EPIC', 40, 0, 1),
('epic_deski', 'Deski EPIC', 160, 0, 1),
('epic_paragon', 'Paragon EPIC', 1000, 0, 1),
('epic_ubrania', 'Ubrania 4PSM', 40, 0, 1),
('essence', 'Benzyna', 100, 0, 1),
('fabric', 'Tkanina', 50, 0, 1),
('fireextinguisher', 'Fire Extinguisher', 5, 0, 1),
('fireextinguisher_ammo', 'fireextinguisher_ammo', 100, 0, 1),
('firework', 'Firework', 5, 0, 1),
('fish', 'Ryba', 100, 0, 1),
('fishbait', 'Przyneta na ryby', 100, 0, 1),
('fixkit', 'Zestaw Naprawczy', 15, 0, 1),
('flare', 'Flara', 5, 0, 1),
('flare_ammo', 'Flares', 100, 0, 1),
('flaregun', 'Flara', 5, 0, 1),
('flashlight', 'Latarka', 5, 0, 1),
('garbagebag', 'garbagebag', 5, 0, 1),
('gazbottle', 'Butla z gazem', 11, 0, 1),
('ggps', 'GPS', 5, 0, 1),
('gold', 'Zloto', 50, 0, 1),
('golfclub', 'Kij golfowy', 5, 0, 1),
('grenade', 'grenade', 5, 0, 1),
('grenadelauncher', 'Granatnik', 5, 0, 1),
('grenadelauncher_ammo', 'grenadelauncher_ammo', 100, 0, 1),
('grenadelauncher_smoke_ammo', 'grenadelauncher_smoke_ammo', 100, 0, 1),
('grip', 'Uchwyt', 5, 0, 1),
('gusenberg', 'M1928A1 Thompson SMG', 5, 0, 1),
('gzgas_ammo', 'gzgas_ammo', 100, 0, 1),
('hamburger', 'Hamburger', 25, 0, 1),
('hammer', 'Mlotek', 5, 0, 1),
('handcuffs', 'Kajdanki', 10, 0, 1),
('hatchet', 'hatchet', 5, 0, 1),
('heavypistol', 'Heavy Pistol', 5, 0, 1),
('heavyshotgun', 'Saiga52K', 5, 0, 1),
('heavysniper', 'CieĹĽki Karabin Snajperski', 5, 0, 1),
('heavysniper_mk2', 'heavysniper_mk2', 5, 0, 1),
('hominglauncher', 'SA-7 Grail', 5, 0, 1),
('icetea', 'Herbata', 15, 0, 1),
('iron', 'Srebro', 50, 0, 1),
('jewels', 'Krysztaly', 50, 0, 1),
('Kamizelka', 'Kamizelka', 5, 0, 1),
('kawa', 'Kawa', 10, 0, 1),
('knife', 'Noz', 5, 0, 1),
('knuckle', 'Knuckledusters', 5, 0, 1),
('lighter', 'Zaplniczka', 5, 0, 1),
('machete', 'Maczeta', 5, 0, 1),
('machinepistol', 'TEC-9', 5, 0, 1),
('marksmanpistol', 'Thompson-Center Contender G2', 5, 0, 1),
('marksmanrifle', 'M39 EMR', 5, 0, 1),
('marksmanrifle_mk2', 'marksmanrifle_mk2', 5, 0, 1),
('mcmenu', 'Menu', 1, 0, 1),
('medic', 'Przedmioty medyczne', 20, 0, 1),
('medikit', 'Apteczka', 20, 1, 1),
('meth', 'Meta', 120, 0, 1),
('meth_pooch', 'Paczka Mety', 100, 0, 1),
('mg', 'Karabin maszynowy', 5, 0, 1),
('mg_ammo', 'Amunicja MG', 250, 0, 1),
('microsmg', 'Micro SMG', 5, 0, 1),
('milk', 'Mleko', 100, 0, 1),
('minigun', 'Minigun', 5, 0, 1),
('minigun_ammo', 'Minigun Ammo', 100, 0, 1),
('minismg', 'Mini SMG', 5, 0, 1),
('molotov', 'Molotov Cocktail', 5, 0, 1),
('molotov_ammo', 'molotov_ammo', 100, 0, 1),
('musket', 'Muszkiet', 5, 0, 1),
('narko', 'ArmoHaze', 100, 0, 1),
('nightstick', 'Palka', 5, 0, 1),
('nightvision', 'Night Vision', 5, 0, 1),
('obursztyn', 'Oszlifowany bursztyn', 20, 0, 1),
('opium', 'Opium', 120, 0, 1),
('opium_pooch', 'Paczka opium', 100, 0, 1),
('parachute', 'parachute', 5, 0, 1),
('petrol', 'Olej', 100, 0, 1),
('petrol_raffin', 'Rafinowana ropa naftowa', 100, 0, 1),
('petrolcan', 'Petrol Can', 5, 0, 1),
('phone', 'Telefon', 5, 0, 1),
('pipebomb', 'pipe bomb', 5, 0, 1),
('pistol', 'Pistolet', 5, 0, 1),
('pistol_ammo', 'Amunicja Pistolet', 250, 0, 1),
('pistol_ammo_box', 'Zapakowana ammunicja', 20, 0, 1),
('pistol_mk2', 'Pistolet Mk2', 5, 0, 1),
('pistol50', '.50 Pistol', 5, 0, 1),
('plane_rocket_ammo', 'plane_rocket_ammo', 100, 0, 1),
('player_laser_ammo', 'player_laser_ammo', 100, 0, 1),
('poolcue', 'pool cue', 5, 0, 1),
('proxmine', 'Proxmine Mine', 5, 0, 1),
('pszenica', 'Pszenica', 81, 0, 1),
('pumpshotgun', 'Strzelba Tlokowa', 5, 0, 1),
('pumpshotgun_mk2', 'pumpshotgun_mk2', 5, 0, 1),
('radio', 'Radio', 15, 0, 1),
('railgun', 'railgun', 5, 0, 1),
('remotesniper', 'Remote Sniper', 5, 0, 1),
('revolver', 'Taurus Raging Bull', 5, 0, 1),
('revolver_mk2', 'revolver_mk2', 5, 0, 1),
('rifle_ammo', 'Amunicja Rifle', 250, 0, 1),
('rpg', 'RPG', 5, 0, 1),
('rpg_ammo', 'RPG Ammo', 100, 0, 1),
('sawnoffshotgun', 'Obrzyn', 5, 0, 1),
('shotgun_ammo', 'Amunicja Shotgun', 100, 0, 1),
('skladnikbagniaka', 'Skladnik bagniaka', 50, 0, 1),
('smg', 'SMG', 5, 0, 1),
('smg_ammo', 'Amunicja SMG', 250, 0, 1),
('smg_mk2', 'smg_mk2', 5, 0, 1),
('smokegrenade', 'smoke grenade', 5, 0, 1),
('smokegrenade_ammo', 'smokegrenade_ammo', 100, 0, 1),
('sniper_ammo', 'Amunicja Sniper', 100, 0, 1),
('sniper_remote_ammo', 'Sniper Remote Ammo', 100, 0, 1),
('sniperrifle', 'Karabin Snajpersk', 5, 0, 1),
('snowball', 'Sniezka', 5, 0, 1),
('snspistol', 'Pistol SNS', 5, 0, 1),
('snspistol_mk2', 'Sns Pistol Mk2', 5, 0, 1),
('sok', 'Sok', 30, 0, 1),
('space_rocket_ammo', 'space_rocket_ammo', 100, 0, 1),
('specialcarbine', 'H&K G36C', 5, 0, 1),
('specialcarbine_mk2', 'specialcarbine_mk2', 5, 0, 1),
('stickybomb', 'sticky bomb', 5, 0, 1),
('stickybomb_ammo', 'stickybomb_ammo', 100, 0, 1),
('stinger', 'stinger', 5, 0, 1),
('stinger_ammo', 'stinger_ammo', 100, 0, 1),
('stone', 'Kamien', 100, 0, 1),
('stungun', 'Taser', 5, 0, 1),
('stungun_ammo', 'Amunicja Stungun', 100, 0, 1),
('suppressor', 'Tlumik', 5, 0, 1),
('switchblade', 'Switchblade', 5, 0, 1),
('tank_ammo', 'tank_ammo', 100, 0, 1),
('tgps', 'GPS', 5, 0, 1),
('turtle', 'Przyneta za zlowie', 20, 0, 1),
('ubursztyn', 'Umyty bursztyn', 20, 0, 1),
('vintagepistol', 'Vintage Pistol', 20, 0, 1),
('washed_stone', 'Umyty kamieĹ„', 100, 0, 1),
('water', 'Woda', 15, 0, 1),
('weed', 'Marihuana', 120, 0, 1),
('weed_pooch', 'Paczka marihuany', 100, 0, 1),
('weedindica', 'Marihuana indica', 120, 0, 1),
('weedindica_pooch', 'Paczka marihuany indica', 100, 0, 1),
('wood', 'Drzewo', 100, 0, 1),
('wool', 'Welna', 100, 0, 1),
('wrench', 'wrench', 5, 0, 1),
('yusuf', 'Skin do broni', 5, 0, 1),
('zetony', 'Zetony', 50000, 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jail`
--

CREATE TABLE `jail` (
  `identifier` varchar(100) DEFAULT NULL,
  `jail_time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'SAMS', 1),
('mecano', 'Mechanik', 1),
('offambulance', 'Medyk Poza Sluzba', 1),
('offmecano', 'Mechanik poza sluĹĽba', 1),
('offpolice', 'SASP Poza Sluzba', 1),
('police', 'SASP', 1),
('psm', '4PSM', 0),
('unemployed', 'Bezrobotny', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) DEFAULT NULL,
  `job_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary` int(11) NOT NULL DEFAULT 30,
  `skin_male` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin_female` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Na Zasilku', 200, '{}', '{}'),
(2, 'police', 0, 'none', 'Probationary Trooper', 800, '{}', '{}'),
(3, 'police', 1, 'recruit', 'Trooper', 1000, '{}', '{}'),
(4, 'police', 2, 'officer', 'Senior Trooper', 1200, '{}', '{}'),
(5, 'police', 3, 'officer', 'Corporal', 1400, '{}', '{}'),
(6, 'police', 4, 'officer', 'Senior Corporal', 1600, '{}', '{}'),
(7, 'police', 5, 'sergeant', 'Sergeant', 1800, '{}', '{}'),
(8, 'police', 6, 'sergeant', 'Senior Sergeant', 2000, '{}', '{}'),
(9, 'police', 7, 'sergeant', 'Senior Sergeant', 2200, '{}', '{}'),
(10, 'police', 8, 'capitan', 'Captain', 2400, '{}', '{}'),
(11, 'police', 9, 'capitan', 'Inspector', 2600, '{}', '{}'),
(12, 'police', 10, 'lieutenant', 'Commissioner', 2800, '{}', '{}'),
(13, 'police', 11, 'lieutenant', 'Assistant Chief Of State Police', 3000, '{}', '{}'),
(14, 'police', 12, 'boss', 'Deputy Chief Of State Police', 3200, '{}', '{}'),
(15, 'police', 13, 'boss', 'Chief Of State Police', 3500, '{}', '{}'),
(16, 'offpolice', 0, 'none', 'Poza Sluzba', 250, '{}', '{}'),
(17, 'offpolice', 1, 'recruit', 'Poza Sluzba', 250, '{}', '{}'),
(18, 'offpolice', 2, 'officer', 'Poza Sluzba', 250, '{}', '{}'),
(19, 'offpolice', 3, 'officer', 'Poza Sluzba', 250, '{}', '{}'),
(20, 'offpolice', 4, 'officer', 'Poza Sluzba', 250, '{}', '{}'),
(21, 'offpolice', 5, 'sergeant', 'Poza Sluzba', 250, '{}', '{}'),
(22, 'offpolice', 6, 'sergeant', 'Poza Sluzba', 250, '{}', '{}'),
(23, 'offpolice', 7, 'sergeant', 'Poza Sluzba', 250, '{}', '{}'),
(24, 'offpolice', 8, 'capitan', 'Poza Sluzba', 250, '{}', '{}'),
(25, 'offpolice', 9, 'capitan', 'Poza Sluzba', 250, '{}', '{}'),
(26, 'offpolice', 10, 'lieutenant', 'Poza Sluzba', 250, '{}', '{}'),
(27, 'offpolice', 11, 'lieutenant', 'Poza Sluzba', 250, '{}', '{}'),
(28, 'offpolice', 12, 'boss', 'Poza Sluzba', 250, '{}', '{}'),
(29, 'offpolice', 13, 'boss', 'Poza Sluzba', 250, '{}', '{}'),
(30, 'ambulance', 0, 'Praktykant', 'Stazysta', 500, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":59,\"shoes_2\":0,\"torso_1\":429,\"torso_2\":1,\"pants_1\":88,\"pants_2\":0,\"arms\":88}', '{}'),
(31, 'ambulance', 1, 'ambulance', 'Ratownik Medyczny I', 1500, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":59,\"shoes_2\":0,\"torso_1\":429,\"torso_2\":1,\"pants_1\":88,\"pants_2\":0,\"arms\":88}', '{}'),
(32, 'ambulance', 2, 'ambulance', 'Ratownik Medyczny II', 1800, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":59,\"shoes_2\":0,\"torso_1\":429,\"torso_2\":1,\"pants_1\":88,\"pants_2\":0,\"arms\":88}', '{}'),
(33, 'ambulance', 3, 'ambulance', 'Ratownik Medyczny III', 2000, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":59,\"shoes_2\":0,\"torso_1\":429,\"torso_2\":1,\"pants_1\":88,\"pants_2\":0,\"arms\":88}', '{}'),
(34, 'ambulance', 4, 'doctor', 'Lekarz I', 2500, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":59,\"shoes_2\":0,\"torso_1\":429,\"torso_2\":1,\"pants_1\":88,\"pants_2\":0,\"arms\":88}', '{}'),
(35, 'ambulance', 5, 'doctor', 'Lekarz II', 2800, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":59,\"shoes_2\":0,\"torso_1\":429,\"torso_2\":1,\"pants_1\":88,\"pants_2\":0,\"arms\":88}', '{}'),
(36, 'ambulance', 6, 'doctor', 'Lekarz III', 3000, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":59,\"shoes_2\":0,\"torso_1\":429,\"torso_2\":1,\"pants_1\":88,\"pants_2\":0,\"arms\":88}', '{}'),
(37, 'ambulance', 7, 'chied_doctor', 'Doctor I', 3200, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":59,\"shoes_2\":0,\"torso_1\":429,\"torso_2\":1,\"pants_1\":88,\"pants_2\":0,\"arms\":88}', '{}'),
(38, 'ambulance', 8, 'chied_doctor', 'Doctor II', 3500, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":59,\"shoes_2\":0,\"torso_1\":429,\"torso_2\":1,\"pants_1\":88,\"pants_2\":0,\"arms\":88}', '{}'),
(39, 'ambulance', 9, 'boss', 'Zastepca Ordynatora', 3800, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":59,\"shoes_2\":0,\"torso_1\":429,\"torso_2\":1,\"pants_1\":88,\"pants_2\":0,\"arms\":88}', '{}'),
(40, 'ambulance', 10, 'boss', 'Ordynatora', 4000, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":59,\"shoes_2\":0,\"torso_1\":429,\"torso_2\":1,\"pants_1\":88,\"pants_2\":0,\"arms\":88}', '{}'),
(41, 'offambulance', 0, 'Praktykant', 'Poza Sluzba', 400, '{}', '{}'),
(42, 'offambulance', 1, 'ambulance', 'Poza Sluzba', 400, '{}', '{}'),
(43, 'offambulance', 2, 'ambulance', 'Poza Sluzba', 400, '{}', '{}'),
(44, 'offambulance', 3, 'ambulance', 'Poza Sluzba', 400, '{}', '{}'),
(45, 'offambulance', 4, 'doctor', 'Poza Sluzba', 400, '{}', '{}'),
(46, 'offambulance', 5, 'doctor', 'Poza Sluzba', 400, '{}', '{}'),
(47, 'offambulance', 6, 'doctor', 'Poza Sluzba', 400, '{}', '{}'),
(48, 'offambulance', 7, 'chief_doctor', 'Poza Sluzba', 400, '{}', '{}'),
(49, 'offambulance', 8, 'chief_doctor', 'Poza Sluzba', 400, '{}', '{}'),
(50, 'offambulance', 9, 'boss', 'Poza Sluzba', 400, '{}', '{}'),
(51, 'offambulance', 10, 'boss', 'Poza Sluzba', 400, '{}', '{}'),
(52, 'mecano', 0, 'recrue', 'Nowicjusz', 500, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":25,\"shoes_2\":0,\"torso_1\":425,\"torso_2\":10,\"pants_1\":90,\"pants_2\":0,\"arms\":52}', '{}'),
(53, 'mecano', 1, 'novice', 'Majster', 750, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":25,\"shoes_2\":0,\"torso_1\":425,\"torso_2\":10,\"pants_1\":90,\"pants_2\":0,\"arms\":52}', '{}'),
(54, 'mecano', 2, 'experimente', 'Brygadzista', 1000, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":25,\"shoes_2\":0,\"torso_1\":425,\"torso_2\":10,\"pants_1\":90,\"pants_2\":0,\"arms\":52}', '{}'),
(55, 'mecano', 3, 'chief', 'Szef zmiany', 2000, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":25,\"shoes_2\":0,\"torso_1\":425,\"torso_2\":10,\"pants_1\":90,\"pants_2\":0,\"arms\":52}', '{}'),
(56, 'mecano', 4, 'boss', 'Szef Zakladu', 2500, '{\"tshirt_1\":15,\"tshirt_2\":0,\"shoes_1\":25,\"shoes_2\":0,\"torso_1\":425,\"torso_2\":10,\"pants_1\":90,\"pants_2\":0,\"arms\":52}', '{}'),
(57, 'offmecano', 0, 'recrue', 'Poza Sluzba', 250, '{}', '{}'),
(58, 'offmecano', 1, 'ovice', 'Poza Sluzba', 250, '{}', '{}'),
(59, 'offmecano', 2, 'experimente', 'Poza Sluzba', 250, '{}', '{}'),
(60, 'offmecano', 3, 'chief', 'Poza Sluzba', 250, '{}', '{}'),
(61, 'offmecano', 4, 'boss', 'Poza Sluzba', 250, '{}', '{}'),
(62, 'psm', 0, 'recrue', 'Poczatkujacy', 450, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":4,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(63, 'psm', 1, 'novice', 'Pracownik', 600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":3,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(64, 'psm', 2, 'novice', 'DoĹ›wiadczony pracownik', 800, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":3,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(65, 'psm', 3, 'novice', 'Kierownik', 3000, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\"3,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(56, 'psm', 4, 'boss', 'Zastepca Szefa', 2500, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":3,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(57, 'psm', 5, 'boss', 'Szef', 3500, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":3,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kartoteka_notatki`
--

CREATE TABLE `kartoteka_notatki` (
  `identifier` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `policjant` varchar(50) DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Test teoretyczny'),
('drive', 'Prawo jazdy kat. B'),
('drive_bike', 'Prawo jazdy kat. A'),
('drive_truck', 'Prawo jazdy kat. C'),
('ems_insurance', 'Ubezpieczenie Zdrowotne'),
('oc_insurance', 'Ubezpieczenie na Pojazd'),
('police_aiad', 'AIAD'),
('police_fto', 'FTO'),
('police_heli', 'HELI'),
('police_seu', 'SEU'),
('police_swat', 'SWAT'),
('weapon', 'Licencja na broĹ„');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `numery`
--

CREATE TABLE `numery` (
  `id` int(11) DEFAULT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `callout` varchar(11) DEFAULT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opis`
--

CREATE TABLE `opis` (
  `id` varchar(160) DEFAULT NULL,
  `opis` varchar(160) DEFAULT NULL,
  `label` varchar(160) DEFAULT NULL,
  `owner` varchar(160) DEFAULT NULL,
  `time` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `owned_properties`
--

CREATE TABLE `owned_properties` (
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `rented` int(11) DEFAULT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `shared` varchar(60) DEFAULT NULL,
  `arleady_owned` int(11) NOT NULL DEFAULT 0,
  `co_owner1` varchar(60) DEFAULT NULL,
  `co_owner2` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `id` int(55) DEFAULT NULL,
  `owner` varchar(51) COLLATE utf8mb4_bin DEFAULT NULL,
  `vehicle` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `owner_type` int(2) NOT NULL DEFAULT 1,
  `state` int(4) NOT NULL DEFAULT 0,
  `plate` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL,
  `vehicleid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


-- Struktura tabeli dla tabeli `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) DEFAULT NULL,
  `channel` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) DEFAULT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num refĂ©rence du contact',
  `incoming` int(11) NOT NULL COMMENT 'DĂ©fini si on est Ă  l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) DEFAULT NULL,
  `transmitter` varchar(10) DEFAULT NULL,
  `receiver` varchar(10) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) DEFAULT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pixel_odznaka`
--

CREATE TABLE `pixel_odznaka` (
  `id` int(255) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `callsign` varchar(255) DEFAULT NULL,
  `odznaka` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `playerstattoos`
--

CREATE TABLE `playerstattoos` (
  `id` int(11) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `tattoos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prompt`
--

CREATE TABLE `prompt` (
  `notes` varchar(255) DEFAULT NULL,
  `command` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `properties`
--

CREATE TABLE `properties` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `owned` int(11) DEFAULT 0,
  `free` int(11) NOT NULL DEFAULT 0,
  `garage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`, `owned`, `free`, `garage`) VALUES
(3, 'Motel-LepszaMelina1', 'Dom 1', '{\"x\":1142.1,\"y\":2654.68,\"z\":38.15}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1139.9,\"y\":2654.66,\"z\":38.0}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(4, 'Motel-LepszaMelina2', 'Dom 2', '{\"x\":1142.15,\"y\":2651.12,\"z\":38.14}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1140.39,\"y\":2651.26,\"z\":38.14}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(5, 'Motel-LepszaMelina3', 'Dom 3', '{\"x\":1142.04,\"y\":2643.65,\"z\":38.14}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1140.46,\"y\":2644.18,\"z\":38.14}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(6, 'Motel-LepszaMelina4', 'Dom 4', '{\"x\":1141.13,\"y\":2642.09,\"z\":38.14}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1140.46,\"y\":2644.18,\"z\":38.14}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(7, 'Motel-LepszaMelina5', 'Dom 5', '{\"x\":1136.27,\"y\":2642.03,\"z\":38.14}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1136.45,\"y\":2643.69,\"z\":38.14}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(9, 'Motel-LepszaMelina7', 'Dom 7', '{\"x\":1125.27,\"y\":2642.24,\"z\":38.14}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1125.32,\"y\":2643.87,\"z\":38.14}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(10, 'Motel-LepszaMelina8', 'Dom 8', '{\"x\":1121.43,\"y\":2642.32,\"z\":38.14}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1121.48,\"y\":2643.92,\"z\":38.14}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(11, 'Motel-LepszaMelina9', 'Dom 9', '{\"x\":1114.69,\"y\":2642.42,\"z\":38.14}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1114.85,\"y\":2643.96,\"z\":38.14}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(12, 'Motel-LepszaMelina10', 'Dom 10', '{\"x\":1107.23,\"y\":2642.46,\"z\":38.14}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1107.63,\"y\":2644.1,\"z\":38.14}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(13, 'Motel-LepszaMelina11', 'Dom 11', '{\"x\":1107.13,\"y\":2649.02,\"z\":38.14}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1108.5,\"y\":2649.08,\"z\":38.14}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(14, 'Motel-LepszaMelina12', 'Dom 12', '{\"x\":1107.07,\"y\":2652.81,\"z\":38.14}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1108.51,\"y\":2653.94,\"z\":38.14}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(15, 'Motel-LepszaMelina13', 'Dom 13', '{\"x\":980.36,\"y\":2667.57,\"z\":40.06}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":980.36,\"y\":2669.57,\"z\":40.06}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(16, 'Motel-LepszaMelina14', 'Dom 14', '{\"x\":471.18,\"y\":2607.75,\"z\":44.48}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":470.56,\"y\":2611.06,\"z\":43.27}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(17, 'Motel-LepszaMelina15', 'Dom 15', '{\"x\":346.51,\"y\":2619.05,\"z\":44.69}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":346.51,\"y\":2620.12,\"z\":44.54}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(18, 'Motel-LepszaMelina16', 'Dom 16', '{\"x\":341.19,\"y\":2615.96,\"z\":44.66}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":340.41,\"y\":2617.26,\"z\":44.54}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(19, 'Motel-LepszaMelina17', 'Dom 17', '{\"x\":353.91,\"y\":2620.52,\"z\":44.67}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":352.18,\"y\":2621.89,\"z\":44.55}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(20, 'Motel-LepszaMelina18', 'Dom 18', '{\"x\":359.3,\"y\":2623.62,\"z\":44.69}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":359.3,\"y\":2624.98,\"z\":44.53}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(21, 'Motel-LepszaMelina19', 'Dom 19', '{\"x\":366.71,\"y\":2625.12,\"z\":44.67}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":365.89,\"y\":2626.64,\"z\":44.55}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(22, 'Motel-LepszaMelina20', 'Dom 20', '{\"x\":372.25,\"y\":2628.13,\"z\":44.69}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":372.25,\"y\":2629.18,\"z\":27.96}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(23, 'Motel-LepszaMelina21', 'Dom 21', '{\"x\":379.46,\"y\":2629.97,\"z\":44.67}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":379.97,\"y\":2630.80,\"z\":44.63}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(24, 'Motel-LepszaMelina22', 'Dom 22', '{\"x\":384.79,\"y\":2633.12,\"z\":44.69}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":384.3,\"y\":2634.2,\"z\":44.63}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(25, 'Motel-LepszaMelina23', 'Dom 23', '{\"x\":392.07,\"y\":2634.8,\"z\":44.67}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":392.07,\"y\":2635.7,\"z\":44.61}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(26, 'Motel-LepszaMelina24', 'Dom 24', '{\"x\":397.53,\"y\":2637.93,\"z\":44.69}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":397.53,\"y\":2639,\"z\":44.62}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(27, 'Motel-LepszaMelina25', 'Dom 25', '{\"x\":35.27,\"y\":6662.82,\"z\":32.19}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":34.57,\"y\":6660.63,\"z\":31.72}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 1, ''),
(28, 'Motel-LepszaMelina26', 'Dom 26', '{\"x\":499.62,\"y\":2606.49,\"z\":43.07}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":506.58,\"y\":2612.0,\"z\":42.96}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(29, 'Motel-LepszaMelina27', 'Dom 27', '{\"x\":-9.46,\"y\":6654.09,\"z\":31.48}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-8.67,\"y\":6652.16,\"z\":31.11}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 1, ''),
(30, 'Motel-LepszaMelina28', 'Dom 28', '{\"x\":1.55,\"y\":6612.53,\"z\":32.08}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":0.28,\"y\":6615.39,\"z\":31.47}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 1, ''),
(31, 'Motel-LepszaMelina29', 'Dom 29', '{\"x\":-41.17,\"y\":6636.99,\"z\":31.09}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-38.43,\"y\":6635.14,\"z\":30.32}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(33, 'Motel-LepszaMelina31', 'Dom 30', '{\"x\":-130.74,\"y\":6551.91,\"z\":29.87}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-129.43,\"y\":6550.66,\"z\":29.52}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(34, 'Motel-LepszaMelina32', 'Dom 31', '{\"x\":403.9,\"y\":2584.31,\"z\":43.52}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":401.44,\"y\":2584.41,\"z\":43.52}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(35, 'Motel-LepszaMelina33', 'Dom 32', '{\"x\":-105.58,\"y\":6528.76,\"z\":30.17}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-106.86,\"y\":6530.41,\"z\":29.86}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 1, ''),
(36, 'Motel-LepszaMelina34', 'Dom 33', '{\"x\":382.48,\"y\":2576.49,\"z\":44.32}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":380.19,\"y\":2576.23,\"z\":43.52}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(37, 'Motel-LepszaMelina35', 'Dom 34', '{\"x\":366.8,\"y\":2571.27,\"z\":44.32}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":363.45,\"y\":2570.8,\"z\":43.52}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(38, 'Motel-LepszaMelina36', 'Dom 35', '{\"x\":-229.98,\"y\":6444.98,\"z\":31.2}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-230.91,\"y\":6444.98,\"z\":31.2}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(39, 'Motel-LepszaMelina37', 'Dom 36', '{\"x\":348.18,\"y\":2565.57,\"z\":43.52}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":345.79,\"y\":2565.62,\"z\":43.52}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(40, 'Motel-LepszaMelina38', 'Dom 37', '{\"x\":-167.41,\"y\":6439.17,\"z\":31.92}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-168.24,\"y\":-6438.25,\"z\":31.92}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(41, 'Motel-LepszaMelina39', 'Dom 38', '{\"x\":201.24,\"y\":2442.26,\"z\":60.45}', '{\"x\":266.01,\"y\":-1007.51,\"z\":-101.0}', '{\"x\":265.96,\"y\":-1004.12,\"z\":-99.0}', '{\"x\":206.38,\"y\":2441.15,\"z\":58.89}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.41,\"z\":-100.0}', 650000, 0, 0, ''),
(42, 'Motel-LepszaMelina40', 'Dom 39', '{\"x\":-160.24,\"y\":6432.2,\"z\":31.92}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-161.17,\"y\":6431.65,\"z\":31.92}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(43, 'Motel-LepszaMelina41', 'Dom 40', '{\"x\":-43.87,\"y\":1960.1,\"z\":190.35}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-45.08,\"y\":1961.91,\"z\":190.07}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(44, 'Motel-LepszaMelina42', 'Dom 41', '{\"x\":-150.16,\"y\":6422.23,\"z\":31.92}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-150.73,\"y\":6421.69,\"z\":31.92}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(45, 'Motel-LepszaMelina43', 'Dom 42', '{\"x\":-150.73,\"y\":6416.87,\"z\":31.92}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-151.64,\"y\":6417.7,\"z\":31.92}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(46, 'Motel-LepszaMelina44', 'Dom 43', '{\"x\":-263.74,\"y\":2196.45,\"z\":130.4}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-260.44,\"y\":2194.4,\"z\":129.9}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(47, 'Motel-LepszaMelina45', 'Dom 44', '{\"x\":-157.51,\"y\":6409.67,\"z\":31.92}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-158.35,\"y\":6410.51,\"z\":31.92}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(48, 'Motel-LepszaMelina46', 'Dom 45', '{\"x\":-35.66,\"y\":2871.12,\"z\":59.6}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-37.63,\"y\":2867.88,\"z\":59.15}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(49, 'Motel-LepszaMelina47', 'Dom 46', '{\"x\":-189.01,\"y\":6409.72,\"z\":32.3}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-190.16,\"y\":6411.17,\"z\":31.91}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(50, 'Motel-LepszaMelina48', 'Dom 47', '{\"x\":194.98,\"y\":3030.99,\"z\":43.89}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":198.18,\"y\":3031.35,\"z\":43.59}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(51, 'Motel-LepszaMelina49', 'Dom 48', '{\"x\":-214.14,\"y\":6396.59,\"z\":33.09}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-217.61,\"y\":6398.85,\"z\":31.68}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(52, 'Motel-LepszaMelina50', 'Dom 49', '{\"x\":191.29,\"y\":3082.04,\"z\":43.47}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":194.26,\"y\":3082.16,\"z\":43.02}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(53, 'Motel-LepszaMelina51', 'Dom 50', '{\"x\":-238.09,\"y\":6423.29,\"z\":31.46}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-237.34,\"y\":6422.45,\"z\":31.18}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(54, 'Motel-LepszaMelina52', 'Dom 51', '{\"x\":241.68,\"y\":3107.94,\"z\":42.49}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":238.09,\"y\":3108.02,\"z\":42.41}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(55, 'Motel-LepszaMelina53', 'Dom 52', '{\"x\":-227.88,\"y\":6378.24,\"z\":31.76}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-229.14,\"y\":6379.41,\"z\":31.56}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(56, 'Motel-LepszaMelina54', 'Dom 53', '{\"x\":259.94,\"y\":3176.53,\"z\":42.75}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":263.36,\"y\":3176.02,\"z\":42.6}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(57, 'Motel-LepszaMelina55', 'Dom 54', '{\"x\":361.71,\"y\":2977.02,\"z\":41.84}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":359.03,\"y\":2975.61,\"z\":40.94}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(58, 'Motel-LepszaMelina56', 'Dom 55', '{\"x\":-246.23,\"y\":6414.21,\"z\":31.46}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-247.45,\"y\":6413.39,\"z\":31.19}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(59, 'Motel-LepszaMelina57', 'Dom 56', '{\"x\":412.47,\"y\":2965.08,\"z\":41.89}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":409.9,\"y\":2965.01,\"z\":41.89}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(60, 'Motel-LepszaMelina58', 'Dom 57', '{\"x\":436.26,\"y\":2996.22,\"z\":41.28}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":429.36,\"y\":2993.69,\"z\":40.95}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 450000, 0, 0, ''),
(61, 'Motel-LepszaMelina59', 'Dom 58', '{\"x\":-272.21,\"y\":6400.62,\"z\":31.5}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-271.39,\"y\":6399.09,\"z\":31.34}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(62, 'Motel-LepszaMelina60', 'Dom 59', '{\"x\":-248.03,\"y\":6370.27,\"z\":31.85}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-249.23,\"y\":6370.73,\"z\":31.48}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(63, 'Motel-LepszaMelina61', 'Dom 60', '{\"x\":524.49,\"y\":3080.52,\"z\":40.66}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":522.97,\"y\":3077.53,\"z\":40.28}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(64, 'Motel-LepszaMelina62', 'Dom 61', '{\"x\":508.78,\"y\":3100.06,\"z\":41.31}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":506.78,\"y\":3099.65,\"z\":41.31}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(65, 'Motel-LepszaMelina63', 'Dom 62', '{\"x\":-280.67,\"y\":6351.01,\"z\":32.6}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":280.67,\"y\":6351.42,\"z\":32.49}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(66, 'Motel-LepszaMelina64', 'Dom 63', '{\"x\":848.23,\"y\":2864.02,\"z\":58.49}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":851.79,\"y\":2857.95,\"z\":58.39}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(67, 'Motel-LepszaMelina65', 'Dom 64', '{\"x\":-302.8,\"y\":6327.59,\"z\":32.89}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-303.30,\"y\":6328.86,\"z\":32.49}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(68, 'Motel-LepszaMelina66', 'Dom 65', '{\"x\":858.9,\"y\":2877.46,\"z\":57.98}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":866.7,\"y\":2878.48,\"z\":57.88}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(69, 'Motel-LepszaMelina67', 'Dom 66', '{\"x\":-364.74,\"y\":6337.28,\"z\":29.85}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-365.42,\"y\":6339.37,\"z\":39.85}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(70, 'Motel-LepszaMelina68', 'Dom 67', '{\"x\":890.81,\"y\":2854.73,\"z\":57.0}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":888.99,\"y\":2854.16,\"z\":57.0}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(71, 'Motel-LepszaMelina69', 'Dom 68', '{\"x\":722.38,\"y\":2330.76,\"z\":51,75}', '{\"x\":266.01,\"y\":-1007.51,\"z\":-101.0}', '{\"x\":265.96,\"y\":-1004.12,\"z\":-99.0}', '{\"x\":721.72,\"y\":2335.59,\"z\":50.18}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.41,\"z\":-100.0}', 650000, 0, 0, ''),
(72, 'Motel-LepszaMelina70', 'Dom 69', '{\"x\":-333.07,\"y\":6302.51,\"z\":33.09}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-335,\"y\":6304.86,\"z\":32.49}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(73, 'Motel-LepszaMelina71', 'Dom 70', '{\"x\":791.53,\"y\":2176.56,\"z\":52.65}', '{\"x\":266.01,\"y\":-1007.51,\"z\":-101.0}', '{\"x\":265.96,\"y\":-1004.12,\"z\":-99.0}', '{\"x\":792.56,\"y\":2178.89,\"z\":52.65}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.41,\"z\":-100.0}', 650000, 0, 0, ''),
(74, 'Motel-LepszaMelina72', 'Dom 71', '{\"x\":-407.14,\"y\":6313.78,\"z\":28.94}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-405.51,\"y\":6321.92,\"z\":28.95}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(75, 'Motel-LepszaMelina73', 'Dom 72', '{\"x\":-379.72,\"y\":6253.02,\"z\":31.85}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-379.12,\"y\":6254.68,\"z\":31.54}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(76, 'Motel-LepszaMelina74', 'Dom 73', '{\"x\":1400.76,\"y\":2169.98,\"z\":97.89}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1403.3,\"y\":2169.56,\"z\":97.77}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(77, 'Motel-LepszaMelina75', 'Dom 74', '{\"x\":-359.95,\"y\":6260.86,\"z\":31.86}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-358.55,\"y\":6261.78,\"z\":31.49}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(78, 'Motel-LepszaMelina76', 'Dom 75', '{\"x\":1535.81,\"y\":2232.05,\"z\":77.7}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1528.59,\"y\":2232.47,\"z\":75.64}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(79, 'Motel-LepszaMelina77', 'Dom 76', '{\"x\":1586.19,\"y\":2906.93,\"z\":57.97}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1584.05,\"y\":2905.45,\"z\":56.91}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(80, 'Motel-LepszaMelina79', 'Dom 77', '{\"x\":-451.04,\"y\":6269.86,\"z\":30.04}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-452.71,\"y\":6265.8,\"z\":30.04}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(81, 'Motel-LepszaMelina79', 'Dom 78', '{\"x\":2588.4,\"y\":3167.77,\"z\":51.37}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":2591.3,\"y\":3169.36,\"z\":50.95}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(82, 'Motel-LepszaMelina80', 'Dom 79', '{\"x\":-454.71,\"y\":6197.61,\"z\":29.55}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-453.75,\"y\":6200.2,\"z\":29.55}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(83, 'Motel-LepszaMelina81', 'Dom 80', '{\"x\":2632.36,\"y\":3257.86,\"z\":55.46}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":2635.26,\"y\":3259.7,\"z\":55.25}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(84, 'Motel-LepszaMelina82', 'Dom 81', '{\"x\":-374.13,\"y\":6190.6,\"z\":31.73}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-372.49\"y\":6189.24,\"z\":31.54}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(85, 'Motel-LepszaMelina83', 'Dom 82', '{\"x\":-356.6,\"y\":6207.33,\"z\":31.84}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-355.94,\"y\":6206.67,\"z\":31.49}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(86, 'Motel-LepszaMelina84', 'Dom 83', '{\"x\":2618.26,\"y\":3275.38,\"z\":55.74}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":2620.66,\"y\":3273.57,\"z\":55.25}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(87, 'Motel-LepszaMelina85', 'Dom 84', '{\"x\":-347.14,\"y\":6224.99,\"z\":31.88}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-346.52,\"y\":6223.85,\"z\":31.5}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(88, 'Motel-LepszaMelina86', 'Dom 85', '{\"x\":2634.47,\"y\":3292.11,\"z\":55.73}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":2632.23,\"y\":3289.01,\"z\":55.25}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(89, 'Motel-LepszaMelina87', 'Dom 86', '{\"x\":2200.57,\"y\":3318.03,\"z\":47.05}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":2202.33,\"y\":3319.18,\"z\":46.18}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(90, 'Motel-LepszaMelina88', 'Dom 87', '{\"x\":2175.21,\"y\":3322.22,\"z\":46.47}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":2176.52,\"y\":3319.89,\"z\":45.97}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 1, ''),
(91, 'Motel-LepszaMelina89', 'Dom 88', '{\"x\":2166.16,\"y\":3379.98,\"z\":46.43}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":2162.76,\"y\":3374.87,\"z\":46.46}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(92, 'Motel-LepszaMelina90', 'Dom 89', '{\"x\":2179.17,\"y\":3496.45,\"z\":46.01}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":2177.12,\"y\":3498.95,\"z\":45.46}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(93, 'Motel-LepszaMelina91', 'Dom 90', '{\"x\":1932.86,\"y\":3804.99,\"z\":32.91}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1929.23,\"y\":3803.64,\"z\":32.04}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(94, 'Motel-LepszaMelina92', 'Dom 91', '{\"x\":-15.08,\"y\":6557.76,\"z\":33.24}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-12.6,\"y\":6560.26,\"z\":31.97}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(95, 'Motel-LepszaMelina93', 'Dom 92', '{\"x\":1925.01,\"y\":3824.68,\"z\":32.44}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1916.52,\"y\":3823.83,\"z\":32.44}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(96, 'Motel-LepszaMelina94', 'Dom 93', '{\"x\":4.23,\"y\":6568.19,\"z\":33.08}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":3.13,\"y\":6566.5,\"z\":32.79}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(97, 'Motel-LepszaMelina95', 'Dom 94', '{\"x\":1902.32,\"y\":3866.98,\"z\":33.07}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1907.94,\"y\":3870.12,\"z\":32.89}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(98, 'Motel-LepszaMelina96', 'Dom 95', '{\"x\":31.19,\"y\":6596.55,\"z\":32.82}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":32.25,\"y\":6595.99,\"z\":32.47}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(99, 'Motel-LepszaMelina97', 'Dom 96', '{\"x\":1895.48,\"y\":3873.49,\"z\":32.58}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1899.07,\"y\":3875.84,\"z\":32.75}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(100, 'Motel-LepszaMelina98', 'Dom 97', '{\"x\":1936.59,\"y\":3891.74,\"z\":32.97}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1937.08,\"y\":3889.44,\"z\":32.4}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(101, 'Motel-LepszaMelina99', 'Dom 98', '{\"x\":1915.79,\"y\":3909.33,\"z\":33.44}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1915.84,\"y\":3905.87,\"z\":32.72}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(102, 'Motel-LepszaMelina100', 'Dom 99', '{\"x\":1880.42,\"y\":3920.69,\"z\":33.21}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1876.77,\"y\":3919.98,\"z\":33.1}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(103, 'Motel-LepszaMelina101', 'Dom 100', '{\"x\":1838.66,\"y\":3907.56,\"z\":33.46}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1837.46,\"y\":3905.6,\"z\":33.23}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(104, 'Motel-LepszaMelina102', 'Dom 101', '{\"x\":1841.75,\"y\":3928.59,\"z\":33.72}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1843.65,\"y\":3926.32,\"z\":32.98}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(105, 'Motel-LepszaMelina103', 'Dom 102', '{\"x\":1808.94,\"y\":3907.98,\"z\":33.74}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1809.64,\"y\":3904.63,\"z\":33.73}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(106, 'Motel-LepszaMelina104', 'Dom 103', '{\"x\":1786.47,\"y\":3912.98,\"z\":34.91}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1786.66,\"y\":3918.12,\"z\":34.4}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(107, 'Motel-LepszaMelina105', 'Dom 104', '{\"x\":1813.57,\"y\":3854.02,\"z\":34.35}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1807.71,\"y\":3851.01,\"z\":34.35}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(108, 'Motel-LepszaMelina106', 'Dom 105', '{\"x\":1832.62,\"y\":3868.59,\"z\":34.3}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1834.47,\"y\":3863.43,\"z\":34.3}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(109, 'Motel-LepszaMelina107', 'Dom 106', '{\"x\":-3190.61,\"y\":1297.64,\"z\":19.07}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3183,\"y\":1294.5,\"z\":14.59}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(110, 'Motel-LepszaMelina108', 'Dom 107', '{\"x\":1859.36,\"y\":3865.07,\"z\":33.06}', '{\"x\":266.01,\"y\":-1007.51,\"z\":-101.0}', '{\"x\":265.96,\"y\":-1004.12,\"z\":-99.0}', '{\"x\":1863.21,\"y\":3867.2,\"z\":32.95}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.41,\"z\":-100.0}', 650000, 0, 0, ''),
(111, 'Motel-LepszaMelina109', 'Dom 108', '{\"x\":-3197.42,\"y\":1274.43,\"z\":12.67}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3196.89,\"y\":1273.73,\"z\":12.67}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(112, 'Motel-LepszaMelina110', 'Dom 109', '{\"x\":-3200.2,\"y\":1232.65,\"z\":10.05}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3198.02,\"y\":1232.75,\"z\":10.05}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(113, 'Motel-LepszaMelina111', 'Dom 110', '{\"x\":1733.57,\"y\":3895.35,\"z\":35.56}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1737.93,\"y\":3898.2,\"z\":35.56}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(114, 'Motel-LepszaMelina112', 'Dom 111', '{\"x\":1728.36,\"y\":3851.7,\"z\":34.79}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1729.9,\"y\":3849.08,\"z\":34.75}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(115, 'Motel-LepszaMelina113', 'Dom 112', '{\"x\":-3193.68,\"y\":1208.88,\"z\":9.43}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3191.91,\"y\":1208.95,\"z\":9.43}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(116, 'Motel-LepszaMelina114', 'Dom 113', '{\"x\":1691.83,\"y\":3865.87,\"z\":34.91}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1688.55,\"y\":3868.56,\"z\":34.84}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(117, 'Motel-LepszaMelina115', 'Dom 114', '{\"x\":-3205.58,\"y\":1186.4,\"z\":9.66}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3203.94,\"y\":1188.69,\"z\":9.66}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(118, 'Motel-LepszaMelina116', 'Dom 115', '{\"x\":-3199.55,\"y\":1164.97,\"z\":9.65}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3197.87,\"y\":1163.39,\"z\":9.55}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(119, 'Motel-LepszaMelina117', 'Dom 116', '{\"x\":1661.24,\"y\":3820.13,\"z\":35.47}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1664.36,\"y\":3822.22,\"z\":34.8}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(120, 'Motel-LepszaMelina118', 'Dom 117', '{\"x\":-3214.62,\"y\":1149.17,\"z\":9.9}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3212.75,\"y\"1148.77,\"z\":9.9}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(121, 'Motel-LepszaMelina119', 'Dom 118', '{\"x\":1760.37,\"y\":3821.64,\"z\":34.77}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1763.79,\"y\":3823.61,\"z\":34.77}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(122, 'Motel-LepszaMelina120', 'Dom 119', '{\"x\":-3224.88,\"y\":1113.51,\"z\":10.58}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3223,\"y\":1112.76,\"z\":10.58}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(123, 'Motel-LepszaMelina121', 'Dom 120', '{\"x\":-3228.13,\"y\":1092.48,\"z\":10.76}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3226.74,\"y\":1091.5,\"z\":10.71}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(124, 'Motel-LepszaMelina122', 'Dom 121', '{\"x\":-3231.67,\"y\":1081.61,\"z\":10.81}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3229.58,\"y\":1081.53,\"z\":10.82}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(125, 'Motel-LepszaMelina123', 'Dom 122', '{\"x\":1777.46,\"y\":3800.07,\"z\":34.52}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1774.27,\"y\":3799.08,\"z\":33.96}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(126, 'Motel-LepszaMelina124', 'Dom 123', '{\"x\":-3231.91,\"y\":1067.99,\"z\":11.01}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3230.3,\"y\":1067.52,\"z\":10.96}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(127, 'Motel-LepszaMelina125', 'Dom 124', '{\"x\":1748.89,\"y\":3783.45,\"z\":34.83}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1746.12,\"y\":3788.16,\"z\":34.83}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(128, 'Motel-LepszaMelina126', 'Dom 125', '{\"x\":-3254.48,\"y\":1064.33,\"z\":11.15}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3252.88,\"y\":1063.91,\"z\":11.15}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(129, 'Motel-LepszaMelina127 ', 'Dom 126', '{\"x\":1733.63,\"y\":3808.71,\"z\":35.12}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1731.92,\"y\":3812.47,\"z\":34.66}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(130, 'Motel-LepszaMelina128', 'Dom 127', '{\"x\":-3250.57,\"y\":1027.22,\"z\":11.76}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3250.57,\"y\":1027.22,\"z\":11.76}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(131, 'Motel-LepszaMelina129', 'Dom 128', '{\"x\":1774.68,\"y\":3742.83,\"z\":34.66}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1777.28,\"y\":3738.25,\"z\":34.66}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(132, 'Motel-LepszaMelina130', 'Dom 129', '{\"x\":-3237.36,\"y\":952.81,\"z\":13.14}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3236.19,\"y\":963.16,\"z\":13.17}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(133, 'Motel-LepszaMelina131', 'Dom 130', '{\"x\":1826.65,\"y\":3729.56,\"z\":33.96}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1830.72,\"y\":3738.11,\"z\":33.96}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(134, 'Motel-LepszaMelina132', 'Dom 131', '{\"x\":-3243.21,\"y\":931.34,\"z\":17.22}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3241.64,\"y\":930.89,\"z\":17.22}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(135, 'Motel-LepszaMelina133', 'Dom 132', '{\"x\":1843.35,\"y\":3778.32,\"z\":33.59}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1840.78,\"y\":3776.46,\"z\":33.16}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(136, 'Motel-LepszaMelina134', 'Dom 133', '{\"x\":1864.27,\"y\":3790.8,\"z\":32.85}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1867.33,\"y\":3792.54,\"z\":32.72}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(137, 'Motel-LepszaMelina135', 'Dom 134', '{\"x\":-3228.85,\"y\":927.62,\"z\":13.97}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3227.3,\"y\":928.97,\"z\":13.96}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(138, 'Motel-LepszaMelina136', 'Dom 135', '{\"x\":1880.8,\"y\":3810.3,\"z\":32.78}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1884.29,\"y\":3812.54,\"z\":32.78}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(139, 'Motel-LepszaMelina137', 'Dom 136', '{\"x\":-3226.07,\"y\":911.61,\"z\":13.99}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":-3224.99,\"y\":912.92,\"z\":13.99}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(140, 'Motel-LepszaMelina138', 'Dom 137', '{\"x\":1900.15,\"y\":3773.45,\"z\":32.88}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1898.91,\"y\":3781.82,\"z\":32.88}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(143, 'Motel-LepszaMelina141', 'Dom 138', '{\"x\":3311.17,\"y\":5176.31,\"z\":19.91}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":3312.68,\"y\":5175.34,\"z\":19.61}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(144, 'Motel-LepszaMelina142', 'Dom 139', '{\"x\":1725.5,\"y\":4642.34,\"z\":43.88}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":1721.17,\"y\":4640.08,\"z\":43.31}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(145, 'Motel-LepszaMelina143', 'Dom 140', '{\"x\":3688.75,\"y\":4562.8,\"z\":25.18}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":3690.02,\"y\":4562.81,\"z\":25.18}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(146, 'Motel-LepszaMelina144', 'Dom 141', '{\"x\":3725.35,\"y\":4525.23,\"z\":22.47}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":3725.3,\"y\":4524.77,\"z\":22.47}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(147, 'Motel-LepszaMelina145', 'Dom 142', '{\"x\":2638.97,\"y\":4246.62,\"z\":44.77}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":2639.54,\"y\":4246.36,\"z\": 44.75}\r\n', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(148, 'Motel-LepszaMelina146', 'Dom 143', '{\"x\":2567.13,\"y\":4273.85,\"z\":41.99}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":2569.24,\"y\":4275.41,\"z\":41.75}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(149, 'Motel-LepszaMelina147', 'Dom 144', '{\"x\":2482.34,\"y\":3722.52,\"z\":43.92}', '{\"x\":151.39,\"y\":-1007.96,\"z\":-99.0}', '{\"x\":151.34,\"y\":-1006.36,\"z\":-99.0}', '{\"x\":2480.48,\"y\":3724.73,\"z\":43.24}', '[]', NULL, 1, 0, NULL, '{\"x\":151.29,\"y\":-1003.23,\"z\":-99.0}', 650000, 0, 0, ''),
(150, 'Motel-148', 'Dom 145', '{\"x\":1059.31,\"y\":-675.48,\"z\":56.27}', '{\"x\":1056.83,\"y\":-674.31,\"z\":56.95}', '{\"x\":1056.83,\"y\":-674.31,\"z\":56.95}', '{\"x\":1059.31,\"y\":-675.48,\"z\":56.27}', '[]', NULL, 1, 0, NULL, '{\"x\":1053.82,\"y\":-671.24,\"z\":57.05}', 400000, 0, 0, ''),
(151, 'Motel-149', 'Dom 146', '{\"x\":1071.59,\"y\":-667.02,\"z\":57.07}', '{\"x\":1071.03,\"y\":-664.71,\"z\":57.35}', '{\"x\":1071.03,\"y\":-664.71,\"z\":57.35}', '{\"x\":1071.59,\"y\":-667.02,\"z\":57.07}', '[]', NULL, 1, 0, NULL, '{\"x\":1070.65,\"y\":-660.43,\"z\":57.45}', 400000, 0, 0, ''),
(152, 'Motel-150', 'Dom 147', '{\"x\":1082.0,\"y\":-667.72,\"z\":57.07}', '{\"x\":1082.45,\"y\":-665.2,\"z\":57.35}', '{\"x\":1071.03,\"y\":-664.71,\"z\":57.35}', '{\"x\":1082.45,\"y\":-665.2,\"z\":57.35}', '[]', NULL, 1, 0, NULL, '{\"x\":1083.9,\"y\":-661.25,\"z\":57.45}', 400000, 0, 0, ''),
(153, 'Motel-151', 'Dom 148', '{\"x\":1092.74,\"y\":-672.38,\"z\":56.8}', '{\"x\":1094.1,\"y\":-670.6,\"z\":57.15}', '{\"x\":1092.74,\"y\":-672.38,\"z\":56.8}', '{\"x\":1094.1,\"y\":-670.6,\"z\":57.15}', '[]', NULL, 1, 0, NULL, '{\"x\":1097.19,\"y\":-668.06,\"z\":57.25}', 400000, 0, 0, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) COLLATE utf8_polish_ci DEFAULT NULL,
  `plate` varchar(12) COLLATE utf8_polish_ci DEFAULT NULL,
  `player_name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `base_price` int(11) DEFAULT NULL,
  `rent_price` int(11) DEFAULT NULL,
  `owner` varchar(22) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shops`
--

CREATE TABLE `shops` (
  `store` varchar(100) DEFAULT NULL,
  `item` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `Klucz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `shops`
--

INSERT INTO `shops` (`store`, `item`, `price`, `Klucz`) VALUES
('TwentyFourSeven', 'bread', 3, 1),
('TwentyFourSeven', 'water', 2, 2),
('RobsLiquor', 'bread', 3, 3),
('RobsLiquor', 'water', 2, 4),
('LTDgasoline', 'bread', 3, 5),
('LTDgasoline', 'water', 2, 6),
('TwentyFourSeven', 'cocacola', 4, 13),
('RobsLiquor', 'cocacola', 4, 14),
('LTDgasoline', 'cocacola', 4, 15),
('TwentyFourSeven', 'icetea', 4, 16),
('RobsLiquor', 'icetea', 4, 17),
('LTDgasoline', 'icetea', 4, 18),
('TwentyFourSeven', 'cigarett', 2, 23),
('TwentyFourSeven', 'lighter', 4, 24),
('Bar', 'beer', 30, 25),
('Bar', 'cigarett', 2, 29),
('Bar', 'lighter', 4, 30),
('Apteka', 'phone', 2000, 34),
('LTDgasoline', 'blowpipe', 500, 35),
('TwentyFourSeven', 'blowpipe', 500, 36),
('RobsLiquor', 'blowpipe', 500, 37),
('castorama', 'drill', 20000, 38),
('Bar', 'handcuffs', 1000, 39),
('mcdonald', 'hamburger', 9, 40),
('mcdonald', 'cupcake', 3, 42),
('castorama', 'handcuffs', 5000, 55),
('castorama', 'fixkit', 2500, 68),
('castorama', 'blowpipe', 5000, 75),
('Apteka', 'radio', 2000, 222),
('RobsLiquor', 'energy', 250, 234),
('RobsLiquor', 'kawa', 500, 274),
('TwentyFourSeven', 'energy', 250, 2222),
('TwentyFourSeven', 'kawa', 500, 2226),
('LTDgasoline', 'energy', 250, 2251),
('LTDgasoline', 'kawa', 500, 2257);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) DEFAULT NULL,
  `identifier` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `society` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tablet_notatki`
--

CREATE TABLE `tablet_notatki` (
  `identifier` varchar(100) DEFAULT NULL,
  `notatka` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tablet_ogloszenia`
--

CREATE TABLE `tablet_ogloszenia` (
  `ogloszenie` text DEFAULT NULL,
  `policjant` varchar(50) DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tablet_ogloszenia_seen`
--

CREATE TABLE `tablet_ogloszenia_seen` (
  `identifier` varchar(100) DEFAULT NULL,
  `seen` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tablet_raporty`
--

CREATE TABLE `tablet_raporty` (
  `identifier` varchar(100) DEFAULT NULL,
  `raport` text DEFAULT NULL,
  `policjant` varchar(50) DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `identifier` varchar(70) DEFAULT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job_id` varchar(255) DEFAULT '{"name":"nojob", "id":0}',
  `loadout` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT '{"x":-1038.14,"y":-2737.70,"z":20.16,"heading":359.81}',
  `animacje` longtext DEFAULT NULL,
  `kartoteka_avatar` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `skin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `last_property` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `bankaccountnumber` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '0',
  `odznaka` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `w_org` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `w_org_grade` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '0',
  `slots` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `tattoos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Struktura tabeli dla tabeli `user_kartoteka`
--

CREATE TABLE `user_kartoteka` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policjant` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `powod` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grzywna` int(11) DEFAULT NULL,
  `ilosc_lat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_licenses`
--

CREATE TABLE `user_licenses` (
  `type` varchar(60) DEFAULT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `time` int(50) NOT NULL DEFAULT -1,
  `label` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_licensess`
--

CREATE TABLE `user_licensess` (
  `type` varchar(60) DEFAULT NULL,
  `label` varchar(60) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `time` int(50) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_poszukiwania`
--

CREATE TABLE `user_poszukiwania` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policjant` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `powod` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pojazd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_properties`
--

CREATE TABLE `user_properties` (
  `id` int(11) DEFAULT NULL,
  `userId` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) COLLATE utf8_polish_ci DEFAULT NULL,
  `model` varchar(60) COLLATE utf8_polish_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category` varchar(60) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Dodge challenger 15', '16CHALLENGER', 13000000, 'import'),
('Lamborghini Huracan Performante', '18performante', 12500000, 'import'),
('Range rover 2020', '18Velar', 25000000, 'import'),
('audi rs7 sedan', '2016RS7', 35000000, 'import'),
('zr1', '2019zr1', 40000000, 'import'),
('Chevrolet Silverado', '20trailboss', 3550000, 'import'),
('BMW m5 suv', '20x5m', 26000000, 'import'),
('ferrari 488 spider', '488lbspider', 30000000, 'import'),
('mclaren 600lt', '600lt', 65000000, 'import'),
('Dodge charger 69', '69CHARGER', 17500000, 'import'),
('porshe 911venom', '911venom', 60000000, 'import'),
('mercedes a45amg', 'a45amg', 20000000, 'import'),
('toyota supra nowa', 'a90sh', 20000000, 'import'),
('agera rs', 'agerars', 75000000, 'import'),
('audi rs3', 'ars3spxxbk', 30000000, 'import'),
('rs52018', 'Audi RS5', 3500000, 'import'),
('brabus z', 'b800', 25000000, 'import'),
('buggati bc', 'bcps', 80000000, 'import'),
('quad', 'bcsportsmanm', 5000000, 'import'),
('buggati divo', 'BDIVO', 85000000, 'import'),
('BF 400', 'bf400', 125000, 'lokalne'),
('brabus g800', 'bg700w', 55000000, 'import'),
('bmw m5 manhart', 'BMCI', 62000000, 'import'),
('bmwm4', 'BMWM4', 65000000, 'import'),
('BMW m8nsc', 'bmwm82ncs', 56000000, 'import'),
('BMW M8wb', 'bmwm8wb', 54000000, 'import'),
('Brabus 800', 'brabus800', 47500000, 'import'),
('buggati centuria', 'centuria', 70000000, 'import'),
('Bugatti Chiron', 'chiron17', 9500000, 'import'),
('demon hawk', 'demonhawkk', 75000000, 'import'),
('supra drift', 'driftsupra', 45000000, 'import'),
('p1x', 'f248', 10000000, 'import'),
('ferrari 8t', 'f8t', 56000000, 'import'),
('fmgt', 'fmgt', 32000000, 'import'),
('LaFerrari', 'fxxkevo', 78000000, 'import'),
('mercedes 6x6', 'g63amg6x6', 52000000, 'import'),
('infi', 'gdaq50', 41000000, 'import'),
('gemeraa', 'gemera', 66000000, 'import'),
('Mercedes GLS63 Brabus', 'GLS63', 50000000, 'import'),
('Hammer gmc', 'gmcev2', 97000000, 'import'),
('golf mk7', 'golfmk6', 10000000, 'import'),
('ford gt 17', 'gt17', 68000000, 'import'),
('gtr', 'gtr', 40000000, 'import'),
('lancer', 'gxevox', 47000000, 'import'),
('Hummer Humvee', 'hmvv', 60000000, 'import'),
('lambo', 'hurevo', 77000000, 'import'),
('lambo cabrio', 'hurlbp', 77000000, 'import'),
('jeep bo', 'jeepg', 60000000, 'import'),
('Canis Kamacho', 'kamacho', 800000, 'lokalne'),
('lambo lb', 'lb750sv', 82000000, 'import'),
('lynanek', 'lykan', 83000000, 'import'),
('BMW m3 drift', 'M3KEAN', 50000000, 'import'),
('Lamborghini Sian', 'rmodsianr', 85000000, 'import'),
('BMW X6', 'rmodx6', 4550000, 'import'),
('Audi RS3', 'rs318', 300000, 'import'),
('Sultan', 'sultan', 75000, 'lokalne'),
('Mercedes x-class Pickup', 'xxxxx', 20000000, 'import');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) COLLATE utf8_polish_ci DEFAULT NULL,
  `label` varchar(60) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('import', 'Importowane'),
('lokalne', 'Lokalne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicle_properties`
--

CREATE TABLE `vehicle_properties` (
  `vehicleId` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `model` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `plate` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `soldby` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `date` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `weashops`
--

INSERT INTO `weashops` (`id`, `name`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 50000),
(2, 'GunShop', 'WEAPON_PISTOL_MK2', 90000),
(3, 'BlackWeashop', 'WEAPON_PISTOL', 70000),
(4, 'GunShop', 'WEAPON_NIGHTSTICK', 7600),
(5, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 10050);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `w_org`
--

CREATE TABLE `w_org` (
  `nazwa` varchar(50) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `kasa` int(11) DEFAULT NULL,
  `kasaB` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `w_org`
--

INSERT INTO `w_org` (`nazwa`, `level`, `kasa`, `kasaB`) VALUES
('jsb', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `w_org_bronie`
--

CREATE TABLE `w_org_bronie` (
  `nazwa` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `ammo` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `w_org_itemy`
--

CREATE TABLE `w_org_itemy` (
  `nazwa` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `ilosc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `w_org_permisje`
--

CREATE TABLE `w_org_permisje` (
  `org` varchar(50) DEFAULT NULL,
  `org_grade` int(11) DEFAULT 0,
  `stankonta` int(11) DEFAULT 0,
  `stankontaB` int(11) DEFAULT 0,
  `wezitem` int(11) DEFAULT 0,
  `wrzucitem` int(11) DEFAULT 0,
  `wrzucpieniadze` int(11) DEFAULT 0,
  `wrzucpieniadzeB` int(11) DEFAULT 0,
  `wyplac` int(11) DEFAULT 0,
  `wyplacB` int(11) DEFAULT 0,
  `wrzucbron` int(11) DEFAULT 0,
  `wezbron` int(11) DEFAULT 0,
  `zapros` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `w_org_permisje`
--

INSERT INTO `w_org_permisje` (`org`, `org_grade`, `stankonta`, `stankontaB`, `wezitem`, `wrzucitem`, `wrzucpieniadze`, `wrzucpieniadzeB`, `wyplac`, `wyplacB`, `wrzucbron`, `wezbron`, `zapros`) VALUES
('jsb', 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('jsb', 3, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1),
('jsb', 2, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0),
('jsb', 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0),
('jsb', 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0);

-- --------------------------------------------------------


--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indeksy dla tabeli `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `baninfo`
--
ALTER TABLE `baninfo`
  ADD PRIMARY KEY (`identifier`);

--
-- Indeksy dla tabeli `banlist`
--
ALTER TABLE `banlist`
  ADD PRIMARY KEY (`identifier`);

--
-- Indeksy dla tabeli `banlisthistory`
--
ALTER TABLE `banlisthistory`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `bwh_bans`
--
ALTER TABLE `bwh_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `bwh_identifiers`
--
ALTER TABLE `bwh_identifiers`
  ADD PRIMARY KEY (`steam`);

--
-- Indeksy dla tabeli `bwh_warnings`
--
ALTER TABLE `bwh_warnings`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `hungerthirst`
--
ALTER TABLE `hungerthirst`
  ADD PRIMARY KEY (`idSteam`);

--
-- Indeksy dla tabeli `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `jail`
--
ALTER TABLE `jail`
  ADD PRIMARY KEY (`identifier`);

--
-- Indeksy dla tabeli `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indeksy dla tabeli `numery`
--
ALTER TABLE `numery`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pixel_odznaka`
--
ALTER TABLE `pixel_odznaka`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `playerstattoos`
--
ALTER TABLE `playerstattoos`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indeksy dla tabeli `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`Klucz`);

--
-- Indeksy dla tabeli `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `identifier` (`identifier`),
  ADD KEY `job` (`job`),
  ADD KEY `bankaccountnumber` (`bankaccountnumber`),
  ADD KEY `phone_number` (`phone_number`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`),
  ADD KEY `sex` (`sex`);

--
-- Indeksy dla tabeli `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indeksy dla tabeli `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indeksy dla tabeli `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `w_org_bronie`
--
ALTER TABLE `w_org_bronie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT dla tabeli `addon_inventory`
--
ALTER TABLE `addon_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `banlisthistory`
--
ALTER TABLE `banlisthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `bwh_bans`
--
ALTER TABLE `bwh_bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `bwh_warnings`
--
ALTER TABLE `bwh_warnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT dla tabeli `numery`
--
ALTER TABLE `numery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pixel_odznaka`
--
ALTER TABLE `pixel_odznaka`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `playerstattoos`
--
ALTER TABLE `playerstattoos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `w_org_bronie`
--
ALTER TABLE `w_org_bronie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
