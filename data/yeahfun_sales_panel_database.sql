-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-07-03 00:48:08
-- 伺服器版本： 8.0.36
-- PHP 版本： 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project`;

-- --------------------------------------------------------

--
-- 資料表結構 `achievements`
--

CREATE TABLE `achievements` (
  `id` int NOT NULL,
  `rule` int NOT NULL,
  `img` int NOT NULL,
  `level` int NOT NULL,
  `customer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`id`, `email`, `nickname`, `password`) VALUES
(1, 'admin', 'admin', '$2y$10$eiLwtzA9dwAS/tMwzPQtbuIlAG.4fsxA3dXy.qwv8ibqei7SJdUTe');

-- --------------------------------------------------------

--
-- 資料表結構 `blog`
--

CREATE TABLE `blog` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `blog_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `blog`
--

INSERT INTO `blog` (`id`, `title`, `author`, `blog_tag`, `content`, `create_at`) VALUES
(1, '1.1', '1', '1', '1', '2024-05-09 10:14:07'),
(2, '我的推廣文1', '京樺', '洗澡', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於洗澡\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(3, '我的推廣文2', '豊鑫', '防蛇', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於防蛇\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(4, '我的推廣文3', '豊鑫', '篝火晚會', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於篝火晚會\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(5, '我的推廣文4', '豊鑫', '天體露營', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於天體露營\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(6, '我的推廣文5', '于卉', '搭建帳篷', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於搭建帳篷\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(7, '我的推廣文6', '于卉', '防熊', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於防熊\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(8, '我的推廣文7', '昱穎', '驅蟲', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於驅蟲\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(9, '我的推廣文8', '家浚', '橡皮筏', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於橡皮筏\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(10, '我的推廣文9', '為煬', '防蛇', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於防蛇\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(11, '我的推廣文10', '豊鑫', '小木屋', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於小木屋\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(12, '我的推廣文11', '豊鑫', '防蛇', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於防蛇\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(13, '我的推廣文12', '豊鑫', '浮淺', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於浮淺\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(14, '我的推廣文13', '京樺', '浮淺', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於浮淺\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(15, '我的推廣文14', '為煬', '合歡山露營區', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於合歡山露營區\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(16, '我的推廣文15', '于卉', '驅蟲', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於驅蟲\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(17, '我的推廣文16', '京樺', '搭建帳篷', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於搭建帳篷\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(18, '我的推廣文17', '家浚', '防熊', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於防熊\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(19, '我的推廣文18', '為煬', '天體露營', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於天體露營\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(20, '我的推廣文19', '為煬', '浮淺', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於浮淺\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2024-05-09 16:23:17'),
(21, '我的推廣文201', '于卉', '防蛇', '<div>\r\n    <hr>\r\n    <p>\r\n    這是一篇關於防蛇\r\n    的文章\r\n    有一天，我突然發現了一個令人興奮的露營博客。這個部落格充滿了關於大自然的美麗描述，以及露營生活中的種種冒險故事。在這個博客中，我發現了許多有關露營地點、戶外裝備和野外生存技巧的寶貴資訊。每一篇文章都像一場探險，帶領我穿越森林、越過山川，去探索大自然的奇妙之處。\r\n\r\n我迫不及待地分享了這個博客的連結給我的朋友們，因為我相信他們也會被這些精彩的故事所吸引。在這個露營部落格的世界裡，每一篇文章都是獨特的冒險，每一次閱讀都是心靈的洗禮。我期待在未來的日子裡，繼續跟隨這個博客，與大自然親密接觸，感受生活的美好。\r\n\r\n這個露營博客成為了我生活中的一部分，它不僅僅是一個網站，更是我靈魂的家園，讓我在城市喧囂中找到了片刻的寧靜和慰藉。我感謝這個博客的創作者，因為他們用文字和圖片，為我打開了通往自然世界的大門，讓我體驗了生活的真諦。</p><hr>\r\n    </div>', '2025-05-09 16:23:17'),
(23, '我的標題30', '豊鑫', '豔遇露營', '豔遇露營', '2024-05-10 10:23:15');

-- --------------------------------------------------------

--
-- 資料表結構 `blog_img`
--

CREATE TABLE `blog_img` (
  `id` int NOT NULL,
  `img_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '[]',
  `blog_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `blog_img`
--

INSERT INTO `blog_img` (`id`, `img_name`, `blog_id`) VALUES
(2, '[\"p70320240509162609.jpg\",\"d974420240509162609.jpg\",\"e263520240509162621.png\",\"w383820240509162621.png\",\"k688020240509163816.jpg\"]', 2),
(3, '[\"d265220240509171051.png\"]', 3);

-- --------------------------------------------------------

--
-- 資料表結構 `booking_dates`
--

CREATE TABLE `booking_dates` (
  `booking_dates_id` int NOT NULL,
  `stores_id` int NOT NULL,
  `date` date NOT NULL,
  `reservable` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `store_id` int NOT NULL,
  `comment_star` tinyint NOT NULL,
  `created_at` datetime NOT NULL,
  `comment_content` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `comment`
--

INSERT INTO `comment` (`id`, `customer_id`, `store_id`, `comment_star`, `created_at`, `comment_content`) VALUES
(2, 2, 2, 98, '2024-05-09 14:43:07', '蚊子有點多，請攜帶防 文藝預防登革熱'),
(3, 3, 3, 65, '2024-05-09 14:43:07', '螢火蟲很漂亮。'),
(4, 4, 4, 98, '2024-05-09 14:44:52', '吉一卡哇很可愛'),
(6, 23, 21, 4, '2024-07-02 23:00:57', '蚊子很可愛。'),
(7, 23, 21, 4, '2024-07-02 23:00:57', '蚊子很可愛。'),
(8, 23, 21, 4, '2024-07-02 23:00:57', '蚊子很可愛。'),
(9, 23, 21, 4, '2024-07-02 23:00:57', '蚊子很可愛。'),
(10, 23, 21, 4, '2024-07-02 23:00:57', '蚊子很可愛。'),
(11, 23, 21, 4, '2024-07-02 23:00:57', '蚊子很可愛。'),
(12, 23, 21, 4, '2024-07-02 23:00:57', '蚊子很可愛。'),
(13, 23, 21, 4, '2024-07-02 23:00:57', '蚊子很可愛。');

-- --------------------------------------------------------

--
-- 資料表結構 `coupon`
--

CREATE TABLE `coupon` (
  `id` int NOT NULL,
  `owners_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hash` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `coupon_off` float NOT NULL DEFAULT '0.9',
  `time_start` date NOT NULL,
  `time_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `coupon`
--

INSERT INTO `coupon` (`id`, `owners_id`, `name`, `hash`, `coupon_off`, `time_start`, `time_end`) VALUES
(1, 17, '母親節優惠', '', 0.9, '2024-05-10', '2024-05-11'),
(2, 25, '端午節優惠', '', 0.7, '2024-06-14', '2024-06-17'),
(3, 41, '中秋節優惠', '', 0.7, '2024-09-19', '2024-09-26'),
(4, 17, '母親節優惠', '', 0.9, '2024-05-10', '2024-05-11'),
(5, 17, '母親節優惠', '', 0.9, '2024-05-10', '2024-05-11'),
(6, 17, '母親節優惠', '', 0.9, '2024-05-10', '2024-05-11'),
(7, 17, '母親節優惠', '', 0.9, '2024-05-10', '2024-05-11'),
(8, 17, '母親節優惠', '', 0.9, '2024-05-10', '2024-05-11'),
(9, 10, '中秋節優惠', '', 0.7, '2024-09-07', '2024-09-14'),
(10, 10, '中秋節優惠', '', 0.7, '2024-09-07', '2024-09-14'),
(11, 10, '中秋節優惠', '', 0.7, '2024-09-07', '2024-09-14'),
(12, 10, '中秋節優惠', '', 0.7, '2024-09-07', '2024-09-14'),
(13, 10, '中秋節優惠', '', 0.7, '2024-09-07', '2024-09-14'),
(14, 10, '中秋節優惠', '', 0.7, '2024-09-07', '2024-09-14'),
(15, 10, '中秋節優惠', '', 0.7, '2024-09-07', '2024-09-14'),
(16, 10, '中秋節優惠', '', 0.7, '2024-09-07', '2024-09-14');

-- --------------------------------------------------------

--
-- 資料表結構 `customers`
--

CREATE TABLE `customers` (
  `id` int NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `introduction` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_card` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `customers`
--

INSERT INTO `customers` (`id`, `email`, `password`, `name`, `phone`, `gender`, `birthday`, `address`, `introduction`, `id_card`, `created_at`) VALUES
(1, 'mail93663@test.com', '$2y$10$uglxahhRqui2eIRYtbzOV.9B8MFWeSPpYefgBpJYBFUpfY2YyJwv.', '韓佳穎', '0918778201', 'male', '1993-07-11', '澎湖縣', 'Hi', 'E785416832', '2024-05-09 10:33:41'),
(2, 'mail25489@test.com', '$2y$10$v/YuF95VIbuHaP4vWlihgOn.nYWdIJCAqTSDd8/U9cywrUmcDrS9q', '陳雅筑', '0918753190', 'female', '1987-02-27', '澎湖縣', 'Hi', 'M331932846', '2024-05-09 10:33:41'),
(3, 'mail54404@test.com', '$2y$10$ARa6Ifi/xe96z9UBJ7Eduu9Wylbj2oWXhzBHZIIN8Ogz/FG2.uflG', '沈柏翰', '0918816512', 'other', '1995-05-27', '臺南市', 'Hi', 'U182253827', '2024-05-09 10:33:41'),
(4, 'mail74412@test.com', '$2y$10$qqRos2svT1FUPBVz6SPU2O.i.I0d9a.v.soVfh0oQ6Jf14Vk4hFuq', '曹雅婷', '0918972049', 'female', '1997-03-06', '新竹市', 'Hi', 'J810896890', '2024-05-09 10:33:41'),
(5, 'mail53058@test.com', '$2y$10$0H953vY551i7eOxq.LTyFOwr0qBvySmZBS/AHTQ.AiaUwZYclWZOO', '劉家瑋', '0918533573', 'female', '1985-07-04', '苗栗縣', 'Hi', 'K898507340', '2024-05-09 10:33:41'),
(6, 'mail37730@test.com', '$2y$10$o4U.bkbCAZL9XanPIFUxceX19iuh31isCTQ9kusyIszRUJXEIWqwu', '何冠廷', '0918694065', 'other', '1985-04-10', '臺北市', 'Hi', 'G196093476', '2024-05-09 10:33:41'),
(7, 'mail51877@test.com', '$2y$10$V6DPpHIymuBhvnRL1SInZu7jP.FHDSZI9jgmrPgFVY2MAfdBAJ8XW', '李怡婷', '0918629412', 'other', '1999-07-15', '苗栗縣', 'Hi', 'T648199252', '2024-05-09 10:33:41'),
(8, 'mail69467@test.com', '$2y$10$29hDF2XLq0JZL7Q6qOUfr.TMD7YlA/q2tksJlQTJ9dMR8WScFRJ1.', '林宜庭', '0918724052', 'other', '1987-12-21', '嘉義縣', 'Hi', 'Y671692823', '2024-05-09 10:33:41'),
(9, 'mail45654@test.com', '$2y$10$Quy0PmGhIiKq2mYcFlAPzOe2we9jUXAKYypCxzS55OVwVcwivJHWO', '鄧怡婷', '0918828754', 'male', '1985-04-24', '新竹市', 'Hi', 'X391954011', '2024-05-09 10:33:41'),
(10, 'mail97349@test.com', '$2y$10$SBFviIvAd8iq4pZL1T6Wxe7qBvweP3Gpkz4FRWgqpikrw18GivSyy', '周承翰', '0918964325', 'female', '1993-09-23', '南投縣', 'Hi', 'R562433962', '2024-05-09 10:33:41'),
(11, 'mail80770@test.com', '$2y$10$RxWPRPPhYf52x0mp5oDr.OlQePkV93QFwtREFmsFAqNWCjVOQICem', '梁怡婷', '0918710403', 'male', '1987-04-05', '新北市', 'Hi', 'E589145003', '2024-05-09 10:33:41'),
(12, 'mail71352@test.com', '$2y$10$5qqUnFugOkV5hTNqKkjfhOyZ47y.zpPefKrGii0LTk9ItJPKkzhrG', '傅冠廷', '0918564293', 'female', '1986-12-23', '彰化縣', 'Hi', 'O911898553', '2024-05-09 10:33:41'),
(13, 'mail92759@test.com', '$2y$10$H8m6OW4nqTytLM6ZUzY7ROdYja3dNazBeoSEhABwkgBFTftcXQbbS', '馬宗翰', '0918677408', 'other', '1991-09-27', '嘉義縣', 'Hi', 'W271786550', '2024-05-09 10:33:41'),
(14, 'mail11308@test.com', '$2y$10$FEOv.qoTSygsEhx/roBvie.tkPJaX2hR/sw111Sl1z7Z0AaQTNDuq', '趙怡婷', '0918582221', 'male', '1986-05-09', '臺南市', 'Hi', 'R993422937', '2024-05-09 10:33:41'),
(15, 'mail64018@test.com', '$2y$10$fri9zjmZPZ43YpgK.h8Npuc9wM7eNSq6CM1x5VhCkQThNel0iOR.2', '孫詩涵', '0918666351', 'other', '1990-05-06', '澎湖縣', 'Hi', 'G797048020', '2024-05-09 10:33:41'),
(16, 'mail49750@test.com', '$2y$10$er4.okbSuCT0nxUYb00HLO2lBJxo8uI0jCz6mGWOGS.y4/I0ST/3m', '何怡君', '0918626188', 'other', '1987-11-20', '新北市', 'Hi', 'T878384201', '2024-05-09 10:33:42'),
(17, 'mail97908@test.com', '$2y$10$hLqWPsg8a07RfBr4msvDPO1FW6w7DR/2guK1j1ioCpRvH/oikTqny', '袁冠宇', '0918225128', 'other', '1994-05-03', '南投縣', 'Hi', 'H783534603', '2024-05-09 10:33:42'),
(18, 'mail20924@test.com', '$2y$10$xr.pdBnauPjhfOZXwaD.iul2KVxgqWeQzDh4MoP2t0kCcmLn1wx1W', '孫冠宇', '0918986962', 'other', '1994-06-18', '彰化縣', 'Hi', 'D479843678', '2024-05-09 10:33:42'),
(19, 'mail76430@test.com', '$2y$10$rLV5XyrOAW9Dbn4926opQOUOnVdZ9mK1A/Fcg6YPhRBffAiOkk80a', '唐佳穎', '0918607401', 'other', '1988-06-15', '南投縣', 'Hi', 'Z761637063', '2024-05-09 10:33:42'),
(20, 'mail25229@test.com', '$2y$10$/BaDz1uCRA1GGon3fzqb/OLw9uzO1ostocQFx79gmqPtj7fQWMdnK', '程宇軒', '0918296451', 'male', '1990-07-18', '臺南市', 'Hi', 'L165236028', '2024-05-09 10:33:42'),
(21, 'mail30683@test.com', '$2y$10$CPlwufJQwBo84eI4hAq0Uu/6Jpkpp0Vnyc/RbYN5f3o2X6OXL71xi', '徐冠廷', '0918351028', 'male', '1989-03-15', '臺南市', 'Hi', 'S983139461', '2024-05-09 10:33:42'),
(22, 'mail84280@test.com', '$2y$10$l1xNXW/wimvmRIX.h5eLP.2NsY6P32faWf//5f.FYauzDIZi.scxK', '曾郁婷', '0918665794', 'male', '1995-04-05', '新竹縣', 'Hi', 'I179376677', '2024-05-09 10:33:42'),
(23, 'mail84087@test.com', '$2y$10$ZqnDu4k4d3ZoKnTe7.L3Bu4BPJZZeAPSKGLN6.dQB7DAS56/Gu9vy', '於雅筑', '0918729323', 'female', '1998-03-10', '桃園市', 'Hi', 'L426819697', '2024-05-09 10:33:42'),
(24, 'mail32724@test.com', '$2y$10$NAv4GiLqoLsNSEbzMq2r.u.TNVHCrNbLdN6FDx/gLqO/E5gvbna/2', '張家豪', '0918437408', 'female', '1998-09-05', '基隆市', 'Hi', 'C636212233', '2024-05-09 10:33:42'),
(25, 'mail36656@test.com', '$2y$10$IGaAeOvjfEgYNfLYLlu7lOWyEsFnxCp9HgMzhxMIP9mUUZFXAHitK', '傅冠宇', '0918846050', 'female', '1995-08-05', '宜蘭縣', 'Hi', 'O796315221', '2024-05-09 10:33:42'),
(26, 'mail60179@test.com', '$2y$10$ys1Lmysspw94ehFbp1oRGezZOVUAuz2TJGwsCEpz2JLR30sQPtZbe', '梁家瑋', '0918296616', 'female', '1992-10-01', '苗栗縣', 'Hi', 'P608584834', '2024-05-09 10:33:42'),
(27, 'mail76371@test.com', '$2y$10$X0nz2Mf3bHnqqoqKgMkS/ubiZD7JIVwqz1OJWsOOzTLKRUxYuV3O6', '董佳穎', '0918960714', 'other', '1996-09-23', '南投縣', 'Hi', 'G639582047', '2024-05-09 10:33:42'),
(28, 'mail73282@test.com', '$2y$10$LBO8s99OxcAs051ixF5izOwuyPPl0MynC9upWQf/OwFR4GS8ExcCW', '董家瑋', '0918978360', 'other', '1989-03-20', '新竹市', 'Hi', 'G433546681', '2024-05-09 10:33:42'),
(29, 'mail36421@test.com', '$2y$10$xTTAn3q0OZD0P26eL98lue46C6gHOTZD8gdrvQh5VPZCn5CP4jXGu', '高鈺婷', '0918675612', 'other', '1986-02-02', '嘉義市', 'Hi', 'E796974946', '2024-05-09 10:33:42'),
(30, 'mail83452@test.com', '$2y$10$U9gci7zkjVK8Jx5A4Oc9p.Iyt85C0CKB6lD4hOELXTsTWHs5H5faa', '林雅筑', '0918322235', 'other', '1998-03-22', '桃園市', 'Hi', 'M481254402', '2024-05-09 10:33:42'),
(31, 'mail99789@test.com', '$2y$10$PCN/pakzraAMue3Ndz7hWeWs1m2bCWhLHOpMzJDkFDLZAY2f5TopO', '郭郁婷', '0918242722', 'female', '1997-12-12', '嘉義市', 'Hi', 'B371282133', '2024-05-09 10:33:42'),
(32, 'mail74628@test.com', '$2y$10$/K34Qavn3q2kL0Mlc8pIJOP6XnI9sgNt1rtC2Z0wsgoxPai8fhsTe', '沈佳穎', '0918442323', 'female', '1997-11-02', '雲林縣', 'Hi', 'N521317089', '2024-05-09 10:33:42'),
(33, 'mail46853@test.com', '$2y$10$hBp6QSclQ41KI8OqRW2zX.ByJZ35EPq6gw5.Eg9tlQA5xexCwncAW', '程怡萱', '0918737744', 'male', '1985-04-19', '宜蘭縣', 'Hi', 'V641475662', '2024-05-09 10:33:42'),
(34, 'mail18095@test.com', '$2y$10$V2Il4ziCpL1U5MYDJURjke7kvqjezoxi9FJ1KK4/aOMJ9LLQ6OR2S', '孫宇軒', '0918970689', 'female', '1992-12-03', '高雄市', 'Hi', 'Y584118121', '2024-05-09 10:33:42'),
(35, 'mail15832@test.com', '$2y$10$fTUFru4wxcsy7IddNyRi3.3xiLhMbhBvVhBTc8XKBSXJ.dqtJdS3W', '梁怡萱', '0918443474', 'female', '1987-06-11', '臺中市', 'Hi', 'L309660363', '2024-05-09 10:33:43'),
(36, 'mail49716@test.com', '$2y$10$J29j/3VNWzsajEy3aCqQou/zQ9cd5/BmGZ16Q4Mx47efLOAAOGKdq', '袁鈺婷', '0918360961', 'male', '1998-01-25', '雲林縣', 'Hi', 'I458097688', '2024-05-09 10:33:43'),
(37, 'mail54009@test.com', '$2y$10$5FSuegv3nVjLZbWD/PO5Be.cow2yAMpnpVgziwqDAfok3qDtAFsgm', '黃冠廷', '0918110186', 'male', '1988-12-28', '基隆市', 'Hi', 'D103359091', '2024-05-09 10:33:43'),
(38, 'mail25359@test.com', '$2y$10$pt.A7Rn6x1/z7Yuhgxk0tO94a48NxDkAqdMRBxy/NPoa5sp0TwSxm', '何宜庭', '0918532699', 'male', '1994-02-06', '連江縣', 'Hi', 'P230504569', '2024-05-09 10:33:43'),
(39, 'mail15843@test.com', '$2y$10$fmGkVdTNw/5xlFhCdFakC.wuLmnEQjP87fHYfZICrAFaR5QlmIg.6', '胡柏翰', '0918785554', 'female', '1998-05-09', '雲林縣', 'Hi', 'N988547298', '2024-05-09 10:33:43'),
(40, 'mail53565@test.com', '$2y$10$ZMNOn/1R0O.ZZfMjuPSKCOJCZCOjn6mPkQe6JBn3IVfYPFj9tP6je', '胡家豪', '0918639881', 'other', '1993-07-15', '雲林縣', 'Hi', 'O707538875', '2024-05-09 10:33:43'),
(41, 'mail14010@test.com', '$2y$10$xcJu6rjizFsZf3o6gqbRK.zxY1qZ4BogdMUY6sweJT3TAYCgZ2I9S', '鄭家豪', '0918572199', 'other', '1993-07-28', '苗栗縣', 'Hi', 'V985388135', '2024-05-09 10:33:43'),
(42, 'mail31782@test.com', '$2y$10$ft.hbCP/vCPn7yPJgMRZdur8cLQp8gEZ.19dInqklY6v1q4BVF8yu', '馮佳穎', '0918723850', 'female', '1989-03-13', '高雄市', 'Hi', 'I695565855', '2024-05-09 10:33:43'),
(43, 'mail27317@test.com', '$2y$10$ApxRSyu244Zo5AGCCMzrd.BcoqxpCwpHtywj.rVRmiet3L.tN/IvO', '梁佳穎', '0918636382', 'other', '1989-01-30', '嘉義縣', 'Hi', 'A184722309', '2024-05-09 10:33:43'),
(44, 'mail71835@test.com', '$2y$10$DeBtB6unE1lqdYQHat4TSeu4s7j2rKodxvPsZPMKqHgqoVj7xoLJ6', '董宇軒', '0918199769', 'other', '1986-06-13', '金門縣', 'Hi', 'P106477853', '2024-05-09 10:33:43'),
(45, 'mail57826@test.com', '$2y$10$Ha9U.r88hWmgkl83k1yQcOa7yT.GlFTyRNz9amAvQULkS3xYl3hMe', '程怡婷', '0918921173', 'other', '1997-10-20', '南投縣', 'Hi', 'W341198446', '2024-05-09 10:33:43'),
(46, 'mail73682@test.com', '$2y$10$J3lg/cz94ig3sg6wp0QBJOqpCgoNHQfqWSr6IW1CwlIL8Psc1UQDW', '董怡婷', '0918313992', 'female', '1995-02-09', '南投縣', 'Hi', 'S272003794', '2024-05-09 10:33:43'),
(47, 'mail15614@test.com', '$2y$10$q1q5ChVNGIN4WFx5qGH1ue9vxNdjgFeWClCrOtZvn2NiG9.5jOg7C', '宋詩涵', '0918615647', 'female', '1986-11-17', '南投縣', 'Hi', 'Q456202729', '2024-05-09 10:33:43'),
(48, 'mail59715@test.com', '$2y$10$CebTBVMgaN4yjD63AM1B0ur.7zNCwzjsgV6N606IXjMirlBBQHI3y', '韓詩涵', '0918394154', 'other', '1989-05-31', '嘉義縣', 'Hi', 'O441438518', '2024-05-09 10:33:43'),
(49, 'mail60465@test.com', '$2y$10$SVdB2OPQQxDwuXkdMHTkbu6XzfRpcJ39yUEiDVDZntFLnXQwlQBve', '劉承翰', '0918296150', 'female', '1993-01-30', '苗栗縣', 'Hi', 'N398882643', '2024-05-09 10:33:43'),
(50, 'mail70803@test.com', '$2y$10$EDtbrqAzDXvZY1ukW.beB.6uByrOs99U5Ez9l4F45n4L2TYWnUSbq', '袁冠廷', '0918441243', 'male', '1988-12-21', '南投縣', 'Hi', 'S478732861', '2024-05-09 10:33:43'),
(51, 'mail24122@test.com', '$2y$10$Dm0mJy4rKHX6HvU0BkA//e32yai4ck1Wfpjgo6IYcyTavfPdM8cDe', '孫雅筑', '0918840803', 'male', '1992-10-14', '嘉義市', 'Hi', 'P688427581', '2024-05-09 10:33:43'),
(52, 'mail44301@test.com', '$2y$10$i70xfVGgRdLgPGWXnO.MNO.2iq9J8ZTSv3BZJRdj.SLT2inUCbt.q', '曹冠霖', '0918457798', 'male', '1995-04-24', '澎湖縣', 'Hi', 'L885710157', '2024-05-09 10:33:43'),
(53, 'mail23628@test.com', '$2y$10$RHT7T2om3WJIRu5QizSNs.lqXCpfOXJNGbhn1CYEVU5Tx7Rtd1i7e', '羅家豪', '0918267987', 'female', '1985-02-18', '彰化縣', 'Hi', 'L904628731', '2024-05-09 10:33:43'),
(54, 'mail50406@test.com', '$2y$10$z92wJmJ3LNZ6/SEpS676dO.elR7euHOROWNHZYb7U16VZO6n84vNW', '謝佳穎', '0918257837', 'male', '1987-09-16', '新北市', 'Hi', 'A833396782', '2024-05-09 10:33:44'),
(55, 'mail85450@test.com', '$2y$10$6zRyRhTpskRMQE12QWU4VuBEdL737wphMqqldKJau7hjKjLYINZlW', '宋家豪', '0918147808', 'male', '1987-06-17', '宜蘭縣', 'Hi', 'Q308271986', '2024-05-09 10:33:44'),
(56, 'mail49965@test.com', '$2y$10$vLXI.XfpPKwSIcekxIEQZ.6fOmtHFk0LBuqtY3aaaICmI7zoPeQr6', '周怡婷', '0918523010', 'other', '1993-08-01', '桃園市', 'Hi', 'A591422438', '2024-05-09 10:33:44'),
(57, 'mail87255@test.com', '$2y$10$ez7yMHvzTnVVgYqczq/x4eFXzppxKiV47Iy2dervyxEJkSGQs4P56', '陳怡君', '0918124616', 'female', '1999-02-24', '金門縣', 'Hi', 'V427641903', '2024-05-09 10:33:44'),
(58, 'mail95131@test.com', '$2y$10$HAUlyiP6g1zMFLOOEaKqMeUICT.w5ZXubPekVbc9O3KlJeTLc9b4.', '王冠廷', '0918713045', 'other', '1996-01-19', '臺中市', 'Hi', 'Y811993143', '2024-05-09 10:33:44'),
(59, 'mail11118@test.com', '$2y$10$/.mfBGKTYQR8aBAO/PEUKODE0jnftR/54IFWXHaWvW2ABJJjfhVAO', '馬承翰', '0918381131', 'female', '1988-12-10', '屏東縣', 'Hi', 'Y402615718', '2024-05-09 10:33:44'),
(60, 'mail10802@test.com', '$2y$10$9UImIjIBYGTiDaEgxZ/mpOdY7lOpPclv.dl6eaWzO7gxLpq1q.QNm', '周佳穎', '0918915139', 'female', '1987-11-03', '雲林縣', 'Hi', 'J808638964', '2024-05-09 10:33:44'),
(61, 'mail59655@test.com', '$2y$10$BSh.hP1QjZhv2gq65PZq2e.MCGfmh2BkJeIpOV70v/gIUWe5hX0pu', '謝郁婷', '0918987551', 'male', '1996-01-04', '臺南市', 'Hi', 'R542096167', '2024-05-09 10:33:44'),
(62, 'mail72872@test.com', '$2y$10$ihlmt/6PPh66feiO0rKHQu/daOl1bEgAdMFscce/q3icnGqWbEPum', '林家豪', '0918412935', 'female', '1986-06-26', '臺北市', 'Hi', 'H241255469', '2024-05-09 10:33:44'),
(63, 'mail84657@test.com', '$2y$10$mS7lxPAV9iV/UyOTi.vo2Ou9WAUfmeRDOKfcpoS234WE/A1tcd2V6', '劉宜庭', '0918567473', 'male', '1987-04-23', '新竹縣', 'Hi', 'R740259354', '2024-05-09 10:33:44'),
(64, 'mail65634@test.com', '$2y$10$1ZGb3yiMN1b6NoJfbyVIu.PPhb/x.bFF38eyOHlj13Bqq5rZBueci', '沈詩涵', '0918262924', 'female', '1997-09-24', '基隆市', 'Hi', 'R749496110', '2024-05-09 10:33:44'),
(65, 'mail77901@test.com', '$2y$10$KntfA6yo.4t9JWa1KbKOhuhwlkE.ceT10gQJacFtPur3p1yHgP86S', '鄭宜庭', '0918796778', 'other', '1995-10-01', '彰化縣', 'Hi', 'Y301217916', '2024-05-09 10:33:44'),
(66, 'mail41766@test.com', '$2y$10$rWuXj5hQzyzL6v1.uxQ9EeqOJuZ/7bEKsVdeEZvI/6QNPI3toKpiK', '羅冠霖', '0918737860', 'female', '1991-04-28', '嘉義市', 'Hi', 'J644879742', '2024-05-09 10:33:44'),
(67, 'mail45917@test.com', '$2y$10$yNHBDDsGVklkQYHxsKWiHO3UiBxdNnyIl27yEHbMPUpxYO3bJpLze', '朱宜庭', '0918251353', 'other', '1999-03-03', '南投縣', 'Hi', 'C688394154', '2024-05-09 10:33:44'),
(68, 'mail41277@test.com', '$2y$10$STmdmIksEp.Mxyltbn5Nbezsd13LNi./lys3B6gEK9saHwaT4gIom', '梁冠廷', '0918248452', 'male', '1987-08-05', '澎湖縣', 'Hi', 'Q727002271', '2024-05-09 10:33:44'),
(69, 'mail52231@test.com', '$2y$10$7bkwK2ysHMU/EngWcSJifeP.qdF0oFd7ohU1Cy2itNbjsIgPzaHYO', '高宇軒', '0918252129', 'female', '1992-09-20', '臺北市', 'Hi', 'H159443852', '2024-05-09 10:33:44'),
(70, 'mail35938@test.com', '$2y$10$G6dQy8kUDBtjhjQEvPJTGeVW0sMjI2tIxj7KT4P0dUDJ3l8aVS2da', '高雅婷', '0918759646', 'other', '1987-06-03', '高雄市', 'Hi', 'Z483395319', '2024-05-09 10:33:44'),
(71, 'mail24400@test.com', '$2y$10$1xv9GBHsNokNVW.DbaI0Eeo86Yy4HEzBQTnCOIBcfwD2ycvmgXZA2', '謝冠廷', '0918842192', 'female', '1999-11-05', '雲林縣', 'Hi', 'A202280742', '2024-05-09 10:33:44'),
(72, 'mail20190@test.com', '$2y$10$U4urQyOW2Y3BJt9pOY5QQesc1LNC2ZW1UTrDW6HXu9YHvMWAYjBnu', '董郁婷', '0918959557', 'female', '1986-04-28', '新竹縣', 'Hi', 'H427217509', '2024-05-09 10:33:44'),
(73, 'mail40524@test.com', '$2y$10$vYsUm9KIuxBvHBE5HJOqxuhNmxikTaOg3TXhSeGH7XM1oildbEdey', '吳柏翰', '0918155138', 'male', '1990-04-21', '新北市', 'Hi', 'Y312417942', '2024-05-09 10:33:45'),
(74, 'mail40847@test.com', '$2y$10$.TF7HmvY/I3RsXAfHguSp.0vWAFy9xX265HSR1zLJS4ZiaeicMM4K', '曹詩涵', '0918468821', 'other', '1998-09-12', '新北市', 'Hi', 'F439395932', '2024-05-09 10:33:45'),
(75, 'mail59594@test.com', '$2y$10$b7FBAZUH9W5srq0WOLXHKuG9hGuefLjR5zvx2wnOhpOeTfKwkwsRm', '宋佳穎', '0918145204', 'other', '1996-10-10', '基隆市', 'Hi', 'A692071257', '2024-05-09 10:33:45'),
(76, 'mail83722@test.com', '$2y$10$/A7WZMr/EWK/FFMyfMHtHOkBivgP1NNh6dPdMWj4ilYvA1gs.lfmG', '李冠廷', '0918844058', 'other', '1997-09-07', '臺中市', 'Hi', 'C824530725', '2024-05-09 10:33:45'),
(77, 'mail44748@test.com', '$2y$10$2vKA9PLp/IGkOq3PgsRVruciPWIyvmDChj12QrRbkUFV3nSetXCaG', '曹郁婷', '0918317133', 'other', '1987-04-16', '新竹市', 'Hi', 'X307545632', '2024-05-09 10:33:45'),
(78, 'mail41878@test.com', '$2y$10$/XpAQkD8zPCSC214U2ssYuTtrAM.n4MHQ0xebEEAhPLmUuYHQDhWi', '彭冠霖', '0918132292', 'female', '1999-05-11', '臺北市', 'Hi', 'L295330748', '2024-05-09 10:33:45'),
(79, 'mail13090@test.com', '$2y$10$OCUaXTBhA4//SN59Uk4YP.OwElZknC7T8bOKu1r6kqTKuLvmIi0V.', '韓郁婷', '0918396810', 'other', '1987-12-06', '新竹市', 'Hi', 'L535517080', '2024-05-09 10:33:45'),
(80, 'mail25363@test.com', '$2y$10$emNq.s0BkbvJjn53DR3k4OPBn7uBNTkl8cWbX/YVRc1FYgB56GeRe', '呂雅婷', '0918308441', 'female', '1986-02-25', '新竹縣', 'Hi', 'O920350552', '2024-05-09 10:33:45'),
(81, 'mail31963@test.com', '$2y$10$7oOHiJtjzViX8gxfgUtGG.JHncyQGbxuYRZJ0h9j7BFpJbnVIPWja', '呂郁婷', '0918586877', 'female', '1988-11-09', '新竹市', 'Hi', 'F388214164', '2024-05-09 10:33:45'),
(82, 'mail92465@test.com', '$2y$10$jFm4EaSh1aTgkuBvJhJ9IuYSyj18CLtMrCsnZDiNjYmEKtIsyKNue', '曹宗翰', '0918545576', 'other', '1989-07-28', '花蓮縣', 'Hi', 'N937611963', '2024-05-09 10:33:45'),
(83, 'mail10916@test.com', '$2y$10$2RGklL6AfGiIPOHJSMLihO7IU0VKevL4/fekC1t1BtrMsWs14V2Gm', '張冠廷', '0918661075', 'female', '1994-07-23', '屏東縣', 'Hi', 'T283686540', '2024-05-09 10:33:45'),
(84, 'mail35003@test.com', '$2y$10$KUg2ggl3zlIoQyYhte6AkuXQfeBHoqlQnXDbKpBB7K5118hApAvAG', '於承翰', '0918280762', 'other', '1988-12-04', '宜蘭縣', 'Hi', 'S871706447', '2024-05-09 10:33:45'),
(85, 'mail25754@test.com', '$2y$10$NqYRr18Kd6Lxh1pJJi/45.//THFp5DBpKE358Jtk.ulDkNngqf8fm', '傅家瑋', '0918767864', 'other', '1998-06-13', '臺南市', 'Hi', 'D941488562', '2024-05-09 10:33:45'),
(86, 'mail74982@test.com', '$2y$10$4DOoWfJ6/UPEwHGJPuUvqOE5TFsX9IfGgTz1oTOjYm.gxSRtgjPiu', '林宜庭', '0918504004', 'female', '1990-04-23', '臺東縣', 'Hi', 'S944725393', '2024-05-09 10:33:45'),
(87, 'mail39950@test.com', '$2y$10$.AXs6ww6H5hSlOM40vFX4OK2DCUMO970QZyUzAlpCZSmipZ8OgwAe', '張柏翰', '0918579867', 'male', '1987-04-07', '屏東縣', 'Hi', 'F497649294', '2024-05-09 10:33:45'),
(88, 'mail29899@test.com', '$2y$10$n4aTk/9qBZnZz/V94Q8rOeUY/LRn9OZQHErtqSv/NrJPTKhVORDSC', '朱宇軒', '0918642802', 'other', '1986-08-07', '桃園市', 'Hi', 'M804095183', '2024-05-09 10:33:45'),
(89, 'mail41616@test.com', '$2y$10$ZXa6wSrXo.4AwuWETc0cm.YLGAWNLZbqQ7TbdCbGR.mRv7GAnc4xe', '馮冠廷', '0918715762', 'other', '1990-01-07', '臺中市', 'Hi', 'F740029752', '2024-05-09 10:33:45'),
(90, 'mail38242@test.com', '$2y$10$WpnOys6jsTuu9gvM/sEa1.oHDfxlyDLrj0/z8T1Rt8lwc8MxhIH.G', '楊雅筑', '0918842550', 'other', '1995-01-22', '屏東縣', 'Hi', 'L414623696', '2024-05-09 10:33:45'),
(91, 'mail55777@test.com', '$2y$10$N08.9yzXoKaUAHepIJ.MT.sTebcCp0qxHajbZZW5aElYBpw3ilKQu', '許宗翰', '0918557655', 'male', '1998-12-30', '嘉義縣', 'Hi', 'A709360806', '2024-05-09 10:33:45'),
(92, 'mail91174@test.com', '$2y$10$GB165awcHGoP35iBaYuu..L.8Z0WvX4hzvefu85eQfyuciAVOllRS', '曹雅筑', '0918104472', 'male', '1992-12-19', '屏東縣', 'Hi', 'W910235989', '2024-05-09 10:33:46'),
(93, 'mail88880@test.com', '$2y$10$miSsddfmC/Bw5FSEjCxJIOnPF.xysT4fr6bJ7HIinaYY/BpBaVelC', '吳承翰', '0918232774', 'female', '1999-05-05', '花蓮縣', 'Hi', 'B542543997', '2024-05-09 10:33:46'),
(94, 'mail69360@test.com', '$2y$10$wKQ0cl3lDoqj8809ANRQs.I575DcfvDHfrYT5E3kHes77ZTcAefGm', '程詩涵', '0918634883', 'male', '1994-03-06', '高雄市', 'Hi', 'A533287746', '2024-05-09 10:33:46'),
(95, 'mail18895@test.com', '$2y$10$ECn73UfjppvNqXX1In8m1uzFdAVWZT8hF5D1tEpv/Buj8D9PlDCQe', '於鈺婷', '0918378081', 'male', '1988-09-02', '基隆市', 'Hi', 'K307947218', '2024-05-09 10:33:46'),
(96, 'mail21888@test.com', '$2y$10$k2znxtmyIgYx5U4LjFpfaujbKFh9zRbNzko7xQjFqLM.QUE4qOcq2', '吳冠宇', '0918323273', 'other', '1988-07-02', '苗栗縣', 'Hi', 'D964651469', '2024-05-09 10:33:46'),
(97, 'mail36447@test.com', '$2y$10$2ukNyCm/Ut.lH9GqOPMZK./S6YEvpsF9E3RQophilPwE5pW/mEE2e', '程承翰', '0918614870', 'male', '1994-09-27', '嘉義市', 'Hi', 'A830259442', '2024-05-09 10:33:46'),
(98, 'mail14769@test.com', '$2y$10$HFfa8cU36S6SOORyhBgIzOZ4TxtnuYswjqDUX5Z6dnqK9txuEiCIS', '羅家瑋', '0918235996', 'male', '1990-09-19', '新竹縣', 'Hi', 'F157927637', '2024-05-09 10:33:46'),
(99, 'mail53127@test.com', '$2y$10$Ewv0rIY3ZT.TlRkgranYcevf/AmMTi0V/z27Kq8CFiQdjxdTekmRq', '鄧雅筑', '0918859242', 'other', '1998-08-15', '新竹縣', 'Hi', 'A626749183', '2024-05-09 10:33:46'),
(100, 'mail13663@test.com', '$2y$10$E/meLzPyt0fWG/xh8YOPiugru6rdHbfLEo4QBq7r3NP1d9gLUtiTe', '梁一心', '0918422549', 'other', '1992-04-05', '金門縣', 'Hi', 'C109759503', '2024-05-09 10:33:46');

-- --------------------------------------------------------

--
-- 資料表結構 `customers_coupon`
--

CREATE TABLE `customers_coupon` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `coupon_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `favorite_blog`
--

CREATE TABLE `favorite_blog` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `blog_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `favorite_blog`
--

INSERT INTO `favorite_blog` (`id`, `customer_id`, `blog_id`) VALUES
(1, 1, 1),
(4, 2, 1),
(3, 2, 21),
(5, 7, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `favorite_stores`
--

CREATE TABLE `favorite_stores` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `store_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `theme_id` int NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `customer_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `is_privated` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `store_id` int NOT NULL,
  `room_campsite_id` int NOT NULL,
  `coupon_id` int NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `checkin_date` date NOT NULL,
  `checkout_date` date NOT NULL,
  `guests` int NOT NULL,
  `total_day` int NOT NULL,
  `total_price` int NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `credit_card` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `note` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `room_campsite_id`, `coupon_id`, `order_date`, `checkin_date`, `checkout_date`, `guests`, `total_day`, `total_price`, `payment_status`, `credit_card`, `note`) VALUES
(1, 1, 18, 21, 1, '2024-05-09 08:48:50', '2024-05-17', '2024-05-24', 3, 8, 8800, '已付款', '7777-6666-2222-3333', '備註123456'),
(2, 2, 21, 10, 1, '2024-05-09 08:50:30', '2024-05-18', '2024-05-24', 4, 7, 8400, '未付款', '7777-6666-2222-3333', '備註444'),
(3, 3, 24, 4, 1, '2024-05-09 08:53:12', '2024-05-23', '2024-05-25', 4, 3, 3600, '已付款', '7777-6666-2222-3333', '備註555'),
(4, 1, 18, 6, 1, '2024-05-09 08:48:50', '2024-05-17', '2024-05-20', 3, 4, 4400, '未付款', '7777-6666-2222-3333', '備註123'),
(5, 2, 21, 10, 1, '2024-05-09 08:50:30', '2024-05-18', '2024-05-24', 5, 7, 8400, '已付款', '7777-6666-2222-3333', '備註444'),
(6, 3, 24, 4, 1, '2024-05-09 08:53:12', '2024-05-23', '2024-05-25', 4, 3, 3600, '已付款', '7777-6666-2222-3333', '備註555'),
(7, 1, 18, 6, 1, '2024-05-09 08:48:50', '2024-05-17', '2024-05-20', 3, 4, 4400, '未付款', '7777-6666-2222-3333', '備註123'),
(8, 2, 21, 9, 1, '2024-05-09 08:50:30', '2024-05-18', '2024-05-21', 3, 4, 4800, '已付款', '7777-6666-2222-3333', '備註456'),
(9, 3, 24, 4, 1, '2024-05-09 08:53:12', '2024-05-23', '2024-05-25', 4, 3, 3600, '已付款', '7777-6666-2222-3333', '備註555'),
(10, 1, 18, 6, 1, '2024-05-09 08:48:50', '2024-05-17', '2024-05-20', 3, 4, 4400, '未付款', '7777-6666-2222-3333', '備註123'),
(11, 2, 21, 9, 1, '2024-05-09 08:50:30', '2024-05-18', '2024-05-21', 3, 4, 4800, '已付款', '7777-6666-2222-3333', '備註456'),
(12, 3, 24, 4, 1, '2024-05-09 08:53:12', '2024-05-23', '2024-05-25', 4, 3, 3600, '已付款', '7777-6666-2222-3333', '備註555'),
(13, 1, 18, 6, 1, '2024-05-09 08:48:50', '2024-05-17', '2024-05-20', 3, 4, 4400, '未付款', '7777-6666-2222-3333', '備註123'),
(14, 2, 21, 9, 1, '2024-05-09 08:50:30', '2024-05-18', '2024-05-21', 3, 4, 4800, '已付款', '7777-6666-2222-3333', '備註456'),
(15, 3, 24, 4, 1, '2024-05-09 08:53:12', '2024-05-23', '2024-05-25', 4, 3, 3600, '已付款', '7777-6666-2222-3333', '備註555'),
(16, 1, 18, 6, 1, '2024-05-09 08:48:50', '2024-05-17', '2024-05-20', 3, 4, 4400, '未付款', '7777-6666-2222-3333', '備註123'),
(17, 2, 21, 9, 1, '2024-05-09 08:50:30', '2024-05-18', '2024-05-21', 3, 4, 4800, '已付款', '7777-6666-2222-3333', '備註456'),
(18, 3, 24, 4, 1, '2024-05-09 08:53:12', '2024-05-23', '2024-05-25', 4, 3, 3600, '已付款', '7777-6666-2222-3333', '備註555'),
(19, 1, 18, 6, 1, '2024-05-09 08:48:50', '2024-05-17', '2024-05-20', 3, 4, 4400, '未付款', '7777-6666-2222-3333', '備註123'),
(20, 2, 21, 9, 1, '2024-05-09 08:50:30', '2024-05-18', '2024-05-21', 3, 4, 4800, '已付款', '7777-6666-2222-3333', '備註456'),
(21, 3, 24, 4, 1, '2024-05-09 08:53:12', '2024-05-23', '2024-05-25', 4, 3, 3600, '已付款', '7777-6666-2222-3333', '備註555'),
(22, 1, 18, 6, 1, '2024-05-09 08:48:50', '2024-05-17', '2024-05-20', 3, 4, 4400, '未付款', '7777-6666-2222-3333', '備註123'),
(25, 2, 21, 9, 1, '2024-05-09 08:50:30', '2024-05-18', '2024-05-21', 3, 4, 4800, '已付款', '7777-6666-2222-3333', '備註456'),
(26, 3, 24, 4, 1, '2024-05-09 08:53:12', '2024-05-23', '2024-05-25', 4, 3, 3600, '已付款', '7777-6666-2222-3333', '備註555');

-- --------------------------------------------------------

--
-- 資料表結構 `owners`
--

CREATE TABLE `owners` (
  `owners_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_card` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `member_status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `owners`
--

INSERT INTO `owners` (`owners_id`, `name`, `gender`, `password`, `birthday`, `email`, `id_card`, `mobile`, `address`, `bank_account`, `member_status`, `created_at`) VALUES
(1, '陳詩涵', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1997-10-25', 'mail23798@test.com', 'D117342333', '0918474452', '臺中市', '56420777668746', 1, '2024-05-09 16:03:51'),
(2, '梁冠廷', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1994-11-13', 'mail67842@test.com', 'D272973348', '0918712726', '雲林縣', '15049447942225', 1, '2024-05-09 16:03:51'),
(3, '鄧家瑋', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1995-08-05', 'mail18387@test.com', 'D166768145', '0918835995', '澎湖縣', '29247070571283', 1, '2024-05-09 16:03:51'),
(4, '許宇軒', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1988-09-15', 'mail56405@test.com', 'D292910490', '0918577366', '高雄市', '17085548398123', 1, '2024-05-09 16:03:51'),
(5, '許鈺婷', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1991-09-10', 'mail75454@test.com', 'D195268313', '0918711194', '苗栗縣', '18385506215646', 1, '2024-05-09 16:03:51'),
(6, '蕭鈺婷', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1985-07-15', 'mail63845@test.com', 'D269638416', '0918855570', '臺北市', '72214464762211', 1, '2024-05-09 16:03:51'),
(7, '唐宜庭', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1999-04-12', 'mail52282@test.com', 'D216131600', '0918208889', '屏東縣', '85950973484468', 1, '2024-05-09 16:03:51'),
(8, '許冠霖', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1985-10-26', 'mail22517@test.com', 'D263829219', '0918492072', '新北市', '71392406294369', 1, '2024-05-09 16:03:51'),
(9, '張宗翰', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1986-03-27', 'mail32880@test.com', 'D296128549', '0918321208', '宜蘭縣', '66448917206592', 1, '2024-05-09 16:03:51'),
(10, '高詩涵', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1996-01-25', 'mail16466@test.com', 'D289156212', '0918695209', '臺北市', '14435541067401', 1, '2024-05-09 16:03:51'),
(11, '劉冠宇', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1999-06-13', 'mail36303@test.com', 'D234997615', '0918202713', '新竹縣', '93090143832861', 1, '2024-05-09 16:03:51'),
(12, '胡冠廷', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1990-01-11', 'mail60490@test.com', 'D193122515', '0918265705', '新竹市', '56854853459253', 1, '2024-05-09 16:03:51'),
(13, '謝怡婷', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1993-08-16', 'mail60016@test.com', 'D253940834', '0918332206', '臺南市', '66254285326361', 1, '2024-05-09 16:03:51'),
(14, '於承翰', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1999-08-14', 'mail40175@test.com', 'D292912500', '0918679743', '雲林縣', '46139867986599', 1, '2024-05-09 16:03:51'),
(15, '胡承翰2', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1986-08-27', 'mail74853@test.com', 'D127837555', '0918272636', '新北市', '60965419370634', 0, '2024-05-09 16:03:51'),
(16, '劉郁婷', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1991-07-08', 'mail48019@test.com', 'D288549675', '0918596358', '宜蘭縣', '40534918825888', 1, '2024-05-09 16:03:51'),
(17, '羅冠廷', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1987-05-23', 'mail66058@test.com', 'D170118846', '0918520406', '高雄市', '27565384210534', 1, '2024-05-09 16:03:51'),
(18, '王怡君', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1997-11-11', 'mail57429@test.com', 'D183491395', '0918915748', '嘉義市', '67051356699383', 1, '2024-05-09 16:03:51'),
(19, '李雅婷', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1989-07-08', 'mail15673@test.com', 'D266047351', '0918965793', '臺南市', '88797255482044', 1, '2024-05-09 16:03:51'),
(20, '楊怡君', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1997-06-04', 'mail76018@test.com', 'D158382482', '0918933530', '澎湖縣', '45195548022369', 1, '2024-05-09 16:03:52'),
(21, '董怡婷', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1985-08-31', 'mail51271@test.com', 'D257761081', '0918424002', '新北市', '24577123592074', 1, '2024-05-09 16:03:52'),
(22, '蕭宗翰', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1997-05-18', 'mail13587@test.com', 'D199650108', '0918922806', '彰化縣', '60396488132402', 1, '2024-05-09 16:03:52'),
(23, '黃家豪', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1998-03-01', 'mail27599@test.com', 'D125482561', '0918961484', '新竹縣', '22651618110266', 1, '2024-05-09 16:03:52'),
(24, '梁柏翰', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1987-12-11', 'mail84914@test.com', 'D224242876', '0918764156', '彰化縣', '55657279603835', 1, '2024-05-09 16:03:52'),
(25, '林怡萱2', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1989-04-30', 'mail56229@test.com', 'D255958455', '0918992399', '臺南市', '91566642985364', 0, '2024-05-09 16:03:52'),
(28, '小王', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', NULL, 'ggg@mail.com', 'E213513687', '0977777777', '12313', '012345678912345', 1, '2024-05-10 09:20:21'),
(30, '程怡君', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1990-05-03', 'mail90359@test.com', 'D234342125', '0918799503', '金門縣', '77294119233213', 1, '2024-05-10 15:02:56'),
(31, '李冠宇', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1987-02-21', 'mail49638@test.com', 'D162354986', '0918585349', '桃園市', '73774407821368', 1, '2024-05-10 15:02:56'),
(32, '於冠廷', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1986-05-31', 'mail58897@test.com', 'D262209355', '0918185733', '臺北市', '22657786412438', 1, '2024-05-10 15:02:56'),
(33, '曾承翰', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1996-03-18', 'mail66670@test.com', 'D245234931', '0918185917', '苗栗縣', '52307666438719', 1, '2024-05-10 15:02:56'),
(34, '宋詩涵', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1987-03-19', 'mail70660@test.com', 'D171625847', '0918247777', '基隆市', '18645545161969', 1, '2024-05-10 15:02:56'),
(35, '傅郁婷', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1988-11-13', 'mail56322@test.com', 'D198069790', '0918912664', '臺東縣', '73336363831305', 1, '2024-05-10 15:02:56'),
(36, '胡柏翰', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1990-04-14', 'mail63673@test.com', 'D226128633', '0918912460', '連江縣', '32987787558107', 1, '2024-05-10 15:02:56'),
(37, '劉冠廷', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1986-05-12', 'mail25199@test.com', 'D164052711', '0918623674', '雲林縣', '29494982467285', 1, '2024-05-10 15:02:57'),
(38, '袁佳穎', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1993-08-13', 'mail83700@test.com', 'D117502120', '0918452530', '臺東縣', '41944061202982', 1, '2024-05-10 15:02:57'),
(39, '沈冠廷', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1998-11-22', 'mail65343@test.com', 'D243791101', '0918116253', '宜蘭縣', '83643763275847', 1, '2024-05-10 15:02:57'),
(40, '趙雅婷', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1999-02-14', 'mail20959@test.com', 'D188588446', '0918862554', '嘉義縣', '96728177394403', 1, '2024-05-10 15:02:57'),
(41, '唐郁婷', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1992-08-04', 'mail64119@test.com', 'D297810485', '0918965107', '新竹縣', '94840914352350', 1, '2024-05-10 15:02:57'),
(42, '馮怡萱', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1998-04-22', 'mail88564@test.com', 'D134108159', '0918335401', '雲林縣', '15618343286566', 1, '2024-05-10 15:02:57'),
(43, '趙宜庭', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1985-02-20', 'mail66475@test.com', 'D123872923', '0918187675', '新竹縣', '81788613284151', 1, '2024-05-10 15:02:57'),
(44, '宋怡萱', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1994-10-18', 'mail39840@test.com', 'D248327647', '0918781024', '連江縣', '21505149986395', 1, '2024-05-10 15:02:57'),
(45, '郭宜庭', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1989-12-26', 'mail55735@test.com', 'D156040064', '0918916241', '連江縣', '77785062953085', 1, '2024-05-10 15:02:57'),
(46, '劉宜庭', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1987-12-19', 'mail44651@test.com', 'D213463916', '0918193885', '澎湖縣', '66348699193811', 1, '2024-05-10 15:02:57'),
(47, '高雅婷', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1989-08-28', 'mail79297@test.com', 'D146628153', '0918987368', '嘉義市', '49491342140912', 1, '2024-05-10 15:02:57'),
(48, '趙詩涵', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1999-11-12', 'mail90030@test.com', 'D269414168', '0918631431', '基隆市', '47149747800731', 1, '2024-05-10 15:02:57'),
(49, '胡怡君', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1985-11-03', 'mail69206@test.com', 'D188939460', '0918925542', '宜蘭縣', '65009396173945', 1, '2024-05-10 15:02:57'),
(50, '沈彥廷', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1985-04-27', 'mail71220@test.com', 'D190892011', '0918747865', '新竹縣', '72522159320847', 1, '2024-05-10 15:02:57'),
(51, '趙宗翰', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1986-04-15', 'mail34426@test.com', 'D177064986', '0918379968', '臺東縣', '41047344305443', 1, '2024-05-10 15:02:57'),
(52, '許承翰', 'male', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1998-12-08', 'mail30703@test.com', 'D135522865', '0918912356', '臺中市', '97584823626071', 1, '2024-05-10 15:02:57'),
(53, '鄭詩涵', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1991-01-05', 'mail46919@test.com', 'D231991012', '0918940821', '高雄市', '79817534222401', 1, '2024-05-10 15:02:57'),
(54, '徐冠廷', 'female', '$2b$10$jH4xiGHSnPnneodJ6hsc1.N4KNJr7zidCg7c1dQRv2qcrl9ETRz/W', '1988-08-16', 'mail94488@test.com', 'D177939794', '0918601197', '金門縣', '65760752943508', 1, '2024-05-10 15:02:57');

-- --------------------------------------------------------

--
-- 資料表結構 `rooms_campsites`
--

CREATE TABLE `rooms_campsites` (
  `rooms_campsites_id` int NOT NULL,
  `stores_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `normal_price` int NOT NULL,
  `holiday_price` int NOT NULL,
  `night_price` int DEFAULT NULL,
  `tent` int DEFAULT NULL,
  `bed` int DEFAULT NULL,
  `people` int DEFAULT NULL,
  `square_meters` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `introduction` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `rooms_campsites`
--

INSERT INTO `rooms_campsites` (`rooms_campsites_id`, `stores_id`, `name`, `normal_price`, `holiday_price`, `night_price`, `tent`, `bed`, `people`, `square_meters`, `introduction`) VALUES
(3, 19, '木屋雅房A8', 1000, 3400, 800, NULL, 3, 8, '5m * 5m', '房間介紹'),
(4, 24, '小木屋A4', 1200, 2200, 900, NULL, 4, 8, '4m * 4m', '房間介紹'),
(5, 24, '小木屋A3', 2000, 2100, 800, NULL, 2, 5, '4m * 4m', '房間介紹'),
(6, 18, '小木屋A1', 1100, 3200, 800, NULL, 3, 10, '6m * 6m', '房間介紹'),
(8, 4, '木屋雅房A8', 1500, 3400, 900, NULL, 3, 3, '4m * 4m', '房間介紹'),
(9, 21, '小木屋A4', 1200, 2200, 800, NULL, 2, 3, '4m * 4m', '房間介紹'),
(10, 21, '小木屋A1', 1200, 2800, 900, NULL, 2, 12, '6m * 6m', '房間介紹'),
(11, 18, '小木屋A2', 1100, 2800, 900, NULL, 4, 10, '6m * 6m', '房間介紹'),
(12, 25, '小木屋A1', 1500, 2100, 900, NULL, 4, 2, '4m * 4m', '房間介紹'),
(13, 23, '小木屋A1', 1500, 2200, 800, NULL, 2, 12, '6m * 6m', '房間介紹'),
(14, 16, '木屋雅房A5', 1200, 3200, 900, NULL, 2, 12, '4m * 4m', '房間介紹'),
(15, 12, '小木屋A4', 1200, 3200, 900, NULL, 4, 2, '6m * 6m', '房間介紹'),
(16, 20, '小木屋A2', 1000, 2200, 900, NULL, 2, 4, '6m * 6m', '房間介紹'),
(17, 18, '小木屋A1', 1500, 2200, 800, NULL, 2, 5, '6m * 6m', '房間介紹'),
(18, 14, '草地B4', 2000, 2800, 800, 3, NULL, 6, '5m * 5m', '營帳介紹'),
(19, 13, '碎石地C2', 2000, 2800, 900, 9, NULL, 10, '6m * 6m', '營帳介紹'),
(20, 15, '草地B1', 2000, 2200, 800, 3, NULL, 6, '5m * 5m', '營帳介紹'),
(21, 18, '碎石地C3', 1500, 2100, 800, 2, NULL, 11, '5m * 5m', '營帳介紹'),
(22, 10, '草地B2', 2000, 2800, 800, 9, NULL, 5, '5m * 5m', '營帳介紹'),
(23, 10, '草地B2', 1000, 2800, 800, 10, NULL, 10, '6m * 6m', '營帳介紹'),
(24, 6, '碎石地C2', 2000, 3200, 800, 8, NULL, 2, '6m * 6m', '營帳介紹'),
(25, 22, '草地B2', 1500, 2100, 900, 1, NULL, 2, '5m * 5m', '營帳介紹'),
(26, 19, '草地B3', 1200, 3200, 800, 2, NULL, 10, '4m * 4m', '營帳介紹'),
(27, 23, '露營車2號', 1000, 3200, 800, 9, NULL, 10, '4m * 4m', '營帳介紹');

-- --------------------------------------------------------

--
-- 資料表結構 `rooms_campsites_img`
--

CREATE TABLE `rooms_campsites_img` (
  `rooms_campsites_img_id` int NOT NULL,
  `rooms_campsites_id` int NOT NULL,
  `img_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('3mzInXLwrQopd94IrM1geXs2J4OppOfj', 1720025052, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"sales\":{\"id\":10,\"email\":\"mail16466@test.com\",\"name\":\"高詩涵\"}}'),
('44gBJoa7-17kkJQMDJADBzvcU1T0v15n', 1719991085, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"sales\":{\"id\":1,\"email\":\"mail23798@test.com\",\"name\":\"陳詩涵\"}}');

-- --------------------------------------------------------

--
-- 資料表結構 `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `stores_id` int NOT NULL,
  `FK: rooms_campsites_id` int NOT NULL,
  `coupon_id` int NOT NULL,
  `checkin_date` date NOT NULL,
  `checkout_date` date NOT NULL,
  `guests` int NOT NULL,
  `total_day` int NOT NULL,
  `total_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `stores`
--

CREATE TABLE `stores` (
  `stores_id` int NOT NULL,
  `owners_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `longitude` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `latitude` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `altitude` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `precautions` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `introduction` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `stores`
--

INSERT INTO `stores` (`stores_id`, `owners_id`, `name`, `mobile`, `address`, `longitude`, `latitude`, `altitude`, `precautions`, `introduction`, `update_time`) VALUES
(1, 1, '吉伊卡哇', '0924566789', '吉伊卡哇市', '23.22222N', '150.2522222E', '500m', '123', 'chiikawa cute', '2024-05-09 16:12:37'),
(4, 23, '寧靜的露營', '0918541356', '桃園市', '121E', '23N', '970m', '', '', '2024-05-10 10:17:46'),
(5, 23, '寧靜的露營地X', '0918190115', '苗栗縣', '120E', '25N', '782m', NULL, NULL, '2024-05-09 16:11:36'),
(6, 10, '迷人的露營地F', '0918844030', '臺東縣', '121E', '23N', '727m', NULL, NULL, '2024-05-09 16:11:36'),
(7, 2, '迷人的露營地Z', '0918337098', '苗栗縣', '121E', '25N', '732m', NULL, NULL, '2024-05-09 16:11:36'),
(9, 7, '神秘的露營地S', '0918601088', '新竹縣', '120E', '22N', '903m', NULL, NULL, '2024-05-09 16:11:36'),
(10, 11, '神秘的露營地Y', '0918587360', '臺北市', '120E', '22N', '294m', NULL, NULL, '2024-05-09 16:11:36'),
(11, 1, '清新的露營地U', '0918908079', '台東市', '120E', '22N', '940m', NULL, NULL, '2024-05-09 16:11:36'),
(12, 10, '和平的露營地F', '0918778505', '新竹縣', '121E', '25N', '1355m', NULL, NULL, '2024-05-09 16:11:36'),
(13, 4, '和平的露營地M', '0918704323', '宜蘭縣', '121E', '22N', '447m', NULL, NULL, '2024-05-09 16:11:36'),
(14, 19, '和平的露營地U', '0918508566', '嘉義市', '120E', '24N', '888m', NULL, NULL, '2024-05-09 16:11:36'),
(15, 19, '和平的露營地Z', '0918100569', '臺東縣', '120E', '22N', '676m', NULL, NULL, '2024-05-09 16:11:36'),
(16, 16, '舒適的露營地N', '0918772243', '屏東縣', '120E', '22N', '873m', NULL, NULL, '2024-05-09 16:11:36'),
(17, 25, '恬靜的露營地K', '0918223915', '臺中市', '121E', '24N', '1353m', NULL, NULL, '2024-05-09 16:11:36'),
(18, 9, '蔚藍的露營地M', '0918532391', '臺東縣', '121E', '22N', '212m', NULL, NULL, '2024-05-09 16:11:36'),
(19, 1, '翠綠的露營地K', '0918244774', '臺北市', '120E', '21N', '426m', NULL, NULL, '2024-05-09 16:11:36'),
(20, 23, '青蔥的露營地O', '0918208082', '臺中市', '120E', '22N', '1255m', NULL, NULL, '2024-05-09 16:11:36'),
(21, 10, '清澈的露營地J', '0918925236', '澎湖縣', '121E', '25N', '436m', NULL, NULL, '2024-05-09 16:11:36'),
(22, 3, '清澈的露營地M', '0918146344', '澎湖縣', '121E', '22N', '1241m', NULL, NULL, '2024-05-09 16:11:36'),
(23, 13, '清澈的露營地P', '0918904010', '臺北市', '120E', '23N', '224m', NULL, NULL, '2024-05-09 16:11:36'),
(24, 11, '純淨的露營地L', '0918235024', '嘉義市', '120E', '23N', '362m', NULL, NULL, '2024-05-09 16:11:36'),
(25, 11, '明亮的露營地J', '0918400406', '彰化縣', '120E', '21N', '609m', NULL, NULL, '2024-05-09 16:11:36'),
(26, 1, '熱情的露營地I', '0918541793', '屏東縣', '121E', '23N', '522m', NULL, NULL, '2024-05-09 16:11:36'),
(27, 24, '活潑的露營地F', '0918815855', '桃園市', '121E', '21N', '1124m', NULL, NULL, '2024-05-09 16:11:36'),
(28, 16, '活潑的露營地O', '0918492448', '臺東縣', '120E', '24N', '452m', NULL, NULL, '2024-05-09 16:11:36'),
(29, 10, 'test', '123', '123', '123', '123', '123', '123', '123', '2024-05-10 10:09:24'),
(30, 10, '123', '123', '123', '123', '123', '123', '123', '123', '2024-05-10 14:20:57'),
(31, 1, '熱情的露營地I', '0918541793', '屏東縣', '121E', '23N', '522m', NULL, NULL, '2024-05-09 16:11:36'),
(32, 1, '翠綠的露營地K', '0918244774', '臺北市', '120E', '21N', '426m', NULL, NULL, '2024-05-09 16:11:36'),
(33, 1, '清新的露營地U', '0918908079', '花蓮縣', '120E', '22N', '940m', NULL, NULL, '2024-05-09 16:11:36'),
(34, 1, '翠綠的露營地K', '0918244774', '臺北市', '120E', '21N', '426m', NULL, NULL, '2024-05-09 16:11:36'),
(35, 1, '熱情的露營地I', '0918541793', '屏東縣', '121E', '23N', '522m', NULL, NULL, '2024-05-09 16:11:36'),
(36, 1, '熱情的露營地I', '0918541793', '屏東縣', '121E', '23N', '522m', NULL, NULL, '2024-05-09 16:11:36'),
(37, 1, '翠綠的露營地K', '0918244774', '臺北市', '120E', '21N', '426m', NULL, NULL, '2024-05-09 16:11:36'),
(38, 1, '翠綠的露營地K', '0918244774', '臺北市', '120E', '21N', '426m', NULL, NULL, '2024-05-09 16:11:36'),
(39, 1, '清新的露營地U', '0918908079', '花蓮縣', '120E', '22N', '940m', NULL, NULL, '2024-05-09 16:11:36'),
(40, 1, '翠綠的露營地K', '0918244774', '臺北市', '120E', '21N', '426m', NULL, NULL, '2024-05-09 16:11:36'),
(41, 1, '熱情的露營地I', '0918541793', '屏東縣', '121E', '23N', '522m', NULL, NULL, '2024-05-09 16:11:36'),
(42, 1, '翠綠的露營地K', '0918244774', '臺北市', '120E', '21N', '426m', NULL, NULL, '2024-05-09 16:11:36'),
(43, 1, '熱情的露營地I', '0918541793', '屏東縣', '121E', '23N', '522m', NULL, NULL, '2024-05-09 16:11:36'),
(44, 1, '清新的露營地U', '0918908079', '花蓮縣', '120E', '22N', '940m', NULL, NULL, '2024-05-09 16:11:36'),
(45, 1, '翠綠的露營地K', '0918244774', '臺北市', '120E', '21N', '426m', NULL, NULL, '2024-05-09 16:11:36'),
(46, 1, '熱情的露營地I', '0918541793', '屏東縣', '121E', '23N', '522m', NULL, NULL, '2024-05-09 16:11:36'),
(47, 1, '熱情的露營地I', '0918541793', '屏東縣', '121E', '23N', '522m', NULL, NULL, '2024-05-09 16:11:36');

-- --------------------------------------------------------

--
-- 資料表結構 `stores_img`
--

CREATE TABLE `stores_img` (
  `stores_img_id` int NOT NULL,
  `stores_id` int NOT NULL,
  `img_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `stores_img`
--

INSERT INTO `stores_img` (`stores_img_id`, `stores_id`, `img_name`) VALUES
(1, 1, '[\"37b3081e85421b48e24107fa246f9d9a3a0f79df.webp\"]');

-- --------------------------------------------------------

--
-- 資料表結構 `stores_informations`
--

CREATE TABLE `stores_informations` (
  `stores_informations_ id` int NOT NULL,
  `stores_id` int NOT NULL,
  `night_time` time DEFAULT NULL,
  `entry_time` time NOT NULL,
  `close_time` time NOT NULL,
  `water` tinyint(1) NOT NULL,
  `refrigerator` tinyint(1) NOT NULL,
  `bath_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `curfew` time DEFAULT NULL,
  `pet` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `stores_informations`
--

INSERT INTO `stores_informations` (`stores_informations_ id`, `stores_id`, `night_time`, `entry_time`, `close_time`, `water`, `refrigerator`, `bath_time`, `curfew`, `pet`) VALUES
(1, 1, '18:00:00', '12:00:00', '12:00:00', 1, 1, '24H', '23:00:00', NULL),
(3, 4, '01:22:00', '12:20:00', '00:20:00', 1, 0, '02:22', '01:21:00', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `stores_tag`
--

CREATE TABLE `stores_tag` (
  `store_tag_id` int NOT NULL,
  `stores_id` int NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `stores_tag`
--

INSERT INTO `stores_tag` (`store_tag_id`, `stores_id`, `tag_id`) VALUES
(5, 1, 3),
(6, 1, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `tag`
--

CREATE TABLE `tag` (
  `tag_id` int NOT NULL,
  `tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`, `created_at`) VALUES
(1, '森林系', '2024-05-03 11:39:53'),
(2, '雨棚', '2024-05-03 11:39:53'),
(3, '露營車', '2024-05-03 11:40:11'),
(4, '草皮', '2024-05-03 11:40:25');

-- --------------------------------------------------------

--
-- 資料表結構 `themes`
--

CREATE TABLE `themes` (
  `id` int NOT NULL,
  `namespace_id` int NOT NULL,
  `theme_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_privated` tinyint(1) NOT NULL,
  `endpoint` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- 資料表索引 `blog_img`
--
ALTER TABLE `blog_img`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_id_2` (`blog_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- 資料表索引 `booking_dates`
--
ALTER TABLE `booking_dates`
  ADD PRIMARY KEY (`booking_dates_id`),
  ADD KEY `stores_id` (`stores_id`);

--
-- 資料表索引 `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_ibfk_1` (`owners_id`);

--
-- 資料表索引 `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `customers_coupon`
--
ALTER TABLE `customers_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- 資料表索引 `favorite_blog`
--
ALTER TABLE `favorite_blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`,`blog_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- 資料表索引 `favorite_stores`
--
ALTER TABLE `favorite_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `store_id` (`store_id`);

--
-- 資料表索引 `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_id` (`theme_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `room_campsite_id` (`room_campsite_id`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- 資料表索引 `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`owners_id`);

--
-- 資料表索引 `rooms_campsites`
--
ALTER TABLE `rooms_campsites`
  ADD PRIMARY KEY (`rooms_campsites_id`),
  ADD KEY `stores_id` (`stores_id`);

--
-- 資料表索引 `rooms_campsites_img`
--
ALTER TABLE `rooms_campsites_img`
  ADD PRIMARY KEY (`rooms_campsites_img_id`),
  ADD KEY `stores_id` (`rooms_campsites_id`);

--
-- 資料表索引 `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- 資料表索引 `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `FK: rooms_campsites_id` (`FK: rooms_campsites_id`),
  ADD KEY `stores_id` (`stores_id`);

--
-- 資料表索引 `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`stores_id`),
  ADD KEY `stores_ibfk_1` (`owners_id`);

--
-- 資料表索引 `stores_img`
--
ALTER TABLE `stores_img`
  ADD PRIMARY KEY (`stores_img_id`),
  ADD KEY `stores_id` (`stores_id`);

--
-- 資料表索引 `stores_informations`
--
ALTER TABLE `stores_informations`
  ADD PRIMARY KEY (`stores_informations_ id`),
  ADD KEY `stores_informations_ibfk_1` (`stores_id`);

--
-- 資料表索引 `stores_tag`
--
ALTER TABLE `stores_tag`
  ADD PRIMARY KEY (`store_tag_id`),
  ADD KEY `stores_id` (`stores_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- 資料表索引 `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- 資料表索引 `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `blog_img`
--
ALTER TABLE `blog_img`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `booking_dates`
--
ALTER TABLE `booking_dates`
  MODIFY `booking_dates_id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customers_coupon`
--
ALTER TABLE `customers_coupon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `favorite_blog`
--
ALTER TABLE `favorite_blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `favorite_stores`
--
ALTER TABLE `favorite_stores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `owners`
--
ALTER TABLE `owners`
  MODIFY `owners_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `rooms_campsites`
--
ALTER TABLE `rooms_campsites`
  MODIFY `rooms_campsites_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `rooms_campsites_img`
--
ALTER TABLE `rooms_campsites_img`
  MODIFY `rooms_campsites_img_id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `stores`
--
ALTER TABLE `stores`
  MODIFY `stores_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `stores_img`
--
ALTER TABLE `stores_img`
  MODIFY `stores_img_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `stores_informations`
--
ALTER TABLE `stores_informations`
  MODIFY `stores_informations_ id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `stores_tag`
--
ALTER TABLE `stores_tag`
  MODIFY `store_tag_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `achievements`
--
ALTER TABLE `achievements`
  ADD CONSTRAINT `achievements_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `blog_img`
--
ALTER TABLE `blog_img`
  ADD CONSTRAINT `blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `booking_dates`
--
ALTER TABLE `booking_dates`
  ADD CONSTRAINT `booking_dates_ibfk_1` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `coupon`
--
ALTER TABLE `coupon`
  ADD CONSTRAINT `coupon_ibfk_1` FOREIGN KEY (`owners_id`) REFERENCES `owners` (`owners_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `customers_coupon`
--
ALTER TABLE `customers_coupon`
  ADD CONSTRAINT `customers_coupon_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customers_coupon_ibfk_2` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `favorite_blog`
--
ALTER TABLE `favorite_blog`
  ADD CONSTRAINT `favorite_blog_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_blog_ibfk_2` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `favorite_stores`
--
ALTER TABLE `favorite_stores`
  ADD CONSTRAINT `favorite_stores_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_stores_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`room_campsite_id`) REFERENCES `rooms_campsites` (`rooms_campsites_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `rooms_campsites`
--
ALTER TABLE `rooms_campsites`
  ADD CONSTRAINT `rooms_campsites_ibfk_1` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `rooms_campsites_img`
--
ALTER TABLE `rooms_campsites_img`
  ADD CONSTRAINT `rooms_campsites_img_ibfk_1` FOREIGN KEY (`rooms_campsites_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `shopping_cart_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopping_cart_ibfk_2` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopping_cart_ibfk_3` FOREIGN KEY (`FK: rooms_campsites_id`) REFERENCES `rooms_campsites` (`rooms_campsites_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopping_cart_ibfk_4` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`owners_id`) REFERENCES `owners` (`owners_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `stores_img`
--
ALTER TABLE `stores_img`
  ADD CONSTRAINT `stores_img_ibfk_1` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `stores_informations`
--
ALTER TABLE `stores_informations`
  ADD CONSTRAINT `stores_informations_ibfk_1` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `stores_tag`
--
ALTER TABLE `stores_tag`
  ADD CONSTRAINT `stores_tag_ibfk_1` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stores_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
