-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: bd:3306
-- Tiempo de generación: 18-01-2023 a las 20:21:35
-- Versión del servidor: 5.7.40
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurant`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Menu`
--

CREATE TABLE `Menu` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descr` varchar(1000) NOT NULL,
  `img` varchar(10500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Menu`
--

INSERT INTO `Menu` (`id`, `nombre`, `descr`, `img`) VALUES
(1, 'CHILDREN', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et', 'https://images.squarespace-cdn.com/content/v1/5a6a6f73cf81e09e3e850d19/1583517562023-8NEB02CG9YW2BSIW3I2H/SUSHI-FOR-KIDS-CLASS.jpg?format=1500w'),
(2, 'SPECIAL', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et', 'https://www.kobeteppanyaki.com.au/wp-content/uploads/2019/09/shutterstock_379170394.jpg'),
(3, 'PREMIUM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et', 'https://st2.depositphotos.com/2609755/8978/i/600/depositphotos_89781424-stock-photo-premium-quality-sushi-over-black.jpg'),
(4, 'STAR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdws0zz7d7N7DUxl38DbXpxilUDVmZXPG_N4KnlGk2n6G4kin6'),
(5, 'TRADITIONAL', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQzMQEBqfrz3bpwjLJeHx7luE8nZ6ceFR7t-vwtAG_ilR8r_gLu'),
(6, 'NOT SPECIFY', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_reserved`
--

CREATE TABLE `order_reserved` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `order_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `order_reserved`
--

INSERT INTO `order_reserved` (`id`, `name`, `order_`) VALUES
(1, 'user_id', 1),
(2, 'table_id', 0),
(3, 'menu_id', 0),
(4, 'date', 0),
(5, 'hour', 0),
(6, 'n_comensales', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Table_`
--

CREATE TABLE `Table_` (
  `id` int(11) NOT NULL,
  `reserved` tinyint(1) NOT NULL DEFAULT '0',
  `place` varchar(200) NOT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Table_`
--

INSERT INTO `Table_` (`id`, `reserved`, `place`, `img`) VALUES
(1, 1, 'First Floor', 'https://asiagardens.es/blog/wp-content/uploads/portadarestaurantesjaponeses.jpg'),
(2, 0, 'First Floor', 'https://asiagardens.es/blog/wp-content/uploads/portadarestaurantesjaponeses.jpg'),
(3, 0, 'First Floor', 'https://asiagardens.es/blog/wp-content/uploads/portadarestaurantesjaponeses.jpg'),
(4, 0, 'First Floor', 'https://asiagardens.es/blog/wp-content/uploads/portadarestaurantesjaponeses.jpg'),
(5, 0, 'First Floor', 'https://asiagardens.es/blog/wp-content/uploads/portadarestaurantesjaponeses.jpg'),
(6, 0, 'First Floor', 'https://asiagardens.es/blog/wp-content/uploads/portadarestaurantesjaponeses.jpg'),
(7, 0, 'Second Floor', 'https://www.experimenta.es/wp-content/uploads/2019/04/sergey-makhno-Fujiwara-Yoshi-07-800x533.jpg'),
(8, 1, 'Second Floor', 'https://www.experimenta.es/wp-content/uploads/2019/04/sergey-makhno-Fujiwara-Yoshi-07-800x533.jpg'),
(9, 0, 'Second Floor', 'https://www.experimenta.es/wp-content/uploads/2019/04/sergey-makhno-Fujiwara-Yoshi-07-800x533.jpg'),
(10, 0, 'Second Floor', 'https://www.experimenta.es/wp-content/uploads/2019/04/sergey-makhno-Fujiwara-Yoshi-07-800x533.jpg'),
(11, 0, 'Second Floor', 'https://www.experimenta.es/wp-content/uploads/2019/04/sergey-makhno-Fujiwara-Yoshi-07-800x533.jpg'),
(12, 0, 'Terrace', 'https://abcmallorcastorage.blob.core.windows.net/images/2020/06/the-merchants-restaurant-32.jpg'),
(13, 0, 'Terrace', 'https://abcmallorcastorage.blob.core.windows.net/images/2020/06/the-merchants-restaurant-32.jpg'),
(14, 0, 'Terrace', 'https://abcmallorcastorage.blob.core.windows.net/images/2020/06/the-merchants-restaurant-32.jpg'),
(15, 0, 'Terrace', 'https://abcmallorcastorage.blob.core.windows.net/images/2020/06/the-merchants-restaurant-32.jpg'),
(16, 0, 'Terrace', 'https://abcmallorcastorage.blob.core.windows.net/images/2020/06/the-merchants-restaurant-32.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(150) NOT NULL,
  `email` varchar(20) NOT NULL,
  `avatar` varchar(500) NOT NULL,
  `type_` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `User`
--

INSERT INTO `User` (`id`, `username`, `password`, `email`, `avatar`, `type_`) VALUES
(1, 'reif400', '$2a$10$gX4C1ytNOvZ0E2gX4aG3t.h9qOaYVdCObx7YwZS/Ls6pyPaZ7pgdu', 'aaa@gmail.com', 'https://avatars.dicebear.com/api/adventurer-neutral/biosking.svg', 1),
(2, 'pepita', '$2a$10$gX4C1ytNOvZ0E2gX4aG3t.h9qOaYVdCObx7YwZS/Ls6pyPaZ7pgdu', 'eee@gmail.com', 'https://avatars.dicebear.com/api/adventurer-neutral/rft400.svg', 1),
(9, 'jose', '$2a$10$gX4C1ytNOvZ0E2gX4aG3t.h9qOaYVdCObx7YwZS/Ls6pyPaZ7pgdu', 'aer@gmail.com', 'https://avatars.dicebear.com/api/adventurer-neutral/cliente.svg', 0),
(15, 'prueba', '$2y$10$7LmRoLkemy3lim6cBjTrN.ovMbg5MnzreFZje7KWfTXQMyhoT6o/q', 'prueba@gmail.com', 'https://avatars.dicebear.com/api/adventurer-neutral/cliente.svg', 0),
(24, 'admin', '$2a$10$8dYm6jLI33Ugt8Ewpk2YD.cunYRwJILo1TrsxHVEhvjk8t6soIX1C', 'admin@usednapkin.com', 'https://api.dicebear.com/5.x/micah/svg?seed=Bubba', 1),
(54, 'bioska', '$2a$10$dA822Dll2.Q.XVJZIOszCeywOOeYz8/T8f8JmYdqqtZPcodax1qjK', 'bioska@gmail.com', 'https://avatars.dicebear.com/api/adventurer-neutral/aaaate.svg', 0),
(56, 'rafaa', '$2a$10$YV/vPnIE.f2SVK6Tb0uVCu/I6ENXvSHCmrzViXdeqBCNVKqsfmxGu', 'rafa@gmail.com', 'https://api.dicebear.com/5.x/adventurer-neutral/svg?seed=rafaa', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `User_table_reserved`
--

CREATE TABLE `User_table_reserved` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `hour` int(11) NOT NULL,
  `n_comensales` int(11) NOT NULL,
  `reserved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `User_table_reserved`
--

INSERT INTO `User_table_reserved` (`id`, `user_id`, `table_id`, `menu_id`, `date`, `hour`, `n_comensales`, `reserved`) VALUES
(2, 9, 3, 4, '2023-01-11', 0, 8, 1),
(3, 2, 10, 4, '2023-01-12', 2, 4, 0),
(6, 1, 8, 2, '2021-12-11', 1, 10, 0),
(12, 1, 4, 2, '2023-01-19', 1, 2, 0),
(24, 54, 4, 4, '2023-01-19', 2, 1, 1),
(25, 54, 1, 3, '2023-01-24', 1, 1, 0),
(26, 54, 15, 4, '2023-01-14', 4, 1, 0);

--
-- Disparadores `User_table_reserved`
--
DELIMITER $$
CREATE TRIGGER `Delete_Reserved_User` AFTER DELETE ON `User_table_reserved` FOR EACH ROW begin
	UPDATE Table_ t SET reserved=0 WHERE t.id=OLD.table_id;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Reserved_Table_to_User` AFTER INSERT ON `User_table_reserved` FOR EACH ROW BEGIN
	UPDATE Table_ t SET reserved=1 WHERE t.id = NEW.table_id;
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Menu`
--
ALTER TABLE `Menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order_reserved`
--
ALTER TABLE `order_reserved`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Table_`
--
ALTER TABLE `Table_`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `User_table_reserved`
--
ALTER TABLE `User_table_reserved`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `table_id` (`table_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Menu`
--
ALTER TABLE `Menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `Table_`
--
ALTER TABLE `Table_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `User_table_reserved`
--
ALTER TABLE `User_table_reserved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `User_table_reserved`
--
ALTER TABLE `User_table_reserved`
  ADD CONSTRAINT `menu_id` FOREIGN KEY (`menu_id`) REFERENCES `Menu` (`id`),
  ADD CONSTRAINT `table_id` FOREIGN KEY (`table_id`) REFERENCES `Table_` (`id`),
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
