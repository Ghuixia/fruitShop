-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2019-04-26 07:36:31
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

SET NAMES UTF8;
DROP DATABASE IF EXISTS shop;
CREATE DATABASE shop CHARSET=UTF8;
USE shop;

--
-- 表的结构 `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `src` varchar(100) NOT NULL,
  `dname` varchar(20) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `count` int(11) NOT NULL,
  `cprice` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `classify`
--

CREATE TABLE `classify` (
  `cid` int(11) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `clas1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `classify`
--

INSERT INTO `classify` (`cid`, `cname`, `clas1`) VALUES
(1, '精品水果', 1),
(2, '精品干果', 2),
(3, '美味仁果', 3),
(4, '香甜浆果', 4);

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE `goods` (
  `sid` int(11) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `img_url` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `clas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`sid`, `sname`, `img_url`, `price`, `clas`) VALUES
(1, '鲜草莓', 'img/1.jpg', '6.00', 1),
(2, '新鲜橙子', 'img/2.jpg', '5.00', 1),
(3, '白心柚', 'img/3.jpg', '6.00', 1),
(4, '蛇果', 'img/4.jpg', '7.00', 1),
(5, '无花果', 'img/5.jpg', '4.00', 1),
(6, '芒果', 'img/6.jpg', '8.00', 1),
(7, '香蕉', 'img/7.jpg', '3.00', 1),
(8, '红心柚', 'img/8.jpg', '8.00', 1),
(9, '松仁', 'img/9.jpg', '7.00', 2),
(10, '巴旦木', 'img/10.jpg', '10.00', 2),
(11, '红瓜子', 'img/11.jpg', '5.00', 2),
(12, '碧根果', 'img/12.jpg', '7.00', 2),
(13, '核桃', 'img/13.jpg', '6.00', 2),
(14, '开心果', 'img/14.jpg', '8.00', 2),
(15, '板栗', 'img/15.jpg', '8.00', 2),
(16, '花生', 'img/16.jpg', '12.00', 2),
(17, '甜梨', 'img/17.jpg', '8.00', 3),
(18, '山竹', 'img/18.jpg', '13.00', 3),
(19, '青梨', 'img/19.jpg', '5.00', 3),
(20, '紫葡萄', 'img/20.jpg', '5.00', 3),
(21, '黄桃', 'img/21.jpg', '7.00', 3),
(22, '雪梨', 'img/22.jpg', '8.00', 3),
(23, '巴梨', 'img/23.jpg', '9.00', 3),
(24, '杨桃', 'img/24.jpg', '12.00', 3),
(25, '香桃', 'img/25.jpg', '9.00', 4),
(26, '樱桃', 'img/26.jpg', '13.00', 4),
(27, '果子', 'img/27.jpg', '5.00', 4),
(28, '山楂', 'img/28.jpg', '6.00', 4),
(29, '红果', 'img/29.jpg', '7.00', 4),
(30, '李子', 'img/30.jpg', '10.00', 4),
(31, '番茄', 'img/31.jpg', '3.00', 4),
(32, '葡萄', 'img/32.jpg', '6.00', 4);

-- --------------------------------------------------------

--
-- 表的结构 `goods_detail`
--

CREATE TABLE `goods_detail` (
  `did` int(11) NOT NULL,
  `dname` varchar(30) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `kefu` varchar(11) DEFAULT NULL,
  `sprice` decimal(10,2) DEFAULT NULL,
  `src1` varchar(50) DEFAULT NULL,
  `src2` varchar(50) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `clas1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods_detail`
--

INSERT INTO `goods_detail` (`did`, `dname`, `price`, `kefu`, `sprice`, `src1`, `src2`, `stock`, `clas1`) VALUES
(1, '鲜草莓', '6.00', '13271596254', '6.00', 'img/cm.jpg', 'img/cm1.jpg', 20, 1),
(2, '新鲜橙子', '5.00', '13271596254', '5.00', 'img/cz.jpg', 'img/cz1.jpg', 20, 1),
(3, '白心柚', '6.00', '13271596254', '6.00', 'img/bx.jpg', 'img/bx1.jpg', 20, 1),
(4, '蛇果', '7.00', '13271596254', '7.00', 'img/sg.jpg', 'img/sg1.jpg', 20, 1),
(5, '无花果', '4.00', '13271596254', '4.00', 'img/wh.jpg', 'img/wh1.jpg', 20, 1),
(6, '芒果', '8.00', '13271596254', '8.00', 'img/mg.jpg', 'img/mg1.jpg', 20, 1),
(7, '香蕉', '3.00', '13271596254', '3.00', 'img/xj.jpg', 'img/xj1.jpg', 20, 1),
(8, '红心柚', '8.00', '13271596254', '8.00', 'img/hx.jpg', 'img/hx1.jpg', 20, 1),
(9, '松仁', '7.00', '13271596254', '7.00', 'img/sr.jpg', 'img/sr1.jpg', 20, 2),
(10, '巴旦木', '10.00', '13271596254', '10.00', 'img/bd.jpg', 'img/bd1.jpg', 20, 2),
(11, '红瓜子', '5.00', '13271596254', '5.00', 'img/hg.jpg', 'img/hg1.jpg', 20, 2),
(12, '碧根果', '7.00', '13271596254', '7.00', 'img/bg.jpg', 'img/bg1.jpg', 20, 2),
(13, '核桃', '6.00', '13271596254', '6.00', 'img/ht.jpg', 'img/ht1.jpg', 20, 2),
(14, '开心果', '8.00', '13271596254', '8.00', 'img/kx.jpg', 'img/kx1.jpg', 20, 2),
(15, '板栗', '8.00', '13271596254', '8.00', 'img/bl.jpg', 'img/bl1.jpg', 20, 2),
(16, '花生', '12.00', '13271596254', '12.00', 'img/hs.jpg', 'img/hs1.jpg', 20, 2),
(17, '甜梨', '8.00', '13271596254', '8.00', 'img/tl.jpg', 'img/tl1.jpg', 20, 3),
(18, '山竹', '13.00', '13271596254', '13.00', 'img/sz.jpg', 'img/sz11.jpg', 20, 3),
(19, '青梨', '5.00', '13271596254', '5.00', 'img/xl.jpg', 'img/xl1.jpg', 20, 3),
(20, '紫葡萄', '5.00', '13271596254', '5.00', 'img/pt.jpg', 'img/pt1.jpg', 20, 3),
(21, '黄桃', '7.00', '13271596254', '7.00', 'img/hht.jpg', 'img/hht1.jpg', 20, 3),
(22, '雪梨', '8.00', '13271596254', '8.00', 'img/xl.jpg', 'img/xl1.jpg', 20, 3),
(23, '巴梨', '9.00', '13271596254', '9.00', 'img/bll.jpg', 'img/bll1.jpg', 20, 3),
(24, '杨桃', '12.00', '13271596254', '12.00', 'img/ytt.jpg', 'img/ytt1.jpg', 20, 3),
(25, '香桃', '9.00', '13271596254', '9.00', 'img/tt.jpg', 'img/tt1.jpg', 20, 4),
(26, '樱桃', '13.00', '13271596254', '13.00', 'img/yt.jpg', 'img/yt1.jpg', 20, 4),
(27, '果子', '5.00', '13271596254', '5.00', 'img/gz.jpg', 'img/gz1.jpg', 20, 4),
(28, '山楂', '6.00', '13271596254', '6.00', 'img/szz.jpg', 'img/szz1.jpg', 20, 4),
(29, '红果', '7.00', '13271596254', '7.00', 'img/hgg.jpg', 'img/hgg1.jpg', 20, 4),
(30, '李子', '10.00', '13271596254', '10.00', 'img/lz.jpg', 'img/lz1.jpg', 20, 4),
(31, '番茄', '3.00', '13271596254', '3.00', 'img/fq.jpg', 'img/fq1.jpg', 20, 4),
(32, '葡萄', '6.00', '13271596254', '6.00', 'img/pt.jpg', 'img/pt1.jpg', 20, 4);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `avatar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `uname`, `avatar`) VALUES
(1, '文文', 'https://wx.qlogo.cn/mmopen/vi_32/VGbg1PhNF6YbWRlWKfTpQl2Yon5asSu4op31FKyOPUukNPy1GM8GHMrLpfUkH66MDrct488cgsydFmMjV27BvQ/132');

-- --------------------------------------------------------

--
-- 表的结构 `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `addre` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_address`
--

INSERT INTO `user_address` (`id`, `uid`, `uname`, `phone`, `addre`, `address`, `status`) VALUES
(1, 1, '笑笑', '15698523654', '河南省郑州市', '新密109', 0),
(4, 1, '文文', '13586923621', '河南省商丘市', '虞城108', 1),
(10, 1, '楠楠', '15623456789', '河南省', '商丘108', 0),
(13, 1, '玉玉', '13546789503', '三门峡', '二单元109', 0);

-- --------------------------------------------------------

--
-- 表的结构 `user_order`
--

CREATE TABLE `user_order` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `did` int(11) DEFAULT NULL,
  `dname` varchar(30) DEFAULT NULL,
  `src` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `cprice` decimal(10,2) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `tro` varchar(20) DEFAULT NULL,
  `code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_order`
--

INSERT INTO `user_order` (`id`, `uid`, `did`, `dname`, `src`, `price`, `count`, `cprice`, `ctime`, `tro`, `code`) VALUES
(32, 1, 11, '红瓜子', 'http://127.0.0.1:3000/img/hg1.jpg', '5.00', 3, '15.00', '2019-04-12 16:51:20', '201904121651201', 1),
(35, 1, 7, '香蕉', 'http://127.0.0.1:3000/img/xj1.jpg', '3.00', 2, '6.00', '2019-04-12 16:57:25', '201904121657213', 1),
(142, 1, 20, '紫葡萄', 'http://127.0.0.1:3000/img/pt1.jpg', '5.00', 2, '10.00', '2019-04-20 21:17:10', '201904202117645', 1),
(209, 1, 13, '核桃', 'http://127.0.0.1:3000/img/ht1.jpg', '6.00', 2, '12.00', '2019-04-26 13:22:45', '201904261322179', 0);

-- --------------------------------------------------------

--
-- 表的结构 `user_store`
--

CREATE TABLE `user_store` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `dname` varchar(20) NOT NULL,
  `src` varchar(50) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_store`
--

INSERT INTO `user_store` (`id`, `uid`, `did`, `dname`, `src`, `price`) VALUES
(1, 1, 1, '鲜草莓', 'http://127.0.0.1:3000/img/cm1.jpg', '6'),
(2, 1, 2, '新鲜橙子', 'http://127.0.0.1:3000/img/cz1.jpg', '5'),
(3, 1, 5, '无花果', 'http://127.0.0.1:3000/img/wh1.jpg', '4'),
(4, 1, 4, '蛇果', 'http://127.0.0.1:3000/img/sg1.jpg', '7'),
(5, 1, 13, '核桃', 'http://127.0.0.1:3000/img/ht1.jpg', '6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classify`
--
ALTER TABLE `classify`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `goods_detail`
--
ALTER TABLE `goods_detail`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_store`
--
ALTER TABLE `user_store`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- 使用表AUTO_INCREMENT `classify`
--
ALTER TABLE `classify`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- 使用表AUTO_INCREMENT `goods_detail`
--
ALTER TABLE `goods_detail`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `user_order`
--
ALTER TABLE `user_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;
--
-- 使用表AUTO_INCREMENT `user_store`
--
ALTER TABLE `user_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
