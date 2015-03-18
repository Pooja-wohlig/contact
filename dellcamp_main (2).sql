-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2015 at 11:21 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dellcamp_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesslevel`
--

CREATE TABLE IF NOT EXISTS `accesslevel` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accesslevel`
--

INSERT INTO `accesslevel` (`id`, `name`) VALUES
(1, 'Administrator'),
(2, 'Campassador');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE IF NOT EXISTS `college` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id`, `name`, `address`) VALUES
(1, 'ibsar', 'karjat'),
(2, 'somaiiya', 'vidyavihar'),
(4, 'KGKC', 'KArjat'),
(5, 'Christ College', ''),
(6, 'RV College of engineering', ''),
(7, 'BMS College of Engineering', ''),
(8, 'Acharya Institute', ''),
(9, 'CBIT(Chaitanya Bharati Institute of Technology)', ''),
(10, 'VJIT Vignan Jyothi Institue of Technology)', ''),
(11, 'JBIT', ''),
(12, 'Aurora Engineering College', ''),
(13, 'BITS ,PILANI', ''),
(14, 'St Agnes College', ''),
(15, 'Natinal Institute of technolgy ,Surathkal', ''),
(16, 'NMAM Institute of Technology', ''),
(17, 'St Joseph Engineering College', ''),
(18, 'Nehru Institute of Technology', ''),
(19, 'IIT, karagpur', ''),
(20, 'Jadavpur University', ''),
(21, 'IEM (Institute of Engineering and Management )', ''),
(22, 'Presidency Collge', ''),
(23, 'RUIA College', ''),
(24, 'IIT Mumbai', ''),
(25, 'Maharashtra Institue of Pune (MIT)', ''),
(26, 'Sihagadh University', ''),
(27, 'KBTCOE College of Engineering', ''),
(28, 'Amity University', ''),
(29, 'Birla Institute of Technology,Mesra-Jaipur.', ''),
(30, 'L D engineering college', ''),
(31, 'H L BCA MCA', ''),
(32, 'CEPT', ''),
(33, 'DAV Institute of Engineering & Technology', ''),
(34, 'Amity University, Lucknow Campus', ''),
(35, 'IIT Kanpur - He will attend in Delhi', ''),
(36, 'Mount Carmel', ''),
(37, 'RVS College of Arts & Science', ''),
(38, 'KIIT', ''),
(39, 'SP College', ''),
(40, 'Stephens- Delhi', ''),
(41, 'Venkateshwara Delhi', ''),
(42, 'LSR Delhi', ''),
(43, 'Miranda ', ''),
(44, 'KMC Delhi', ''),
(45, 'Hansraj ', ''),
(46, 'NIIT Nagpur', ''),
(47, 'Army Institute of Technology', ''),
(48, 'Jain University', ''),
(49, 'KJ Somiya', ''),
(50, 'Manipal Institute of Technology– Mangalore', ''),
(51, 'Park Institutions', ''),
(52, 'KMC college', ''),
(54, 'NSIT', ''),
(55, 'PESIT College', ''),
(56, 'GLS College', '');

-- --------------------------------------------------------

--
-- Table structure for table `logintype`
--

CREATE TABLE IF NOT EXISTS `logintype` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintype`
--

INSERT INTO `logintype` (`id`, `name`) VALUES
(1, 'Facebook'),
(2, 'Twitter'),
(3, 'Email'),
(4, 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `linktype` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `keyword`, `url`, `linktype`, `parent`, `isactive`, `order`, `icon`) VALUES
(1, 'Admin', '', '', 'site/viewusers', 1, 0, 1, 1, 'fa fa-user'),
(4, 'Home Page', '', '', 'site/index', 1, 0, 1, 0, 'fa fa-home'),
(5, 'College', '', '', 'site/viewcollege', 1, 0, 1, 2, 'fa fa-graduation-cap'),
(6, 'Post Details', '', '', 'site/viewpost', 1, 0, 1, 3, 'fa fa-list-alt'),
(7, 'Leaderboard', '', '', 'site/viewleaderboard', 1, 0, 1, 7, 'fa fa-trophy'),
(8, 'My Profile', '', '', 'site/viewnormaluserprofile', 1, 0, 1, 4, 'fa fa-user'),
(9, 'Post', '', '', '', 1, 0, 1, 5, 'fa fa-list-alt'),
(10, 'Facebook', '', '', 'site/viewfacebookpost', 1, 9, 1, 6, 'fa fa-facebook'),
(11, 'Twitter', '', '', 'site/viewtwitterpost', 1, 9, 1, 7, 'fa fa-twitter'),
(12, 'Home Page', '', '', 'site/index', 1, 0, 1, 0, 'fa fa-home'),
(13, 'Create Posts', '', '', 'site/viewsuggestion', 1, 0, 1, 8, 'fa fa-lightbulb-o'),
(14, 'Suggested Post', '', '', 'site/viewadminsuggestion', 1, 0, 1, 8, 'fa fa-lightbulb-o'),
(15, 'Campassador List', '', '', 'site/viewnormalusers', 1, 0, 1, 2, 'fa fa-graduation-cap');

-- --------------------------------------------------------

--
-- Table structure for table `menuaccess`
--

CREATE TABLE IF NOT EXISTS `menuaccess` (
  `menu` int(11) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menuaccess`
--

INSERT INTO `menuaccess` (`menu`, `access`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(6, 1),
(7, 1),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 1),
(15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`id` int(11) NOT NULL,
  `text` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `posttype` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `text`, `image`, `posttype`, `timestamp`, `link`) VALUES
(7, 'Transform from a laptop to a tablet with one simple 360° flip on the affordable Inspiron 11 3000 series 2-in-1 laptop. Starting at Rs.33,990.', 'Redwood3.png', 1, '2015-01-20 10:14:00', 'http://bit.ly/Inspiron2-in-1'),
(8, 'Let''s enlighten ourselves with some wise words by a tech visionary who achieved his dream.', 'Brand-Engagement.png', 1, '2015-01-20 10:14:55', ''),
(9, 'Experience real time redemption on My Dell Rewards. Get your coupon code as soon as you redeem your reward points. Know more:', 'App-Promo3.png', 1, '2015-01-20 10:16:17', 'http://bit.ly/myDellrewards'),
(10, 'Experience exceptional battery life on the Inspiron 14 5000 series laptop. Buy now and get 2 years extended warranty at Rs.1299.', 'Maple.png', 1, '2015-01-20 10:17:23', 'http://dell.to/1vCkSKi'),
(11, 'Stay connected this holiday wherever you are. Experience unmatched connectivity on the Venue 7 tablet with 3G & active voice calling. Know more:', 'Gen241.png', 1, '2015-01-20 10:18:22', 'http://bit.ly/Venue7'),
(12, 'Transform from a laptop to a tablet with one simple 360° flip on the Inspiron 11 3000 series. http://bit.ly/Inspiron2-in-1', '', 2, '2015-01-22 10:55:21', ''),
(13, 'Experience real time redemption. Get your coupon code as soon as you redeem your reward points. Know more: http://bit.ly/myDellrewards', '', 2, '2015-01-22 10:55:55', ''),
(14, 'Experience exceptional battery life on the Inspiron 14 5000 series laptop. http://dell.to/1vCkSKi', '', 2, '2015-01-22 10:56:26', ''),
(15, 'Experience unmatched connectivity on the Venue 7 tablet with 3G & active voice calling. Know more:  http://bit.ly/Venue7', '', 2, '2015-01-22 10:57:01', ''),
(16, 'Work or play, switch modes just like your Inspiron 13 7000 series 2-in-1 laptop. http://bit.ly/Inspiron137000series', '', 2, '2015-01-27 12:23:39', 'http://bit.ly/Inspiron137000series'),
(17, 'Locate your nearest Dell store and walk in to have a first look at your next purchase. http://bit.ly/DESLocations ', '', 2, '2015-01-27 12:24:05', ''),
(18, 'With My Dell Rewards on your mobile you can earnand redeem reward points on the go. http://bit.ly/myDellrewards ', '', 2, '2015-01-27 12:24:28', ''),
(19, 'Enjoy the performance of a laptop & tablet on Inspiron 13 7000 w/ @IntelIndia Core™ processor. http://bit.ly/Inspiron137000series', '', 2, '2015-01-27 12:25:04', ''),
(20, 'Opt for cash on delivery when your shop from @Compuindia Shop here: http://bit.ly/compuindia', '', 2, '2015-01-27 12:25:32', ''),
(21, 'Stay in touch with loved ones with 3G & active voice calling on the Dell Venue 7 tablets. http://bit.ly/Venue7', '', 2, '2015-01-27 12:26:16', ''),
(22, 'Work or play, switch modes just like your Inspiron 13 7000 series 2-in-1 laptop. Get extended warranty at Rs.1299.00 on your purchase.', 'Cottonwood.png', 1, '2015-01-27 12:41:31', 'http://bit.ly/Inspiron137000series'),
(23, 'Witness your favourite Dell products performance yourself. Locate your nearest Dell store and walk in to have a first look at your next purchase. ', 'DES.png', 1, '2015-01-27 12:42:30', 'http://bit.ly/DESLocations'),
(24, 'With My Dell Rewards on your mobile you can earn reward points on the go and get 10% off on Dell products. Experience it now:', 'App-Promo31.png', 1, '2015-01-27 12:43:45', 'http://bit.ly/myDellrewards'),
(25, 'Experience the combined performance of a laptop and tablet on Inspiron 13 7000 series 2-in-1 laptop with 4th Gen Intel® Core™ processor. Know more:', 'Cotton.png', 1, '2015-01-27 12:45:12', 'http://bit.ly/Inspiron137000series'),
(26, 'Shop for your favourite Dell products and pay for them at your doorstep. Opt for cash on delivery when your shop   from Compuindia.com', 'Compuindia.png', 1, '2015-01-27 12:47:05', 'http://bit.ly/compuindia'),
(27, 'Stay in touch with your friends & family with 3G & active voice calling on the Dell Venue 7 tablets. Know more:', 'Gen22.png', 1, '2015-01-27 12:48:40', 'http://bit.ly/Venue7'),
(28, 'Explore more just like @martin_katler did with his Inspiron 15 7000 series laptop. Thanks for the great click @martin_katler.', 'Hadley.png', 1, '2015-02-02 13:39:57', ''),
(29, 'Redeem your reward points wherever you are. My Dell Rewards can now be accessed from your phone or tablet.', 'App-Promo1.png', 1, '2015-02-02 13:40:59', 'http://bit.ly/myDellrewards'),
(30, 'Give your family the ultimate visual experience with 19.5" full HD display on Inspiron 20 3000 series all-in-one desktop.', 'Foxglove.png', 1, '2015-02-02 13:41:47', ''),
(31, 'Shorten the distance between you and your dear ones. Stay connected on Venue 7 tablets with 3G and voice calling.', 'Gen-2-Tablet1.png', 1, '2015-02-02 13:42:30', ''),
(32, 'Which one would you rather lose? Let us know in the comments.', 'Dell_GC_FB_012315.jpg', 1, '2015-02-02 13:43:01', ''),
(33, 'Meet the point where passion meets performance with 4th Generation Intel® Core™ i7 processors on Alienware 17 gaming laptops. Buy now and get Alienware TactX headset free on your purchase.', 'Alienware.png', 1, '2015-02-02 13:43:34', ''),
(34, 'Savour razor sharp detail in your games and multimedia on Dell S series monitors. Redeem your My Dell Reward points and get 10% off on monitors.', 'MDR-Redemption.png', 1, '2015-02-02 13:45:30', 'http://bit.ly/myDellrewards'),
(35, 'Carry your world wherever life takes you with the less than 9mm thick Venue 8 tablets.', 'Gen-2-Tablet2.png', 1, '2015-02-02 13:46:13', ''),
(36, 'Locate your nearest Dell exclusive store and witness the performance of your favourite Dell products. Find your Dell store:', 'DES1.png', 1, '2015-02-02 13:46:44', ''),
(37, 'Wander longer with exceptional battery life on Inspiron 14 3000 series laptop. Buy now and get extended 2 year warranty at Rs.1299.00', 'Cedar.png', 1, '2015-02-02 13:47:08', ''),
(38, 'Protect your Dell tablets with genuine Dell folio cases. Redeem your My Dell Reward points and get 10% off on a range of Dell accessories.', 'MDR-Redemption2.png', 1, '2015-02-02 13:47:41', ''),
(39, 'Enhance your productivity with Vostro 15 3000 series business laptops featuring a 10- key numeric keypad for faster input of data.', 'Vostro.png', 1, '2015-02-02 13:48:11', ''),
(40, 'Get your redemption vouchers as soon as you redeem your reward points. Experience real time redemption on My Dell Rewards.', 'App-Promo2.png', 1, '2015-02-02 13:49:02', 'http://bit.ly/myDellrewards'),
(41, 'Home is where Wifi connects automatically. Comment if you agree and earn My Dell reward points.', 'MDR-Engagement3b.png', 1, '2015-02-02 13:49:47', 'http://bit.ly/myDellrewards'),
(42, 'Juggle through your daily tasks seamlessly with Intel® Atom™ processors on Venue 7 tablets.', 'Gen-2-Tablet3.png', 1, '2015-02-02 13:50:40', ''),
(43, 'Redeem your reward points wherever you are. My Dell Rewards can now be accessed from your phone or tablet. \nhttp://bit.ly/myDellrewards', '', 2, '2015-02-02 13:51:39', ''),
(44, 'Give your family the ultimate visual experience with 19.5" full HD display on Inspiron 20 3000 series all-in-one desktop.', '', 2, '2015-02-02 13:52:01', ''),
(45, 'Shorten the distance between you and your dear ones. Stay connected on Venue 7 tablets with 3G and voice calling.', '', 2, '2015-02-02 13:52:27', ''),
(46, 'Wander longer with exceptional battery life on Inspiron 14 3000 series laptop. Buy now and get extended 2 year warranty at Rs.1299.00', '', 2, '2015-02-02 13:54:11', ''),
(47, 'Protect your Dell tablets with genuine Dell folio cases. Redeem your My Dell Reward points and get 10% off on a range of Dell accessories.', '', 2, '2015-02-02 13:54:29', ''),
(48, 'Enhance your productivity with Vostro 15 3000 series business laptops featuring a 10- key numeric keypad for faster input of data.', '', 2, '2015-02-02 13:54:46', ''),
(49, 'Get your redemption vouchers as soon as you redeem your reward points. Experience real time redemption on My Dell Rewards.', '', 2, '2015-02-02 13:55:05', ''),
(50, 'Juggle through your daily tasks seamlessly with Intel® Atom™ processors on Venue 7 tablets.', '', 2, '2015-02-02 13:55:28', ''),
(51, 'Check-in at your nearest Dell exclusive store and experience your favourite Dell products. Locate your nearest store here:', 'DES2.png', 1, '2015-02-09 12:33:16', ''),
(52, 'Would you like to go back in time?', 'Brand-Engagement3.png', 1, '2015-02-09 12:34:28', ''),
(53, 'Everything you need in one space saving design. Have convenience within your reach with one-cord setup on Inspiron 20 3000 series all-in-one desktops.', 'Foxglove1.png', 1, '2015-02-09 12:35:01', ''),
(54, 'Cnet.com rates the Inspiron 11 3000 series 2-in-1 laptop a solid 3.8 out 5 for its overall performance. Know more here:', 'Redwood4.png', 1, '2015-02-09 12:35:24', ''),
(55, 'Redeem your reward points on your favourite Dell products when you are on the run. Have you accessed My Dell Rewards from your phone or tablet yet?', 'App-Promo11.png', 1, '2015-02-09 12:36:24', 'http://bit.ly/myDellrewards'),
(56, '#Didyouknow, with a number of applications you can use your tablet as a TV remote. Next time you cannot find your remote use your tablet or phone.', 'Brand-Engagement1.png', 1, '2015-02-09 12:47:45', 'https://play.google.com/store/apps/details?id=com.sydneyapps.remotecontrol&hl=en  http://mashable.com/2012/11/28/apps-control-tv/'),
(57, 'Carry your favourite multimedia with you when you are travelling. Get out and stay entertained on the less than 9mm thick Venue 8 tablets.', 'Gen-2-Tablet11.png', 1, '2015-02-09 12:37:21', ''),
(58, 'Carry all your important data wherever you go on a range of genuine Dell storage devices. Redeem your reward points and get 10% off on a range of accessories.', 'MDR-Redemption1.png', 1, '2015-02-09 12:38:53', 'http://bit.ly/myDellrewards'),
(59, 'Access your favourite multimedia & content all in one place. Enjoy more with built in DVD player on Inspiron 15 3000 series laptops.', 'Cedar1.png', 1, '2015-02-09 12:39:21', ''),
(60, 'Show off your vacation pictures using your Venue tablet as a photo frame. Comment below and tell us what would you love to do with the Dell Venue tablet .', 'Gen-2-Tablet21.png', 1, '2015-02-09 12:39:53', ''),
(61, 'Pulling an all nighter? Work without stressing your eyes with the 14" anti-glare screen on Vostro 14 3000 series business laptops.', 'Vostro1.png', 1, '2015-02-09 12:40:48', ''),
(62, 'Your texting style says a lot about you. What kind of texter are you? Comment below and earn My Dell Reward points.', 'MDR-Engagement.png', 1, '2015-02-09 12:41:32', 'http://bit.ly/myDellrewards'),
(63, 'Don''t wait for your vouchers after redeeming your reward points. Experience real time redemption on My Dell Rewards.', 'App-Promo21.png', 1, '2015-02-09 12:42:08', 'http://bit.ly/myDellrewards'),
(64, 'Why choose? Ultimate gaming anywhere is now a reality. Introducing the New Alienware 13- ultimate gaming anywhere, without sacrifice.', 'Alienware1.png', 1, '2015-02-09 12:43:38', 'http://lt.dell.com/lt/lt.aspx?CID=72159&LID=5455895&DGC=SM&DGSeg=DHS&RED=301&DURL=http://www.dell.com/in/p/alienware-'),
(65, 'Work or play do it hassle free with Dell wireless keyboards and mice. Redeem your reward points and get 10% off on a range of Dell accessories.', 'MDR-Redemption21.png', 1, '2015-02-09 12:44:17', ''),
(66, 'No matter what your needs are, we have a tablet for you. Browse through our range of Dell Venue tablets and find your match.', 'Gen-2-Tablet31.png', 1, '2015-02-09 12:45:18', ''),
(67, 'Time to hang your cape, weekend''s here. Comment if you agree and earn My Dell Reward points.', 'MDR-Engagement3.png', 1, '2015-02-09 12:46:56', 'http://bit.ly/myDellrewards'),
(69, 'Check-in at your nearest Dell exclusive store and experience your favourite Dell products. http://bit.ly/DESLocations ', '', 2, '2015-02-10 04:57:20', ''),
(70, 'Have convenience within your reach with one-cord setup on Inspiron 20 3000 series. http://bit.ly/Inspiron20_3000Series …', '', 2, '2015-02-10 04:58:15', ''),
(71, 'http://Cnet.com  rates the Inspiron 11 3000 series 3.8/5 for its overall performance. http://bit.ly/Inspiron2-in-1 ', '', 2, '2015-02-10 04:58:48', ''),
(72, 'Redeem your reward points on your favourite Dell products from your phone or tablet. http://bit.ly/myDellrewards ', '', 2, '2015-02-10 04:59:08', ''),
(73, '#Didyouknow, with a number of applications you can use your tablet as a TV remote.', '', 2, '2015-02-10 04:59:32', ''),
(74, 'Carry your favourite multimedia anywhere on the less than 9mm thick #Venue 8 tablets. http://bit.ly/DellVenue8tablet …', '', 2, '2015-02-10 04:59:59', ''),
(75, 'Carry all your important data wherever you go on a range of genuine Dell storage devices. http://bit.ly/MDRredeem ', '', 2, '2015-02-10 05:00:23', ''),
(76, 'Access your favourite multimedia with built in DVD player on Inspiron 15 3000 series laptop. http://dell.to/YUiohL ', '', 2, '2015-02-10 05:00:55', ''),
(77, 'Show off your vacation pictures using the #Venue tablet as a frame. http://bit.ly/DellVenue8tablet …', '', 2, '2015-02-10 05:01:15', ''),
(78, '#DidYouKnow Google Chrome has an in-built game you can play when you can''t connect to the internet? Go on and try it.', '', 2, '2015-02-10 05:01:41', ''),
(79, 'Work stress free with the 14" anti-glare screen on Vostro 14 3000 series business laptops. http://bit.ly/Vostro143000series', '', 2, '2015-02-10 05:02:04', ''),
(80, 'Your texting style says a lot about you. What kind of texter are you? http://bit.ly/myDellrewards ', '', 2, '2015-02-10 05:02:33', ''),
(81, 'Experience real time redemption on My Dell Rewards. Redeem your reward points instantly. http://bit.ly/myDellrewards', '', 2, '2015-02-10 05:03:26', ''),
(82, 'Work or play do it hassle free with Dell wireless keyboards and mice. http://bit.ly/MDRredeem ', '', 2, '2015-02-10 05:03:51', ''),
(83, 'Explore more w/ the sleek & lightweight Inspiron 14 5000 series- Your perfect travel companion http://dell.to/1vCkSKi ', '', 2, '2015-02-10 05:04:16', ''),
(84, 'Whatever your needs, we have a tablet for you. Browse through our range of Venue tablets. http://bit.ly/Venue7 ', '', 2, '2015-02-10 05:04:51', ''),
(85, 'Time to hang your cape, weekend''s here. http://bit.ly/myDellrewards ', '', 2, '2015-02-10 05:05:13', ''),
(86, 'Desktops have evolved a lot over the years. Upgrade to an Inspiron 20 3000 series all-in-one desktop with one cord setup which takes half the space of your desk than your former desktop.', 'Foxglove2.png', 1, '2015-02-17 06:15:14', ''),
(87, 'Upgrade to Inspiron 20 3000 series AIO desktop w/ one cord setup for a clutter free work space http://bit.ly/Inspiron20_3000Series', '', 2, '2015-02-17 06:15:48', ''),
(88, 'Take your music with you wherever you go. Redeem your My Dell Reward points and get this Dell wireless speaker at Rs.3861.00.', 'MDR-Redemption3.png', 1, '2015-02-17 06:17:04', 'http://bit.ly/myDellrewards'),
(89, 'Redeem your My Dell Reward points and get this Dell wireless speaker at Rs.3861.00. http://bit.ly/MDRredeem', '', 2, '2015-02-17 06:17:26', ''),
(90, '"Perfectly suited for streaming and viewing multimedia, as it sports a nice full HD display". Pcmag.com rated Venue 8 a solid 3.5 out of 5 for its overall performance.', 'Gen-2-Tablet22.png', 1, '2015-02-17 06:39:01', 'http://bit.ly/DellVenue8tablet'),
(91, '"Perfectly suited for streaming and viewing multimedia." @PCMag rated Venue 8 a solid 3.5/5. http://bit.ly/DellVenue8tablet', '', 2, '2015-02-17 06:18:20', ''),
(92, 'Engineered for advanced gaming anywhere. Pair the new Alienware 13 with Intel® Core™ i5 processor for an immersive gaming experience.', 'Alienware2.png', 1, '2015-02-17 06:39:34', 'http://bit.ly/Alienware13'),
(93, 'Pair the new @Alienware ?13 with @IntelIndia  i5 processor for an immersive gaming experience. http://bit.ly/Alienware13', '', 2, '2015-02-17 06:19:37', ''),
(94, 'Choose through a wide range of products when you redeem your My Dell Reward points. Experience real time redemption on My Dell Rewards.', 'App-Promo22.png', 1, '2015-02-17 06:20:22', 'http://bit.ly/myDellrewards'),
(95, 'Choose through a wide range of products when you redeem your My Dell Reward points. http://bit.ly/myDellrewards', '', 2, '2015-02-17 06:20:42', ''),
(96, 'Here are some words of wisdom from Michael Dell himself to brighten up your day.', 'Brand-Engagement4.png', 1, '2015-02-17 06:21:52', ''),
(97, 'A pen is always mightier than a sword. Doodle all you want just like @gkscomp with built-in stylus on Inspiron 13 7000 series 2-in-1 laptop. Thanks for the great click.', 'Cottonwood1.png', 1, '2015-02-17 06:40:18', 'http://bit.ly/Inspiron137000'),
(98, 'Doodle all you want just like @gkscomp with built-in stylus on Inspiron 13 7000 series laptop. http://bit.ly/Inspiron137000', '', 2, '2015-02-17 06:23:09', ''),
(99, 'Explore your artistic side. Browse for your favourite content on Venue 7 tablets with 3G for a seamless browsing experience.', 'Gen-2-Tablet12.png', 1, '2015-02-17 06:40:52', 'http://bit.ly/Venue7'),
(100, 'Browse for your favourite content on Venue 7 tablets w/ 3G for a seamless browsing experience. http://bit.ly/Venue7', '', 2, '2015-02-17 06:24:13', ''),
(101, 'Keep your laptop and other accessories safe with genuine Dell backpacks. Redeem your My Dell Reward points and get 10% off on a range of Dell accessories.', 'MDR-Redemption22.png', 1, '2015-02-17 06:25:03', 'http://bit.ly/myDellrewards'),
(102, 'Keep your laptop  safe with genuine Dell backpacks. Get upto 10% off with My Dell Rewards.  http://bit.ly/MDRredeem', '', 2, '2015-02-17 06:25:33', ''),
(103, 'The panic you feel when you see this screen twice. Share with us if this has ever happened with you.', 'Brand-Engagement2.png', 1, '2015-02-17 06:26:59', ''),
(104, 'Juggle through your daily tasks with ease. Experience unmatched performance on Vostro 15 3000 series business laptop with 4th Generation Intel India C.ore™ i5 processors.', 'Vostro2.png', 1, '2015-02-17 06:41:25', '. http://dell.to/1tWdtJt'),
(105, 'Experience unmatched performance on Vostro 15 3000 series laptop w/ @IntelIndia i5 processors. http://dell.to/1tWdtJt', '', 2, '2015-02-17 06:27:55', ''),
(106, 'Locate a Dell Exclusive Store and find the product that''s just right for you. Check into your nearest Dell store here:', 'DES3.png', 1, '2015-02-17 06:30:00', 'http://bit.ly/DESLocations'),
(107, 'Locate a Dell Exclusive Store and find the product that''s just right for you. http://bit.ly/DESLocations', '', 2, '2015-02-17 06:30:16', ''),
(108, 'Redeem your reward points and shop for your favourite Dell products wherever you are. My Dell Rewards can now be accessed from your phone or tablet. Try it now:', 'App-Promo12.png', 1, '2015-02-17 06:30:56', 'http://bit.ly/myDellrewards'),
(109, 'Redeem your My Dell Reward points wherever you are, from your phone or tablet. http://bit.ly/myDellrewards', '', 2, '2015-02-17 06:31:17', ''),
(110, 'Having a fair balance is important. Tell us your favourite feature that makes an Inspiron 13 7000 series 2-in-1 laptop the perfect pick for both work and play.', 'Redwood21.png', 1, '2015-02-17 06:32:45', 'http://bit.ly/Inspiron137000series …'),
(111, 'Inspiron 13 7000 series 2-in-1 laptop the perfect pick for both work and play. http://bit.ly/Inspiron137000series …', '', 2, '2015-02-17 06:33:11', ''),
(112, 'Stay productive wherever you are. Carry your work easy with the less than 9mm thick Venue 8 tablets.', 'Gen-2-Tablet32.png', 1, '2015-02-17 06:35:05', 'http://bit.ly/DellVenue8tablet …'),
(113, 'Stay productive & carry your work easily with the less than 9mm thick #Venue 8 tablet.  http://bit.ly/DellVenue8tablet …', '', 2, '2015-02-17 06:35:26', ''),
(114, 'Time flies when you are having fun. Catch up on the movies you missed with 15.6" full HD display on Inspiron 15 5000 series laptop.', 'Maple_(1).png', 1, '2015-02-17 06:36:35', 'http://bit.ly/Inspiron5000'),
(115, 'Catch up on the movies you missed w/ 15.6" full HD display on Inspiron 15 5000 series laptop. http://bit.ly/Inspiron5000', '', 2, '2015-02-17 06:36:52', ''),
(116, 'How many of them do you use?', 'Brand-Engagement2_(1).png', 1, '2015-02-17 06:37:16', ''),
(117, 'Experience powerful performance wherever you are. Explore new horizons with an Inspiron 14 3000 series laptop with a lightweight form factor.', 'Cedar2.png', 1, '2015-02-17 06:37:52', 'http://dell.to/1vZTOZF'),
(118, 'Explore new horizons with an Inspiron 14 3000 series laptop with a lightweight form factor. http://dell.to/1vZTOZF', '', 2, '2015-02-17 06:38:13', ''),
(119, 'Make phone calls, browse the web and stay connected from our most affordable new Venue 7 tablet. Starting at Rs.10,999.', 'Gen-2-Tablet4.png', 1, '2015-02-24 04:55:46', 'http://dell.to/1zAktcR '),
(120, 'Make calls, browse the web & stay connected w/ the new Venue 7 tablet. Starting @ Rs.9,999.00 http://dell.to/1zAktcR ', '', 2, '2015-02-24 04:56:11', ''),
(121, 'Tilt your screen to 120° to enjoy your favourite movies with your choice of viewing angle on Inspiron 20 3000 series all-in-one desktop.', 'Foxglove3.png', 1, '2015-02-24 04:57:29', 'http://bit.ly/Inspiron20_3000Series …'),
(122, 'Tilt your screen to 120° to enjoy your favourite movies on Inspiron 20 3000 series AIO desktop http://bit.ly/Inspiron20_3000Series …', '', 2, '2015-02-24 04:57:51', ''),
(123, 'Stay connected with 3G & active voice calling on Venue 8 tablets. Choose from a range of Venue tablets to find your #PerfectMatch.', 'Gen-2-Tablet13.png', 1, '2015-02-24 04:58:33', 'http://bit.ly/DellVenue8tablet …'),
(124, 'Stay connected w/ 3G & voice calling on Venue 8 tablet. Choose from a range of Venue tablets http://bit.ly/DellVenue8tablet …', '', 2, '2015-02-24 04:58:54', ''),
(125, 'Don''t you hate it when you cannot find your precious belongings? Now you can track them with bluetooth beacons. What would you like to keep a track of? Comment below and earn My Dell Reward points.', 'MDR-Engagement2.png', 1, '2015-02-24 04:59:41', 'http://bit.ly/myDellrewards '),
(126, 'Now track your lost belongings with bluetooth beacons. What would you like to keep a track of? http://bit.ly/myDellrewards ', '', 2, '2015-02-24 05:00:04', ''),
(127, 'Work or play, do it with precision. Work or doodle around with built-in stylus on Inspiron 13 7000 series 2-in-1 laptop. Know more:', 'Cottonwood2.png', 1, '2015-02-24 05:00:53', 'http://bit.ly/Inspiron137000series …'),
(128, 'Work or doodle around with built-in stylus on Inspiron 13 7000 series 2-in-1 laptop. http://bit.ly/Inspiron137000series …', '', 2, '2015-02-24 05:01:13', ''),
(129, 'Carry your books easy just like @paulrock7 did. Stay intrigued wherever you are on the less than 9mm thick Venue 8 tablets. Thanks for the great click.', 'Gen-2-Tablet33.png', 1, '2015-02-24 05:02:04', 'http://bit.ly/DellVenue8tablet …'),
(130, 'Carry your books easily like #paulrock7 on the less than 9mm thick #Venue 8 tablet. http://bit.ly/DellVenue8tablet …', '', 2, '2015-02-24 05:02:23', ''),
(131, 'Plug your laptop to a bigger screen & enjoy your favourite multimedia with full size HDMI output on Inspiron 15 3000 series laptop.', 'Cedar3.png', 1, '2015-02-24 05:02:57', 'http://dell.to/YUiohL '),
(132, 'Plug your laptop to a bigger screen & enjoy multimedia with HDMI output on Inspiron 15 3000. http://dell.to/YUiohL ', '', 2, '2015-02-24 05:03:22', ''),
(133, 'Work carefree wherever you are with textured scratch resistant back on the Vostro 14 3000 series business laptop.', 'Vostro3.png', 1, '2015-02-24 05:04:11', 'http://bit.ly/Vostro143000series …'),
(134, 'Work carefree wherever you are w/ textured scratch resistant back on the Vostro 14 3000 series http://bit.ly/Vostro143000series …', '', 2, '2015-02-24 05:04:28', ''),
(135, 'Here are some games to challenge your friends for a duel over the weekend.', 'Dell_GC_FB_021015.jpg', 1, '2015-02-24 05:05:13', 'http://bit.ly/1i59PE5'),
(136, 'Here are some games to challenge your friends for a duel over the weekend. http://bit.ly/1i59PE5 ', '', 2, '2015-02-24 05:05:33', ''),
(137, 'Enjoy undeterred connectivity when you are on the move on Venue 7 tablets with 3G & active voice calling. Know more:', 'Gen-2-Tablet14.png', 1, '2015-03-03 04:21:16', 'http://bit.ly/Venue7'),
(138, 'Enjoy undeterred connectivity when you are on the move on Venue 7 with 3G & voice calling. http://bit.ly/Venue7', '', 2, '2015-03-03 04:23:05', ''),
(139, 'Reduce clutter on your desk with Dell wireless mice. Redeem your My Dell Reward points and get 10% off on a range of accessories.', 'MDR-Redemption4.png', 1, '2015-03-03 04:24:02', 'http://bit.ly/MDRredeem'),
(140, 'Reduce clutter on your desk with Dell wireless mice. Get 10% off with My Dell Rewards. http://bit.ly/MDRredeem', '', 2, '2015-03-03 04:24:21', ''),
(141, 'Laptop when you need & tablet when you want. Switch between work & play just like @nadiabitar does on an Inspiron 13 7000 series #2in1 laptop.', '', 1, '2015-03-03 04:24:57', 'http://bit.ly/Inspiron137000series'),
(142, 'Laptop when you need & tablet when you want. Switch between work & play just like @nadiabitar does on an Inspiron 13 7000 series #2in1 laptop.', 'Cottonwood3.png', 1, '2015-03-03 04:25:00', 'http://bit.ly/Inspiron137000series'),
(143, 'Switch between work & play like @nadia_bitar does on an Inspiron 13 7000 series #2in1 laptop. http://bit.ly/Inspiron137000series …', '', 2, '2015-03-03 04:25:16', ''),
(144, 'Earning reward points is easy! Learn more - APP link', 'App-Promo23.png', 1, '2015-03-03 04:25:49', 'http://bit.ly/myDellrewards'),
(145, 'Earning reward points is easy! Learn more: http://bit.ly/myDellrewards', '', 2, '2015-03-03 04:26:01', ''),
(146, 'Give your children an interactive learning experience on the 19.5" HD display with Inspiron 20 3000 series all-in-one desktop.', 'Foxglove4.png', 1, '2015-03-03 04:26:38', 'http://bit.ly/Inspiron20_3000Series'),
(147, 'Lasers are used from digital devices to healthcare departments but do you know what it stands for? Comment below and earn My Dell Reward points.', 'MDR-Engagement1.png', 1, '2015-03-03 04:27:23', 'http://bit.ly/myDellrewards'),
(148, 'Lasers are used from digital devices to healthcare department, do you know what it stands for? http://bit.ly/myDellrewards', '', 2, '2015-03-03 04:27:37', ''),
(149, 'Experience uncompromising performance on Alienware 17 series gaming laptops with NVIDIA® GeForce® GTX 780M graphics. Start gaming', 'Alienware3.png', 1, '2015-03-03 04:28:09', 'http://bit.ly/Alienwarelaptops'),
(150, 'Inspiron 15 5000 series is a box full of surprises. Great review by PCWorld.idg.com.', 'Maple1.png', 1, '2015-03-03 04:28:35', 'http://bit.ly/Inspiron5000'),
(151, 'Inspiron 15 5000 series is a box full of surprises. Great review by @pcworld http://bit.ly/Inspiron5000', '', 2, '2015-03-03 04:28:44', ''),
(152, 'Time is relative when it comes to the internet? Don''t you agree?', 'Brand-Engagement21.png', 1, '2015-03-03 04:29:12', ''),
(153, 'Check email, browse the web and connect with friends wherever you are on the new Dell Venue 7 with 3G & active voice calling.', 'Lakewood.png', 1, '2015-03-03 04:29:46', 'http://dell.to/1zAktcR'),
(155, 'Ensure your tablet is accompanied by only the best accessories. Redeem your My Dell Reward points and get 10% off', 'MDR-Redemption23.png', 1, '2015-03-03 04:30:32', 'http://bit.ly/MDRredeem'),
(156, 'Ensure your tablet is accompanied with the best accessories. Get 10% off with My Dell Rewards http://bit.ly/MDRredeem', '', 2, '2015-03-03 04:30:42', ''),
(157, 'Stay productive wherever you are on the lightweight Inspiron 14 3000 series laptop weighing just 2.2 kgs', 'Cedar4.png', 1, '2015-03-03 04:31:15', 'http://dell.to/1vZTOZF'),
(158, 'Stay productive wherever you are on the lightweight Inspiron 14 3000 weighing just 2.2 kgs. http://dell.to/1vZTOZF', '', 2, '2015-03-03 04:31:28', ''),
(159, 'Redeem your My Dell Reward points wherever you are and shop for your favourite Dell products. Redeem now', 'App-Promo13.png', 1, '2015-03-03 04:40:33', 'http://bit.ly/myDellrewards'),
(160, 'Redeem your My Dell Reward points wherever you are and shop for your favourite Dell products. http://bit.ly/myDellrewards', '', 2, '2015-03-03 04:40:43', ''),
(161, 'Work stress free and stay productive longer with anti-glare screen on Vostro 15 3000 series business laptops.', 'Vostro4.png', 1, '2015-03-03 04:41:09', '3000 series. http://dell.to/1tWdtJt'),
(162, 'Work stress free and stay productive longer with anti-glare screen on Vostro 15 3000 series. http://dell.to/1tWdtJt ', '', 2, '2015-03-03 04:42:55', ''),
(163, 'Do you spend a lot of time choosing the right outfit everyday? Now there are applications that can do that for you keeping the weather & occasion in mind. Have you used any?', 'Brand-Engagement5.png', 1, '2015-03-03 04:43:18', ''),
(164, 'Now there are apps that can choose the right outfit for you, keeping the weather & occasion in mind.', '', 2, '2015-03-03 04:43:39', ''),
(165, 'Why choose? Have the power of a laptop & portability of a tablet at your fingertips with Inspiron 11 3000 series #2in1 laptop.', 'Redwood5.png', 1, '2015-03-03 04:44:15', 'http://bit.ly/Inspiron2-in-1'),
(166, 'Locating your nearest Dell Exclusive store is easy! Just click here to get all the details.', 'DES4.png', 1, '2015-03-03 04:44:45', 'http://bit.ly/DESLocations'),
(167, 'Locating your nearest Dell Exclusive store is easy! Just click here to get all the details. http://bit.ly/DESLocations', '', 2, '2015-03-03 04:44:52', ''),
(168, 'That sad moment when you log in and this happens. Comment below if you agree and earn My Dell Reward points.', 'MDR-Engagement21.png', 1, '2015-03-03 04:45:31', 'http://bit.ly/myDellrewards '),
(169, 'That sad moment when you log in and this happens. RT if this ever happens with you. http://bit.ly/myDellrewards', '', 2, '2015-03-03 04:45:43', ''),
(170, 'Experience uncompromising performance on @Alienware? 17 w/ NVIDIA® GeForce® GTX 780M graphics. http://bit.ly/Alienwarelaptops ', '', 2, '2015-03-03 04:46:29', '');

-- --------------------------------------------------------

--
-- Table structure for table `posttype`
--

CREATE TABLE IF NOT EXISTS `posttype` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posttype`
--

INSERT INTO `posttype` (`id`, `name`) VALUES
(1, 'Facebook'),
(2, 'Twitter');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'inactive'),
(2, 'Active'),
(3, 'Waiting'),
(4, 'Active Waiting'),
(5, 'Blocked');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE IF NOT EXISTS `suggestion` (
`id` int(11) NOT NULL,
  `text` text NOT NULL,
  `image` text NOT NULL,
  `user` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `suggestionstatus` varchar(255) NOT NULL COMMENT '0-Pending,1-Approved,2-Un approve',
  `adminmessage` text NOT NULL,
  `posttype` int(11) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `text`, `image`, `user`, `timestamp`, `suggestionstatus`, `adminmessage`, `posttype`, `link`) VALUES
(1, 'Details regarding PIC A THON CONTEST.', '', 164, '2015-03-12 10:34:57', 'Publish', 'Good Post', 1, ''),
(2, 'Another Amazing Opportunity for ''The Photographers of the Amity University- Lucknow Campus''\nCaption and Share your pictures of "How technology has impacted you in your daily life"\nChance to win a Dell Venue 7 Tablet grin emoticon\nLast Date for entries : 31st January, 2015\n\nOnly Five days to go !!\nShare your images with caption in the group.', 'Dell_Campassaador_Program_-_Pic_A_Thon_Contest_Details_(1).jpg', 164, '2015-03-12 10:34:57', 'Publish', 'Good Post', 1, 'https://www.facebook.com/groups/983564628339042/'),
(3, '"Try never to be the smartest person in the room. And if you are, I suggest you invite smarter people … or find a different room."\n– Michael Dell', '', 164, '2015-03-12 10:34:57', 'Publish', 'Good Post', 1, ''),
(4, 'Show off time people...', '', 164, '2015-03-12 10:34:57', 'Pending', '', 2, ''),
(5, 'Dell XPS 13 given 4 out of 5 stars by CNET!!\n?????\nhttp://www.cnet.com/products/dell-xps-13-2015/', '', 164, '2015-03-12 10:34:57', 'Pending', '', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `accesslevel` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `contact` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `college` int(11) NOT NULL,
  `facebookid` varchar(255) NOT NULL,
  `twitterid` varchar(255) NOT NULL,
  `instagramid` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `rank` double NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `accesslevel`, `timestamp`, `status`, `contact`, `sex`, `dob`, `college`, `facebookid`, `twitterid`, `instagramid`, `image`, `rank`, `city`) VALUES
(1, 'Master Log-in', 'a63526467438df9566c508027d9cb06b', 'wohlig@wohlig.com', 1, '0000-00-00 00:00:00', 1, '', 'Female', '1980-01-01', 2, '746538842081850', '2766291092', '', '', 0, 'Mumbai'),
(116, 'Anusha Sheryl D''Souza', '3387ef8e8429c0024404cc369714da34', 'anushadsouza95@hotmail.com', 2, '2015-01-15 17:33:26', 2, '9591735291', 'Male', '0000-00-00', 5, '', '', '', '', 17, ''),
(117, 'Gamini Garg', '37f1b7ccd20f1f4d8c7dbff66dac7b7f', 'gamini.rvce@gmail.com', 2, '2015-01-15 17:33:26', 2, '9902727387', '', '0000-00-00', 6, '', '', '', '', 17, ''),
(118, 'Apoorva Shetty', 'ab494a5e462313f98a4c18a67bc6f216', 'apoo1995@yahoo.co.in', 2, '2015-01-15 17:33:26', 2, '7760600390', 'female', '0000-00-00', 7, '10204734549836535', '2256174586', '', 'https://graph.facebook.com/10204734549836535/picture?width=150&height=150', 16, ''),
(120, 'Vamsi Krishna', '7f395c702393d050b5355a4defa210bf', 'vamsikrish95@gmail.com', 2, '2015-01-15 17:33:26', 2, '9177492629', 'male', '0000-00-00', 9, '839857442741397', '2941421341', '', 'https://graph.facebook.com/839857442741397/picture?width=150&height=150', 16, ''),
(121, 'V Raman Teja', '8231f3e7f750f0f26164836abd63112d', 'venigallaramanteja@gmail.com', 2, '2015-01-15 17:33:26', 2, '9032195562', '', '0000-00-00', 10, '', '', '', '', 17, ''),
(122, 'Akhil Koundinya', '9088bbd7a456656bcbef67274a16b86e', 'akhil.cse7@gmail.com', 2, '2015-01-15 17:33:26', 2, '8885853293', 'Male', '1996-06-28', 11, '1620244151531945', '2989815306', '', 'https://graph.facebook.com/1620244151531945/picture?width=150&height=150', 17, 'Hyderabad'),
(123, 'Karan Eppaturi', 'fcb059e30979ab81236a88044d13b037', 'karaneppaturi82@gmail.com', 2, '2015-01-15 17:33:26', 2, '8977377720', 'male', '0000-00-00', 12, '821852074543459', '974010330', '', 'https://graph.facebook.com/821852074543459/picture?width=150&height=150', 17, ''),
(125, 'Pamela Carol', '10eadca108cc482a5164675a9f708aa8', 'Pamela.stagnes@gmail.com', 2, '2015-01-15 17:33:26', 2, '9902475613', 'female', '0000-00-00', 14, '1536663743225287', '2932176980', '', 'https://graph.facebook.com/1536663743225287/picture?width=150&height=150', 17, ''),
(126, 'Almas Parveen', 'bd63a425a1209f5573daf0404c73e0ee', 'almasprvn@gmail.com', 2, '2015-01-15 17:33:26', 2, '9986983825', '', '0000-00-00', 15, '', '', '', '', 17, ''),
(127, 'Faseeha Taj', 'a85e465aa0a3a3469f8e84cc10240f88', 'faseehataj@gmail.com', 2, '2015-01-15 17:33:26', 2, '8904727127', 'Female', '1995-09-09', 16, '10203189310760383', '2990117527', '', 'https://graph.facebook.com/10203189310760383/picture?width=150&height=150', 15, 'mangalore'),
(128, 'Shravan Kanagokar', '49364574f7449ec166ee1a08379927a9', 'shravan.sk95@gmail.com', 2, '2015-01-15 17:33:26', 2, '7411408729', '', '0000-00-00', 17, '', '', '', '', 17, ''),
(129, 'Mr. Anandu Surendran', '7397b63ed6e635338add2c7bab8d6820', 'asurendran971@gmail.com', 2, '2015-01-15 17:33:26', 2, '9496256651', '', '0000-00-00', 18, '', '', '', '', 17, ''),
(130, 'Abhishek Badwe', '65ef73814f990dc19ed0982a326266f2', 'abhishekbadwe.iitkgp@gmail.com', 2, '2015-01-15 17:33:26', 2, '9425402393', '', '0000-00-00', 19, '', '', '', '', 17, ''),
(131, 'Niloy Mukherjee', '2e67820ffab2c6d42a87b7d81407254c', 'niloymukherjee93@gmail.com', 2, '2015-01-15 17:33:26', 2, '9748033408', '', '0000-00-00', 20, '', '', '', '', 17, ''),
(132, 'Shinjan Mitra', '2f5f168d2a03494781ebf8e007835e3a', 'shinjanxp@gmail.com', 2, '2015-01-15 17:33:26', 2, '9477522691', 'male', '0000-00-00', 21, '813605468694726', '', '', 'https://graph.facebook.com/813605468694726/picture?width=150&height=150', 17, ''),
(134, 'Harsh S Shah', '8a91bd03f57c25aa00d79f562406a064', 'passionateharsh@gmail.com', 2, '2015-01-15 17:33:26', 2, '7666222837', '', '0000-00-00', 23, '', '', '', '', 17, ''),
(135, 'Ankur Khanna', '2461abbc91ae3e8df55eda1ef006e598', 'ankur.khanna14@sjmsom.in', 2, '2015-01-15 17:33:26', 2, '9892921463', 'Male', '1987-09-14', 24, '942781765746734', '234293388', '', 'https://graph.facebook.com/942781765746734/picture?width=150&height=150', 17, ''),
(136, 'Shweta Patil', 'c0e4350547103d75257ded71c2e1a64e', 'shwetappatil95@gmail.com', 2, '2015-01-15 17:33:26', 2, '7757882312', '', '0000-00-00', 25, '', '', '', '', 17, ''),
(138, 'Shruti Anantwar', '072f434d23e10010a2d50b5bcd9e2884', 'Shruti.anantwar28@gmail.com', 2, '2015-01-15 17:33:26', 2, '9850494210', 'female', '0000-00-00', 27, '883713848352841', '', '', 'https://graph.facebook.com/883713848352841/picture?width=150&height=150', 17, ''),
(139, 'Abhishek Bhattacharya', '59360fa3a1283c07f88d9d5f90230453', ' abhib@acm.org', 2, '2015-01-15 17:33:26', 2, '8527903420', '', '0000-00-00', 28, '', '', '', '', 17, ''),
(140, 'Abhishek Sharma', 'ec8d8b09b14f9f6a98444062a545a38c', 'abhishek.sharma94@outlook.com', 2, '2015-01-15 17:33:26', 2, '8104380827', 'Male', '1994-01-14', 29, '791014644279509', '267526598', '', 'https://graph.facebook.com/791014644279509/picture?width=150&height=150', 17, 'Jaipur'),
(141, 'Ekta Nandwani', '9f1d419494e84d05596f1867c13fe134', 'mailnandwaniekta@gmail.com', 2, '2015-01-15 17:33:26', 2, '9510750665', 'Female', '0000-00-00', 30, '1593290840894239', '2852048114', 'mailnandwaniekta@gmail.com', 'https://graph.facebook.com/1593290840894239/picture?width=150&height=150', 11, 'Ahmedabad '),
(142, 'Rushang T Shah', '59ed9f9e3ac466ce55ba1660a5bc9d9a', 'rushangshah20@gmail.com', 2, '2015-01-15 17:33:26', 2, '8905207239', '', '0000-00-00', 31, '', '', '', '', 17, ''),
(144, 'Tushti Aggarwal', '10a1aa3ea291ca32c66d67d77530b3b5', 'ashugyl@gmail.com', 2, '2015-01-15 17:33:26', 2, '7696034975', 'Female', '1995-12-23', 33, '790556331018330', '357442752', '', 'https://graph.facebook.com/790556331018330/picture?width=150&height=150', 2, 'jalandhar'),
(145, 'Divya Pandey', '69c71d24db7035d19df6bbbea80aabf7', 'pandey.divya97@gmail.com', 2, '2015-01-15 17:33:26', 2, '7275423345', 'Female', '1996-08-23', 34, '687030644739710', '1572753913', '', 'https://graph.facebook.com/687030644739710/picture?width=150&height=150', 7, 'Lucknow'),
(147, 'Karishma Rajan', 'dabdcbe0f9a7389117e69cc533799117', 'karishma04basketball@gmail.com', 2, '2015-01-15 17:33:26', 2, '9916845377', '', '0000-00-00', 36, '', '', '', '', 17, ''),
(148, 'Sreehari.S', '9b6e2ac4beb92f27d05fdbb1293563d4', 'vsbvahri@gmail.com', 2, '2015-01-15 17:33:26', 2, '8189959359', '', '0000-00-00', 37, '', '', '', '', 17, ''),
(149, 'Kaustubha Panda', '168b0e8f6bc47998be777c8e4428f8a7', 'kaustubhapanda@gmail.com', 2, '2015-01-15 17:33:26', 2, '9777928302', 'male', '0000-00-00', 38, '10205593501735074', '194552474', '', 'https://graph.facebook.com/10205593501735074/picture?width=150&height=150', 17, ''),
(150, 'Husen Ansari', 'f417b74910b023fd9488cb324084e051', ' er.husainjamali@gmail.com', 2, '2015-01-15 17:33:26', 2, '9503352990', '', '0000-00-00', 39, '', '', '', '', 17, ''),
(151, 'Anubhav Gupta', '74f640cbdb5761bb005ddf00faf889e1', 'anubhav_96@live.com', 2, '2015-01-15 17:33:26', 2, '9717736773', '', '0000-00-00', 40, '', '', '', '', 17, ''),
(152, 'Kartiki Datta', '569647e7504961208c497931ef2f45b8', 'kartikidatta@gmail.com', 2, '2015-01-15 17:33:26', 2, '9891359369', 'Female', '1995-08-22', 41, '10205386603171737', '2989821980', '', 'https://graph.facebook.com/10205386603171737/picture?width=150&height=150', 6, ''),
(153, 'Revati Sahijwani', '73dacc4f60113fea3e0b287fcfa2c327', 'revati193@gmail.com', 2, '2015-01-15 17:33:26', 2, '9650043817', '', '0000-00-00', 42, '', '', '', '', 17, ''),
(155, 'Nikhil Ahuja ', 'db60e38d4af45965604ad25780047854', 'ahuja.nikhil09@gmail.com', 2, '2015-01-15 17:33:26', 2, '8130200222', '', '0000-00-00', 44, '', '', '', '', 17, ''),
(156, 'Iresh Gupta', '19b7cc0c6fb1ba07fd10dab4d9af74f3', 'ireshgupta_95@yahoo.com', 2, '2015-01-15 17:33:26', 2, '9654455654', '', '0000-00-00', 45, '', '', '', '', 17, ''),
(157, 'Tulsi Gurung', '05d9eaa011879522bb65bfd7e82ab3ae', 'tulsi_gurung@dell.com', 1, '2015-01-16 04:45:19', NULL, '', 'Female', '0000-00-00', 1, '', '', '', '', 0, ''),
(158, 'Razia Ali', '180ed3bfb391d4c29f263521e184890b', 'razia_ali@dell.com', 1, '2015-01-16 04:49:29', NULL, '', 'Female', '0000-00-00', 1, '', '', '', '', 0, ''),
(159, 'Jitto', 'eaf5745b57fb31dc7d9d1ba3c62dc6ed', 'jitto@gozoop.com', 1, '2015-01-16 04:53:25', NULL, '', 'Male', '0000-00-00', 1, '', '', '', '', 0, ''),
(160, 'Renita Dsilva', 'a92ad82b31aef2a7a032c688fcc66e83', 'renita@gozoop.com', 1, '2015-01-16 08:44:37', NULL, '', 'Male', '0000-00-00', 1, '', '', '', '', 0, ''),
(161, 'General', 'c13d479731b50727e70faaeee8ebcde2', 'general@gozoop.com', 1, '2015-01-16 08:53:10', NULL, '', 'Male', '0000-00-00', 1, '', '', '', '', 0, ''),
(164, 'Chintan Shah', 'a63526467438df9566c508027d9cb06b', 'demo@wohlig.com', 2, '2015-01-17 07:42:48', NULL, '', 'male', '1990-09-07', 1, '921220457889147', '121427044', '', 'https://graph.facebook.com/921220457889147/picture?width=150&height=150', 17, ''),
(168, 'A.G.Bopanna', '7b9d766cb8da340324daa0b454d63b02', 'agbopanna.beec.12@acharya.ac.in', 2, '2015-01-19 11:22:03', NULL, '7899446732', 'Male', '0000-00-00', 8, '', '', '', '', 17, ''),
(169, 'Abhishek Tomar', 'f8c7fd0df47f6b665e949e42073ba533', 'abhishektomar7@yahoo.co.in', 2, '2015-01-19 11:28:14', NULL, '9403136995', 'Male', '1993-05-16', 46, '10152657537401581', '1941675432', '', 'https://graph.facebook.com/10152657537401581/picture?width=150&height=150', 16, 'Nagpur'),
(170, 'Aditya Panikker', 'c1e38624a9cc66ab2e0135979fdd4dd3', 'adityapanikker@outlook.com', 2, '2015-01-19 11:39:30', NULL, '9036070718', 'Male', '0000-00-00', 5, '', '', '', '', 17, ''),
(171, 'Agniva Roy Chowdhury', '99c10921f60aa827a5c28982f5455821', 'arc.6565@gmail.com', 2, '2015-01-19 11:41:25', NULL, '9531745468', 'Female', '0000-00-00', 22, '', '', '', '', 17, ''),
(173, 'Akash Shukla', 'dec31f3f5f0b642c8c73f9e27b197281', 'akashshkl01@gmail.com', 2, '2015-01-19 11:45:20', NULL, '9045478758', 'Male', '0000-00-00', 34, '', '', '', '', 17, ''),
(174, 'Ajay Shekhawat', '47443d35199a04d755381fc24b08c790', 'shekhawatajay8@gmail.com', 2, '2015-01-19 11:52:52', NULL, '7769966529', 'Male', '1994-04-20', 47, '831856076872940', '885508082', '', 'https://graph.facebook.com/831856076872940/picture?width=150&height=150', 13, 'Pune'),
(175, 'Ananthu Unnithan', '3a718132a9459eb2c553522de2670515', 'unnithan.ananthu@gmail.com', 2, '2015-01-19 11:56:49', NULL, '8553817599', 'Male', '1995-05-12', 48, '778449765542534', '330373231', '', 'https://graph.facebook.com/778449765542534/picture?width=150&height=150', 4, ''),
(177, 'Anshik Bansal', '80bd35c4ae0ca4c4feead4f3d4af9b2c', 'bansal.anshik@gmail.com', 2, '2015-01-19 11:59:42', NULL, '7661079390', 'male', '0000-00-00', 13, '898771093513053', '', '', 'https://graph.facebook.com/898771093513053/picture?width=150&height=150', 17, ''),
(178, 'Arjun Sahni', '3d69abe3d66012e03d528e3c98cac889', 'arjun.19.sahni@gmail.com', 2, '2015-01-19 12:00:57', NULL, '8054932322', 'male', '0000-00-00', 33, '10205083986033265', '21078013', '', 'https://graph.facebook.com/10205083986033265/picture?width=150&height=150', 1, ''),
(179, 'Arnab Samantray', '0b63df30fad2f2b754805de87ec9ee9a', 'samantarayarnab.iitkgp@gmail.com', 2, '2015-01-19 12:02:11', NULL, '9933986911', 'Male', '0000-00-00', 19, '', '', '', '', 17, ''),
(180, 'Ashmi Chheda', '3e67475ae5fb48bbefeeb88074df8921', 'ashmichheda@gmail.com', 2, '2015-01-19 12:03:59', NULL, '9769647530', 'female', '0000-00-00', 49, '540891709387489', '1643181259', '', 'https://graph.facebook.com/540891709387489/picture?width=150&height=150', 8, ''),
(181, 'Ashvath Kunadi', '2f8d377b5df5a319f1304b4657dd3242', 'ashvathsingh@hotmail.com', 2, '2015-01-19 12:07:02', NULL, '8867633688', 'male', '0000-00-00', 50, '10153012563693954', '2163344677', '', 'https://graph.facebook.com/10153012563693954/picture?width=150&height=150', 15, ''),
(183, 'Ayush Rastogi', '0bd2bbc0bd198c42611fc7cc2a9c51eb', 'ayush_rastogi1995@outlook.com', 2, '2015-01-19 12:10:16', NULL, '9999354633', 'Male', '0000-00-00', 52, '', '', '', '', 17, ''),
(184, 'Beulah', '258e77d56e1bb500a5e79eb1f2097361', 'rbeulah27@gmail.com', 2, '2015-01-19 12:13:20', NULL, '8754294126', 'Male', '0000-00-00', 53, '', '', '', '', 17, ''),
(185, 'Carol Edwin', '28180cf6c97b3420b7de6d06cf4a4ee3', 'caroledwin312@gmail.com', 2, '2015-01-19 12:14:54', NULL, '7829649246', 'Female', '0000-00-00', 36, '', '', '', '', 17, ''),
(186, 'Deepa Pokar', '440561fa7cfd1769df9a28fe4ae328b6', 'deepspokar@gamil.com', 2, '2015-01-19 12:16:11', NULL, '9021054768', 'Female', '0000-00-00', 39, '', '', '', '', 17, ''),
(187, 'Gagan', '8b21e67067d51e7dee8ec010aaba33f4', 'gagangehani@gmail.com', 2, '2015-01-19 12:17:47', NULL, '8947914330', 'Male', '0000-00-00', 29, '', '', '', '', 17, ''),
(188, 'Harrsith. Dn', 'ce8ccfb95001fe961b881657ead94c85', 'dnharrsith@gmail.com', 2, '2015-01-19 12:19:29', NULL, '9566788467', 'Male', '0000-00-00', 51, '', '', '', '', 17, ''),
(189, 'Harsh Sutaria', 'db21c5354c0a138a23e5e85c9a4affe5', 'harshsutaria95@gmail.com', 2, '2015-01-19 12:21:21', NULL, '8050107070', 'Male', '0000-00-00', 16, '', '', '', '', 17, ''),
(190, 'Himanshu Nagdev', '128b2d9b94e20cf5ed1dee4e21e3b286', 'himanshunagdev.hn@gmail.com', 2, '2015-01-19 12:22:36', NULL, '8010303123', 'male', '0000-00-00', 28, '837575296305623', '2299246321', '', 'https://graph.facebook.com/837575296305623/picture?width=150&height=150', 12, ''),
(191, 'Krishna Bhatt', 'eac89c9cbf543a1882cd37f1010d3c15', 'kay2594@outlook.com', 2, '2015-01-19 12:24:03', NULL, '8308641726', 'Male', '0000-00-00', 25, '', '', '', '', 17, ''),
(192, 'Kshitiji Kulkarni', '5c073f618bdecec233db4a63b9dd3fe4', 'kk4146@gmail.com', 2, '2015-01-19 12:25:19', NULL, '8465826328', 'Male', '0000-00-00', 10, '', '1262301476', '', '', 17, ''),
(194, 'Mayur Dhagiya', '394c2f0e43fdbab72431ddd55c150a7c', 'mayurdhagiya@gmail.com', 2, '2015-01-19 12:29:10', NULL, '9722504243', 'Male', '1996-03-04', 54, '776428585783323', '553397745', '', 'https://graph.facebook.com/776428585783323/picture?width=150&height=150', 3, 'Ahmedabad'),
(195, 'Archana Nair', 'db2c6505967efd0def3ac78417188af0', 'archanan622@gmail.com', 2, '2015-01-19 12:31:47', NULL, '9497460136', 'female', '0000-00-00', 18, '917734248278596', '2737391934', '', 'https://graph.facebook.com/917734248278596/picture?width=150&height=150', 17, ''),
(196, 'Mukta Kulkarni', 'c5c2494f8138f5b9b68225ce2756c264', 'mukta3396@gmail.com', 2, '2015-01-19 12:33:12', NULL, '9632498008', 'Female', '0000-00-00', 15, '', '', '', '', 17, ''),
(197, 'N. Satya Sesha', 'de26a4aba3a86bad73c92189a9bbdfb4', 'seshanss@gmail.com', 2, '2015-01-19 12:34:16', NULL, '9502315251', 'Male', '0000-00-00', 11, '', '', '', '', 17, ''),
(198, 'Nishant Velugula', '68b8fa7dcba9562c19ef62e163496d08', 'nishant.velugula@gmail.com', 2, '2015-01-19 12:35:33', NULL, '8861677002', 'male', '0000-00-00', 7, '10204422205732776', '2990129352', '', 'https://graph.facebook.com/10204422205732776/picture?width=150&height=150', 17, ''),
(199, 'Palak Marwah', '958a5b3e8aefc47eb260b0a7806231e6', 'marwahpalak1@gmail.com', 2, '2015-01-19 12:36:33', NULL, '7304447406', 'Female', '0000-00-00', 46, '', '', '', '', 17, ''),
(200, 'Parth Shah', '7dbf206f8ed1102f4ab47ae41034f366', 's.p28194@gmail.com', 2, '2015-01-19 12:37:35', NULL, '9909995655', 'Male', '1994-11-28', 30, '600586593408120', '2974763354', '', 'https://graph.facebook.com/600586593408120/picture?width=150&height=150', 10, 'Ahmedabad'),
(201, 'Pavan Suthar', '650ed37b98a540799d8cbde15e5d2563', 'pmsuthar@icloud.com', 2, '2015-01-19 12:38:27', NULL, '9879536016', 'Male', '0000-00-00', 32, '', '', '', '', 17, ''),
(202, 'Rabaab Ratlamwala', 'c589b20993de4dbe5acdd81f064ba986', 'rabaabrat@gmail.com', 2, '2015-01-19 12:39:44', NULL, '9762262057', 'Male', '0000-00-00', 27, '', '', '', '', 17, ''),
(203, 'Rakesh B', '8d08c915db71e41c260ce0aee06770e6', 'rakesh.lead@gmail.com', 2, '2015-01-19 12:41:25', NULL, '9902258484', 'Male', '0000-00-00', 55, '', '', '', '', 17, ''),
(204, 'Rishav DuttaChoudhury', 'cb7fc7f67ceb827fc86203aedf5d9443', 'rishav.duttachoudhury@gmail.com', 2, '2015-01-19 12:42:33', NULL, '8197990613', 'Male', '1995-08-17', 50, '10205363982086261', '2992364114', '', 'https://graph.facebook.com/10205363982086261/picture?width=150&height=150', 17, ''),
(205, 'Rishi Agarwal', '83bee7e483e90fd4471cb6efc589e3ba', 'rishi.r.agarwal@sjmsom.in', 2, '2015-01-19 12:43:29', NULL, '9967472482', 'Male', '0000-00-00', 24, '', '', '', '', 17, ''),
(206, 'Ronil Jain', '5d1a9fa46a57af730a0bba11dd5c8de3', 'ronilrjain@gmail.com', 2, '2015-01-19 12:44:31', NULL, '9538339209', 'Male', '0000-00-00', 48, '', '', '', '', 17, ''),
(207, 'Sapna', 'fd0c21259b31633e0124362bd1298371', 'sk.angel94@gmail.com', 2, '2015-01-19 12:45:39', NULL, '8095679596', 'Female', '0000-00-00', 14, '', '', '', '', 17, ''),
(208, 'Shivy Kachru', 'adb272a65b6a66613ee8c662c2b9cad5', 'shivykachru94@gmail.com', 2, '2015-01-19 12:46:33', NULL, '9650223137', 'female', '0000-00-00', 41, '10204587974872080', '318502591', '', 'https://graph.facebook.com/10204587974872080/picture?width=150&height=150', 5, ''),
(209, 'Shubham Verma', '65d287bffa4c6e7faed5d3dc7d8ca3bb', 'shubhamv@outlook.com', 2, '2015-01-19 12:47:42', NULL, '7767983750', 'Male', '1993-12-25', 47, '660825977354794', '2205439369', '', 'https://graph.facebook.com/660825977354794/picture?width=150&height=150', 13, 'Pune'),
(210, 'Siddhi Parthe', '51c0899b1187525a677a84aa2a38f089', 'siddhiparthe@gmail.com', 2, '2015-01-19 12:49:43', NULL, '9820619887', 'female', '0000-00-00', 49, '929217517090856', '3001389750', '', 'https://graph.facebook.com/929217517090856/picture?width=150&height=150', 16, ''),
(212, 'Sree Lasya', '1fb3b48fb8344a53abbfd10e02d8c21c', 'deekshitamunnaluri@gmail.com', 2, '2015-01-19 12:52:15', NULL, '9849444326', 'Female', '1995-09-16', 12, '767073133368580', '2983918700', '', 'https://graph.facebook.com/767073133368580/picture?width=150&height=150', 17, ''),
(213, 'Suhani', '73f1b0101522836a4cc161e19503e222', 'suhanikumar@gmail.com', 2, '2015-01-19 12:53:30', NULL, '9654067297', 'Female', '0000-00-00', 42, '', '', '', '', 17, ''),
(214, 'Sumant P Khebbani', '8e6b162a8aefa422d5d06819694a1825', 'sumantkhebbani@gmail.com', 2, '2015-01-19 12:56:07', NULL, '9483779188', 'Male', '0000-00-00', 55, '', '', '', '', 17, ''),
(215, 'Trevor Loren', '32cc94edb2fade6998721d7ac13aec73', 'trevorloren@gmail.com', 2, '2015-01-19 12:57:16', NULL, '9844275771', 'male', '0000-00-00', 17, '10204213998722415', '', '', 'https://graph.facebook.com/10204213998722415/picture?width=150&height=150', 17, ''),
(216, 'Uma Mahesh', 'e68abeb81b1a6e9b563ed15eca797f59', 'uma.mahesh15@gmail.com', 2, '2015-01-19 12:58:20', NULL, '8464062498', 'male', '0000-00-00', 9, '1625433294351256', '2989974636', '', 'https://graph.facebook.com/1625433294351256/picture?width=150&height=150', 17, ''),
(218, 'Urmi Saha', 'e34a238504e225a7c18a41fd012efba1', 'urmi.88stars@gmail.com', 2, '2015-01-19 13:01:44', NULL, '9836128549', 'female', '0000-00-00', 21, '855920581120171', '', '', 'https://graph.facebook.com/855920581120171/picture?width=150&height=150', 17, ''),
(220, 'Vidhi Bhat', 'f353ce090702677a9077645e8ae7c6ca', 'spbhatt30@gmail.com', 2, '2015-01-19 13:04:58', NULL, '7383405203', 'Male', '0000-00-00', 54, '', '', '', '', 17, ''),
(222, 'Vishwal Moogi', 'dc6ad5aa47a71dc3a18b28e7583740ef', 'vishwalmoogi25@gmail.com', 2, '2015-01-19 13:06:36', NULL, '7829759400', 'male', '0000-00-00', 6, '981170218579729', '2542600290', '', 'https://graph.facebook.com/981170218579729/picture?width=150&height=150', 14, ''),
(223, 'Waras Singh', '85023315587ce7eff81c318e64970133', 'warassingh@gmail.com', 2, '2015-01-19 13:07:41', NULL, '9999558908', 'Male', '0000-00-00', 45, '', '', '', '', 17, ''),
(224, 'Yule Sarkar', '3159d2983c1192f4d79d6a5fa132cce4', 'yule.sarkar.731@gmail.com', 2, '2015-01-19 13:08:37', NULL, '8093869382', 'female', '0000-00-00', 38, '805879302820625', '', '', 'https://graph.facebook.com/805879302820625/picture?width=150&height=150', 17, ''),
(231, 'Harish Mukhi', 'f28efcd9824a2e8917cbf7e887c767b3', 'harishmukhi@kestone.in', 1, '2015-02-11 10:39:28', NULL, '', 'Male', '0000-00-00', 1, '', '', '', '', 0, ''),
(232, 'Amit Dash', '55a432aee92a9aef169539214532f108', 'mtdash.dash7@gmail.com', 2, '2015-02-11 11:22:21', NULL, '7795595684', 'Male', '0000-00-00', 8, '', '', '', '', 17, 'Bangalore'),
(233, 'Tushar Garg', '311ac27ac0b76256b0cd561f47f33c31', 'gtushar31@gmail.com', 2, '2015-02-11 11:24:51', NULL, '9010830926', 'Male', '0000-00-00', 13, '', '', '', '', 17, 'Hyderabad'),
(234, 'Tarishi Suhalka', 'b9d6b050a0fddefcea1da61c97ae886d', 'tarishisuhalka5@gmail.com', 2, '2015-02-11 11:26:42', NULL, '8805916179', 'Female', '1994-02-04', 26, '514616185344041', '2993036102', '', 'https://graph.facebook.com/514616185344041/picture?width=150&height=150', 13, 'pune'),
(235, 'Yash Deshmukh', 'a6d04136a306bffb5290c8d53b0b771d', 'ysd.7496@gmail.com', 2, '2015-02-11 11:28:22', NULL, '9604440300', 'male', '0000-00-00', 26, '859716007407366', '', '', 'https://graph.facebook.com/859716007407366/picture?width=150&height=150', 17, 'Pune'),
(236, 'Aathira Pattinson', '2a31df6d99413b601e992858867afa8b', 'aathis333@gmail.com', 2, '2015-02-11 11:30:45', NULL, '09447361360', 'Female', '0000-00-00', 51, '', '', '', '', 17, 'Coimbatore'),
(237, 'Arijit Das', '5bbed2c2870d8ab357c8e4d0741f4156', '93arijitdas@gmail.com', 2, '2015-02-11 11:32:40', NULL, '9477303975', 'Male', '0000-00-00', 1, '386130571559355', '3019931534', '', 'https://graph.facebook.com/386130571559355/picture?width=150&height=150', 9, 'KOLKATA'),
(238, 'Kestone Team', 'e5ca1f202fad6e85eebf61bbbf9b697e', 'general@kestone.in', 1, '2015-02-23 11:35:14', NULL, '', 'Male', '0000-00-00', 1, '', '', '', '', 0, ''),
(239, 'InkTalks Team', 'bb5daaaecd9adbc47a73db1cccc353d9', 'general@inktalks.in', 1, '2015-02-23 11:36:11', NULL, '', 'Male', '0000-00-00', 1, '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
`id` int(11) NOT NULL,
  `onuser` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userpost`
--

CREATE TABLE IF NOT EXISTS `userpost` (
`id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `post` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `share` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` double NOT NULL,
  `favourites` double NOT NULL,
  `retweet` double NOT NULL,
  `posttype` int(11) NOT NULL,
  `returnpostid` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=421 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userpost`
--

INSERT INTO `userpost` (`id`, `user`, `post`, `likes`, `share`, `timestamp`, `comment`, `favourites`, `retweet`, `posttype`, `returnpostid`) VALUES
(1, 87, 5, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '10203294927523252_10203294932963388'),
(2, 123, 6, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '821852074543459_821855111209822'),
(3, 123, 5, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '821852074543459_821855177876482'),
(4, 123, 6, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '821852074543459_821855234543143'),
(5, 194, 5, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '776428585783323_776429052449943'),
(6, 190, 5, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '837575296305623_837581896304963'),
(7, 190, 5, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '837575296305623_837582169638269'),
(8, 190, 6, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '837575296305623_837582359638250'),
(9, 190, 5, 0, 0, '2015-01-20 04:33:54', 0, 0, 0, 1, '837575296305623_837594816303671'),
(10, 190, 7, 0, 0, '2015-01-21 03:09:48', 0, 0, 0, 1, '837575296305623_838020609594425'),
(11, 190, 9, 0, 0, '2015-01-21 03:10:18', 0, 0, 0, 1, '837575296305623_838020712927748'),
(12, 120, 9, 1, 0, '2015-01-21 23:33:31', 0, 0, 0, 1, '839857442741397_840818972645244'),
(13, 141, 11, 11, 0, '2015-01-21 23:51:28', 3, 0, 0, 1, '1593290840894239_1593292787560711'),
(14, 141, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1593290840894239_1593301854226471'),
(15, 122, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1620244151531945_1621216631434697'),
(16, 190, 7, 4, 0, '2015-01-22 16:11:48', 1, 0, 0, 1, '837575296305623_838724502857369'),
(17, 123, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '821852074543459_823451131050220'),
(18, 123, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '821852074543459_823451164383550'),
(19, 123, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '821852074543459_823451181050215'),
(20, 123, 10, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '821852074543459_823451197716880'),
(21, 140, 12, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '558232421284315136'),
(22, 140, 13, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '558232465232252929'),
(23, 174, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '831856076872940_831859203539294'),
(24, 174, 12, 0, 0, '2015-01-23 00:07:09', 0, 2, 1, 2, '558241959135813632'),
(25, 174, 13, 0, 0, '2015-01-23 00:07:14', 0, 2, 1, 2, '558241980178644992'),
(26, 174, 14, 0, 0, '2015-01-23 00:07:18', 0, 2, 1, 2, '558241997798912000'),
(27, 174, 15, 0, 0, '2015-01-23 00:07:22', 0, 2, 1, 2, '558242013171027969'),
(28, 204, 7, 0, 0, '2015-01-23 00:10:32', 0, 0, 0, 1, '10205363982086261_10205364073128537'),
(29, 209, 12, 0, 0, '2015-01-23 00:39:08', 0, 2, 1, 2, '558250010341437440'),
(30, 209, 13, 0, 0, '2015-01-23 00:39:17', 0, 2, 1, 2, '558250045259001857'),
(31, 209, 14, 0, 0, '2015-01-23 00:39:20', 0, 2, 1, 2, '558250059838398465'),
(32, 209, 15, 0, 0, '2015-01-23 00:39:25', 0, 2, 1, 2, '558250078658232322'),
(33, 209, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '660825977354794_660833917354000'),
(34, 209, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '660825977354794_660834007353991'),
(35, 209, 10, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '660825977354794_660834047353987'),
(36, 209, 11, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '660825977354794_660834154020643'),
(37, 200, 7, 16, 0, '2015-01-23 04:04:31', 0, 0, 0, 1, '600586593408120_600587113408068'),
(38, 200, 11, 7, 0, '2015-01-23 04:06:29', 0, 0, 0, 1, '600586593408120_600587973407982'),
(39, 200, 9, 15, 0, '2015-01-23 04:21:14', 0, 0, 0, 1, '600586593408120_600593076740805'),
(40, 200, 12, 0, 0, '2015-01-23 04:51:41', 0, 1, 0, 2, '558313564943818752'),
(41, 200, 13, 0, 0, '2015-01-23 04:51:46', 0, 1, 0, 2, '558313586007609344'),
(42, 200, 14, 0, 0, '2015-01-23 04:51:51', 0, 1, 0, 2, '558313606136086528'),
(43, 200, 15, 0, 0, '2015-01-23 04:51:56', 0, 1, 0, 2, '558313626864340992'),
(44, 200, 10, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_600768250056621'),
(45, 200, 10, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_600768260056620'),
(46, 141, 9, 7, 0, '2015-01-24 04:51:36', 0, 0, 0, 1, '1593290840894239_1593926037497386'),
(47, 122, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1620244151531945_1622278781328482'),
(48, 194, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '776428585783323_778968942195954'),
(49, 194, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '776428585783323_778969028862612'),
(50, 194, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '776428585783323_778969368862578'),
(51, 208, 10, 317, 0, '2015-01-25 06:44:58', 2, 0, 0, 1, '10204587974872080_10204608905835341'),
(52, 152, 11, 301, 0, '2015-01-25 15:15:30', 0, 0, 0, 1, '10205386603171737_10205443559195602'),
(53, 122, 11, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1620244151531945_1622608624628831'),
(54, 122, 10, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1620244151531945_1622608657962161'),
(55, 145, 7, 6, 0, '2015-01-26 07:30:33', 11, 0, 0, 1, '687030644739710_687032934739481'),
(56, 145, 12, 0, 0, '2015-01-26 07:30:47', 0, 1, 0, 2, '559440765776965632'),
(57, 118, 10, 1, 0, '2015-01-26 21:13:22', 0, 0, 0, 1, '10204734549836535_10204775652984088'),
(58, 194, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '776428585783323_779881252104723'),
(59, 194, 7, 154, 0, '2015-01-26 22:11:47', 0, 0, 0, 1, '776428585783323_779882762104572'),
(60, 190, 9, 4, 0, '2015-01-27 06:54:45', 2, 0, 0, 1, '837575296305623_841100309286455'),
(61, 226, 11, 0, 0, '2015-01-27 21:42:22', 0, 0, 0, 1, '921220457889147_942606622417197'),
(62, 140, 12, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '560077487967698944'),
(63, 140, 14, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '560077544343351296'),
(64, 140, 13, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '560077563939139585'),
(65, 140, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '560077636777435136'),
(66, 122, 23, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1620244151531945_1623463124543381'),
(67, 178, 13, 0, 0, '2015-01-29 02:16:26', 0, 25, 23, 2, '560448820228542464'),
(68, 178, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '10205083986033265_10205084268960338'),
(69, 178, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '10205083986033265_10205084269160343'),
(70, 178, 23, 14, 0, '2015-01-29 03:21:28', 10902, 0, 0, 1, '10205083986033265_10205084508806334'),
(71, 194, 9, 227, 0, '2015-01-29 04:23:58', 0, 0, 0, 1, '776428585783323_781365958622919'),
(72, 200, 24, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603768536423259'),
(73, 200, 26, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603768643089915'),
(74, 200, 25, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603768693089910'),
(75, 200, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603768836423229'),
(76, 200, 22, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603769046423208'),
(77, 200, 23, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603769179756528'),
(78, 200, 21, 0, 0, '2015-01-29 22:03:46', 0, 1, 0, 2, '560747625037578240'),
(79, 200, 18, 0, 0, '2015-01-29 22:03:54', 0, 1, 0, 2, '560747656834596864'),
(80, 200, 20, 0, 0, '2015-01-29 22:04:05', 0, 1, 0, 2, '560747702783188992'),
(81, 200, 17, 0, 0, '2015-01-29 22:04:27', 0, 1, 0, 2, '560747797121478656'),
(82, 200, 16, 0, 0, '2015-01-29 22:04:36', 0, 1, 0, 2, '560747832949235713'),
(83, 200, 15, 0, 0, '2015-01-29 22:04:43', 0, 1, 0, 2, '560747865488625666'),
(84, 200, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603770969756349'),
(85, 200, 22, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603771026423010'),
(86, 200, 24, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603771049756341'),
(87, 200, 12, 0, 0, '2015-01-29 22:10:15', 0, 1, 0, 2, '560749257645641728'),
(88, 200, 13, 0, 0, '2015-01-29 22:10:20', 0, 1, 0, 2, '560749276599304195'),
(89, 200, 14, 0, 0, '2015-01-29 22:10:31', 0, 1, 0, 2, '560749324896698368'),
(90, 200, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603771423089637'),
(91, 200, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603771463089633'),
(92, 200, 11, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603771656422947'),
(93, 200, 10, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603771706422942'),
(94, 200, 22, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603771733089606'),
(95, 200, 24, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603771799756266'),
(96, 200, 26, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603771909756255'),
(97, 200, 26, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603771923089587'),
(98, 200, 25, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603771959756250'),
(99, 200, 11, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_603773286422784'),
(100, 178, 17, 0, 0, '2015-01-30 01:01:40', 0, 22, 20, 2, '560792392853254146'),
(101, 180, 7, 15, 0, '2015-01-30 03:02:08', 0, 0, 0, 1, '540891709387489_542840845859242'),
(102, 180, 9, 14, 0, '2015-01-30 03:02:43', 0, 0, 0, 1, '540891709387489_542841025859224'),
(103, 180, 22, 12, 0, '2015-01-30 03:03:14', 0, 0, 0, 1, '540891709387489_542841135859213'),
(104, 180, 10, 15, 0, '2015-01-30 03:03:29', 0, 0, 0, 1, '540891709387489_542841232525870'),
(105, 180, 25, 15, 0, '2015-01-30 03:11:42', 0, 0, 0, 1, '540891709387489_542843539192306'),
(106, 180, 9, 13, 0, '2015-01-30 03:12:02', 0, 0, 0, 1, '540891709387489_542843669192293'),
(107, 181, 7, 0, 0, '2015-01-30 06:16:24', 2, 0, 0, 1, '10153012563693954_10153012573718954'),
(108, 181, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '10153012563693954_10153012575618954'),
(109, 181, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '10153012563693954_10153012578008954'),
(110, 145, 10, 5, 0, '2015-01-30 15:18:24', 2, 0, 0, 1, '687030644739710_689063137869794'),
(111, 178, 14, 0, 0, '2015-01-30 16:20:06', 0, 22, 20, 2, '561023527629778944'),
(112, 178, 20, 0, 0, '2015-01-30 16:20:16', 0, 22, 19, 2, '561023566976540672'),
(113, 178, 13, 0, 0, '2015-01-30 16:21:05', 0, 23, 20, 2, '561023773361467393'),
(114, 178, 16, 0, 0, '2015-01-30 16:21:11', 0, 23, 20, 2, '561023796941824000'),
(115, 178, 15, 0, 0, '2015-01-30 16:21:21', 0, 23, 20, 2, '561023839396577280'),
(116, 178, 12, 0, 0, '2015-01-30 19:23:23', 0, 22, 19, 2, '561069650994147328'),
(117, 178, 17, 0, 0, '2015-01-30 19:54:04', 0, 20, 19, 2, '561077372447776770'),
(118, 178, 23, 9, 0, '2015-01-30 19:57:15', 12, 0, 0, 1, '10205083986033265_10205094737022033'),
(119, 222, 9, 1, 0, '2015-01-31 18:04:24', 0, 0, 0, 1, '981170218579729_981171685246249'),
(120, 222, 10, 1, 0, '2015-01-31 18:04:26', 0, 0, 0, 1, '981170218579729_981171698579581'),
(121, 222, 11, 1, 0, '2015-01-31 18:04:29', 0, 0, 0, 1, '981170218579729_981171705246247'),
(122, 222, 7, 2, 0, '2015-01-31 18:04:41', 0, 0, 0, 1, '981170218579729_981171731912911'),
(123, 222, 10, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '981170218579729_981173451912739'),
(124, 222, 10, 1, 0, '2015-01-31 18:15:00', 0, 0, 0, 1, '981170218579729_981173985246019'),
(125, 222, 12, 0, 0, '2015-01-31 18:58:57', 0, 0, 0, 2, '561425889695514625'),
(126, 222, 15, 0, 0, '2015-01-31 18:59:39', 0, 0, 0, 2, '561426064459591681'),
(127, 222, 17, 0, 0, '2015-01-31 19:05:03', 0, 0, 0, 2, '561427425809006592'),
(128, 222, 16, 0, 0, '2015-01-31 19:05:14', 0, 0, 0, 2, '561427470495150080'),
(129, 222, 18, 0, 0, '2015-01-31 19:05:29', 0, 0, 0, 2, '561427535712354305'),
(130, 222, 13, 0, 0, '2015-01-31 19:05:43', 0, 0, 0, 2, '561427593572798466'),
(131, 210, 7, 1, 0, '2015-02-02 04:19:55', 0, 0, 0, 1, '929217517090856_930692380276703'),
(132, 122, 28, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1620244151531945_1626861167536910'),
(133, 122, 33, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1620244151531945_1626861250870235'),
(134, 141, 12, 0, 0, '2015-02-05 03:28:20', 0, 1, 0, 2, '563003632854245376'),
(135, 145, 9, 4, 0, '2015-02-05 17:19:25', 0, 0, 0, 1, '687030644739710_692490230860418'),
(136, 145, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '687030644739710_692491814193593'),
(137, 164, 7, 0, 0, '2015-02-05 20:06:05', 0, 0, 0, 1, '921220457889147_947181858626340'),
(138, 164, 13, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '563254974503587840'),
(139, 145, 32, 9, 0, '2015-02-05 20:32:54', 11, 0, 0, 1, '687030644739710_692525360856905'),
(140, 145, 18, 0, 0, '2015-02-06 01:35:05', 0, 1, 0, 2, '563337520910331905'),
(141, 194, 11, 219, 0, '2015-02-09 01:23:09', 0, 0, 0, 1, '776428585783323_787837844642397'),
(142, 135, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '942781765746734_942782632413314'),
(143, 135, 12, 0, 0, '2015-02-09 20:45:53', 0, 0, 0, 2, '564714289034833921'),
(144, 145, 10, 7, 0, '2015-02-11 07:00:32', 3, 0, 0, 1, '687030644739710_695072593935515'),
(145, 175, 7, 129, 0, '2015-02-11 17:47:06', 0, 0, 0, 1, '778449765542534_778453048875539'),
(146, 175, 7, 139, 0, '2015-02-11 17:49:12', 0, 0, 0, 1, '778449765542534_778453368875507'),
(147, 175, 10, 121, 0, '2015-02-11 17:52:24', 0, 0, 0, 1, '778449765542534_778453965542114'),
(148, 175, 10, 125, 0, '2015-02-11 17:52:26', 0, 0, 0, 1, '778449765542534_778453972208780'),
(149, 175, 10, 133, 0, '2015-02-11 17:52:28', 0, 0, 0, 1, '778449765542534_778453988875445'),
(150, 175, 10, 153, 0, '2015-02-11 17:52:31', 0, 0, 0, 1, '778449765542534_778454002208777'),
(151, 175, 14, 0, 0, '2015-02-11 17:59:40', 0, 0, 0, 2, '565397236612599808'),
(152, 175, 69, 0, 0, '2015-02-11 18:00:23', 0, 0, 0, 2, '565397418767036416'),
(153, 204, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '10205363982086261_10205496995811521'),
(154, 145, 35, 3, 0, '2015-02-12 06:26:17', 8, 0, 0, 1, '687030644739710_695462100563231'),
(155, 145, 35, 3, 0, '2015-02-12 06:30:44', 0, 0, 0, 1, '687030644739710_695463053896469'),
(156, 234, 12, 0, 0, '2015-02-13 05:27:56', 0, 1, 1, 2, '565932833340801024'),
(157, 190, 7, 3, 0, '2015-02-13 05:40:20', 1, 0, 0, 1, '837575296305623_849408768455609'),
(158, 212, 16, 0, 0, '2015-02-13 23:25:47', 0, 0, 0, 2, '566204083615182848'),
(159, 212, 12, 0, 0, '2015-02-13 23:27:37', 0, 0, 0, 2, '566204544531435520'),
(160, 212, 13, 0, 0, '2015-02-13 23:27:43', 0, 0, 0, 2, '566204568292184064'),
(161, 212, 14, 0, 0, '2015-02-13 23:27:47', 0, 0, 0, 2, '566204586751315968'),
(162, 212, 15, 0, 0, '2015-02-13 23:27:52', 0, 0, 0, 2, '566204606997225472'),
(163, 212, 18, 0, 0, '2015-02-13 23:28:02', 0, 0, 0, 2, '566204647061213185'),
(164, 212, 17, 0, 0, '2015-02-13 23:28:06', 0, 0, 0, 2, '566204665784582145'),
(165, 190, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '837575296305623_849821228414363'),
(166, 190, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '837575296305623_849821265081026'),
(167, 234, 14, 0, 0, '2015-02-14 20:35:10', 0, 1, 1, 2, '566523533799333888'),
(168, 234, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '514616185344041_515781728560820'),
(169, 234, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '514616185344041_515783178560675'),
(170, 234, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '514616185344041_515783235227336'),
(171, 234, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '514616185344041_515783248560668'),
(172, 234, 10, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '514616185344041_515783378560655'),
(173, 234, 10, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '514616185344041_515783395227320'),
(174, 234, 17, 0, 0, '2015-02-14 21:38:44', 0, 0, 0, 2, '566539531143225346'),
(175, 234, 10, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '514616185344041_515799995225660'),
(176, 178, 13, 0, 0, '2015-02-15 19:05:43', 0, 16, 15, 2, '566863410399178752'),
(177, 178, 17, 0, 0, '2015-02-15 19:08:31', 0, 16, 15, 2, '566864115939823616'),
(178, 178, 49, 0, 0, '2015-02-15 19:09:42', 0, 16, 15, 2, '566864413353721856'),
(179, 178, 69, 0, 0, '2015-02-15 19:10:06', 0, 16, 15, 2, '566864511596908546'),
(180, 178, 14, 0, 0, '2015-02-15 19:10:33', 0, 16, 15, 2, '566864627732979712'),
(181, 178, 50, 0, 0, '2015-02-15 19:11:39', 0, 16, 15, 2, '566864905521737729'),
(182, 178, 16, 0, 0, '2015-02-15 19:13:10', 0, 16, 15, 2, '566865285752164354'),
(183, 178, 20, 0, 0, '2015-02-15 19:13:15', 0, 16, 15, 2, '566865304999849984'),
(184, 178, 46, 0, 0, '2015-02-15 19:13:32', 0, 16, 15, 2, '566865376172978176'),
(185, 141, 26, 3, 0, '2015-02-15 20:03:34', 0, 0, 0, 1, '1593290840894239_1603139486576041'),
(186, 141, 20, 0, 0, '2015-02-15 20:11:19', 0, 0, 0, 2, '566879921100709888'),
(187, 212, 16, 0, 0, '2015-02-16 01:11:26', 0, 0, 0, 2, '566955445147811842'),
(188, 204, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '10205363982086261_10205524816707026'),
(189, 204, 14, 0, 0, '2015-02-16 04:19:44', 0, 0, 0, 2, '567002834726445057'),
(190, 175, 11, 160, 0, '2015-02-16 04:20:20', 0, 0, 0, 1, '778449765542534_780416165345894'),
(191, 175, 11, 168, 0, '2015-02-16 04:20:22', 0, 0, 0, 1, '778449765542534_780416175345893'),
(192, 190, 11, 0, 0, '2015-02-16 15:34:27', 0, 0, 0, 1, '837575296305623_851446564918496'),
(193, 175, 17, 0, 0, '2015-02-16 23:47:02', 0, 0, 0, 2, '567296593389293569'),
(194, 175, 16, 0, 0, '2015-02-16 23:47:07', 0, 0, 0, 2, '567296616197914624'),
(195, 123, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '821852074543459_838602089535124'),
(196, 123, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '821852074543459_838602159535117'),
(197, 123, 10, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '821852074543459_838602169535116'),
(198, 123, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '821852074543459_838602186201781'),
(199, 123, 22, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '821852074543459_838602232868443'),
(200, 123, 25, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '821852074543459_838602406201759'),
(201, 123, 23, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '821852074543459_838602416201758'),
(202, 123, 24, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '821852074543459_838602479535085'),
(203, 194, 23, 197, 0, '2015-02-17 04:14:11', 0, 0, 0, 1, '776428585783323_792772254148956'),
(204, 178, 12, 0, 0, '2015-02-17 06:04:08', 0, 16, 15, 2, '567391493296365568'),
(205, 178, 17, 0, 0, '2015-02-17 06:04:49', 0, 16, 15, 2, '567391665422233601'),
(206, 178, 13, 0, 0, '2015-02-17 06:04:54', 0, 16, 15, 2, '567391685592629249'),
(207, 178, 70, 0, 0, '2015-02-17 06:05:06', 0, 16, 15, 2, '567391736045924352'),
(208, 178, 14, 0, 0, '2015-02-17 06:19:50', 0, 16, 15, 2, '567395444351696897'),
(209, 178, 16, 0, 0, '2015-02-17 06:20:44', 0, 16, 15, 2, '567395670558904320'),
(210, 178, 45, 0, 0, '2015-02-17 06:21:02', 0, 15, 15, 2, '567395748086419456'),
(211, 175, 33, 165, 0, '2015-02-17 19:15:19', 1, 0, 0, 1, '778449765542534_781079728612871'),
(212, 178, 15, 0, 0, '2015-02-17 20:53:36', 0, 16, 15, 2, '567615335298129920'),
(213, 178, 45, 0, 0, '2015-02-17 20:53:46', 0, 16, 15, 2, '567615376066740224'),
(214, 178, 50, 0, 0, '2015-02-17 20:53:54', 0, 18, 16, 2, '567615411487662080'),
(215, 178, 69, 0, 0, '2015-02-17 20:54:04', 0, 16, 15, 2, '567615454445711360'),
(216, 178, 17, 0, 0, '2015-02-17 20:54:14', 0, 16, 15, 2, '567615494354530304'),
(217, 178, 47, 0, 0, '2015-02-17 20:54:21', 0, 16, 15, 2, '567615525102948354'),
(218, 178, 13, 0, 0, '2015-02-17 20:54:33', 0, 16, 14, 2, '567615574490873856'),
(219, 178, 18, 0, 0, '2015-02-17 20:54:39', 0, 16, 15, 2, '567615599753191424'),
(220, 237, 7, 15, 0, '2015-02-18 02:36:59', 24, 0, 0, 1, '386130571559355_387094148129664'),
(221, 237, 16, 0, 0, '2015-02-18 02:46:07', 0, 0, 0, 2, '567704050120916994'),
(222, 237, 12, 0, 0, '2015-02-18 02:47:09', 0, 0, 0, 2, '567704308628475904'),
(223, 194, 26, 201, 0, '2015-02-18 04:07:46', 0, 0, 0, 1, '776428585783323_793788770713971'),
(224, 234, 24, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '514616185344041_517626951709631'),
(225, 194, 28, 200, 0, '2015-02-18 13:38:02', 0, 0, 0, 1, '776428585783323_793986937360821'),
(226, 178, 13, 0, 0, '2015-02-19 00:00:13', 0, 16, 15, 2, '568024687042629632'),
(227, 178, 14, 0, 0, '2015-02-19 00:00:19', 0, 16, 15, 2, '568024710564311040'),
(228, 178, 48, 0, 0, '2015-02-19 00:00:24', 0, 16, 15, 2, '568024733658136576'),
(229, 178, 70, 0, 0, '2015-02-19 00:00:44', 0, 16, 15, 2, '568024818026553344'),
(230, 178, 16, 0, 0, '2015-02-19 00:01:24', 0, 16, 15, 2, '568024985173762049'),
(231, 178, 69, 0, 0, '2015-02-19 00:09:20', 0, 16, 15, 2, '568026983029813248'),
(232, 178, 15, 0, 0, '2015-02-19 00:09:34', 0, 16, 15, 2, '568027041343209473'),
(233, 178, 49, 0, 0, '2015-02-19 00:09:50', 0, 16, 15, 2, '568027106174574594'),
(234, 178, 18, 0, 0, '2015-02-19 00:27:42', 0, 15, 14, 2, '568031602279780352'),
(235, 200, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_613455698787876'),
(236, 200, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_613456825454430'),
(237, 175, 32, 54, 0, '2015-02-19 03:05:26', 2, 0, 0, 1, '778449765542534_781581475229363'),
(238, 200, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '600586593408120_613466155453497'),
(239, 178, 15, 0, 0, '2015-02-20 01:40:15', 0, 16, 14, 2, '568412249762582528'),
(240, 178, 16, 0, 0, '2015-02-20 01:40:21', 0, 15, 15, 2, '568412273259098112'),
(241, 178, 14, 0, 0, '2015-02-20 01:40:27', 0, 16, 15, 2, '568412299683196929'),
(242, 178, 49, 0, 0, '2015-02-20 01:40:37', 0, 16, 15, 2, '568412342679003138'),
(243, 178, 46, 0, 0, '2015-02-20 01:40:43', 0, 16, 15, 2, '568412366938853376'),
(244, 178, 50, 0, 0, '2015-02-20 01:40:49', 0, 16, 15, 2, '568412391915933696'),
(245, 178, 70, 0, 0, '2015-02-20 01:40:55', 0, 16, 15, 2, '568412416859443200'),
(246, 178, 13, 0, 0, '2015-02-20 01:41:00', 0, 16, 15, 2, '568412438309138433'),
(247, 178, 12, 0, 0, '2015-02-20 01:50:28', 0, 16, 15, 2, '568414821017718784'),
(248, 178, 17, 0, 0, '2015-02-20 01:50:35', 0, 16, 15, 2, '568414851225104384'),
(249, 178, 45, 0, 0, '2015-02-20 01:50:43', 0, 16, 15, 2, '568414883433152512'),
(250, 234, 11, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '514616185344041_518460384959621'),
(251, 145, 18, 0, 0, '2015-02-21 00:56:41', 0, 2, 1, 2, '568763671880470529'),
(252, 145, 17, 0, 0, '2015-02-21 00:57:23', 0, 2, 1, 2, '568763850868174848'),
(253, 145, 9, 6, 0, '2015-02-21 00:58:55', 0, 0, 0, 1, '687030644739710_700031623439612'),
(254, 178, 13, 0, 0, '2015-02-21 02:02:25', 0, 16, 15, 2, '568780215373012993'),
(255, 178, 17, 0, 0, '2015-02-21 02:02:31', 0, 16, 15, 2, '568780241495199746'),
(256, 178, 16, 0, 0, '2015-02-21 02:02:36', 0, 16, 15, 2, '568780262202413057'),
(257, 178, 14, 0, 0, '2015-02-21 02:02:41', 0, 16, 15, 2, '568780283194929152'),
(258, 178, 70, 0, 0, '2015-02-21 02:02:47', 0, 16, 15, 2, '568780306867597312'),
(259, 175, 22, 41, 0, '2015-02-21 02:32:43', 0, 0, 0, 1, '778449765542534_782342568486587'),
(260, 175, 24, 36, 0, '2015-02-21 02:34:02', 0, 0, 0, 1, '778449765542534_782342901819887'),
(261, 175, 26, 46, 0, '2015-02-21 02:35:26', 0, 0, 0, 1, '778449765542534_782343288486515'),
(262, 175, 35, 36, 0, '2015-02-21 02:37:34', 0, 0, 0, 1, '778449765542534_782343728486471'),
(263, 178, 15, 0, 0, '2015-02-21 03:32:55', 0, 16, 15, 2, '568802992553459713'),
(264, 178, 47, 0, 0, '2015-02-21 03:33:01', 0, 16, 15, 2, '568803017517977600'),
(265, 178, 12, 0, 0, '2015-02-21 03:33:06', 0, 16, 15, 2, '568803037856157696'),
(266, 178, 50, 0, 0, '2015-02-21 03:33:15', 0, 16, 15, 2, '568803075239981056'),
(267, 178, 48, 0, 0, '2015-02-21 03:33:29', 0, 16, 15, 2, '568803131762585600'),
(268, 175, 23, 38, 0, '2015-02-21 15:31:30', 0, 0, 0, 1, '778449765542534_782547428466101'),
(269, 175, 34, 20, 0, '2015-02-21 20:36:52', 0, 0, 0, 1, '778449765542534_782604238460420'),
(270, 178, 13, 0, 0, '2015-02-22 03:57:36', 0, 16, 15, 2, '569171588567801856'),
(271, 178, 15, 0, 0, '2015-02-22 03:58:13', 0, 16, 15, 2, '569171746445635584'),
(272, 178, 48, 0, 0, '2015-02-22 03:58:22', 0, 16, 15, 2, '569171783938502656'),
(273, 178, 14, 0, 0, '2015-02-22 03:58:45', 0, 16, 15, 2, '569171879367299072'),
(274, 178, 17, 0, 0, '2015-02-22 03:58:56', 0, 16, 15, 2, '569171927425683456'),
(275, 178, 50, 0, 0, '2015-02-22 03:59:05', 0, 16, 15, 2, '569171962682978304'),
(276, 178, 70, 0, 0, '2015-02-22 03:59:13', 0, 16, 15, 2, '569171998686863360'),
(277, 178, 49, 0, 0, '2015-02-22 03:59:21', 0, 15, 15, 2, '569172030097989632'),
(278, 178, 16, 0, 0, '2015-02-22 03:59:33', 0, 16, 15, 2, '569172079058137088'),
(279, 234, 22, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '514616185344041_519224051549921'),
(280, 234, 23, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '514616185344041_519224138216579'),
(281, 234, 25, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '514616185344041_519224184883241'),
(282, 178, 16, 0, 0, '2015-02-22 18:34:54', 0, 16, 15, 2, '569392368568250368'),
(283, 178, 15, 0, 0, '2015-02-22 18:35:00', 0, 16, 15, 2, '569392397097902080'),
(284, 178, 45, 0, 0, '2015-02-22 18:35:09', 0, 16, 15, 2, '569392433147940864'),
(285, 178, 13, 0, 0, '2015-02-22 18:35:24', 0, 16, 15, 2, '569392496020598784'),
(286, 178, 49, 0, 0, '2015-02-22 18:35:52', 0, 16, 15, 2, '569392615239462913'),
(287, 178, 14, 0, 0, '2015-02-22 18:36:39', 0, 16, 15, 2, '569392812015243264'),
(288, 178, 47, 0, 0, '2015-02-22 18:37:18', 0, 16, 15, 2, '569392972720001024'),
(289, 178, 50, 0, 0, '2015-02-22 18:37:25', 0, 15, 15, 2, '569393005515317249'),
(290, 178, 17, 0, 0, '2015-02-22 18:38:02', 0, 14, 15, 2, '569393158292795393'),
(291, 145, 12, 0, 0, '2015-02-22 19:52:49', 0, 1, 0, 2, '569411978638151681'),
(292, 178, 12, 0, 0, '2015-02-23 00:25:24', 0, 16, 15, 2, '569480577159548928'),
(293, 178, 69, 0, 0, '2015-02-23 00:25:44', 0, 16, 15, 2, '569480660450091009'),
(294, 178, 70, 0, 0, '2015-02-23 00:25:52', 0, 16, 15, 2, '569480693165658114'),
(295, 178, 16, 0, 0, '2015-02-23 00:26:05', 0, 16, 15, 2, '569480750241722370'),
(296, 178, 13, 0, 0, '2015-02-23 00:26:56', 0, 16, 15, 2, '569480962578345984'),
(297, 178, 20, 0, 0, '2015-02-23 00:27:02', 0, 16, 15, 2, '569480988096483329'),
(298, 178, 14, 0, 0, '2015-02-23 00:27:07', 0, 16, 15, 2, '569481007172227072'),
(299, 178, 15, 0, 0, '2015-02-23 00:27:28', 0, 13, 15, 2, '569481095386787841'),
(300, 178, 46, 0, 0, '2015-02-23 00:28:16', 0, 14, 15, 2, '569481299485806595'),
(301, 135, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '942781765746734_950345591657018'),
(302, 135, 13, 0, 0, '2015-02-23 21:22:54', 0, 0, 0, 2, '569797034678439937'),
(303, 194, 25, 195, 0, '2015-02-24 13:12:59', 0, 0, 0, 1, '776428585783323_797483747011140'),
(304, 204, 23, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '10205363982086261_10205583879863568'),
(305, 145, 16, 0, 0, '2015-02-24 21:33:18', 0, 0, 0, 2, '570162043141038080'),
(306, 178, 12, 0, 0, '2015-02-25 04:20:38', 0, 14, 13, 2, '570264552182411265'),
(307, 178, 13, 0, 0, '2015-02-25 04:22:35', 0, 14, 13, 2, '570265042622377984'),
(308, 178, 14, 0, 0, '2015-02-25 04:23:07', 0, 14, 13, 2, '570265175216906240'),
(309, 178, 15, 0, 0, '2015-02-25 04:23:41', 0, 14, 13, 2, '570265317076660224'),
(310, 178, 17, 0, 0, '2015-02-25 04:24:25', 0, 14, 13, 2, '570265503140225024'),
(311, 178, 16, 0, 0, '2015-02-25 04:25:32', 0, 14, 13, 2, '570265784443756544'),
(312, 178, 47, 0, 0, '2015-02-25 04:27:30', 0, 14, 13, 2, '570266280617340928'),
(313, 178, 46, 0, 0, '2015-02-25 04:39:19', 0, 14, 13, 2, '570269252483047424'),
(314, 178, 70, 0, 0, '2015-02-25 04:39:30', 0, 14, 13, 2, '570269296862998528'),
(315, 178, 21, 0, 0, '2015-02-25 04:43:08', 0, 14, 13, 2, '570270211963617280'),
(316, 149, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '10205593501735074_10205850010507633'),
(317, 149, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '10205593501735074_10205850010787640'),
(318, 149, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '10205593501735074_10205850013027696'),
(319, 149, 12, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '570462348747673600'),
(320, 149, 18, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '570462372982333441'),
(321, 149, 14, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '570462388199288833'),
(322, 149, 69, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '570462410093531137'),
(323, 149, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '10205593501735074_10205850025228001'),
(324, 194, 33, 205, 0, '2015-02-27 00:16:23', 0, 0, 0, 1, '776428585783323_799020170190831'),
(325, 237, 33, 16, 0, '2015-02-27 03:54:43', 8, 0, 0, 1, '386130571559355_389783551194057'),
(326, 234, 28, 4, 0, '2015-02-27 19:36:20', 0, 0, 0, 1, '514616185344041_521170208021972'),
(327, 234, 26, 4, 0, '2015-02-27 19:36:26', 0, 0, 0, 1, '514616185344041_521170241355302'),
(328, 144, 7, 41, 0, '2015-02-27 21:25:39', 3218, 0, 0, 1, '790556331018330_806058902801406'),
(329, 144, 9, 34, 0, '2015-02-27 21:26:07', 3167, 0, 0, 1, '790556331018330_806059016134728'),
(330, 144, 10, 33, 0, '2015-02-27 21:26:33', 4006, 0, 0, 1, '790556331018330_806059086134721'),
(331, 145, 35, 6, 0, '2015-02-27 22:54:29', 0, 0, 0, 1, '687030644739710_703304276445680'),
(332, 145, 17, 0, 0, '2015-02-27 22:55:13', 0, 0, 0, 2, '571269821830012929'),
(333, 144, 12, 0, 0, '2015-02-28 01:33:25', 0, 1, 0, 2, '571309634058739712'),
(334, 144, 14, 0, 0, '2015-02-28 01:33:34', 0, 2, 1, 2, '571309670159097857'),
(335, 144, 15, 0, 0, '2015-02-28 01:33:41', 0, 3, 1, 2, '571309697724055552'),
(336, 144, 17, 0, 0, '2015-02-28 01:33:48', 0, 3, 1, 2, '571309728669655040'),
(337, 144, 18, 0, 0, '2015-02-28 01:33:55', 0, 2, 1, 2, '571309759225159680'),
(338, 144, 16, 0, 0, '2015-02-28 01:34:01', 0, 2, 1, 2, '571309785640906755'),
(339, 127, 7, 1, 0, '2015-02-28 01:41:14', 0, 0, 0, 1, '10203189310760383_10203407773901825'),
(340, 127, 22, 1, 0, '2015-02-28 01:41:49', 0, 0, 0, 1, '10203189310760383_10203407775941876'),
(341, 127, 36, 0, 0, '2015-02-28 01:50:29', 0, 0, 0, 1, '10203189310760383_10203407804982602'),
(342, 178, 13, 0, 0, '2015-02-28 01:51:45', 0, 14, 13, 2, '571314246589394944'),
(343, 178, 16, 0, 0, '2015-02-28 01:51:52', 0, 14, 13, 2, '571314274955436033'),
(344, 178, 49, 0, 0, '2015-02-28 01:52:40', 0, 14, 13, 2, '571314475485114368'),
(345, 178, 70, 0, 0, '2015-02-28 01:52:49', 0, 14, 13, 2, '571314513808486400'),
(346, 178, 46, 0, 0, '2015-02-28 01:52:55', 0, 14, 13, 2, '571314538672361476'),
(347, 178, 47, 0, 0, '2015-02-28 01:53:01', 0, 14, 13, 2, '571314563703910400'),
(348, 178, 18, 0, 0, '2015-02-28 15:17:14', 0, 14, 13, 2, '571516953015140352'),
(349, 178, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571516979669934080'),
(350, 178, 48, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571517002331783168'),
(351, 178, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571517622463815680'),
(352, 178, 45, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571517645305978880'),
(353, 178, 47, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571517670337593344'),
(354, 178, 13, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571517690885480449'),
(355, 178, 16, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571517737370951680'),
(356, 178, 69, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571517764457742336'),
(357, 178, 50, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571517787941683200'),
(358, 125, 12, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571598417983496192'),
(359, 125, 13, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571598451969953794'),
(360, 125, 14, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571598482554798083'),
(361, 125, 16, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571598564347887618'),
(362, 125, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536669923224669'),
(363, 125, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536670249891303'),
(364, 125, 36, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536670429891285'),
(365, 125, 23, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536670526557942'),
(366, 125, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536670619891266'),
(367, 125, 11, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536670723224589'),
(368, 125, 25, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536670843224577'),
(369, 125, 26, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536670963224565'),
(370, 125, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536671029891225'),
(371, 125, 26, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536671179891210'),
(372, 125, 10, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536671269891201'),
(373, 125, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536671326557862'),
(374, 125, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536671336557861'),
(375, 125, 11, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536671439891184'),
(376, 125, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536671463224515'),
(377, 125, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536671519891176'),
(378, 125, 7, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536671576557837'),
(379, 125, 9, 0, 0, '1970-01-01 11:30:00', 0, 0, 0, 1, '1536663743225287_1536671943224467'),
(380, 169, 10, 1, 0, '2015-03-01 03:36:41', 0, 0, 0, 1, '10152657537401581_10152658059121581'),
(381, 194, 22, 187, 0, '2015-03-01 05:33:09', 0, 0, 0, 1, '776428585783323_800326400060208'),
(382, 178, 13, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571887226960756737'),
(383, 178, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571887274679398401'),
(384, 178, 70, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571887440509607936'),
(385, 178, 49, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571887574349819904'),
(386, 178, 16, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571887694353047552'),
(387, 178, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571887731577503745'),
(388, 178, 18, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571887882962513920'),
(389, 178, 47, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571887939145211904'),
(390, 178, 48, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571887983961350144'),
(391, 178, 46, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571888011350179840'),
(392, 178, 50, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '571888037157707776'),
(393, 178, 13, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572033901310300160'),
(394, 178, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572034023440007168'),
(395, 178, 69, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572035488808239104'),
(396, 178, 70, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572035512980017153'),
(397, 178, 14, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572035599919554560'),
(398, 178, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572035628054941696'),
(399, 178, 20, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572035654814593024'),
(400, 178, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572035677895860225'),
(401, 178, 16, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572063700569350145'),
(402, 178, 18, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572064025594343426'),
(403, 178, 45, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572064091503636480'),
(404, 178, 12, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572064460182958080'),
(405, 178, 13, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572064480026206208'),
(406, 178, 69, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572238430354067456'),
(407, 178, 70, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572238475937771521'),
(408, 178, 48, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572238507659300865'),
(409, 178, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572238562357215232'),
(410, 178, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572238619429109760'),
(411, 178, 14, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572238642493562880'),
(412, 178, 12, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572367265653395456'),
(413, 178, 13, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572367402949738497'),
(414, 175, 22, 30, 0, '2015-03-03 02:39:52', 0, 0, 0, 1, '778449765542534_786869654700545'),
(415, 175, 34, 23, 0, '2015-03-03 02:40:58', 2, 0, 0, 1, '778449765542534_786870018033842'),
(416, 144, 32, 6, 0, '2015-03-04 00:42:47', 0, 0, 0, 1, '790556331018330_808205415920088'),
(417, 144, 23, 8, 0, '2015-03-04 00:44:44', 3287, 0, 0, 1, '790556331018330_808205932586703'),
(418, 144, 69, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572747442933800961'),
(419, 144, 45, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 2, '572747583212285952'),
(420, 178, 32, 3, 0, '2015-03-04 01:42:31', 22, 0, 0, 1, '10205083986033265_10205341889800698');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesslevel`
--
ALTER TABLE `accesslevel`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logintype`
--
ALTER TABLE `logintype`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menuaccess`
--
ALTER TABLE `menuaccess`
 ADD PRIMARY KEY (`menu`,`access`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posttype`
--
ALTER TABLE `posttype`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userpost`
--
ALTER TABLE `userpost`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accesslevel`
--
ALTER TABLE `accesslevel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `logintype`
--
ALTER TABLE `logintype`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=171;
--
-- AUTO_INCREMENT for table `posttype`
--
ALTER TABLE `posttype`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `userpost`
--
ALTER TABLE `userpost`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=421;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
