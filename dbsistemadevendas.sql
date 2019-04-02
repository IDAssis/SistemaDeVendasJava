-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Mar-2019 às 07:10
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsistemadevendas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `pk_id_cliente` bigint(20) UNSIGNED NOT NULL,
  `cli_nome` varchar(300) NOT NULL,
  `cli_endereco` varchar(300) NOT NULL,
  `cli_bairro` varchar(100) NOT NULL,
  `cli_cidade` varchar(200) NOT NULL,
  `cli_uf` varchar(2) NOT NULL,
  `cli_cep` varchar(9) NOT NULL,
  `cli_telefone` varchar(35) NOT NULL,
  `cli_cpf` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`pk_id_cliente`, `cli_nome`, `cli_endereco`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cep`, `cli_telefone`, `cli_cpf`) VALUES
(1, 'SERGIO', 'SERGIO', 'SERGIO', 'SERGIO', 'ES', '29160596', '32288863', '15273453780'),
(2, 'ALINEJPSDAFASDF', 'ASOFJAOSF', 'DSAOFJAOSPFJASOF', 'FJOPSAASOF', 'ES', '29160596', '33388888', '14273453780'),
(3, 'JAO', 'JAO', 'SDASDASD', 'SDADAS', 'ES', '29168593', '22222222', '29155521476'),
(4, 'FATIMA', 'FATIMA', 'FATIMA', 'FATIMA', 'ES', '29160598', '55555555', '12345678915'),
(5, 'JKLHHJK', 'LHJKLHJKLHJ', 'KLHJKLHJKL', 'HJKLHJKLHJKL', 'ES', '54364-535', '45345354345', '34534543');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_produto`
--

CREATE TABLE `tbl_produto` (
  `pk_id_produto` bigint(20) UNSIGNED NOT NULL,
  `pro_nome` varchar(300) NOT NULL,
  `pro_valor` double NOT NULL,
  `pro_estoque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_produto`
--

INSERT INTO `tbl_produto` (`pk_id_produto`, `pro_nome`, `pro_valor`, `pro_estoque`) VALUES
(1, 'SDASDASD', 10, 73),
(2, 'DSAFDSF', 10, 0),
(3, 'DSDASDASD', 10, 99),
(4, 'SADFASDFASDF', 50, -2),
(5, 'SFASDFASDF', 5.5, 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `pk_id_usuario` bigint(20) UNSIGNED NOT NULL,
  `usu_nome` varchar(150) NOT NULL,
  `usu_login` varchar(100) NOT NULL,
  `usu_senha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`pk_id_usuario`, `usu_nome`, `usu_login`, `usu_senha`) VALUES
(4, 'FDSGDFGSDFGDSGFGSDF', 'GDSFGDFG', 'sdfgdsfgsdfg'),
(5, 'SERGIO', 'SERGIO', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_vendas`
--

CREATE TABLE `tbl_vendas` (
  `pk_id_vendas` bigint(20) UNSIGNED NOT NULL,
  `fk_cliente` bigint(20) UNSIGNED NOT NULL,
  `ven_data_venda` date NOT NULL,
  `ven_valor` double NOT NULL,
  `ven_valor_total` double NOT NULL,
  `ven_desconto` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_vendas`
--

INSERT INTO `tbl_vendas` (`pk_id_vendas`, `fk_cliente`, `ven_data_venda`, `ven_valor`, `ven_valor_total`, `ven_desconto`) VALUES
(6, 1, '2019-03-29', 10, 10, 0),
(7, 1, '2019-03-29', 400, 400, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_vendas_produtos`
--

CREATE TABLE `tbl_vendas_produtos` (
  `pk_id_venda_produto` bigint(20) UNSIGNED NOT NULL,
  `fk_produto` bigint(20) UNSIGNED NOT NULL,
  `fk_vendas` bigint(20) UNSIGNED NOT NULL,
  `ven_pro_valor` double NOT NULL,
  `ven_pro_quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_vendas_produtos`
--

INSERT INTO `tbl_vendas_produtos` (`pk_id_venda_produto`, `fk_produto`, `fk_vendas`, `ven_pro_valor`, `ven_pro_quantidade`) VALUES
(21, 1, 6, 10, 1),
(22, 1, 7, 10, 10),
(23, 1, 7, 10, 10),
(24, 1, 7, 10, 10),
(25, 1, 7, 10, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`pk_id_cliente`),
  ADD UNIQUE KEY `pk_id_cliente` (`pk_id_cliente`);

--
-- Indexes for table `tbl_produto`
--
ALTER TABLE `tbl_produto`
  ADD PRIMARY KEY (`pk_id_produto`),
  ADD UNIQUE KEY `pk_id_produto` (`pk_id_produto`);

--
-- Indexes for table `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`pk_id_usuario`),
  ADD UNIQUE KEY `pk_id_usuario` (`pk_id_usuario`);

--
-- Indexes for table `tbl_vendas`
--
ALTER TABLE `tbl_vendas`
  ADD PRIMARY KEY (`pk_id_vendas`),
  ADD KEY `fk_cliente` (`fk_cliente`);

--
-- Indexes for table `tbl_vendas_produtos`
--
ALTER TABLE `tbl_vendas_produtos`
  ADD PRIMARY KEY (`pk_id_venda_produto`),
  ADD KEY `fkproduto` (`fk_produto`),
  ADD KEY `fkvendas` (`fk_vendas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `pk_id_cliente` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_produto`
--
ALTER TABLE `tbl_produto`
  MODIFY `pk_id_produto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `pk_id_usuario` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_vendas`
--
ALTER TABLE `tbl_vendas`
  MODIFY `pk_id_vendas` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_vendas_produtos`
--
ALTER TABLE `tbl_vendas_produtos`
  MODIFY `pk_id_venda_produto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tbl_vendas`
--
ALTER TABLE `tbl_vendas`
  ADD CONSTRAINT `tbl_vendas_ibfk_1` FOREIGN KEY (`fk_cliente`) REFERENCES `tbl_cliente` (`pk_id_cliente`);

--
-- Limitadores para a tabela `tbl_vendas_produtos`
--
ALTER TABLE `tbl_vendas_produtos`
  ADD CONSTRAINT `tbl_vendas_produtos_ibfk_1` FOREIGN KEY (`fk_produto`) REFERENCES `tbl_produto` (`pk_id_produto`),
  ADD CONSTRAINT `tbl_vendas_produtos_ibfk_2` FOREIGN KEY (`fk_vendas`) REFERENCES `tbl_vendas` (`pk_id_vendas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
