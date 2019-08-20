/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50643
 Source Host           : 127.0.0.1
 Source Database       : EleSale

 Target Server Type    : MySQL
 Target Server Version : 50643
 File Encoding         : utf-8

 Date: 08/20/2019 12:36:37 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `DeliveryInfo`
-- ----------------------------
DROP TABLE IF EXISTS `DeliveryInfo`;
CREATE TABLE `DeliveryInfo` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `ExpressId` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `goodsList` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,0) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parm` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `evaScore` varchar(255) DEFAULT NULL,
  `evaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `goodsCategory`
-- ----------------------------
DROP TABLE IF EXISTS `goodsCategory`;
CREATE TABLE `goodsCategory` (
  `cateId` int(11) NOT NULL AUTO_INCREMENT,
  `1_cate` varchar(255) DEFAULT NULL,
  `2_cate` varchar(255) DEFAULT NULL,
  `3_cate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `regUser`
-- ----------------------------
DROP TABLE IF EXISTS `regUser`;
CREATE TABLE `regUser` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `isLock` varchar(255) DEFAULT NULL,
  `Tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `userEvaluation`
-- ----------------------------
DROP TABLE IF EXISTS `userEvaluation`;
CREATE TABLE `userEvaluation` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `evaContent` varchar(255) DEFAULT NULL,
  `evaScore` int(11) DEFAULT NULL,
  `isGarbage` varchar(255) DEFAULT NULL,
  `evaLevel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `userShoppingCart`
-- ----------------------------
DROP TABLE IF EXISTS `userShoppingCart`;
CREATE TABLE `userShoppingCart` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `goodsList` varchar(255) DEFAULT NULL,
  `totalPrice` decimal(10,0) DEFAULT NULL,
  `isPay` varchar(255) DEFAULT NULL,
  `isDelivery` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
