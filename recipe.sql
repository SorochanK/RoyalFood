-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 01 2018 г., 14:28
-- Версия сервера: 5.7.19
-- Версия PHP: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `recipe`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `category_id` int(11) UNSIGNED NOT NULL,
  `nation_id` int(11) UNSIGNED NOT NULL DEFAULT '5',
  `season_id` int(10) UNSIGNED NOT NULL DEFAULT '5',
  `main_img` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'home_prague.jpg',
  `short_desc` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suitable_drinks` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `complexity` char(10) CHARACTER SET utf8 NOT NULL DEFAULT 'Легко',
  `serves` int(3) UNSIGNED NOT NULL DEFAULT '2',
  `likes` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `views` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `on_moderation` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `category_id`, `nation_id`, `season_id`, `main_img`, `short_desc`, `name`, `alias`, `text`, `ingredients`, `suitable_drinks`, `complexity`, `serves`, `likes`, `views`, `on_moderation`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'borsh.png', 'Lorem ipsum dolor sit amet, pro aeque postea cu, vix alii ipsum ex. Ut sit rationibus disputationi. Ex oratio aperiam apeirian nam. Eu timeam sanctus sea, pro te vidisse docendi scaevola.', 'Борщ', 'borsh', '<a href=\'{{asset()}}\'>This is a link</a>\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 'морковка 100;лук 50;свекла 2шт', 'Легкие напитки;молоко;Вино', 'Средняя', 2, 35, 217, 1, NULL, '2017-12-30 10:21:25'),
(2, 1, 2, 4, 4, 'third.jpg', 'Новый Lorem ipsum dolor sit amet, pro aeque postea cu, vix alii ipsum ex. Ut sit rationibus disputationi. Ex oratio aperiam apeirian nam. Eu timeam sanctus sea, pro te vidisse docendi scaevola.', 'новый новый Салат', 'novyy-novyy-salat', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet consectetur adipiscing elit. Iaculis nunc sed augue lacus viverra. Morbi quis commodo odio aenean sed. Arcu ac tortor dignissim convallis. Nisi vitae suscipit tellus mauris a diam. Ipsum suspendisse ultrices gravida dictum fusce ut placerat orci nulla. Enim diam vulputate ut pharetra sit amet aliquam id. Blandit libero volutpat sed cras. In iaculis nunc sed augue lacus viverra vitae congue eu. Neque egestas congue quisque egestas diam in arcu.</p>\r\n\r\n<p>Cras tincidunt lobortis feugiat vivamus. Egestas erat imperdiet sed euismod nisi porta lorem mollis aliquam. Purus ut faucibus pulvinar elementum integer. Sem viverra aliquet eget sit amet tellus.</p>\r\n\r\n<p>Malesuada nunc vel risus commodo viverra maecenas. Elementum eu facilisis sed odio morbi. Sed lectus vestibulum mattis ullamcorper velit. Sociis natoque penatibus et magnis. Massa placerat duis ultricies lacus sed.</p>\r\n\r\n<p>Tristique nulla aliquet enim tortor at auctor. Sagittis id consectetur purus ut faucibus. Amet commodo nulla facilisi nullam. In cursus turpis massa tincidunt dui ut ornare lectus sit. Risus quis varius quam quisque id. Quis imperdiet massa tincidunt nunc pulvinar sapien. Viverra justo nec ultrices dui sapien eget mi proin. Dictum varius duis at consectetur lorem. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor.</p>', 'Редис 0.5г ;Сосис 23г', 'Легкие напитки', 'Легко', 1, 2, 40, 0, NULL, '2018-01-01 10:12:52'),
(3, 1, 4, 2, 3, 'home_prague.jpg', 'Lorem ipsum dolor sit amet, pro aeque postea cu, vix alii ipsum ex. Ut sit rationibus disputationi. Ex oratio aperiam apeirian nam. Eu timeam sanctus sea, pro te vidisse docendi scaevola.', 'Запеканка', 'zapekanka', '<p>текст</p> о Запеканке', 'творог 20г\r\nсыр 50г\r\nяйца 2шт', 'Легкие напитки', 'Средняя', 2, 8, 13, 1, NULL, '2017-12-17 20:06:58'),
(5, 1, 1, 2, 4, 'home_prague.jpg', 'Lorem ipsum dolor sit amet, pro aeque postea cu, vix alii ipsum ex. Ut sit rationibus disputationi. Ex oratio aperiam apeirian nam. Eu timeam sanctus sea, pro te vidisse docendi scaevola.', 'Блины', 'Blini', 'Это текст о блинах', 'яйца 20шт\r\nмука 100г', 'Легкие напитки', 'Тяжело', 2, 4, 9, 1, NULL, '2017-12-29 14:36:42'),
(6, 1, 1, 5, 5, 'second.jpg', 'Lorem ipsum – псевдо-латинский текст, который используется для веб дизайна, типографии, оборудования, и распечатки вместо английского текста.', 'Греческий салат', 'grecheski_salat', '<p>Lorem ipsum dolor sit amet, nulla offendit duo ex, pri clita soluta eligendi cu. Cu euismod suscipit pri, te unum omnesque eos. Quo id dolores pertinacia, mei labitur nostrum gloriatur ex. Natum similique gloriatur et ius. Ut duo reque sententiae, facilisis constituto nec eu.</p>\r\n\r\n<p>Audire laoreet recteque mea eu, cum cu ridens fierent consectetuer. Eam an choro utinam iisque, eu mei facilisi senserit, at mei mucius dissentiunt. Ei ius sonet latine, ipsum legimus voluptatibus eos ei. Vis id quem graeco corpora, aperiam atomorum ex eos. Per vidisse elaboraret ad, id duo dolor facete alterum. Eam saperet propriae ex, usu exerci necessitatibus ne. An sit docendi adipiscing, et fugit ornatus eum.</p>\r\n\r\n<p>In veri illum definitionem usu. At eros saepe pri. Voluptua fabellas postulant cu est. Et mucius fierent consequuntur cum. Duo cu agam decore malorum, blandit abhorreant contentiones at eum. Sea inani ornatus te, qui munere corpora persequeris ad, at accusamus definiebas vim.</p>', 'Творог 200г;Сахар 2 ст л;Мука 2 ст л;Щипотка Соли', 'Чай;Какао', 'Тяжело', 3, 2, 9, 0, '2017-12-26 19:25:35', '2018-01-01 09:47:42'),
(8, 1, 1, 4, 1, 'home_prague.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Тоже новый борщец', 'tozhe-novyy-borschec', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Lorem ipsum;dolor sit amet;consectetur;adipiscing elit;', NULL, 'Средняя', 1, 1, 18, 0, '2017-12-29 15:52:57', '2017-12-30 10:21:41'),
(9, 24, 1, 4, 1, 'home_prague.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.', 'суп от костика', 'sup-ot-kostika', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum.</p>\r\n\r\n<p>Et netus et malesuada fames ac turpis egestas integer eget. Vitae tempus quam pellentesque nec nam aliquam sem. Magna sit amet purus gravida quis blandit. Vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci. Platea dictumst quisque sagittis purus. Pretium viverra suspendisse potenti nullam ac tortor vitae purus. Lacus sed turpis tincidunt id aliquet risus feugiat.</p>\r\n\r\n<p>Erat velit scelerisque in dictum non consectetur a.</p>\r\n\r\n<p>Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Elementum integer enim neque volutpat ac tincidunt vitae semper. At auctor urna nunc id cursus metus aliquam eleifend. <em>Mauris augue neque gravida in fermentum et sollicitudin ac.</em> Quam viverra orci sagittis eu volutpat. Etiam non quam lacus suspendisse faucibus interdum posuere lorem ipsum.</p>\r\n\r\n<p>Rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. Odio ut enim blandit volutpat. Lectus arcu bibendum at varius vel pharetra vel turpis nunc. Viverra ipsum nunc aliquet bibendum enim. Nisl rhoncus mattis rhoncus urna neque. Purus faucibus ornare suspendisse sed nisi lacus sed viverra tellus.&nbsp;</p>', 'Lorem ipsum;dolor sit amet;consectetur;adipiscing;elit;sed;do;eiusmod;tempor;incididunt;ut;bore et dolore;magna aliqua;Velit egesta;du;id;ornare.', NULL, 'Легко', 1, 2, 4, 0, '2017-12-31 12:18:59', '2017-12-31 12:56:14'),
(10, 24, 5, 6, 6, 'home_prague.jpg', '.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem', 'суши от костика', 'sushi-ot-kostika', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare.</p>', 'лук;ive;qweq;qweqw;zxcvx;bvbn;', 'саке', 'Тяжело', 3, 5, 7, 0, '2017-12-31 12:21:07', '2017-12-31 14:20:39'),
(11, 24, 2, 3, 3, 'pic.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquaбб.', 'пользовательский борщ', 'pol-zovatel-skiy-borsch', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Lorem ipsum dolor sit amet;consectetur adipiscing elit;sed do;eiusmod tempor incididunt;', NULL, 'Средняя', 2, 0, 1, 1, '2018-01-01 09:40:03', '2018-01-01 09:40:40');

-- --------------------------------------------------------

--
-- Структура таблицы `article_product`
--

CREATE TABLE `article_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `article_product`
--

INSERT INTO `article_product` (`id`, `article_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Рецепты от бабушки ', 'grandma_recipe', NULL, '2017-12-28 07:28:27'),
(2, 'Закуски', 'snacks', NULL, '2017-12-28 07:45:56'),
(3, 'Салаты', 'salat', NULL, NULL),
(4, 'Завтраки', 'Breakfast', NULL, NULL),
(5, 'суши', 'sushi', '2017-12-26 18:40:13', '2017-12-26 18:40:13');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `url`, `parent`, `created_at`, `updated_at`) VALUES
(1, 'Главная', 'http://rec.loc', 0, NULL, NULL),
(2, 'Сезонные', 'http://rec.loc/map/seasons', 0, NULL, NULL),
(3, 'Bce рецепты', 'http://rec.loc/map', 0, NULL, NULL),
(4, 'Добавить рецепт', 'http://rec.loc/add_article', 0, NULL, NULL),
(5, 'Личный кабинет', 'http://rec.loc/private_area', 0, NULL, NULL),
(7, 'Личный кабинет', 'http://rec.loc/private_area', 1, NULL, NULL),
(8, 'Главная', 'http://rec.loc', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_12_08_145346_Menus', 1),
(4, '2017_12_08_150101_articles', 1),
(5, '2017_12_08_151223_comments', 1),
(6, '2017_12_08_183733_categories', 1),
(7, '2017_12_08_183921_nations', 1),
(8, '2017_12_08_183956_seasons', 1),
(9, '2017_12_08_191714_make_products', 2),
(10, '2017_12_10_141635_fix_articles', 3),
(11, '2017_12_10_142411_fix_articles', 4),
(12, '2017_12_10_150253_article_product', 5),
(13, '2017_12_10_151214_fix_art', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `nations`
--

CREATE TABLE `nations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `nations`
--

INSERT INTO `nations` (`id`, `name`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Европейксая', 'europe', NULL, '2017-12-28 07:45:56'),
(2, 'Русская', 'russian', NULL, NULL),
(3, 'Азиатская', 'asian', NULL, NULL),
(4, 'Украинская', 'ukranian', NULL, NULL),
(5, 'Интернациональная', 'International', NULL, '2017-12-26 19:25:35'),
(6, 'японская', 'yaponskaya', '2017-12-26 18:57:41', '2017-12-26 18:57:41');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Морковка ', 'Carrot', NULL, NULL),
(2, 'Картошка', 'Potato', NULL, NULL),
(3, 'Огурец', 'cucumber', NULL, NULL),
(4, 'Ананас', 'pineapple', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `seasons`
--

CREATE TABLE `seasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `seasons`
--

INSERT INTO `seasons` (`id`, `name`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Зима', 'winter', NULL, NULL),
(2, 'Лето', 'summer', NULL, NULL),
(3, 'Весна', 'spring', NULL, '2017-12-28 07:45:56'),
(4, 'Осень', 'fall', NULL, NULL),
(5, 'Демисезонный', 'demiseason', NULL, '2017-12-26 19:25:35'),
(6, 'новый год', 'novyy-god', '2017-12-26 19:09:57', '2017-12-26 19:09:57');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'user_default.png',
  `sex` int(1) DEFAULT NULL,
  `about` text CHARACTER SET utf8,
  `is_admin` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`, `sex`, `about`, `is_admin`) VALUES
(1, 'peter', 'pet@mail.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, 'tmp', NULL, NULL, 0),
(18, 'log2', 'mail1@mal.com', '$2y$10$V0kh/Sm14bk6lCqV//jdpOhzSx8ZMYlKR2CnC7wgacbuKdfRh1.aK', NULL, '2017-12-21 13:18:49', '2017-12-21 13:18:49', 'tmp', NULL, NULL, 0),
(24, 'kistik23', 'kistik23@gmail.com', '$2y$10$BpzdXHHj527bxIMBMcGeNeB0od.XV6stnYfHxIq9hYQY3hyvcyXU2', 'nXk2qoSwwPOg0ecEfFAs1JdxsWI8tg8QOoc65dKa8X49ijb3UeGHNOS3WQio', '2017-12-30 11:38:53', '2018-01-01 09:21:36', 'IMG_4137.jpg', 1, NULL, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`alias`),
  ADD KEY `articles_category_id_foreign` (`category_id`),
  ADD KEY `articles_nation_id_foreign` (`nation_id`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_season_id_foreign` (`season_id`);

--
-- Индексы таблицы `article_product`
--
ALTER TABLE `article_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_product_article_id_foreign` (`article_id`),
  ADD KEY `article_product_product_id_foreign` (`product_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`alias`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `nations`
--
ALTER TABLE `nations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`alias`);

--
-- Индексы таблицы `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `article_product`
--
ALTER TABLE `article_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `nations`
--
ALTER TABLE `nations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_nation_id_foreign` FOREIGN KEY (`nation_id`) REFERENCES `nations` (`id`),
  ADD CONSTRAINT `articles_season_id_foreign` FOREIGN KEY (`season_id`) REFERENCES `seasons` (`id`),
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `article_product`
--
ALTER TABLE `article_product`
  ADD CONSTRAINT `article_product_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `article_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
