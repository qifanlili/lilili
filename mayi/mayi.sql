-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-07-25 01:20:03
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mayi`
--

-- --------------------------------------------------------

--
-- 表的结构 `my_about`
--

CREATE TABLE `my_about` (
  `id` int(5) NOT NULL,
  `typename` char(25) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` smallint(3) NOT NULL,
  `pubdate` int(10) NOT NULL,
  `dir_type` tinyint(1) NOT NULL,
  `dir_typename` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_about`
--

INSERT INTO `my_about` (`id`, `typename`, `content`, `displayorder`, `pubdate`, `dir_type`, `dir_typename`) VALUES
(1, '网站简介', '在这里填写网站简介，填写完成后保存提交即可', 1, 0, 2, 'wangzhanjianjie'),
(2, '广告服务', '在这里填写广告服务，填写完成后保存提交即可', 2, 1263483208, 4, 'advertisement'),
(3, '联系我们', '在这里填写联系方式，填写完成后保存提交即可', 3, 0, 4, 'contactus');

-- --------------------------------------------------------

--
-- 表的结构 `my_admin`
--

CREATE TABLE `my_admin` (
  `id` int(10) NOT NULL,
  `userid` char(30) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `uname` char(20) NOT NULL DEFAULT '',
  `tname` char(30) NOT NULL DEFAULT '',
  `email` char(30) NOT NULL DEFAULT '',
  `typeid` smallint(5) NOT NULL DEFAULT '0',
  `logintime` int(10) NOT NULL DEFAULT '0',
  `loginip` varchar(20) NOT NULL DEFAULT '',
  `cityid` mediumint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_admin`
--

INSERT INTO `my_admin` (`id`, `userid`, `pwd`, `uname`, `tname`, `email`, `typeid`, `logintime`, `loginip`, `cityid`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '', '', 1, 1532412597, '::1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `my_admin_record_action`
--

CREATE TABLE `my_admin_record_action` (
  `id` int(11) NOT NULL,
  `adminid` char(30) NOT NULL,
  `pubdate` int(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_admin_record_action`
--

INSERT INTO `my_admin_record_action` (`id`, `adminid`, `pubdate`, `ip`, `action`) VALUES
(1, 'admin', 1532333074, '::1', '成功更新城市分站相关设置'),
(2, 'admin', 1532333091, '::1', '成功更新城市分站相关设置'),
(3, 'admin', 1532333307, '::1', '系统参数设置成功！'),
(4, 'admin', 1532333321, '::1', '系统参数设置成功！'),
(5, 'admin', 1532334409, '::1', '指定会员已设置通过身份证认证！'),
(6, 'admin', 1532334417, '::1', '指定会员已设置通过营业执照认证！'),
(7, 'admin', 1532334422, '::1', '指定会员已设置通过身份证认证！'),
(8, 'admin', 1532334427, '::1', '会员状态已成功调整为黄金会员!'),
(9, 'admin', 1532335447, '::1', '城市分站 北京 创建成功！'),
(10, 'admin', 1532335683, '::1', '城市分站 北京 修改成功！'),
(11, 'admin', 1532337217, '::1', '导航链接设置更新成功！'),
(12, 'admin', 1532337245, '::1', '导航链接设置更新成功！'),
(13, 'admin', 1532337292, '::1', '导航链接设置更新成功！'),
(14, 'admin', 1532338060, '::1', '城市分站 广州 创建成功！'),
(15, 'admin', 1532338120, '::1', '分站地区增加成功！'),
(16, 'admin', 1532338213, '::1', '成功删除编号为2的城市分站'),
(17, 'admin', 1532338400, '::1', '城市分站 广东 创建成功！'),
(18, 'admin', 1532338456, '::1', '城市分站 广州 创建成功！'),
(19, 'admin', 1532338499, '::1', '分站地区增加成功！'),
(20, 'admin', 1532338512, '::1', '分站地区增加成功！'),
(21, 'admin', 1532338519, '::1', '分站地区增加成功！'),
(22, 'admin', 1532339277, '::1', '恭喜！已生成全部分站目录！'),
(23, 'admin', 1532340475, '::1', '用户组 超级管理员 修改成功'),
(24, 'admin', 1532340516, '::1', '成功上传或更新 网站首页 幻灯片!'),
(25, 'admin', 1532340552, '::1', '成功上传或更新 网站首页 幻灯片!'),
(26, 'admin', 1532340560, '::1', '成功上传或更新 网站首页 幻灯片!'),
(27, 'admin', 1532352302, '::1', '信息分类更新成功！'),
(28, 'admin', 1532352372, '::1', '字段模型分类寒暑假工类添加成功！'),
(29, 'admin', 1532352377, '::1', '字段模型分类寒暑假工类修改成功！'),
(30, 'admin', 1532352381, '::1', '字段模型分类寒暑假工类修改成功！'),
(31, 'admin', 1532352592, '::1', '字段模型 全职招聘模型 修改成功'),
(32, 'admin', 1532352613, '::1', '字段模型 全职招聘模型 修改成功'),
(33, 'admin', 1532352637, '::1', '信息分类更新成功！'),
(34, 'admin', 1532352675, '::1', '导航链接设置更新成功！'),
(35, 'admin', 1532352705, '::1', '导航链接设置更新成功！'),
(36, 'admin', 1532352725, '::1', '导航链接设置更新成功！'),
(37, 'admin', 1532353138, '::1', '信息分类更新成功！'),
(38, 'admin', 1532353157, '::1', '信息分类更新成功！'),
(39, 'admin', 1532353184, '::1', '信息分类更新成功！'),
(40, 'admin', 1532353410, '::1', '信息分类更新成功！'),
(41, 'admin', 1532353480, '::1', '信息分类更新成功！'),
(42, 'admin', 1532353598, '::1', '友情链接设置更新成功！'),
(43, 'admin', 1532353648, '::1', '导航链接设置更新成功！'),
(44, 'admin', 1532353672, '::1', '导航链接设置更新成功！'),
(45, 'admin', 1532353733, '::1', '导航链接设置更新成功！'),
(46, 'admin', 1532353748, '::1', '导航链接设置更新成功！'),
(47, 'admin', 1532353757, '::1', '导航链接设置更新成功！'),
(48, 'admin', 1532353885, '::1', '导航链接设置更新成功！'),
(49, 'admin', 1532354118, '::1', '字段模型 兼职招聘模型 修改成功'),
(50, 'admin', 1532354322, '::1', '导航链接设置更新成功！'),
(51, 'admin', 1532354334, '::1', '导航链接设置更新成功！'),
(52, 'admin', 1532354401, '::1', '导航链接设置更新成功！'),
(53, 'admin', 1532354493, '::1', '字段模型 征婚交友模型 修改成功'),
(54, 'admin', 1532354599, '::1', '信息分类更新成功！'),
(55, 'admin', 1532354615, '::1', '信息分类更新成功！'),
(56, 'admin', 1532354793, '::1', '删除信息分类 8 成功'),
(57, 'admin', 1532354800, '::1', '删除信息分类 7 成功'),
(58, 'admin', 1532354877, '::1', '信息分类更新成功！'),
(59, 'admin', 1532397952, '::1', '导航链接设置更新成功！'),
(60, 'admin', 1532398052, '::1', '信息分类更新成功！'),
(61, 'admin', 1532398129, '::1', '导航链接设置更新成功！'),
(62, 'admin', 1532398157, '::1', '导航链接设置更新成功！'),
(63, 'admin', 1532398210, '::1', '导航链接设置更新成功！'),
(64, 'admin', 1532398258, '::1', '导航链接设置更新成功！'),
(65, 'admin', 1532398294, '::1', '导航链接设置更新成功！'),
(66, 'admin', 1532398306, '::1', '导航链接设置更新成功！'),
(67, 'admin', 1532398319, '::1', '导航链接设置更新成功！'),
(68, 'admin', 1532398336, '::1', '导航链接设置更新成功！'),
(69, 'admin', 1532398354, '::1', '导航链接设置更新成功！'),
(70, 'admin', 1532398753, '::1', '城市分站 梅州 创建成功！'),
(71, 'admin', 1532399182, '::1', '城市分站 南京 创建成功！'),
(72, 'admin', 1532399200, '::1', '成功删除编号为6的城市分站'),
(73, 'admin', 1532399223, '::1', '城市分站 广州 创建成功！'),
(74, 'admin', 1532399280, '::1', '城市分站 北京 创建成功！'),
(75, 'admin', 1532399315, '::1', '城市分站 梅州 创建成功！'),
(76, 'admin', 1532399830, '::1', '字段模型 工作招聘模型 修改成功'),
(77, 'admin', 1532400752, '::1', '模板设置更新成功！'),
(78, 'admin', 1532400769, '::1', '模板设置更新成功！'),
(79, 'admin', 1532400775, '::1', '模板设置更新成功！'),
(80, 'admin', 1532401303, '::1', '成功增加商品分类'),
(81, 'admin', 1532414120, '::1', '城市分站 梅州 修改成功！'),
(82, 'admin', 1532414196, '::1', '城市分站 广州 修改成功！'),
(83, 'admin', 1532414211, '::1', '城市分站 北京 修改成功！'),
(84, 'admin', 1532414303, '::1', '城市分站 茂名 创建成功！'),
(85, 'admin', 1532414495, '::1', '导航链接设置更新成功！'),
(86, 'admin', 1532417695, '::1', '信息分类更新成功！'),
(87, 'admin', 1532433455, '::1', '删除信息分类 67 成功'),
(88, 'admin', 1532433463, '::1', '删除信息分类 51 成功'),
(89, 'admin', 1532433471, '::1', '删除信息分类 52 成功'),
(90, 'admin', 1532433476, '::1', '删除信息分类 53 成功'),
(91, 'admin', 1532433481, '::1', '删除信息分类 54 成功'),
(92, 'admin', 1532433502, '::1', '信息分类更新成功！'),
(93, 'admin', 1532433569, '::1', '删除信息分类 66 成功'),
(94, 'admin', 1532433576, '::1', '删除信息分类 55 成功'),
(95, 'admin', 1532433591, '::1', '删除信息分类 56 成功'),
(96, 'admin', 1532433594, '::1', '删除信息分类 57 成功'),
(97, 'admin', 1532433599, '::1', '删除信息分类 58 成功'),
(98, 'admin', 1532433602, '::1', '删除信息分类 59 成功'),
(99, 'admin', 1532433605, '::1', '删除信息分类 60 成功'),
(100, 'admin', 1532433610, '::1', '删除信息分类 61 成功'),
(101, 'admin', 1532433613, '::1', '删除信息分类 62 成功'),
(102, 'admin', 1532433617, '::1', '删除信息分类 63 成功'),
(103, 'admin', 1532433620, '::1', '删除信息分类 64 成功'),
(104, 'admin', 1532433624, '::1', '删除信息分类 65 成功'),
(105, 'admin', 1532434075, '::1', '删除信息分类 293 成功');

-- --------------------------------------------------------

--
-- 表的结构 `my_admin_record_login`
--

CREATE TABLE `my_admin_record_login` (
  `id` int(11) NOT NULL,
  `adminid` char(32) NOT NULL,
  `adminpwd` char(30) NOT NULL,
  `pubdate` int(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `result` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_admin_record_login`
--

INSERT INTO `my_admin_record_login` (`id`, `adminid`, `adminpwd`, `pubdate`, `ip`, `result`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f88', 1532332623, '::1', 1),
(2, 'admin', 'e10adc3949ba59abbe56e057f20f88', 1532350819, '::1', 1),
(3, 'admin', 'e10adc3949ba59abbe56e057f20f88', 1532396893, '::1', 1),
(4, 'admin', 'e10adc3949ba59abbe56e057f20f88', 1532412597, '::1', 1);

-- --------------------------------------------------------

--
-- 表的结构 `my_admin_type`
--

CREATE TABLE `my_admin_type` (
  `id` smallint(5) NOT NULL,
  `typename` varchar(30) NOT NULL,
  `ifsystem` tinyint(1) NOT NULL,
  `purviews` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_admin_type`
--

INSERT INTO `my_admin_type` (`id`, `typename`, `ifsystem`, `purviews`) VALUES
(1, '超级管理员', 1, 'purview_幻灯片列表,purview_上传幻灯片,purview_栏目设置,purview_已发布公告,purview_发布公告,purview_问题帮助,purview_发布帮助主题,purview_友情链接,purview_增加链接,purview_链接导航,purview_生活百宝箱,purview_便民电话,purview_分类信息,purview_删除重复,purview_批量管理,purview_信息评论,purview_信息举报,purview_模型管理,purview_字段管理,purview_增加会员,purview_实名认证,purview_会员文档,purview_站内短消息,purview_模板点评,purview_会员登录记录,purview_会员支付记录,purview_会员消费记录,purview_信息分类,purview_添加分类,purview_已建分站,purview_添加分站,purview_添加地区,purview_添加路段,purview_商家分类,purview_增加分类,purview_用户列表,purview_用户组,purview_管理记录,purview_数据库备份,purview_数据库还原,purview_数据库维护,purview_系统配置,purview_分站设置,purview_模板管理,purview_SEO伪静态,purview_验证过滤点评,purview_积分信用等级,purview_缓存设置,purview_文字内链设置,purview_附件管理,purview_手机访问设置,purview_已安装插件,purview_优惠券分类,purview_已上传优惠券,purview_团购分类,purview_已发起团购,purview_报名管理,purview_新闻管理,purview_新闻类别,purview_新闻评论,purview_商品分类,purview_商品管理,purview_订单管理,purview_邮件服务器,purview_邮件模板,purview_邮件发送记录,purview_管理支付接口,purview_管理广告位');

-- --------------------------------------------------------

--
-- 表的结构 `my_advertisement`
--

CREATE TABLE `my_advertisement` (
  `advid` mediumint(8) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `targets` mediumtext NOT NULL,
  `parameters` mediumtext NOT NULL,
  `code` mediumtext NOT NULL,
  `starttime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `cityid` mediumint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_announce`
--

CREATE TABLE `my_announce` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `redirecturl` varchar(250) NOT NULL,
  `titlecolor` char(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `author` varchar(20) NOT NULL,
  `pubdate` int(10) NOT NULL,
  `begintime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `hits` int(11) NOT NULL,
  `cityid` mediumint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_announce`
--

INSERT INTO `my_announce` (`id`, `title`, `redirecturl`, `titlecolor`, `content`, `author`, `pubdate`, `begintime`, `endtime`, `hits`, `cityid`) VALUES
(1, '恩普人力', '', '', '阿斯顿', 'admin', 1532340152, 1530806400, 1532620800, 0, 0),
(2, 'asdasd', '', '', 'xcvxcxvxcv', 'admin', 1532397675, 1532361600, 1532707200, 0, 0),
(3, 'test 1', '', '', 'xxxxasdas啊实打实的啊实打实大苏打阿三大苏打是啊实打实大苏打实打实大苏打实打实啊实打实打算打收到阿斯顿阿斯顿阿斯顿阿斯顿阿斯顿阿斯顿阿斯顿阿斯顿阿斯顿阿斯顿啊实打实大苏打实打实大苏打实打实大苏打阿三大苏打阿斯顿阿斯顿阿斯顿', 'admin', 1532340279, 1530547200, 1532361600, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `my_area`
--

CREATE TABLE `my_area` (
  `areaid` mediumint(6) NOT NULL,
  `areaname` varchar(32) NOT NULL,
  `cityid` int(11) NOT NULL,
  `displayorder` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_badwords`
--

CREATE TABLE `my_badwords` (
  `words` mediumtext NOT NULL,
  `view` varchar(100) NOT NULL,
  `ifcheck` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_badwords`
--

INSERT INTO `my_badwords` (`words`, `view`, `ifcheck`) VALUES
('激情交友', '**', 1);

-- --------------------------------------------------------

--
-- 表的结构 `my_cache`
--

CREATE TABLE `my_cache` (
  `id` smallint(3) NOT NULL,
  `page` varchar(20) NOT NULL,
  `time` int(10) NOT NULL,
  `open` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_cache`
--

INSERT INTO `my_cache` (`id`, `page`, `time`, `open`) VALUES
(1, 'site', 0, 0),
(2, 'info', 0, 0),
(3, 'list', 0, 0),
(4, 'aboutus', 0, 0),
(5, 'announce', 0, 0),
(6, 'faq', 0, 0),
(7, 'friendlink', 0, 0),
(8, 'guestbook', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `my_category`
--

CREATE TABLE `my_category` (
  `catid` mediumint(6) NOT NULL,
  `if_view` tinyint(1) NOT NULL DEFAULT '1',
  `color` char(10) NOT NULL,
  `catname` varchar(32) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `usecoin` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `modid` smallint(5) NOT NULL,
  `catorder` smallint(6) NOT NULL,
  `if_upimg` tinyint(1) NOT NULL DEFAULT '1',
  `if_mappoint` tinyint(1) NOT NULL DEFAULT '0',
  `dir_type` tinyint(1) NOT NULL,
  `dir_typename` varchar(100) NOT NULL,
  `template` varchar(20) NOT NULL DEFAULT 'list',
  `template_info` varchar(20) NOT NULL DEFAULT 'info',
  `html_dir` varchar(200) NOT NULL,
  `htmlpath` varchar(200) NOT NULL,
  `gid` smallint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_category`
--

INSERT INTO `my_category` (`catid`, `if_view`, `color`, `catname`, `icon`, `usecoin`, `title`, `keywords`, `description`, `parentid`, `modid`, `catorder`, `if_upimg`, `if_mappoint`, `dir_type`, `dir_typename`, `template`, `template_info`, `html_dir`, `htmlpath`, `gid`) VALUES
(1, 2, '', '二手物品交易', '/template/default/images/index/icon_ershou.gif', 0, '', '', '', 0, 2, 5, 1, 0, 4, 'ershou', 'list', 'info', '/ershou/', '', 1),
(2, 2, '', '汽车租售', '/template/default/images/index/icon_che.gif', 0, '', '', '', 0, 1, 4, 1, 0, 4, 'che', 'list', 'info', '/che/', '', 2),
(3, 2, '', '房产租售', '/template/default/images/index/icon_fang.gif', 0, '', '', '', 0, 1, 3, 1, 1, 4, 'fang', 'list', 'info', '/fang/', '', 3),
(4, 2, '', '工作招聘', '/template/default/images/index/icon_zhaopin.gif', 0, '', '', '', 0, 7, 2, 1, 1, 4, 'zhaopin', 'list_zhaopin', 'info_zp', '/zhaopin/', '', 4),
(5, 1, '', '兼职招聘', '/template/default/images/index/icon_jzzhaopin.gif', 0, '', '', '', 0, 8, 6, 1, 1, 4, 'jianzhi', 'list_zhaopin', 'info_zp', '/jianzhi/', '', 5),
(6, 1, '', '求职简历', '/template/default/images/index/icon_jianli.gif', 1, '', '', '', 0, 9, 7, 1, 0, 4, 'qiuzhi', 'list_qiuzhi', 'info_resume', '/qiuzhi/', '', 6),
(261, 2, '', '夜宵', '', 0, '', NULL, NULL, 252, 1, 288, 1, 0, 2, 'yexiao', 'list', 'info', '/tongchengshangjia/yexiao/', '', 252),
(262, 2, '', '厨师', '', 0, '', NULL, NULL, 253, 1, 290, 1, 0, 2, 'chushi', 'list', 'info', '/jinengongxiang/chushi/', '', 253),
(9, 1, '', '生活服务', '/template/default/images/index/icon_life.gif', 0, '', '', '', 0, 1, 10, 1, 0, 4, 'shenghuo', 'list_box', 'info', '/shenghuo/', '', 9),
(10, 1, '', '教育培训', '/template/default/images/index/icon_edu.gif', 0, '', '', '', 0, 10, 11, 1, 0, 4, 'jiaoyu', 'list_simple', 'info', '/jiaoyu/', '', 10),
(11, 2, '#ff0000', '手机转让', '', 0, '', '', '', 1, 28, 13, 1, 0, 4, 'shouji', 'list', 'info', '/shouji/', '', 1),
(12, 2, '', '平板电脑', '', 0, '', '', '', 1, 2, 14, 1, 0, 4, 'pingban', 'list', 'info', '/pingban/', '', 1),
(13, 2, '', '台式电脑', '', 0, '', '', '', 1, 6, 15, 1, 0, 4, 'diannao', 'list_ershou', 'info', '/diannao/', '', 1),
(14, 2, '#46a200', '数码产品转让', '', 0, '', '', '', 1, 2, 16, 1, 0, 4, 'shuma', 'list_ershou', 'info', '/ershou/shuma/', '', 1),
(15, 2, '', '家具/办公家具', '', 0, '', '', '', 1, 2, 29, 1, 0, 4, 'jiaju', 'list', 'info', '/ershou/jiaju/', '', 1),
(16, 2, '#ff9900', '家用电器', '', 0, '', '', '', 1, 16, 18, 1, 0, 4, 'jiadian', 'list_ershou', 'info', '/ershou/jiadian/', '', 1),
(17, 2, '', '日常用品', '', 0, '', '', '', 1, 2, 19, 1, 0, 4, 'riyongpin', 'list_ershou', 'info', '/ershou/riyongpin/', '', 1),
(18, 2, '', '办公经营设备', '', 0, '', '', '', 1, 2, 20, 1, 0, 4, 'bangong', 'list', 'info', '/ershou/bangong/', '', 1),
(19, 2, '', '收藏品/工艺品', '', 0, '', '', '', 1, 16, 21, 1, 0, 4, 'shoucang', 'list', 'info', '/ershou/shoucang/', '', 1),
(20, 2, '', '服装/配饰/鞋包', '', 0, '', '', '', 1, 2, 22, 1, 0, 4, 'fushi', 'list', 'info', '/ershou/fushi/', '', 1),
(21, 2, '', '母婴/玩具', '', 0, '', '', '', 1, 2, 23, 1, 0, 4, 'yingyou', 'list', 'info', '/ershou/yingyou/', '', 1),
(22, 2, '', '运动/图书/乐器', '', 0, '', '', '', 1, 2, 24, 1, 0, 4, 'wenti', 'list', 'info', '/ershou/wenti/', '', 1),
(23, 2, '', '门票卡券', '', 0, '', '', '', 1, 2, 25, 1, 0, 4, 'piao', 'list', 'info', '/ershou/piao/', '', 1),
(24, 2, '', '工业设备', '', 0, '', '', '', 1, 16, 26, 1, 0, 4, 'gongyeshebei', 'list', 'info', '/ershou/gongyeshebei/', '', 1),
(25, 2, '', '奇石盆景', '', 0, '', '', '', 1, 2, 27, 1, 0, 4, 'penjing', 'list', 'info', '/penjing/', '', 1),
(26, 2, '', '设备租赁', '', 0, '', '', '', 1, 2, 28, 1, 0, 4, 'zulin', 'list', 'info', '/ershou/zulin/', '', 1),
(27, 2, '', '其他物品', '', 0, '', '', '', 1, 2, 33, 1, 0, 4, 'qitaershou', 'list', 'info', '/ershou/qitaershou/', '', 1),
(28, 2, '', '二手轿车', '', 0, '', '', '', 2, 12, 31, 1, 0, 4, 'jiaoche', 'list', 'info', '/che/jiaoche/', '', 2),
(29, 2, '', '货车/工程车', '', 0, '', '', '', 2, 16, 32, 1, 0, 4, 'huoche', 'list', 'info', '/che/huoche/', '', 2),
(30, 2, '', '面包车/客车', '', 0, '', '', '', 2, 15, 33, 1, 0, 4, 'keche', 'list', 'info', '/che/keche/', '', 2),
(31, 2, '', '拖拉机/收割机', '', 0, '', '', '', 2, 16, 34, 1, 0, 4, 'tuolaji', 'list', 'info', '/che/tuolaji/', '', 2),
(32, 2, '', '拼车/顺风车', '', 0, '', '', '', 2, 14, 35, 1, 0, 4, 'pinche', 'list', 'info', '/che/pinche/', '', 2),
(33, 2, '', '新车优惠/4S店', '', 0, '', '', '', 2, 2, 36, 1, 0, 4, 'xincheyouhui', 'list', 'info', '/che/xincheyouhui/', '', 2),
(34, 2, '', '汽车用品/配件', '', 0, '', '', '', 2, 2, 37, 1, 0, 4, 'peijian', 'list', 'info', '/che/peijian/', '', 2),
(35, 2, '', '汽修保养', '', 0, '', '', '', 2, 2, 38, 1, 0, 4, 'qixiu', 'list', 'info', '/che/qixiu/', '', 2),
(36, 2, '', '车辆收购服务', '', 0, '', '', '', 2, 1, 39, 1, 0, 4, 'cheliangsg', 'list', 'info', '/che/cheliangsg/', '', 2),
(37, 2, '', '摩托车/燃气车', '', 0, '', '', '', 2, 27, 40, 1, 0, 4, 'motuoche', 'list', 'info', '/che/motuoche/', '', 2),
(38, 2, '', '电动车', '', 0, '', '', '', 2, 11, 41, 1, 0, 4, 'diandongche', 'list', 'info', '/che/diandongche/', '', 2),
(39, 2, '', '自行车', '', 0, '', '', '', 2, 13, 42, 1, 0, 4, 'zixingche', 'list', 'info', '/che/zixingche/', '', 2),
(40, 2, '', '本地下线车', '', 0, '', '', '', 2, 2, 43, 1, 0, 4, 'xiaxianche', 'list', 'info', '/che/xiaxianche/', '', 2),
(41, 2, '', '房屋出租', '', 0, '', '', '', 3, 23, 45, 1, 1, 4, 'chuzu', 'list_zufang', 'info', '/fang/chuzu/', '', 3),
(42, 2, '', '日租/短租', '', 0, '', '', '', 3, 23, 46, 1, 1, 4, 'duanzu', 'list_zufang', 'info', '/fang/duanzu/', '', 3),
(43, 2, '', '二手房出售', '', 0, '', '', '', 3, 22, 47, 1, 1, 4, 'ershoufang', 'list_house', 'info', '/fang/ershoufang/', '', 3),
(45, 2, '', '店铺转让/出租', '', 0, '', '', '', 3, 26, 49, 1, 1, 4, 'zhuanrang', 'list', 'info', '/fang/zhuanrang/', '', 3),
(46, 2, '', '商铺出售', '', 0, '', '', '', 3, 25, 50, 1, 1, 4, 'shangpu', 'list', 'info', '/fang/shangpu/', '', 3),
(47, 2, '', '写字楼出租', '', 0, '', '', '', 3, 24, 51, 1, 1, 4, 'xieziloucz', 'list', 'info', '/fang/xieziloucz/', '', 3),
(48, 2, '', '写字楼出售', '', 0, '', '', '', 3, 25, 52, 1, 1, 4, 'xieziloucs', 'list', 'info', '/fang/xieziloucs/', '', 3),
(49, 2, '', '厂房/仓库/土地', '', 0, '', '', '', 3, 24, 53, 1, 1, 4, 'changfang', 'list', 'info', '/fang/changfang/', '', 3),
(50, 2, '', '求租/求购', '', 0, '', '', '', 3, 1, 54, 1, 1, 4, 'qiufang', 'list', 'info', '/fang/qiufang/', '', 3),
(281, 2, '', '环保', '', 0, '', NULL, NULL, 4, 7, 318, 1, 0, 2, 'huanbao', 'list', 'info_zp', '/zhaopin/huanbao/', '', 4),
(280, 2, '', '医疗/制药/生物工程', '', 0, '', NULL, NULL, 4, 7, 317, 1, 0, 2, 'yiliao-zhiyao-shengwugongcheng', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/', '', 4),
(270, 2, '', '美容/美发', '', 0, '', NULL, NULL, 4, 7, 303, 1, 0, 2, 'meirong-meifa', 'list', 'info_zp', '/zhaopin/meirong-meifa/', '', 4),
(279, 2, '', '人事/财务/行政', '', 0, '', NULL, NULL, 4, 7, 316, 1, 0, 2, 'renshi-caiwu-xingzheng', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/', '', 4),
(278, 2, '', '市场/销售', '', 0, '', NULL, NULL, 4, 7, 315, 1, 0, 2, 'shichang-xiaoshou', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/', '', 4),
(277, 2, '', '旅游/餐饮/酒店/服务业', '', 0, '', NULL, NULL, 4, 7, 313, 1, 0, 2, 'lvyou-canyin-jiudian-fuwuye', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/', '', 4),
(276, 2, '', '法律/翻译', '', 0, '', NULL, NULL, 4, 7, 312, 1, 0, 2, 'falv-fanyi', 'list', 'info_zp', '/zhaopin/falv-fanyi/', '', 4),
(275, 2, '', '教育/传媒/广告/设计', '', 0, '', NULL, NULL, 4, 7, 311, 1, 0, 2, 'jiaoyu-chuanmei-guanggao-sheji', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/', '', 4),
(274, 2, '', '贸易/零售/物流', '', 0, '', NULL, NULL, 4, 7, 310, 1, 0, 2, 'maoyi-lingshou-wuliu', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/', '', 4),
(271, 2, '', '计算机/互联网IT/通信', '', 0, '', NULL, NULL, 4, 7, 305, 1, 0, 2, 'jisuanji-hulianwangIT-tongxin', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/', '', 4),
(272, 2, '', '金融', '', 0, '', NULL, NULL, 4, 7, 307, 1, 0, 2, 'jinrong', 'list', 'info_zp', '/zhaopin/jinrong/', '', 4),
(273, 2, '', '房地产/建筑/物业', '', 0, '', NULL, NULL, 4, 7, 308, 1, 0, 2, 'fangdichan-jianzhu-wuye', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/', '', 4),
(68, 2, '', '派发/促销', '', 0, '', '', '', 5, 8, 74, 1, 1, 4, 'jzcuxiao', 'list_zhaopin', 'info_zp', '/jianzhi/jzcuxiao/', '', 5),
(69, 2, '', '家教/老师', '', 0, '', '', '', 5, 8, 75, 1, 1, 4, 'jzjiajiao', 'list_zhaopin', 'info_zp', '/jianzhi/jzjiajiao/', '', 5),
(70, 2, '', '餐厅/服务员', '', 0, '', '', '', 5, 8, 76, 1, 1, 4, 'jzfuwuyuan', 'list_zhaopin', 'info_zp', '/jianzhi/jzfuwuyuan/', '', 5),
(71, 2, '', '模特/礼仪', '', 0, '', '', '', 5, 8, 77, 1, 1, 4, 'jzmote', 'list_zhaopin', 'info_zp', '/jianzhi/jzmote/', '', 5),
(72, 2, '', '网站/设计', '', 0, '', '', '', 5, 8, 78, 1, 1, 4, 'jzwangzhan', 'list_zhaopin', 'info_zp', '/jianzhi/jzwangzhan/', '', 5),
(73, 2, '', '会计/财务', '', 0, '', '', '', 5, 8, 79, 1, 1, 4, 'jzcaiwu', 'list_zhaopin', 'info_zp', '/jianzhi/jzcaiwu/', '', 5),
(74, 2, '', '其他兼职', '', 0, '', '', '', 5, 8, 80, 1, 1, 4, 'qitajianzhi', 'list_zhaopin', 'info_zp', '/jianzhizhaopin/qitajianzhi/', '', 5),
(75, 2, '', '销售', '', 1, '', '', '', 6, 9, 82, 1, 0, 4, 'qzxiaoshou', 'list_qiuzhi', 'info_resume', '/qiuzhi/qzxiaoshou/', '', 6),
(76, 2, '', '客服', '', 1, '', '', '', 6, 9, 83, 1, 0, 4, 'qzkefu', 'list_qiuzhi', 'info_resume', '/qiuzhi/qzkefu/', '', 6),
(77, 2, '', '人事/行政/后勤', '', 1, '', '', '', 6, 9, 84, 1, 0, 4, 'qzhouqin', 'list_qiuzhi', 'info_resume', '/qiuzhi/qzhouqin/', '', 6),
(78, 2, '', '酒店/餐饮/旅游', '', 1, '', '', '', 6, 9, 85, 1, 0, 4, 'qzcanyin', 'list_qiuzhi', 'info_resume', '/qiuzhi/qzcanyin/', '', 6),
(79, 2, '', '美容/美发/保健/健身', '', 1, '', '', '', 6, 9, 86, 1, 0, 4, 'qzmeirong', 'list_qiuzhi', 'info_resume', '/qiuzhi/qzmeirong/', '', 6),
(80, 2, '', '计算机/网络/通信', '', 1, '', '', '', 6, 9, 87, 1, 0, 4, 'qzcomputer', 'list_qiuzhi', 'info_resume', '/qiuzhi/qzcomputer/', '', 6),
(81, 2, '', '建筑/房产/装修/物业', '', 1, '', '', '', 6, 9, 88, 1, 0, 4, 'qzfangdichan', 'list_qiuzhi', 'info_resume', '/qiuzhi/qzfangdichan/', '', 6),
(82, 2, '', '普工/技工/生产', '', 1, '', '', '', 6, 9, 89, 1, 0, 4, 'qzjigong', 'list_qiuzhi', 'info_resume', '/qiuzhi/qzjigong/', '', 6),
(83, 2, '', '司机', '', 1, '', '', '', 6, 9, 90, 1, 0, 4, 'qzsiji', 'list_qiuzhi', 'info_resume', '/qiuzhi/qzsiji/', '', 6),
(84, 2, '', '家政保洁/安保', '', 1, '', '', '', 6, 9, 91, 1, 0, 4, 'qzjiazheng', 'list_qiuzhi', 'info_resume', '/qiuzhi/qzjiazheng/', '', 6),
(85, 2, '', '影视/娱乐/KTV', '', 1, '', '', '', 6, 9, 92, 1, 0, 4, 'qzktv', 'list_qiuzhi', 'info_resume', '/qiuzhi/qzktv/', '', 6),
(86, 2, '', '编辑/出版/印刷', '', 1, '', '', '', 6, 9, 93, 1, 0, 4, 'qzyinshua', 'list_qiuzhi', 'info_resume', '/qiuzhi/qzyinshua/', '', 6),
(87, 2, '', '教育培训/翻译', '', 1, '', '', '', 6, 9, 94, 1, 0, 4, 'qzjiaoyu', 'list_qiuzhi', 'info_resume', '/qiuzhi/qzjiaoyu/', '', 6),
(88, 2, '', '财务/审计/统计', '', 1, '', '', '', 6, 9, 95, 1, 0, 4, 'qzshenji', 'list_qiuzhi', 'info_resume', '/qiuzhi/qzshenji/', '', 6),
(89, 2, '', '其他职位', '', 1, '', '', '', 6, 9, 96, 1, 0, 4, 'qitazhiwei', 'list_qiuzhi', 'info_resume', '/qiuzhijianli/qitazhiwei/', '', 6),
(260, 2, '', '烧烤', '', 0, '', NULL, NULL, 252, 1, 287, 1, 0, 2, 'shaokao', 'list', 'info', '/tongchengshangjia/shaokao/', '', 252),
(259, 2, '', '酒吧', '', 0, '', NULL, NULL, 252, 1, 286, 1, 0, 2, 'jiuba', 'list', 'info', '/tongchengshangjia/jiuba/', '', 252),
(258, 2, '', 'KTV', '', 0, '', NULL, NULL, 252, 1, 285, 1, 0, 2, 'KTV', 'list', 'info', '/tongchengshangjia/KTV/', '', 252),
(257, 2, '', '服务员', '', 0, '', NULL, NULL, 250, 1, 283, 1, 0, 2, 'fuwuyuan', 'list', 'info_zp', '/hanshujiagong/fuwuyuan/', '', 250),
(252, 2, '', '同城商家', '/template/default/images/index/icon_ershou.gif', 0, '', '', '', 0, 1, 6, 1, 0, 2, 'tongchengshangjia', 'list_simple', 'info', '/tongchengshangjia/', '', 252),
(253, 2, '', '技能共享', '/template/default/images/index/icon_jiagong.jpg', 0, '', '', '', 0, 1, 7, 1, 0, 2, 'jinengongxiang', 'list', 'info', '/jinengongxiang/', '', 253),
(254, 2, '', '好人好事', '/template/default/images/index/icon_life.gif', 0, '', '', '', 0, 1, 8, 1, 0, 2, 'haorenhaoshi', 'list', 'info', '/haorenhaoshi/', '', 254),
(255, 2, '', '交友聊天', '/template/default/images/index/icon_huodong.gif', 0, '', '', '', 0, 1, 9, 1, 0, 2, 'jiaoyouliaotian', 'list', 'info_resume', '/jiaoyouliaotian/', '', 255),
(256, 2, '', '派单', '', 0, '', NULL, NULL, 250, 1, 282, 1, 0, 2, 'paidan', 'list', 'info_zp', '/hanshujiagong/paidan/', '', 250),
(100, 2, '', '驾校服务', '', 0, '', '', '', 9, 1, 110, 1, 0, 4, 'jiaxiao', 'list_box', 'info', '/fuwu/jiaxiao/', '', 9),
(101, 2, '', '陪驾/代驾', '', 0, '', '', '', 9, 1, 111, 1, 0, 4, 'daijia', 'list_box', 'info', '/fuwu/daijia/', '', 9),
(102, 2, '', '婚庆/化妆', '', 0, '', '', '', 9, 1, 112, 1, 0, 4, 'hunqing', 'list_box', 'info', '/fuwu/hunqing/', '', 9),
(103, 2, '', '摄影摄像', '', 0, '', '', '', 9, 1, 113, 1, 0, 4, 'sheying', 'list_box', 'info', '/fuwu/sheying/', '', 9),
(104, 2, '', '美容纤体', '', 0, '', '', '', 9, 1, 114, 1, 0, 4, 'meirong', 'list_box', 'info', '/fuwu/meirong/', '', 9),
(105, 2, '', '房屋装修', '', 0, '', '', '', 9, 1, 115, 1, 0, 4, 'zhuangxiu', 'list_box', 'info', '/fuwu/zhuangxiu/', '', 9),
(106, 2, '', '建材装饰', '', 0, '', '', '', 9, 1, 116, 1, 0, 4, 'jiancai', 'list_box', 'info', '/fuwu/jiancai/', '', 9),
(107, 2, '', '投资理财', '', 0, '', '', '', 244, 1, 117, 1, 0, 4, 'licai', 'list', 'info', '//licai/', '', 244),
(108, 2, '', '保姆/月嫂', '', 0, '', '', '', 9, 1, 118, 1, 0, 4, 'yuesao', 'list_box', 'info', '/fuwu/yuesao/', '', 9),
(109, 2, '', '保洁/清洗', '', 0, '', '', '', 9, 1, 119, 1, 0, 4, 'baojie', 'list_box', 'info', '/fuwu/baojie/', '', 9),
(110, 2, '', '搬家服务', '', 0, '', '', '', 9, 1, 120, 1, 0, 4, 'banjia', 'list_box', 'info', '/shenghuo/banjia/', '', 9),
(111, 2, '', '家电维修', '', 0, '', '', '', 9, 1, 121, 1, 0, 4, 'xiujiandian', 'list_box', 'info', '/fuwu/xiujiandian/', '', 9),
(112, 2, '', '电脑维修', '', 0, '', '', '', 9, 1, 122, 1, 0, 4, 'xiudiannao', 'list_box', 'info', '/fuwu/xiudiannao/', '', 9),
(113, 2, '', '家居维修', '', 0, '', '', '', 9, 1, 123, 1, 0, 4, 'jiajuweixiu', 'list_box', 'info', '/fuwu/jiajuweixiu/', '', 9),
(114, 2, '', '管道疏通', '', 0, '', '', '', 9, 1, 124, 1, 0, 4, 'tongguandao', 'list_box', 'info', '/fuwu/tongguandao/', '', 9),
(115, 2, '', '外卖/送水', '', 0, '', '', '', 9, 1, 125, 1, 0, 4, 'waimai', 'list_box', 'info', '/fuwu/waimai/', '', 9),
(116, 2, '', '开锁/修锁', '', 0, '', '', '', 9, 1, 126, 1, 0, 4, 'kaisuo', 'list_box', 'info', '/fuwu/kaisuo/', '', 9),
(117, 2, '', '租车服务', '', 0, '', '', '', 9, 1, 127, 1, 0, 4, 'zuche', 'list_box', 'info', '/fuwu/zuche/', '', 9),
(118, 2, '', '旅游度假', '', 0, '', '', '', 9, 1, 128, 1, 0, 4, 'lvyou', 'list_box', 'info', '/fuwu/lvyou/', '', 9),
(119, 2, '', '休闲娱乐', '', 0, '', '', '', 9, 1, 129, 1, 0, 4, 'yule', 'list_box', 'info', '/fuwu/yule/', '', 9),
(120, 2, '', '酒店/宾馆', '', 0, '', '', '', 9, 1, 130, 1, 0, 4, 'jiudian', 'list_box', 'info', '/fuwu/jiudian/', '', 9),
(121, 2, '', '机票/签证', '', 0, '', '', '', 244, 1, 131, 1, 0, 4, 'qianzheng', 'list', 'info', '//qianzheng/', '', 244),
(122, 2, '', '招商加盟', '', 0, '', '', '', 244, 1, 132, 1, 0, 4, 'zhaoshang', 'list', 'info', '//zhaoshang/', '', 244),
(123, 2, '', '担保/贷款', '', 0, '', '', '', 244, 1, 133, 1, 0, 4, 'daikuan', 'list', 'info', '//daikuan/', '', 244),
(124, 2, '', '公司注册', '', 0, '', '', '', 244, 1, 134, 1, 0, 4, 'gongsizhuce', 'list', 'info', '//gongsizhuce/', '', 244),
(125, 2, '', '会计/审计', '', 0, '', '', '', 244, 1, 135, 1, 0, 4, 'huiji', 'list', 'info', '//huiji/', '', 244),
(126, 2, '', '网站建设', '', 0, '', '', '', 244, 1, 136, 1, 0, 4, 'wangzhan', 'list', 'info', '//wangzhan/', '', 244),
(127, 2, '', '快递/物流', '', 0, '', '', '', 244, 1, 137, 1, 0, 4, 'wuliu', 'list', 'info', '//wuliu/', '', 244),
(128, 2, '', '庆典/演出', '', 0, '', '', '', 244, 1, 138, 1, 0, 4, 'yanchu', 'list', 'info', '//yanchu/', '', 244),
(129, 2, '', '印刷/喷绘', '', 0, '', '', '', 244, 1, 139, 1, 0, 4, 'yinshua', 'list', 'info', '//yinshua/', '', 244),
(130, 2, '', '设计策划', '', 0, '', '', '', 244, 1, 140, 1, 0, 4, 'cehua', 'list', 'info', '//cehua/', '', 244),
(131, 2, '', '律师服务', '', 0, '', '', '', 244, 1, 141, 1, 0, 4, 'lvshi', 'list', 'info', '//lvshi/', '', 244),
(132, 2, '', '翻译/速记', '', 0, '', '', '', 244, 1, 142, 1, 0, 4, 'fanyi', 'list', 'info', '//fanyi/', '', 244),
(133, 2, '', '鲜花/盆景', '', 0, '', '', '', 244, 1, 143, 1, 0, 4, 'xianhua', 'list_simple', 'info', '/fuwu/xianhua/', '', 9),
(134, 2, '', '礼品定制', '', 0, '', '', '', 244, 1, 144, 1, 0, 4, 'lipin', 'list', 'info', '//lipin/', '', 244),
(135, 2, '', '本地名站', '', 0, '', '', '', 244, 1, 145, 1, 0, 4, 'mingzhan', 'list_simple', 'info', '/fuwu/mingzhan/', '', 9),
(136, 2, '', '其它生活服务', '', 0, '', '', '', 9, 1, 146, 1, 0, 4, 'qitafuwu', 'list_box', 'info', '/shenghuo/qitafuwu/', '', 9),
(137, 2, '', '职业培训', '', 0, '', '', '', 10, 10, 148, 1, 0, 4, 'zhiyepeixun', 'list_simple', 'info', '/jiaoyu/zhiyepeixun/', '', 10),
(138, 2, '', '外语培训', '', 0, '', '', '', 10, 10, 149, 1, 0, 4, 'waiyu', 'list_simple', 'info', '/jiaoyu/waiyu/', '', 10),
(139, 2, '', '学历教育', '', 0, '', '', '', 10, 10, 150, 1, 0, 4, 'xueli', 'list_simple', 'info', '/jiaoyu/xueli/', '', 10),
(140, 2, '', '家教', '', 0, '', '', '', 10, 10, 151, 1, 0, 4, 'jiajiao', 'list_simple', 'info', '/jiaoyoupeixun/jiajiao/', '', 10),
(141, 2, '', 'IT培训', '', 0, '', '', '', 10, 10, 152, 1, 0, 4, 'jisuanji', 'list_simple', 'info', '/jiaoyu/jisuanji/', '', 10),
(142, 2, '', '留学签证', '', 0, '', '', '', 10, 10, 153, 1, 0, 4, 'liuxue', 'list_simple', 'info', '/jiaoyu/liuxue/', '', 10),
(143, 2, '', '高等教育', '', 0, '', '', '', 10, 10, 154, 1, 0, 4, 'gaodengjiaoyu', 'list_simple', 'info', '/jiaoyoupeixun/gaodengjiaoyu/', '', 10),
(144, 2, '', '文体培训', '', 0, '', '', '', 10, 10, 155, 1, 0, 4, 'techang', 'list_simple', 'info', '/jiaoyu/techang/', '', 10),
(145, 2, '', '婴幼儿教育', '', 0, '', '', '', 10, 10, 156, 1, 0, 4, 'youjiao', 'list_simple', 'info', '/jiaoyu/youjiao/', '', 10),
(146, 2, '', '中小学教育', '', 0, '', '', '', 10, 10, 157, 1, 0, 4, 'zhongxiaoxue', 'list_simple', 'info', '/jiaoyu/zhongxiaoxue/', '', 10),
(147, 2, '', '其他培训', '', 0, '', '', '', 10, 10, 158, 1, 0, 4, 'qitapeixun', 'list_simple', 'info', '/jiaoyoupeixun/qitapeixun/', '', 10),
(244, 1, '', '商务服务', '/template/default/images/index/icon_business.gif', 0, '', '', '', 0, 1, 270, 1, 0, 2, 'shangwufuwu', 'list', 'info', '//', '', 244),
(245, 2, '', '其它商务服务', '', 0, '', '', '', 244, 1, 272, 1, 0, 2, 'qitashangwu', 'list', 'info', '///', '', 244),
(246, 2, '', '笔记本', '', 0, '', NULL, NULL, 1, 2, 17, 1, 0, 2, 'bijiben', 'list', 'info', '/ershou/bijiben/', '', 1),
(247, 2, '', '照相机', '', 0, '', NULL, NULL, 1, 2, 30, 1, 0, 2, 'zhaoxiangji', 'list', 'info', '/ershou/zhaoxiangji/', '', 1),
(248, 2, '', '食品农产', '', 0, '', NULL, NULL, 1, 2, 31, 1, 0, 2, 'shipinnongchan', 'list', 'info', '/ershou/shipinnongchan/', '', 1),
(249, 2, '', '网游/虚拟物品', '', 0, '', NULL, NULL, 1, 2, 32, 1, 0, 2, 'wangyou-xuniwupin', 'list', 'info', '/ershou/wangyou-xuniwupin/', '', 1),
(250, 2, '', '寒暑假工', '/template/default/images/index/icon_ershou.gif', 0, '', '', '', 0, 2, 1, 1, 0, 2, 'hanshujiagong', 'list_zhaopin', 'info_zp', '/hanshujiagong/', '', 250),
(251, 1, '', '祺帆保姆', '/template/default/images/index/icon_fang.gif', 0, '', '', '', 0, 19, 8, 1, 0, 2, 'qifanbaomu', 'list', 'info', '/qifanbaomu/', '', 251),
(263, 2, '', '司机', '', 0, '', NULL, NULL, 253, 1, 291, 1, 0, 2, 'siji', 'list', 'info', '/jinengongxiang/siji/', '', 253),
(264, 2, '', '拾金不昧', '', 0, '', NULL, NULL, 254, 1, 293, 1, 0, 2, 'shijinbumei', 'list', 'info', '/haorenhaoshi/shijinbumei/', '', 254),
(265, 2, '', '寻亲之旅', '', 0, '', NULL, NULL, 254, 1, 294, 1, 0, 2, 'xunqinzhilv', 'list', 'info', '/haorenhaoshi/xunqinzhilv/', '', 254),
(266, 2, '', '找男友', '', 0, '', NULL, NULL, 255, 1, 296, 1, 0, 2, 'zhaonanyou', 'list', 'info_resume', '/jiaoyouliaotian/zhaonanyou/', '', 255),
(267, 2, '', '找女友', '', 0, '', NULL, NULL, 255, 1, 297, 1, 0, 2, 'zhaonvyou', 'list', 'info_resume', '/jiaoyouliaotian/zhaonvyou/', '', 255),
(268, 2, '', '手机单', '', 0, '', NULL, NULL, 256, 1, 299, 1, 0, 2, 'shoujidan', 'list', 'info', '/hanshujiagong/paidan/shoujidan/', '', 250),
(269, 2, '', '汽车制造/服务', '', 0, '', NULL, NULL, 0, 1, 301, 1, 0, 2, 'qichezhizao-fuwu', 'list', 'info', '/qichezhizao-fuwu/', '', 269),
(282, 2, '', '美容/美发', '', 0, '', NULL, NULL, 4, 7, 319, 1, 0, 2, 'meirong-meifa', 'list', 'info_zp', '/zhaopin/meirong-meifa/', '', 4),
(283, 2, '', '农/林/牧/渔业', '', 0, '', NULL, NULL, 4, 7, 320, 1, 0, 2, 'nong-lin-mu-yuye', 'list', 'info_zp', '/zhaopin/nong-lin-mu-yuye/', '', 4),
(284, 2, '', '普工/ 技工', '', 0, '', NULL, NULL, 4, 7, 321, 1, 0, 2, 'pugong--jigong', 'list', 'info_zp', '/zhaopin/pugong--jigong/', '', 4),
(285, 2, '', '生产管理/研发', '', 0, '', NULL, NULL, 4, 7, 322, 1, 0, 2, 'shengchanguanli-yanfa', 'list', 'info_zp', '/zhaopin/shengchanguanli-yanfa/', '', 4),
(286, 2, '', '服装/纺织/食品', '', 0, '', NULL, NULL, 4, 1, 324, 1, 0, 2, 'fuzhuang-fangzhi-shipin', 'list', 'info_zp', '/zhaopin/fuzhuang-fangzhi-shipin/', '', 4),
(287, 2, '', '质控/安防', '', 0, '', NULL, NULL, 4, 1, 325, 1, 0, 2, 'zhikong-anfang', 'list', 'info_zp', '/zhaopin/zhikong-anfang/', '', 4),
(288, 2, '', '汽车制造/服务', '', 0, '', NULL, NULL, 4, 1, 326, 1, 0, 2, 'qichezhizao-fuwu', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/', '', 4),
(289, 2, '', '汽车设计工程师', '', 0, '', NULL, NULL, 288, 7, 328, 1, 0, 2, 'qicheshejigongchengshi', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/qicheshejigongchengshi/', '', 4),
(290, 2, '', '装配工艺工程师', '', 0, '', NULL, NULL, 288, 7, 329, 1, 0, 2, 'zhuangpeigongyigongchengshi', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/zhuangpeigongyigongchengshi/', '', 4),
(291, 2, '', '汽车/摩托车修理', '', 0, '', NULL, NULL, 288, 7, 330, 1, 0, 2, 'qiche-motuochexiuli', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/qiche-motuochexiuli/', '', 4),
(292, 2, '', '汽车机械工程师', '', 0, '', NULL, NULL, 288, 7, 331, 1, 0, 2, 'qichejixiegongchengshi', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/qichejixiegongchengshi/', '', 4),
(294, 2, '', '汽车电子工程师', '', 0, '', NULL, NULL, 288, 7, 333, 1, 0, 2, 'qichedianzigongchengshi', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/qichedianzigongchengshi/', '', 4),
(295, 2, '', '4S店管理', '', 0, '', NULL, NULL, 288, 7, 334, 1, 0, 2, '4Sdianguanli', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/4Sdianguanli/', '', 4),
(296, 2, '', '汽车检验/检测', '', 0, '', NULL, NULL, 288, 7, 335, 1, 0, 2, 'qichejianyan-jiance', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/qichejianyan-jiance/', '', 4),
(297, 2, '', '汽车美容', '', 0, '', NULL, NULL, 288, 7, 336, 1, 0, 2, 'qichemeirong', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/qichemeirong/', '', 4),
(298, 2, '', '二手车评估师', '', 0, '', NULL, NULL, 288, 7, 337, 1, 0, 2, 'ershouchepinggushi', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/ershouchepinggushi/', '', 4),
(299, 2, '', '发动机/总装工程师', '', 0, '', NULL, NULL, 288, 7, 338, 1, 0, 2, 'fadongji-zongzhuanggongchengshi', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/fadongji-zongzhuanggongchengshi/', '', 4),
(300, 2, '', '安全性能工程师', '', 0, '', NULL, NULL, 288, 7, 339, 1, 0, 2, 'anquanxingnengongchengshi', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/anquanxingnengongchengshi/', '', 4),
(301, 2, '', '理赔专员/顾问洗车工', '', 0, '', NULL, NULL, 288, 7, 340, 1, 0, 2, 'lipeizhuanyuan-guwenxichegong', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/lipeizhuanyuan-guwenxichegong/', '', 4),
(302, 2, '', '停车管理员', '', 0, '', NULL, NULL, 288, 7, 341, 1, 0, 2, 'tingcheguanliyuan', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/tingcheguanliyuan/', '', 4),
(303, 2, '', '加油站工作员', '', 0, '', NULL, NULL, 288, 7, 342, 1, 0, 2, 'jiayouzhangongzuoyuan', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/jiayouzhangongzuoyuan/', '', 4),
(304, 2, '', '轮胎工', '', 0, '', NULL, NULL, 288, 7, 343, 1, 0, 2, 'luntaigong', 'list', 'info_zp', '/zhaopin/qichezhizao-fuwu/luntaigong/', '', 4),
(305, 2, '', '质量管理/测试经理', '', 0, '', NULL, NULL, 287, 7, 345, 1, 0, 2, 'zhiliangguanli-ceshijingli', 'list', 'info_zp', '/zhaopin/zhikong-anfang/zhiliangguanli-ceshijingli/', '', 4),
(306, 2, '', '质量检验员/测试员', '', 0, '', NULL, NULL, 287, 7, 346, 1, 0, 2, 'zhiliangjianyanyuan-ceshiyuan', 'list', 'info_zp', '/zhaopin/zhikong-anfang/zhiliangjianyanyuan-ceshiyuan/', '', 4),
(307, 2, '', '测试工程师', '', 0, '', NULL, NULL, 287, 7, 347, 1, 0, 2, 'ceshigongchengshi', 'list', 'info_zp', '/zhaopin/zhikong-anfang/ceshigongchengshi/', '', 4),
(308, 2, '', '安全消防', '', 0, '', NULL, NULL, 287, 7, 348, 1, 0, 2, 'anquanxiaofang', 'list', 'info_zp', '/zhaopin/zhikong-anfang/anquanxiaofang/', '', 4),
(309, 2, '', '认证工程师/审核员', '', 0, '', NULL, NULL, 287, 7, 349, 1, 0, 2, 'renzhenggongchengshi-shenheyuan', 'list', 'info_zp', '/zhaopin/zhikong-anfang/renzhenggongchengshi-shenheyuan/', '', 4),
(310, 2, '', '安全管理', '', 0, '', NULL, NULL, 287, 7, 350, 1, 0, 2, 'anquanguanli', 'list', 'info_zp', '/zhaopin/zhikong-anfang/anquanguanli/', '', 4),
(311, 2, '', '服装设计师', '', 0, '', NULL, NULL, 286, 7, 352, 1, 0, 2, 'fuzhuangshejishi', 'list', 'info_zp', '/zhaopin/fuzhuang-fangzhi-shipin/fuzhuangshejishi/', '', 4),
(312, 2, '', '纺织品设计师', '', 0, '', NULL, NULL, 286, 7, 353, 1, 0, 2, 'fangzhipinshejishi', 'list', 'info_zp', '/zhaopin/fuzhuang-fangzhi-shipin/fangzhipinshejishi/', '', 4),
(313, 2, '', '服装打样/制版', '', 0, '', NULL, NULL, 286, 7, 354, 1, 0, 2, 'fuzhuangdayang-zhiban', 'list', 'info_zp', '/zhaopin/fuzhuang-fangzhi-shipin/fuzhuangdayang-zhiban/', '', 4),
(314, 2, '', '生产管理', '', 0, '', NULL, NULL, 286, 7, 355, 1, 0, 2, 'shengchanguanli', 'list', 'info_zp', '/zhaopin/fuzhuang-fangzhi-shipin/shengchanguanli/', '', 4),
(315, 2, '', '样衣工', '', 0, '', NULL, NULL, 286, 7, 356, 1, 0, 2, 'yangyigong', 'list', 'info_zp', '/zhaopin/fuzhuang-fangzhi-shipin/yangyigong/', '', 4),
(316, 2, '', '食品/饮料研发', '', 0, '', NULL, NULL, 286, 7, 358, 1, 0, 2, 'shipin-yinliaoyanfa', 'list', 'info_zp', '/zhaopin/fuzhuang-fangzhi-shipin/shipin-yinliaoyanfa/', '', 4),
(317, 2, '', '电脑放码员', '', 0, '', NULL, NULL, 286, 7, 359, 1, 0, 2, 'diannaofangmayuan', 'list', 'info_zp', '/zhaopin/fuzhuang-fangzhi-shipin/diannaofangmayuan/', '', 4),
(318, 2, '', '纸样师/车板工', '', 0, '', NULL, NULL, 286, 7, 360, 1, 0, 2, 'zhiyangshi-chebangong', 'list', 'info_zp', '/zhaopin/fuzhuang-fangzhi-shipin/zhiyangshi-chebangong/', '', 4),
(319, 2, '', '质量管理', '', 0, '', NULL, NULL, 285, 7, 362, 1, 0, 2, 'zhiliangguanli', 'list', 'info_zp', '/zhaopin/shengchanguanli-yanfa/zhiliangguanli/', '', 4),
(320, 2, '', '总工程师/副总工程师', '', 0, '', NULL, NULL, 285, 7, 363, 1, 0, 2, 'zonggongchengshi-fuzonggongchengshi', 'list', 'info_zp', '/zhaopin/shengchanguanli-yanfa/zonggongchengshi-fuzonggongchengshi/', '', 4),
(321, 2, '', '设备管理维护', '', 0, '', NULL, NULL, 285, 7, 364, 1, 0, 2, 'shebeiguanliweihu', 'list', 'info_zp', '/zhaopin/shengchanguanli-yanfa/shebeiguanliweihu/', '', 4),
(322, 2, '', '工艺设计', '', 0, '', NULL, NULL, 285, 7, 365, 1, 0, 2, 'gongyisheji', 'list', 'info_zp', '/zhaopin/shengchanguanli-yanfa/gongyisheji/', '', 4),
(323, 2, '', '车间主任', '', 0, '', NULL, NULL, 285, 7, 366, 1, 0, 2, 'chejianzhuren', 'list', 'info_zp', '/zhaopin/shengchanguanli-yanfa/chejianzhuren/', '', 4),
(324, 2, '', '生产计划', '', 0, '', NULL, NULL, 285, 7, 367, 1, 0, 2, 'shengchanjihua', 'list', 'info_zp', '/zhaopin/shengchanguanli-yanfa/shengchanjihua/', '', 4),
(325, 2, '', '化验/检验厂长/副厂长', '', 0, '', NULL, NULL, 285, 7, 368, 1, 0, 2, 'huayan-jianyanchangchang-fuchangchang', 'list', 'info_zp', '/zhaopin/shengchanguanli-yanfa/huayan-jianyanchangchang-fuchangchang/', '', 4),
(326, 2, '', '生产总监', '', 0, '', NULL, NULL, 285, 7, 369, 1, 0, 2, 'shengchanzongjian', 'list', 'info_zp', '/zhaopin/shengchanguanli-yanfa/shengchanzongjian/', '', 4),
(327, 2, '', '维修工程师', '', 0, '', NULL, NULL, 285, 7, 370, 1, 0, 2, 'weixiugongchengshi', 'list', 'info_zp', '/zhaopin/shengchanguanli-yanfa/weixiugongchengshi/', '', 4),
(328, 2, '', '工业工程师', '', 0, '', NULL, NULL, 285, 7, 371, 1, 0, 2, 'gongyegongchengshi', 'list', 'info_zp', '/zhaopin/shengchanguanli-yanfa/gongyegongchengshi/', '', 4),
(329, 2, '', '材料工程师', '', 0, '', NULL, NULL, 285, 7, 372, 1, 0, 2, 'cailiaogongchengshi', 'list', 'info_zp', '/zhaopin/shengchanguanli-yanfa/cailiaogongchengshi/', '', 4),
(330, 2, '', '技术工程师', '', 0, '', NULL, NULL, 285, 7, 373, 1, 0, 2, 'jishugongchengshi', 'list', 'info_zp', '/zhaopin/shengchanguanli-yanfa/jishugongchengshi/', '', 4),
(331, 2, '', '生产主管/组长', '', 0, '', NULL, NULL, 285, 7, 374, 1, 0, 2, 'shengchanzhuguan-zuchang', 'list', 'info_zp', '/zhaopin/shengchanguanli-yanfa/shengchanzhuguan-zuchang/', '', 4),
(332, 2, '', '普工', '', 0, '', NULL, NULL, 284, 7, 376, 1, 0, 2, 'pugong', 'list', 'info_zp', '/zhaopin/pugong--jigong/pugong/', '', 4),
(333, 2, '', '综合维修工', '', 0, '', NULL, NULL, 284, 7, 377, 1, 0, 2, 'zongheweixiugong', 'list', 'info_zp', '/zhaopin/pugong--jigong/zongheweixiugong/', '', 4),
(334, 2, '', '制冷/水暖工', '', 0, '', NULL, NULL, 284, 7, 378, 1, 0, 2, 'zhiling-shuinuangong', 'list', 'info_zp', '/zhaopin/pugong--jigong/zhiling-shuinuangong/', '', 4),
(335, 2, '', '电工', '', 0, '', NULL, NULL, 284, 7, 379, 1, 0, 2, 'diangong', 'list', 'info_zp', '/zhaopin/pugong--jigong/diangong/', '', 4),
(336, 2, '', '木工', '', 0, '', NULL, NULL, 284, 7, 380, 1, 0, 2, 'mugong', 'list', 'info_zp', '/zhaopin/pugong--jigong/mugong/', '', 4),
(337, 2, '', '钳工', '', 0, '', NULL, NULL, 284, 7, 381, 1, 0, 2, 'qiangong', 'list', 'info_zp', '/zhaopin/pugong--jigong/qiangong/', '', 4),
(338, 2, '', '切割/焊工', '', 0, '', NULL, NULL, 284, 7, 382, 1, 0, 2, 'qiege-hangong', 'list', 'info_zp', '/zhaopin/pugong--jigong/qiege-hangong/', '', 4),
(339, 2, '', '钣金工', '', 0, '', NULL, NULL, 284, 7, 383, 1, 0, 2, 'banjingong', 'list', 'info_zp', '/zhaopin/pugong--jigong/banjingong/', '', 4),
(340, 2, '', '油漆工', '', 0, '', NULL, NULL, 284, 7, 384, 1, 0, 2, 'youqigong', 'list', 'info_zp', '/zhaopin/pugong--jigong/youqigong/', '', 4),
(341, 2, '', '缝纫工锅炉工', '', 0, '', NULL, NULL, 284, 7, 385, 1, 0, 2, 'fengrengongguolugong', 'list', 'info_zp', '/zhaopin/pugong--jigong/fengrengongguolugong/', '', 4),
(342, 2, '', '车工/铣工', '', 0, '', NULL, NULL, 284, 7, 386, 1, 0, 2, 'chegong-xigong', 'list', 'info_zp', '/zhaopin/pugong--jigong/chegong-xigong/', '', 4),
(343, 2, '', '铲车/叉车工', '', 0, '', NULL, NULL, 284, 7, 387, 1, 0, 2, 'chanche-chachegong', 'list', 'info_zp', '/zhaopin/pugong--jigong/chanche-chachegong/', '', 4),
(344, 2, '', '铸造/注塑/模具工', '', 0, '', NULL, NULL, 284, 7, 388, 1, 0, 2, 'zhuzao-zhusu-mojugong', 'list', 'info_zp', '/zhaopin/pugong--jigong/zhuzao-zhusu-mojugong/', '', 4),
(345, 2, '', '电梯工', '', 0, '', NULL, NULL, 284, 7, 389, 1, 0, 2, 'diantigong', 'list', 'info_zp', '/zhaopin/pugong--jigong/diantigong/', '', 4),
(346, 2, '', '操作工', '', 0, '', NULL, NULL, 284, 7, 390, 1, 0, 2, 'caozuogong', 'list', 'info_zp', '/zhaopin/pugong--jigong/caozuogong/', '', 4),
(347, 2, '', '包装工', '', 0, '', NULL, NULL, 284, 7, 391, 1, 0, 2, 'baozhuanggong', 'list', 'info_zp', '/zhaopin/pugong--jigong/baozhuanggong/', '', 4),
(348, 2, '', '手机维修', '', 0, '', NULL, NULL, 284, 7, 392, 1, 0, 2, 'shoujiweixiu', 'list', 'info_zp', '/zhaopin/pugong--jigong/shoujiweixiu/', '', 4),
(349, 2, '', '水泥工钢筋工', '', 0, '', NULL, NULL, 284, 7, 393, 1, 0, 2, 'shuinigonggangjingong', 'list', 'info_zp', '/zhaopin/pugong--jigong/shuinigonggangjingong/', '', 4),
(350, 2, '', '管道工', '', 0, '', NULL, NULL, 284, 7, 394, 1, 0, 2, 'guandaogong', 'list', 'info_zp', '/zhaopin/pugong--jigong/guandaogong/', '', 4),
(351, 2, '', '瓦工', '', 0, '', NULL, NULL, 284, 7, 395, 1, 0, 2, 'wagong', 'list', 'info_zp', '/zhaopin/pugong--jigong/wagong/', '', 4),
(352, 2, '', '组装工', '', 0, '', NULL, NULL, 284, 7, 396, 1, 0, 2, 'zuzhuanggong', 'list', 'info_zp', '/zhaopin/pugong--jigong/zuzhuanggong/', '', 4),
(353, 2, '', '样衣工', '', 0, '', NULL, NULL, 284, 7, 397, 1, 0, 2, 'yangyigong', 'list', 'info_zp', '/zhaopin/pugong--jigong/yangyigong/', '', 4),
(354, 2, '', '染工', '', 0, '', NULL, NULL, 284, 7, 398, 1, 0, 2, 'rangong', 'list', 'info_zp', '/zhaopin/pugong--jigong/rangong/', '', 4),
(355, 2, '', '纺织工', '', 0, '', NULL, NULL, 284, 7, 399, 1, 0, 2, 'fangzhigong', 'list', 'info_zp', '/zhaopin/pugong--jigong/fangzhigong/', '', 4),
(356, 2, '', '印花工', '', 0, '', NULL, NULL, 284, 7, 400, 1, 0, 2, 'yinhuagong', 'list', 'info_zp', '/zhaopin/pugong--jigong/yinhuagong/', '', 4),
(357, 2, '', '压熨工', '', 0, '', NULL, NULL, 284, 7, 401, 1, 0, 2, 'yaweigong', 'list', 'info_zp', '/zhaopin/pugong--jigong/yaweigong/', '', 4),
(358, 2, '', '饲料业务', '', 0, '', NULL, NULL, 283, 7, 403, 1, 0, 2, 'siliaoyewu', 'list', 'info_zp', '/zhaopin/nong-lin-mu-yuye/siliaoyewu/', '', 4),
(359, 2, '', '养殖人员', '', 0, '', NULL, NULL, 283, 7, 404, 1, 0, 2, 'yangzhirenyuan', 'list', 'info_zp', '/zhaopin/nong-lin-mu-yuye/yangzhirenyuan/', '', 4),
(360, 2, '', '农艺师/花艺师', '', 0, '', NULL, NULL, 283, 7, 405, 1, 0, 2, 'nongyishi-huayishi', 'list', 'info_zp', '/zhaopin/nong-lin-mu-yuye/nongyishi-huayishi/', '', 4),
(361, 2, '', '畜牧师', '', 0, '', NULL, NULL, 283, 7, 406, 1, 0, 2, 'xumushi', 'list', 'info_zp', '/zhaopin/nong-lin-mu-yuye/xumushi/', '', 4),
(362, 2, '', '场长', '', 0, '', NULL, NULL, 283, 7, 407, 1, 0, 2, 'changchang', 'list', 'info_zp', '/zhaopin/nong-lin-mu-yuye/changchang/', '', 4),
(363, 2, '', '养殖部主管', '', 0, '', NULL, NULL, 283, 7, 408, 1, 0, 2, 'yangzhibuzhuguan', 'list', 'info_zp', '/zhaopin/nong-lin-mu-yuye/yangzhibuzhuguan/', '', 4),
(364, 2, '', '动物营养/饲料研发', '', 0, '', NULL, NULL, 283, 7, 409, 1, 0, 2, 'dongwuyingyang-siliaoyanfa', 'list', 'info_zp', '/zhaopin/nong-lin-mu-yuye/dongwuyingyang-siliaoyanfa/', '', 4),
(365, 2, '', '发型师', '', 0, '', NULL, NULL, 282, 7, 411, 1, 0, 2, 'faxingshi', 'list', 'info_zp', '/zhaopin/meirong-meifa/faxingshi/', '', 4),
(366, 2, '', '美发助理', '', 0, '', NULL, NULL, 282, 7, 412, 1, 0, 2, 'meifazhuli', 'list', 'info_zp', '/zhaopin/meirong-meifa/meifazhuli/', '', 4),
(367, 2, '', '学徒', '', 0, '', NULL, NULL, 282, 7, 413, 1, 0, 2, 'xuetu', 'list', 'info_zp', '/zhaopin/meirong-meifa/xuetu/', '', 4),
(368, 2, '', '洗头工', '', 0, '', NULL, NULL, 282, 7, 414, 1, 0, 2, 'xitougong', 'list', 'info_zp', '/zhaopin/meirong-meifa/xitougong/', '', 4),
(369, 2, '', '美容师', '', 0, '', NULL, NULL, 282, 7, 415, 1, 0, 2, 'meirongshi', 'list', 'info_zp', '/zhaopin/meirong-meifa/meirongshi/', '', 4),
(370, 2, '', '美容助理', '', 0, '', NULL, NULL, 282, 7, 416, 1, 0, 2, 'meirongzhuli', 'list', 'info_zp', '/zhaopin/meirong-meifa/meirongzhuli/', '', 4),
(371, 2, '', '学徒', '', 0, '', NULL, NULL, 282, 7, 417, 1, 0, 2, 'xuetu', 'list', 'info_zp', '/zhaopin/meirong-meifa/xuetu/', '', 4),
(372, 2, '', '化妆师', '', 0, '', NULL, NULL, 282, 7, 418, 1, 0, 2, 'huazhuangshi', 'list', 'info_zp', '/zhaopin/meirong-meifa/huazhuangshi/', '', 4),
(373, 2, '', '美甲师', '', 0, '', NULL, NULL, 282, 7, 419, 1, 0, 2, 'meijiashi', 'list', 'info_zp', '/zhaopin/meirong-meifa/meijiashi/', '', 4),
(374, 2, '', '宠物美容', '', 0, '', NULL, NULL, 282, 7, 420, 1, 0, 2, 'chongwumeirong', 'list', 'info_zp', '/zhaopin/meirong-meifa/chongwumeirong/', '', 4),
(375, 2, '', '美容店长', '', 0, '', NULL, NULL, 282, 7, 421, 1, 0, 2, 'meirongdianchang', 'list', 'info_zp', '/zhaopin/meirong-meifa/meirongdianchang/', '', 4),
(376, 2, '', '美容瘦身顾问', '', 0, '', NULL, NULL, 282, 7, 422, 1, 0, 2, 'meirongshoushenguwen', 'list', 'info_zp', '/zhaopin/meirong-meifa/meirongshoushenguwen/', '', 4),
(377, 2, '', '彩妆培训师', '', 0, '', NULL, NULL, 282, 7, 423, 1, 0, 2, 'caizhuangpeixunshi', 'list', 'info_zp', '/zhaopin/meirong-meifa/caizhuangpeixunshi/', '', 4),
(378, 2, '', '美体师', '', 0, '', NULL, NULL, 282, 7, 424, 1, 0, 2, 'meitishi', 'list', 'info_zp', '/zhaopin/meirong-meifa/meitishi/', '', 4),
(379, 2, '', '污水处理工程师', '', 0, '', NULL, NULL, 281, 7, 426, 1, 0, 2, 'wushuichuligongchengshi', 'list', 'info_zp', '/zhaopin/huanbao/wushuichuligongchengshi/', '', 4),
(380, 2, '', '环境工程技术', '', 0, '', NULL, NULL, 281, 7, 427, 1, 0, 2, 'huanjinggongchengjishu', 'list', 'info_zp', '/zhaopin/huanbao/huanjinggongchengjishu/', '', 4),
(381, 2, '', '环境管理/保护', '', 0, '', NULL, NULL, 281, 7, 428, 1, 0, 2, 'huanjingguanli-baohu', 'list', 'info_zp', '/zhaopin/huanbao/huanjingguanli-baohu/', '', 4),
(382, 2, '', '环保技术', '', 0, '', NULL, NULL, 281, 7, 429, 1, 0, 2, 'huanbaojishu', 'list', 'info_zp', '/zhaopin/huanbao/huanbaojishu/', '', 4),
(383, 2, '', 'EHS管理', '', 0, '', NULL, NULL, 281, 7, 430, 1, 0, 2, 'EHSguanli', 'list', 'info_zp', '/zhaopin/huanbao/EHSguanli/', '', 4),
(384, 2, '', '环保工程师', '', 0, '', NULL, NULL, 281, 7, 431, 1, 0, 2, 'huanbaogongchengshi', 'list', 'info_zp', '/zhaopin/huanbao/huanbaogongchengshi/', '', 4),
(385, 2, '', '环保检测水质检测员', '', 0, '', NULL, NULL, 281, 7, 432, 1, 0, 2, 'huanbaojianceshuizhijianceyuan', 'list', 'info_zp', '/zhaopin/huanbao/huanbaojianceshuizhijianceyuan/', '', 4),
(386, 2, '', '环境绿化', '', 0, '', NULL, NULL, 281, 7, 433, 1, 0, 2, 'huanjinglvhua', 'list', 'info_zp', '/zhaopin/huanbao/huanjinglvhua/', '', 4),
(387, 2, '', '医生', '', 0, '', NULL, NULL, 280, 7, 435, 1, 0, 2, 'yisheng', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/yisheng/', '', 4),
(388, 2, '', '保健医生', '', 0, '', NULL, NULL, 280, 7, 436, 1, 0, 2, 'baojianyisheng', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/baojianyisheng/', '', 4),
(389, 2, '', '心理医生', '', 0, '', NULL, NULL, 280, 7, 437, 1, 0, 2, 'xinliyisheng', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/xinliyisheng/', '', 4),
(390, 2, '', '护士/护理', '', 0, '', NULL, NULL, 280, 7, 438, 1, 0, 2, 'hushi-huli', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/hushi-huli/', '', 4),
(391, 2, '', '护理主任/护士长', '', 0, '', NULL, NULL, 280, 7, 439, 1, 0, 2, 'hulizhuren-hushichang', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/hulizhuren-hushichang/', '', 4),
(392, 2, '', '导医', '', 0, '', NULL, NULL, 280, 7, 440, 1, 0, 2, 'daoyi', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/daoyi/', '', 4),
(393, 2, '', '药剂师', '', 0, '', NULL, NULL, 280, 7, 441, 1, 0, 2, 'yaojishi', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/yaojishi/', '', 4),
(394, 2, '', '理疗师医药质检', '', 0, '', NULL, NULL, 280, 7, 442, 1, 0, 2, 'liliaoshiyiyaozhijian', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/liliaoshiyiyaozhijian/', '', 4),
(395, 2, '', '医疗管理', '', 0, '', NULL, NULL, 280, 7, 443, 1, 0, 2, 'yiliaoguanli', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/yiliaoguanli/', '', 4),
(396, 2, '', '美容整形师', '', 0, '', NULL, NULL, 280, 7, 444, 1, 0, 2, 'meirongzhengxingshi', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/meirongzhengxingshi/', '', 4),
(397, 2, '', '验光师', '', 0, '', NULL, NULL, 280, 7, 445, 1, 0, 2, 'yanguangshi', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/yanguangshi/', '', 4),
(398, 2, '', '营养师', '', 0, '', NULL, NULL, 280, 7, 446, 1, 0, 2, 'yingyangshi', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/yingyangshi/', '', 4),
(399, 2, '', '宠物护理/兽医', '', 0, '', NULL, NULL, 280, 7, 447, 1, 0, 2, 'chongwuhuli-shouyi', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/chongwuhuli-shouyi/', '', 4),
(400, 2, '', '医药研发/生产/注册', '', 0, '', NULL, NULL, 280, 7, 448, 1, 0, 2, 'yiyaoyanfa-shengchan-zhuce', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/yiyaoyanfa-shengchan-zhuce/', '', 4),
(401, 2, '', '临床研究/协调', '', 0, '', NULL, NULL, 280, 7, 449, 1, 0, 2, 'linchuangyanjiu-xiediao', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/linchuangyanjiu-xiediao/', '', 4),
(402, 2, '', '生物工程/生物制药', '', 0, '', NULL, NULL, 280, 7, 450, 1, 0, 2, 'shengwugongcheng-shengwuzhiyao', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/shengwugongcheng-shengwuzhiyao/', '', 4),
(403, 2, '', '医疗器械研发/维修', '', 0, '', NULL, NULL, 280, 7, 451, 1, 0, 2, 'yiliaoqixieyanfa-weixiu', 'list', 'info_zp', '/zhaopin/yiliao-zhiyao-shengwugongcheng/yiliaoqixieyanfa-weixiu/', '', 4),
(404, 2, '', '文员', '', 0, '', NULL, NULL, 279, 7, 453, 1, 0, 2, 'wenyuan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/wenyuan/', '', 4),
(405, 2, '', '前台/总机/接待', '', 0, '', NULL, NULL, 279, 7, 454, 1, 0, 2, 'qiantai-zongji-jiedai', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/qiantai-zongji-jiedai/', '', 4),
(406, 2, '', '人事专员/助理', '', 0, '', NULL, NULL, 279, 7, 455, 1, 0, 2, 'renshizhuanyuan-zhuli', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/renshizhuanyuan-zhuli/', '', 4),
(407, 2, '', '人事经理/主管', '', 0, '', NULL, NULL, 279, 7, 456, 1, 0, 2, 'renshijingli-zhuguan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/renshijingli-zhuguan/', '', 4),
(408, 2, '', '人事总监', '', 0, '', NULL, NULL, 279, 7, 457, 1, 0, 2, 'renshizongjian', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/renshizongjian/', '', 4),
(409, 2, '', '文员', '', 0, '', NULL, NULL, 279, 7, 459, 1, 0, 2, 'wenyuan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/wenyuan/', '', 4),
(410, 2, '', '前台/总机/接待', '', 0, '', NULL, NULL, 279, 7, 460, 1, 0, 2, 'qiantai-zongji-jiedai', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/qiantai-zongji-jiedai/', '', 4),
(411, 2, '', '人事专员/助理', '', 0, '', NULL, NULL, 279, 7, 461, 1, 0, 2, 'renshizhuanyuan-zhuli', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/renshizhuanyuan-zhuli/', '', 4),
(412, 2, '', '人事经理/主管', '', 0, '', NULL, NULL, 279, 7, 462, 1, 0, 2, 'renshijingli-zhuguan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/renshijingli-zhuguan/', '', 4),
(413, 2, '', '人事总监', '', 0, '', NULL, NULL, 279, 7, 463, 1, 0, 2, 'renshizongjian', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/renshizongjian/', '', 4),
(414, 2, '', '文员', '', 0, '', NULL, NULL, 279, 7, 465, 1, 0, 2, 'wenyuan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/wenyuan/', '', 4),
(415, 2, '', '前台/总机/接待', '', 0, '', NULL, NULL, 279, 7, 466, 1, 0, 2, 'qiantai-zongji-jiedai', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/qiantai-zongji-jiedai/', '', 4),
(416, 2, '', '人事专员/助理', '', 0, '', NULL, NULL, 279, 7, 467, 1, 0, 2, 'renshizhuanyuan-zhuli', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/renshizhuanyuan-zhuli/', '', 4),
(417, 2, '', '人事经理/主管', '', 0, '', NULL, NULL, 279, 7, 468, 1, 0, 2, 'renshijingli-zhuguan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/renshijingli-zhuguan/', '', 4),
(418, 2, '', '人事总监', '', 0, '', NULL, NULL, 279, 7, 469, 1, 0, 2, 'renshizongjian', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/renshizongjian/', '', 4),
(419, 2, '', '文员', '', 0, '', NULL, NULL, 279, 7, 471, 1, 0, 2, 'wenyuan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/wenyuan/', '', 4),
(420, 2, '', '前台/总机/接待', '', 0, '', NULL, NULL, 279, 7, 472, 1, 0, 2, 'qiantai-zongji-jiedai', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/qiantai-zongji-jiedai/', '', 4),
(421, 2, '', '人事专员/助理', '', 0, '', NULL, NULL, 279, 7, 473, 1, 0, 2, 'renshizhuanyuan-zhuli', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/renshizhuanyuan-zhuli/', '', 4),
(422, 2, '', '人事经理/主管', '', 0, '', NULL, NULL, 279, 7, 474, 1, 0, 2, 'renshijingli-zhuguan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/renshijingli-zhuguan/', '', 4),
(423, 2, '', '人事总监', '', 0, '', NULL, NULL, 279, 7, 475, 1, 0, 2, 'renshizongjian', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/renshizongjian/', '', 4),
(424, 2, '', '行政专员/助理经理', '', 0, '', NULL, NULL, 279, 7, 476, 1, 0, 2, 'xingzhengzhuanyuan-zhulijingli', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/xingzhengzhuanyuan-zhulijingli/', '', 4),
(425, 2, '', '行政总监', '', 0, '', NULL, NULL, 279, 7, 477, 1, 0, 2, 'xingzhengzongjian', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/xingzhengzongjian/', '', 4),
(426, 2, '', '经理助理/秘书', '', 0, '', NULL, NULL, 279, 7, 478, 1, 0, 2, 'jinglizhuli-mishu', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/jinglizhuli-mishu/', '', 4),
(427, 2, '', '薪酬/绩效/员工关系', '', 0, '', NULL, NULL, 279, 7, 479, 1, 0, 2, 'xinchou-jixiao-yuangongguanxi', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/xinchou-jixiao-yuangongguanxi/', '', 4),
(428, 2, '', '猎头顾问', '', 0, '', NULL, NULL, 279, 7, 480, 1, 0, 2, 'lietouguwen', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/lietouguwen/', '', 4),
(429, 2, '', '后勤', '', 0, '', NULL, NULL, 279, 7, 481, 1, 0, 2, 'houqin', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/houqin/', '', 4),
(430, 2, '', '培训专员/助理经理', '', 0, '', NULL, NULL, 279, 7, 482, 1, 0, 2, 'peixunzhuanyuan-zhulijingli', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/peixunzhuanyuan-zhulijingli/', '', 4),
(431, 2, '', '招聘专员/助理', '', 0, '', NULL, NULL, 279, 7, 483, 1, 0, 2, 'zhaopinzhuanyuan-zhuli', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/zhaopinzhuanyuan-zhuli/', '', 4),
(432, 2, '', '招聘经理/主管', '', 0, '', NULL, NULL, 279, 7, 484, 1, 0, 2, 'zhaopinjingli-zhuguan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/zhaopinjingli-zhuguan/', '', 4),
(433, 2, '', '财务经理/主管', '', 0, '', NULL, NULL, 279, 7, 485, 1, 0, 2, 'caiwujingli-zhuguan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/caiwujingli-zhuguan/', '', 4),
(434, 2, '', '财务总监', '', 0, '', NULL, NULL, 279, 7, 486, 1, 0, 2, 'caiwuzongjian', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/caiwuzongjian/', '', 4),
(435, 2, '', '会计/会计师', '', 0, '', NULL, NULL, 279, 7, 487, 1, 0, 2, 'huiji-huijishi', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/huiji-huijishi/', '', 4),
(436, 2, '', '财务/会计助理', '', 0, '', NULL, NULL, 279, 7, 488, 1, 0, 2, 'caiwu-huijizhuli', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/caiwu-huijizhuli/', '', 4),
(437, 2, '', '出纳', '', 0, '', NULL, NULL, 279, 7, 489, 1, 0, 2, 'chuna', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/chuna/', '', 4),
(438, 2, '', '审计专员/助理经理', '', 0, '', NULL, NULL, 279, 7, 490, 1, 0, 2, 'shenjizhuanyuan-zhulijingli', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/shenjizhuanyuan-zhulijingli/', '', 4),
(439, 2, '', '统计员', '', 0, '', NULL, NULL, 279, 7, 491, 1, 0, 2, 'tongjiyuan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/tongjiyuan/', '', 4),
(440, 2, '', '税务专员/助理', '', 0, '', NULL, NULL, 279, 7, 492, 1, 0, 2, 'shuiwuzhuanyuan-zhuli', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/shuiwuzhuanyuan-zhuli/', '', 4),
(441, 2, '', '税务经理/主管', '', 0, '', NULL, NULL, 279, 7, 493, 1, 0, 2, 'shuiwujingli-zhuguan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/shuiwujingli-zhuguan/', '', 4),
(442, 2, '', '财务分析员', '', 0, '', NULL, NULL, 279, 7, 494, 1, 0, 2, 'caiwufenxiyuan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/caiwufenxiyuan/', '', 4),
(443, 2, '', '成本管理员', '', 0, '', NULL, NULL, 279, 7, 495, 1, 0, 2, 'chengbenguanliyuan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/chengbenguanliyuan/', '', 4),
(444, 2, '', '行政专员', '', 0, '', NULL, NULL, 279, 7, 496, 1, 0, 2, 'xingzhengzhuanyuan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/xingzhengzhuanyuan/', '', 4),
(445, 2, '', '前台', '', 0, '', NULL, NULL, 279, 7, 497, 1, 0, 2, 'qiantai', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/qiantai/', '', 4),
(446, 2, '', '行政主管', '', 0, '', NULL, NULL, 279, 7, 498, 1, 0, 2, 'xingzhengzhuguan', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/xingzhengzhuguan/', '', 4),
(447, 2, '', '经理助理', '', 0, '', NULL, NULL, 279, 7, 499, 1, 0, 2, 'jinglizhuli', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/jinglizhuli/', '', 4),
(448, 2, '', '后勤', '', 0, '', NULL, NULL, 279, 7, 500, 1, 0, 2, 'houqin', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/houqin/', '', 4),
(449, 2, '', '司机', '', 0, '', NULL, NULL, 279, 7, 501, 1, 0, 2, 'siji', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/siji/', '', 4),
(450, 2, '', '行政经理', '', 0, '', NULL, NULL, 279, 7, 502, 1, 0, 2, 'xingzhengjingli', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/xingzhengjingli/', '', 4),
(451, 2, '', '行政总监', '', 0, '', NULL, NULL, 279, 7, 503, 1, 0, 2, 'xingzhengzongjian', 'list', 'info_zp', '/zhaopin/renshi-caiwu-xingzheng/xingzhengzongjian/', '', 4),
(452, 2, '', '市场营销', '', 0, '', NULL, NULL, 278, 7, 505, 1, 0, 2, 'shichangyingxiao', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/shichangyingxiao/', '', 4),
(453, 2, '', '市场策划', '', 0, '', NULL, NULL, 278, 7, 506, 1, 0, 2, 'shichangcehua', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/shichangcehua/', '', 4),
(454, 2, '', '市场顾问', '', 0, '', NULL, NULL, 278, 7, 507, 1, 0, 2, 'shichangguwen', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/shichangguwen/', '', 4),
(455, 2, '', '市场总监', '', 0, '', NULL, NULL, 278, 7, 508, 1, 0, 2, 'shichangzongjian', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/shichangzongjian/', '', 4),
(456, 2, '', '市场推广', '', 0, '', NULL, NULL, 278, 7, 509, 1, 0, 2, 'shichangtuiguang', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/shichangtuiguang/', '', 4),
(457, 2, '', 'SEO', '', 0, '', NULL, NULL, 278, 7, 510, 1, 0, 2, 'SEO', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/SEO/', '', 4),
(458, 2, '', '品牌经理', '', 0, '', NULL, NULL, 278, 7, 511, 1, 0, 2, 'pinpaijingli', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/pinpaijingli/', '', 4),
(459, 2, '', 'SEM', '', 0, '', NULL, NULL, 278, 7, 512, 1, 0, 2, 'SEM', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/SEM/', '', 4),
(460, 2, '', '商务渠道', '', 0, '', NULL, NULL, 278, 7, 513, 1, 0, 2, 'shangwuqudao', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/shangwuqudao/', '', 4),
(461, 2, '', '网络营销', '', 0, '', NULL, NULL, 278, 7, 514, 1, 0, 2, 'wangluoyingxiao', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/wangluoyingxiao/', '', 4),
(462, 2, '', '活动策划', '', 0, '', NULL, NULL, 278, 7, 515, 1, 0, 2, 'huodongcehua', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/huodongcehua/', '', 4),
(463, 2, '', 'APP推广', '', 0, '', NULL, NULL, 278, 7, 516, 1, 0, 2, 'APPtuiguang', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/APPtuiguang/', '', 4),
(464, 2, '', '销售专员', '', 0, '', NULL, NULL, 278, 7, 517, 1, 0, 2, 'xiaoshouzhuanyuan', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/xiaoshouzhuanyuan/', '', 4),
(465, 2, '', '销售经理', '', 0, '', NULL, NULL, 278, 7, 518, 1, 0, 2, 'xiaoshoujingli', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/xiaoshoujingli/', '', 4),
(466, 2, '', '客户代理', '', 0, '', NULL, NULL, 278, 7, 519, 1, 0, 2, 'kehudaili', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/kehudaili/', '', 4),
(467, 2, '', '销售代表', '', 0, '', NULL, NULL, 278, 7, 520, 1, 0, 2, 'xiaoshoudaibiao', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/xiaoshoudaibiao/', '', 4),
(468, 2, '', 'BD经理', '', 0, '', NULL, NULL, 278, 7, 521, 1, 0, 2, 'BDjingli', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/BDjingli/', '', 4),
(469, 2, '', '大客户销售', '', 0, '', NULL, NULL, 278, 7, 522, 1, 0, 2, 'dakehuxiaoshou', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/dakehuxiaoshou/', '', 4),
(470, 2, '', '渠道销售', '', 0, '', NULL, NULL, 278, 7, 523, 1, 0, 2, 'qudaoxiaoshou', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/qudaoxiaoshou/', '', 4);
INSERT INTO `my_category` (`catid`, `if_view`, `color`, `catname`, `icon`, `usecoin`, `title`, `keywords`, `description`, `parentid`, `modid`, `catorder`, `if_upimg`, `if_mappoint`, `dir_type`, `dir_typename`, `template`, `template_info`, `html_dir`, `htmlpath`, `gid`) VALUES
(471, 2, '', '销售助理', '', 0, '', NULL, NULL, 278, 7, 524, 1, 0, 2, 'xiaoshouzhuli', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/xiaoshouzhuli/', '', 4),
(472, 2, '', '电话销售', '', 0, '', NULL, NULL, 278, 7, 525, 1, 0, 2, 'dianhuaxiaoshou', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/dianhuaxiaoshou/', '', 4),
(473, 2, '', '销售顾问', '', 0, '', NULL, NULL, 278, 7, 526, 1, 0, 2, 'xiaoshouguwen', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/xiaoshouguwen/', '', 4),
(474, 2, '', '商品经理', '', 0, '', NULL, NULL, 278, 7, 527, 1, 0, 2, 'shangpinjingli', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/shangpinjingli/', '', 4),
(475, 2, '', '广告销售', '', 0, '', NULL, NULL, 278, 7, 528, 1, 0, 2, 'guanggaoxiaoshou', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/guanggaoxiaoshou/', '', 4),
(476, 2, '', '网络营销', '', 0, '', NULL, NULL, 278, 7, 529, 1, 0, 2, 'wangluoyingxiao', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/wangluoyingxiao/', '', 4),
(477, 2, '', '营销主管', '', 0, '', NULL, NULL, 278, 7, 530, 1, 0, 2, 'yingxiaozhuguan', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/yingxiaozhuguan/', '', 4),
(478, 2, '', '销售总监', '', 0, '', NULL, NULL, 278, 7, 531, 1, 0, 2, 'xiaoshouzongjian', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/xiaoshouzongjian/', '', 4),
(479, 2, '', '商务总监', '', 0, '', NULL, NULL, 278, 7, 532, 1, 0, 2, 'shangwuzongjian', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/shangwuzongjian/', '', 4),
(480, 2, '', '城市经理', '', 0, '', NULL, NULL, 278, 7, 533, 1, 0, 2, 'chengshijingli', 'list', 'info_zp', '/zhaopin/shichang-xiaoshou/chengshijingli/', '', 4),
(481, 2, '', '导游', '', 0, '', NULL, NULL, 277, 7, 535, 1, 0, 2, 'daoyou', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/daoyou/', '', 4),
(482, 2, '', '旅游顾问', '', 0, '', NULL, NULL, 277, 7, 536, 1, 0, 2, 'lvyouguwen', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/lvyouguwen/', '', 4),
(483, 2, '', '旅游计调', '', 0, '', NULL, NULL, 277, 7, 537, 1, 0, 2, 'lvyoujidiao', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/lvyoujidiao/', '', 4),
(484, 2, '', '签证', '', 0, '', NULL, NULL, 277, 7, 538, 1, 0, 2, 'qianzheng', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/qianzheng/', '', 4),
(485, 2, '', '旅游销售', '', 0, '', NULL, NULL, 277, 7, 539, 1, 0, 2, 'lvyouxiaoshou', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/lvyouxiaoshou/', '', 4),
(486, 2, '', '票务', '', 0, '', NULL, NULL, 277, 7, 540, 1, 0, 2, 'piaowu', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/piaowu/', '', 4),
(487, 2, '', '服务员', '', 0, '', NULL, NULL, 277, 7, 541, 1, 0, 2, 'fuwuyuan', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/fuwuyuan/', '', 4),
(488, 2, '', '收银员', '', 0, '', NULL, NULL, 277, 7, 542, 1, 0, 2, 'shouyinyuan', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/shouyinyuan/', '', 4),
(489, 2, '', '店长', '', 0, '', NULL, NULL, 277, 7, 543, 1, 0, 2, 'dianchang', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/dianchang/', '', 4),
(490, 2, '', '酒店前台', '', 0, '', NULL, NULL, 277, 7, 544, 1, 0, 2, 'jiudianqiantai', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/jiudianqiantai/', '', 4),
(491, 2, '', '酒店管理', '', 0, '', NULL, NULL, 277, 7, 545, 1, 0, 2, 'jiudianguanli', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/jiudianguanli/', '', 4),
(492, 2, '', '餐饮管理', '', 0, '', NULL, NULL, 277, 7, 546, 1, 0, 2, 'canyinguanli', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/canyinguanli/', '', 4),
(493, 2, '', '服务员', '', 0, '', NULL, NULL, 277, 7, 547, 1, 0, 2, 'fuwuyuan', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/fuwuyuan/', '', 4),
(494, 2, '', '送餐员', '', 0, '', NULL, NULL, 277, 7, 548, 1, 0, 2, 'songcanyuan', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/songcanyuan/', '', 4),
(495, 2, '', '厨师', '', 0, '', NULL, NULL, 277, 7, 549, 1, 0, 2, 'chushi', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/chushi/', '', 4),
(496, 2, '', '洗碗工', '', 0, '', NULL, NULL, 277, 7, 550, 1, 0, 2, 'xiwangong', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/xiwangong/', '', 4),
(497, 2, '', '保安', '', 0, '', NULL, NULL, 277, 7, 551, 1, 0, 2, 'baoan', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/baoan/', '', 4),
(498, 2, '', '保洁', '', 0, '', NULL, NULL, 277, 7, 552, 1, 0, 2, 'baojie', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/baojie/', '', 4),
(499, 2, '', '月嫂', '', 0, '', NULL, NULL, 277, 7, 553, 1, 0, 2, 'yuesao', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/yuesao/', '', 4),
(500, 2, '', '保姆', '', 0, '', NULL, NULL, 277, 7, 554, 1, 0, 2, 'baomu', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/baomu/', '', 4),
(501, 2, '', '家政', '', 0, '', NULL, NULL, 277, 7, 555, 1, 0, 2, 'jiazheng', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/jiazheng/', '', 4),
(502, 2, '', '婚礼策划', '', 0, '', NULL, NULL, 277, 7, 556, 1, 0, 2, 'hunlicehua', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/hunlicehua/', '', 4),
(503, 2, '', '育婴师', '', 0, '', NULL, NULL, 277, 7, 557, 1, 0, 2, 'yuyingshi', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/yuyingshi/', '', 4),
(504, 2, '', '催乳师', '', 0, '', NULL, NULL, 277, 7, 558, 1, 0, 2, 'cuirushi', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/cuirushi/', '', 4),
(505, 2, '', '司机', '', 0, '', NULL, NULL, 277, 7, 559, 1, 0, 2, 'siji', 'list', 'info_zp', '/zhaopin/lvyou-canyin-jiudian-fuwuye/siji/', '', 4),
(506, 2, '', '律师/法律顾问', '', 0, '', NULL, NULL, 276, 7, 561, 1, 0, 2, 'lvshi-falvguwen', 'list', 'info_zp', '/zhaopin/falv-fanyi/lvshi-falvguwen/', '', 4),
(507, 2, '', '律师助理', '', 0, '', NULL, NULL, 276, 7, 562, 1, 0, 2, 'lvshizhuli', 'list', 'info_zp', '/zhaopin/falv-fanyi/lvshizhuli/', '', 4),
(508, 2, '', '法务专员/主管', '', 0, '', NULL, NULL, 276, 7, 563, 1, 0, 2, 'fawuzhuanyuan-zhuguan', 'list', 'info_zp', '/zhaopin/falv-fanyi/fawuzhuanyuan-zhuguan/', '', 4),
(509, 2, '', '产权/专利顾问', '', 0, '', NULL, NULL, 276, 7, 564, 1, 0, 2, 'chanquan-zhuanliguwen', 'list', 'info_zp', '/zhaopin/falv-fanyi/chanquan-zhuanliguwen/', '', 4),
(510, 2, '', '英语翻译', '', 0, '', NULL, NULL, 276, 7, 565, 1, 0, 2, 'yingyufanyi', 'list', 'info_zp', '/zhaopin/falv-fanyi/yingyufanyi/', '', 4),
(511, 2, '', '日语翻译', '', 0, '', NULL, NULL, 276, 7, 566, 1, 0, 2, 'riyufanyi', 'list', 'info_zp', '/zhaopin/falv-fanyi/riyufanyi/', '', 4),
(512, 2, '', '韩语翻译', '', 0, '', NULL, NULL, 276, 7, 567, 1, 0, 2, 'hanyufanyi', 'list', 'info_zp', '/zhaopin/falv-fanyi/hanyufanyi/', '', 4),
(513, 2, '', '法语翻译', '', 0, '', NULL, NULL, 276, 7, 568, 1, 0, 2, 'fayufanyi', 'list', 'info_zp', '/zhaopin/falv-fanyi/fayufanyi/', '', 4),
(514, 2, '', '俄语翻译', '', 0, '', NULL, NULL, 276, 7, 569, 1, 0, 2, 'eyufanyi', 'list', 'info_zp', '/zhaopin/falv-fanyi/eyufanyi/', '', 4),
(515, 2, '', '德语翻译', '', 0, '', NULL, NULL, 276, 7, 570, 1, 0, 2, 'deyufanyi', 'list', 'info_zp', '/zhaopin/falv-fanyi/deyufanyi/', '', 4),
(516, 2, '', '西班牙语翻译', '', 0, '', NULL, NULL, 276, 7, 571, 1, 0, 2, 'xibanyayufanyi', 'list', 'info_zp', '/zhaopin/falv-fanyi/xibanyayufanyi/', '', 4),
(517, 2, '', '意大利语翻译', '', 0, '', NULL, NULL, 276, 7, 572, 1, 0, 2, 'yidaliyufanyi', 'list', 'info_zp', '/zhaopin/falv-fanyi/yidaliyufanyi/', '', 4),
(518, 2, '', '葡萄牙语翻译', '', 0, '', NULL, NULL, 276, 7, 573, 1, 0, 2, 'putaoyayufanyi', 'list', 'info_zp', '/zhaopin/falv-fanyi/putaoyayufanyi/', '', 4),
(519, 2, '', '阿拉伯语翻译', '', 0, '', NULL, NULL, 276, 7, 574, 1, 0, 2, 'alaboyufanyi', 'list', 'info_zp', '/zhaopin/falv-fanyi/alaboyufanyi/', '', 4),
(520, 2, '', '小语种翻译', '', 0, '', NULL, NULL, 276, 7, 575, 1, 0, 2, 'xiaoyuzhongfanyi', 'list', 'info_zp', '/zhaopin/falv-fanyi/xiaoyuzhongfanyi/', '', 4),
(521, 2, '', '老师', '', 0, '', NULL, NULL, 275, 7, 577, 1, 0, 2, 'laoshi', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/laoshi/', '', 4),
(522, 2, '', '课程顾问', '', 0, '', NULL, NULL, 275, 7, 578, 1, 0, 2, 'kechengguwen', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/kechengguwen/', '', 4),
(523, 2, '', '教务', '', 0, '', NULL, NULL, 275, 7, 579, 1, 0, 2, 'jiaowu', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/jiaowu/', '', 4),
(524, 2, '', '家教', '', 0, '', NULL, NULL, 275, 7, 580, 1, 0, 2, 'jiajiao', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/jiajiao/', '', 4),
(525, 2, '', '幼师', '', 0, '', NULL, NULL, 275, 7, 581, 1, 0, 2, 'youshi', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/youshi/', '', 4),
(526, 2, '', '助教', '', 0, '', NULL, NULL, 275, 7, 582, 1, 0, 2, 'zhujiao', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/zhujiao/', '', 4),
(527, 2, '', '编导', '', 0, '', NULL, NULL, 275, 7, 583, 1, 0, 2, 'biandao', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/biandao/', '', 4),
(528, 2, '', '摄影师', '', 0, '', NULL, NULL, 275, 7, 584, 1, 0, 2, 'sheyingshi', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/sheyingshi/', '', 4),
(529, 2, '', '编剧', '', 0, '', NULL, NULL, 275, 7, 585, 1, 0, 2, 'bianju', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/bianju/', '', 4),
(530, 2, '', '后期制作', '', 0, '', NULL, NULL, 275, 7, 586, 1, 0, 2, 'houqizhizuo', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/houqizhizuo/', '', 4),
(531, 2, '', '制片', '', 0, '', NULL, NULL, 275, 7, 587, 1, 0, 2, 'zhipian', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/zhipian/', '', 4),
(532, 2, '', '记者', '', 0, '', NULL, NULL, 275, 7, 588, 1, 0, 2, 'jizhe', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/jizhe/', '', 4),
(533, 2, '', '剪辑', '', 0, '', NULL, NULL, 275, 7, 589, 1, 0, 2, 'jianji', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/jianji/', '', 4),
(534, 2, '', '化妆师', '', 0, '', NULL, NULL, 275, 7, 590, 1, 0, 2, 'huazhuangshi', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/huazhuangshi/', '', 4),
(535, 2, '', '广告创意', '', 0, '', NULL, NULL, 275, 7, 591, 1, 0, 2, 'guanggaochuangyi', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/guanggaochuangyi/', '', 4),
(536, 2, '', '美术指导', '', 0, '', NULL, NULL, 275, 7, 592, 1, 0, 2, 'meishuzhidao', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/meishuzhidao/', '', 4),
(537, 2, '', '策划经理', '', 0, '', NULL, NULL, 275, 7, 593, 1, 0, 2, 'cehuajingli', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/cehuajingli/', '', 4),
(538, 2, '', '文案', '', 0, '', NULL, NULL, 275, 7, 594, 1, 0, 2, 'wenan', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/wenan/', '', 4),
(539, 2, '', '广告制作', '', 0, '', NULL, NULL, 275, 7, 595, 1, 0, 2, 'guanggaozhizuo', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/guanggaozhizuo/', '', 4),
(540, 2, '', '媒介', '', 0, '', NULL, NULL, 275, 7, 596, 1, 0, 2, 'meijie', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/meijie/', '', 4),
(541, 2, '', '广告审核', '', 0, '', NULL, NULL, 275, 7, 597, 1, 0, 2, 'guanggaoshenhe', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/guanggaoshenhe/', '', 4),
(542, 2, '', '平面设计', '', 0, '', NULL, NULL, 275, 7, 598, 1, 0, 2, 'pingmiansheji', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/pingmiansheji/', '', 4),
(543, 2, '', '网页设计', '', 0, '', NULL, NULL, 275, 7, 599, 1, 0, 2, 'wangyesheji', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/wangyesheji/', '', 4),
(544, 2, '', '插画师', '', 0, '', NULL, NULL, 275, 7, 600, 1, 0, 2, 'chahuashi', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/chahuashi/', '', 4),
(545, 2, '', '工业设计', '', 0, '', NULL, NULL, 275, 7, 601, 1, 0, 2, 'gongyesheji', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/gongyesheji/', '', 4),
(546, 2, '', '视觉设计', '', 0, '', NULL, NULL, 275, 7, 602, 1, 0, 2, 'shijuesheji', 'list', 'info_zp', '/zhaopin/jiaoyu-chuanmei-guanggao-sheji/shijuesheji/', '', 4),
(547, 2, '', '采购', '', 0, '', NULL, NULL, 274, 7, 604, 1, 0, 2, 'caigou', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/caigou/', '', 4),
(548, 2, '', '外贸', '', 0, '', NULL, NULL, 274, 7, 605, 1, 0, 2, 'waimao', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/waimao/', '', 4),
(549, 2, '', '外贸业务员', '', 0, '', NULL, NULL, 274, 7, 606, 1, 0, 2, 'waimaoyewuyuan', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/waimaoyewuyuan/', '', 4),
(550, 2, '', '外贸跟单', '', 0, '', NULL, NULL, 274, 7, 607, 1, 0, 2, 'waimaogendan', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/waimaogendan/', '', 4),
(551, 2, '', '采购助理', '', 0, '', NULL, NULL, 274, 7, 608, 1, 0, 2, 'caigouzhuli', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/caigouzhuli/', '', 4),
(552, 2, '', '外贸日语', '', 0, '', NULL, NULL, 274, 7, 609, 1, 0, 2, 'waimaoriyu', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/waimaoriyu/', '', 4),
(553, 2, '', '外贸英语', '', 0, '', NULL, NULL, 274, 7, 610, 1, 0, 2, 'waimaoyingyu', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/waimaoyingyu/', '', 4),
(554, 2, '', '外贸助理', '', 0, '', NULL, NULL, 274, 7, 611, 1, 0, 2, 'waimaozhuli', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/waimaozhuli/', '', 4),
(555, 2, '', '采购经理', '', 0, '', NULL, NULL, 274, 7, 612, 1, 0, 2, 'caigoujingli', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/caigoujingli/', '', 4),
(556, 2, '', '买手', '', 0, '', NULL, NULL, 274, 7, 613, 1, 0, 2, 'maishou', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/maishou/', '', 4),
(557, 2, '', '导购', '', 0, '', NULL, NULL, 274, 7, 614, 1, 0, 2, 'daogou', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/daogou/', '', 4),
(558, 2, '', '营业员', '', 0, '', NULL, NULL, 274, 7, 615, 1, 0, 2, 'yingyeyuan', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/yingyeyuan/', '', 4),
(559, 2, '', '店长', '', 0, '', NULL, NULL, 274, 7, 616, 1, 0, 2, 'dianchang', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/dianchang/', '', 4),
(560, 2, '', '收银员', '', 0, '', NULL, NULL, 274, 7, 617, 1, 0, 2, 'shouyinyuan', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/shouyinyuan/', '', 4),
(561, 2, '', '销售', '', 0, '', NULL, NULL, 274, 7, 618, 1, 0, 2, 'xiaoshou', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/xiaoshou/', '', 4),
(562, 2, '', '导购员', '', 0, '', NULL, NULL, 274, 7, 619, 1, 0, 2, 'daogouyuan', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/daogouyuan/', '', 4),
(563, 2, '', '督导', '', 0, '', NULL, NULL, 274, 7, 620, 1, 0, 2, 'dudao', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/dudao/', '', 4),
(564, 2, '', '客服', '', 0, '', NULL, NULL, 274, 7, 621, 1, 0, 2, 'kefu', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/kefu/', '', 4),
(565, 2, '', '新零售产品', '', 0, '', NULL, NULL, 274, 7, 622, 1, 0, 2, 'xinlingshouchanpin', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/xinlingshouchanpin/', '', 4),
(566, 2, '', '理货员', '', 0, '', NULL, NULL, 274, 7, 623, 1, 0, 2, 'lihuoyuan', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/lihuoyuan/', '', 4),
(567, 2, '', '供应链', '', 0, '', NULL, NULL, 274, 7, 624, 1, 0, 2, 'gongyinglian', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/gongyinglian/', '', 4),
(568, 2, '', '物流专员', '', 0, '', NULL, NULL, 274, 7, 625, 1, 0, 2, 'wuliuzhuanyuan', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/wuliuzhuanyuan/', '', 4),
(569, 2, '', '物流经理', '', 0, '', NULL, NULL, 274, 7, 626, 1, 0, 2, 'wuliujingli', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/wuliujingli/', '', 4),
(570, 2, '', '物流运营', '', 0, '', NULL, NULL, 274, 7, 627, 1, 0, 2, 'wuliuyunying', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/wuliuyunying/', '', 4),
(571, 2, '', '物流跟单', '', 0, '', NULL, NULL, 274, 7, 628, 1, 0, 2, 'wuliugendan', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/wuliugendan/', '', 4),
(572, 2, '', '物流管理', '', 0, '', NULL, NULL, 274, 7, 629, 1, 0, 2, 'wuliuguanli', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/wuliuguanli/', '', 4),
(573, 2, '', '物仓调度', '', 0, '', NULL, NULL, 274, 7, 630, 1, 0, 2, 'wucangdiaodu', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/wucangdiaodu/', '', 4),
(574, 2, '', '货运代理', '', 0, '', NULL, NULL, 274, 7, 631, 1, 0, 2, 'huoyundaili', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/huoyundaili/', '', 4),
(575, 2, '', '报检报关', '', 0, '', NULL, NULL, 274, 7, 632, 1, 0, 2, 'baojianbaoguan', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/baojianbaoguan/', '', 4),
(576, 2, '', '仓储管理', '', 0, '', NULL, NULL, 274, 7, 633, 1, 0, 2, 'cangchuguanli', 'list', 'info_zp', '/zhaopin/maoyi-lingshou-wuliu/cangchuguanli/', '', 4),
(577, 2, '', '土建工程师', '', 0, '', NULL, NULL, 273, 7, 635, 1, 0, 2, 'tujiangongchengshi', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/tujiangongchengshi/', '', 4),
(578, 2, '', '施工员', '', 0, '', NULL, NULL, 273, 7, 636, 1, 0, 2, 'shigongyuan', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/shigongyuan/', '', 4),
(579, 2, '', '资料员', '', 0, '', NULL, NULL, 273, 7, 637, 1, 0, 2, 'ziliaoyuan', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/ziliaoyuan/', '', 4),
(580, 2, '', '预算员', '', 0, '', NULL, NULL, 273, 7, 638, 1, 0, 2, 'yusuanyuan', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/yusuanyuan/', '', 4),
(581, 2, '', '造价员', '', 0, '', NULL, NULL, 273, 7, 639, 1, 0, 2, 'zaojiayuan', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/zaojiayuan/', '', 4),
(582, 2, '', '一级建造师', '', 0, '', NULL, NULL, 273, 7, 640, 1, 0, 2, 'yijijianzaoshi', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/yijijianzaoshi/', '', 4),
(583, 2, '', '室内设计师', '', 0, '', NULL, NULL, 273, 7, 641, 1, 0, 2, 'shinashejishi', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/shinashejishi/', '', 4),
(584, 2, '', '土建', '', 0, '', NULL, NULL, 273, 7, 642, 1, 0, 2, 'tujian', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/tujian/', '', 4),
(585, 2, '', '暖通', '', 0, '', NULL, NULL, 273, 7, 643, 1, 0, 2, 'nuantong', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/nuantong/', '', 4),
(586, 2, '', '项目经理', '', 0, '', NULL, NULL, 273, 7, 644, 1, 0, 2, 'xiangmujingli', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/xiangmujingli/', '', 4),
(587, 2, '', '电气工程师', '', 0, '', NULL, NULL, 273, 7, 645, 1, 0, 2, 'dianqigongchengshi', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/dianqigongchengshi/', '', 4),
(588, 2, '', '建筑设计', '', 0, '', NULL, NULL, 273, 7, 646, 1, 0, 2, 'jianzhusheji', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/jianzhusheji/', '', 4),
(589, 2, '', '置业顾问', '', 0, '', NULL, NULL, 273, 7, 647, 1, 0, 2, 'zhiyeguwen', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/zhiyeguwen/', '', 4),
(590, 2, '', '房地产销售', '', 0, '', NULL, NULL, 273, 7, 648, 1, 0, 2, 'fangdichanxiaoshou', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/fangdichanxiaoshou/', '', 4),
(591, 2, '', '房地产招商', '', 0, '', NULL, NULL, 273, 7, 649, 1, 0, 2, 'fangdichanzhaoshang', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/fangdichanzhaoshang/', '', 4),
(592, 2, '', '开发报建', '', 0, '', NULL, NULL, 273, 7, 650, 1, 0, 2, 'kaifabaojian', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/kaifabaojian/', '', 4),
(593, 2, '', '房地产策划', '', 0, '', NULL, NULL, 273, 7, 651, 1, 0, 2, 'fangdichancehua', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/fangdichancehua/', '', 4),
(594, 2, '', '房地产开发', '', 0, '', NULL, NULL, 273, 7, 652, 1, 0, 2, 'fangdichankaifa', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/fangdichankaifa/', '', 4),
(595, 2, '', '房地产评估', '', 0, '', NULL, NULL, 273, 7, 653, 1, 0, 2, 'fangdichanpinggu', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/fangdichanpinggu/', '', 4),
(596, 2, '', '地产经纪', '', 0, '', NULL, NULL, 273, 7, 654, 1, 0, 2, 'dichanjingji', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/dichanjingji/', '', 4),
(597, 2, '', '物业', '', 0, '', NULL, NULL, 273, 7, 655, 1, 0, 2, 'wuye', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/wuye/', '', 4),
(598, 2, '', '物业经理', '', 0, '', NULL, NULL, 273, 7, 656, 1, 0, 2, 'wuyejingli', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/wuyejingli/', '', 4),
(599, 2, '', '保安', '', 0, '', NULL, NULL, 273, 7, 657, 1, 0, 2, 'baoan', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/baoan/', '', 4),
(600, 2, '', '客服', '', 0, '', NULL, NULL, 273, 7, 658, 1, 0, 2, 'kefu', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/kefu/', '', 4),
(601, 2, '', '物业管理', '', 0, '', NULL, NULL, 273, 7, 659, 1, 0, 2, 'wuyeguanli', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/wuyeguanli/', '', 4),
(602, 2, '', '电工', '', 0, '', NULL, NULL, 273, 7, 660, 1, 0, 2, 'diangong', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/diangong/', '', 4),
(603, 2, '', '物业主管', '', 0, '', NULL, NULL, 273, 7, 661, 1, 0, 2, 'wuyezhuguan', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/wuyezhuguan/', '', 4),
(604, 2, '', '物业维修', '', 0, '', NULL, NULL, 273, 7, 662, 1, 0, 2, 'wuyeweixiu', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/wuyeweixiu/', '', 4),
(605, 2, '', '消防', '', 0, '', NULL, NULL, 273, 7, 663, 1, 0, 2, 'xiaofang', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/xiaofang/', '', 4),
(606, 2, '', '客服主管', '', 0, '', NULL, NULL, 273, 7, 664, 1, 0, 2, 'kefuzhuguan', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/kefuzhuguan/', '', 4),
(607, 2, '', '前台', '', 0, '', NULL, NULL, 273, 7, 665, 1, 0, 2, 'qiantai', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/qiantai/', '', 4),
(608, 2, '', '文员', '', 0, '', NULL, NULL, 273, 7, 666, 1, 0, 2, 'wenyuan', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/wenyuan/', '', 4),
(609, 2, '', '物业项目经理', '', 0, '', NULL, NULL, 273, 7, 667, 1, 0, 2, 'wuyexiangmujingli', 'list', 'info_zp', '/zhaopin/fangdichan-jianzhu-wuye/wuyexiangmujingli/', '', 4),
(610, 2, '', '投资经理', '', 0, '', NULL, NULL, 272, 7, 669, 1, 0, 2, 'touzijingli', 'list', 'info_zp', '/zhaopin/jinrong/touzijingli/', '', 4),
(611, 2, '', '风投', '', 0, '', NULL, NULL, 272, 7, 670, 1, 0, 2, 'fengtou', 'list', 'info_zp', '/zhaopin/jinrong/fengtou/', '', 4),
(612, 2, '', '催收', '', 0, '', NULL, NULL, 272, 7, 671, 1, 0, 2, 'cuishou', 'list', 'info_zp', '/zhaopin/jinrong/cuishou/', '', 4),
(613, 2, '', '银行柜员', '', 0, '', NULL, NULL, 272, 7, 672, 1, 0, 2, 'yinxingguiyuan', 'list', 'info_zp', '/zhaopin/jinrong/yinxingguiyuan/', '', 4),
(614, 2, '', '银行销售', '', 0, '', NULL, NULL, 272, 7, 673, 1, 0, 2, 'yinxingxiaoshou', 'list', 'info_zp', '/zhaopin/jinrong/yinxingxiaoshou/', '', 4),
(615, 2, '', '信审', '', 0, '', NULL, NULL, 272, 7, 674, 1, 0, 2, 'xinshen', 'list', 'info_zp', '/zhaopin/jinrong/xinshen/', '', 4),
(616, 2, '', '信用卡员', '', 0, '', NULL, NULL, 272, 7, 675, 1, 0, 2, 'xinyongkayuan', 'list', 'info_zp', '/zhaopin/jinrong/xinyongkayuan/', '', 4),
(617, 2, '', '贷款', '', 0, '', NULL, NULL, 272, 7, 676, 1, 0, 2, 'daikuan', 'list', 'info_zp', '/zhaopin/jinrong/daikuan/', '', 4),
(618, 2, '', '金融产品', '', 0, '', NULL, NULL, 272, 7, 677, 1, 0, 2, 'jinrongchanpin', 'list', 'info_zp', '/zhaopin/jinrong/jinrongchanpin/', '', 4),
(619, 2, '', '汽车金融', '', 0, '', NULL, NULL, 272, 7, 678, 1, 0, 2, 'qichejinrong', 'list', 'info_zp', '/zhaopin/jinrong/qichejinrong/', '', 4),
(620, 2, '', '金融研究', '', 0, '', NULL, NULL, 272, 7, 679, 1, 0, 2, 'jinrongyanjiu', 'list', 'info_zp', '/zhaopin/jinrong/jinrongyanjiu/', '', 4),
(621, 2, '', '证券', '', 0, '', NULL, NULL, 272, 7, 680, 1, 0, 2, 'zhengquan', 'list', 'info_zp', '/zhaopin/jinrong/zhengquan/', '', 4),
(622, 2, '', '交易员', '', 0, '', NULL, NULL, 272, 7, 681, 1, 0, 2, 'jiaoyiyuan', 'list', 'info_zp', '/zhaopin/jinrong/jiaoyiyuan/', '', 4),
(623, 2, '', '投资经理', '', 0, '', NULL, NULL, 272, 7, 682, 1, 0, 2, 'touzijingli', 'list', 'info_zp', '/zhaopin/jinrong/touzijingli/', '', 4),
(624, 2, '', '期货', '', 0, '', NULL, NULL, 272, 7, 683, 1, 0, 2, 'qihuo', 'list', 'info_zp', '/zhaopin/jinrong/qihuo/', '', 4),
(625, 2, '', '操盘手', '', 0, '', NULL, NULL, 272, 7, 684, 1, 0, 2, 'caopanshou', 'list', 'info_zp', '/zhaopin/jinrong/caopanshou/', '', 4),
(626, 2, '', '基金', '', 0, '', NULL, NULL, 272, 7, 685, 1, 0, 2, 'jijin', 'list', 'info_zp', '/zhaopin/jinrong/jijin/', '', 4),
(627, 2, '', '股票', '', 0, '', NULL, NULL, 272, 7, 686, 1, 0, 2, 'gupiao', 'list', 'info_zp', '/zhaopin/jinrong/gupiao/', '', 4),
(628, 2, '', '投资顾问', '', 0, '', NULL, NULL, 272, 7, 687, 1, 0, 2, 'touziguwen', 'list', 'info_zp', '/zhaopin/jinrong/touziguwen/', '', 4),
(629, 2, '', '信托', '', 0, '', NULL, NULL, 272, 7, 688, 1, 0, 2, 'xintuo', 'list', 'info_zp', '/zhaopin/jinrong/xintuo/', '', 4),
(630, 2, '', '担保', '', 0, '', NULL, NULL, 272, 7, 689, 1, 0, 2, 'danbao', 'list', 'info_zp', '/zhaopin/jinrong/danbao/', '', 4),
(631, 2, '', '信贷', '', 0, '', NULL, NULL, 272, 7, 690, 1, 0, 2, 'xindai', 'list', 'info_zp', '/zhaopin/jinrong/xindai/', '', 4),
(632, 2, '', '权证', '', 0, '', NULL, NULL, 272, 7, 691, 1, 0, 2, 'quanzheng', 'list', 'info_zp', '/zhaopin/jinrong/quanzheng/', '', 4),
(633, 2, '', '财产保险', '', 0, '', NULL, NULL, 272, 7, 692, 1, 0, 2, 'caichanbaoxian', 'list', 'info_zp', '/zhaopin/jinrong/caichanbaoxian/', '', 4),
(634, 2, '', '保险内勤', '', 0, '', NULL, NULL, 272, 7, 693, 1, 0, 2, 'baoxiannaqin', 'list', 'info_zp', '/zhaopin/jinrong/baoxiannaqin/', '', 4),
(635, 2, '', '理赔', '', 0, '', NULL, NULL, 272, 7, 694, 1, 0, 2, 'lipei', 'list', 'info_zp', '/zhaopin/jinrong/lipei/', '', 4),
(636, 2, '', '精算师', '', 0, '', NULL, NULL, 272, 7, 695, 1, 0, 2, 'jingsuanshi', 'list', 'info_zp', '/zhaopin/jinrong/jingsuanshi/', '', 4),
(637, 2, '', '保险销售', '', 0, '', NULL, NULL, 272, 7, 696, 1, 0, 2, 'baoxianxiaoshou', 'list', 'info_zp', '/zhaopin/jinrong/baoxianxiaoshou/', '', 4),
(638, 2, '', '理财顾问', '', 0, '', NULL, NULL, 272, 7, 697, 1, 0, 2, 'licaiguwen', 'list', 'info_zp', '/zhaopin/jinrong/licaiguwen/', '', 4),
(639, 2, '', '查勘定损', '', 0, '', NULL, NULL, 272, 7, 698, 1, 0, 2, 'chakandingsun', 'list', 'info_zp', '/zhaopin/jinrong/chakandingsun/', '', 4),
(640, 2, '', '车险', '', 0, '', NULL, NULL, 272, 7, 699, 1, 0, 2, 'chexian', 'list', 'info_zp', '/zhaopin/jinrong/chexian/', '', 4),
(641, 2, '', 'Java开发', '', 0, '', NULL, NULL, 271, 7, 701, 1, 0, 2, 'Javakaifa', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/Javakaifa/', '', 4),
(642, 2, '', 'UI设计师', '', 0, '', NULL, NULL, 271, 7, 702, 1, 0, 2, 'UIshejishi', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/UIshejishi/', '', 4),
(643, 2, '', 'Web前端', '', 0, '', NULL, NULL, 271, 7, 703, 1, 0, 2, 'Webqianduan', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/Webqianduan/', '', 4),
(644, 2, '', 'PHP', '', 0, '', NULL, NULL, 271, 7, 704, 1, 0, 2, 'PHP', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/PHP/', '', 4),
(645, 2, '', 'Python', '', 0, '', NULL, NULL, 271, 7, 705, 1, 0, 2, 'Python', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/Python/', '', 4),
(646, 2, '', 'Android', '', 0, '', NULL, NULL, 271, 7, 706, 1, 0, 2, 'Android', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/Android/', '', 4),
(647, 2, '', '美工', '', 0, '', NULL, NULL, 271, 7, 707, 1, 0, 2, 'meigong', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/meigong/', '', 4),
(648, 2, '', '深度学习', '', 0, '', NULL, NULL, 271, 7, 708, 1, 0, 2, 'shenduxuexi', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/shenduxuexi/', '', 4),
(649, 2, '', '算法工程师', '', 0, '', NULL, NULL, 271, 7, 709, 1, 0, 2, 'suanfagongchengshi', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/suanfagongchengshi/', '', 4),
(650, 2, '', 'Hadoop', '', 0, '', NULL, NULL, 271, 7, 710, 1, 0, 2, 'Hadoop', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/Hadoop/', '', 4),
(651, 2, '', 'Node.js', '', 0, '', NULL, NULL, 271, 7, 711, 1, 0, 2, 'Node-js', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/Node-js/', '', 4),
(652, 2, '', '数据开发', '', 0, '', NULL, NULL, 271, 7, 712, 1, 0, 2, 'shujukaifa', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/shujukaifa/', '', 4),
(653, 2, '', '数据分析师', '', 0, '', NULL, NULL, 271, 7, 713, 1, 0, 2, 'shujufenxishi', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/shujufenxishi/', '', 4),
(654, 2, '', '数据架构', '', 0, '', NULL, NULL, 271, 7, 714, 1, 0, 2, 'shujujiagou', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/shujujiagou/', '', 4),
(655, 2, '', '人工智能', '', 0, '', NULL, NULL, 271, 7, 715, 1, 0, 2, 'rengongzhinen', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/rengongzhinen/', '', 4),
(656, 2, '', '区块链', '', 0, '', NULL, NULL, 271, 7, 716, 1, 0, 2, 'qukuailian', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/qukuailian/', '', 4),
(657, 2, '', '电气工程师', '', 0, '', NULL, NULL, 271, 7, 717, 1, 0, 2, 'dianqigongchengshi', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/dianqigongchengshi/', '', 4),
(658, 2, '', 'PLC', '', 0, '', NULL, NULL, 271, 7, 718, 1, 0, 2, 'PLC', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/PLC/', '', 4),
(659, 2, '', '测试工程师', '', 0, '', NULL, NULL, 271, 7, 719, 1, 0, 2, 'ceshigongchengshi', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/ceshigongchengshi/', '', 4),
(660, 2, '', '设备工程师', '', 0, '', NULL, NULL, 271, 7, 720, 1, 0, 2, 'shebeigongchengshi', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/shebeigongchengshi/', '', 4),
(661, 2, '', '硬件工程师', '', 0, '', NULL, NULL, 271, 7, 721, 1, 0, 2, 'yingjiangongchengshi', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/yingjiangongchengshi/', '', 4),
(662, 2, '', '结构工程师', '', 0, '', NULL, NULL, 271, 7, 722, 1, 0, 2, 'jiegougongchengshi', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/jiegougongchengshi/', '', 4),
(663, 2, '', '工艺工程师', '', 0, '', NULL, NULL, 271, 7, 723, 1, 0, 2, 'gongyigongchengshi', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/gongyigongchengshi/', '', 4),
(664, 2, '', '产品经理', '', 0, '', NULL, NULL, 271, 7, 724, 1, 0, 2, 'chanpinjingli', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/chanpinjingli/', '', 4),
(665, 2, '', '新媒体运营', '', 0, '', NULL, NULL, 271, 7, 725, 1, 0, 2, 'xinmeitiyunying', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/xinmeitiyunying/', '', 4),
(666, 2, '', '运营专员', '', 0, '', NULL, NULL, 271, 7, 726, 1, 0, 2, 'yunyingzhuanyuan', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/yunyingzhuanyuan/', '', 4),
(667, 2, '', '淘宝运营', '', 0, '', NULL, NULL, 271, 7, 727, 1, 0, 2, 'taobaoyunying', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/taobaoyunying/', '', 4),
(668, 2, '', '天猫运营', '', 0, '', NULL, NULL, 271, 7, 728, 1, 0, 2, 'tianmiaoyunying', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/tianmiaoyunying/', '', 4),
(669, 2, '', '产品助理', '', 0, '', NULL, NULL, 271, 7, 729, 1, 0, 2, 'chanpinzhuli', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/chanpinzhuli/', '', 4),
(670, 2, '', '产品运营', '', 0, '', NULL, NULL, 271, 7, 730, 1, 0, 2, 'chanpinyunying', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/chanpinyunying/', '', 4),
(671, 2, '', '淘宝客服', '', 0, '', NULL, NULL, 271, 7, 731, 1, 0, 2, 'taobaokefu', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/taobaokefu/', '', 4),
(672, 2, '', '游戏运营', '', 0, '', NULL, NULL, 271, 7, 732, 1, 0, 2, 'youxiyunying', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/youxiyunying/', '', 4),
(673, 2, '', '编缉', '', 0, '', NULL, NULL, 271, 7, 733, 1, 0, 2, 'bianji', 'list', 'info_zp', '/zhaopin/jisuanji-hulianwangIT-tongxin/bianji/', '', 4),
(674, 2, '', '发型师', '', 0, '', NULL, NULL, 270, 7, 735, 1, 0, 2, 'faxingshi', 'list', 'info_zp', '/zhaopin/meirong-meifa/faxingshi/', '', 4),
(675, 2, '', '美发助理', '', 0, '', NULL, NULL, 270, 7, 736, 1, 0, 2, 'meifazhuli', 'list', 'info_zp', '/zhaopin/meirong-meifa/meifazhuli/', '', 4),
(676, 2, '', '学徒', '', 0, '', NULL, NULL, 270, 7, 737, 1, 0, 2, 'xuetu', 'list', 'info_zp', '/zhaopin/meirong-meifa/xuetu/', '', 4),
(677, 2, '', '洗头工', '', 0, '', NULL, NULL, 270, 7, 738, 1, 0, 2, 'xitougong', 'list', 'info_zp', '/zhaopin/meirong-meifa/xitougong/', '', 4),
(678, 2, '', '美容师', '', 0, '', NULL, NULL, 270, 7, 739, 1, 0, 2, 'meirongshi', 'list', 'info_zp', '/zhaopin/meirong-meifa/meirongshi/', '', 4),
(679, 2, '', '美容助理', '', 0, '', NULL, NULL, 270, 7, 740, 1, 0, 2, 'meirongzhuli', 'list', 'info_zp', '/zhaopin/meirong-meifa/meirongzhuli/', '', 4),
(680, 2, '', '学徒', '', 0, '', NULL, NULL, 270, 7, 741, 1, 0, 2, 'xuetu', 'list', 'info_zp', '/zhaopin/meirong-meifa/xuetu/', '', 4),
(681, 2, '', '化妆师', '', 0, '', NULL, NULL, 270, 7, 742, 1, 0, 2, 'huazhuangshi', 'list', 'info_zp', '/zhaopin/meirong-meifa/huazhuangshi/', '', 4),
(682, 2, '', '美甲师', '', 0, '', NULL, NULL, 270, 7, 743, 1, 0, 2, 'meijiashi', 'list', 'info_zp', '/zhaopin/meirong-meifa/meijiashi/', '', 4),
(683, 2, '', '宠物美容', '', 0, '', NULL, NULL, 270, 7, 744, 1, 0, 2, 'chongwumeirong', 'list', 'info_zp', '/zhaopin/meirong-meifa/chongwumeirong/', '', 4),
(684, 2, '', '美容店长', '', 0, '', NULL, NULL, 270, 7, 745, 1, 0, 2, 'meirongdianchang', 'list', 'info_zp', '/zhaopin/meirong-meifa/meirongdianchang/', '', 4),
(685, 2, '', '美容瘦身顾问', '', 0, '', NULL, NULL, 270, 7, 746, 1, 0, 2, 'meirongshoushenguwen', 'list', 'info_zp', '/zhaopin/meirong-meifa/meirongshoushenguwen/', '', 4),
(686, 2, '', '彩妆培训师', '', 0, '', NULL, NULL, 270, 7, 747, 1, 0, 2, 'caizhuangpeixunshi', 'list', 'info_zp', '/zhaopin/meirong-meifa/caizhuangpeixunshi/', '', 4),
(687, 2, '', '美体师', '', 0, '', NULL, NULL, 270, 7, 748, 1, 0, 2, 'meitishi', 'list', 'info_zp', '/zhaopin/meirong-meifa/meitishi/', '', 4);

-- --------------------------------------------------------

--
-- 表的结构 `my_certification`
--

CREATE TABLE `my_certification` (
  `id` int(11) NOT NULL,
  `typeid` tinyint(1) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `img_path` varchar(250) NOT NULL,
  `pubtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_certification`
--

INSERT INTO `my_certification` (`id`, `typeid`, `userid`, `img_path`, `pubtime`) VALUES
(1, 2, 'laogui0704', '/attachment/certification/201807/1532333207oyv8u.jpg', 1532333207);

-- --------------------------------------------------------

--
-- 表的结构 `my_channel`
--

CREATE TABLE `my_channel` (
  `catid` mediumint(6) NOT NULL,
  `if_view` tinyint(1) NOT NULL DEFAULT '1',
  `color` char(10) NOT NULL,
  `catname` varchar(32) NOT NULL,
  `title` varchar(250) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `catorder` smallint(6) NOT NULL,
  `dir_type` tinyint(1) NOT NULL,
  `dir_typename` varchar(100) NOT NULL,
  `html_dir` varchar(200) NOT NULL,
  `htmlpath` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_checkanswer`
--

CREATE TABLE `my_checkanswer` (
  `id` smallint(3) NOT NULL,
  `question` varchar(250) NOT NULL,
  `answer` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_city`
--

CREATE TABLE `my_city` (
  `cityid` mediumint(6) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `provinceid` smallint(6) NOT NULL,
  `cityname` varchar(32) NOT NULL,
  `citypy` varchar(100) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `firstletter` varchar(1) NOT NULL,
  `mappoint` varchar(100) NOT NULL,
  `ifhot` tinyint(1) NOT NULL DEFAULT '0',
  `domain` varchar(150) NOT NULL,
  `title` varchar(100) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_city`
--

INSERT INTO `my_city` (`cityid`, `status`, `provinceid`, `cityname`, `citypy`, `displayorder`, `directory`, `firstletter`, `mappoint`, `ifhot`, `domain`, `title`, `keywords`, `description`) VALUES
(9, 1, 0, '梅州', 'meizhou', 0, 'mz', 'm', '', 0, '', '', '', ''),
(10, 1, 0, '茂名', 'maoming', 0, 'mm', 'm', '', 0, '', '', '', ''),
(7, 1, 0, '广州', 'guangzhou', 0, 'gz', 'g', '', 0, '', '', '', ''),
(8, 1, 0, '北京', 'beijing', 0, 'bj', 'b', '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `my_comment`
--

CREATE TABLE `my_comment` (
  `id` int(8) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `content` varchar(255) NOT NULL,
  `pubtime` int(10) NOT NULL,
  `ip` char(16) NOT NULL,
  `comment_level` tinyint(1) NOT NULL,
  `typeid` int(8) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'information'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_config`
--

CREATE TABLE `my_config` (
  `description` varchar(100) NOT NULL,
  `value` mediumtext NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'config'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_config`
--

INSERT INTO `my_config` (`description`, `value`, `type`) VALUES
('latestbackup', '1423028736', 'database'),
('whenpost', '', 'checkanswe'),
('whenregister', '', 'checkanswe'),
('jsdateformat', 'Y/m/d', 'jswizard'),
('jscachelife', '0', 'jswizard'),
('jsstatus', '1', 'jswizard'),
('levelup_notice', '升级至黄金会员，您将能管理上传店铺背景banner图片，可切换使用更多的店铺模板风格，并拥有更多受限栏目的操作权限。', 'levelup'),
('smtp_mail', '', 'mail'),
('credit_set', 'a:1:{s:4:"rank";a:15:{i:1;i:10;i:2;i:20;i:3;i:40;i:4;i:70;i:5;i:120;i:6;i:200;i:7;i:400;i:8;i:700;i:9;i:1200;i:10;i:1800;i:11;i:2600;i:12;i:4000;i:13;i:10000;i:14;i:30000;i:15;i:60000;}}', 'credit_sco'),
('score', 'a:1:{s:4:"rank";a:8:{s:8:"register";s:3:"+10";s:5:"login";s:2:"+2";s:11:"information";s:2:"+2";s:6:"coupon";s:2:"+2";s:5:"group";s:2:"+2";s:5:"goods";s:2:"+2";s:11:"com_certify";s:3:"+10";s:11:"per_certify";s:3:"+10";}}', 'credit_sco'),
('credit', 'a:1:{s:4:"rank";a:3:{s:11:"com_certify";s:3:"+50";s:11:"per_certify";s:3:"+50";s:11:"coin_credit";s:3:"+10";}}', 'credit_sco'),
('number', '4', 'authcode'),
('insidelink', 'a:1:{s:7:"forward";a:5:{s:11:"information";s:1:"1";s:4:"news";s:1:"1";s:5:"goods";s:1:"1";s:5:"group";s:1:"1";s:6:"coupon";s:1:"1";}}', 'insidelink'),
('comment', 'a:3:{s:11:"information";s:1:"2";s:4:"news";s:1:"2";s:5:"store";s:1:"2";}', 'comment'),
('jsrefdomains', '', 'jswizard'),
('mail_pass', '', 'mail'),
('callback', '', 'qqlogin'),
('mobile', 'a:8:{s:11:"allowmobile";s:1:"1";s:10:"changecity";s:1:"1";s:11:"autorefresh";s:1:"1";s:8:"register";s:1:"1";s:4:"post";s:1:"1";s:8:"authcode";s:1:"0";s:18:"mobiletopicperpage";s:2:"10";s:12:"mobiledomain";s:0:"";}', 'mobile'),
('close', '3', 'authcode'),
('incline', '30', 'authcode'),
('distort', '2', 'authcode'),
('cfg_cityshowtype', 'pinyin', 'config'),
('cfg_info_if_gq', '0', 'config'),
('appkey', '', 'qqlogin'),
('cfg_info_if_img', '0', 'config'),
('cfg_post_editor', '0', 'config'),
('screen_index', 'full', 'config'),
('cfg_member_info_refresh', '1', 'config'),
('cfg_member_info_bold', '1', 'config'),
('cfg_member_info_red', '1', 'config'),
('cfg_member_upgrade_list_top', '2', 'config'),
('cfg_member_upgrade_index_top', '4', 'config'),
('cfg_member_upgrade_top', '2', 'config'),
('seo_force_news', 'active', 'seo'),
('mobile', 'a:6:{s:11:"allowmobile";s:1:"1";s:11:"autorefresh";s:1:"1";s:8:"register";s:1:"1";s:8:"authcode";s:1:"1";s:18:"mobiletopicperpage";s:2:"10";s:12:"mobiledomain";s:0:"";}', 'mobile'),
('tpl_set', 'a:15:{s:7:"banmian";s:7:"classic";s:8:"smp_cats";a:4:{s:5:"first";a:2:{i:0;s:1:"1";i:1;s:1:"6";}s:6:"second";a:3:{i:0;s:1:"3";i:1;s:1:"2";i:2;s:2:"10";}s:5:"third";a:2:{i:0;s:1:"4";i:1;s:1:"5";}s:6:"fourth";a:1:{i:0;s:1:"9";}}s:9:"showstyle";a:15:{i:3;s:1:"2";i:1;s:1:"2";i:2;s:1:"2";i:250;s:1:"1";i:4;s:1:"2";i:5;s:1:"2";i:6;s:1:"2";i:251;s:1:"1";i:9;s:1:"3";i:10;s:1:"3";i:244;s:1:"3";i:252;s:1:"1";i:253;s:1:"1";i:254;s:1:"1";i:255;s:1:"1";}s:7:"classic";a:1:{s:4:"cats";s:2:"10";}s:6:"portal";a:10:{s:6:"ershou";s:1:"1";s:9:"ershoumod";s:1:"2";s:6:"zufang";s:2:"41";s:9:"zufangmod";s:2:"23";s:10:"ershoufang";s:2:"43";s:13:"ershoufangmod";s:2:"22";s:7:"zhaopin";s:1:"4";s:10:"zhaopinmod";s:1:"7";s:6:"jianli";s:1:"6";s:9:"jianlimod";s:1:"9";}s:7:"portali";a:3:{s:7:"acreage";s:7:"acreage";s:6:"prices";s:6:"prices";s:7:"company";s:7:"company";}s:12:"indextopinfo";s:2:"12";s:7:"newinfo";s:1:"0";s:8:"announce";s:1:"8";s:3:"faq";s:1:"0";s:4:"news";s:1:"7";s:11:"foreachinfo";s:1:"6";s:5:"goods";s:1:"8";s:9:"telephone";s:2:"12";s:7:"lifebox";s:2:"24";}', 'tpl'),
('mail_user', '', 'mail'),
('smtp_serverport', '25', 'mail'),
('cfg_citiesdir', '/city', 'config'),
('cfg_redirectpage', 'nchome', 'config'),
('screen_info', 'full', 'config'),
('seo_force_info', 'active', 'seo'),
('seo_force_category', 'active', 'seo'),
('cfg_if_info_verify', '0', 'config'),
('screen_cat', 'full', 'config'),
('cfg_if_nonmember_info', '1', 'config'),
('cfg_postfile', 'publish.php', 'config'),
('seo_force_about', 'active', 'seo'),
('seo_htmlext', '', 'seo'),
('seo_htmlnewsdir', '', 'seo'),
('cfg_upimg_watermark_position', '9', 'config'),
('cfg_upimg_watermark_diaphaneity', '60', 'config'),
('seo_htmldir', '', 'seo'),
('seo_description', '{city}网站描述', 'seo'),
('cfg_upimg_watermark_size', '12', 'config'),
('cfg_upimg_watermark_color', '#FFFFFF', 'config'),
('cfg_upimg_watermark_text', 'http://www.mymps.com.cn', 'config'),
('cfg_upimg_type', 'png,jpg,gif,jpeg', 'config'),
('cfg_upimg_size', '500', 'config'),
('cfg_upimg_watermark', '1', 'config'),
('cfg_upimg_watermark_width', '180', 'config'),
('cfg_upimg_watermark_height', '50', 'config'),
('seo_keywords', '{city}网站关键词', 'seo'),
('seo_sitename', '{city}网站名称', 'seo'),
('seo_force_yp', 'active', 'seo'),
('seo_force_space', 'active', 'seo'),
('seo_force_store', 'active', 'seo'),
('seo_html_make', '', 'seo'),
('cfg_upimg_watermark_img', '', 'config'),
('cfg_coin_fee', '1', 'config'),
('cfg_score_fee', '10', 'config'),
('cfg_member_perpost_consume', '0', 'config'),
('cfg_pay_min', '5', 'config'),
('cfg_affiliate_score', '5', 'config'),
('cfg_if_affiliate', '1', 'config'),
('snow', '', 'authcode'),
('line', '1', 'authcode'),
('post', '1', 'authcode'),
('type', 'engber', 'authcode'),
('smtp_server', '', 'mail'),
('mail_service', 'no', 'mail'),
('noise', '10', 'authcode'),
('forgetpass', '1', 'authcode'),
('register', '1', 'authcode'),
('login', '1', 'authcode'),
('bodybg', '1', 'config'),
('cfg_member_reg_content', '尊敬的{username},您已经注册成为{sitename}的会员,请您在发表言论时,遵守当地法律法规。\r\n如果您有什么疑问可以联系管理员。\r\n\r\n\r\n{sitename}\r\n{time}', 'config'),
('cfg_member_reg_title', '{username},您好,感谢您的注册,请阅读以下内容。', 'config'),
('cfg_forbidden_reg_ip', '', 'config'),
('cfg_member_regplace', '', 'config'),
('cfg_if_corp', '1', 'config'),
('cfg_if_member_log_in', '1', 'config'),
('cfg_if_member_register', '1', 'config'),
('cfg_member_verify', '1', 'config'),
('cfg_member_logfile', 'member.php', 'config'),
('cfg_backup_dir', '/backup', 'config'),
('open', '0', 'qqlogin'),
('appid', '', 'qqlogin'),
('cfg_independency', 'advertisement,focus,announce,friendlink,telephone,lifebox', 'config'),
('cfg_raquo', '&gt;', 'config'),
('cfg_page_line', '15', 'config'),
('cfg_list_page_line', '15', 'config'),
('cfg_site_open_reason', '', 'config'),
('cfg_authcodefile', 'randcode.php', 'config'),
('cfg_if_site_open', '1', 'config'),
('SiteStat', '', 'config'),
('SiteLogo', '../logo.gif', 'config'),
('SiteBeian', '', 'config'),
('SiteTel', '18718125127', 'config'),
('SiteEmail', '18316968688@139.com', 'config'),
('SiteQQ', '1831696868', 'config'),
('SiteUrl', 'http://localhost/mayi', 'config'),
('SiteName', '恩普人力', 'config'),
('cfg_allow_post_area', '', 'config'),
('cfg_disallow_post_tel', '', 'config'),
('cfg_forbidden_post_ip', '', 'config'),
('cfg_if_post_othercity', '0', 'config'),
('cfg_upimg_number', '4', 'config'),
('cfg_nonmember_perday_post', '10', 'config'),
('mapapi', 'http://api.map.baidu.com/api?v=1.4', 'config'),
('mapflag', 'baidu', 'config'),
('mapapi_charset', '', 'config'),
('mapview_level', '14', 'config'),
('screen_search', 'full', 'config'),
('cfg_tpl_dir', 'orange', 'config'),
('head_style', 'new', 'config');

-- --------------------------------------------------------

--
-- 表的结构 `my_corp`
--

CREATE TABLE `my_corp` (
  `corpid` mediumint(6) NOT NULL,
  `corpname` varchar(32) NOT NULL,
  `parentid` int(11) UNSIGNED NOT NULL,
  `corporder` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_corp`
--

INSERT INTO `my_corp` (`corpid`, `corpname`, `parentid`, `corporder`) VALUES
(10, '购物天地', 0, 6),
(9, '旅游出行', 0, 5),
(8, '生活便利', 0, 4),
(7, '餐饮美食', 0, 3),
(6, '休闲娱乐', 0, 2),
(11, '教育培训', 0, 7),
(12, '装饰装修', 0, 8),
(14, '酒吧', 6, 11),
(15, '茶楼', 6, 12),
(16, '咖啡厅', 6, 13),
(17, '俱乐部', 6, 14),
(18, 'KTV', 6, 15),
(19, '洗浴足疗', 6, 16),
(20, '美容', 6, 17),
(21, '健身', 6, 18),
(22, '运动', 6, 19),
(23, '票务', 6, 20),
(24, '快餐', 7, 22),
(25, '火锅', 7, 24),
(26, '海鲜', 7, 25),
(27, '川菜', 7, 26),
(28, '京菜', 7, 27),
(29, '粤菜', 7, 28),
(30, '湘菜', 7, 29),
(31, '家常', 7, 30),
(32, '西餐', 7, 31),
(33, '风味', 7, 32),
(34, '家政保洁', 8, 34),
(35, '搬家', 8, 35),
(36, '房产中介', 8, 36),
(37, '快递', 8, 37),
(38, '婚纱影楼', 8, 38),
(39, '婚庆礼仪', 8, 39),
(40, '婚介交友', 8, 40),
(41, '旅行社', 9, 42),
(42, '度假村', 9, 43),
(43, '景点', 9, 44),
(44, '酒店宾馆', 9, 45),
(45, '交通票务', 9, 46),
(46, '商场超市', 10, 48),
(47, '家电数码', 10, 49),
(48, '休闲运动', 10, 50),
(49, '文化艺术', 10, 51),
(50, '保健美容', 10, 52),
(51, '服装皮具', 10, 53),
(52, '眼镜钟表', 10, 54),
(53, '珠宝首饰', 10, 55),
(54, '外语', 11, 57),
(55, 'IT', 11, 58),
(56, '家教', 11, 59),
(57, '管理财务', 11, 60),
(58, '艺术影视', 11, 61),
(59, '远程教育', 11, 62),
(60, '技能认证', 11, 63),
(61, '留学移民', 11, 64),
(62, '装饰装修', 12, 66),
(63, '设计装修', 12, 67),
(64, '家居广场', 12, 68),
(65, '建材市场', 12, 69),
(66, '门窗', 12, 70);

-- --------------------------------------------------------

--
-- 表的结构 `my_coupon`
--

CREATE TABLE `my_coupon` (
  `id` mediumint(8) NOT NULL,
  `cate_id` smallint(5) NOT NULL DEFAULT '0',
  `areaid` smallint(5) NOT NULL DEFAULT '0',
  `userid` varchar(30) NOT NULL,
  `pre_picture` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL DEFAULT '',
  `begindate` int(10) NOT NULL DEFAULT '0',
  `enddate` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `des` varchar(50) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `ctype` enum('折扣券','抵价券') NOT NULL DEFAULT '折扣券',
  `sup` varchar(3) NOT NULL,
  `prints` mediumint(8) NOT NULL DEFAULT '0',
  `comments` mediumint(8) NOT NULL DEFAULT '0',
  `grade` smallint(5) NOT NULL DEFAULT '1',
  `flag` tinyint(1) NOT NULL DEFAULT '1',
  `dateline` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `hit` int(10) NOT NULL DEFAULT '0',
  `qq` int(8) NOT NULL,
  `web_address` char(100) NOT NULL,
  `qq_qun` int(8) NOT NULL,
  `cityid` mediumint(6) NOT NULL,
  `streetid` mediumint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_coupon_category`
--

CREATE TABLE `my_coupon_category` (
  `cate_id` smallint(3) NOT NULL,
  `cate_name` varchar(100) NOT NULL,
  `cate_view` tinyint(1) NOT NULL DEFAULT '1',
  `cate_order` smallint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_coupon_category`
--

INSERT INTO `my_coupon_category` (`cate_id`, `cate_name`, `cate_view`, `cate_order`) VALUES
(9, '美食', 1, 1),
(10, '休闲', 1, 2),
(11, '女性', 1, 3),
(12, '出行', 1, 4),
(13, '摄影', 1, 5),
(14, '其它', 1, 6);

-- --------------------------------------------------------

--
-- 表的结构 `my_crons`
--

CREATE TABLE `my_crons` (
  `cronid` smallint(6) NOT NULL,
  `name` char(50) NOT NULL DEFAULT '',
  `lastrun` int(10) NOT NULL DEFAULT '0',
  `nextrun` int(10) NOT NULL DEFAULT '0',
  `day` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_crons`
--

INSERT INTO `my_crons` (`cronid`, `name`, `lastrun`, `nextrun`, `day`) VALUES
(1, 'advertisement', 1532333721, 1532361600, 1),
(2, 'levelup', 1532333721, 1532361600, 1);

-- --------------------------------------------------------

--
-- 表的结构 `my_faq`
--

CREATE TABLE `my_faq` (
  `id` tinyint(5) NOT NULL,
  `typeid` tinyint(5) NOT NULL,
  `title` char(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_faq`
--

INSERT INTO `my_faq` (`id`, `typeid`, `title`, `content`) VALUES
(2, 5, '如何成为本站的注册用户？', '注册其实很简单，只要按照如下提示操作便可。 <br />\r\n<br />\r\n1、进入网站首页，点击右上角“注册”按钮； <br />\r\n<br />\r\n2、进入到“注册”页面，根据提示信息，填写您的昵称、密码、邮箱之后，点击“注册”即可。 <br />\r\n<br />\r\n3、如果需要发布信息，在会员中心中，可以直接点击“立即免费发布信息”按钮或点击由上角的“免费发布信息”图标。 <br />\r\n<br />'),
(3, 5, '昵称有什么用？可以更改吗？', '1、昵称是你登陆本网的通行证，每个人都会有一个唯一标识的昵称，您所发布的每一条信息中也会显示出来，它是您在本网站身份的标志。目前本网站上的昵称(账号)是不允许修改的。建议用户注册时请选择您喜欢并能牢记的账号。 <br />\r\n<br />\r\n2、昵称是不能够修改的，就好像现实生活里的人名一样。 <br />\r\n<br />\r\n3、昵称将伴随你度过在本网站的快乐每一天。 <br />'),
(4, 5, '怎么登录会员管理中心？', '在注册成为本网站用户后，你就可以使用账号(即昵称)登录会员管理中心了，跟着我们来看看详细操作步骤吧： <br />\r\n<br />\r\n1、进入本网首页－＞点击右上角“登录” <br />\r\n<br />\r\n2、输入您的昵称与密码，点击“登录”。 <br />\r\n<br />\r\n3、恭喜您登陆成功，你可以发布信息或浏览信息，随你开心。 <br />\r\n<br />'),
(6, 5, '我的密码忘记了怎么办？', '如果您忘记了账号密码，别担心，您可以通过点击“登录”进入快速登录页面,点击该页面左小角中的“忘记密码 我要找回”按钮获得。<br />\r\n<br />\r\n1、进入到找回密码页面后,如果您曾设置了密保，那么直接在页面中输入密保问题与答案便可找回。 <br />\r\n<br />\r\n2、如果您没有设置密保，您也可以联系客服帮您重设密码。'),
(7, 2, '在本站发布信息要收费吗？', '1、本站是一个免费的生活信息交流平台。 <br /><br />2、我们为广大普通用户提供永久免费发布生活信息的服务。'),
(22, 4, '诚信认证流程', '一、认证目的 <br /><br />诚信认证包括个人身份认证和商家营业执照认证，本网站推出诚信认证是为规范网站诚信秩序，解决部分垃圾、虚假、违法等不良信息，提高信息真实性与可信度，也在一定程度上保证验证用户的信息质量高于非验证用户的信息质量，让用户查询使用信息更放心，给用户一个良好的诚信网络交流环境；同时，对处理不良、违法信息也会有很大帮助，有资料依据，每位认证后的用户应对所发布的信息负有诚信和法律责任。 <br /><br />二、认证规则 <br /><br />用户自愿、免费认证的原则。 <br />1. 个人身份认证中一个身份证只能认证一个用户名，用户须上传真实的个人身份资料； <br />2. 商家营业执照认证中公司姓名须与营业执照上完全一致，如果申请人不是公司法定代表人，请下载委托书，填写后再上传身份证彩色原件扫描件。 <br /><br />三、认证方式 <br /><br />1. 传真申请，须传真身份证或者营业执照复印件 <br />2. 在线申请，须填写相关认证信息，同时上传彩色原件扫描件。 <br />所有本网站用户都可以免费使用认证服务，认证流程简单，通过认证增加真实性和诚信度，可免费获得象征更值得信赖的认证用户身份标识 ，同时所发布的信息将获得免费更多展示与反馈，信息可免费展示在列表页&ldquo;诚信用户专区&rdquo;。 <br /><br /><br />四、认证审核标准 <br /><br />1.个人身份认证中一个身份证只能认证一个用户名，商家营业执照认证中公司姓名须与营业执照上完全一致，如果申请人不是公司法定代表人，请下载委托书，填写后再上传身份证彩色原件扫描件。 <br /><br />2. 认证时账号被他人使用 <br />须提交本人身份证原件复印件和户口复印件，审核通过后将使用账号封锁，并且该身份证不能申请认证，确保账号安全。 <br /><br /><br />3. 对实名资料的保密承诺 <br />通过认证后的实名资料将不能取消与更改，本网站将对您的真实姓名、身份证号码等信息资料，采取严格的保密措施，绝不会公开或者提供给除公安局以外的任何其他第三方。 <br /><br /><br />五、认证用户守则 <br /><br />1. 认证后的商家用户须保证信息的真实性，不得有虚假、违法、不良信息，要遵守版规发布信息。对于被用户投诉的商家，管理员将视情况处理，采取警告、取消商家资格、待审核或封锁其账号等处罚方式，后果严重者将配合用户追究相关商家法律责任。 <br /><br />2. 各商家之间要和睦相处，不得有诋毁、谩骂、人身攻击等行为。如果对别的商家有意见，可以通过站内短信息提出，并且尽可能地提出改善建议。对于恶意攻击行为（包括用马甲攻击），管理员将视情节采取书面警告、取消商家资格、待审核或封锁其账号等处罚方式。'),
(23, 2, '为什么我的信息是“待审核”？', '<div>为了保证本站的信息质量，我们对部分信息设置了“待审核”状态，“待审核”的信息有以下几种情况，不管您是哪种情况，我们编辑都会及时处理。 <br />\r\n<br />\r\n1、为了保证本站上的绝大多数信息合法、规范，我们会在后台设置关键字的屏蔽的功能，当您的信息含有违法、严重违规或者语言粗俗不雅、侮辱他人、产生歧义等内容，系统将会把这条信息自动列入“待审核”当中。 <br />\r\n<br />\r\n2、如果您的信息重复发表两条以上、联系方式为外地、信息缺少关键内容等情况下，也许会被本站列入“待审核”当中。 <br />\r\n<br />\r\n3、您的联系方式若之前有其他账号使用发布过信息，那么您的信息也会自动进入“待审核”状态中，遇到这样的情况，您可以联系我们进行确认，以避免他人使用您的联系方式。 <br />\r\n<br />\r\n4、当然，汉字语义丰富，也许您的某些非上述有争议性的内容发布时同样遇到这样的问题未能解决，建议您与本站客服取得联系。 <br />\r\n<br />\r\n5、 “待审核”的信息24小时内会审核完，通过审核后的信息会公布出来，没通过审核的信息将被移入“回收站”中</div>'),
(24, 1, '置顶有哪几种形式？', '<p>\r\n	置顶有3种形式，大类置顶，小类置顶和首页置顶。\r\n</p>\r\n<p>\r\n	大类置顶：可在小分类下置顶信息，可以采用分类信息的页面样式；\r\n</p>\r\n<p>\r\n	小类置顶：可在小分类下置顶信息，可以采用分类信息的页面样式；\r\n</p>\r\n<p>\r\n	首页置顶：可在首页置顶信息，可以采用分类信息的页面样式；\r\n</p>'),
(25, 1, '置顶有什么好处？', '<p>\r\n	信息置顶后，就能够很容易被更多的人关注到。因为网友在浏览信息时都会先浏览靠前的内容，这样您发布信息的有效性就得到了保障。置顶信息获得的关注是普通信息的20倍。\r\n</p>'),
(26, 1, '置顶是什么？', '<p>\r\n	信息置顶是本站为用户提供的增值服务，对自己已经发布成功的信息，您可以联系本站工作人员咨询置顶业务。置顶后该信息就会在该类别的列表页中长时间处在靠前的固定位置，并带醒目图标 \r\n。置顶信息会引起用户更多关注，不会因为有新的帖子发布，而使您的帖子被挤到后边，以至于无法被关注到。\r\n</p>'),
(27, 1, '刷新是什么？', '刷新信息相当于您把这个信息重新发布一次，信息会再次排到该类别列表页面的靠前位置。&nbsp;<br />'),
(28, 2, '为什么我发布不了信息？', '<p>\r\n	<strong>为了营造良好的网络氛围，您的账号发布不了信息或者登录不了，可能有以下原因：<br />\r\n<br />\r\n</strong> \r\n</p>\r\n1、我们根据每个分类版块限制了发布数量，你已经在该分类下达到了发布数量上限； <br />\r\n<p>\r\n	<br />\r\n</p>\r\n2、为什么我发布信息时提示我“信息内包含非法词”？ <br />\r\n非法词是指由司法机关、主管部门、网监提供的词汇表，请大家不要发布违法信息，填写完后检查一下发布内容避免无意行为。<br />\r\n<p>\r\n	<br />\r\n</p>\r\n3、为什么信息发布成功后显示“审核中”？ <br />\r\n所有发布的信息，都会先进审核区，等工作人员审核通过后才会开放出来，我站审核人员在24小时内会提供给您审核结果。<br />\r\n<p>\r\n	<br />\r\n</p>\r\n4、为什么发布信息时提示我“发布信息太过频繁”？ <br />\r\n为了防止部分用户的恶意发帖行为，我们对发帖速度进行了限制，这时建议大家稍微休息一下再发布。 <br />\r\n<p>\r\n	<br />\r\n</p>\r\n5、为什么发布信息时提示我 “信息重复”？ <br />\r\n相同的信息不允许重复发布，建议您在发布时对信息进行修改。您还可以选择在用户中心中的“刷新”来代替发布。 <br />\r\n<p>\r\n	<br />\r\n</p>\r\n6、为什么我发布不了帖子（怎么清除浏览器缓存）？ <br />\r\n当您遇到以下问题时，可以尝试清除浏览器IE临时文件或重置浏览器选项后重试: <br />\r\n1. 点击“发布”按钮无反应；<br />\r\n2. 点击“发布”按钮后，按钮为灰色，页面不跳转；<br />\r\n3. 提示可以发布0条信息；<br />\r\n4. 无法上传图片，导致发布不了信息 <br />'),
(29, 6, '警惕钓鱼网站', '<p>\r\n	<strong>什么是钓鱼网站？</strong><br />\r\n钓鱼网站通常伪装成为银行网站、淘宝店铺等这些可以利用网上交易并引导激发用户的消费行 \r\n为的网站，窃取访问者提交的账号和密码信息。它一般通过电子邮件传播，此类邮件中一个经过伪装的链接将收件人联到钓鱼网站，或者通 \r\n过信息内容里带有网站链接的行为来诱惑用户进到该网站中。\r\n</p>\r\n<p>\r\n	<strong>钓鱼网站的常见的类型</strong><br />\r\n钓鱼网站的页面与真实网站界面完全一致，要求访问者提交账号和密码。一般来说钓鱼网 \r\n站结构很简单，只有一个或几个页面，URL和真实网站有细微差别，钓鱼最常见的，一般来说还是针对淘宝的比较多。<br />\r\n如真实的工行网站 \r\n为www.icbc.com.cn，针对工行的钓鱼网站则有可能为www.1cbc.com.cn。<br />\r\n真实的淘宝店铺的网址为http://www.taobao.com/，针对淘宝 \r\n的钓鱼网站则有可能是 \r\nhttp://list.taobao.com/<br />\r\nhttp://ship.36165279taobao.com/<br />\r\nhttp://taobao.gegecn.com.cn<br />\r\nhttp://taobao0.com<br />\r\nhttp://w \r\nww.taobaoxaq.com.cn/<br />\r\nhttp://www.Taobaveng.cn<br />\r\nhttp://www.paokn.com/taobao<br />\r\nhttp://www.teobao.com<br />\r\nhttp://www.taoob \r\nao.com<br />\r\nhttp://taobaoa.w31.100dns.com/<br />\r\nhttp://www.taobaoy.com<br />\r\nhttp://taobao-hb.cn/<br />\r\n应该特别小心由不规范的字母数 \r\n字组成的CN类网址，最好禁止浏览器运行JavaScript和ActiveX代码，不要上一些不太了解的网站。\r\n</p>\r\n<p>\r\n	<strong>如何防止被骗</strong><br />\r\n以上这些都是直接链接到淘宝的真网址的，除了登录和支付的两个页面是他们做的，其他都链接到 \r\n真的淘宝网址，不良商家就是利用了顾客对淘宝官网的信任，通过在官方上注册正式的网店，再以QQ引导顾客登录内容相同的假淘宝网店网 \r\n址，窃取顾客的支付宝账号与密码并从中敛财获利。类似这样的事情很多，在这里想提醒大家的是，淘宝交易的变换形式多种多样，但还是 \r\n会有规律的，前缀都是“taobao”，只在后缀上有小小区别，或者相反，顾客如不认真比对很难看出破绽，大家如果不懂淘宝，就请切记淘 \r\n宝的真实网站。如果碰到类似的需要淘宝交易的网站，请让卖方提供淘宝的店铺名称，然后进http://www.taobao.com/这个真实的淘宝店铺里，用“阿里旺旺”在淘宝里和卖方交易，因为阿里旺旺有识别真假淘宝的功能，真网址会显示安全，假的会有提示告诫。\r\n</p>'),
(30, 6, '常见骗子手法揭秘', '<div>\r\n	<h3>\r\n		骗子的基本手段\r\n	</h3>\r\n	<p>\r\n		一直以来，网络骗子层出不穷，但万变不离其宗，都是换汤不换药的方法，化龙巷分类信息通过对骗子的仔细研究，为广大用户总结一些规律性 的东西：\r\n	</p>\r\n	<p>\r\n		<strong>1、</strong>出售商品均以“出售XXXX,价格XXX，有意的加Q详聊”这些贴子大家都要小心留意一下，而且这些贴子出所售的商 \r\n品价格都会比市面上便宜许多，这就得留意了，不要贪图小便宜，贪多必 失！\r\n	</p>\r\n	<p>\r\n		<strong>2、</strong>骗子通常都不会支持第三方，只会先打款或者先商品，提到支付宝或者财会通什么的第三方软件就说不会用，这时 \r\n候就要注意了，宁可另寻觅一台，也不要兵行险着！认真想一下到底是人<br />\r\n家的商品好重要还是自己的辛苦钱重要！\r\n	</p>\r\n	<p>\r\n		<strong>3、</strong>某些骗子的手法有一点点高（其实也一眼就能看穿的），他们手上确实是有商品，但并不是真的想卖，只是用作诱饵，先把商品的照片拍了上来，然后静等大鱼上钓，交易的时候要求先款一半，然后说会把商品邮给你，没有问题再把另外一半的钱给 \r\n的打过来，这样就正中下怀了，不要以为自己的权益有了保障，想一下自己有什么利益可言吧，不是被骗了全部，而是被骗了一半！\r\n	</p>\r\n	<p>\r\n		<strong>4、</strong>换商品或者求商品的这种骗子也会采用以上的方法，然后说交易方式的时候当然也不会采用第三方支付，而是要求 \r\n先商品后款，先款不行就会说可以大家同时把商品邮寄出去，这就要用正<br />\r\n规的邮寄公司交易了，不过这种方法确实是有，只是上当的人 应该不会很多吧~\r\n	</p>\r\n	<p>\r\n		<strong>5、</strong>还有一种就是骗子说快递公司代收的业务，这也是不可信的，正规的快递公司几乎没有这种业务。\r\n	</p>\r\n	<h3>\r\n		最实用的防骗方法\r\n	</h3>\r\n	<p>\r\n		<strong>1、</strong>最好一定要当面交易，这是最好的交易方式，骗子其实明知道你和他不是一个地方的，所以骗子一般会先提出要当成交易，这样先让你心里放松一下，让你觉得他是真诚的，其实他根本就 \r\n知道你不可能跟他当成交易，然后还会问你有没有亲戚朋友什么的 在那边，切记，遇到这样的，直接拉黑吧。\r\n	</p>\r\n	<p>\r\n		<strong>2、</strong>交易一定要用第三方支付平台，这样大家都有保障，不支持第三方的或者不能见面交易的就根本不要理会，另外再 \r\n找吧，这肯定是骗子。\r\n	</p>\r\n	<p>\r\n		<strong>3、</strong>在交易前最好先百度一下对方的QQ号码或者手机号码，网络上一般都留有骗子的信息的。\r\n	</p>\r\n	<p>\r\n		<strong>4、</strong>不要和对方聊的开心就称兄道弟而忘记了自己的利益，有的骗子就会运用心理战术，从语言上先让你觉得他很真诚 \r\n能让你相信他，一定要记住，我是在交易，而不是在交朋友，时刻要把利 益摆在第一位，安全交易才是硬道理。\r\n	</p>\r\n	<p>\r\n		<strong>5、</strong>不要以为在校学生就不会是骗子，现在很多骗子都是大学生呢，更得小心谨慎。\r\n	</p>\r\n	<p>\r\n		<strong>5、</strong>邮递方式一定要用正规的邮递公司，例如EMS、顺丰、申通等等。\r\n	</p>\r\n	<p>\r\n		<strong>6、</strong>第三方交换商品虽然麻烦，但这是除了面交之外的最安全的交易方法，因为要走法律程序，所以一定会有时间上的 \r\n耽误，但一定切记，这样才不会被骗。\r\n	</p>\r\n</div>'),
(31, 6, '互联网防骗指南', '<div>\r\n	邮件短信假链接<br />\r\n<br />\r\n1.短信诈骗耍花样 \r\n验证手机偷密码<br />\r\n突然收到条“系统”短信说验证手机长期未验证需要验证，要回复账户密码的用户更要注意了，化龙巷分类信息是不会发送任何要求用户回复账户和密码的短信的。<br />\r\n<br />\r\n2.特价机票满天飞 \r\n转账套钱现原形<br />\r\n随着春运大幕的拉开，“特价机票”悄然成为搜索热门词汇，“假机票网”也迎来了 \r\n自己的“旺季”。不法分子常以超低折扣引诱消费者订票，骗取钱财，甚至直接套取用户的银行账户和密码。不要为贪图一点小便宜导致即 \r\n损失了钱财，也买不到回家过年的那张“通行证”。为了大家可以快快乐乐的过一个欢庆的新年，请大家多加注意了。<br />\r\n<br />\r\n3.谁说账号有异常 \r\n原是骗子想钓鱼<br />\r\n随着现在骗子对互联网越来越熟悉，各种新招式层出不穷，冒充化龙巷分类信息给客户发送钓鱼邮件就是一 \r\n个新例子，请大家不要相信要求你填写化龙巷账户密码的那些邮件，化龙巷分类信息是不会要求您在邮件中填写这些信息的，那些都是骗子的邮件，只要 \r\n您填写下去就会被那个发这个邮件的人修改您的密码的，账户有余额的客户尤其要注意了。<br />\r\n<br />\r\n4.周年庆典被炒作 \r\n中奖欺诈要提防<br />\r\n化龙巷分类信息不会给用户发送邮件让用户去参加所谓 的“狂欢”。所以大家要注意这种邮件了哦。\r\n</div>'),
(32, 2, '电话被冒用', '<div>\r\n	请提供被冒用的（信息编号、冒用号码），联系我站工作人员。\r\n</div>'),
(33, 2, '我要删除信息', '<p>\r\n	<span style="font-family:宋体;">1，在顶部点击“修改</span><span>/</span><span style="font-family:宋体;">删除信息”。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:宋体;">2，登录</span><span style="font-family:宋体;">用户中心，我发布的信息内，您可以选择修改、删除、刷新等操作。</span>\r\n</p>'),
(34, 2, '信息为什么不显示？', '<div>\r\n	1、如果信息含有敏感词汇、特殊字符或版规限制的内容，就需要工作人员审核通过后才能公开显示（审核时间为24小时之内）。\r\n</div>\r\n<div>\r\n</div>\r\n<div>\r\n	2、信息状态待完善，您的信息需要您修改完善后才能公开展示。根据要求修改完善信息，并通过本站工作人员审核成功后，才能公开展示（审核时间为24小时之内）。\r\n</div>\r\n<div>\r\n</div>\r\n<div>\r\n	3、修改过的信息时间会更新但在列表中的位置不会变。如果想信息再次排到该类别列表页面的靠前位置，您可以点击“刷新”。\r\n</div>');

-- --------------------------------------------------------

--
-- 表的结构 `my_faq_type`
--

CREATE TABLE `my_faq_type` (
  `id` tinyint(5) NOT NULL,
  `typename` char(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_faq_type`
--

INSERT INTO `my_faq_type` (`id`, `typename`) VALUES
(1, '置顶与刷新'),
(2, '信息发布与删除'),
(4, '认证服务'),
(5, '用户注册与登录'),
(6, '防骗常识');

-- --------------------------------------------------------

--
-- 表的结构 `my_flink`
--

CREATE TABLE `my_flink` (
  `id` smallint(5) NOT NULL,
  `catid` mediumint(6) NOT NULL DEFAULT '0',
  `ifindex` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(200) NOT NULL,
  `webname` char(30) NOT NULL DEFAULT '',
  `weblogo` char(250) NOT NULL DEFAULT '',
  `dayip` char(20) NOT NULL,
  `pr` smallint(1) NOT NULL,
  `msg` char(200) NOT NULL DEFAULT '',
  `name` varchar(10) NOT NULL,
  `qq` varchar(11) NOT NULL,
  `email` char(50) NOT NULL DEFAULT '',
  `typeid` smallint(5) NOT NULL DEFAULT '0',
  `ischeck` smallint(1) NOT NULL DEFAULT '1',
  `ordernumber` int(8) NOT NULL,
  `createtime` int(10) NOT NULL,
  `cityid` mediumint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_flink_type`
--

CREATE TABLE `my_flink_type` (
  `id` mediumint(8) NOT NULL,
  `typename` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_flink_type`
--

INSERT INTO `my_flink_type` (`id`, `typename`) VALUES
(1, '门户网站'),
(2, '分类信息'),
(4, '论坛博客'),
(8, '其它类别');

-- --------------------------------------------------------

--
-- 表的结构 `my_focus`
--

CREATE TABLE `my_focus` (
  `id` smallint(5) NOT NULL,
  `image` varchar(100) NOT NULL,
  `pre_image` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `words` varchar(50) NOT NULL,
  `pubdate` int(11) NOT NULL,
  `focusorder` smallint(5) NOT NULL,
  `typename` enum('网站首页','新闻首页') NOT NULL DEFAULT '网站首页',
  `cityid` mediumint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_focus`
--

INSERT INTO `my_focus` (`id`, `image`, `pre_image`, `url`, `words`, `pubdate`, `focusorder`, `typename`, `cityid`) VALUES
(1, '/attachment/focus/1532340516ecipa.jpg', '/attachment/focus/pre_1532340516ecipa.jpg', 'http://', '恩普人力', 1532340516, 1, '网站首页', 0),
(2, '/attachment/focus/1532340552namiz.jpg', '/attachment/focus/pre_1532340552namiz.jpg', 'http://', '从v', 1532340552, 2, '网站首页', 0);

-- --------------------------------------------------------

--
-- 表的结构 `my_goods`
--

CREATE TABLE `my_goods` (
  `goodsid` int(10) NOT NULL,
  `goodsbh` varchar(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `goodsname` varchar(100) NOT NULL,
  `catid` smallint(3) NOT NULL,
  `oldprice` varchar(8) NOT NULL,
  `nowprice` varchar(8) NOT NULL,
  `huoyuan` tinyint(1) NOT NULL,
  `gift` varchar(100) NOT NULL,
  `oicq` varchar(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `picture` varchar(255) NOT NULL,
  `pre_picture` varchar(255) NOT NULL,
  `rushi` tinyint(1) NOT NULL,
  `tuihuan` tinyint(1) NOT NULL,
  `jiayi` tinyint(1) NOT NULL,
  `weixiu` tinyint(1) NOT NULL,
  `fahuo` tinyint(1) NOT NULL,
  `zhengpin` tinyint(1) NOT NULL,
  `tuijian` tinyint(1) NOT NULL,
  `cuxiao` tinyint(1) NOT NULL,
  `remai` tinyint(1) NOT NULL,
  `baozhang` tinyint(1) NOT NULL,
  `onsale` tinyint(1) NOT NULL DEFAULT '1',
  `hit` int(10) NOT NULL,
  `dateline` int(10) NOT NULL,
  `cityid` mediumint(6) NOT NULL,
  `streetid` mediumint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_goods_category`
--

CREATE TABLE `my_goods_category` (
  `catid` mediumint(6) NOT NULL,
  `if_view` tinyint(1) NOT NULL DEFAULT '1',
  `color` char(10) NOT NULL,
  `catname` varchar(32) NOT NULL,
  `title` varchar(250) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `catorder` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_goods_category`
--

INSERT INTO `my_goods_category` (`catid`, `if_view`, `color`, `catname`, `title`, `keywords`, `description`, `parentid`, `catorder`) VALUES
(1, 2, '', '测十', '测十', '测十', '测十', 0, 2);

-- --------------------------------------------------------

--
-- 表的结构 `my_goods_order`
--

CREATE TABLE `my_goods_order` (
  `id` int(10) NOT NULL,
  `goodsid` int(10) NOT NULL,
  `ordernum` smallint(5) NOT NULL,
  `oname` varchar(100) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `qq` varchar(11) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `dateline` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_group`
--

CREATE TABLE `my_group` (
  `groupid` int(10) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `gname` varchar(250) NOT NULL,
  `cate_id` smallint(3) NOT NULL,
  `areaid` smallint(5) NOT NULL,
  `dateline` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `signintotal` smallint(5) NOT NULL DEFAULT '0',
  `glevel` tinyint(1) NOT NULL DEFAULT '0',
  `message` varchar(250) NOT NULL,
  `gaddress` varchar(250) NOT NULL,
  `meetdate` int(10) NOT NULL,
  `enddate` int(10) NOT NULL,
  `mastername` varchar(100) NOT NULL,
  `masterqq` int(11) NOT NULL,
  `des` varchar(250) NOT NULL,
  `content` mediumtext NOT NULL,
  `picture` varchar(255) NOT NULL,
  `pre_picture` varchar(255) NOT NULL,
  `commenturl` varchar(100) NOT NULL,
  `biztype` varchar(100) NOT NULL,
  `othercontent` mediumtext NOT NULL,
  `web_address` char(100) NOT NULL,
  `cityid` mediumint(6) NOT NULL,
  `streetid` mediumint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_group_category`
--

CREATE TABLE `my_group_category` (
  `cate_id` smallint(3) NOT NULL,
  `cate_name` varchar(100) NOT NULL,
  `cate_view` tinyint(1) NOT NULL DEFAULT '1',
  `cate_order` smallint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_group_category`
--

INSERT INTO `my_group_category` (`cate_id`, `cate_name`, `cate_view`, `cate_order`) VALUES
(1, '家居团', 1, 1),
(2, '婚庆团', 1, 2),
(3, '买车团', 1, 3),
(4, '建材团', 1, 4),
(5, '找驴友', 1, 5),
(6, '母婴团', 1, 6),
(9, '其它', 1, 7);

-- --------------------------------------------------------

--
-- 表的结构 `my_group_signin`
--

CREATE TABLE `my_group_signin` (
  `signid` int(10) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `sex` enum('男','女') NOT NULL,
  `age` varchar(50) NOT NULL,
  `groupid` int(10) NOT NULL,
  `qqmsn` varchar(50) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `dateline` int(10) NOT NULL,
  `totalnumber` smallint(5) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `signinip` varchar(20) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information`
--

CREATE TABLE `my_information` (
  `id` smallint(5) NOT NULL,
  `title` varchar(30) NOT NULL,
  `catid` int(8) NOT NULL,
  `cityid` mediumint(6) NOT NULL,
  `areaid` int(8) NOT NULL,
  `streetid` mediumint(6) NOT NULL,
  `begintime` int(11) NOT NULL,
  `activetime` smallint(3) NOT NULL,
  `endtime` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `userid` varchar(30) NOT NULL,
  `contact_who` char(10) NOT NULL,
  `qq` char(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `hit` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL,
  `manage_pwd` char(32) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `ip2area` varchar(32) NOT NULL,
  `info_level` tinyint(1) NOT NULL,
  `img_path` varchar(200) NOT NULL,
  `img_count` smallint(3) NOT NULL DEFAULT '0',
  `upgrade_type` tinyint(1) NOT NULL DEFAULT '1',
  `upgrade_time` int(10) NOT NULL,
  `upgrade_type_list` tinyint(1) NOT NULL DEFAULT '1',
  `upgrade_time_list` int(10) NOT NULL,
  `ifred` tinyint(1) NOT NULL DEFAULT '0',
  `ifbold` tinyint(1) NOT NULL DEFAULT '0',
  `certify` tinyint(1) NOT NULL DEFAULT '0',
  `dir_typename` varchar(100) NOT NULL,
  `upgrade_type_index` tinyint(1) NOT NULL,
  `upgrade_time_index` int(10) NOT NULL,
  `mappoint` varchar(100) NOT NULL,
  `latitude` decimal(20,17) NOT NULL,
  `longitude` decimal(20,17) NOT NULL,
  `web_address` char(100) NOT NULL,
  `catname` varchar(32) NOT NULL,
  `gid` smallint(5) NOT NULL,
  `pay_status` int(4) NOT NULL DEFAULT '0' COMMENT '支付状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_information`
--

INSERT INTO `my_information` (`id`, `title`, `catid`, `cityid`, `areaid`, `streetid`, `begintime`, `activetime`, `endtime`, `content`, `userid`, `contact_who`, `qq`, `email`, `tel`, `updatetime`, `hit`, `ismember`, `manage_pwd`, `ip`, `ip2area`, `info_level`, `img_path`, `img_count`, `upgrade_type`, `upgrade_time`, `upgrade_type_list`, `upgrade_time_list`, `ifred`, `ifbold`, `certify`, `dir_typename`, `upgrade_type_index`, `upgrade_time_index`, `mappoint`, `latitude`, `longitude`, `web_address`, `catname`, `gid`, `pay_status`) VALUES
(4, 'oppo实体店派单 20元/时  天河地段', 256, 7, 0, 0, 1532418138, 60, 1537602138, 'oppo实体店派单&nbsp;20元/时&nbsp;&nbsp;天河地段', '', '陈某人', '88788887878', '', '90878789897', 0, 26, 0, 'e10adc3949ba59abbe56e057f20f883e', '::1', 'IANA保留地址', 1, '/attachment/information/201807/pre_1532418138evztx.jpg', 2, 1, 0, 1, 0, 0, 0, 0, 'paidan', 0, 0, '', '0.00000000000000000', '0.00000000000000000', '', '派单', 250, 0),
(3, '发布信息测试', 42, 7, 0, 0, 1532412746, 30, 1535004746, '阿三大苏打', 'laogui0704', '李某某', '90989090900', '', '90989090900', 0, 19, 1, '', '::1', 'IANA保留地址', 1, '', 0, 1, 0, 1, 0, 0, 0, 1, 'duanzu', 0, 0, '110.920752,21.658185', '0.00000000000000000', '0.00000000000000000', '', '日租/短租', 3, 0),
(5, '白菜价，全款带大本，15年启程R30 1.2 手波', 28, 7, 0, 0, 1532418449, 365, 1563954449, '白菜价，全款带大本，15年启程R30&nbsp;1.2&nbsp;手波', '', '赵某人', '89898688778', '', '90890809809', 0, 9, 0, 'e10adc3949ba59abbe56e057f20f883e', '::1', 'IANA保留地址', 1, '/attachment/information/201807/pre_1532418449zdoan.jpg', 2, 1, 0, 1, 0, 0, 0, 0, 'jiaoche', 0, 0, '', '0.00000000000000000', '0.00000000000000000', '', '二手轿车', 2, 0),
(6, '找男朋友，帅的，高的，瘦的，有钱的', 266, 7, 0, 0, 1532418699, 30, 1535010699, '长的和图上一样的最好', '', '李小姐', '9099090999', '', '90909090909', 0, 4, 0, '256736954a7abd213c940b779bbbe302', '::1', 'IANA保留地址', 1, '/attachment/information/201807/pre_15324186996fllo.jpg', 2, 1, 0, 1, 0, 0, 0, 0, 'zhaonanyou', 0, 0, '', '0.00000000000000000', '0.00000000000000000', '', '找男友', 255, 0),
(7, '李继KTV开业大酬宾', 258, 7, 0, 0, 1532419086, 0, 0, '李继KTV开业大酬宾', '', '李某', '123123123', '', '1231231231', 0, 8, 0, 'e10adc3949ba59abbe56e057f20f883e', '::1', 'IANA保留地址', 1, '/attachment/information/201807/pre_1532419086o1z2m.jpg', 1, 1, 0, 1, 0, 0, 0, 0, 'KTV', 0, 0, '', '0.00000000000000000', '0.00000000000000000', '', 'KTV', 252, 0);

-- --------------------------------------------------------

--
-- 表的结构 `my_information_2`
--

CREATE TABLE `my_information_2` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `from` tinyint(1) NOT NULL DEFAULT '0',
  `price` mediumint(7) NOT NULL DEFAULT '0',
  `new_old` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_6`
--

CREATE TABLE `my_information_6` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `pc_brand` tinyint(1) NOT NULL DEFAULT '0',
  `new_old` tinyint(1) NOT NULL DEFAULT '0',
  `price` mediumint(7) NOT NULL DEFAULT '0',
  `from` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_7`
--

CREATE TABLE `my_information_7` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `sex_demand` varchar(100) NOT NULL DEFAULT '0',
  `salary` tinyint(1) NOT NULL DEFAULT '0',
  `job` varchar(250) NOT NULL,
  `company` varchar(250) NOT NULL,
  `content` mediumtext,
  `education` tinyint(1) NOT NULL DEFAULT '0',
  `work_life` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fuli` varchar(100) NOT NULL DEFAULT '0',
  `property` tinyint(1) NOT NULL DEFAULT '0',
  `graduate` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_8`
--

CREATE TABLE `my_information_8` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `day_salary` decimal(10,2) NOT NULL DEFAULT '0.00',
  `company` varchar(250) NOT NULL,
  `content` mediumtext,
  `salary` tinyint(1) NOT NULL DEFAULT '0',
  `sex_demand` varchar(100) NOT NULL DEFAULT '0',
  `job` varchar(250) NOT NULL,
  `age` decimal(10,2) NOT NULL DEFAULT '0.00',
  `property` tinyint(1) NOT NULL DEFAULT '0',
  `fuli` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_information_8`
--

INSERT INTO `my_information_8` (`iid`, `id`, `day_salary`, `company`, `content`, `salary`, `sex_demand`, `job`, `age`, `property`, `fuli`) VALUES
(1, 2, '500.00', '艾时尚封面杂志', NULL, 0, '0', '', '0.00', 0, '0');

-- --------------------------------------------------------

--
-- 表的结构 `my_information_9`
--

CREATE TABLE `my_information_9` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `age` mediumint(7) NOT NULL DEFAULT '0',
  `education` tinyint(1) NOT NULL DEFAULT '0',
  `graduate` tinyint(1) NOT NULL DEFAULT '0',
  `work_life` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_10`
--

CREATE TABLE `my_information_10` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `tuition` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_11`
--

CREATE TABLE `my_information_11` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `ebike_brand` tinyint(1) NOT NULL DEFAULT '0',
  `price` mediumint(7) NOT NULL DEFAULT '0',
  `new_old` tinyint(1) NOT NULL DEFAULT '0',
  `from` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_12`
--

CREATE TABLE `my_information_12` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `car_brand` tinyint(1) NOT NULL DEFAULT '0',
  `car_year` tinyint(1) NOT NULL DEFAULT '0',
  `mileage` mediumint(7) NOT NULL DEFAULT '0',
  `prices` mediumint(7) NOT NULL DEFAULT '0',
  `new_old` tinyint(1) NOT NULL DEFAULT '0',
  `from` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_information_12`
--

INSERT INTO `my_information_12` (`iid`, `id`, `car_brand`, `car_year`, `mileage`, `prices`, `new_old`, `from`, `content`) VALUES
(1, 5, 6, 5, 1, 2, 3, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `my_information_13`
--

CREATE TABLE `my_information_13` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `bike_brand` tinyint(1) NOT NULL DEFAULT '0',
  `price` mediumint(7) NOT NULL DEFAULT '0',
  `from` tinyint(1) NOT NULL DEFAULT '0',
  `new_old` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_14`
--

CREATE TABLE `my_information_14` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `carpool_type` tinyint(1) NOT NULL DEFAULT '0',
  `price` mediumint(7) NOT NULL DEFAULT '0',
  `destination` varchar(250) NOT NULL,
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_15`
--

CREATE TABLE `my_information_15` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `mileage` mediumint(7) NOT NULL DEFAULT '0',
  `car_year` tinyint(1) NOT NULL DEFAULT '0',
  `prices` mediumint(7) NOT NULL DEFAULT '0',
  `new_old` tinyint(1) NOT NULL DEFAULT '0',
  `from` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_16`
--

CREATE TABLE `my_information_16` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `prices` mediumint(7) NOT NULL DEFAULT '0',
  `new_old` tinyint(1) NOT NULL DEFAULT '0',
  `from` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_18`
--

CREATE TABLE `my_information_18` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `ican` varchar(100) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_19`
--

CREATE TABLE `my_information_19` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `age` decimal(10,2) NOT NULL DEFAULT '0.00',
  `jobs` varchar(250) NOT NULL,
  `content` mediumtext,
  `ican` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_20`
--

CREATE TABLE `my_information_20` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `dog_breeds` tinyint(1) NOT NULL DEFAULT '0',
  `animal_sex` tinyint(1) NOT NULL DEFAULT '0',
  `price` mediumint(7) NOT NULL DEFAULT '0',
  `from` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_21`
--

CREATE TABLE `my_information_21` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `pet_class` tinyint(1) NOT NULL DEFAULT '0',
  `price` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_22`
--

CREATE TABLE `my_information_22` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `position` tinyint(1) NOT NULL DEFAULT '0',
  `renovation` tinyint(1) NOT NULL DEFAULT '0',
  `room_type` tinyint(1) NOT NULL DEFAULT '0',
  `floor` mediumint(7) NOT NULL DEFAULT '0',
  `prices` mediumint(7) NOT NULL DEFAULT '0',
  `acreage` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_23`
--

CREATE TABLE `my_information_23` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `position` tinyint(1) NOT NULL DEFAULT '0',
  `rent_type` tinyint(1) NOT NULL DEFAULT '0',
  `room_type` tinyint(1) NOT NULL DEFAULT '0',
  `mini_rent` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext,
  `house_pro` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_information_23`
--

INSERT INTO `my_information_23` (`iid`, `id`, `position`, `rent_type`, `room_type`, `mini_rent`, `content`, `house_pro`) VALUES
(1, 1, 1, 1, 1, 8388607, NULL, '1,9,10'),
(2, 3, 1, 1, 3, 989, NULL, '1,2,9,10');

-- --------------------------------------------------------

--
-- 表的结构 `my_information_24`
--

CREATE TABLE `my_information_24` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `position` tinyint(1) NOT NULL DEFAULT '0',
  `acreage` mediumint(7) NOT NULL DEFAULT '0',
  `min_rent` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_25`
--

CREATE TABLE `my_information_25` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `acreage` mediumint(7) NOT NULL DEFAULT '0',
  `prices` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_26`
--

CREATE TABLE `my_information_26` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `store_type` tinyint(1) NOT NULL DEFAULT '0',
  `acreage` mediumint(7) NOT NULL DEFAULT '0',
  `rent` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_27`
--

CREATE TABLE `my_information_27` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `motobrand` tinyint(1) NOT NULL DEFAULT '0',
  `price` mediumint(7) NOT NULL DEFAULT '0',
  `from` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_information_28`
--

CREATE TABLE `my_information_28` (
  `iid` mediumint(7) NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `mbrand` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `new_old` tinyint(1) NOT NULL DEFAULT '0',
  `from` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_info_img`
--

CREATE TABLE `my_info_img` (
  `id` int(10) NOT NULL,
  `image_id` tinyint(1) NOT NULL,
  `path` varchar(250) NOT NULL,
  `prepath` varchar(250) NOT NULL,
  `infoid` int(11) NOT NULL,
  `uptime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_info_img`
--

INSERT INTO `my_info_img` (`id`, `image_id`, `path`, `prepath`, `infoid`, `uptime`) VALUES
(1, 0, '/attachment/information/201807/1532418138evztx.jpg', '/attachment/information/201807/pre_1532418138evztx.jpg', 4, 1532418138),
(2, 1, '/attachment/information/201807/1532418138aa4d0.jpg', '/attachment/information/201807/pre_1532418138aa4d0.jpg', 4, 1532418138),
(3, 0, '/attachment/information/201807/1532418449zdoan.jpg', '/attachment/information/201807/pre_1532418449zdoan.jpg', 5, 1532418449),
(4, 1, '/attachment/information/201807/1532418449xs1hr.jpg', '/attachment/information/201807/pre_1532418449xs1hr.jpg', 5, 1532418449),
(5, 0, '/attachment/information/201807/15324186996fllo.jpg', '/attachment/information/201807/pre_15324186996fllo.jpg', 6, 1532418699),
(6, 1, '/attachment/information/201807/1532418699kc2ne.jpg', '/attachment/information/201807/pre_1532418699kc2ne.jpg', 6, 1532418699),
(7, 0, '/attachment/information/201807/1532419086o1z2m.jpg', '/attachment/information/201807/pre_1532419086o1z2m.jpg', 7, 1532419086);

-- --------------------------------------------------------

--
-- 表的结构 `my_info_report`
--

CREATE TABLE `my_info_report` (
  `id` int(8) NOT NULL,
  `infoid` int(8) NOT NULL,
  `infotitle` char(50) NOT NULL,
  `report_type` smallint(3) NOT NULL,
  `content` varchar(255) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `pubtime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_info_typemodels`
--

CREATE TABLE `my_info_typemodels` (
  `id` smallint(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `options` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_info_typemodels`
--

INSERT INTO `my_info_typemodels` (`id`, `name`, `displayorder`, `type`, `options`) VALUES
(1, '空模型', 0, 1, ''),
(2, '二手物品交易模型', 2, 0, '39,9,58'),
(6, '电脑转让模型', 6, 0, '54,58,9,39'),
(7, '工作招聘模型', 7, 0, '43,40,44,42,47,49,61,62,48'),
(8, '兼职招聘模型', 8, 0, '41,42,40,43,44,46,62,61'),
(9, '简历模型', 9, 0, '45,46,47,48,49'),
(10, '教育培训模型', 10, 0, '50'),
(11, '电动车交易模型', 11, 0, '11,9,58,39'),
(12, '二手轿车模型', 12, 0, '14,16,17,13,58,39'),
(13, '自行车交易模型', 13, 0, '22,9,39,58'),
(14, '拼车顺风车模型', 14, 0, '20,9,21'),
(15, '面包车客车模型', 15, 0, '17,16,13,58,39'),
(16, '大件物品交易模型', 16, 0, '13,58,39'),
(18, '技能交换模型', 18, 0, '51'),
(19, '征婚交友模型', 19, 0, '45,46,52,51'),
(20, '狗狗模型', 20, 0, '25,26,9,39'),
(21, '猫猫等宠物模型', 21, 0, '27,9'),
(22, '二手房模型', 22, 0, '33,34,35,36,13,30'),
(23, '出租房模型', 23, 0, '33,37,35,38,64'),
(24, '厂房/写字楼出租模型', 24, 0, '33,30,29'),
(25, '商铺/写字楼出售模型', 25, 0, '30,13'),
(26, '店铺转让出租模型', 26, 0, '31,30,32'),
(27, '摩托车模型', 0, 0, '60,9,39'),
(28, '手机转让模型', 0, 0, '65,9,58,39');

-- --------------------------------------------------------

--
-- 表的结构 `my_info_typeoptions`
--

CREATE TABLE `my_info_typeoptions` (
  `optionid` smallint(6) NOT NULL,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `identifier` varchar(40) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `rules` mediumtext NOT NULL,
  `available` char(2) NOT NULL,
  `required` char(2) NOT NULL,
  `search` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_info_typeoptions`
--

INSERT INTO `my_info_typeoptions` (`optionid`, `classid`, `displayorder`, `title`, `description`, `identifier`, `type`, `rules`, `available`, `required`, `search`) VALUES
(1, 0, 0, '通用类', '', '', '', '', '0', '0', '0'),
(2, 0, 0, '房产类', '', '', '', '', '0', '0', '0'),
(3, 0, 0, '交友类', '', '', '', '', '0', '0', '0'),
(4, 0, 0, '求职招聘类', '', '', '', '', '0', '0', '0'),
(5, 0, 0, '交易类', '', '', '', '', '0', '0', '0'),
(6, 0, 0, '教育培训类', '', '', '', '', '0', '0', '0'),
(7, 0, 0, '宠物类', '', '', '', '', '0', '0', '0'),
(8, 0, 0, '车辆类', '', '', '', '', '0', '0', '0'),
(9, 5, 1, '价格', '小额价格', 'price', 'number', 'a:2:{s:5:"units";s:2:"元";s:7:"choices";s:98:"1~1000=1000以内\r\n1000~3000=1000~3000\r\n3000~5000=3000~5000\r\n5000~10000=5000~10000\r\n10000~=10000以上";}', 'on', 'on', 'on'),
(11, 8, 3, '电动车品牌', '电动车品牌', 'ebike_brand', 'select', 'a:1:{s:7:"choices";s:46:"1=新日\r\n2=立马\r\n3=绿源\r\n4=爱玛\r\n5=雅迪\r\n6=其它";}', 'on', 'on', 'on'),
(13, 5, 0, '价格', '万元级别的价格', 'prices', 'number', 'a:2:{s:5:"units";s:4:"万元";s:7:"choices";s:99:"1~5=5万以内\r\n5~10=5万~10万\r\n10~50=10万~50万\r\n50~100=50万~100万\r\n100~300=100万~300万\r\n300~=300万以上";}', 'on', 'on', 'on'),
(14, 8, 5, '轿车品牌', '轿车品牌', 'car_brand', 'select', 'a:1:{s:7:"choices";s:148:"1=大众\r\n2=本田\r\n3=丰田\r\n4=别克\r\n5=奥迪\r\n6=奔驰\r\n7=宝马\r\n8=比亚迪\r\n9=现代\r\n10=雪佛兰\r\n11=奇瑞\r\n12=福特\r\n13=日产\r\n14=马自达\r\n15=金杯\r\n16=路虎\r\n17=其它";}', 'on', 'on', 'on'),
(16, 8, 7, '上牌年份', '上牌年份', 'car_year', 'select', 'a:1:{s:7:"choices";s:62:"1=2012年以前\r\n2=2012年\r\n3=2013年\r\n4=2014年\r\n5=2015年\r\n6=2016年";}', 'on', 'on', 'on'),
(17, 8, 8, '行驶里程', '行驶里程', 'mileage', 'number', 'a:2:{s:5:"units";s:6:"万公里";s:7:"choices";s:61:"0~1=1万公里以内\r\n1~3=1~3万公里\r\n3~5=3~5万公里\r\n5~=5万公里以上";}', 'on', 'on', ''),
(18, 8, 9, '面包车类型', '面包车类型', 'minibus_type', 'select', 'a:1:{s:7:"choices";s:28:"1=大客车\r\n2=中巴车\r\n3=面包车";}', 'on', 'on', 'on'),
(19, 8, 10, '摩托车品牌', '摩托车品牌', 'moto_brand', 'select', 'a:1:{s:7:"choices";s:74:"1=雅马哈\r\n2=本田\r\n3=建设\r\n4=铃木\r\n5=宗申\r\n6=力帆\r\n7=豪爵\r\n8=新大洲\r\n9=其它";}', 'on', 'on', 'on'),
(20, 8, 11, '拼车类型', '拼车类型', 'carpool_type', 'select', 'a:1:{s:7:"choices";s:52:"1=长途车拼车\r\n2=上下班拼车\r\n3=上下学拼车\r\n4=其它拼车";}', 'on', 'on', 'on'),
(21, 8, 12, '目的地', '目的地', 'destination', 'text', 'a:1:{s:9:"maxlength";s:0:"";}', 'on', 'on', ''),
(22, 8, 13, '自行车品牌', '自行车品牌', 'bike_brand', 'select', 'a:1:{s:7:"choices";s:32:"1=永久\r\n2=凤凰\r\n3=捷安特\r\n4=其它";}', 'on', 'on', 'on'),
(24, 7, 24, '宠物类型', '宠物类型', 'pet_type', 'select', 'a:1:{s:7:"choices";s:36:"1=狗\r\n2=猫\r\n3=鸟\r\n4=鼠\r\n5=兔\r\n6=其它";}', 'on', 'on', 'on'),
(25, 7, 25, '狗狗品种', '狗狗品种', 'dog_breeds', 'select', 'a:1:{s:7:"choices";s:80:"1=泰迪\r\n2=萨摩耶\r\n3=金毛\r\n4=藏獒\r\n5=雪橇犬\r\n6=哈士奇\r\n7=拉布拉多\r\n8=贵宾\r\n9=其它";}', 'on', 'on', 'on'),
(26, 7, 0, '公母', '动物公母', 'animal_sex', 'radio', 'a:1:{s:7:"choices";s:10:"1=公\r\n2=母";}', 'on', 'on', 'on'),
(27, 7, 26, '宠物类别', '猫猫等其它宠物类别', 'pet_class', 'select', 'a:1:{s:7:"choices";s:30:"1=猫猫\r\n2=水族\r\n3=花鸟\r\n4=其它";}', 'on', 'on', 'on'),
(28, 2, 30, '厂房租售类型', '厂房/仓库/土地租售类型', 'factory_type', 'select', 'a:1:{s:7:"choices";s:94:"1=厂房出租\r\n2=厂房出售\r\n3=仓库出租\r\n4=仓库出售\r\n5=土地出租\r\n6=土地出售\r\n7=其它出租\r\n8=其它出售";}', 'on', 'on', 'on'),
(29, 2, 31, '租金', '厂房/写字楼出租价格', 'min_rent', 'number', 'a:2:{s:5:"units";s:10:"元/平米/天";s:7:"choices";s:56:"1~2=1~2元/平米/天\r\n2~4=2~4元/平米/天\r\n4~=4元以上/平米/天";}', 'on', 'on', 'on'),
(30, 2, 32, '面积', '房屋面积', 'acreage', 'number', 'a:2:{s:5:"units";s:4:"平米";s:7:"choices";s:107:"1~30=30平米以内\r\n30~50=30~50平米\r\n50~90=50~90平米\r\n90~150=90~150平米\r\n150~300=100~300平米\r\n300~=300平米以上";}', 'on', 'on', 'on'),
(31, 2, 0, '店铺分类', '店铺分类', 'store_type', 'select', 'a:1:{s:7:"choices";s:115:"1=餐饮美食\r\n2=服饰鞋包\r\n3=酒店宾馆\r\n4=超市零售\r\n5=空铺转让\r\n6=美容美发\r\n7=家居建材\r\n8=汽修美容\r\n9=电子通讯\r\n10=其它";}', 'on', 'on', 'on'),
(32, 2, 33, '租金', '店铺/房屋租金', 'rent', 'number', 'a:1:{s:5:"units";s:2:"元";}', 'on', 'on', ''),
(33, 2, 34, '身份', '个人/中介', 'position', 'radio', 'a:1:{s:7:"choices";s:16:"1=个人\r\n2=经纪人";}', 'on', 'on', 'on'),
(34, 2, 35, '装修', '装修情况', 'renovation', 'select', 'a:1:{s:7:"choices";s:42:"1=毛坯房\r\n2=简单装修\r\n3=中等装修\r\n4=精装修";}', 'on', 'on', 'on'),
(35, 2, 36, '房型', '房型', 'room_type', 'select', 'a:1:{s:7:"choices";s:71:"1=4室及以上\r\n2=3室2厅\r\n3=3室1厅\r\n4=2室2厅\r\n5=2室1厅\r\n6=1室1厅\r\n7=1室0厅";}', 'on', 'on', 'on'),
(36, 2, 37, '楼层', '', 'floor', 'number', 'a:1:{s:5:"units";s:2:"楼";}', 'on', 'on', ''),
(37, 2, 38, '出租形式', '出租形式', 'rent_type', 'select', 'a:1:{s:7:"choices";s:22:"1=整套\r\n2=单间\r\n3=床位";}', 'on', 'on', 'on'),
(38, 2, 39, '租金', '', 'mini_rent', 'number', 'a:2:{s:5:"units";s:2:"元";s:7:"choices";s:98:"1~1000=1000以内\r\n1000~3000=1000~3000\r\n3000~5000=3000~5000\r\n5000~10000=5000~10000\r\n10000~=10000以上";}', 'on', 'on', 'on'),
(39, 1, 0, '来源', '服务者身份', 'from', 'radio', 'a:1:{s:7:"choices";s:14:"1=个人\r\n2=商家";}', 'on', 'on', 'on'),
(40, 4, 39, '月薪', '月薪', 'salary', 'select', 'a:1:{s:7:"choices";s:112:"1=面议\r\n2=1000以下\r\n3=1000~2000\r\n3=2000~3000\r\n4=3000~6000\r\n5=6000~8000\r\n6=8000~12000\r\n7=12000~30000\r\n8=30000以上";}', 'on', 'on', 'on'),
(41, 4, 41, '日薪', '日薪', 'day_salary', 'number', 'a:2:{s:5:"units";s:5:"元/天";s:7:"choices";s:117:"1~20=20元以内/天\r\n20~50=20~50元/天\r\n50~100=50~100元/天\r\n100~300=100~300元/天\r\n300~500=300~500元/天\r\n500~=500元以上/天";}', 'on', 'on', 'on'),
(42, 4, 42, '公司名称', '公司名称', 'company', 'text', 'a:1:{s:9:"maxlength";s:0:"";}', 'on', 'on', ''),
(43, 4, 43, '性别要求', '性别要求', 'sex_demand', 'checkbox', 'a:1:{s:7:"choices";s:10:"1=男\r\n2=女";}', 'on', 'on', ''),
(44, 4, 44, '职位', '职位', 'job', 'text', 'a:1:{s:9:"maxlength";s:0:"";}', 'on', '', ''),
(45, 4, 45, '性别', '性别', 'sex', 'radio', 'a:1:{s:7:"choices";s:10:"1=男\r\n2=女";}', 'on', '', 'on'),
(46, 4, 46, '年龄', '年龄', 'age', 'number', 'a:1:{s:5:"units";s:2:"岁";}', 'on', 'on', ''),
(47, 4, 47, '学历', '学历', 'education', 'select', 'a:1:{s:7:"choices";s:68:"1=初中及以下\r\n2=高中/中专/技校\r\n3=大专\r\n4=本科\r\n5=硕士\r\n6=博士及以上";}', 'on', 'on', ''),
(48, 4, 48, '是否应届', '是否应届', 'graduate', 'radio', 'a:1:{s:7:"choices";s:16:"1=应届\r\n2=非应届";}', 'on', '', 'on'),
(49, 4, 49, '工作年限', '工作年限', 'work_life', 'number', 'a:2:{s:5:"units";s:2:"年";s:7:"choices";s:60:"1~1=1年以下\r\n1~2=1~2年\r\n3~5=3~5年\r\n6~10=6~10年\r\n10~=10年以上";}', 'on', 'on', ''),
(50, 6, 50, '学费', '课程学费', 'tuition', 'number', 'a:2:{s:5:"units";s:2:"元";s:7:"choices";s:98:"1~1000=1000以内\r\n1000~3000=1000~3000\r\n3000~5000=3000~5000\r\n5000~10000=5000~10000\r\n10000~=10000以上";}', 'on', '', 'on'),
(51, 3, 51, '我会', '我的技能', 'ican', 'checkbox', 'a:1:{s:7:"choices";s:125:"1=魔术\r\n2=古玩鉴赏\r\n3=电器维修\r\n4=唱歌\r\n5=方言\r\n6=理财/金融\r\n7=数理化\r\n8=武术\r\n9=象棋/围棋\r\n10=中医\r\n11=平面设计\r\n12=服装设计";}', 'on', '', ''),
(52, 3, 52, '职业', '', 'jobs', 'text', 'a:1:{s:9:"maxlength";s:0:"";}', 'on', '', ''),
(54, 5, 54, '电脑品牌', '电脑品牌', 'pc_brand', 'select', 'a:1:{s:7:"choices";s:109:"1=戴尔\r\n2=华硕\r\n3=惠普\r\n4=联想\r\n5=IBM\r\n6=苹果\r\n7=三星\r\n8=东芝\r\n9=神舟\r\n10=方正\r\n11=清华同方\r\n12=索尼\r\n13=其它";}', 'on', 'on', 'on'),
(55, 5, 55, '电器类型', '电器类型', 'appliances', 'select', 'a:1:{s:7:"choices";s:100:"1=空调\r\n2=厨房电器\r\n3=居家电器\r\n4=影音电器\r\n5=冰箱/冷柜\r\n6=电视机\r\n7=卫浴/护理电器\r\n8=洗衣机\r\n9=其它";}', 'on', 'on', 'on'),
(58, 5, 58, '新旧程度', '新旧程度', 'new_old', 'select', 'a:1:{s:7:"choices";s:33:"1=全新\r\n2=9成新\r\n3=7成新\r\n4=5成新";}', 'on', 'on', 'on'),
(60, 8, 0, '摩托车品牌', '', 'motobrand', 'select', 'a:1:{s:7:"choices";s:74:"1=雅马哈\r\n2=本田\r\n3=建设\r\n4=铃木\r\n5=宗申\r\n6=力帆\r\n7=豪爵\r\n8=新大洲\r\n9=其它";}', 'on', 'on', 'on'),
(61, 4, 0, '福利', '', 'fuli', 'checkbox', 'a:1:{s:7:"choices";s:99:"1=五险一金\r\n2=包住\r\n3=包吃\r\n4=年底双薪\r\n5=周末双休\r\n6=交通补助\r\n7=加班补助\r\n8=餐补\r\n9=话补\r\n10=房补";}', 'on', 'on', 'on'),
(62, 4, 0, '公司性质', '', 'property', 'radio', 'a:1:{s:7:"choices";s:95:"1=私营\r\n2=国有\r\n3=股份制\r\n4=外商独资办事处\r\n5=中外合资/合作\r\n6=上市公司\r\n7=事业单位\r\n8=政府机关";}', 'on', 'on', 'on'),
(64, 2, 0, '房屋配置', '', 'house_pro', 'checkbox', 'a:1:{s:7:"choices";s:81:"1=床\r\n2=衣柜\r\n3=沙发\r\n4=电视\r\n5=冰箱\r\n6=洗衣机\r\n7=空调\r\n8=热水器\r\n9=宽带\r\n10=暖气";}', 'on', 'on', ''),
(65, 5, 0, '手机品牌', '', 'mbrand', 'select', 'a:1:{s:7:"choices";s:125:"1=iphone\r\n2=三星\r\n3=小米\r\n4=乐视\r\n5=华为\r\n6=联想\r\n7=锤子\r\n8=诺基亚\r\n9=HTC\r\n10=山寨/高仿机\r\n11=MOTO\r\n12=中兴\r\n13=索尼\r\n14=其他";}', 'on', 'on', 'on'),
(66, 0, 0, '寒暑假工类', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `my_insidelink`
--

CREATE TABLE `my_insidelink` (
  `id` mediumint(8) NOT NULL,
  `word` char(16) NOT NULL,
  `url` char(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_jswizard`
--

CREATE TABLE `my_jswizard` (
  `id` smallint(5) NOT NULL,
  `flag` varchar(50) NOT NULL,
  `customtype` char(8) NOT NULL,
  `parameter` mediumtext NOT NULL,
  `edittime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_lifebox`
--

CREATE TABLE `my_lifebox` (
  `id` smallint(4) NOT NULL,
  `typeid` tinyint(1) NOT NULL DEFAULT '2',
  `lifename` varchar(50) NOT NULL,
  `lifeurl` varchar(200) NOT NULL,
  `if_view` tinyint(1) NOT NULL,
  `displayorder` smallint(3) NOT NULL,
  `cityid` mediumint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_mail_sendlist`
--

CREATE TABLE `my_mail_sendlist` (
  `id` mediumint(8) NOT NULL,
  `email` varchar(100) NOT NULL,
  `template_id` varchar(50) NOT NULL,
  `email_content` mediumtext NOT NULL,
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `email_subject` varchar(200) NOT NULL,
  `last_send` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_mail_template`
--

CREATE TABLE `my_mail_template` (
  `template_id` tinyint(1) NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '1',
  `template_code` varchar(30) NOT NULL DEFAULT '',
  `is_html` tinyint(1) NOT NULL DEFAULT '0',
  `template_subject` varchar(200) NOT NULL DEFAULT '',
  `template_content` mediumtext NOT NULL,
  `last_modify` int(10) NOT NULL DEFAULT '0',
  `last_send` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_mail_template`
--

INSERT INTO `my_mail_template` (`template_id`, `is_sys`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`) VALUES
(1, 1, 'findpwd', 1, '找回密码邮件', '亲爱的用户 {$user_name} 您好！\r\n\r\n您已经进行了密码重置的操作，请点击以下链接（如无法打开请把此链接复制粘贴到浏览器打开）:\r\n\r\n{$reset_email}\r\n\r\n以确认您的新密码重置操作！此邮件为系统发出，请勿回复邮件。\r\n\r\n{$site_name}\r\n{$send_date}', 1407235479, 0),
(2, 1, 'validate', 1, '新用户邮件验证', '{$user_name}您好！\r\n\r\n这封邮件是 {$site_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。\r\n\r\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:\r\n{$validate_email}\r\n\r\n{$site_name}\r\n{$send_date}', 1429947607, 0);

-- --------------------------------------------------------

--
-- 表的结构 `my_member`
--

CREATE TABLE `my_member` (
  `id` mediumint(8) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `openid_wx` varchar(50) NOT NULL,
  `userpwd` char(36) NOT NULL,
  `catid` varchar(250) NOT NULL,
  `areaid` char(8) NOT NULL,
  `cname` varchar(40) NOT NULL,
  `tname` varchar(100) NOT NULL,
  `introduce` mediumtext NOT NULL,
  `sex` enum('男','女') NOT NULL DEFAULT '男',
  `tel` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `busway` mediumtext NOT NULL,
  `mappoint` varchar(100) NOT NULL,
  `latitude` decimal(20,17) NOT NULL,
  `longitude` decimal(20,17) NOT NULL,
  `qq` char(12) NOT NULL,
  `msn` char(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `template` char(250) NOT NULL,
  `keywords` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `prelogo` varchar(250) NOT NULL,
  `banner` varchar(250) NOT NULL,
  `safequestion` char(25) NOT NULL,
  `safeanswer` char(25) NOT NULL,
  `levelid` smallint(3) NOT NULL DEFAULT '1',
  `money_own` mediumint(8) NOT NULL DEFAULT '0',
  `credit` int(10) NOT NULL DEFAULT '0',
  `credits` smallint(2) NOT NULL DEFAULT '1',
  `score` int(10) NOT NULL DEFAULT '0',
  `joinip` char(16) NOT NULL,
  `loginip` char(16) NOT NULL,
  `jointime` int(10) UNSIGNED NOT NULL,
  `logintime` int(10) UNSIGNED NOT NULL,
  `qdtime` int(10) NOT NULL,
  `web` char(50) NOT NULL,
  `per_certify` tinyint(1) NOT NULL DEFAULT '0',
  `com_certify` tinyint(1) NOT NULL DEFAULT '0',
  `if_corp` tinyint(1) NOT NULL DEFAULT '0',
  `ifindex` tinyint(1) NOT NULL DEFAULT '1',
  `iflist` tinyint(1) NOT NULL DEFAULT '1',
  `mobile` varchar(20) NOT NULL,
  `levelup_time` int(10) NOT NULL,
  `hit` int(10) NOT NULL,
  `cityid` mediumint(6) NOT NULL,
  `streetid` mediumint(6) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_member`
--

INSERT INTO `my_member` (`id`, `userid`, `openid`, `openid_wx`, `userpwd`, `catid`, `areaid`, `cname`, `tname`, `introduce`, `sex`, `tel`, `address`, `busway`, `mappoint`, `latitude`, `longitude`, `qq`, `msn`, `email`, `template`, `keywords`, `logo`, `prelogo`, `banner`, `safequestion`, `safeanswer`, `levelid`, `money_own`, `credit`, `credits`, `score`, `joinip`, `loginip`, `jointime`, `logintime`, `qdtime`, `web`, `per_certify`, `com_certify`, `if_corp`, `ifindex`, `iflist`, `mobile`, `levelup_time`, `hit`, `cityid`, `streetid`, `status`) VALUES
(1, 'laogui0704', '', '', 'af4b83bd4c4c5137a51f97b49f25bd96', '', '', '', '', '', '男', '', '', '', '', '0.00000000000000000', '0.00000000000000000', '', '', '904850072@qq.com', '', '', '/attachment/face/201807/1532334985sbls9.jpg', '/attachment/face/201807/pre_1532334985sbls9.jpg', '', '', '', 3, 5, 0, 1, 16, '::1', '::1', 1532333142, 1532351044, 0, '', 0, 1, 0, 1, 1, '', 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `my_member_album`
--

CREATE TABLE `my_member_album` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `path` varchar(250) NOT NULL,
  `prepath` varchar(250) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `pubtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_member_category`
--

CREATE TABLE `my_member_category` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `catid` mediumint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_member_comment`
--

CREATE TABLE `my_member_comment` (
  `id` int(10) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `fromuser` varchar(20) NOT NULL,
  `face` varchar(250) NOT NULL,
  `pubtime` int(10) NOT NULL DEFAULT '0',
  `quality` tinyint(1) NOT NULL,
  `service` tinyint(1) NOT NULL,
  `environment` tinyint(1) NOT NULL,
  `price` tinyint(1) NOT NULL,
  `avgprice` varchar(20) NOT NULL,
  `enjoy` tinyint(1) NOT NULL,
  `content` mediumtext,
  `reply` mediumtext NOT NULL,
  `retime` int(10) NOT NULL,
  `commentlevel` tinyint(1) NOT NULL DEFAULT '1',
  `flower` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_member_docu`
--

CREATE TABLE `my_member_docu` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `title` varchar(250) NOT NULL,
  `author` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `content` mediumtext NOT NULL,
  `hit` int(10) NOT NULL DEFAULT '0',
  `imgpath` varchar(250) NOT NULL,
  `pre_imgpath` varchar(250) NOT NULL,
  `pubtime` int(10) NOT NULL,
  `if_check` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_member_docutype`
--

CREATE TABLE `my_member_docutype` (
  `typeid` int(11) NOT NULL,
  `typename` varchar(100) NOT NULL,
  `arrid` tinyint(1) NOT NULL DEFAULT '1',
  `ifview` tinyint(1) NOT NULL DEFAULT '1',
  `displayorder` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_member_docutype`
--

INSERT INTO `my_member_docutype` (`typeid`, `typename`, `arrid`, `ifview`, `displayorder`) VALUES
(1, '商家资讯', 1, 2, 1),
(2, '优惠促销', 1, 2, 2);

-- --------------------------------------------------------

--
-- 表的结构 `my_member_level`
--

CREATE TABLE `my_member_level` (
  `id` tinyint(5) NOT NULL,
  `levelname` varchar(30) NOT NULL,
  `ifsystem` tinyint(1) NOT NULL,
  `purviews` varchar(250) NOT NULL,
  `money_own` mediumint(8) NOT NULL,
  `perday_maxpost` smallint(5) NOT NULL,
  `allow_tpl` mediumtext NOT NULL,
  `member_contact` tinyint(1) NOT NULL DEFAULT '1',
  `signin_notice` tinyint(1) NOT NULL DEFAULT '0',
  `signin_del` tinyint(1) NOT NULL DEFAULT '1',
  `signin_view` tinyint(1) NOT NULL DEFAULT '1',
  `moneysettings` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_member_level`
--

INSERT INTO `my_member_level` (`id`, `levelname`, `ifsystem`, `purviews`, `money_own`, `perday_maxpost`, `allow_tpl`, `member_contact`, `signin_notice`, `signin_del`, `signin_view`, `moneysettings`) VALUES
(1, '新手上路', 1, 'purview_info,purview_pm,purview_base,purview_avatar,purview_levelup,purview_certify,purview_pay,purview_password,purview_shop,purview_album,purview_comment,purview_document,purview_coupon,purview_group,purview_goods ', 5, 5, 'blue', 1, 0, 0, 0, 'a:2:{s:6:"ifopen";a:4:{s:5:"month";s:1:"1";s:8:"halfyear";s:1:"1";s:4:"year";s:1:"1";s:7:"forever";s:1:"1";}s:5:"money";a:4:{s:5:"month";s:2:"30";s:8:"halfyear";s:0:"";s:4:"year";s:0:"";s:7:"forever";s:0:"";}}'),
(2, '普通会员', 1, 'purview_avatar,purview_info,purview_shoucang,purview_base,purview_certify,purview_pm,purview_levelup,purview_pay,purview_password,purview_shop,purview_album,purview_comment,purview_document,purview_coupon,purview_group,purview_goods,purview_banner', 0, 100, 'blue,green', 1, 0, 0, 0, 'a:2:{s:6:"ifopen";a:3:{s:5:"month";s:1:"1";s:8:"halfyear";s:1:"1";s:7:"forever";s:1:"1";}s:5:"money";a:4:{s:5:"month";s:5:"20000";s:8:"halfyear";s:6:"300000";s:4:"year";s:7:"1000000";s:7:"forever";s:7:"2000000";}}'),
(3, '黄金会员', 0, 'purview_avatar,purview_info,purview_shoucang,purview_base,purview_certify,purview_pm,purview_levelup,purview_pay,purview_password,purview_shop,purview_album,purview_comment,purview_document,purview_coupon,purview_group,purview_goods,purview_banner', 0, 100, 'blue,orange,green', 1, 0, 0, 0, 'a:2:{s:6:"ifopen";a:4:{s:5:"month";s:1:"1";s:8:"halfyear";s:1:"1";s:4:"year";s:1:"1";s:7:"forever";s:1:"1";}s:5:"money";a:4:{s:5:"month";s:1:"1";s:8:"halfyear";s:1:"2";s:4:"year";s:1:"3";s:7:"forever";s:1:"4";}}');

-- --------------------------------------------------------

--
-- 表的结构 `my_member_pm`
--

CREATE TABLE `my_member_pm` (
  `id` smallint(5) NOT NULL,
  `fromuser` varchar(50) NOT NULL,
  `touser` varchar(50) NOT NULL,
  `pubtime` int(10) NOT NULL DEFAULT '0',
  `retime` int(10) NOT NULL,
  `title` varchar(250) NOT NULL,
  `retitle` varchar(250) NOT NULL,
  `content` mediumtext,
  `recontent` mediumtext NOT NULL,
  `if_read` tinyint(1) NOT NULL DEFAULT '0',
  `if_sys` tinyint(1) NOT NULL,
  `if_del` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_member_pm`
--

INSERT INTO `my_member_pm` (`id`, `fromuser`, `touser`, `pubtime`, `retime`, `title`, `retitle`, `content`, `recontent`, `if_read`, `if_sys`, `if_del`) VALUES
(1, 'admin', 'laogui0704', 1532333142, 0, 'laogui0704,您好,感谢您的注册,请阅读以下内容。', '', '尊敬的laogui0704,您已经注册成为我的网站的会员,请您在发表言论时,遵守当地法律法规。\r\n如果您有什么疑问可以联系管理员。\r\n\r\n\r\n我的网站\r\n2018-07-23 16:05:42', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `my_member_record_login`
--

CREATE TABLE `my_member_record_login` (
  `id` int(11) NOT NULL,
  `userid` char(32) NOT NULL,
  `userpwd` char(30) NOT NULL,
  `pubdate` int(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `ip2area` varchar(32) NOT NULL,
  `browser` varchar(20) NOT NULL,
  `port` varchar(20) NOT NULL,
  `os` varchar(20) NOT NULL,
  `outdate` int(10) NOT NULL,
  `result` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_member_record_login`
--

INSERT INTO `my_member_record_login` (`id`, `userid`, `userpwd`, `pubdate`, `ip`, `ip2area`, `browser`, `port`, `os`, `outdate`, `result`) VALUES
(3, 'laogui0704', '', 1532351044, '::1', 'IANA', 'FireFox 61.0', '43884', 'Windows NT', 1532416600, 1);

-- --------------------------------------------------------

--
-- 表的结构 `my_member_record_use`
--

CREATE TABLE `my_member_record_use` (
  `id` int(8) NOT NULL,
  `userid` char(50) NOT NULL,
  `paycost` char(50) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `pubtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_member_tpl`
--

CREATE TABLE `my_member_tpl` (
  `id` smallint(3) NOT NULL,
  `if_view` tinyint(1) NOT NULL DEFAULT '2',
  `tpl_name` varchar(250) NOT NULL,
  `tpl_path` varchar(250) NOT NULL,
  `displayorder` int(5) NOT NULL,
  `edittime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_member_tpl`
--

INSERT INTO `my_member_tpl` (`id`, `if_view`, `tpl_name`, `tpl_path`, `displayorder`, `edittime`) VALUES
(1, 2, '蓝色主题', 'blue', 1, 1273410326),
(2, 2, '橙红主题', 'orange', 2, 1273410338),
(4, 2, '绿色主题', 'green', 4, 1273410646),
(6, 2, '紫色主题', 'purple', 6, 1466692165),
(7, 2, '粉色主题', 'pink', 7, 1466692175);

-- --------------------------------------------------------

--
-- 表的结构 `my_member_wx`
--

CREATE TABLE `my_member_wx` (
  `id` int(10) NOT NULL,
  `actionkey` varchar(50) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `userpwd` char(36) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_mobile_gg`
--

CREATE TABLE `my_mobile_gg` (
  `id` smallint(5) NOT NULL,
  `typeid` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `words` varchar(50) NOT NULL,
  `pubdate` int(11) NOT NULL,
  `displayorder` smallint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_mobile_gg`
--

INSERT INTO `my_mobile_gg` (`id`, `typeid`, `image`, `url`, `words`, `pubdate`, `displayorder`) VALUES
(1, 1, '/attachment/mobile_gg/1469676806dzt6z.jpg', 'index.php', '天猫超市', 1469676806, 1),
(2, 2, '/attachment/mobile_gg/14696777801tuyl.jpg', 'index.php', '疯狂猜车', 1469677780, 2),
(3, 1, '/attachment/mobile_gg/1469677858x6r1c.png', 'index.php', '海量物品免费获取', 1469677858, 3),
(4, 2, '/attachment/mobile_gg/1469677887yuini.png', 'index.php', '7天退换', 1469677887, 4);

-- --------------------------------------------------------

--
-- 表的结构 `my_mobile_nav`
--

CREATE TABLE `my_mobile_nav` (
  `id` smallint(5) NOT NULL,
  `title` char(50) NOT NULL,
  `url` char(250) NOT NULL,
  `color` varchar(7) NOT NULL,
  `ico` varchar(200) NOT NULL,
  `flag` varchar(50) NOT NULL,
  `target` varchar(10) NOT NULL,
  `isview` tinyint(1) NOT NULL,
  `displayorder` int(5) NOT NULL,
  `createtime` int(10) NOT NULL,
  `typeid` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_mobile_nav`
--

INSERT INTO `my_mobile_nav` (`id`, `title`, `url`, `color`, `ico`, `flag`, `target`, `isview`, `displayorder`, `createtime`, `typeid`) VALUES
(1, '信息分类', 'index.php?mod=category', '', '', 'category', '_self', 2, 2, 1469520429, 1),
(2, '热点资讯', 'index.php?mod=news', '', '', 'news', '_self', 2, 3, 1469520458, 1),
(3, '商家店铺', 'index.php?mod=corp', '', '', 'corp', '_self', 2, 4, 1469520485, 1),
(4, 'mymps首页', 'index.php?mod=index', '', '', 'index', '_self', 2, 1, 1469521176, 1),
(49, '商务服务', 'index.php?mod=category&catid=189', '', '/template/default/images/index/icon_business.gif', '', '_self', 2, 11, 0, 2),
(48, '教育培训', 'index.php?mod=category&catid=10', '', '/template/default/images/index/icon_edu.gif', '', '_self', 2, 10, 0, 2),
(47, '生活服务', 'index.php?mod=category&catid=9', '', '/template/default/images/index/icon_life.gif', '', '_self', 2, 9, 0, 2),
(46, '宠物', 'index.php?mod=category&catid=8', '', '/template/default/images/index/icon_pet.gif', '', '_self', 2, 8, 0, 2),
(45, '交友活动', 'index.php?mod=category&catid=7', '', '/template/default/images/index/icon_love.gif', '', '_self', 2, 7, 0, 2),
(43, '兼职招聘', 'index.php?mod=category&catid=5', '', '/template/default/images/index/icon_jzzhaopin.gif', '', '_self', 2, 5, 0, 2),
(44, '求职简历', 'index.php?mod=category&catid=6', '', '/template/default/images/index/icon_jianli.gif', '', '_self', 2, 6, 0, 2),
(42, '全职招聘', 'index.php?mod=category&catid=4', '', '/template/default/images/index/icon_zhaopin.gif', '', '_self', 2, 4, 0, 2),
(41, '房屋租售', 'index.php?mod=category&catid=3', '', '/template/default/images/index/icon_fang.gif', '', '_self', 2, 3, 0, 2),
(40, '车辆买卖', 'index.php?mod=category&catid=2', '', '/template/default/images/index/icon_che.gif', '', '_self', 2, 2, 0, 2),
(39, '二手转让', 'index.php?mod=category&catid=1', '', '/template/default/images/index/icon_ershou.gif', '', '_self', 2, 1, 0, 2),
(54, '商品展示', 'index.php?mod=goods', '', '/template/default/images/index/icon_goods.gif', '', '_self', 2, 14, 1469545508, 2),
(53, '热点资讯', 'index.php?mod=news', '', '/template/default/images/index/icon_news.gif', '', '_self', 2, 13, 1469545240, 2),
(52, '商家机构', 'index.php?mod=corp', '', '/template/default/images/index/icon_corp.gif', '', '_self', 2, 12, 1469545077, 2),
(55, '商品展示', 'index.php?mod=goods', '', '', 'goods', '_', 2, 5, 1470070591, 1);

-- --------------------------------------------------------

--
-- 表的结构 `my_navurl`
--

CREATE TABLE `my_navurl` (
  `id` mediumint(6) NOT NULL,
  `url` char(250) NOT NULL,
  `color` varchar(7) NOT NULL,
  `flag` varchar(50) NOT NULL,
  `ico` varchar(20) NOT NULL,
  `target` varchar(10) NOT NULL,
  `title` char(250) NOT NULL,
  `typeid` smallint(5) NOT NULL DEFAULT '0',
  `isview` smallint(1) NOT NULL DEFAULT '1',
  `displayorder` int(5) NOT NULL,
  `createtime` int(10) NOT NULL,
  `cityid` mediumint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_navurl`
--

INSERT INTO `my_navurl` (`id`, `url`, `color`, `flag`, `ico`, `target`, `title`, `typeid`, `isview`, `displayorder`, `createtime`, `cityid`) VALUES
(29, 'category.php?catid=244', '', '244', '', '_self', '商务服务', 3, 0, 11, 0, 0),
(28, 'category.php?catid=10', '', '10', '', '_self', '教育培训', 3, 0, 10, 0, 0),
(27, 'category.php?catid=9', '', '9', '', '_self', '生活服务', 3, 0, 19, 0, 0),
(25, 'category.php?catid=7', '', '7', '', '_self', '交友活动', 3, 0, 18, 0, 0),
(24, 'category.php?catid=6', '', '6', '', '_self', '求职简历', 3, 0, 16, 0, 0),
(23, 'category.php?catid=5', '', '5', '', '_self', '兼职招聘', 3, 0, 15, 0, 0),
(21, 'category.php?catid=3', '', '3', '', '_self', '房产租售', 3, 2, 3, 0, 0),
(20, 'category.php?catid=2', '', '2', '', '_self', '汽车租售', 3, 2, 4, 0, 0),
(19, 'category.php?catid=1', '', '1', '', '_self', '二手物品交易', 3, 2, 5, 0, 0),
(12, 'http://localhost/mayi/about.php?part=aboutus&id=1', '', '', '', '_blank', '网站简介', 2, 2, 1, 1532332550, 0),
(13, 'http://localhost/mayi/about.php?part=aboutus&id=2', '', '', '', '_blank', '广告服务', 2, 2, 2, 1532332550, 0),
(14, 'http://localhost/mayi/about.php?part=aboutus&id=3', '', '', '', '_blank', '联系我们', 2, 2, 3, 1532332550, 0),
(15, 'http://localhost/mayi/about.php?part=faq', '', '', '', '_blank', '网站帮助', 2, 2, 4, 1532332550, 0),
(16, 'http://localhost/mayi/about.php?part=friendlink', '', '', '', '_blank', '友情链接', 2, 2, 5, 1532332550, 0),
(17, 'http://localhost/mayi/about.php?part=announce', '', '', '', '_blank', '网站公告', 2, 2, 6, 1532332550, 0),
(18, 'http://localhost/mayi/about.php?part=sitemap', '', '', '', '_blank', '网站地图', 2, 2, 7, 1532332550, 0),
(22, 'category.php?catid=4', '', '4', '', '_self', '工作招聘', 3, 2, 2, 0, 0),
(30, 'category.php?catid=250', '', '250', '', '_self', '寒暑假工', 3, 2, 1, 0, 0),
(31, 'coupon.php', '', 'coupon', '', '_self', '优惠券', 3, 0, 13, 0, 0),
(32, 'group.php', '', 'group', '', '_self', '团购', 3, 0, 14, 0, 0),
(33, 'news.php', '', 'news', '', '_self', '新闻资讯', 3, 0, 20, 0, 0),
(34, 'goods.php', '', 'goods', '', '_self', '商品', 3, 0, 16, 0, 0),
(35, 'corporation.php', '', 'corp', '', '_self', '店铺', 3, 0, 17, 0, 0),
(36, 'category.php?catid=252', '', '252', '', '_blank', '同城商家', 3, 2, 6, 1532397952, 0),
(37, 'category.php?catid=253', '', '253', '', '_blank', '技能共享', 3, 2, 7, 1532398129, 0),
(38, 'category.php?catid=254', '', '254', '', '_blank', '好人好事', 3, 2, 8, 1532398157, 0),
(39, 'category.php?catid=255', '', '255', '', '_blank', '交友聊天', 3, 2, 9, 1532398210, 0);

-- --------------------------------------------------------

--
-- 表的结构 `my_news`
--

CREATE TABLE `my_news` (
  `id` int(10) NOT NULL,
  `iscommend` tinyint(1) NOT NULL DEFAULT '0',
  `isfocus` varchar(10) NOT NULL,
  `isbold` tinyint(1) NOT NULL DEFAULT '0',
  `isjump` tinyint(1) NOT NULL DEFAULT '0',
  `redirect_url` varchar(250) NOT NULL,
  `title` varchar(30) NOT NULL,
  `keywords` varchar(250) NOT NULL,
  `catid` int(8) NOT NULL,
  `begintime` int(11) NOT NULL,
  `introduction` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `author` varchar(30) NOT NULL,
  `source` varchar(100) NOT NULL,
  `hit` int(10) NOT NULL DEFAULT '0',
  `perhit` int(10) NOT NULL DEFAULT '1',
  `imgpath` varchar(100) NOT NULL DEFAULT '0',
  `cityid` mediumint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_payapi`
--

CREATE TABLE `my_payapi` (
  `payid` smallint(6) NOT NULL,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `buytype` tinyint(1) NOT NULL DEFAULT '1',
  `myorder` tinyint(4) NOT NULL DEFAULT '0',
  `payfee` varchar(10) NOT NULL DEFAULT '',
  `payuser` varchar(60) NOT NULL DEFAULT '',
  `partner` varchar(60) NOT NULL DEFAULT '',
  `paykey` varchar(120) NOT NULL DEFAULT '',
  `appid` varchar(60) NOT NULL,
  `appkey` varchar(60) NOT NULL,
  `paylogo` varchar(200) NOT NULL DEFAULT '',
  `paysay` mediumtext NOT NULL,
  `payname` varchar(120) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `payemail` varchar(120) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_payapi`
--

INSERT INTO `my_payapi` (`payid`, `paytype`, `buytype`, `myorder`, `payfee`, `payuser`, `partner`, `paykey`, `appid`, `appkey`, `paylogo`, `paysay`, `payname`, `isclose`, `payemail`) VALUES
(1, 'tenpay', 0, 0, '0', '', '', '', '', '', '', '财付通（www.tenpay.com） - 腾讯旗下在线支付平台，通过国家权威安全认证，支持各大银行网上支付。', '财付通', 0, ''),
(2, 'chinabank', 1, 1, '0', '', '', '', '', '', '', '网银在线与中国工商银行、招商银行、中国建设银行、农业银行、民生银行等数十家金融机构达成协议。全面支持全国19家银行的信用卡及借记卡实现网上支付。（网址：http://www.chinabank.com.cn）', '网银在线', 0, ''),
(3, 'alipay', 1, 0, '', '', '', '', '', '', '', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。', '支付宝接口', 0, ''),
(4, 'alipay_h5', 0, 0, '', '', '', '', '', '', '', '    支付宝手机网站支付    ', '支付宝手机接口', 0, ''),
(5, 'wxpay', 0, 0, '', '', '', '', '', '', '', '    微信端手机支付    ', '微信支付', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `my_payrecord`
--

CREATE TABLE `my_payrecord` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `userid` varchar(30) NOT NULL,
  `orderid` varchar(50) NOT NULL DEFAULT '',
  `money` varchar(20) NOT NULL DEFAULT '',
  `paybz` varchar(10) NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT '',
  `payip` varchar(20) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL,
  `ifadd` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_payrecord`
--

INSERT INTO `my_payrecord` (`id`, `uid`, `userid`, `orderid`, `money`, `paybz`, `type`, `payip`, `posttime`, `ifadd`) VALUES
(1, 1, 'laogui0704', '1532333758', '5', '等待支付', 'alipay', '::1', 1532333758, 0);

-- --------------------------------------------------------

--
-- 表的结构 `my_plugin`
--

CREATE TABLE `my_plugin` (
  `id` smallint(5) NOT NULL,
  `flag` varchar(30) NOT NULL DEFAULT '',
  `iscore` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `directory` varchar(100) NOT NULL DEFAULT '',
  `disable` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `version` varchar(60) NOT NULL DEFAULT '',
  `releasetime` int(10) NOT NULL,
  `author` varchar(255) NOT NULL DEFAULT '',
  `introduce` mediumtext NOT NULL,
  `siteurl` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `copyright` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `my_plugin`
--

INSERT INTO `my_plugin` (`id`, `flag`, `iscore`, `name`, `directory`, `disable`, `config`, `version`, `releasetime`, `author`, `introduce`, `siteurl`, `email`, `copyright`) VALUES
(1, 'coupon', 0, '优惠券', 'coupon', 0, 'a:4:{s:8:"seotitle";s:16:"{city}优惠券标题";s:11:"seokeywords";s:18:"{city}优惠券关键词";s:14:"seodescription";s:16:"{city}优惠券描述";s:9:"adminmenu";s:60:"优惠券分类=coupon_category.php\r\n已上传优惠券=coupon_list.php";}', '1.0', 1278232105, 'steven', '商铺优惠券插件', 'http://www.mymps.com.cn', 'business@live.it', 'Mymps Dev.'),
(2, 'group', 0, '团购', 'group', 0, 'a:4:{s:8:"seotitle";s:18:"{city}团购活动标题";s:11:"seokeywords";s:20:"{city}团购活动关键词";s:14:"seodescription";s:18:"{city}团购活动描述";s:9:"adminmenu";s:81:"团购分类=group_category.php\r\n已发起团购=group_list.php\r\n报名管理=group_signin.php";}', '1.0', 1278232105, 'steven', '团购活动插件', 'http://www.mymps.com.cn', 'business@live.it', 'MyDev.'),
(3, 'news', 0, '新闻资讯', '-', 0, 'a:4:{s:8:"seotitle";s:18:"{city}新闻模块标题";s:11:"seokeywords";s:20:"{city}新闻模块关键词";s:14:"seodescription";s:18:"{city}新闻模块描述";s:9:"adminmenu";s:66:"新闻管理=news.php\r\n新闻类别=channel.php\r\n新闻评论=news_comment.php";}', '2.0', 1278232105, 'steven', '网站新闻插件', 'http://www.mymps.com.cn', 'business@live.it', 'MyDev.'),
(4, 'goods', 0, '商品', 'goods', 0, 'a:7:{s:8:"seotitle";s:14:"{city}商品标题";s:11:"seokeywords";s:16:"{city}商品关键词";s:14:"seodescription";s:14:"{city}商品描述";s:9:"adminmenu";s:78:"商品分类=goods_category.php\r\n商品管理=goods_list.php\r\n订单管理=goods_order.php";s:5:"quhuo";s:555:"1.普通快递送货上门 \r\n  覆盖全国800多个城市，运费5元/包裹\r\n2.加急快递送货上门 \r\n  支持北京、天津、上海、广州、深圳、廊坊，限当地发货订单，运费10元/包裹 \r\n3.圆通快递 \r\n  北京地区：运费10元/单 \r\n4.普通邮递 \r\n  大陆地区：运费5元/包裹，购物满29元免运费 \r\n  港澳地区：运费为商品原价总金额的30%，最低20元 \r\n  海外地区：运费为商品原价总金额的50%，最低50元 \r\n5.邮政特快专递(EMS) \r\n  北京地区：运费为订单总金额的20%，最低16元 \r\n  大陆其它地区：运费为订单总金额的40%，最低20元 \r\n  港澳台地区：运费为订单总金额的50%，最低45元 \r\n6.自提 \r\n  支持用户上门自提，免收运费。";s:6:"fukuan";s:150:"当面付款\r\n店内交易、送货上门、预约交易均可当面付款\r\n\r\n银行转账\r\n可通银行转账方式将款汇款到指定账号中\r\n\r\n网上汇款\r\n可通网上转账方式将款汇款到指定账号中";s:7:"service";s:1240:"售后服务参考条文：\r\n1、如果您购买的是数码类、手机及配件、笔记本、台式机、家电类商品，为了保证您能充分享有生产厂家提供的售后保修服务，不管您是否需要开具发票，我们都将随单为您开具，发票内容默认为您订购的商品全称，同时不支持修改发票内容。如果因为所开具的发票内容和所购商品名称不符，导致无法保修，本站概不负责。\r\n \r\n2、退货时提供发票原件，超1000元现金支付的订单办理退货将不退现金。\r\n \r\n3、数码类、手机及配件、笔记本、台式机、家电、打印机、扫描仪、一体机、车载GPS类商品，如果商品出现质量问题，请您自行到生产厂家售后服务中心进行检测，并开据检测报告（对于有些生产厂家售后服务中心无法提供检测报告的，需提供维修检验单据），如果检测报告确认属于质量问题，然后将检测报告、问题商品及完整包装附件，一并返回我司办理退换货手续。如有破损或丢失，我们将无法为您办理。\r\n \r\n4、对于钻石、黄金、手表、珠宝首饰及个人配饰类产品，如果附带国家级宝玉石鉴定中心出具的鉴定证书的、非质量问题不予以退换货。客户在收到商品之日起（以发票日期为准）3个月内，如果出现质量问题，请自行到当地的质量监督部门-珠宝玉石质量检验中心进行检测，如果检测报告确认属于质量问题，请与本站售后服务部联系办理退换货事宜。退换货时，请您务必将检测报告、商品的外包装、内带附件、鉴定证书、说明书等随同商品一起退回。如有包装破损或缺失，扣除该商品5%的折价费；如有附件破损或缺失扣除该商品10-15%的折价费。";}', '1.0', 1309753960, 'steven', '商品插件', 'http://www.mymps.com.cn', 'business@live.it', 'MyDev.');

-- --------------------------------------------------------

--
-- 表的结构 `my_province`
--

CREATE TABLE `my_province` (
  `provinceid` smallint(6) NOT NULL,
  `provincename` varchar(32) NOT NULL,
  `displayorder` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_shoucang`
--

CREATE TABLE `my_shoucang` (
  `id` int(10) NOT NULL,
  `infoid` int(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `intime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_sms_sendlist`
--

CREATE TABLE `my_sms_sendlist` (
  `id` int(10) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  `sendtime` int(10) NOT NULL,
  `sms_service` char(30) NOT NULL,
  `sms_content` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_street`
--

CREATE TABLE `my_street` (
  `streetid` mediumint(6) NOT NULL,
  `streetname` varchar(32) NOT NULL,
  `areaid` int(11) NOT NULL,
  `displayorder` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_telephone`
--

CREATE TABLE `my_telephone` (
  `id` smallint(4) NOT NULL,
  `telname` varchar(50) NOT NULL,
  `telnumber` varchar(50) NOT NULL,
  `color` char(10) NOT NULL,
  `if_bold` tinyint(1) NOT NULL DEFAULT '0',
  `displayorder` smallint(5) NOT NULL,
  `if_view` tinyint(1) NOT NULL DEFAULT '1',
  `cityid` mediumint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_template`
--

CREATE TABLE `my_template` (
  `filepath` varchar(250) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `my_upload`
--

CREATE TABLE `my_upload` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `width` varchar(10) NOT NULL DEFAULT '',
  `height` varchar(10) NOT NULL DEFAULT '',
  `playtime` varchar(10) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `newsid` int(11) NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `adminid` int(11) NOT NULL DEFAULT '0',
  `memberid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `my_about`
--
ALTER TABLE `my_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_admin`
--
ALTER TABLE `my_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `my_admin_record_action`
--
ALTER TABLE `my_admin_record_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_admin_record_login`
--
ALTER TABLE `my_admin_record_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_admin_type`
--
ALTER TABLE `my_admin_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_advertisement`
--
ALTER TABLE `my_advertisement`
  ADD PRIMARY KEY (`advid`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `my_announce`
--
ALTER TABLE `my_announce`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `my_area`
--
ALTER TABLE `my_area`
  ADD PRIMARY KEY (`areaid`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `my_cache`
--
ALTER TABLE `my_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_category`
--
ALTER TABLE `my_category`
  ADD PRIMARY KEY (`catid`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `catname` (`catname`),
  ADD KEY `catorder` (`catorder`);

--
-- Indexes for table `my_certification`
--
ALTER TABLE `my_certification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_channel`
--
ALTER TABLE `my_channel`
  ADD PRIMARY KEY (`catid`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `catname` (`catname`),
  ADD KEY `catorder` (`catorder`);

--
-- Indexes for table `my_checkanswer`
--
ALTER TABLE `my_checkanswer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_city`
--
ALTER TABLE `my_city`
  ADD PRIMARY KEY (`cityid`),
  ADD KEY `displayorder` (`displayorder`),
  ADD KEY `provinceid` (`provinceid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `my_comment`
--
ALTER TABLE `my_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `typeid` (`typeid`,`comment_level`,`type`),
  ADD KEY `comment_level` (`comment_level`);

--
-- Indexes for table `my_config`
--
ALTER TABLE `my_config`
  ADD KEY `type` (`type`),
  ADD KEY `description` (`description`);

--
-- Indexes for table `my_corp`
--
ALTER TABLE `my_corp`
  ADD PRIMARY KEY (`corpid`),
  ADD KEY `areaname` (`corpname`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `my_coupon`
--
ALTER TABLE `my_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cate_id` (`cate_id`),
  ADD KEY `areaid` (`areaid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `my_coupon_category`
--
ALTER TABLE `my_coupon_category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `my_crons`
--
ALTER TABLE `my_crons`
  ADD PRIMARY KEY (`cronid`),
  ADD KEY `nextrun` (`nextrun`);

--
-- Indexes for table `my_faq`
--
ALTER TABLE `my_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_faq_type`
--
ALTER TABLE `my_faq_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_flink`
--
ALTER TABLE `my_flink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordernumber` (`ordernumber`),
  ADD KEY `ischeck` (`ischeck`),
  ADD KEY `weblogo` (`weblogo`),
  ADD KEY `ifindex` (`ifindex`),
  ADD KEY `catid` (`catid`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `my_flink_type`
--
ALTER TABLE `my_flink_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_focus`
--
ALTER TABLE `my_focus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image` (`image`),
  ADD KEY `url` (`url`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `my_goods`
--
ALTER TABLE `my_goods`
  ADD PRIMARY KEY (`goodsid`),
  ADD KEY `userid` (`userid`,`catid`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `my_goods_category`
--
ALTER TABLE `my_goods_category`
  ADD PRIMARY KEY (`catid`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `catname` (`catname`),
  ADD KEY `catorder` (`catorder`);

--
-- Indexes for table `my_goods_order`
--
ALTER TABLE `my_goods_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goodsid` (`goodsid`);

--
-- Indexes for table `my_group`
--
ALTER TABLE `my_group`
  ADD PRIMARY KEY (`groupid`),
  ADD KEY `areaid` (`areaid`),
  ADD KEY `cate_id` (`cate_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `glevel` (`glevel`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `my_group_category`
--
ALTER TABLE `my_group_category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `my_group_signin`
--
ALTER TABLE `my_group_signin`
  ADD PRIMARY KEY (`signid`),
  ADD KEY `groupid` (`groupid`);

--
-- Indexes for table `my_information`
--
ALTER TABLE `my_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `ifred` (`ifred`),
  ADD KEY `ifbold` (`ifbold`),
  ADD KEY `upgrade_type` (`upgrade_type`,`begintime`,`id`),
  ADD KEY `upgrade_type_list` (`upgrade_type_list`,`begintime`,`id`),
  ADD KEY `upgrade_type_index` (`upgrade_type_index`),
  ADD KEY `tel` (`tel`),
  ADD KEY `begintime` (`begintime`,`info_level`,`id`),
  ADD KEY `gid` (`gid`,`info_level`,`cityid`),
  ADD KEY `catid` (`catid`,`info_level`,`cityid`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `my_information_2`
--
ALTER TABLE `my_information_2`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_6`
--
ALTER TABLE `my_information_6`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_7`
--
ALTER TABLE `my_information_7`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_8`
--
ALTER TABLE `my_information_8`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_9`
--
ALTER TABLE `my_information_9`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_10`
--
ALTER TABLE `my_information_10`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_11`
--
ALTER TABLE `my_information_11`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_12`
--
ALTER TABLE `my_information_12`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_13`
--
ALTER TABLE `my_information_13`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_14`
--
ALTER TABLE `my_information_14`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_15`
--
ALTER TABLE `my_information_15`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_16`
--
ALTER TABLE `my_information_16`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_18`
--
ALTER TABLE `my_information_18`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_19`
--
ALTER TABLE `my_information_19`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_20`
--
ALTER TABLE `my_information_20`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_21`
--
ALTER TABLE `my_information_21`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_22`
--
ALTER TABLE `my_information_22`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_23`
--
ALTER TABLE `my_information_23`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_24`
--
ALTER TABLE `my_information_24`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_25`
--
ALTER TABLE `my_information_25`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_26`
--
ALTER TABLE `my_information_26`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_27`
--
ALTER TABLE `my_information_27`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_information_28`
--
ALTER TABLE `my_information_28`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `my_info_img`
--
ALTER TABLE `my_info_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `infoid` (`infoid`);

--
-- Indexes for table `my_info_report`
--
ALTER TABLE `my_info_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_info_typemodels`
--
ALTER TABLE `my_info_typemodels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_info_typeoptions`
--
ALTER TABLE `my_info_typeoptions`
  ADD PRIMARY KEY (`optionid`),
  ADD KEY `classid` (`classid`),
  ADD KEY `available` (`available`),
  ADD KEY `search` (`search`),
  ADD KEY `displayorder` (`displayorder`);

--
-- Indexes for table `my_insidelink`
--
ALTER TABLE `my_insidelink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_jswizard`
--
ALTER TABLE `my_jswizard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flag` (`flag`);

--
-- Indexes for table `my_lifebox`
--
ALTER TABLE `my_lifebox`
  ADD PRIMARY KEY (`id`),
  ADD KEY `displayorder` (`displayorder`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `my_mail_sendlist`
--
ALTER TABLE `my_mail_sendlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template_id` (`template_id`);

--
-- Indexes for table `my_mail_template`
--
ALTER TABLE `my_mail_template`
  ADD PRIMARY KEY (`template_id`),
  ADD UNIQUE KEY `template_code` (`template_code`);

--
-- Indexes for table `my_member`
--
ALTER TABLE `my_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `areaid` (`areaid`),
  ADD KEY `catid` (`catid`),
  ADD KEY `levelid` (`levelid`),
  ADD KEY `jointime` (`jointime`),
  ADD KEY `ifindex` (`ifindex`),
  ADD KEY `iflist` (`iflist`),
  ADD KEY `openid` (`openid`),
  ADD KEY `cityid` (`cityid`),
  ADD KEY `status` (`status`,`if_corp`),
  ADD KEY `openid_wx` (`openid_wx`);

--
-- Indexes for table `my_member_album`
--
ALTER TABLE `my_member_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_member_category`
--
ALTER TABLE `my_member_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `my_member_comment`
--
ALTER TABLE `my_member_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `enjoy` (`enjoy`),
  ADD KEY `fromuser` (`fromuser`),
  ADD KEY `commentlevel` (`commentlevel`);

--
-- Indexes for table `my_member_docu`
--
ALTER TABLE `my_member_docu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `my_member_docutype`
--
ALTER TABLE `my_member_docutype`
  ADD PRIMARY KEY (`typeid`);

--
-- Indexes for table `my_member_level`
--
ALTER TABLE `my_member_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_member_pm`
--
ALTER TABLE `my_member_pm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fromuser` (`fromuser`),
  ADD KEY `touser` (`touser`);

--
-- Indexes for table `my_member_record_login`
--
ALTER TABLE `my_member_record_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_member_record_use`
--
ALTER TABLE `my_member_record_use`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `pubtime` (`pubtime`);

--
-- Indexes for table `my_member_tpl`
--
ALTER TABLE `my_member_tpl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_member_wx`
--
ALTER TABLE `my_member_wx`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_mobile_gg`
--
ALTER TABLE `my_mobile_gg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_mobile_nav`
--
ALTER TABLE `my_mobile_nav`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeid` (`typeid`,`isview`);

--
-- Indexes for table `my_navurl`
--
ALTER TABLE `my_navurl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeid` (`typeid`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `my_news`
--
ALTER TABLE `my_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `imgpath` (`imgpath`),
  ADD KEY `hit` (`hit`),
  ADD KEY `cityid` (`cityid`,`catid`);

--
-- Indexes for table `my_payapi`
--
ALTER TABLE `my_payapi`
  ADD PRIMARY KEY (`payid`),
  ADD UNIQUE KEY `paytype` (`paytype`);

--
-- Indexes for table `my_payrecord`
--
ALTER TABLE `my_payrecord`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`uid`,`orderid`),
  ADD KEY `posttime` (`posttime`),
  ADD KEY `ifadd` (`ifadd`),
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `my_plugin`
--
ALTER TABLE `my_plugin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_province`
--
ALTER TABLE `my_province`
  ADD PRIMARY KEY (`provinceid`);

--
-- Indexes for table `my_shoucang`
--
ALTER TABLE `my_shoucang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `my_sms_sendlist`
--
ALTER TABLE `my_sms_sendlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_street`
--
ALTER TABLE `my_street`
  ADD PRIMARY KEY (`streetid`),
  ADD KEY `areaid` (`areaid`);

--
-- Indexes for table `my_telephone`
--
ALTER TABLE `my_telephone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `displayorder` (`displayorder`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `my_upload`
--
ALTER TABLE `my_upload`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memberid` (`memberid`,`filesize`,`newsid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `my_about`
--
ALTER TABLE `my_about`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `my_admin`
--
ALTER TABLE `my_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `my_admin_record_action`
--
ALTER TABLE `my_admin_record_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- 使用表AUTO_INCREMENT `my_admin_record_login`
--
ALTER TABLE `my_admin_record_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `my_admin_type`
--
ALTER TABLE `my_admin_type`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `my_advertisement`
--
ALTER TABLE `my_advertisement`
  MODIFY `advid` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_announce`
--
ALTER TABLE `my_announce`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `my_area`
--
ALTER TABLE `my_area`
  MODIFY `areaid` mediumint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `my_cache`
--
ALTER TABLE `my_cache`
  MODIFY `id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `my_category`
--
ALTER TABLE `my_category`
  MODIFY `catid` mediumint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=688;
--
-- 使用表AUTO_INCREMENT `my_certification`
--
ALTER TABLE `my_certification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `my_channel`
--
ALTER TABLE `my_channel`
  MODIFY `catid` mediumint(6) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_checkanswer`
--
ALTER TABLE `my_checkanswer`
  MODIFY `id` smallint(3) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_city`
--
ALTER TABLE `my_city`
  MODIFY `cityid` mediumint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `my_comment`
--
ALTER TABLE `my_comment`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_corp`
--
ALTER TABLE `my_corp`
  MODIFY `corpid` mediumint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- 使用表AUTO_INCREMENT `my_coupon`
--
ALTER TABLE `my_coupon`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_coupon_category`
--
ALTER TABLE `my_coupon_category`
  MODIFY `cate_id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `my_crons`
--
ALTER TABLE `my_crons`
  MODIFY `cronid` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `my_faq`
--
ALTER TABLE `my_faq`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- 使用表AUTO_INCREMENT `my_faq_type`
--
ALTER TABLE `my_faq_type`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `my_flink`
--
ALTER TABLE `my_flink`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_flink_type`
--
ALTER TABLE `my_flink_type`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `my_focus`
--
ALTER TABLE `my_focus`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `my_goods`
--
ALTER TABLE `my_goods`
  MODIFY `goodsid` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_goods_category`
--
ALTER TABLE `my_goods_category`
  MODIFY `catid` mediumint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `my_goods_order`
--
ALTER TABLE `my_goods_order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_group`
--
ALTER TABLE `my_group`
  MODIFY `groupid` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_group_category`
--
ALTER TABLE `my_group_category`
  MODIFY `cate_id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `my_group_signin`
--
ALTER TABLE `my_group_signin`
  MODIFY `signid` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information`
--
ALTER TABLE `my_information`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `my_information_2`
--
ALTER TABLE `my_information_2`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_6`
--
ALTER TABLE `my_information_6`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_7`
--
ALTER TABLE `my_information_7`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_8`
--
ALTER TABLE `my_information_8`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `my_information_9`
--
ALTER TABLE `my_information_9`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_10`
--
ALTER TABLE `my_information_10`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_11`
--
ALTER TABLE `my_information_11`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_12`
--
ALTER TABLE `my_information_12`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `my_information_13`
--
ALTER TABLE `my_information_13`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_14`
--
ALTER TABLE `my_information_14`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_15`
--
ALTER TABLE `my_information_15`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_16`
--
ALTER TABLE `my_information_16`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_18`
--
ALTER TABLE `my_information_18`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_19`
--
ALTER TABLE `my_information_19`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_20`
--
ALTER TABLE `my_information_20`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_21`
--
ALTER TABLE `my_information_21`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_22`
--
ALTER TABLE `my_information_22`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_23`
--
ALTER TABLE `my_information_23`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `my_information_24`
--
ALTER TABLE `my_information_24`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_25`
--
ALTER TABLE `my_information_25`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_26`
--
ALTER TABLE `my_information_26`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_27`
--
ALTER TABLE `my_information_27`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_information_28`
--
ALTER TABLE `my_information_28`
  MODIFY `iid` mediumint(7) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_info_img`
--
ALTER TABLE `my_info_img`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `my_info_report`
--
ALTER TABLE `my_info_report`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_info_typemodels`
--
ALTER TABLE `my_info_typemodels`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- 使用表AUTO_INCREMENT `my_info_typeoptions`
--
ALTER TABLE `my_info_typeoptions`
  MODIFY `optionid` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- 使用表AUTO_INCREMENT `my_insidelink`
--
ALTER TABLE `my_insidelink`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_jswizard`
--
ALTER TABLE `my_jswizard`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_lifebox`
--
ALTER TABLE `my_lifebox`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_mail_sendlist`
--
ALTER TABLE `my_mail_sendlist`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_mail_template`
--
ALTER TABLE `my_mail_template`
  MODIFY `template_id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `my_member`
--
ALTER TABLE `my_member`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `my_member_album`
--
ALTER TABLE `my_member_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_member_category`
--
ALTER TABLE `my_member_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_member_comment`
--
ALTER TABLE `my_member_comment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_member_docu`
--
ALTER TABLE `my_member_docu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_member_docutype`
--
ALTER TABLE `my_member_docutype`
  MODIFY `typeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `my_member_level`
--
ALTER TABLE `my_member_level`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `my_member_pm`
--
ALTER TABLE `my_member_pm`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `my_member_record_login`
--
ALTER TABLE `my_member_record_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `my_member_record_use`
--
ALTER TABLE `my_member_record_use`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_member_tpl`
--
ALTER TABLE `my_member_tpl`
  MODIFY `id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `my_member_wx`
--
ALTER TABLE `my_member_wx`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_mobile_gg`
--
ALTER TABLE `my_mobile_gg`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `my_mobile_nav`
--
ALTER TABLE `my_mobile_nav`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- 使用表AUTO_INCREMENT `my_navurl`
--
ALTER TABLE `my_navurl`
  MODIFY `id` mediumint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- 使用表AUTO_INCREMENT `my_news`
--
ALTER TABLE `my_news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_payapi`
--
ALTER TABLE `my_payapi`
  MODIFY `payid` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `my_payrecord`
--
ALTER TABLE `my_payrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `my_plugin`
--
ALTER TABLE `my_plugin`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `my_province`
--
ALTER TABLE `my_province`
  MODIFY `provinceid` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_shoucang`
--
ALTER TABLE `my_shoucang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_sms_sendlist`
--
ALTER TABLE `my_sms_sendlist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_street`
--
ALTER TABLE `my_street`
  MODIFY `streetid` mediumint(6) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_telephone`
--
ALTER TABLE `my_telephone`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `my_upload`
--
ALTER TABLE `my_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
