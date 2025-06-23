-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 23 2025 г., 10:30
-- Версия сервера: 8.0.30
-- Версия PHP: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `event-edge-su`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bans`
--

CREATE TABLE `bans` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `banned_by` bigint UNSIGNED DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banned_until` timestamp NULL DEFAULT NULL,
  `is_permanent` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `games`
--

CREATE TABLE `games` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `games`
--

INSERT INTO `games` (`id`, `name`, `logo`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Valorant', '/gameLogo/valorant.png', 'Это онлайн-шутер от первого лица, в котором игроки берут под управление одного из множества персонажей с уникальными способностями и делятся на две команды по пять человек. Одна должна заминировать точку, вторая - ее защитить.', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(2, 'Counter-strike 2', '/gameLogo/cs2.jpg', 'Многопользовательская компьютерная игра в жанре шутера от первого лица, разработанная и выпущенная для Windows американской компанией Valve.', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(3, 'Counter-strike 1.6', '/gameLogo/cs1.6.jpg', 'Многопользовательская компьютерная игра в жанре шутера от первого лица, разработанная и выпущенная для Windows американской компанией Valve.', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(4, 'Tekken 7', '/gameLogo/tekken.jpg', 'Компьютерная игра в жанре файтинг, седьмая основная часть игровой серии Tekken. Выпущена для аркадных автоматов 18 марта 2015 года, после чего 2 июня 2017 года она была портирована на PlayStation 4, Xbox One и Windows.', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(5, 'Mortal Combat X', '/gameLogo/mortalCombat.jpg', 'Десятая часть серии файтингов Mortal Kombat. Выпущена в 2015 году для платформ PC, Xbox One, Xbox 360, Playstation 4 и Playstation 3.', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(6, 'Dota 2', '/gameLogo/dota.png', 'Компьютерная многопользовательская командная игра жанра Action RTS, разрабатываемая компанией Valve Corporation. Игра была анонсирована 13 октября 2010 года, а выпущена 9 июля 2013 года для Windows, а для Linux и OS X 18 июля 2013 года.', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(7, 'League of Legends', '/gameLogo/lol.png', 'Многопользовательская компьютерная игра в жанре MOBA, разработанная и выпущенная американской компанией Riot Games в 2009 году для платформ Microsoft Windows и macOS.', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(8, 'Fortnite', '/gameLogo/fortnite.png', 'Компьютерная онлайн-игра в жанрах симулятор выживания и королевская битва. Разработана американской компанией Epic Games совместно с People Can Fly и выпущена в 2017 году.', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(9, 'Overwatch 2', '/gameLogo/overwatch.png', 'Многопользовательская бесплатная компьютерная игра в жанре шутера от первого лица, разрабатываемая и издаваемая компанией Blizzard Entertainment. Является продолжением геройского шутера Overwatch', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(10, 'World of Tanks', '/gameLogo/wot.png', 'Клиентская командная массовая многопользовательская онлайн-игра, посвящённая бронированным машинам середины XX века.', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(11, 'PUBG: BATTLEGROUNDS', '/gameLogo/pubg.png', 'Многопользовательская онлайн-игра в жанре королевской битвы', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(12, 'Minecraft', '/gameLogo/minecraft.png', 'Это 3D-«песочница», разработанная компанией Mojang Studios. Игра включает в себя элементы выживания и жанра RPG, в которой игроки исследуют и осваивают процедурно сгенерированные миры, собранные из кубических блоков.', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(13, 'Brawl Stars', '/gameLogo/brawl.png', 'Игра для мобильных устройств в жанрах MOBA и геройский шутер, разработанная и изданная финской компанией Supercell.', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(14, 'Другая игра', '', '', '2025-05-06 07:16:13', '2025-05-06 07:16:13');

-- --------------------------------------------------------

--
-- Структура таблицы `game_matches`
--

CREATE TABLE `game_matches` (
  `id` bigint UNSIGNED NOT NULL,
  `tournament_id` bigint UNSIGNED NOT NULL,
  `team_1_id` bigint UNSIGNED NOT NULL,
  `team_2_id` bigint UNSIGNED NOT NULL,
  `match_date` timestamp NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` text COLLATE utf8mb4_unicode_ci,
  `stage_id` bigint UNSIGNED DEFAULT NULL,
  `winner_team_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `game_matches`
--

INSERT INTO `game_matches` (`id`, `tournament_id`, `team_1_id`, `team_2_id`, `match_date`, `status`, `result`, `stage_id`, `winner_team_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2025-05-05 13:16:00', 'completed', '3:1', 2, 1, '2025-05-06 07:16:13', '2025-06-21 04:25:04'),
(2, 1, 3, 4, '2025-05-07 07:16:13', 'completed', '2:0', 2, 3, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(3, 1, 5, 6, '2025-05-07 07:16:13', 'completed', '4:2', 2, 5, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(4, 1, 7, 9, '2025-05-07 07:16:13', 'completed', '1:0', 2, 7, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(5, 1, 1, 3, '2025-05-08 07:16:13', 'completed', '2:1', 3, 1, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(6, 1, 5, 7, '2025-05-08 07:16:13', 'completed', '3:2', 3, 5, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(7, 1, 1, 5, '2025-05-09 07:16:13', 'completed', '3:1', 4, 1, '2025-05-06 07:16:13', '2025-05-06 07:16:13');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `match_participant`
--

CREATE TABLE `match_participant` (
  `id` bigint UNSIGNED NOT NULL,
  `game_match_id` bigint UNSIGNED NOT NULL,
  `participant_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '2025_01_27_173007_create_roles_table', 1),
(3, '2025_01_27_173008_create_stage_types_table', 1),
(4, '2025_01_27_173008_create_user_table', 1),
(5, '2025_01_27_173009_create_teams_table', 1),
(6, '2025_01_27_173010_create_games_table', 1),
(7, '2025_01_27_173010_create_stages_table', 1),
(8, '2025_01_27_173011_create_tournaments_table', 1),
(9, '2025_01_27_173012_create_participants_table', 1),
(10, '2025_01_27_173015_create_notifications_table', 1),
(11, '2025_01_27_173015_create_team_invites_table', 1),
(12, '2025_01_27_173105_create_game_matches_table', 1),
(13, '2025_01_27_180419_create_personal_access_tokens_table', 1),
(14, '2025_03_03_142904_create_match_participant_table', 1),
(15, '2025_03_17_065219_create_tournament_baskets_table', 1),
(16, '2025_03_25_101755_create_jobs_table', 1),
(17, '2025_03_26_120814_create_team_user_table', 1),
(18, '2025_04_18_100502_create_tournament_requests', 1),
(19, '2025_04_19_000000_create_bans_table', 1),
(20, '2025_04_20_create_team_tournament_requests_table', 1),
(21, '2025_05_01_054924_create_news_categories_table', 1),
(22, '2025_05_27_173016_create_news_feeds_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news_categories`
--

CREATE TABLE `news_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `slug`, `description`, `is_active`, `sort_order`, `meta_title`, `meta_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Турниры', 'tournament', NULL, 1, 0, NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13', NULL),
(2, 'Киберспорт', 'esport', NULL, 1, 0, NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13', NULL),
(3, 'Игровые события', 'esport-event', NULL, 1, 0, NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `news_feeds`
--

CREATE TABLE `news_feeds` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('draft','published','archived') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `published_at` timestamp NULL DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views_count` int NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news_feeds`
--

INSERT INTO `news_feeds` (`id`, `title`, `slug`, `description`, `content`, `status`, `published_at`, `archived_at`, `user_id`, `category_id`, `image`, `views_count`, `is_featured`, `meta_title`, `meta_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Открытие нового турнира по WOT blitz', 'otkrytie-novogo-turnira-po-wot-blitz', 'Крупнейший турнир года с призовым фондом $1,000,000', 'Полное описание предстоящего турнира, список участников и расписание матчей...', 'published', '2025-05-04 07:16:13', NULL, 1, 1, 'news/jcU6UcRZWPlgrxPtZEjMAZJUkwSxAsDZDhkUTPjx.jpg', 5, 1, 'Новый турнир по Dota 2 2023', 'Анонс международного турнира по Dota 2 с крупным призовым фондом', '2025-05-06 07:16:13', '2025-06-21 04:39:00', NULL),
(2, 'Итоги чемпионата по CS:GO', 'itogi-cempionata-po-csgo', 'Команда NAVI одержала победу на международном турнире', 'Уже 2 июня начнется главный турнир этого полугодия — BLAST.tv Austin Major 2025. Все лучшие составы по Counter-Strike 2 соберутся на LAN в Остине, чтобы побороться за $1,25 млн и звание команды, которая уйдет в заслуженный отпуск с титулом чемпиона. И ставки для абсолютно всех коллективов как никогда высоки: Team Vitality требуется победить на турнире, чтобы закончить сезон на мажорной ноте, а остальным командам надо доказать, что ZywOo и компанию всё-таки можно сломить.\r\nМейджор будет по-настоящему знаковым — мы наконец-то увидим, как на одном турнире играют Александр s1mple Костылев, Даниил donk Крышковец, Илья m0NESY Осипов и Матье ZywOo Эрбо. Каждый из вышеперечисленных игроков намерен забрать с собой кубок. Главный турнир от Valve всегда отличался неожиданными результатами, поэтому говорить о явных фаворитах в Остине не приходится. Об участниках ивента и их шансах на успех — в материале Cybersport.ru.\r\nTeam Vitality\r\nНа момент публикации материала мы с вами находимся в эре Vitality — не признали этого только истинные хейтеры клуба. Дан apEX Мадесклер уже давным-давно всё доказал — обыграть его состав сейчас невозможно, без каких-либо но. Команда показала способность и стирать фаворитов в ноль, и камбэкать из невозможных ситуаций. Уровень доминации ростера apEX можно сравнить с Astralis, однако для полной картины всё-таки не хватает одного маленького, но важного кусочка пазла. Естественно, речь идет о трофее мейджора. Ведь без него смысл такой неимоверной игры на шести турнирах просто-напросто теряется.', 'published', '2025-05-05 07:16:13', NULL, 1, 1, 'news/VdPiXXQukSI31nXJ9FwGMzIa7ywS0wRTz5fcJNJK.jpg', 23, 0, NULL, NULL, '2025-05-06 07:16:13', '2025-06-22 03:09:20', NULL),
(3, 'Предстоящий баланс патч в League of Legends', 'balance-patch-lol', 'Разработчики анонсировали изменения в следующем обновлении', 'Список изменений персонажей и новые предметы...', 'draft', NULL, NULL, 1, 1, 'news/GtQU5Q9aBFPuWu1QQFTFzIOQIaiV3WvsZ8nc9ZCS.png', 0, 0, NULL, NULL, '2025-05-06 07:16:13', '2025-06-21 04:23:11', NULL),
(4, 'Архив: Результаты прошлогоднего турнира', 'arhiv-rezultaty-turnira', 'Вспоминаем лучшие моменты турнира 2022 года', 'Обзор самых зрелищных моментов и интервью с победителями...', 'archived', '2024-05-06 07:16:13', '2025-04-06 07:16:13', 1, 1, 'news/JVLTq6dDsKNsk9QABCtON5ct2knMfKzQKcnNjrI0.png', 0, 0, NULL, NULL, '2025-05-06 07:16:13', '2025-06-21 04:22:58', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('unread','read') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `status`, `data`, `created_at`, `updated_at`) VALUES
(1, 2, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'read', NULL, '2025-05-06 07:16:30', '2025-06-22 02:57:09'),
(2, 20, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-05-06 07:16:30', '2025-05-06 07:16:30'),
(3, 21, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-05-06 07:16:30', '2025-05-06 07:16:30'),
(4, 6, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'read', NULL, '2025-05-06 07:16:30', '2025-05-06 07:16:42'),
(5, 28, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-05-06 07:16:30', '2025-05-06 07:16:30'),
(6, 29, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-05-06 07:16:30', '2025-05-06 07:16:30'),
(7, 8, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-05-06 07:16:30', '2025-05-06 07:16:30'),
(8, 32, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-05-06 07:16:30', '2025-05-06 07:16:30'),
(9, 33, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-05-06 07:16:30', '2025-05-06 07:16:30'),
(10, 1, 'Пользователь User 6 подал заявку на создание турнира: asdasdads', 'read', NULL, '2025-05-06 07:17:12', '2025-05-08 09:46:40'),
(11, 6, 'Ваш турнир \'asdasdads\' принят.', 'read', NULL, '2025-05-06 07:17:26', '2025-06-22 03:01:07'),
(12, 6, 'Команда #1 подала заявку на участие в турнире asdasdads', 'read', NULL, '2025-05-06 07:17:44', '2025-06-22 03:01:07'),
(13, 6, 'Команда \'Team Alpha\' подала заявку на участие в турнире \'asdasdads\'', 'read', NULL, '2025-05-06 07:25:46', '2025-06-22 03:01:07'),
(14, 1, 'Команда \'Team Alpha\' подала заявку на участие в турнире \'Летний турнир 2025\'', 'read', NULL, '2025-05-06 08:04:50', '2025-05-08 09:46:40'),
(15, 1, 'Ваша команда не принята в турнир Летний турнир 2025', 'read', NULL, '2025-05-06 08:48:06', '2025-05-08 09:46:40'),
(16, 18, 'Ваша команда не принята в турнир Летний турнир 2025', 'unread', NULL, '2025-05-06 08:48:06', '2025-05-06 08:48:06'),
(17, 19, 'Ваша команда не принята в турнир Летний турнир 2025', 'unread', NULL, '2025-05-06 08:48:06', '2025-05-06 08:48:06'),
(18, 2, 'Поздравляем! Ваша команда вышла в Group Stage турнира Летний турнир 2025.', 'read', NULL, '2025-06-02 11:29:27', '2025-06-22 02:57:09'),
(19, 20, 'Поздравляем! Ваша команда вышла в Group Stage турнира Летний турнир 2025.', 'unread', NULL, '2025-06-02 11:29:27', '2025-06-02 11:29:27'),
(20, 21, 'Поздравляем! Ваша команда вышла в Group Stage турнира Летний турнир 2025.', 'unread', NULL, '2025-06-02 11:29:27', '2025-06-02 11:29:27'),
(21, 2, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'read', NULL, '2025-06-21 03:10:03', '2025-06-22 02:57:09'),
(22, 20, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-06-21 03:10:03', '2025-06-21 03:10:03'),
(23, 21, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-06-21 03:10:03', '2025-06-21 03:10:03'),
(24, 6, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'read', NULL, '2025-06-21 03:10:03', '2025-06-22 03:01:07'),
(25, 28, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-06-21 03:10:03', '2025-06-21 03:10:03'),
(26, 29, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-06-21 03:10:03', '2025-06-21 03:10:03'),
(27, 8, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-06-21 03:10:03', '2025-06-21 03:10:03'),
(28, 32, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-06-21 03:10:03', '2025-06-21 03:10:03'),
(29, 33, 'Турнир \'Летний турнир 2025\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-06-21 03:10:03', '2025-06-21 03:10:03'),
(30, 2, 'Турнир \'Летний турнир 2020\' стартовал! Проверьте свою первую игру.', 'read', NULL, '2025-06-21 04:25:34', '2025-06-22 02:57:09'),
(31, 20, 'Турнир \'Летний турнир 2020\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-06-21 04:25:34', '2025-06-21 04:25:34'),
(32, 21, 'Турнир \'Летний турнир 2020\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-06-21 04:25:34', '2025-06-21 04:25:34'),
(33, 6, 'Турнир \'Летний турнир 2020\' стартовал! Проверьте свою первую игру.', 'read', NULL, '2025-06-21 04:25:34', '2025-06-22 03:01:07'),
(34, 28, 'Турнир \'Летний турнир 2020\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-06-21 04:25:34', '2025-06-21 04:25:34'),
(35, 29, 'Турнир \'Летний турнир 2020\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-06-21 04:25:34', '2025-06-21 04:25:34'),
(36, 8, 'Турнир \'Летний турнир 2020\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-06-21 04:25:34', '2025-06-21 04:25:34'),
(37, 32, 'Турнир \'Летний турнир 2020\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-06-21 04:25:34', '2025-06-21 04:25:34'),
(38, 33, 'Турнир \'Летний турнир 2020\' стартовал! Проверьте свою первую игру.', 'unread', NULL, '2025-06-21 04:25:34', '2025-06-21 04:25:34'),
(39, 2, 'Команда \'Team Bravo\' подала заявку на участие в турнире \'Зимний турнир 2025\'', 'read', NULL, '2025-06-22 02:53:48', '2025-06-22 02:57:09'),
(40, 2, 'Команда \'Team Bravo\' подала заявку на участие в турнире \'Зимний турнир 2025\'', 'read', NULL, '2025-06-22 02:56:49', '2025-06-22 02:57:09'),
(41, 2, 'Команда \'Team Foxtrot\' подала заявку на участие в турнире \'Зимний турнир 2025\'', 'unread', NULL, '2025-06-22 03:00:45', '2025-06-22 03:00:45'),
(42, 2, 'Команда \'Team Foxtrot\' подала заявку на участие в турнире \'Зимний турнир 2025\'', 'unread', NULL, '2025-06-22 03:03:34', '2025-06-22 03:03:34'),
(43, 2, 'Команда \'Team Foxtrot\' подала заявку на участие в турнире \'Зимний турнир 2025\'', 'unread', NULL, '2025-06-22 03:08:44', '2025-06-22 03:08:44');

-- --------------------------------------------------------

--
-- Структура таблицы `participants`
--

CREATE TABLE `participants` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED DEFAULT NULL,
  `tournament_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `participants`
--

INSERT INTO `participants` (`id`, `user_id`, `team_id`, `tournament_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(2, 2, 2, 1, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(3, 3, 1, 2, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(4, 4, 3, 2, '2025-05-06 07:16:13', '2025-05-06 07:16:13');

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(17, 'App\\Models\\User', 1, 'auth_token', 'ba260f6353dfb7373cebc1df15475406228b457fe8baa5ad5b591bd91b06e90b', '[\"*\"]', '2025-06-22 02:53:04', NULL, '2025-06-15 01:47:03', '2025-06-22 02:53:04'),
(18, 'App\\Models\\User', 2, 'auth_token', 'a387a0659f2726c8f132151bc02ce9e6ba847b065da69cdea79f6eb693b35f50', '[\"*\"]', '2025-06-22 02:57:18', NULL, '2025-06-22 02:53:23', '2025-06-22 02:57:18'),
(19, 'App\\Models\\User', 6, 'auth_token', '56a37737fb7b6f701ebd8b800605652a6a615d1774fb9447d4b2d70a083c95a0', '[\"*\"]', '2025-06-22 03:46:38', NULL, '2025-06-22 02:58:22', '2025-06-22 03:46:38');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Администратор', NULL, NULL),
(2, 'Редактор', NULL, NULL),
(3, 'Оператор', NULL, NULL),
(4, 'Пользователь', NULL, NULL),
(5, 'Гость', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `stages`
--

CREATE TABLE `stages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `stage_type_id` bigint UNSIGNED NOT NULL,
  `rounds` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `stages`
--

INSERT INTO `stages` (`id`, `name`, `start_date`, `end_date`, `stage_type_id`, `rounds`, `created_at`, `updated_at`) VALUES
(1, 'Group Stage', '2025-05-07 10:16:13', '2025-05-13 10:16:13', 1, '3', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(2, 'Quarterfinals', '2025-05-14 10:16:13', '2025-05-16 10:16:13', 2, '1', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(3, 'Semifinals', '2025-05-17 10:16:13', '2025-05-19 10:16:13', 2, '1', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(4, 'Final', '2025-05-20 10:16:13', '2025-05-21 10:16:13', 1, '1', '2025-05-06 07:16:13', '2025-05-06 07:16:13');

-- --------------------------------------------------------

--
-- Структура таблицы `stage_types`
--

CREATE TABLE `stage_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `stage_types`
--

INSERT INTO `stage_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Single eliminate', NULL, NULL),
(2, 'Double eliminate', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `teams`
--

CREATE TABLE `teams` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `captain_id` bigint UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `teams`
--

INSERT INTO `teams` (`id`, `name`, `captain_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Team Alpha', 1, 'active', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(2, 'Team Bravo', 2, 'active', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(3, 'Team Charlie', 3, 'active', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(4, 'Team Delta', 4, 'active', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(5, 'Team Echo', 5, 'active', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(6, 'Team Foxtrot', 6, 'active', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(7, 'Team Golf', 7, 'active', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(8, 'Team Hotel', 8, 'inactive', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(9, 'Team India', 9, 'active', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(10, 'Team Juliet', 10, 'active', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(11, 'Team Kilo', 11, 'inactive', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(12, 'Team Lima', 12, 'active', '2025-05-06 07:16:13', '2025-05-06 07:16:13');

-- --------------------------------------------------------

--
-- Структура таблицы `team_invites`
--

CREATE TABLE `team_invites` (
  `id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `expires_at` timestamp NOT NULL,
  `status` enum('pending','accepted','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `team_tournament_requests`
--

CREATE TABLE `team_tournament_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED NOT NULL,
  `tournament_id` bigint UNSIGNED NOT NULL,
  `status` enum('pending','accepted','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `team_tournament_requests`
--

INSERT INTO `team_tournament_requests` (`id`, `team_id`, `tournament_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 'rejected', '2025-05-06 08:04:50', '2025-05-06 08:48:06'),
(8, 6, 2, 'pending', '2025-06-22 03:08:44', '2025-06-22 03:08:44');

-- --------------------------------------------------------

--
-- Структура таблицы `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `team_user`
--

INSERT INTO `team_user` (`id`, `team_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 18, 'active', NULL, NULL),
(3, 1, 19, 'active', NULL, NULL),
(4, 2, 2, 'active', NULL, NULL),
(5, 2, 20, 'active', NULL, NULL),
(6, 2, 21, 'active', NULL, NULL),
(7, 3, 3, 'active', NULL, NULL),
(8, 3, 22, 'active', NULL, NULL),
(9, 3, 23, 'active', NULL, NULL),
(10, 4, 4, 'active', NULL, NULL),
(11, 4, 24, 'active', NULL, NULL),
(12, 4, 25, 'active', NULL, NULL),
(13, 5, 5, 'active', NULL, NULL),
(14, 5, 26, 'active', NULL, NULL),
(15, 5, 27, 'active', NULL, NULL),
(16, 6, 6, 'active', NULL, NULL),
(17, 6, 28, 'active', NULL, NULL),
(18, 6, 29, 'active', NULL, NULL),
(19, 7, 7, 'active', NULL, NULL),
(20, 7, 30, 'active', NULL, NULL),
(21, 7, 31, 'active', NULL, NULL),
(22, 8, 8, 'inactive', NULL, NULL),
(23, 8, 32, 'inactive', NULL, NULL),
(24, 8, 33, 'inactive', NULL, NULL),
(25, 9, 9, 'active', NULL, NULL),
(26, 9, 34, 'active', NULL, NULL),
(27, 9, 35, 'active', NULL, NULL),
(28, 10, 10, 'active', NULL, NULL),
(29, 10, 36, 'active', NULL, NULL),
(30, 10, 13, 'active', NULL, NULL),
(31, 11, 11, 'inactive', NULL, NULL),
(32, 11, 14, 'inactive', NULL, NULL),
(33, 11, 15, 'inactive', NULL, NULL),
(34, 12, 12, 'active', NULL, NULL),
(35, 12, 16, 'active', NULL, NULL),
(36, 12, 17, 'active', NULL, NULL),
(37, 1, 1, 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tournaments`
--

CREATE TABLE `tournaments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `stage_id` bigint UNSIGNED DEFAULT NULL,
  `views_count` int UNSIGNED NOT NULL DEFAULT '0',
  `status` enum('pending','ongoing','current','completed','registrationOpen','registrationClosed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tournaments`
--

INSERT INTO `tournaments` (`id`, `name`, `description`, `start_date`, `end_date`, `user_id`, `game_id`, `stage_id`, `views_count`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Летний турнир 2020', 'Прикольный и интересный турнир', '2025-05-09 16:16:00', '2025-05-14 16:16:00', 1, 2, 1, 115, 'pending', 'tournaments/JeBe3KLBBKUM9dY4eys0cLHpv1JS7h6k5dZQQtbY.png', '2025-05-06 07:16:00', '2025-06-22 03:08:24'),
(2, 'Зимний турнир 2025', 'Прикольный и интересный турнир по игре Dota 2', '2025-04-30 20:16:00', '2025-05-08 20:16:00', 2, 1, 1, 69, 'ongoing', 'tournaments/v33szyPHcNLn4DoNI8L9E98ohGZeFbaoWRcKvSLd.jpg', '2025-05-06 07:16:00', '2025-06-22 02:55:03'),
(3, 'Standoff 2 Open Cup', 'Турнир по игре Standoff 2, закачаетесь!', '2025-04-06 03:16:00', '2025-04-26 03:16:00', 3, 3, 1, 17, 'completed', 'tournament_images/4.jpg', '2025-05-06 07:16:00', '2025-06-02 11:28:53'),
(4, 'CS2 2X2 skill cup', 'Турнир 2 на 2 по игре CS2!', '2025-05-21 03:16:00', '2025-05-26 03:16:00', 1, 2, 1, 33, 'pending', 'tournament_images/5.jpg', '2025-05-06 07:16:00', '2025-06-21 04:38:35'),
(5, 'Minecraft hunger games', 'Турнир по игре Minecraft!', '2025-05-31 03:16:00', '2025-06-03 03:16:00', 2, 12, 1, 9, 'pending', 'tournament_images/6.jpg', '2025-05-06 07:16:00', '2025-06-21 04:11:59'),
(6, 'WOT championship', 'Турнир по игре World of Tanks!', '2025-06-04 20:16:00', '2025-06-09 20:16:00', 3, 10, 1, 6, 'pending', 'tournaments/lnXGHcpQJ4CJbZiLH8pi5B4M9fGYfypOaQrTOxTi.jpg', '2025-05-06 07:16:00', '2025-06-21 04:09:25');

-- --------------------------------------------------------

--
-- Структура таблицы `tournament_baskets`
--

CREATE TABLE `tournament_baskets` (
  `id` bigint UNSIGNED NOT NULL,
  `tournament_id` bigint UNSIGNED NOT NULL,
  `game_match_id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tournament_baskets`
--

INSERT INTO `tournament_baskets` (`id`, `tournament_id`, `game_match_id`, `status`, `result`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'completed', '3:1', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(2, 1, 2, 'completed', '2:0', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(3, 1, 3, 'completed', '4:2', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(4, 1, 4, 'completed', '1:0', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(5, 1, 5, 'completed', '2:1', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(6, 1, 6, 'completed', '3:2', '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(7, 1, 7, 'completed', '3:1', '2025-05-06 07:16:13', '2025-05-06 07:16:13');

-- --------------------------------------------------------

--
-- Структура таблицы `tournament_requests`
--

CREATE TABLE `tournament_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `stage_type_id` bigint UNSIGNED DEFAULT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `user_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teams` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tournament_requests`
--

INSERT INTO `tournament_requests` (`id`, `name`, `description`, `start_date`, `end_date`, `game_id`, `stage_type_id`, `status`, `user_id`, `image`, `teams`, `created_at`, `updated_at`) VALUES
(1, 'asdasdads', 'asdasdadsad', '2025-05-07', '2025-05-08', 1, 1, 'approved', 6, NULL, NULL, '2025-05-06 07:17:12', '2025-05-06 07:17:26');

-- --------------------------------------------------------

--
-- Структура таблицы `tournament_teams`
--

CREATE TABLE `tournament_teams` (
  `id` bigint UNSIGNED NOT NULL,
  `tournament_id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tournament_teams`
--

INSERT INTO `tournament_teams` (`id`, `tournament_id`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(2, 1, 6, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(3, 1, 8, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(4, 4, 6, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(5, 4, 9, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(6, 4, 11, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(7, 2, 1, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(8, 2, 4, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(10, 5, 5, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(11, 5, 8, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(12, 5, 10, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(13, 3, 2, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(14, 3, 10, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(15, 3, 11, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(16, 6, 9, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(17, 6, 10, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(18, 6, 11, '2025-05-06 07:16:13', '2025-05-06 07:16:13');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL DEFAULT '4',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `avatar`, `api_token`, `refresh_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Админ 1', 'admin1@example.com', NULL, '$2y$12$oPuyTt5wAk54uTrG5BNUKeMqbL3zhGduzfxNVElpUeOxfFweWc69y', 1, NULL, 'iY6SYAEUi0buqFTE4Vm2CLQWzzS6eTbV4pyNUttc97a80bb7', '904bd5ba14f87000354ea4449f825713c3dbfa5c49bf43657bf547145b4d4707', NULL, '2025-05-06 07:16:13', '2025-06-21 04:24:34'),
(2, 'User 2', 'admin2@example.com', NULL, '$2y$12$/Fw9cWUfsJJePXKVi0Vmr.59xio2rapTLSbbVGOv9NpLZSSsbSesS', 1, NULL, 'mQv9ShowfLnQDYvpXPAKQxaFIsk6VeC9KpyCUegAb9a54c8a', 'fc40de66c95c22107dfad219e1e988f20804e6e3e6c66847eb3d15fb745c2d2f', NULL, '2025-05-06 07:16:13', '2025-06-22 02:53:23'),
(3, 'User 3', 'editor@example.com', NULL, '$2y$12$9O3WVEpp8sSjGpfvyvGfrOeoLeEoguv0nMSEO1KNSUDCqlTxTQ2wO', 2, NULL, 'tBZMHkkFrVIsXMktS8JiLmiqxnhM8vr1kQ1PdLFZnb9TparjklMHfQl852w7', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(4, 'User 4', 'operator1@example.com', NULL, '$2y$12$MJXe/AxafADPmBx2k5cDtOEoe7AXN6tCLhSRQX284shaUJhrRFzkm', 3, NULL, 'aZsPijpJfQAH28CIojTTlCGaLzD6qTykglnu4jaomXuSlxQ7leg2G9BeAdKT', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(5, 'User 5', 'operator2@example.com', NULL, '$2y$12$Mj2phyzwn1DuLdmKF4rzMehzRctJX8czakKAYp.424fv9hFM4mFLS', 3, NULL, 'H49BY9UHoj4VRfDwO9FzbF8Qit6freYtvLvp6PphmTR9e5tXKOI8ZukDWRDo', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(6, 'User 6', 'user6@example.com', NULL, '$2y$12$eLUPKc23BLMvz.kSpgtCmO/.T3e5yoSM1JSrQBHLUHoxffLvb2Wjq', 4, NULL, 'KwOe90GAEZc5OWDSuiu2KvJCWJjRakotbQmgRj9K2f08f944', '5ae4c2486cbb31f99e646eb737cec4b11f74076d01c40ad16b148957afda546a', NULL, '2025-05-06 07:16:13', '2025-06-22 02:58:22'),
(7, 'User 7', 'user7@example.com', NULL, '$2y$12$lAE8EP6CY7t6U7FeMN2Lhuech/QuESo99Oh9j0lIJMJKbfQf3xMaG', 4, NULL, 'zBTeQTIBYP2ZUKLLBON0Eg5Lqfd4jW8ODQLnOCNLZ57j3EvPHvJI1ScXf6LX', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(8, 'User 8', 'user8@example.com', NULL, '$2y$12$7B0UTArs1TVQYPilB0HZkulZdSJR9QW3PJV8MUapT/sSztbR4MpZK', 4, NULL, 'DGFmzkW4DoJYY47796IWCLaOdXaojdygw6FcFNNrC1rar9n4UFQe3IgKfD8b', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(9, 'User 9', 'user9@example.com', NULL, '$2y$12$4VWQB0ZLByTAWfD2H4ARVe4utTphu3YXZG30lME6PBeek4PpX8rQy', 4, NULL, 'aY1uEfojSlEZFJSJvq5UripAmNd1Kvy0IRBzFn5z0nBFADZDpgMJlsvkeUxt', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(10, 'User 10', 'user10@example.com', NULL, '$2y$12$gkmPSTx/0XMXXaj4TjQ.gu2BCpjCusbP84Gi/VcJMF1YVCkd.UMKW', 4, NULL, 'aVM1OXZyYmH5mcJBxvNeqqSTpEppA8NMzqApCeLFh3rEREdBM0qlt8I01Hl4', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(11, 'User 11', 'user11@example.com', NULL, '$2y$12$JP1QsvtemwMydhq.PyCAku3ouHSZ.d.jEIgVwwmXRRdUg.cDlLRl6', 4, NULL, 'W7RXKV4TQQRZcrLZKRKpSqgUbJIqKALMoWrzzMttuYnYvNhKXQl8yWw2LSnl', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(12, 'User 12', 'user12@example.com', NULL, '$2y$12$Dpc6YVfCt/8aTVC/qx8C1.JU7bRZ1TrnWNNpGjeH9CTQiAKwk9aGm', 4, NULL, 's9lzQuWinsd6fWTTPjm7Em58RelVOnodS8MjJP8iM69T61mfurUSWlh6vRRl', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(13, 'User 13', 'user13@example.com', NULL, '$2y$12$dx6gO0sz.8iFfqZvTW3TQOaKZoeSqIi3O5Gj/yDVoBshZ8qP63SCO', 4, NULL, 'TkyrOLdETf48ZgqxLg8VIbgEXwB1ec3vYaAk3kWIrBR7pedj81l232rsDazT', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(14, 'User 14', 'user14@example.com', NULL, '$2y$12$OP60fFOvrmNLDzyK4ayZvuWc1Uh6lCm10D4SQtncPF8PDqQ8j/OcO', 4, NULL, 'QOPEMgtiMBkHYyG245nq8hhUkySSuuOgdOt5rR9P426rHauBPw9O3pcbK2RR', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(15, 'User 15', 'user15@example.com', NULL, '$2y$12$SmYQMiNtBUeY7ZFTzgBY2ekWuVagj3wfaNG/CRN/7cRlchffDNwmm', 4, NULL, 'CSqbCRmXR23AlCe1kiEMOtCN9wJzLdJjh6OqWzcKmNLZFlGAPtczWiD7EbYA', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(16, 'User 16', 'user16@example.com', NULL, '$2y$12$UyrfmT8A4YEgw8euMWqH1eRjbXkTzcbS7KuNetd6SX9YlQA/u54K.', 4, NULL, 'vH8nIIESXoH6D8YxscVOmZN5uRtkVmp96kqIjLwQglCdj63jZnsZz0XBCuL9', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(17, 'User 17', 'user17@example.com', NULL, '$2y$12$iCjxMMSPEYdVGKUeZYpy0.I9zV.F8IylxDUGMyRUQ1aHAlvRS6SFi', 4, NULL, 'vK6b55epKAcaWwKcAdL9MmRjX8W82nYUtlDT2CxBAG10n01KykhARwOTXcPR', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(18, 'User 18', 'user18@example.com', NULL, '$2y$12$1c0XY/NCDmEujm53/ZWC1.uIM4.32dYiUvnb6R14NePD1vKMJe2Dm', 4, NULL, 'cvTISfz6aMFWsGpQyqQp9qsFP4itlLn4JhmjUpQ6RrVurRfd9z8PJAbt25rF', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(19, 'User 19', 'user19@example.com', NULL, '$2y$12$PbIQlXumnOex0099qx5BiupvU2f1T1/zBfuiJ5qGOgWRpal8ONgQa', 4, NULL, 'GrzcbYxQ636Jwu4m4MU4TSHc4qCtY4SKOl9CrR40FNdHpd3dcN1nuDGEdfST', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(20, 'User 20', 'user20@example.com', NULL, '$2y$12$nLBg0Ec35KHvjrY6l2sqGuwcA2pVm.0YZbKfYiznH3h8jUjl78P9K', 4, NULL, 'QZLxoTnnuxQxW7pL6gC1g7X490K04EXeuojwOqVS3jldaWNmqiaVKqYNYy7L', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(21, 'User 21', 'user21@example.com', NULL, '$2y$12$Y4PhvkKwhkjL21HYDXTEcueHoqasZcNbQeopG0ajs1.ZUaUWnk9ki', 4, NULL, 'Daola4yspog5wSGG8aXZyj1zVWKXTlOZHP6Y6fBLcwj1zSeEQ1YuK706iApP', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(22, 'User 22', 'user22@example.com', NULL, '$2y$12$020MJdID/3FZLg9IEOo7beTrvS1lhdmswSZUmDmSQ3FzCAPHZy/f2', 4, NULL, 'W1dsBPZzaXoW9oJstBForhPxayfTBdnx3wQTRNCTwcMPorwBWYaTHSU1BPfM', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(23, 'User 23', 'user23@example.com', NULL, '$2y$12$TSbswXrM6sO4dLSPPSvDXONa.vojUMP0vgJCEeKUtTqkWHZB.k.Hm', 4, NULL, 'rfneFbr38se7kHToGjH6Q5LBjRwOFCNknZKvEnxHWDxfrZYY7LimKwKDaHjB', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(24, 'User 24', 'user24@example.com', NULL, '$2y$12$9rftTHwqW8pULnAfXEZ37uNqF4h8cBHIo.4VsYo.yAAD75OnXcVw2', 4, NULL, 'AVlgUcLC7unJkr9hMDhVlrXqczgGOMLU2nt94PX3rBRRpz4c1Vx21BOevEEk', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(25, 'User 25', 'user25@example.com', NULL, '$2y$12$3qmBPVmP0.6YqcA3lNyITu.Cn.E4M8wzmCDc/nSfsSe9PDTQm864m', 4, NULL, 'PDmDs3bshTs3806IGAK06p8saeF6r0IgyYOq37WKD7c1X6Eylmu1Sw2LDMng', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(26, 'User 26', 'user26@example.com', NULL, '$2y$12$j.Rd.OWv1MOyUJAfXqdez.VVeKJaAkptzEW4V5ysy3pSGE65kHGNK', 4, NULL, 'f1FX01Y8794Eqz9pRtIH7ZropovMOEBMQInUHEim2MuSCIk3WnpHU0xWrmgD', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(27, 'User 27', 'user27@example.com', NULL, '$2y$12$SsYSS3ln08N/3VLQ.M7JjeCV5ZPNCPfvAtaDLl8gtEXftZoJFTZI.', 4, NULL, 'wn3RPvoNy7LUXtz2HORTj7HxqB3BCy91Yrb9hx8guzq9TLE9WBJzQkYxz3Bc', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(28, 'User 28', 'user28@example.com', NULL, '$2y$12$iwpsyBnz91N4fWMuKj50p.H2iaFeAILxeFF7jBmXOn/K6me75xlLS', 4, NULL, 'YVHxrlv3041W0YWTsR9ydjcxdUMXWy01j0w8N0neE9A3hC5fYyI2WQK0L3F2', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(29, 'User 29', 'user29@example.com', NULL, '$2y$12$96svwmcXW.7O/vQRHEpyN.b2u9jeoKTfomV/dTMyzaSFRdO5E6MgW', 4, NULL, 'IM7fghQ6w8sYJhzz0HmfSl5XwxzSbTxfgv7SzQv73OtRhvNnFw7Z9rqugPVO', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(30, 'User 30', 'user30@example.com', NULL, '$2y$12$IyVBXGGTM9Cws7g9eZMTrOHoegLifmtGK0kfJ8CboMW9f8u.XDNCy', 4, NULL, 'Tu484nNRRsLGjSJicuTx25v3iPoknyaKENwp2SKz8SIX3kNHMEAHEjIUin6u', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(31, 'User 31', 'user31@example.com', NULL, '$2y$12$US7.k3gzvyQl1LMHb8B9vOBY1m144QJ/1bOoJEE7V1ofhoEyqN5mS', 4, NULL, 'UkHbQOj1EgQK6NQIXoDCrO8cVP9RwBaYVHsWP9zGEOqOIVCzGfMHSUF500fb', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(32, 'User 32', 'user32@example.com', NULL, '$2y$12$/Xo1l/0zQ3DokoN869ynzOp0zkEDSfJGA4FrNk/sCKXAylIgXDzGS', 4, NULL, 'jhHUVzDDZhaAXiqE0QZ8XsPSd3reWMWLZvkDvqlVqUV9rWqdMvIBDOjNzkEQ', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(33, 'User 33', 'user33@example.com', NULL, '$2y$12$jRkY8RwqstC4hP/2qgha6eT17T962b8jsvjsxi5WLUt4wpnSFeeS.', 4, NULL, 'lTnrd0MHrMro3bNuhoFgN65angOWqqdiPEdcACT8BdlmRnnamDbww31HVagc', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(34, 'User 34', 'user34@example.com', NULL, '$2y$12$8.igDqKWFy4tYDxetsMSYOGr0PypBK/iDRrEpLsCZcHa10QidZesa', 4, NULL, 'qbil2Onzi6rvMoiBIk1u4NI7GG95O3pW4JbLr4vlOmMNf342hSQzz18HcRt3', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(35, 'User 35', 'user35@example.com', NULL, '$2y$12$F7HkmZ3y1oxLVhkC1J5kTeMRio3/YyGiWJHwncDJ5dwlPJDbq3oWC', 4, NULL, 'vmyVpY6LZzpldqJxlwLFDX1JFeirq7Dy0L6NTjLdKwX1EG5vV5ucJNp2Seoj', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13'),
(36, 'User 36', 'user36@example.com', NULL, '$2y$12$v/ParrOZiuLtpyNWUFnzZuPp.tr7w.fRD7.zdUAld.0.srLhqyCSS', 4, NULL, 'W8pNMdZ3ufgo5kGIWEzbwcRxAUfJ4RDYvJ9WojXxP3HnrdoOAmelduFzPgml', NULL, NULL, '2025-05-06 07:16:13', '2025-05-06 07:16:13');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bans_user_id_foreign` (`user_id`),
  ADD KEY `bans_banned_by_foreign` (`banned_by`);

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `game_matches`
--
ALTER TABLE `game_matches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_matches_tournament_id_foreign` (`tournament_id`),
  ADD KEY `game_matches_team_1_id_foreign` (`team_1_id`),
  ADD KEY `game_matches_team_2_id_foreign` (`team_2_id`),
  ADD KEY `game_matches_stage_id_foreign` (`stage_id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `match_participant`
--
ALTER TABLE `match_participant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `match_participant_game_match_id_foreign` (`game_match_id`),
  ADD KEY `match_participant_participant_id_foreign` (`participant_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_slug_unique` (`slug`);

--
-- Индексы таблицы `news_feeds`
--
ALTER TABLE `news_feeds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_feeds_slug_unique` (`slug`),
  ADD KEY `news_feeds_user_id_foreign` (`user_id`),
  ADD KEY `news_feeds_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `participants_user_id_tournament_id_unique` (`user_id`,`tournament_id`),
  ADD KEY `participants_team_id_foreign` (`team_id`),
  ADD KEY `participants_tournament_id_foreign` (`tournament_id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stages_stage_type_id_foreign` (`stage_type_id`);

--
-- Индексы таблицы `stage_types`
--
ALTER TABLE `stage_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teams_name_unique` (`name`),
  ADD KEY `teams_captain_id_foreign` (`captain_id`);

--
-- Индексы таблицы `team_invites`
--
ALTER TABLE `team_invites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_invites_team_id_foreign` (`team_id`),
  ADD KEY `team_invites_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `team_tournament_requests`
--
ALTER TABLE `team_tournament_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_tournament_requests_team_id_tournament_id_unique` (`team_id`,`tournament_id`),
  ADD KEY `team_tournament_requests_tournament_id_foreign` (`tournament_id`);

--
-- Индексы таблицы `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_user_team_id_foreign` (`team_id`),
  ADD KEY `team_user_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `tournaments`
--
ALTER TABLE `tournaments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tournaments_user_id_foreign` (`user_id`),
  ADD KEY `tournaments_game_id_foreign` (`game_id`),
  ADD KEY `tournaments_stage_id_foreign` (`stage_id`);

--
-- Индексы таблицы `tournament_baskets`
--
ALTER TABLE `tournament_baskets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tournament_baskets_tournament_id_foreign` (`tournament_id`),
  ADD KEY `tournament_baskets_game_match_id_foreign` (`game_match_id`);

--
-- Индексы таблицы `tournament_requests`
--
ALTER TABLE `tournament_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tournament_requests_game_id_foreign` (`game_id`),
  ADD KEY `tournament_requests_stage_type_id_foreign` (`stage_type_id`),
  ADD KEY `tournament_requests_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `tournament_teams`
--
ALTER TABLE `tournament_teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tournament_teams_tournament_id_foreign` (`tournament_id`),
  ADD KEY `tournament_teams_team_id_foreign` (`team_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bans`
--
ALTER TABLE `bans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `game_matches`
--
ALTER TABLE `game_matches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `match_participant`
--
ALTER TABLE `match_participant`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `news_feeds`
--
ALTER TABLE `news_feeds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `participants`
--
ALTER TABLE `participants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `stage_types`
--
ALTER TABLE `stage_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `team_invites`
--
ALTER TABLE `team_invites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `team_tournament_requests`
--
ALTER TABLE `team_tournament_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `tournaments`
--
ALTER TABLE `tournaments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `tournament_baskets`
--
ALTER TABLE `tournament_baskets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `tournament_requests`
--
ALTER TABLE `tournament_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tournament_teams`
--
ALTER TABLE `tournament_teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `bans`
--
ALTER TABLE `bans`
  ADD CONSTRAINT `bans_banned_by_foreign` FOREIGN KEY (`banned_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `game_matches`
--
ALTER TABLE `game_matches`
  ADD CONSTRAINT `game_matches_stage_id_foreign` FOREIGN KEY (`stage_id`) REFERENCES `stages` (`id`),
  ADD CONSTRAINT `game_matches_team_1_id_foreign` FOREIGN KEY (`team_1_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `game_matches_team_2_id_foreign` FOREIGN KEY (`team_2_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `game_matches_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `match_participant`
--
ALTER TABLE `match_participant`
  ADD CONSTRAINT `match_participant_game_match_id_foreign` FOREIGN KEY (`game_match_id`) REFERENCES `game_matches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `match_participant_participant_id_foreign` FOREIGN KEY (`participant_id`) REFERENCES `participants` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `news_feeds`
--
ALTER TABLE `news_feeds`
  ADD CONSTRAINT `news_feeds_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `news_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `news_feeds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `participants_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `participants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `stages`
--
ALTER TABLE `stages`
  ADD CONSTRAINT `stages_stage_type_id_foreign` FOREIGN KEY (`stage_type_id`) REFERENCES `stage_types` (`id`);

--
-- Ограничения внешнего ключа таблицы `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_captain_id_foreign` FOREIGN KEY (`captain_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `team_invites`
--
ALTER TABLE `team_invites`
  ADD CONSTRAINT `team_invites_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `team_invites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `team_tournament_requests`
--
ALTER TABLE `team_tournament_requests`
  ADD CONSTRAINT `team_tournament_requests_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_tournament_requests_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `team_user`
--
ALTER TABLE `team_user`
  ADD CONSTRAINT `team_user_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tournaments`
--
ALTER TABLE `tournaments`
  ADD CONSTRAINT `tournaments_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tournaments_stage_id_foreign` FOREIGN KEY (`stage_id`) REFERENCES `stages` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tournaments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tournament_baskets`
--
ALTER TABLE `tournament_baskets`
  ADD CONSTRAINT `tournament_baskets_game_match_id_foreign` FOREIGN KEY (`game_match_id`) REFERENCES `game_matches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tournament_baskets_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tournament_requests`
--
ALTER TABLE `tournament_requests`
  ADD CONSTRAINT `tournament_requests_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`),
  ADD CONSTRAINT `tournament_requests_stage_type_id_foreign` FOREIGN KEY (`stage_type_id`) REFERENCES `stage_types` (`id`),
  ADD CONSTRAINT `tournament_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `tournament_teams`
--
ALTER TABLE `tournament_teams`
  ADD CONSTRAINT `tournament_teams_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tournament_teams_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
