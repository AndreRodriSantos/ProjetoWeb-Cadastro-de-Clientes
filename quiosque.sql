-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Mar-2022 às 18:05
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `quiosque`
--

-- --------------------------------------------------------
CREATE database quiosque;
use database quiosque;

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `data` date NOT NULL,
  `produtoPref` tinyint(20) NOT NULL,
  `horaCadastro` int(11) NOT NULL,
  `diaSemana` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `genero`, `endereco`, `telefone`, `email`, `data`, `produtoPref`, `horaCadastro`, `diaSemana`) VALUES
(1, 'AndrezinhoGameplays', 'Masculino', '12312', '213123', 'email@seila.com', '2004-01-05', 0, 14, 6),
(3, 'Sra.veia', 'Masculino', 'Rua Turus bango', '90028922', 'Sra.veia@seila.com', '1950-01-30', 2, 14, 6),
(4, 'Sra.veia', 'Feminino', 'Rua Turus bango', '90028922', 'Sra.veia@seila.com', '1980-01-23', 1, 14, 6),
(5, 'RAFA', 'Masculino', 'Rua TurosBango', '1231312', 'rafa@seila.com', '2005-08-08', 1, 15, 6),
(7, 'bolo', 'Feminino', '123123', '213123', 'email@seila.com', '1950-03-12', 2, 16, 6),
(8, 'coca-cola', 'Masculino', 'Rua Turus bango', '213123', 'email@seila.com', '1950-05-10', 2, 13, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
