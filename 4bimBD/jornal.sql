-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Out-2020 às 14:09
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1930),
(1931),
(1932),
(1933),
(1934),
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codcategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codcategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Entretenimento'),
(3, 'Política'),
(4, 'Saúde'),
(5, 'Educação'),
(6, 'Infra Estrutura');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codnoticia` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `noticia` text DEFAULT NULL,
  `codredator` int(11) DEFAULT NULL,
  `codcategoria` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codnoticia`, `titulo`, `noticia`, `codredator`, `codcategoria`, `dia`, `mes`, `ano`) VALUES
(1, 'Trump diz que terá alta do hospital hoje e pede: \'Não tenham medo da covid\'', '\r\nDonald Trump anunciou que vai deixar hoje, às 19h30 (horário de Brasília), o hospital em que está internado desde a última sexta-feira, após contrair a covid-19. Em seu Twitter, o presidente dos Estados Unidos disse estar \"se sentindo melhor do que estava há 20 anos\" e pediu para que as pessoas \"não tenham medo da covid\".\r\n\r\n\"Eu vou deixar o ótimo centro médico Walter Reed hoje. Me sentindo muito bem. Não tenha medo da covid. Não deixe ela dominar a sua vida. Nós desenvolvemos no governo Trump ótimos medicamentos e pesquisa. Me sinto melhor do que há 20 anos\", ele escreveu em seu perfil.', 1, 4, 5, 10, 2020),
(2, 'Jovem lateral Lucas Sena, do Santos, é internado na UTI por problemas intestinais', 'O lateral esquerdo Lucas Sena, do Santos, foi internado na UTI (Unidade de Terapia Intensiva) do Hospital Albert Einstein, em São Paulo, com uma obstrução intestinal.\r\n\r\nO problema foi causado pela formação de bridas intestinais, cicatrizes internas que formam “pontes” ligando os órgãos abdominais entre si ou à parede do abdômen, geralmente formadas após uma cirurgia abdominal.\r\n\r\nO jogador de 19 anos fez uma cirurgia de apendicite há cinco anos e agora sofreu com essa complicação.', 3, 1, 12, 6, 2020),
(3, 'Governo de SP anuncia abertura do período de matrículas para ano letivo de 2021', 'O Governador João Doria anunciou nesta segunda-feira (5) a abertura do período de matrículas para o ano de letivo de 2021 na rede estadual a partir desta terça-feira (6). O prazo para os alunos que já fazem parte da rede vai até o dia 16 de outubro e a solicitação deve ser feita pelo aplicativo Minha Escola SP ou pela plataforma Secretaria Escolar Digital (SED).\r\n“Para os alunos que ainda não fazem parte da rede estadual, o prazo da matrícula vai até o dia 30 de outubro. Os pais e interessados podem procurar qualquer escola estadual, a diretoria de ensino ou os postos do Poupatempo em todo o estado de São Paulo”, explicou Doria.', 2, 5, 5, 10, 2020),
(4, 'Programa Mundial de Alimentos da ONU ganha Nobel da Paz', 'O programa da ONU foi laureado pelos seus esforços em combater a fome e por sua contribuição para melhorar as condições de paz em zonas de conflito. Neste ano já foram concedidos os prêmios de medicina, química, física e literatura.\r\nO prêmio Nobel da Paz de 2020 foi concedido ao Programa Mundial de Alimentos da ONU, que combate a fome no mundo, nesta sexta-feira (9).\r\n\r\nSegundo a Academia Sueca, o programa foi premiado \"pelos seus esforços para combater a fome, pela sua contribuição para melhorar as condições para a paz em áreas afetadas por conflitos e por atuar como força motriz nos esforços para prevenir o uso da fome como arma de guerra e conflito\".', 3, 4, 9, 10, 2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codredator` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `cidade` varchar(200) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codredator`, `nome`, `sobrenome`, `email`, `ddd`, `telefone`, `cidade`, `codTurma`, `dia`, `mes`, `ano`) VALUES
(1, 'Luana ', 'Rocha', 'luana@gmail.com', 11, '11111-4444', 'Mauá', 1, 3, 10, 1992),
(2, 'Carla', 'Melo', 'carla@gmail.com', 11, '22222-4567', 'Ribeirão Pires', 6, 12, 8, 1994),
(3, 'Rafaela', 'Pinheiro', 'rafaela@gmail.com', 11, '23456-8888', 'Santo André', 2, 3, 1, 1985),
(4, 'Carlos Roberto', 'Silva', 'carlosroberto@gmail.com', 11, '56789-9876', 'Santo andré', 5, 24, 12, 1988);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1F'),
(5, '2F'),
(6, '3F');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codcategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codnoticia`),
  ADD KEY `codredator` (`codredator`),
  ADD KEY `codcategoria` (`codcategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codredator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codnoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codredator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codredator`) REFERENCES `redator` (`codredator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codcategoria`) REFERENCES `categoria` (`codcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
