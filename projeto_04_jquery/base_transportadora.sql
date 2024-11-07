-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 06-Nov-2024 às 23:38
-- Versão do servidor: 5.7.11
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `base_transportadora`
--
CREATE DATABASE IF NOT EXISTS `base_transportadora` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `base_transportadora`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_movimentacoes`
--

CREATE TABLE `tb_movimentacoes` (
  `id_movi` bigint(20) NOT NULL,
  `cod_rastreio` bigint(20) NOT NULL,
  `tipo_movimentacao` varchar(50) DEFAULT NULL,
  `data_hora_movi` datetime NOT NULL,
  `origem` varchar(50) NOT NULL,
  `destino` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_movimentacoes`
--

INSERT INTO `tb_movimentacoes` (`id_movi`, `cod_rastreio`, `tipo_movimentacao`, `data_hora_movi`, `origem`, `destino`) VALUES
(1, 100001, 'Em trânsito', '2024-10-16 00:51:00', 'São Paulo/SP', 'Guarulhos/SP'),
(3, 100001, 'Em trânsito', '2024-10-17 00:51:00', 'Guarulhos/SP', 'Rio de Janeiro/RJ'),
(4, 100001, 'Em trânsito', '2024-10-20 00:51:00', 'Rio de Janeiro/RJ', 'Jaboatão do Guararapes/PE'),
(5, 100001, 'Em trânsito', '2024-10-20 20:51:00', 'Jaboatão do Guararapes/PE', 'Recife/PE'),
(6, 100001, 'Saiu para entrega', '2024-10-20 21:51:00', 'Recife/PE', 'Recife/PE'),
(7, 200002, 'Postado', '2024-10-18 09:30:00', 'São Paulo/SP', 'Campinas/SP'),
(8, 200002, 'Em trânsito', '2024-10-19 15:00:00', 'Campinas/SP', 'Belo Horizonte/MG'),
(9, 200002, 'Em trânsito', '2024-10-20 08:45:00', 'Belo Horizonte/MG', 'Salvador/BA'),
(10, 200002, 'Saiu para entrega', '2024-10-21 10:15:00', 'Salvador/BA', 'Recife/PE'),
(11, 200002, 'Entregue', '2024-10-21 16:45:00', 'Recife/PE', 'Recife/PE'),
(12, 300003, 'Postado', '2024-11-01 08:20:00', 'Curitiba/PR', 'Joinville/SC'),
(13, 300003, 'Em trânsito', '2024-11-02 13:45:00', 'Joinville/SC', 'Florianópolis/SC'),
(14, 300003, 'Em trânsito', '2024-11-03 10:10:00', 'Florianópolis/SC', 'Porto Alegre/RS'),
(15, 300003, 'Saiu para entrega', '2024-11-04 09:00:00', 'Porto Alegre/RS', 'Pelotas/RS'),
(16, 300003, 'Entregue', '2024-11-04 15:30:00', 'Pelotas/RS', 'Pelotas/RS'),
(17, 400004, 'Postado', '2024-11-02 07:45:00', 'Manaus/AM', 'Belém/PA'),
(18, 400004, 'Em trânsito', '2024-11-03 12:30:00', 'Belém/PA', 'São Luís/MA'),
(19, 400004, 'Em trânsito', '2024-11-04 09:15:00', 'São Luís/MA', 'Fortaleza/CE'),
(20, 400004, 'Em trânsito', '2024-11-05 16:00:00', 'Fortaleza/CE', 'Natal/RN'),
(21, 400004, 'Em trânsito', '2024-11-06 11:45:00', 'Natal/RN', 'João Pessoa/PB'),
(22, 400004, 'Em trânsito', '2024-11-07 14:20:00', 'João Pessoa/PB', 'Recife/PE'),
(23, 400004, 'Saiu para entrega', '2024-11-08 09:10:00', 'Recife/PE', 'Salvador/BA'),
(24, 400004, 'Entregue', '2024-11-09 16:30:00', 'Salvador/BA', 'Salvador/BA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_movimentacoes`
--
ALTER TABLE `tb_movimentacoes`
  ADD PRIMARY KEY (`id_movi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_movimentacoes`
--
ALTER TABLE `tb_movimentacoes`
  MODIFY `id_movi` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
