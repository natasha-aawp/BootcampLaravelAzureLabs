-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Des 2022 pada 04.07
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weeklybootcamp-7`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_18_092331_create_companies_table', 1),
(6, '2022_12_19_024634_create_students_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) NOT NULL,
  `gender` enum('male','female','others') COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `mobile`, `age`, `gender`, `address_info`, `created_at`, `updated_at`) VALUES
(1, 'Jeffery Kuhlman', 'xroob@example.com', '713.253.6015', 42, 'female', '53035 Vincent Path\nRunolfssonville, IA 69616', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(2, 'Gaston Satterfield', 'dovie.graham@example.org', '1-667-553-5989', 39, 'male', '509 Taurean Lodge\nLedaville, GA 80145', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(3, 'Edgar Trantow', 'alta17@example.com', '1-283-394-5968', 28, 'male', '9933 Michel Isle Suite 247\nSpencerfurt, OR 56798-2178', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(4, 'Brooklyn O\'Connell', 'wilderman.cary@example.org', '631.327.0338', 27, 'male', '8530 Schinner Branch Suite 502\nNorth Alexandra, KY 00068-6206', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(5, 'Mark Hettinger', 'lakin.selina@example.com', '1-702-451-8585', 39, 'male', '9095 Wintheiser Cliffs Suite 698\nBethelmouth, WY 94376', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(6, 'Mrs. Marge Kautzer', 'vbartoletti@example.org', '+15858207655', 35, 'male', '64755 Heidenreich Courts\nKuvalisborough, WI 81342-0071', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(7, 'Mr. Elijah Cormier', 'qdicki@example.org', '772.655.6563', 36, 'female', '2818 Rolando Courts Suite 088\nDemetrisberg, OK 33775', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(8, 'Myles Ritchie', 'elbert98@example.org', '+1.904.355.6919', 27, 'others', '323 Labadie Field\nSouth Chyna, MS 26190', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(9, 'Willy Gutmann DVM', 'shaina.schaefer@example.org', '801-576-5364', 45, 'male', '216 Macejkovic Viaduct Apt. 943\nEast Fayetown, IA 54686', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(10, 'Godfrey Durgan', 'deshawn.jaskolski@example.com', '605-777-7579', 39, 'female', '312 Kaylie Parkway Apt. 288\nWest Ahmad, AK 63890-0786', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(11, 'Amos Cassin', 'edmond.emmerich@example.net', '+19122696259', 39, 'female', '81653 Alexanne Fields\nAlbaville, AZ 89170', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(12, 'Austen Rippin', 'schulist.candida@example.net', '281.651.2338', 25, 'male', '941 Luettgen Dale\nWest Wavaville, PA 83196', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(13, 'Deshawn Kertzmann', 'kirlin.elsie@example.com', '947-597-7134', 34, 'others', '587 Chesley Park Apt. 086\nParisianchester, CA 21577-3595', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(14, 'Geo Larson DDS', 'amelia.wiza@example.org', '+1.617.664.8313', 44, 'male', '395 Nakia Mission\nWest Alejandraport, RI 25778', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(15, 'Mr. Kody Glover', 'blick.gianni@example.org', '+1.321.508.4652', 25, 'female', '5344 McDermott Branch Apt. 161\nEast Nelsonshire, CA 86891', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(16, 'Yesenia Roob PhD', 'layla.cronin@example.net', '+12393088752', 31, 'female', '8088 Theresia Corners\nWest Eunice, DC 91523-0373', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(17, 'June Hill', 'gerhold.graciela@example.net', '608-260-8921', 44, 'male', '239 Evalyn Plaza\nAlexandermouth, OH 57783-6738', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(18, 'Emerald O\'Keefe DVM', 'mozelle.zulauf@example.com', '+14255885941', 30, 'female', '36583 Gladyce Land Suite 901\nNew Adellafurt, NM 34914', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(19, 'Mr. Cristian Brekke MD', 'rhoeger@example.org', '432-885-5984', 36, 'female', '419 Will Bypass\nQuitzonstad, NV 16906', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(20, 'Ms. Reva Yost', 'csanford@example.com', '+1.234.814.5339', 33, 'female', '3317 Considine Lane Suite 374\nSouth Lexusborough, ME 48988-4248', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(21, 'Mr. Lorenzo Dickinson MD', 'qstreich@example.com', '586-927-1588', 31, 'female', '9344 Americo Springs Suite 706\nReannaborough, HI 95346-8529', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(22, 'Gillian Bechtelar', 'tiana60@example.net', '469.637.5404', 34, 'others', '6812 Spinka Plain Apt. 274\nLake Calliefurt, WY 70289-0008', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(23, 'Wade Abernathy', 'bhamill@example.org', '1-574-362-2707', 44, 'others', '6310 Lisette Squares Apt. 417\nWest Demarioborough, IA 58503', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(24, 'Cullen Mayer', 'huels.darrin@example.net', '346.556.8438', 27, 'male', '422 Schroeder Lake\nArmstrongborough, OH 16123-3545', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(25, 'Fiona Kreiger DVM', 'myrtle04@example.com', '1-332-826-4375', 40, 'female', '86761 Zulauf Circles Apt. 482\nEast Margot, SD 86315', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(26, 'Ms. Hailee Bayer', 'leonora.lesch@example.org', '+1-619-842-8627', 34, 'others', '37117 Hilario Ports\nLake Stacy, MD 14611', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(27, 'Kellie Towne', 'taryn.wyman@example.org', '(814) 981-1851', 42, 'female', '2432 Greenfelder Extensions Suite 019\nFunkton, MI 81707-5368', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(28, 'Prof. Grayce Yost', 'hope32@example.net', '1-541-291-0901', 32, 'female', '964 Ward Drives\nZackville, ND 83331-1443', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(29, 'Mr. Simeon Schaden I', 'kaylah.yost@example.net', '539.541.2604', 38, 'female', '874 Marcus Station Suite 151\nAdahshire, MN 89593-1534', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(30, 'Marilyne Nicolas III', 'brakus.lempi@example.com', '325-794-7791', 39, 'male', '4477 Willms Rapids Suite 937\nUllrichport, PA 83524', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(31, 'Miss Antonetta Rosenbaum II', 'eblanda@example.net', '1-947-399-0351', 44, 'female', '85543 Braun Common Suite 985\nWest Zelma, CT 09150-6342', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(32, 'Ceasar Welch', 'gusikowski.sonya@example.com', '(640) 899-9575', 35, 'others', '42767 Jerde Track Suite 860\nNorth Filibertostad, MD 98040', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(33, 'Samson Muller', 'madaline04@example.com', '+13522666634', 43, 'others', '29695 Ozella Prairie\nSpencerview, MO 76016', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(34, 'Jevon Quigley IV', 'quigley.raquel@example.com', '+1 (712) 953-3947', 33, 'male', '81973 Stamm Isle Suite 003\nGranthaven, TN 12628', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(35, 'Mr. Fermin Okuneva', 'cara57@example.org', '(463) 328-3342', 33, 'male', '731 Deangelo Burgs\nSouth Frederik, MA 00755', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(36, 'Clemmie Wehner', 'langworth.jamie@example.org', '+1 (541) 724-7263', 42, 'female', '341 Raynor Dam Suite 031\nPatbury, WI 60629', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(37, 'Ted Padberg', 'zboncak.yasmeen@example.net', '+1 (520) 575-1588', 26, 'female', '157 Hackett Divide\nPort Alexandroburgh, NC 16179', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(38, 'Everardo Ruecker', 'katarina07@example.net', '+1 (703) 395-1127', 38, 'male', '29154 Dominic Shores Suite 110\nRathville, IA 86128-7446', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(39, 'Dean Farrell DVM', 'corwin.karina@example.com', '+1-458-443-6180', 38, 'others', '67680 Wiza Avenue\nLake Taylorburgh, NC 02557', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(40, 'Ernestina Graham', 'barry39@example.org', '1-818-400-2758', 43, 'female', '3573 Betsy Garden Suite 076\nSouth Dolly, PA 47297-0568', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(41, 'Lonny Ledner', 'hartmann.monica@example.org', '680.567.6399', 27, 'female', '82276 Josefa Valley Apt. 230\nRathchester, OK 18770', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(42, 'Cali Kuphal', 'clement44@example.net', '+1.779.477.9283', 27, 'male', '42969 Tabitha Streets\nPort Frederique, MT 64941', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(43, 'Hardy Kilback DDS', 'christy81@example.net', '+1 (678) 423-7142', 41, 'male', '780 Bailey Ranch Suite 890\nUrsulamouth, NY 06501-0693', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(44, 'Natasha Rodriguez', 'johnson.rolfson@example.com', '+1-469-271-6890', 42, 'female', '98805 Waters Ports\nNew Helen, TX 16079-9956', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(45, 'Fred Kirlin', 'precious.connelly@example.org', '763-665-3180', 28, 'female', '962 Diamond Route Suite 949\nPort Kyleigh, ME 88502-5722', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(46, 'Christa Carroll', 'purdy.jana@example.net', '320-981-6973', 27, 'female', '762 Douglas Tunnel\nEast Christiana, MS 85807-2872', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(47, 'Larue Abshire I', 'brown.hyman@example.com', '+1.724.743.5468', 45, 'male', '42146 Regan Plaza Apt. 481\nNew Rooseveltport, ME 20127', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(48, 'Mr. Vladimir Blanda', 'caterina69@example.net', '1-803-893-9061', 30, 'female', '38506 Balistreri Field\nFraneckifurt, MT 50929-7629', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(49, 'Conrad Dickens', 'fprohaska@example.org', '+1 (540) 913-0415', 25, 'female', '31686 Annamarie Well Apt. 996\nNorth Elouise, TN 73633', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(50, 'Lynn Maggio', 'leanna37@example.net', '+1-505-623-4106', 25, 'male', '547 Hildegard Rue Suite 899\nDeckowport, CT 57341', '2022-12-18 19:55:09', '2022-12-18 19:55:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Reese Turcotte', 'lindsey24@example.com', '2022-12-18 19:55:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0NUiXRtVwS', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(2, 'Deanna Moen II', 'shields.juanita@example.com', '2022-12-18 19:55:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yZjursz8HB', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(3, 'Yesenia Schuppe', 'matt.dooley@example.org', '2022-12-18 19:55:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WmwDsv88jd', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(4, 'Alan Koelpin', 'alena01@example.org', '2022-12-18 19:55:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm4TXwtQtjv', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(5, 'Christelle Upton', 'leannon.madge@example.org', '2022-12-18 19:55:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B0XqyKGmFC', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(6, 'Susana Reichert', 'pbeahan@example.net', '2022-12-18 19:55:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LyFIEa0kZ3', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(7, 'Angie Jacobson DVM', 'jshanahan@example.net', '2022-12-18 19:55:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ifsr23FJp2', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(8, 'Chaim Hamill', 'mohammad.howe@example.com', '2022-12-18 19:55:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y5glSMU6E9', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(9, 'Oran Streich', 'hettinger.marc@example.org', '2022-12-18 19:55:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sMs19ud62P', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(10, 'Jade Heller', 'annie37@example.org', '2022-12-18 19:55:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i13zkzmiNH', '2022-12-18 19:55:09', '2022-12-18 19:55:09'),
(11, 'Test User', 'test@example.com', '2022-12-18 19:55:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nZhOmtSU66', '2022-12-18 19:55:09', '2022-12-18 19:55:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
