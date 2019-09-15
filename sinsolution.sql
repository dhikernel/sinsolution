-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 15-Set-2019 às 16:31
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aniversario`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `criado_em` datetime NOT NULL,
  `atualizado_em` datetime NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `email`, `phone`, `password`, `role`, `photo`, `criado_em`, `atualizado_em`, `remember_token`, `status`) VALUES
(1, 'Diego San', 'admin', 'admin@gmail.com', '(91) 9.8248-2617', '$2y$10$bZdo3kSM3S5.56.Flt/vMO5IPyQDmik6lbQ/3I23T8sp6XMwXRAge', 'administrator', '15587134846Fpdiegosan.png', '2017-01-24 03:21:40', '2019-09-15 13:26:53', 'EO8SQSS5xWtOfBpQ2HMid8ZzYKSHPaNciVGHiiFeMhUF5a6thwN80ktC7G09', 1),
(11, 'Diego San Teste Novo', 'teste', 'teste@gmail.com', '(91)9999-99999', '$2y$10$Q0yFdqMs653.CwT6F6FPhuEh1xrwJMX4dL.EBQy/f1t8oQaqm0jzG', 'colaborador', 'SIadiegosan.png', '2019-05-29 14:00:36', '2019-05-29 14:00:36', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `galeria_produto`
--

DROP TABLE IF EXISTS `galeria_produto`;
CREATE TABLE IF NOT EXISTS `galeria_produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produtoid` int(11) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `stasus` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `galeria_produto`
--

INSERT INTO `galeria_produto` (`id`, `produtoid`, `imagem`, `stasus`) VALUES
(218, 81, 'df156849236819164198605cc317cdd48af.jpg', 1),
(219, 81, '32156849236819288531975d3994e0cf95c.jpg', 1),
(220, 81, 'UT156849236819449302555cdee1fb17aec.jpg', 1),
(221, 81, '2n156849236819656169225d128006a15a0.jpg', 1),
(222, 81, 'gY156849236820683430665d3994dd42a1e.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `page_settings`
--

DROP TABLE IF EXISTS `page_settings`;
CREATE TABLE IF NOT EXISTS `page_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact` text CHARACTER SET latin1 NOT NULL,
  `contact_email` text CHARACTER SET latin1 NOT NULL,
  `about` text CHARACTER SET latin1 NOT NULL,
  `faq` text CHARACTER SET latin1 NOT NULL,
  `welcome_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `welcome_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `welcome_description` text COLLATE utf8_unicode_ci,
  `welcome_link` text COLLATE utf8_unicode_ci,
  `slider_status` int(11) DEFAULT '1',
  `split_status` int(11) DEFAULT '1',
  `welcome_status` int(11) DEFAULT '1',
  `service_status` int(11) DEFAULT '1',
  `category_status` int(11) DEFAULT '1',
  `counter_status` int(11) DEFAULT '1',
  `latest_status` int(11) DEFAULT '1',
  `featured_status` int(11) DEFAULT '1',
  `lot` int(11) DEFAULT '1',
  `portfolio_status` int(11) DEFAULT '1',
  `testimonial_status` int(11) DEFAULT '1',
  `blog_status` int(11) DEFAULT '1',
  `partners_status` int(11) DEFAULT '1',
  `home_reg_status` int(11) DEFAULT '1',
  `w_b_status` int(11) NOT NULL DEFAULT '1',
  `c_status` int(11) DEFAULT NULL,
  `a_status` int(11) NOT NULL,
  `f_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `page_settings`
--

INSERT INTO `page_settings` (`id`, `contact`, `contact_email`, `about`, `faq`, `welcome_title`, `welcome_image`, `welcome_description`, `welcome_link`, `slider_status`, `split_status`, `welcome_status`, `service_status`, `category_status`, `counter_status`, `latest_status`, `featured_status`, `lot`, `portfolio_status`, `testimonial_status`, `blog_status`, `partners_status`, `home_reg_status`, `w_b_status`, `c_status`, `a_status`, `f_status`) VALUES
(1, 'Enviado com sucesso! Obrigado por nos contactar, entraremos em contato com você em breve. Ou chame no whats 54 996542326', 'nx3designer@gmail.com', '<h2 style=\"margin-bottom: 20px; font-family: Poppins, sans-serif; font-weight: 200; line-height: 60px; font-size: 50px;\"><font color=\"#000000\">Sistema completo para leilões online</font></h2><h2><p class=\"subtitle\" style=\"margin-top: 10px; margin-bottom: 30px; font-size: 13px; line-height: 28px; font-family: Poppins, sans-serif;\"><font color=\"#000000\">TJ-SP, DETRAN, JUDICIAIS, EXTRA JUDICIAIS, RESTRITOS, VENDA DIRETA</font></p><p style=\"margin-top: 10px; margin-bottom: 30px; font-weight: 400; font-size: 16px; line-height: 28px; font-family: Poppins, sans-serif;\"><font color=\"#000000\">O sistema de leilão possui recursos completos para realização de leilões online, com lances ao vivo e presencial, on-line ou simultâneo.</font></p></h2>', '<div>\r\n<h2>What is Lorem Ipsum, Really?</h2>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p>\r\n</div><div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the\r\n readable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for \'lorem ipsum\' will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).</p>\r\n</div><br><div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It\r\n has roots in a piece of classical Latin literature from 45 BC, making \r\nit over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section \r\n1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is\r\n reproduced below for those interested. Sections 1.10.32 and 1.10.33 \r\nfrom \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in \r\ntheir exact original form, accompanied by English versions from the 1914\r\n translation by H. Rackham.</p>\r\n</div>\r\n<h2>Where can I get some?</h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have suffered alteration in some form, by injected humour, \r\nor randomised words which don\'t look even slightly believable. If you \r\nare going to use a passage of Lorem Ipsum, you need to be sure there \r\nisn\'t anything embarrassing hidden in the middle of text. All the Lorem \r\nIpsum generators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.</p>', NULL, 'ieF15-Usamos.jpg', NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condicao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` text COLLATE utf8_unicode_ci,
  `preco` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `destaque` int(11) DEFAULT '0',
  `imagem_destaque` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `titulo`, `condicao`, `tipo`, `categoria`, `descricao`, `preco`, `destaque`, `imagem_destaque`, `status`) VALUES
(81, 'Produto mark 2', 'usado', 'tipo 2', 'categoria 1', '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>', '1700', 1, '1568557088H-17-700x500.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `footer` varchar(255) DEFAULT NULL,
  `testi_status` int(11) DEFAULT NULL,
  `css_file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `title`, `url`, `footer`, `testi_status`, `css_file`) VALUES
(1, 'logo.png', 'favicon.ico', 'SIN SOLUTIONS', 'Deus É Fiel', 'SIN SOLUTIONS', 1, 'style.css');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
CREATE TABLE IF NOT EXISTS `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `data_de_nascimento` varchar(20) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `criado_em` datetime NOT NULL,
  `atualizado_em` datetime NOT NULL,
  `relembrar_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `foto` varchar(255) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `nome`, `email`, `data_de_nascimento`, `usuario`, `password`, `criado_em`, `atualizado_em`, `relembrar_token`, `status`, `foto`, `descricao`) VALUES
(44, 'Teste', 'dhipereira21@gmail.com', '01-01-1950', 'teste', '123456', '2019-09-14 09:32:11', '2019-09-15 11:19:40', NULL, 1, '1568557180H-17-700x500.jpg', NULL),
(43, 'teste', 'teste@gmail.com', '14-09-2019 00:00:00', 'diego', '123456', '2019-09-14 09:15:40', '2019-09-15 11:21:03', NULL, 1, '1568557263g-700x500.jpg', 'teste');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
