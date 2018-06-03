SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `NBA` (
  `Player_id` int(11) NOT NULL,
  `Player_No` int(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL,
  `height` float(11) NOT NULL,
  `position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date(10)

--  `id` int(11) NOT NULL,
--  `userid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
--  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
--  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `account`
--

INSERT INTO `NBA` (`Player_id`, `Player_No`, `Fname`, `Lname`, `weight`, `height`, `position`, `birthday`) VALUES
(1, '20', 'Ginobili', 'Manu', '205', '6.6', '1977-7-28'),

--7,Ginobili,Manu,G,20,6.6,205,1977-7-28

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `account`
--
ALTER TABLE `NBA`
  ADD PRIMARY KEY (`Player_id`),
--  ADD UNIQUE KEY `id` (`id`),
--  ADD KEY `id_2` (`id`),
--  ADD KEY `id_3` (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `account`
--
ALTER TABLE `NBA`
  MODIFY `Player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
