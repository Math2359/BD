-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Dez-2020 às 18:52
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--
CREATE DATABASE IF NOT EXISTS `escola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `escola`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `codFuncionario` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `professor` int(11) DEFAULT NULL,
  `coordinfo` int(11) DEFAULT NULL,
  `coordmedio` int(11) DEFAULT NULL,
  `coordrh` int(11) DEFAULT NULL,
  `coordpedag` int(11) DEFAULT NULL,
  `coordbibli` int(11) DEFAULT NULL,
  `diretor` int(11) DEFAULT NULL,
  `coordadm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`codFuncionario`, `nome`, `professor`, `coordinfo`, `coordmedio`, `coordrh`, `coordpedag`, `coordbibli`, `diretor`, `coordadm`) VALUES
(1, 'Carlos', 1, 1, 2, 2, 5, NULL, 3, NULL),
(2, 'Agda', 2, NULL, 2, 2, 5, NULL, 3, NULL),
(3, 'Célia', 3, NULL, NULL, NULL, NULL, NULL, 3, NULL),
(4, 'Sirlei', 4, NULL, NULL, NULL, NULL, NULL, 3, NULL),
(5, 'Amanda', 5, 1, 2, NULL, 5, NULL, 3, NULL),
(6, 'Cíntia', 6, 1, NULL, NULL, NULL, NULL, 3, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`codFuncionario`),
  ADD KEY `professor` (`professor`),
  ADD KEY `coordinfo` (`coordinfo`),
  ADD KEY `coordmedio` (`coordmedio`),
  ADD KEY `coordrh` (`coordrh`),
  ADD KEY `coordpedag` (`coordpedag`),
  ADD KEY `coordbibli` (`coordbibli`),
  ADD KEY `diretor` (`diretor`),
  ADD KEY `coordadm` (`coordadm`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `codFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`professor`) REFERENCES `funcionario` (`codFuncionario`),
  ADD CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`coordinfo`) REFERENCES `funcionario` (`codFuncionario`),
  ADD CONSTRAINT `funcionario_ibfk_3` FOREIGN KEY (`coordmedio`) REFERENCES `funcionario` (`codFuncionario`),
  ADD CONSTRAINT `funcionario_ibfk_4` FOREIGN KEY (`coordrh`) REFERENCES `funcionario` (`codFuncionario`),
  ADD CONSTRAINT `funcionario_ibfk_5` FOREIGN KEY (`coordpedag`) REFERENCES `funcionario` (`codFuncionario`),
  ADD CONSTRAINT `funcionario_ibfk_6` FOREIGN KEY (`coordbibli`) REFERENCES `funcionario` (`codFuncionario`),
  ADD CONSTRAINT `funcionario_ibfk_7` FOREIGN KEY (`diretor`) REFERENCES `funcionario` (`codFuncionario`),
  ADD CONSTRAINT `funcionario_ibfk_8` FOREIGN KEY (`coordadm`) REFERENCES `funcionario` (`codFuncionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
