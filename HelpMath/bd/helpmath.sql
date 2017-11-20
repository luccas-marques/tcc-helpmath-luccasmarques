-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Nov-2017 às 19:56
-- Versão do servidor: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helpmath`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `materias`
--

CREATE TABLE `materias` (
  `idfase` int(11) NOT NULL,
  `fase` varchar(50) CHARACTER SET latin1 NOT NULL,
  `imagem` varchar(250) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `materias`
--

INSERT INTO `materias` (`idfase`, `fase`, `imagem`) VALUES
(2, 'Soma', ''),
(3, 'SubtraÃ§Ã£o', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `patchnotes`
--

CREATE TABLE `patchnotes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `texto` text NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `patchnotes`
--

INSERT INTO `patchnotes` (`id`, `titulo`, `texto`, `data`) VALUES
(1, 'PATCH NOTES 0.0.1', 'Foi criado o login para o usuario poder acessar', '2017-10-12 10:57:23'),
(2, 'Patch Notes 0.0.2', 'Foi alterado para o CAderno de campó', '2017-11-09 20:08:26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `perguntas`
--

CREATE TABLE `perguntas` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `questao` text NOT NULL,
  `id_fase` int(11) NOT NULL,
  `peso` int(11) NOT NULL,
  `pesoNegativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `perguntas`
--

INSERT INTO `perguntas` (`id`, `nome`, `questao`, `id_fase`, `peso`, `pesoNegativo`) VALUES
(1, 'Pergunta  1', 'JoÃ£ozinho tem uma cesta com 5 maÃ§Ã£s, porÃ©m a vÃ³ de JoÃ£ozinho deu a ele mais 4 maÃ§Ã£s. Quantas maÃ§Ã£s JoÃ£ozinho ficou?', 2, 10, 5),
(2, 'Pergunta 2', 'Jo?ozinho tem uma caixa com 7 bonecos, por?m a m?e de Jo?ozinho deu a ele mais 3 bonecos. Quantos bonecos Jo?ozinho ficou?', 2, 10, 5),
(3, 'Pergunta 3 ', 'Ericzinho pediu a sua mãe um par de chinelos do corinthians, porém eric já tinha um par de chinelos. Quantos pares de chinelos eric ficou?', 2, 10, 5),
(4, 'Pergunta 4', 'Luccas tinha 59 trabalhos para entregar, porém na escola Luccas recebeu em uma semana mais 16 trabalhos. Quantos trabalhos Luccas tinha que entregar', 2, 10, 5),
(5, 'Pergunta 5', 'Guilherme tinha 3 cachorros, porém Guilherme resolveu adotar mais 2 cachorros. Quantos cachorros Guilherme ficou?', 2, 10, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `respostas`
--

CREATE TABLE `respostas` (
  `id` int(11) NOT NULL,
  `resposta` int(11) NOT NULL,
  `id_pergunta` int(11) NOT NULL,
  `correta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `respostas`
--

INSERT INTO `respostas` (`id`, `resposta`, `id_pergunta`, `correta`) VALUES
(1, 4, 1, 0),
(2, 6, 1, 0),
(3, 10, 1, 0),
(4, 9, 1, 1),
(5, 4, 2, 0),
(6, 8, 2, 0),
(7, 9, 2, 0),
(8, 10, 2, 1),
(9, 2, 3, 1),
(10, 5, 3, 0),
(11, 15, 3, 0),
(12, 1, 3, 0),
(13, 69, 4, 0),
(14, 40, 4, 0),
(15, 75, 4, 1),
(16, 73, 4, 0),
(17, 7, 5, 0),
(18, 5, 5, 1),
(19, 10, 5, 0),
(20, 8, 5, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(300) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `exp` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `nivel` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`, `nome`, `exp`, `status`, `nivel`) VALUES
(19, 'admin@hmath.com', '$2y$10$d9lZrWZAt7GAzIvtezTqyuMOPs1jfg3r1Mw4XK/.mZSUBU6BvCiCi', 'admin', 65, '', ''),
(22, 'jaomarques@hotmail.com', '$2y$10$BuZjzKnllSGeyepWXqHXLeywikkiL7jTrwRdsjLDyRa5yXk/.dGq2', 'JosÃ© AmÃ©rico', 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`idfase`);

--
-- Indexes for table `patchnotes`
--
ALTER TABLE `patchnotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perguntas`
--
ALTER TABLE `perguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perguntas_idfase` (`id_fase`);

--
-- Indexes for table `respostas`
--
ALTER TABLE `respostas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resposta_pergunta` (`id_pergunta`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `materias`
--
ALTER TABLE `materias`
  MODIFY `idfase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `patchnotes`
--
ALTER TABLE `patchnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `perguntas`
--
ALTER TABLE `perguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `respostas`
--
ALTER TABLE `respostas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `perguntas`
--
ALTER TABLE `perguntas`
  ADD CONSTRAINT `perguntas_idfase` FOREIGN KEY (`id_fase`) REFERENCES `materias` (`idfase`);

--
-- Limitadores para a tabela `respostas`
--
ALTER TABLE `respostas`
  ADD CONSTRAINT `resposta_pergunta` FOREIGN KEY (`id_pergunta`) REFERENCES `perguntas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
