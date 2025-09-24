-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2025 at 09:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pamsimas_backup`
--

-- --------------------------------------------------------

--
-- Table structure for table `abonemens`
--

CREATE TABLE `abonemens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abonemens`
--

INSERT INTO `abonemens` (`id`, `harga`, `created_at`, `updated_at`) VALUES
(1, 5000, NULL, '2025-06-12 09:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin', '$2y$12$i2gBG0.2pXrxuGZ4.qMMTepjW9JvESyPavvyfM9tE7HqVv5RjqdBy', '2025-06-04 17:24:11', '2025-06-04 17:24:11'),
(3, 'Alif', 'alif', '$2y$12$xdfQn/L9B9IIbz8thjhPGubEAAsZ2E2Rzhri2uV/NWYmbizXsO0W2', '2025-06-04 17:46:29', '2025-06-04 17:46:29'),
(4, 'Puji', 'puji', '$2y$12$GQU/eKqltMaZUnFpnbawpeel4GG.QRNhdvHJI.VkupZfv32rssc6W', '2025-06-07 03:17:38', '2025-06-07 03:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_11_064727_create_penggunas_table', 1),
(5, '2025_05_14_103429_create_tagihans_table', 1),
(6, '2025_05_15_042141_create_pengaturans_table', 1),
(7, '2025_05_25_115450_create_admins_table', 1),
(8, '2025_06_02_102106_create_tarifs_table', 1),
(9, '2025_06_02_103834_create_abonemens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengaturan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `pengaturan`, `created_at`, `updated_at`) VALUES
(1, 'Halo pengguna Tirto Bancak!', NULL, '2025-06-07 03:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `alamat`, `no_hp`, `username`, `password`, `created_at`, `updated_at`) VALUES
('TB-1', 'Darmo Kadimun', 'Garon, RT 02 RW 02', '082133085243', 'darmokadimun', '$2y$12$HCMxSIyZjlPKXwKsQqi81.FUaoKsjWw9ae0IDixXdcKkXnEh9dPDK', '2025-06-12 05:02:48', '2025-06-12 05:02:48'),
('TB-10', 'Mustofa Basori', 'Garon, RT 02 RW 02', '082133085243', 'mustofabasori', '$2y$12$yBVhuwZVGzEXLS7onBlCY.d6K8OtRpy3v9jZVNGqIpHHIsx852q.m', '2025-06-12 05:08:35', '2025-06-12 05:08:35'),
('TB-11', 'Yahmin', 'Garon, RT 01 RW 02', '082133085243', 'yahmin', '$2y$12$xxG8ocTYYTa7eRwMwALRZ.JWkutdR7DTBDr8E.dWK5WWfz.lDnyVq', '2025-06-12 05:18:21', '2025-06-12 05:18:21'),
('TB-12', 'Joko Purwanto', 'Garon, RT 02 RW 02', '082133085243', 'jokopurwanto', '$2y$12$GTnnZDrktSlANNQfx71OYOAOV2T1vloEav6V870Z5jSqMWetWpXo2', '2025-06-12 05:22:51', '2025-06-12 05:22:51'),
('TB-13', 'Pahing Kurniawan', 'Garon, RT 02 RW 02', '082133085243', 'pahingkurniawan', '$2y$12$lJqarpDZBBeJn1Uz9vozgefr8ABh6AW3/QGRLKS6qLTrJR0pzYV0u', '2025-06-12 05:23:28', '2025-06-12 05:23:28'),
('TB-14', 'Sardiyanto', 'Garon, RT 01 RW 02', '082133085243', 'sardiyanto', '$2y$12$6RMBq/3dxsJMWbnhefSfbO3sc.Qw1B22riZpkFZX3fjdW75y/R37O', '2025-06-12 05:24:14', '2025-06-12 05:24:14'),
('TB-15', 'Agus Santoso', 'Garon, RT 01 RW 02', '082133085243', 'agussantoso', '$2y$12$hRYOHyYHpemYfa183yOktODjIUv5UESqqeB2XdVvuXnEtvlt1F3oe', '2025-06-12 05:24:51', '2025-06-12 05:24:51'),
('TB-16', 'Taryanto', 'Garon, RT 02 RW 02', '082133085243', 'taryanto', '$2y$12$8It8XUCfABNWEFU4/sFs4O6wGb7TFiGvxlqbaV.S7MuR0x9Xyrb9C', '2025-06-12 05:25:30', '2025-06-12 05:25:30'),
('TB-17', 'Bini', 'Garon, RT 02 RW 02', '082133085243', 'bini', '$2y$12$kxQ7YApHNR2l5AzjrIxXsu2c6wjGMIQnNiFwiFsYzaocCXz2rhBxm', '2025-06-12 05:25:57', '2025-06-12 05:25:57'),
('TB-18', 'Tumiran', 'Garon, RT 02 RW 02', '082133085243', 'tumiran', '$2y$12$VNWIpKKPg8Gb1TXCsCupweEEIhoMqJYQAWNxPzwKJSdSxT4K/8LwK', '2025-06-12 05:26:33', '2025-06-12 05:26:33'),
('TB-19', 'Yatinem', 'Garon, RT 02 RW 02', '082133085243', 'yatinem', '$2y$12$PUAcX8xT40eHOlhDTCxgxeHal4rXf5tdOlwauUuQw6.LSJmHP6Cqa', '2025-06-12 05:26:55', '2025-06-12 05:26:55'),
('TB-2', 'Noto Tamin', 'Garon, RT 02 RW 02', '082133085243', 'nototamin', '$2y$12$1u254Mh777gV9aX/LTe9a.SHlr8kPjeYzH3bsP6LOERw7ZaBssTLC', '2025-06-12 05:03:11', '2025-06-12 05:03:11'),
('TB-20', 'Suhartono', 'Garon, RT 01 RW 02', '082133085243', 'suhartono', '$2y$12$CZ14.A86ffKgRRygv6ii5en7U8TNFcRrY79uYi7zMQtgGUiJ5IyYm', '2025-06-12 05:27:29', '2025-06-12 05:27:29'),
('TB-21', 'Supinah', 'Garon, RT 01 RW 02', '082133085243', 'supinah', '$2y$12$N/ymVSqEOcAb7/c8vwGadOalx5ooQECop3ykktxg5trZgoriAnu5W', '2025-06-12 05:27:51', '2025-06-12 05:27:51'),
('TB-22', 'Bibit', 'Garon, RT 01 RW 02', '082133085243', 'bibit', '$2y$12$CUBiHf1ZEy74B8z.ePdiReyGZ2ONSm8c5bMHAidxbT1/cN4hCNv7a', '2025-06-12 05:28:31', '2025-06-12 05:28:31'),
('TB-23', 'Mushola (P. Slamet)', 'Garon, RT 01 RW 02', '082133085243', 'musholapslamet', '$2y$12$JL.mdncsIdXVwSC.RYY5Ku15XqBFxRtT5eVzbfn9JLUg7xlGdFi9C', '2025-06-12 05:29:56', '2025-06-12 05:29:56'),
('TB-24', 'Masjid Baitul Muttaqin', 'Garon, RT 03 RW 02', '082133085243', 'masjidbaitulmuttaqin', '$2y$12$3C.aQoaxRkaYfSMPVFekROMyVCLn80O3BzbmfxLEVEdV1xkWtN3HG', '2025-06-12 05:30:30', '2025-06-12 05:30:30'),
('TB-25', 'Widiyanto', 'Garon, RT 03 RW 02', '082133085243', 'widiyanto', '$2y$12$USD4EIb50i076LW3qF4Fbev527dBhcAdrbA98IQJvCUQCJDo9p4.6', '2025-06-12 05:31:07', '2025-06-12 05:31:07'),
('TB-26', 'Rusmono', 'Garon, RT 03 RW 02', '082133085243', 'rusmono', '$2y$12$gopzZKiWFIMIHN.RRHOgM.cLhh01t4lCC3t8ZCNcTPkQd57C0Otga', '2025-06-12 05:31:36', '2025-06-12 05:31:36'),
('TB-27', 'Kadirun', 'Garon, RT 03 RW 02', '082133085243', 'kadirun', '$2y$12$Zk3OdlXaNQs5q/cCnlxpiu9cpbOJ4DtW9wxVs/yDVqQLVhKxQEoKC', '2025-06-12 05:32:07', '2025-06-12 05:32:07'),
('TB-28', 'Yatno', 'Garon, RT 01 RW 02', '082133085243', 'yatno', '$2y$12$weybHhiVUr9iRHZABNquGu8EqJ71QWsvC9QKMuqy6Iz3cdc64gPz2', '2025-06-12 05:32:29', '2025-06-12 05:32:29'),
('TB-29', 'Supriyati', 'Garon, RT 03 RW 02', '082133085243', 'supriyati', '$2y$12$Nt6nh0Q01IHSUgod6HzbcOZduQPO1jR96vF1QfMzJbsDLa0FOCAEW', '2025-06-12 05:33:03', '2025-06-12 05:33:03'),
('TB-3', 'Gemiati', 'Garon, RT 02 RW 02', '082133085243', 'gemiati', '$2y$12$OoHQqmGaSTRkTpyofyINoeD66oEOaLXvWd17ntUfDcgV4eQfBikFe', '2025-06-12 05:03:37', '2025-06-12 05:03:37'),
('TB-30', 'Bibit (Tin)', 'Garon, RT 01 RW 02', '082133085243', 'tin', '$2y$12$GGeuj79WODlwM0pn5QNP1uVr254qjyfR0DEUwl9jbJKZRiwKhaUey', '2025-06-12 05:33:41', '2025-06-12 05:33:41'),
('TB-31', 'P. Sukiman', 'Garon, RT 01 RW 02', '082133085243', 'psukiman', '$2y$12$WKp8Z/dZBlVLXoHs4.ukUuKHI7jps/mkMc5Z47JmlEi/Cd9euN.Ku', '2025-06-12 05:34:22', '2025-06-12 05:34:22'),
('TB-32', 'Pujiono', 'Garon, RT 03 RW 02', '082133085243', 'pujiono', '$2y$12$p6bNKTIDm0EouUcME7KcT.DS5X2vWC9w4sVgI6R0Rru1HgAi8UjC2', '2025-06-12 05:34:56', '2025-06-12 05:34:56'),
('TB-33', 'Bagiyo', 'Garon, RT 03 RW 02', '082133085243', 'bagiyo', '$2y$12$D/qrC9CQsgofnFbZLE7GiOYLmzW8FG89k4pSSarsRLzJo0r/Z3Q6.', '2025-06-12 05:35:35', '2025-06-12 05:35:35'),
('TB-34', 'Subari', 'Garon, RT 03 RW 02', '082133085243', 'subari', '$2y$12$Z/MWKwH/Jb02ZzNQ8God/u0UYf4tFeahRLWUFMLJd3DbZBgiDnVbm', '2025-06-12 05:38:16', '2025-06-12 05:38:16'),
('TB-35', 'TPQ Baitul Muttaqin (Subari)', 'Garon, RT 03 RW 02', '082133085243', 'tpqbaitulmuttaqin', '$2y$12$czNGEBhAXP.EuGNSH1yHY.f/Q0rrDMJe.U2HAAmsUfPgn8tLHtweG', '2025-06-12 05:39:09', '2025-06-12 05:39:09'),
('TB-36', 'Kasminik', 'Garon, RT 03 RW 02', '082133085243', 'kasminik', '$2y$12$IT8OzYyVIy6rpQo5.R667.8heJEmJAjHZvy6ElBhH3dCYuyOTGk0K', '2025-06-12 05:39:32', '2025-06-12 05:39:32'),
('TB-37', 'Asmo Selan', 'Garon, RT 03 RW 02', '082133085243', 'asmoselan', '$2y$12$29QF9RQ9C8um0rmTvKiu5eJInE8EcOOBTIaxergLAWP5clHm9iwkW', '2025-06-12 05:40:02', '2025-06-12 05:40:02'),
('TB-38', 'Mushola Al Hidayah (P. Bandi)', 'Garon, RT 01 RW 02', '082133085243', 'musholaalhidayah', '$2y$12$W5cYfDwdqUdr9AVN9ZSpueLWmTj80No.tURoSjfnrf/LQzpfy.O4O', '2025-06-12 05:40:40', '2025-06-12 05:40:40'),
('TB-39', 'Jiyem', 'Garon, RT 03 RW 02', '082133085243', 'jiyem', '$2y$12$Wty/P1WqTP5bg2LGT9RdterJk4ZD8qBa3dS1qNJj5IUNEdZM1zLB6', '2025-06-12 05:41:07', '2025-06-12 05:41:07'),
('TB-4', 'Sudadi', 'Garon, RT 02 RW 02', '082133085243', 'sudadi', '$2y$12$8Dud/Sokw6nHFU5TdCXLEOXbNtGPZzPEromb.5YsF2vlMyByM9fZe', '2025-06-12 05:04:04', '2025-06-12 05:04:04'),
('TB-40', 'Jonah', 'Garon, RT 03 RW 02', '082133085243', 'jonah', '$2y$12$J91Wf9eX54CjAkw/yJqR5uMnuLt8L6gXlk9DWIv/eB5aasrqvkrSG', '2025-06-12 05:41:34', '2025-06-12 05:41:34'),
('TB-41', 'Parno Golong', 'Garon, RT 03 RW 02', '082133085243', 'parno', '$2y$12$RqG/y72R7OgKck8aRJH5puUglL0TrtBV19ettC3948S6VuTyba2pm', '2025-06-12 05:42:07', '2025-06-12 05:56:59'),
('TB-42', 'Rakimun', 'Garon, RT 03 RW 02', '082133085243', 'rakimun', '$2y$12$K.Pwt6bIXIVn16glDhZqLOYvt4izD/e79wpmgYyDTvu0yH3aJ2pF.', '2025-06-12 05:42:28', '2025-06-12 05:42:28'),
('TB-43', 'Sukini', 'Garon, RT 03 RW 02', '082133085243', 'sukini', '$2y$12$D2hEZSwbiM6arc1tNylry.V7.HPzaRwyM8J82zl7aX1U3mDrc1Bde', '2025-06-12 05:43:15', '2025-06-12 05:43:15'),
('TB-44', 'Kasmi', 'Garon, RT 03 RW 02', '082133085243', 'kasmi', '$2y$12$yVnEVHV4hdHkfNCRHYnhoex1oOrpSNBrFFoF1WFT4beAuwpl5D23O', '2025-06-12 05:43:36', '2025-06-12 05:43:36'),
('TB-45', 'Bandi', 'Garon, RT 03 RW 02', '082133085243', 'bandi', '$2y$12$ciWTjLoavi5PChWIMio7/.nS8GFjYWyMrZFu5X/cqFrOofwDdpG4y', '2025-06-12 05:45:17', '2025-06-12 05:45:17'),
('TB-46', 'Samsuri', 'Garon, RT 01 RW 02', '082133085243', 'samsuri', '$2y$12$y55REbAjHPzzMkBTGr/YTuq7Q1UYHrB1kR/xjeV9k9vCKNLPTMTYK', '2025-06-12 05:45:44', '2025-06-12 05:45:44'),
('TB-47', 'Kamto', 'Garon, RT 01 RW 02', '082133085243', 'kamto', '$2y$12$R71xY4f1U20T6pu1vjxRCe5Izu7mNDoEamiC53Xz9Q1aiaCTlzv0y', '2025-06-12 05:46:10', '2025-06-12 05:46:10'),
('TB-48', 'Somo Misran', 'Garon, RT 01 RW 02', '082133085243', 'somomisran', '$2y$12$mNJKQ3W2KzhiFeFMnYTDBOfb5eon./agog2sG8D8h0f33MA.rjBq2', '2025-06-12 05:46:48', '2025-06-12 05:46:48'),
('TB-49', 'Sugianto', 'Garon, RT 01 RW 02', '082133085243', 'sugianto', '$2y$12$oeEKnl8KIG2NQE4L0lLII.vgioBPw5qU.RUJk8c/SR74QJ5FwwETq', '2025-06-12 05:47:13', '2025-06-12 05:47:13'),
('TB-5', 'Didik Sudarsono', 'Garon, RT 02 RW 02', '082133085243', 'didiksudarsono', '$2y$12$V2v23Nucywu/ta3Ja/BXw.aQK2nU87Y4qKeuQRNlkVFxkVUIRpjGu', '2025-06-12 05:04:42', '2025-06-12 05:04:42'),
('TB-50', 'Yatini', 'Garon, RT 01 RW 02', '082133085243', 'yatini', '$2y$12$3bX1MeThns4VMqgQbzJDtuOTs5Qhq8W.S/CXtMdGrdS4V4SolwWw.', '2025-06-12 05:47:38', '2025-06-12 05:47:38'),
('TB-51', 'Martini', 'Garon, RT 01 RW 02', '082133085243', 'martini', '$2y$12$vYQL5RmCYj5kw/KfqNs4HOAd2hTvoU6dejT/LHrY2yRR8.N5GVBiu', '2025-06-12 05:47:55', '2025-06-12 05:47:55'),
('TB-52', 'Kamin (Punirah)', 'Garon, RT 01 RW 02', '082133085243', 'karmin', '$2y$12$XMdwAuzCRQOwd5gwoyMqP.oOYR5siQYJndAGoMNQ/R0qSLjY.t76m', '2025-06-12 05:48:35', '2025-06-12 05:48:35'),
('TB-53', 'Harjo Tamin', 'Garon, RT 01 RW 02', '082133085243', 'harjotamin', '$2y$12$jIKhIgjELn3nF2lTZeAXZOIWe/NYRM32w.EHmdV4X9Ttu0cnVKit6', '2025-06-12 05:49:04', '2025-06-12 05:49:04'),
('TB-54', 'Jupriyanto', 'Garon, RT 01 RW 02', '082133085243', 'jupriyanto', '$2y$12$w572cNs1OYUo03HPSgGJG.fvShTNzqH3mYXicGORfgjCoIn2RnOHa', '2025-06-12 05:50:35', '2025-06-12 05:50:35'),
('TB-55', 'Ganeca Canggih Wahyu Dewanata', 'Garon, RT 01 RW 02', '082133085243', 'ganeca', '$2y$12$ncGQyxY9c4rnmSQihvtVdOUacDiDFJ164cTADbSkEBqkWmId6KOxW', '2025-06-12 05:51:07', '2025-06-12 05:51:07'),
('TB-56', 'Budi Santoso', 'Garon, RT 02 RW 02', '082133085243', 'budisantoso', '$2y$12$.CVZAug/XjMhTkaGoH6CYe5t7O4.UQVKJyio8UigYcdo.Lk7tjPjC', '2025-06-12 05:51:39', '2025-06-12 05:51:39'),
('TB-57', 'Sumardi', 'Garon, RT 02 RW 02', '082133085243', 'sumardi', '$2y$12$EiklxX3aeIetnmUGmUaBM.ky3n9/0meTeckkbTnmA92venIEbkFm2', '2025-06-12 05:52:04', '2025-06-12 05:52:04'),
('TB-58', 'Wagiyem', 'Garon, RT 03 RW 02', '082133085243', 'wagiyem', '$2y$12$xdbwrYZf8fyzL3JYv851z.HV7cK4atAmlUKkinPs8O6UqmfM.dw2W', '2025-06-12 05:52:27', '2025-06-12 05:52:27'),
('TB-59', 'Kadiran', 'Garon, RT 03 RW 02', '082133085243', 'kadiran', '$2y$12$GBABuRcgmePTfIKMw6LlQ.fq8rAHwKL3IA.O/7E1tculuikV.3suy', '2025-06-12 05:52:51', '2025-06-12 05:52:51'),
('TB-6', 'Yuli Narsih', 'Garon, RT 02 RW 02', '082133085243', 'yulinarsih', '$2y$12$iP4Oli4FK8HodKuD2a0XgOp9BTY3ih4Dnfsv7xB/wBX69iB1Nzj3e', '2025-06-12 05:05:16', '2025-06-12 05:05:16'),
('TB-60', 'Sujono', 'Garon, RT 04 RW 02', '082133085243', 'sujono', '$2y$12$FzJJ9V.iVtpaiD2WJMnfpeJxOAykseUK.9U4sC.WUHfD.OiHFFVwW', '2025-06-12 05:53:25', '2025-06-12 05:53:25'),
('TB-61', 'Podo', 'Garon, RT 04 RW 02', '082133085243', 'podo', '$2y$12$uSpWvqn9BJ8eCbxNjdwIje.G9EmtKo5aWfwfnfsEm3IJwSyvRrWU2', '2025-06-12 05:53:54', '2025-06-12 05:53:54'),
('TB-62', 'Wardi', 'Garon, RT 04 RW 02', '082133085243', 'wardi', '$2y$12$AxkcCWzLNFvBIZJ8Qict9.0tlmnzUbsX0WKZc3IKHVDWTJUTMZpQC', '2025-06-12 05:54:17', '2025-06-12 05:54:17'),
('TB-63', 'Sugeng Pujianto', 'Garon, RT 04 RW 02', '082133085243', 'sugengpujianto', '$2y$12$4EPvOrCMjYT9W4wcx46eAunwx7dF6rFQg04PP77JzQgEH7Seaws1G', '2025-06-12 05:55:23', '2025-06-12 05:55:23'),
('TB-64', 'Rukan', 'Garon, RT 04 RW 02', '082133085243', 'rukan', '$2y$12$cxGmlaxoj64QFfxbUkJIkeLzASDr5fCHzUvC0BOGZ4aNdPwIZ1oG.', '2025-06-12 05:55:46', '2025-06-12 05:55:46'),
('TB-65', 'Wasono', 'Garon, RT 04 RW 02', '082133085243', 'wasono', '$2y$12$mgiObwH7t1jKL5mRb/ALEeERAO0FWOUUoiFEQE49rYayAjWRzQi0W', '2025-06-12 05:56:17', '2025-06-12 05:56:17'),
('TB-66', 'Parno RT 4', 'Garon, RT 04 RW 02', '082133085243', 'parnort4', '$2y$12$kWXk5qB3tis8BRfzPlMb4O.ogaGfr0uomptnHPcsKZj05YiEEUZeK', '2025-06-12 05:58:25', '2025-06-12 05:58:25'),
('TB-67', 'Chandra Pramukti (Ginarti)', 'Garon, RT 04 RW 02', '082133085243', 'chandra', '$2y$12$STD0WojdTuXSZYq3TiD6DuLuDl5r6KNz/fcHpCcVqlUlnqoXCuvU.', '2025-06-12 06:01:24', '2025-06-12 06:01:24'),
('TB-68', 'Darmi', 'Garon, RT 04 RW 02', '082133085243', 'darmi', '$2y$12$l9q4E5PvXwZxAKAIhJ5ou.3gqbU.YOBmgKz4shy6iuygr63mcKw/.', '2025-06-12 06:01:41', '2025-06-12 06:19:21'),
('TB-69', 'Choisah (Andri)', 'Garon, RT 04 RW 02', '082133085243', 'choisah', '$2y$12$boTtTkFQekWV8uTjNd4obOAw2PTWacn01fvYutvYmBaZQZh9ROD6K', '2025-06-12 06:02:06', '2025-06-12 06:02:06'),
('TB-7', 'Haryadi', 'Garon, RT 02 RW 02', '082133085243', 'haryadi', '$2y$12$pMqEO/YrjD5DOiFT56PzCOBEkaUTQK4bUrkfhJcETWSEn3cKEap/.', '2025-06-12 05:06:08', '2025-06-12 05:06:08'),
('TB-70', 'Parmi (Tina)', 'Garon, RT 04 RW 02', '082133085243', 'parmi', '$2y$12$HUGmlUdsRsmSz97tA5ibU.48GCDWLr38wn8cL0UnUHWAzAS0bwmoK', '2025-06-12 06:02:43', '2025-06-12 06:02:43'),
('TB-71', 'Danang Prastowo', 'Garon, RT 04 RW 02', '082133085243', 'danangprastowo', '$2y$12$Zdhpj8ZilvrC7LS8YCuWJOX/7q2vkOY6bgS6J84YySdG6P0wiI8US', '2025-06-12 06:03:24', '2025-06-12 06:03:24'),
('TB-72', 'Pujiono RT 05', 'Garon, RT 05 RW 02', '082', 'pujionort5', '$2y$12$BP9Ae0QIK.pDX.4CAcY5xeJlB5nM3/LRf47PetrIlfvhPH.A6GNJC', '2025-06-12 06:04:07', '2025-06-12 06:04:07'),
('TB-73', 'Slamet', 'Garon, RT 05 RW 02', '082133085243', 'slamet', '$2y$12$bs94YKxlC1WygWPvz4eStelZsUAdRQyZ1c1SlMkyrG0iHtVijzwpi', '2025-06-12 06:04:54', '2025-06-12 06:04:54'),
('TB-74', 'Buniran', 'Garon, RT 05 RW 02', '082133085243', 'buniran', '$2y$12$/63R1zLfh5HHJdOZY3PLhO3T0HonDxeFm509rikjXDAnj/wbjk7c6', '2025-06-12 06:05:13', '2025-06-12 06:05:13'),
('TB-75', 'Hadi Kuat', 'Garon, RT 06 RW 02', '082133085243', 'hadikuat', '$2y$12$2lwpkhkvUBTV3VoG1KiNre.fvmDNYK828PJe7.QYouNGfB6c0DWdO', '2025-06-12 06:05:42', '2025-06-12 06:05:42'),
('TB-76', 'Slamet Paerah', 'Garon, RT 06 RW 02', '082133085243', 'slametpaerah', '$2y$12$vw7qrwxrDQjU0LKExB/b2ufFl6GwSjYF3kyj.FzJmVAIIww6GN9VO', '2025-06-12 06:06:08', '2025-06-12 06:06:08'),
('TB-77', 'Tatik / Parto Padi', 'Garon, RT 06 RW 02', '082133085243', 'tatik', '$2y$12$Ky.0sXmIlHhGaU1kLDERQu0ERuvIlzFIPdL1ZhoqM4EnJO0YDj3IW', '2025-06-12 06:06:46', '2025-06-12 06:06:46'),
('TB-78', 'Mangun', 'Garon, RT 06 RW 02', '082133085243', 'mangun', '$2y$12$jGhTRG1wj/UkNEExkdL3futc1jQBp9d32VB/YfIGTb4PK9.7D/kdO', '2025-06-12 06:07:14', '2025-06-12 06:07:14'),
('TB-79', 'Sunoto', 'Garon, RT 06 RW 02', '082133085243', 'sunoto', '$2y$12$M2oB3siDDgEhtB7bNFfcru3EBxyCkVOgehcmDG2Z9b9vfI3Nxv17O', '2025-06-12 06:07:48', '2025-06-12 06:07:48'),
('TB-8', 'Puryanto', 'Garon, RT 02 RW 02', '082133085243', 'puryanto', '$2y$12$2NtMCmJS5ruM2s7K0U/eEe4jmQVizj4nhzs88WJcW0mHbpHnZSEq.', '2025-06-12 05:06:53', '2025-06-12 05:06:53'),
('TB-80', 'Eni Susanti', 'Garon, RT 05 RW 02', '082133085243', 'enisusanti', '$2y$12$TYsUraEXRpf8oiGD0bX05OKb15JF4ZjO90FkFuPNjpH6lbX0M10hC', '2025-06-12 06:08:20', '2025-06-12 06:08:20'),
('TB-81', 'Lilik Ernawati', 'Garon, RT 06 RW 02', '082133085243', 'lilikernawati', '$2y$12$TBOHcRKgtrMDbgbYNU.QcuxtdknFi2w4S7s7XKpRQrdrO.j5J.Zpm', '2025-06-12 06:08:46', '2025-06-12 06:08:46'),
('TB-82', 'Anton Widakdo (Mamik)', 'Garon, RT 03 RW 02', '082133085243', 'antonwidakdo', '$2y$12$pdfA7MT6V5NDYHqGz93pVeGEX1C8xHJyuYjDjtqQ.5kpBOZ7G.SgC', '2025-06-12 06:09:20', '2025-06-12 06:09:20'),
('TB-83', 'Kadirun (Kebonan)', 'Garon, RT 03 RW 02', '082133085243', 'kadirunkebonan', '$2y$12$eNlQ8eRzTcZYJgY4GPLWNumpkpaVjYWNatLQfWZF0kYN8eRrCs51a', '2025-06-12 06:09:52', '2025-06-12 06:09:52'),
('TB-84', 'Samadin / Kukuh (Tegal)', 'Garon, RT 04 RW 02', '082133085243', 'samadintegal', '$2y$12$A6vVubjYuRaGCnBQQ9cAV.F7f4HD5Nn5MvuLgF9bSQmOHApdWjTM6', '2025-06-12 06:10:30', '2025-06-12 06:10:30'),
('TB-85', 'Zavier', 'Garon, RT 02 RW 02', '082133085243', 'zavier', '$2y$12$qE1b6nWTmQH0s.clcH9dBO2rTolZ3xGMpD09u8LSqCceck5b9tLPO', '2025-07-02 05:57:06', '2025-07-02 05:57:06'),
('TB-9', 'Samsiatun', 'Garon, RT 03 RW 02', '082133085243', 'samsiatun', '$2y$12$n7iyskpNVEdXnJKTnhpzY.f4AjgWk/q9jDCBRITzHPymAPiM/gVpi', '2025-06-12 05:07:20', '2025-06-12 05:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5pSn3P4O1iRVSggAmiy0NdPg5ykNsqYWNv6vEniC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmFKMUUxWVdQbEF5eHA1NmdFQUZaeVFoQUxKc25KUWM2ZWx5Z3FSVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1751530199),
('9UbTIFZoX48ypsBycRAWoP8nLZJxnoAsoEb8pEWE', '2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidVR0RzVXSGo2Rld2bUhoNmJ0c1VVVFJQcUd4QUVGVkhXczJ4N1FZeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90YWdpaGFuP2xpbWl0PTEwJnNlYXJjaD0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1751512773),
('AJrxWI2kA2muwZIckRDxzfhYp4tKJB1Ba7y497TF', '2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSGtnUGZBUUtmcU9mNjk2bWNKRTllRnFNa2Z5TjJnTHdTMURXd0FHWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90YWdpaGFuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1751682787),
('UNHs1rB6Jo0Ao7pk7d0PaJO5Yg5zmukBVmkGTA6w', '2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY240dG9CSm9rTFdyMjdjckFIdkc3cVhVMGlPc0NjMUkyNE81NUFpbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sYXBvcmFuP2J1bGFuPUp1bmkmbGltaXQ9MTAmbmFtYT0mdGFodW49Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1751867612),
('xW3AunSQg1wKKe7QcMoeYYRRIkBaCXaN1hA3qMMp', '2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiREpFMUJyNW5TMTdzNUk5dVNEaWtaS1VaNWR2QkRsUlhwV1E3eDdwcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90YWdpaGFuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1751465178);

-- --------------------------------------------------------

--
-- Table structure for table `tagihans`
--

CREATE TABLE `tagihans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengguna_id` varchar(255) NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `tahun` year(4) NOT NULL,
  `awal` int(11) NOT NULL,
  `akhir` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tarif` decimal(8,2) NOT NULL,
  `abonemen` decimal(8,2) NOT NULL,
  `tagihan` decimal(10,2) NOT NULL,
  `status` enum('lunas','belum lunas') NOT NULL DEFAULT 'belum lunas',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tagihans`
--

INSERT INTO `tagihans` (`id`, `pengguna_id`, `bulan`, `tahun`, `awal`, `akhir`, `jumlah`, `tarif`, `abonemen`, `tagihan`, `status`, `created_at`, `updated_at`) VALUES
(19, 'TB-1', 'Februari', '2025', 5, 10, 5, 1500.00, 5000.00, 12500.00, 'lunas', '2025-06-12 22:50:03', '2025-06-12 22:50:03'),
(20, 'TB-2', 'Februari', '2025', 10, 13, 3, 1500.00, 5000.00, 9500.00, 'lunas', '2025-06-12 22:50:29', '2025-06-12 22:50:29'),
(21, 'TB-3', 'Februari', '2025', 17, 32, 15, 1500.00, 5000.00, 27500.00, 'lunas', '2025-06-12 22:50:53', '2025-06-12 22:50:53'),
(22, 'TB-4', 'Februari', '2025', 21, 40, 19, 1500.00, 5000.00, 33500.00, 'lunas', '2025-06-12 22:51:23', '2025-06-12 22:51:23'),
(23, 'TB-5', 'Februari', '2025', 6, 6, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-12 22:51:49', '2025-06-12 22:51:49'),
(24, 'TB-6', 'Februari', '2025', 9, 10, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-12 22:52:13', '2025-06-12 22:52:13'),
(25, 'TB-7', 'Februari', '2025', 7, 9, 2, 1500.00, 5000.00, 8000.00, 'lunas', '2025-06-12 22:52:38', '2025-06-12 22:52:38'),
(26, 'TB-8', 'Februari', '2025', 33, 39, 6, 1500.00, 5000.00, 14000.00, 'lunas', '2025-06-12 22:53:06', '2025-06-12 22:53:06'),
(27, 'TB-9', 'Februari', '2025', 5, 10, 5, 1500.00, 5000.00, 12500.00, 'lunas', '2025-06-12 22:53:33', '2025-06-12 22:53:33'),
(28, 'TB-10', 'Februari', '2025', 4, 6, 2, 1500.00, 5000.00, 8000.00, 'lunas', '2025-06-12 22:53:49', '2025-06-12 22:53:49'),
(29, 'TB-11', 'Februari', '2025', 7, 7, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-12 22:54:08', '2025-06-12 22:54:08'),
(30, 'TB-12', 'Februari', '2025', 1, 1, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-12 22:54:33', '2025-06-12 22:54:33'),
(31, 'TB-13', 'Februari', '2025', 19, 29, 10, 1500.00, 5000.00, 20000.00, 'lunas', '2025-06-12 22:54:53', '2025-06-12 22:54:53'),
(32, 'TB-14', 'Februari', '2025', 36, 41, 5, 1500.00, 5000.00, 12500.00, 'lunas', '2025-06-15 23:49:31', '2025-06-15 23:49:31'),
(33, 'TB-15', 'Februari', '2025', 19, 30, 11, 1500.00, 5000.00, 21500.00, 'lunas', '2025-06-15 23:49:48', '2025-06-15 23:49:48'),
(34, 'TB-16', 'Februari', '2025', 36, 59, 23, 1500.00, 5000.00, 39500.00, 'lunas', '2025-06-15 23:50:10', '2025-06-15 23:50:10'),
(35, 'TB-17', 'Februari', '2025', 20, 30, 10, 1500.00, 5000.00, 20000.00, 'lunas', '2025-06-15 23:50:31', '2025-06-15 23:50:31'),
(36, 'TB-18', 'Februari', '2025', 8, 9, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-15 23:53:09', '2025-06-15 23:53:09'),
(37, 'TB-19', 'Februari', '2025', 7, 11, 4, 1500.00, 5000.00, 11000.00, 'lunas', '2025-06-15 23:53:34', '2025-06-15 23:53:34'),
(38, 'TB-20', 'Februari', '2025', 1, 17, 16, 1500.00, 5000.00, 29000.00, 'lunas', '2025-06-15 23:53:59', '2025-06-15 23:53:59'),
(39, 'TB-21', 'Februari', '2025', 28, 44, 16, 1500.00, 5000.00, 29000.00, 'lunas', '2025-06-15 23:54:30', '2025-06-15 23:54:30'),
(40, 'TB-22', 'Februari', '2025', 4, 5, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-15 23:54:48', '2025-06-15 23:54:48'),
(41, 'TB-23', 'Februari', '2025', 49, 69, 20, 1500.00, 5000.00, 35000.00, 'lunas', '2025-06-15 23:55:08', '2025-06-15 23:55:08'),
(42, 'TB-24', 'Februari', '2025', 3, 4, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-15 23:55:26', '2025-06-15 23:55:26'),
(43, 'TB-25', 'Februari', '2025', 3, 11, 8, 1500.00, 5000.00, 17000.00, 'lunas', '2025-06-15 23:55:39', '2025-06-15 23:55:39'),
(44, 'TB-26', 'Februari', '2025', 20, 27, 7, 1500.00, 5000.00, 15500.00, 'lunas', '2025-06-15 23:56:05', '2025-06-15 23:56:05'),
(45, 'TB-27', 'Februari', '2025', 33, 47, 14, 1500.00, 5000.00, 26000.00, 'lunas', '2025-06-15 23:56:23', '2025-06-15 23:56:23'),
(46, 'TB-28', 'Februari', '2025', 4, 7, 3, 1500.00, 5000.00, 9500.00, 'lunas', '2025-06-15 23:56:39', '2025-06-15 23:56:39'),
(47, 'TB-29', 'Februari', '2025', 4, 9, 5, 1500.00, 5000.00, 12500.00, 'lunas', '2025-06-15 23:56:59', '2025-06-15 23:56:59'),
(48, 'TB-30', 'Februari', '2025', 20, 29, 9, 1500.00, 5000.00, 18500.00, 'lunas', '2025-06-15 23:58:20', '2025-06-15 23:58:20'),
(49, 'TB-31', 'Februari', '2025', 39, 61, 22, 1500.00, 5000.00, 38000.00, 'lunas', '2025-06-15 23:58:54', '2025-06-15 23:58:54'),
(50, 'TB-32', 'Februari', '2025', 48, 71, 23, 1500.00, 5000.00, 39500.00, 'lunas', '2025-06-15 23:59:45', '2025-06-15 23:59:45'),
(51, 'TB-33', 'Februari', '2025', 22, 30, 8, 1500.00, 5000.00, 17000.00, 'lunas', '2025-06-16 00:00:01', '2025-06-16 00:00:01'),
(52, 'TB-34', 'Februari', '2025', 1, 1, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 00:00:30', '2025-06-16 00:00:30'),
(53, 'TB-35', 'Februari', '2025', 4, 6, 2, 1500.00, 5000.00, 8000.00, 'lunas', '2025-06-16 00:00:49', '2025-06-16 00:00:49'),
(54, 'TB-36', 'Februari', '2025', 14, 20, 6, 1500.00, 5000.00, 14000.00, 'lunas', '2025-06-16 00:01:08', '2025-06-16 00:01:08'),
(55, 'TB-37', 'Februari', '2025', 16, 27, 11, 1500.00, 5000.00, 21500.00, 'lunas', '2025-06-16 00:01:40', '2025-06-16 00:01:40'),
(56, 'TB-38', 'Februari', '2025', 3, 4, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 00:09:19', '2025-06-16 00:09:19'),
(57, 'TB-39', 'Februari', '2025', 35, 54, 19, 1500.00, 5000.00, 33500.00, 'lunas', '2025-06-16 00:09:39', '2025-06-16 00:09:39'),
(58, 'TB-40', 'Februari', '2025', 29, 36, 7, 1500.00, 5000.00, 15500.00, 'lunas', '2025-06-16 00:10:50', '2025-06-16 00:10:50'),
(59, 'TB-41', 'Februari', '2025', 5, 18, 13, 1500.00, 5000.00, 24500.00, 'lunas', '2025-06-16 00:11:34', '2025-06-16 00:11:34'),
(60, 'TB-42', 'Februari', '2025', 22, 33, 11, 1500.00, 5000.00, 21500.00, 'lunas', '2025-06-16 00:11:55', '2025-06-16 00:11:55'),
(61, 'TB-43', 'Februari', '2025', 1, 1, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 00:12:23', '2025-06-16 00:12:23'),
(62, 'TB-44', 'Februari', '2025', 10, 16, 6, 1500.00, 5000.00, 14000.00, 'lunas', '2025-06-16 00:12:45', '2025-06-16 00:12:45'),
(63, 'TB-45', 'Februari', '2025', 46, 68, 22, 1500.00, 5000.00, 38000.00, 'lunas', '2025-06-16 00:13:13', '2025-06-16 00:13:13'),
(64, 'TB-46', 'Februari', '2025', 18, 25, 7, 1500.00, 5000.00, 15500.00, 'lunas', '2025-06-16 00:14:43', '2025-06-16 00:14:43'),
(65, 'TB-47', 'Februari', '2025', 13, 13, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 00:15:12', '2025-06-16 00:15:12'),
(66, 'TB-48', 'Februari', '2025', 3, 6, 3, 1500.00, 5000.00, 9500.00, 'lunas', '2025-06-16 00:15:34', '2025-06-16 00:15:34'),
(67, 'TB-49', 'Februari', '2025', 21, 28, 7, 1500.00, 5000.00, 15500.00, 'lunas', '2025-06-16 00:15:56', '2025-06-16 00:15:56'),
(68, 'TB-50', 'Februari', '2025', 50, 79, 29, 1500.00, 5000.00, 48500.00, 'lunas', '2025-06-16 00:16:17', '2025-06-16 00:16:17'),
(69, 'TB-51', 'Februari', '2025', 19, 27, 8, 1500.00, 5000.00, 17000.00, 'lunas', '2025-06-16 00:16:44', '2025-06-16 00:16:44'),
(70, 'TB-52', 'Februari', '2025', 5, 5, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 00:17:02', '2025-06-16 00:17:02'),
(71, 'TB-53', 'Februari', '2025', 37, 41, 4, 1500.00, 5000.00, 11000.00, 'lunas', '2025-06-16 00:17:24', '2025-06-16 00:17:24'),
(72, 'TB-54', 'Februari', '2025', 9, 14, 5, 1500.00, 5000.00, 12500.00, 'lunas', '2025-06-16 00:17:55', '2025-06-16 00:17:55'),
(73, 'TB-55', 'Februari', '2025', 41, 74, 33, 1500.00, 5000.00, 54500.00, 'lunas', '2025-06-16 00:18:17', '2025-06-16 00:18:17'),
(74, 'TB-56', 'Februari', '2025', 29, 49, 20, 1500.00, 5000.00, 35000.00, 'lunas', '2025-06-16 00:18:38', '2025-06-16 00:18:38'),
(75, 'TB-57', 'Februari', '2025', 5, 5, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 00:18:54', '2025-06-16 00:18:54'),
(76, 'TB-58', 'Februari', '2025', 14, 30, 16, 1500.00, 5000.00, 29000.00, 'lunas', '2025-06-16 00:19:13', '2025-06-16 00:19:13'),
(77, 'TB-59', 'Februari', '2025', 11, 17, 6, 1500.00, 5000.00, 14000.00, 'lunas', '2025-06-16 00:19:31', '2025-06-16 00:19:31'),
(78, 'TB-60', 'Februari', '2025', 20, 35, 15, 1500.00, 5000.00, 27500.00, 'lunas', '2025-06-16 00:19:51', '2025-06-16 00:19:51'),
(79, 'TB-61', 'Februari', '2025', 12, 17, 5, 1500.00, 5000.00, 12500.00, 'lunas', '2025-06-16 00:20:19', '2025-06-16 00:20:19'),
(80, 'TB-62', 'Februari', '2025', 26, 42, 16, 1500.00, 5000.00, 29000.00, 'lunas', '2025-06-16 00:21:20', '2025-06-16 00:21:20'),
(81, 'TB-63', 'Februari', '2025', 9, 9, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 00:21:39', '2025-06-16 00:21:39'),
(82, 'TB-64', 'Februari', '2025', 40, 61, 21, 1500.00, 5000.00, 36500.00, 'lunas', '2025-06-16 00:21:56', '2025-06-16 00:21:56'),
(83, 'TB-65', 'Februari', '2025', 16, 26, 10, 1500.00, 5000.00, 20000.00, 'lunas', '2025-06-16 00:22:14', '2025-06-16 00:22:14'),
(84, 'TB-66', 'Februari', '2025', 12, 21, 9, 1500.00, 5000.00, 18500.00, 'lunas', '2025-06-16 00:22:39', '2025-06-16 00:22:39'),
(85, 'TB-67', 'Februari', '2025', 25, 25, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 00:22:56', '2025-06-16 00:22:56'),
(86, 'TB-68', 'Februari', '2025', 1, 5, 4, 1500.00, 5000.00, 11000.00, 'lunas', '2025-06-16 00:23:11', '2025-06-16 00:23:11'),
(87, 'TB-69', 'Februari', '2025', 11, 14, 3, 1500.00, 5000.00, 9500.00, 'lunas', '2025-06-16 00:23:28', '2025-06-16 00:23:28'),
(88, 'TB-70', 'Februari', '2025', 8, 16, 8, 1500.00, 5000.00, 17000.00, 'lunas', '2025-06-16 00:23:58', '2025-06-16 00:23:58'),
(89, 'TB-71', 'Februari', '2025', 23, 41, 18, 1500.00, 5000.00, 32000.00, 'lunas', '2025-06-16 00:24:18', '2025-06-16 00:24:18'),
(90, 'TB-72', 'Februari', '2025', 24, 37, 13, 1500.00, 5000.00, 24500.00, 'lunas', '2025-06-16 00:24:54', '2025-06-16 00:24:54'),
(91, 'TB-73', 'Februari', '2025', 9, 11, 2, 1500.00, 5000.00, 8000.00, 'lunas', '2025-06-16 00:26:07', '2025-06-16 00:26:07'),
(92, 'TB-74', 'Februari', '2025', 17, 26, 9, 1500.00, 5000.00, 18500.00, 'lunas', '2025-06-16 00:26:32', '2025-06-16 00:26:32'),
(93, 'TB-75', 'Februari', '2025', 1, 4, 3, 1500.00, 5000.00, 9500.00, 'lunas', '2025-06-16 00:26:48', '2025-06-16 00:26:48'),
(94, 'TB-76', 'Februari', '2025', 1, 2, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 00:27:07', '2025-06-16 00:27:07'),
(95, 'TB-77', 'Februari', '2025', 8, 24, 16, 1500.00, 5000.00, 29000.00, 'lunas', '2025-06-16 00:27:28', '2025-06-16 00:27:28'),
(96, 'TB-78', 'Februari', '2025', 8, 19, 11, 1500.00, 5000.00, 21500.00, 'lunas', '2025-06-16 00:27:45', '2025-06-16 00:27:45'),
(97, 'TB-79', 'Februari', '2025', 2, 2, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 00:27:59', '2025-06-16 00:27:59'),
(98, 'TB-80', 'Februari', '2025', 7, 19, 12, 1500.00, 5000.00, 23000.00, 'lunas', '2025-06-16 00:28:16', '2025-06-16 00:28:16'),
(99, 'TB-81', 'Februari', '2025', 9, 25, 16, 1500.00, 5000.00, 29000.00, 'lunas', '2025-06-16 00:28:40', '2025-06-16 00:28:40'),
(100, 'TB-82', 'Februari', '2025', 0, 5, 5, 1500.00, 5000.00, 12500.00, 'lunas', '2025-06-16 00:28:55', '2025-06-16 00:28:55'),
(101, 'TB-1', 'Maret', '2025', 10, 13, 3, 1500.00, 5000.00, 9500.00, 'lunas', '2025-06-16 00:31:18', '2025-06-16 00:31:18'),
(102, 'TB-2', 'Maret', '2025', 13, 22, 9, 1500.00, 5000.00, 18500.00, 'lunas', '2025-06-16 00:35:04', '2025-06-16 00:35:04'),
(103, 'TB-3', 'Maret', '2025', 32, 46, 14, 1500.00, 5000.00, 26000.00, 'lunas', '2025-06-16 00:35:25', '2025-06-16 00:35:25'),
(104, 'TB-4', 'Maret', '2025', 40, 49, 9, 1500.00, 5000.00, 18500.00, 'lunas', '2025-06-16 00:35:49', '2025-06-16 00:35:49'),
(105, 'TB-5', 'Maret', '2025', 6, 6, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 00:36:05', '2025-06-16 00:36:05'),
(106, 'TB-6', 'Maret', '2025', 10, 11, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 00:36:28', '2025-06-16 00:36:28'),
(107, 'TB-7', 'Maret', '2025', 9, 11, 2, 1500.00, 5000.00, 8000.00, 'lunas', '2025-06-16 00:36:43', '2025-06-16 00:36:43'),
(108, 'TB-8', 'Maret', '2025', 39, 45, 6, 1500.00, 5000.00, 14000.00, 'lunas', '2025-06-16 00:37:05', '2025-06-16 00:37:05'),
(109, 'TB-9', 'Maret', '2025', 10, 26, 16, 1500.00, 5000.00, 29000.00, 'lunas', '2025-06-16 01:48:30', '2025-06-16 01:48:30'),
(110, 'TB-10', 'Maret', '2025', 6, 7, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 01:48:48', '2025-06-16 01:48:48'),
(111, 'TB-11', 'Maret', '2025', 7, 7, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 01:49:21', '2025-06-16 01:49:21'),
(112, 'TB-12', 'Maret', '2025', 1, 1, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 01:50:10', '2025-06-16 01:50:10'),
(113, 'TB-13', 'Maret', '2025', 29, 38, 9, 1500.00, 5000.00, 18500.00, 'lunas', '2025-06-16 01:50:26', '2025-06-16 01:50:26'),
(114, 'TB-14', 'Maret', '2025', 41, 46, 5, 1500.00, 5000.00, 12500.00, 'lunas', '2025-06-16 01:51:07', '2025-06-16 01:51:07'),
(115, 'TB-15', 'Maret', '2025', 30, 41, 11, 1500.00, 5000.00, 21500.00, 'lunas', '2025-06-16 01:51:25', '2025-06-16 01:51:25'),
(116, 'TB-16', 'Maret', '2025', 59, 79, 20, 1500.00, 5000.00, 35000.00, 'lunas', '2025-06-16 01:52:21', '2025-06-16 01:52:21'),
(117, 'TB-17', 'Maret', '2025', 30, 41, 11, 1500.00, 5000.00, 21500.00, 'lunas', '2025-06-16 01:52:36', '2025-06-16 01:52:36'),
(118, 'TB-18', 'Maret', '2025', 1, 2, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 01:53:02', '2025-06-16 01:53:02'),
(119, 'TB-19', 'Maret', '2025', 11, 16, 5, 1500.00, 5000.00, 12500.00, 'lunas', '2025-06-16 01:53:30', '2025-06-16 01:53:30'),
(120, 'TB-20', 'Maret', '2025', 17, 35, 18, 1500.00, 5000.00, 32000.00, 'lunas', '2025-06-16 01:53:45', '2025-06-16 01:53:45'),
(121, 'TB-21', 'Maret', '2025', 44, 60, 16, 1500.00, 5000.00, 29000.00, 'lunas', '2025-06-16 01:54:49', '2025-06-16 01:54:49'),
(122, 'TB-22', 'Maret', '2025', 5, 6, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 01:55:04', '2025-06-16 01:55:04'),
(123, 'TB-23', 'Maret', '2025', 69, 91, 22, 1500.00, 5000.00, 38000.00, 'lunas', '2025-06-16 01:55:56', '2025-06-16 01:55:56'),
(124, 'TB-24', 'Maret', '2025', 4, 4, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 01:56:19', '2025-06-16 01:56:19'),
(125, 'TB-25', 'Maret', '2025', 11, 19, 8, 1500.00, 5000.00, 17000.00, 'lunas', '2025-06-16 01:56:58', '2025-06-16 01:56:58'),
(126, 'TB-26', 'Maret', '2025', 27, 37, 10, 1500.00, 5000.00, 20000.00, 'lunas', '2025-06-16 01:57:16', '2025-06-16 01:57:16'),
(127, 'TB-27', 'Maret', '2025', 47, 63, 16, 1500.00, 5000.00, 29000.00, 'lunas', '2025-06-16 01:57:47', '2025-06-16 01:57:47'),
(128, 'TB-28', 'Maret', '2025', 7, 13, 6, 1500.00, 5000.00, 14000.00, 'lunas', '2025-06-16 01:58:03', '2025-06-16 01:58:03'),
(129, 'TB-30', 'Maret', '2025', 29, 39, 10, 1500.00, 5000.00, 20000.00, 'lunas', '2025-06-16 01:58:28', '2025-06-16 01:58:28'),
(130, 'TB-31', 'Maret', '2025', 61, 84, 23, 1500.00, 5000.00, 39500.00, 'lunas', '2025-06-16 01:59:26', '2025-06-16 01:59:26'),
(131, 'TB-32', 'Maret', '2025', 71, 90, 19, 1500.00, 5000.00, 33500.00, 'lunas', '2025-06-16 01:59:47', '2025-06-16 01:59:47'),
(132, 'TB-33', 'Maret', '2025', 30, 38, 8, 1500.00, 5000.00, 17000.00, 'lunas', '2025-06-16 02:00:14', '2025-06-16 02:00:14'),
(133, 'TB-34', 'Maret', '2025', 1, 1, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 02:00:48', '2025-06-16 02:00:48'),
(134, 'TB-35', 'Maret', '2025', 6, 9, 3, 1500.00, 5000.00, 9500.00, 'lunas', '2025-06-16 02:01:28', '2025-06-16 02:01:28'),
(135, 'TB-36', 'Maret', '2025', 20, 24, 4, 1500.00, 5000.00, 11000.00, 'lunas', '2025-06-16 02:02:03', '2025-06-16 02:02:03'),
(136, 'TB-37', 'Maret', '2025', 27, 35, 8, 1500.00, 5000.00, 17000.00, 'lunas', '2025-06-16 02:03:06', '2025-06-16 02:03:06'),
(137, 'TB-38', 'Maret', '2025', 4, 5, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 02:03:51', '2025-06-16 02:03:51'),
(138, 'TB-39', 'Maret', '2025', 54, 86, 32, 1500.00, 5000.00, 53000.00, 'lunas', '2025-06-16 02:04:15', '2025-06-16 02:04:15'),
(139, 'TB-40', 'Maret', '2025', 36, 55, 19, 1500.00, 5000.00, 33500.00, 'lunas', '2025-06-16 02:05:07', '2025-06-16 02:05:07'),
(140, 'TB-41', 'Maret', '2025', 18, 18, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 02:06:25', '2025-06-16 02:06:25'),
(141, 'TB-42', 'Maret', '2025', 33, 46, 13, 1500.00, 5000.00, 24500.00, 'lunas', '2025-06-16 02:06:46', '2025-06-16 02:06:46'),
(142, 'TB-43', 'Maret', '2025', 1, 1, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 02:08:27', '2025-06-16 02:08:27'),
(143, 'TB-44', 'Maret', '2025', 16, 22, 6, 1500.00, 5000.00, 14000.00, 'lunas', '2025-06-16 02:09:27', '2025-06-16 02:09:27'),
(144, 'TB-45', 'Maret', '2025', 68, 95, 27, 1500.00, 5000.00, 45500.00, 'lunas', '2025-06-16 02:09:50', '2025-06-16 02:09:50'),
(145, 'TB-46', 'Maret', '2025', 25, 31, 6, 1500.00, 5000.00, 14000.00, 'lunas', '2025-06-16 02:11:39', '2025-06-16 02:11:39'),
(146, 'TB-47', 'Maret', '2025', 13, 19, 6, 1500.00, 5000.00, 14000.00, 'lunas', '2025-06-16 02:12:34', '2025-06-16 02:12:34'),
(147, 'TB-48', 'Maret', '2025', 6, 11, 5, 1500.00, 5000.00, 12500.00, 'lunas', '2025-06-16 02:13:30', '2025-06-16 02:13:30'),
(148, 'TB-49', 'Maret', '2025', 28, 34, 6, 1500.00, 5000.00, 14000.00, 'lunas', '2025-06-16 02:13:51', '2025-06-16 02:13:51'),
(149, 'TB-50', 'Maret', '2025', 79, 105, 26, 1500.00, 5000.00, 44000.00, 'lunas', '2025-06-16 02:14:12', '2025-06-16 02:14:12'),
(150, 'TB-51', 'Maret', '2025', 27, 35, 8, 1500.00, 5000.00, 17000.00, 'lunas', '2025-06-16 02:14:34', '2025-06-16 02:14:34'),
(151, 'TB-52', 'Maret', '2025', 5, 6, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 02:14:56', '2025-06-16 02:14:56'),
(152, 'TB-53', 'Maret', '2025', 41, 46, 5, 1500.00, 5000.00, 12500.00, 'lunas', '2025-06-16 02:15:16', '2025-06-16 02:15:16'),
(153, 'TB-54', 'Maret', '2025', 14, 20, 6, 1500.00, 5000.00, 14000.00, 'lunas', '2025-06-16 02:15:41', '2025-06-16 02:15:41'),
(154, 'TB-55', 'Maret', '2025', 74, 101, 27, 1500.00, 5000.00, 45500.00, 'lunas', '2025-06-16 02:16:24', '2025-06-16 02:16:24'),
(155, 'TB-56', 'Maret', '2025', 49, 69, 20, 1500.00, 5000.00, 35000.00, 'lunas', '2025-06-16 02:16:44', '2025-06-16 02:16:44'),
(156, 'TB-57', 'Maret', '2025', 5, 5, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 02:17:13', '2025-06-16 02:17:13'),
(157, 'TB-58', 'Maret', '2025', 30, 49, 19, 1500.00, 5000.00, 33500.00, 'lunas', '2025-06-16 02:17:51', '2025-06-16 02:17:51'),
(158, 'TB-59', 'Maret', '2025', 17, 26, 9, 1500.00, 5000.00, 18500.00, 'lunas', '2025-06-16 02:18:22', '2025-06-16 02:18:22'),
(159, 'TB-60', 'Maret', '2025', 35, 50, 15, 1500.00, 5000.00, 27500.00, 'lunas', '2025-06-16 02:19:35', '2025-06-16 02:19:35'),
(160, 'TB-61', 'Maret', '2025', 17, 73, 56, 1500.00, 5000.00, 89000.00, 'lunas', '2025-06-16 02:20:06', '2025-06-16 02:20:06'),
(161, 'TB-62', 'Maret', '2025', 42, 58, 16, 1500.00, 5000.00, 29000.00, 'lunas', '2025-06-16 02:20:53', '2025-06-16 02:20:53'),
(162, 'TB-63', 'Maret', '2025', 9, 9, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 02:21:12', '2025-06-16 02:21:12'),
(163, 'TB-64', 'Maret', '2025', 61, 73, 12, 1500.00, 5000.00, 23000.00, 'lunas', '2025-06-16 02:21:39', '2025-06-16 02:21:39'),
(164, 'TB-65', 'Maret', '2025', 26, 35, 9, 1500.00, 5000.00, 18500.00, 'lunas', '2025-06-16 02:22:05', '2025-06-16 02:22:05'),
(165, 'TB-66', 'Maret', '2025', 21, 28, 7, 1500.00, 5000.00, 15500.00, 'lunas', '2025-06-16 02:22:34', '2025-06-16 02:22:34'),
(166, 'TB-67', 'Maret', '2025', 25, 26, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 02:23:03', '2025-06-16 02:23:03'),
(167, 'TB-68', 'Maret', '2025', 5, 6, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 02:23:42', '2025-06-16 02:23:42'),
(168, 'TB-69', 'Maret', '2025', 14, 17, 3, 1500.00, 5000.00, 9500.00, 'lunas', '2025-06-16 02:24:36', '2025-06-16 02:24:36'),
(169, 'TB-70', 'Maret', '2025', 16, 25, 9, 1500.00, 5000.00, 18500.00, 'lunas', '2025-06-16 02:24:57', '2025-06-16 02:24:57'),
(170, 'TB-71', 'Maret', '2025', 41, 57, 16, 1500.00, 5000.00, 29000.00, 'lunas', '2025-06-16 02:25:51', '2025-06-16 02:25:51'),
(171, 'TB-72', 'Maret', '2025', 37, 51, 14, 1500.00, 5000.00, 26000.00, 'lunas', '2025-06-16 02:27:00', '2025-06-16 02:27:00'),
(172, 'TB-73', 'Maret', '2025', 11, 13, 2, 1500.00, 5000.00, 8000.00, 'lunas', '2025-06-16 02:27:42', '2025-06-16 02:27:42'),
(173, 'TB-74', 'Maret', '2025', 26, 35, 9, 1500.00, 5000.00, 18500.00, 'lunas', '2025-06-16 02:27:58', '2025-06-16 02:27:58'),
(174, 'TB-75', 'Maret', '2025', 4, 5, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 02:28:12', '2025-06-16 02:28:12'),
(175, 'TB-76', 'Maret', '2025', 2, 3, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 02:28:40', '2025-06-16 02:28:40'),
(176, 'TB-77', 'Maret', '2025', 24, 37, 13, 1500.00, 5000.00, 24500.00, 'lunas', '2025-06-16 02:29:08', '2025-06-16 02:29:08'),
(177, 'TB-79', 'Maret', '2025', 2, 2, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 02:29:28', '2025-06-16 02:29:28'),
(178, 'TB-80', 'Maret', '2025', 19, 28, 9, 1500.00, 5000.00, 18500.00, 'lunas', '2025-06-16 02:29:45', '2025-06-16 02:29:45'),
(179, 'TB-81', 'Maret', '2025', 25, 41, 16, 1500.00, 5000.00, 29000.00, 'lunas', '2025-06-16 02:30:02', '2025-06-16 02:30:02'),
(180, 'TB-82', 'Maret', '2025', 5, 16, 11, 1500.00, 5000.00, 21500.00, 'lunas', '2025-06-16 02:30:45', '2025-06-16 02:30:45'),
(181, 'TB-1', 'April', '2025', 13, 17, 4, 1500.00, 5000.00, 11000.00, 'lunas', '2025-06-16 04:36:01', '2025-06-16 04:36:01'),
(182, 'TB-2', 'April', '2025', 22, 39, 17, 1500.00, 5000.00, 30500.00, 'lunas', '2025-06-16 04:36:20', '2025-06-16 04:36:20'),
(183, 'TB-3', 'April', '2025', 46, 67, 21, 1500.00, 5000.00, 36500.00, 'lunas', '2025-06-16 04:36:36', '2025-06-16 04:36:36'),
(184, 'TB-4', 'Maret', '2025', 49, 63, 14, 1500.00, 5000.00, 26000.00, 'lunas', '2025-06-16 04:37:22', '2025-06-16 04:37:22'),
(185, 'TB-5', 'April', '2025', 6, 8, 2, 1500.00, 5000.00, 8000.00, 'lunas', '2025-06-16 04:37:41', '2025-06-16 04:37:41'),
(186, 'TB-6', 'April', '2025', 11, 13, 2, 1500.00, 5000.00, 8000.00, 'lunas', '2025-06-16 04:38:35', '2025-06-16 04:38:35'),
(187, 'TB-7', 'April', '2025', 11, 15, 4, 1500.00, 5000.00, 11000.00, 'lunas', '2025-06-16 04:39:05', '2025-06-16 04:39:05'),
(188, 'TB-8', 'April', '2025', 45, 60, 15, 1500.00, 5000.00, 27500.00, 'lunas', '2025-06-16 04:39:23', '2025-06-16 04:39:23'),
(189, 'TB-9', 'April', '2025', 26, 43, 17, 1500.00, 5000.00, 30500.00, 'lunas', '2025-06-16 04:39:52', '2025-06-16 04:39:52'),
(190, 'TB-10', 'April', '2025', 7, 8, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 04:40:09', '2025-06-16 04:40:09'),
(191, 'TB-11', 'April', '2025', 7, 8, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 04:40:26', '2025-06-16 04:40:26'),
(192, 'TB-12', 'April', '2025', 1, 2, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 04:40:56', '2025-06-16 04:40:56'),
(193, 'TB-13', 'April', '2025', 38, 52, 14, 1500.00, 5000.00, 26000.00, 'lunas', '2025-06-16 04:41:36', '2025-06-16 04:41:36'),
(194, 'TB-14', 'April', '2025', 46, 61, 15, 1500.00, 5000.00, 27500.00, 'lunas', '2025-06-16 04:41:54', '2025-06-16 04:41:54'),
(195, 'TB-15', 'April', '2025', 41, 54, 13, 1500.00, 5000.00, 24500.00, 'lunas', '2025-06-16 04:42:10', '2025-06-16 04:42:10'),
(196, 'TB-16', 'April', '2025', 79, 100, 21, 1500.00, 5000.00, 36500.00, 'lunas', '2025-06-16 04:42:27', '2025-06-16 04:42:27'),
(197, 'TB-17', 'April', '2025', 41, 54, 13, 1500.00, 5000.00, 24500.00, 'lunas', '2025-06-16 04:42:43', '2025-06-16 04:42:43'),
(198, 'TB-18', 'April', '2025', 2, 11, 9, 1500.00, 5000.00, 18500.00, 'lunas', '2025-06-16 04:44:16', '2025-06-16 04:44:16'),
(199, 'TB-19', 'April', '2025', 16, 21, 5, 1500.00, 5000.00, 12500.00, 'lunas', '2025-06-16 04:45:28', '2025-06-16 04:45:28'),
(200, 'TB-20', 'April', '2025', 35, 59, 24, 1500.00, 5000.00, 41000.00, 'lunas', '2025-06-16 04:45:50', '2025-06-16 04:45:50'),
(201, 'TB-21', 'April', '2025', 60, 79, 19, 1500.00, 5000.00, 33500.00, 'lunas', '2025-06-16 04:46:08', '2025-06-16 04:46:08'),
(202, 'TB-22', 'April', '2025', 6, 7, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 04:46:23', '2025-06-16 04:46:23'),
(203, 'TB-23', 'April', '2025', 91, 117, 26, 1500.00, 5000.00, 44000.00, 'lunas', '2025-06-16 04:46:41', '2025-06-16 04:46:41'),
(204, 'TB-24', 'April', '2025', 4, 5, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 04:46:59', '2025-06-16 04:46:59'),
(205, 'TB-25', 'April', '2025', 19, 26, 7, 1500.00, 5000.00, 15500.00, 'lunas', '2025-06-16 04:47:19', '2025-06-16 04:47:19'),
(206, 'TB-26', 'April', '2025', 37, 47, 10, 1500.00, 5000.00, 20000.00, 'lunas', '2025-06-16 04:47:41', '2025-06-16 04:47:41'),
(207, 'TB-27', 'April', '2025', 63, 82, 19, 1500.00, 5000.00, 33500.00, 'lunas', '2025-06-16 04:48:10', '2025-06-16 04:48:10'),
(208, 'TB-28', 'April', '2025', 13, 20, 7, 1500.00, 5000.00, 15500.00, 'lunas', '2025-06-16 04:48:47', '2025-06-16 04:48:47'),
(209, 'TB-29', 'April', '2025', 17, 25, 8, 1500.00, 5000.00, 17000.00, 'lunas', '2025-06-16 05:08:03', '2025-06-16 05:08:03'),
(210, 'TB-30', 'April', '2025', 39, 50, 11, 1500.00, 5000.00, 21500.00, 'lunas', '2025-06-16 05:08:36', '2025-06-16 05:08:36'),
(211, 'TB-31', 'April', '2025', 84, 108, 24, 1500.00, 5000.00, 41000.00, 'lunas', '2025-06-16 05:08:59', '2025-06-16 05:08:59'),
(212, 'TB-32', 'April', '2025', 90, 111, 21, 1500.00, 5000.00, 36500.00, 'lunas', '2025-06-16 05:09:18', '2025-06-16 05:09:18'),
(213, 'TB-33', 'April', '2025', 38, 50, 12, 1500.00, 5000.00, 23000.00, 'lunas', '2025-06-16 05:09:36', '2025-06-16 05:09:36'),
(214, 'TB-34', 'April', '2025', 1, 1, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 05:09:54', '2025-06-16 05:09:54'),
(215, 'TB-35', 'April', '2025', 9, 9, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 05:10:09', '2025-06-16 05:10:09'),
(216, 'TB-36', 'April', '2025', 24, 31, 7, 1500.00, 5000.00, 15500.00, 'lunas', '2025-06-16 05:10:23', '2025-06-16 05:10:23'),
(217, 'TB-37', 'April', '2025', 35, 49, 14, 1500.00, 5000.00, 26000.00, 'lunas', '2025-06-16 05:10:40', '2025-06-16 05:10:40'),
(218, 'TB-38', 'April', '2025', 5, 5, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 05:11:03', '2025-06-16 05:11:03'),
(219, 'TB-39', 'April', '2025', 86, 107, 21, 1500.00, 5000.00, 36500.00, 'lunas', '2025-06-16 05:11:19', '2025-06-16 05:11:19'),
(220, 'TB-40', 'April', '2025', 55, 60, 5, 1500.00, 5000.00, 12500.00, 'lunas', '2025-06-16 05:11:35', '2025-06-16 05:11:35'),
(221, 'TB-41', 'April', '2025', 9, 13, 4, 1500.00, 5000.00, 11000.00, 'lunas', '2025-06-16 05:11:53', '2025-06-16 05:11:53'),
(222, 'TB-42', 'April', '2025', 46, 60, 14, 1500.00, 5000.00, 26000.00, 'lunas', '2025-06-16 05:12:09', '2025-06-16 05:12:09'),
(223, 'TB-43', 'April', '2025', 1, 1, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 05:12:21', '2025-06-16 05:12:21'),
(224, 'TB-44', 'April', '2025', 22, 30, 8, 1500.00, 5000.00, 17000.00, 'lunas', '2025-06-16 05:12:47', '2025-06-16 05:12:47'),
(225, 'TB-45', 'April', '2025', 95, 122, 27, 1500.00, 5000.00, 45500.00, 'lunas', '2025-06-16 05:13:03', '2025-06-16 05:13:03'),
(226, 'TB-46', 'April', '2025', 31, 41, 10, 1500.00, 5000.00, 20000.00, 'lunas', '2025-06-16 05:13:16', '2025-06-16 05:13:16'),
(227, 'TB-47', 'April', '2025', 19, 21, 2, 1500.00, 5000.00, 8000.00, 'lunas', '2025-06-16 05:13:32', '2025-06-16 05:13:32'),
(228, 'TB-48', 'April', '2025', 11, 16, 5, 1500.00, 5000.00, 12500.00, 'lunas', '2025-06-16 05:13:51', '2025-06-16 05:13:51'),
(229, 'TB-49', 'April', '2025', 34, 38, 4, 1500.00, 5000.00, 11000.00, 'lunas', '2025-06-16 05:14:12', '2025-06-16 05:14:12'),
(230, 'TB-50', 'April', '2025', 105, 135, 30, 1500.00, 5000.00, 50000.00, 'lunas', '2025-06-16 05:14:36', '2025-06-16 05:14:36'),
(231, 'TB-51', 'April', '2025', 35, 43, 8, 1500.00, 5000.00, 17000.00, 'lunas', '2025-06-16 05:14:57', '2025-06-16 05:14:57'),
(232, 'TB-52', 'April', '2025', 6, 8, 2, 1500.00, 5000.00, 8000.00, 'lunas', '2025-06-16 05:15:14', '2025-06-16 05:15:14'),
(233, 'TB-53', 'April', '2025', 46, 53, 7, 1500.00, 5000.00, 15500.00, 'lunas', '2025-06-16 05:15:32', '2025-06-16 05:15:32'),
(234, 'TB-54', 'April', '2025', 20, 27, 7, 1500.00, 5000.00, 15500.00, 'lunas', '2025-06-16 05:16:09', '2025-06-16 05:16:09'),
(235, 'TB-55', 'April', '2025', 101, 138, 37, 1500.00, 5000.00, 60500.00, 'lunas', '2025-06-16 05:16:25', '2025-06-16 05:16:25'),
(236, 'TB-56', 'April', '2025', 69, 97, 28, 1500.00, 5000.00, 47000.00, 'lunas', '2025-06-16 05:16:45', '2025-06-16 05:16:45'),
(237, 'TB-57', 'April', '2025', 5, 7, 2, 1500.00, 5000.00, 8000.00, 'lunas', '2025-06-16 05:16:59', '2025-06-16 05:16:59'),
(238, 'TB-58', 'April', '2025', 49, 76, 27, 1500.00, 5000.00, 45500.00, 'lunas', '2025-06-16 05:17:16', '2025-06-16 05:17:16'),
(239, 'TB-59', 'April', '2025', 26, 40, 14, 1500.00, 5000.00, 26000.00, 'lunas', '2025-06-16 05:17:37', '2025-06-16 05:17:37'),
(240, 'TB-60', 'April', '2025', 50, 70, 20, 1500.00, 5000.00, 35000.00, 'lunas', '2025-06-16 05:17:54', '2025-06-16 05:17:54'),
(241, 'TB-61', 'April', '2025', 21, 24, 3, 1500.00, 5000.00, 9500.00, 'lunas', '2025-06-16 05:18:10', '2025-06-16 05:18:10'),
(242, 'TB-62', 'April', '2025', 58, 79, 21, 1500.00, 5000.00, 36500.00, 'lunas', '2025-06-16 05:18:28', '2025-06-16 05:18:28'),
(243, 'TB-63', 'April', '2025', 9, 9, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 05:18:42', '2025-06-16 05:18:42'),
(244, 'TB-64', 'April', '2025', 73, 82, 9, 1500.00, 5000.00, 18500.00, 'lunas', '2025-06-16 05:19:12', '2025-06-16 05:19:12'),
(245, 'TB-65', 'April', '2025', 35, 43, 8, 1500.00, 5000.00, 17000.00, 'lunas', '2025-06-16 05:19:27', '2025-06-16 05:19:27'),
(246, 'TB-66', 'April', '2025', 28, 36, 8, 1500.00, 5000.00, 17000.00, 'lunas', '2025-06-16 05:20:51', '2025-06-16 05:20:51'),
(247, 'TB-67', 'April', '2025', 26, 26, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 05:21:11', '2025-06-16 05:21:11'),
(248, 'TB-68', 'April', '2025', 6, 8, 2, 1500.00, 5000.00, 8000.00, 'lunas', '2025-06-16 05:21:26', '2025-06-16 05:21:26'),
(249, 'TB-69', 'April', '2025', 17, 17, 0, 1500.00, 5000.00, 5000.00, 'lunas', '2025-06-16 05:21:47', '2025-06-16 05:21:47'),
(250, 'TB-70', 'April', '2025', 25, 35, 10, 1500.00, 5000.00, 20000.00, 'lunas', '2025-06-16 05:22:04', '2025-06-16 05:22:04'),
(251, 'TB-71', 'April', '2025', 57, 75, 18, 1500.00, 5000.00, 32000.00, 'lunas', '2025-06-16 05:22:35', '2025-06-16 05:22:35'),
(252, 'TB-72', 'April', '2025', 51, 68, 17, 1500.00, 5000.00, 30500.00, 'lunas', '2025-06-16 05:22:52', '2025-06-16 05:22:52'),
(253, 'TB-73', 'April', '2025', 13, 20, 7, 1500.00, 5000.00, 15500.00, 'lunas', '2025-06-16 05:23:16', '2025-06-16 05:23:16'),
(254, 'TB-74', 'April', '2025', 35, 49, 14, 1500.00, 5000.00, 26000.00, 'lunas', '2025-06-16 05:23:32', '2025-06-16 05:23:32'),
(255, 'TB-75', 'April', '2025', 5, 6, 1, 1500.00, 5000.00, 6500.00, 'lunas', '2025-06-16 05:23:45', '2025-06-16 05:23:45'),
(256, 'TB-76', 'April', '2025', 3, 22, 19, 1500.00, 5000.00, 33500.00, 'lunas', '2025-06-16 05:24:07', '2025-06-16 05:24:07'),
(257, 'TB-77', 'April', '2025', 37, 64, 27, 1500.00, 5000.00, 45500.00, 'lunas', '2025-06-16 05:24:23', '2025-06-16 05:24:23'),
(258, 'TB-78', 'April', '2025', 32, 44, 12, 1500.00, 5000.00, 23000.00, 'lunas', '2025-06-16 05:24:38', '2025-06-16 05:24:38'),
(259, 'TB-79', 'April', '2025', 2, 10, 8, 1500.00, 5000.00, 17000.00, 'lunas', '2025-06-16 05:24:56', '2025-06-16 05:24:56'),
(260, 'TB-80', 'April', '2025', 28, 42, 14, 1500.00, 5000.00, 26000.00, 'lunas', '2025-06-16 05:25:11', '2025-06-16 05:25:11'),
(261, 'TB-81', 'April', '2025', 41, 65, 24, 1500.00, 5000.00, 41000.00, 'lunas', '2025-06-16 05:25:41', '2025-06-16 05:25:41'),
(262, 'TB-82', 'April', '2025', 16, 30, 14, 1500.00, 5000.00, 26000.00, 'lunas', '2025-06-16 05:25:59', '2025-06-16 05:25:59'),
(263, 'TB-27', 'Mei', '2025', 82, 86, 4, 1500.00, 5000.00, 11000.00, 'belum lunas', '2025-07-02 05:50:07', '2025-07-02 05:50:07'),
(264, 'TB-27', 'Juni', '2025', 86, 89, 3, 1500.00, 5000.00, 9500.00, 'belum lunas', '2025-07-02 05:51:10', '2025-07-02 05:51:10'),
(265, 'TB-27', 'Juli', '2025', 89, 90, 1, 1500.00, 5000.00, 6500.00, 'belum lunas', '2025-07-02 05:51:24', '2025-07-02 05:51:24'),
(266, 'TB-27', 'Agustus', '2025', 90, 91, 1, 1500.00, 5000.00, 6500.00, 'belum lunas', '2025-07-02 05:51:36', '2025-07-02 05:51:36'),
(267, 'TB-85', 'Desember', '2025', 0, 2, 2, 1500.00, 5000.00, 8000.00, 'belum lunas', '2025-07-02 05:58:57', '2025-07-02 05:58:57'),
(268, 'TB-85', 'Januari', '2026', 2, 5, 3, 1500.00, 5000.00, 9500.00, 'belum lunas', '2025-07-02 05:59:53', '2025-07-02 05:59:53'),
(269, 'TB-85', 'Januari', '2025', 5, 9, 4, 1500.00, 5000.00, 11000.00, 'belum lunas', '2025-07-02 06:00:31', '2025-07-02 06:00:31'),
(270, 'TB-27', 'September', '2025', 91, 100, 9, 1500.00, 5000.00, 18500.00, 'belum lunas', '2025-07-02 06:04:26', '2025-07-02 06:04:26'),
(271, 'TB-10', 'Mei', '2025', 8, 10, 2, 1500.00, 5000.00, 8000.00, 'belum lunas', '2025-07-04 18:43:55', '2025-07-04 18:43:55'),
(272, 'TB-10', 'Juni', '2025', 10, 12, 2, 1500.00, 5000.00, 8000.00, 'lunas', '2025-07-04 19:22:18', '2025-07-04 19:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `tarifs`
--

CREATE TABLE `tarifs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tarifs`
--

INSERT INTO `tarifs` (`id`, `harga`, `created_at`, `updated_at`) VALUES
(1, 1500, NULL, '2025-06-12 09:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abonemens`
--
ALTER TABLE `abonemens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_username_unique` (`username`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengguna_username_unique` (`username`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tagihans`
--
ALTER TABLE `tagihans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagihans_pengguna_id_foreign` (`pengguna_id`);

--
-- Indexes for table `tarifs`
--
ALTER TABLE `tarifs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abonemens`
--
ALTER TABLE `abonemens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tagihans`
--
ALTER TABLE `tagihans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `tarifs`
--
ALTER TABLE `tarifs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tagihans`
--
ALTER TABLE `tagihans`
  ADD CONSTRAINT `tagihans_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
