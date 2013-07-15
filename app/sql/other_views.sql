-- phpMyAdmin SQL Dump
-- version 3.5.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 15, 2013 at 08:14 AM
-- Server version: 5.5.31
-- PHP Version: 5.4.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `cred`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_provider_network_report`
--
CREATE TABLE IF NOT EXISTS `view_provider_network_report` (
`last_name` varchar(255)
,`first_name` varchar(255)
,`network_name` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_provider_status_report`
--
CREATE TABLE IF NOT EXISTS `view_provider_status_report` (
`first_name` varchar(255)
,`last_name` varchar(255)
,`status` varchar(255)
);
-- --------------------------------------------------------

--
-- Structure for view `view_provider_network_report`
--
DROP TABLE IF EXISTS `view_provider_network_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_provider_network_report` AS select `Providers`.`last_name` AS `last_name`,`Providers`.`first_name` AS `first_name`,`Networks`.`name` AS `network_name` from ((`ProviderNetworks` join `Providers` on((`ProviderNetworks`.`Provider_id` = `Providers`.`id`))) join `Networks` on((`ProviderNetworks`.`Network_id` = `Networks`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `view_provider_status_report`
--
DROP TABLE IF EXISTS `view_provider_status_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_provider_status_report` AS select `Providers`.`first_name` AS `first_name`,`Providers`.`last_name` AS `last_name`,`ProviderStates`.`name` AS `status` from (`Providers` join `ProviderStates` on((`ProviderStates`.`id` = `Providers`.`ProviderState_id`)));

