-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Dez-2020 às 20:52
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escoladm`
--
CREATE DATABASE IF NOT EXISTS `escoladm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `escoladm`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `codcarg` int(11) NOT NULL,
  `cargo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`codcarg`, `cargo`) VALUES
(1, 'Professor'),
(2, 'CoordInfo'),
(3, 'CoordPedagogico'),
(4, 'CoordEnsinoMedio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargofunc`
--

CREATE TABLE `cargofunc` (
  `codfunc` int(11) NOT NULL,
  `codcarg` int(11) NOT NULL,
  `dataentrada` date NOT NULL,
  `datasaida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargofunc`
--

INSERT INTO `cargofunc` (`codfunc`, `codcarg`, `dataentrada`, `datasaida`) VALUES
(1, 1, '2005-02-17', '0000-00-00'),
(1, 3, '2016-08-25', '2018-12-23'),
(2, 2, '2015-10-24', '2017-12-02'),
(3, 1, '2014-05-09', '0000-00-00'),
(3, 4, '2016-04-16', '0000-00-00'),
(4, 1, '2015-12-16', '0000-00-00'),
(4, 2, '2017-05-02', '0000-00-00'),
(5, 3, '2018-09-18', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `codfunc` int(11) NOT NULL,
  `nomefunc` varchar(255) NOT NULL,
  `dataentrada` date NOT NULL,
  `datasaida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`codfunc`, `nomefunc`, `dataentrada`, `datasaida`) VALUES
(1, 'Mariana', '2005-02-17', '0000-00-00'),
(2, 'Elisa', '2016-08-25', '0000-00-00'),
(3, 'Gabriel', '2018-10-24', '0000-00-00'),
(4, 'Pedro', '2014-05-09', '2020-12-02'),
(5, 'Valentina', '2016-04-16', '0000-00-00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`codcarg`);

--
-- Índices para tabela `cargofunc`
--
ALTER TABLE `cargofunc`
  ADD KEY `codfunc` (`codfunc`),
  ADD KEY `codcarg` (`codcarg`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`codfunc`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargo`
--
ALTER TABLE `cargo`
  MODIFY `codcarg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `codfunc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cargofunc`
--
ALTER TABLE `cargofunc`
  ADD CONSTRAINT `cargofunc_ibfk_1` FOREIGN KEY (`codfunc`) REFERENCES `funcionario` (`codfunc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cargofunc_ibfk_2` FOREIGN KEY (`codcarg`) REFERENCES `cargo` (`codcarg`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
