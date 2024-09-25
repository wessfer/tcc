-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/09/2024 às 12:32
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bancow`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamentos`
--

CREATE TABLE `agendamentos` (
  `id` int(11) NOT NULL,
  `cpf` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `dataagenda` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `agendamentos`
--

INSERT INTO `agendamentos` (`id`, `cpf`, `nome`, `telefone`, `dataagenda`) VALUES
(1, 112221255, '2222', '55555', '2024-08-23');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `telefone` int(20) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `data_nasc` date NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `idusuario` (`idusuario`) USING BTREE;

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
