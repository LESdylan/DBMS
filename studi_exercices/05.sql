CREATE TABLE Ventes
(
    Id INTEGER NOT NULL PRIMARY KEY,
    NomVendeur varchar(50) NOT NULL,
    MontantVente decimal(10,2) DEFAULT 0,
    DateVente datetime DEFAULT NOW()
);

-- SQL script to insert 500 rows into the Ventes table
INSERT INTO Ventes (Id, NomVendeur, MontantVente, DateVente) VALUES
(1, 'James Smith', 4681.03, '2024-09-16 21:49:17'),
(2, 'Emily Smith', 3064.12, '2024-07-24 21:49:17'),
(3, 'Olivia Anderson', 2866.12, '2024-04-21 21:49:17'),
(4, 'Jane Anderson', 2353.12, '2023-11-10 21:49:17'),
(5, 'Olivia Doe', 2721.04, '2024-04-23 21:49:17'),
(6, 'Jane Garcia', 1680.58, '2024-05-11 21:49:17'),
(7, 'Ava Doe', 607.25, '2024-02-21 21:49:17'),
(8, 'Ava Harris', 2521.57, '2024-05-16 21:49:17'),
(9, 'Emily Johnson', 229.8, '2024-07-25 21:49:17'),
(10, 'Emily Davis', 1546.54, '2024-02-21 21:49:17'),
(11, 'Olivia Garcia', 1739.63, '2024-04-26 21:49:17'),
(12, 'Michael Thomas', 1898.54, '2024-10-24 21:49:17'),
(13, 'Ava Jackson', 4556.03, '2024-05-30 21:49:17'),
(14, 'William Harris', 3398.9, '2023-11-10 21:49:17'),
(15, 'Jane Anderson', 1924.27, '2024-07-08 21:49:17'),
(16, 'Emma Martinez', 2587.57, '2024-09-21 21:49:17'),
(17, 'Ava Miller', 4973.76, '2024-03-20 21:49:17'),
(18, 'Ava Taylor', 4052.55, '2024-03-14 21:49:17'),
(19, 'Noah Doe', 3593.94, '2024-09-22 21:49:17'),
(20, 'Olivia Miller', 4392.13, '2024-04-27 21:49:17'),
(21, 'William White', 2938.65, '2024-03-25 21:49:17'),
(22, 'Jane Smith', 102.37, '2024-01-07 21:49:17'),
(23, 'Liam Jackson', 3193.19, '2023-12-11 21:49:17'),
(24, 'Emma Davis', 3941.97, '2024-01-27 21:49:17'),
(25, 'Robert Brown', 210.0, '2024-03-01 21:49:17'),
(26, 'Jane Harris', 1914.89, '2023-11-16 21:49:17'),
(27, 'Isabella Jackson', 3037.68, '2024-05-17 21:49:17'),
(28, 'Ava Miller', 1525.44, '2023-11-03 21:49:17'),
(29, 'Noah Harris', 4860.87, '2024-04-20 21:49:17'),
(30, 'Emma Harris', 3154.15, '2024-05-28 21:49:17'),
(31, 'Michael Brown', 818.76, '2024-10-20 21:49:17'),
(32, 'Emma Davis', 2906.15, '2024-04-30 21:49:17'),
(33, 'Emily White', 3054.22, '2024-10-22 21:49:17'),
(34, 'Emily White', 2282.51, '2024-10-12 21:49:17'),
(35, 'Emily Johnson', 1643.4, '2023-12-19 21:49:17'),
(36, 'William Miller', 2445.83, '2024-02-24 21:49:17'),
(37, 'Jane Brown', 3585.86, '2024-10-31 21:49:17'),
(38, 'James Anderson', 1624.41, '2024-03-07 21:49:17'),
(39, 'James Thomas', 1107.73, '2023-12-18 21:49:17'),
(40, 'Michael Anderson', 3827.95, '2023-11-16 21:49:17'),
(41, 'Emily Harris', 1297.48, '2024-06-23 21:49:17'),
(42, 'Isabella Doe', 2046.67, '2024-04-13 21:49:17'),
(43, 'Sophia White', 3019.44, '2024-04-19 21:49:17'),
(44, 'Jane Miller', 572.82, '2024-06-10 21:49:17'),
(45, 'John Thomas', 2627.8, '2024-02-26 21:49:17'),
(46, 'William Taylor', 4770.44, '2024-08-01 21:49:17'),
(47, 'James Anderson', 1043.41, '2024-03-08 21:49:17'),
(48, 'Sophia Smith', 4492.31, '2024-01-02 21:49:17'),
(49, 'Robert Brown', 764.34, '2024-01-01 21:49:17'),
(50, 'Noah Miller', 2847.57, '2024-06-23 21:49:17'),
(51, 'Isabella Anderson', 306.22, '2024-08-06 21:49:17'),
(52, 'Ava Davis', 4869.6, '2024-10-10 21:49:17'),
(53, 'Olivia White', 924.77, '2024-06-14 21:49:17'),
(54, 'Emily Taylor', 3726.24, '2023-11-04 21:49:17'),
(55, 'Emma Thomas', 3019.91, '2024-04-21 21:49:17'),
(56, 'Jane Jackson', 1014.08, '2024-07-23 21:49:17'),
(57, 'Sophia White', 668.75, '2024-02-23 21:49:17'),
(58, 'Olivia Harris', 3671.33, '2024-01-16 21:49:17'),
(59, 'Jane Smith', 2412.97, '2024-10-22 21:49:17'),
(60, 'John Johnson', 2156.76, '2024-10-26 21:49:17'),
(61, 'Jane Brown', 1372.45, '2024-09-19 21:49:17'),
(62, 'Robert Miller', 3615.46, '2023-12-16 21:49:17'),
(63, 'Michael Johnson', 1917.91, '2024-07-12 21:49:17'),
(64, 'Emily Smith', 3039.89, '2024-04-25 21:49:17'),
(65, 'Emma Miller', 964.71, '2024-05-01 21:49:17'),
(66, 'Olivia Harris', 126.74, '2024-05-26 21:49:17'),
(67, 'John Harris', 3092.04, '2024-09-10 21:49:17'),
(68, 'Emily Garcia', 2118.69, '2023-11-03 21:49:17'),
(69, 'William Smith', 4952.36, '2024-08-28 21:49:17'),
(70, 'Jane Jackson', 767.94, '2024-07-01 21:49:17'),
(71, 'Emma Miller', 4942.53, '2024-02-05 21:49:17'),
(72, 'Liam Brown', 1290.75, '2024-09-29 21:49:17'),
(73, 'William Anderson', 3661.63, '2023-12-19 21:49:17'),
(74, 'Robert Martinez', 1331.72, '2023-11-27 21:49:17'),
(75, 'Noah Brown', 4622.57, '2023-11-29 21:49:17'),
(76, 'Emily Johnson', 1495.98, '2024-08-02 21:49:17'),
(77, 'Emma Thomas', 605.65, '2024-10-20 21:49:17'),
(78, 'Olivia Thomas', 2624.24, '2023-12-21 21:49:17'),
(79, 'Robert Davis', 3496.96, '2024-03-23 21:49:17'),
(80, 'Robert Thomas', 298.69, '2023-11-11 21:49:17'),
(81, 'Olivia Taylor', 558.61, '2024-07-13 21:49:17'),
(82, 'Noah Taylor', 4212.01, '2024-09-12 21:49:17'),
(83, 'Michael White', 3225.22, '2023-12-30 21:49:17'),
(84, 'Robert Jackson', 2903.39, '2024-03-18 21:49:17'),
(85, 'William Doe', 4829.03, '2024-03-25 21:49:17'),
(86, 'Emily Jackson', 3705.19, '2024-04-22 21:49:17'),
(87, 'Emily Davis', 3164.56, '2024-09-26 21:49:17'),
(88, 'Ava Smith', 3336.79, '2024-01-09 21:49:17'),
(89, 'Sophia Taylor', 720.62, '2024-09-17 21:49:17'),
(90, 'Emma Martinez', 4935.64, '2024-02-21 21:49:17'),
(91, 'Emma Jackson', 1115.54, '2024-10-07 21:49:17'),
(92, 'Olivia Thomas', 4516.67, '2024-03-06 21:49:17'),
(93, 'Sophia Brown', 1250.66, '2024-06-18 21:49:17'),
(94, 'William Thomas', 3363.18, '2023-11-05 21:49:17'),
(95, 'Ava Garcia', 4665.19, '2024-02-19 21:49:17'),
(96, 'Michael Thomas', 437.63, '2024-07-16 21:49:17'),
(97, 'Liam White', 545.6, '2024-07-18 21:49:17'),
(98, 'Michael Doe', 101.58, '2024-06-29 21:49:17'),
(99, 'John Harris', 4859.66, '2024-04-12 21:49:17'),
(100, 'William Thomas', 1290.51, '2024-04-28 21:49:17'),
(101, 'Michael Miller', 420.07, '2024-09-10 21:49:17'),
(102, 'Sophia Taylor', 3907.63, '2024-08-22 21:49:17'),
(103, 'Isabella Johnson', 3317.29, '2024-01-30 21:49:17'),
(104, 'Noah Harris', 4064.94, '2024-10-15 21:49:17'),
(105, 'Liam Doe', 4502.17, '2024-08-23 21:49:17'),
(106, 'William Garcia', 4528.63, '2024-06-20 21:49:17'),
(107, 'Jane Brown', 55.46, '2024-06-15 21:49:17'),
(108, 'Jane Johnson', 3631.19, '2023-11-12 21:49:17'),
(109, 'James White', 467.31, '2024-04-07 21:49:17'),
(110, 'Liam Brown', 1961.88, '2024-08-29 21:49:17'),
(111, 'Michael Garcia', 3144.53, '2023-12-17 21:49:17'),
(112, 'James Garcia', 1974.05, '2024-01-17 21:49:17'),
(113, 'Liam Brown', 1369.85, '2024-10-21 21:49:17'),
(114, 'Liam Harris', 67.75, '2024-05-10 21:49:17'),
(115, 'Liam Johnson', 3887.59, '2024-10-06 21:49:17'),
(116, 'Emily Thomas', 3743.87, '2024-09-12 21:49:17'),
(117, 'Emily Taylor', 475.65, '2024-04-27 21:49:17'),
(118, 'Sophia Jackson', 842.67, '2024-03-17 21:49:17'),
(119, 'Michael Harris', 3175.75, '2024-03-31 21:49:17'),
(120, 'William Taylor', 410.82, '2024-01-03 21:49:17'),
(121, 'James Smith', 4755.89, '2024-10-23 21:49:17'),
(122, 'Ava Anderson', 504.89, '2024-05-19 21:49:17'),
(123, 'Jane Anderson', 3662.88, '2024-03-25 21:49:17'),
(124, 'Robert Garcia', 532.57, '2024-08-20 21:49:17'),
(125, 'Michael Martinez', 4177.24, '2024-02-22 21:49:17'),
(126, 'Emily Thomas', 591.2, '2023-12-03 21:49:17'),
(127, 'Isabella Jackson', 4079.26, '2024-07-04 21:49:17'),
(128, 'Jane Doe', 4923.09, '2024-05-07 21:49:17'),
(129, 'John Johnson', 4482.71, '2024-05-28 21:49:17'),
(130, 'Emily Brown', 3813.46, '2024-03-21 21:49:17'),
(131, 'John Harris', 2578.45, '2024-10-06 21:49:17'),
(132, 'Jane Brown', 3062.19, '2024-06-24 21:49:17'),
(133, 'Olivia Martinez', 2141.35, '2024-02-20 21:49:17'),
(134, 'Noah Davis', 4265.71, '2024-04-19 21:49:17'),
(135, 'Ava White', 2399.69, '2024-01-04 21:49:17'),
(136, 'Emma Jackson', 588.27, '2024-06-30 21:49:17'),
(137, 'Liam Davis', 291.92, '2024-10-12 21:49:17'),
(138, 'Sophia Thomas', 2013.49, '2024-03-24 21:49:17'),
(139, 'Michael Smith', 2670.69, '2023-11-16 21:49:17'),
(140, 'James Garcia', 141.9, '2024-04-16 21:49:17'),
(141, 'John Doe', 4705.7, '2024-07-22 21:49:17'),
(142, 'Noah Smith', 352.98, '2024-08-20 21:49:17'),
(143, 'Noah Davis', 3499.12, '2024-02-06 21:49:17'),
(144, 'John Brown', 1068.4, '2023-12-29 21:49:17'),
(145, 'Emma Smith', 1968.72, '2024-01-28 21:49:17'),
(146, 'Ava Garcia', 3145.14, '2024-10-22 21:49:17'),
(147, 'Olivia Johnson', 3862.99, '2024-01-24 21:49:17'),
(148, 'Jane Doe', 805.41, '2024-05-15 21:49:17'),
(149, 'Jane Jackson', 110.9, '2024-07-05 21:49:17'),
(150, 'Isabella Taylor', 3921.02, '2024-07-20 21:49:17'),
(151, 'Emma Garcia', 4512.75, '2024-05-31 21:49:17'),
(152, 'James Miller', 1875.57, '2024-03-16 21:49:17'),
(153, 'Emily Miller', 2235.83, '2024-01-28 21:49:17'),
(154, 'James Harris', 1589.53, '2024-06-29 21:49:17'),
(155, 'Isabella Anderson', 2084.55, '2024-07-13 21:49:17'),
(156, 'Olivia Thomas', 3592.48, '2024-05-04 21:49:17'),
(157, 'Noah Anderson', 301.32, '2024-05-08 21:49:17'),
(158, 'Michael Garcia', 156.21, '2024-04-02 21:49:17'),
(159, 'Emma Garcia', 4775.41, '2024-03-09 21:49:17'),
(160, 'William Thomas', 1057.81, '2024-06-16 21:49:17'),
(161, 'James White', 3832.05, '2024-05-08 21:49:17'),
(162, 'Sophia White', 2353.01, '2024-01-26 21:49:17'),
(163, 'Robert Garcia', 1122.73, '2024-10-05 21:49:17'),
(164, 'Emma Garcia', 3981.64, '2024-08-19 21:49:17'),
(165, 'Robert Davis', 3021.97, '2024-01-03 21:49:17'),
(166, 'Liam White', 1484.92, '2023-11-14 21:49:17'),
(167, 'Liam Miller', 313.04, '2024-01-15 21:49:17'),
(168, 'Noah White', 1650.04, '2024-05-26 21:49:17'),
(169, 'Olivia Brown', 4095.17, '2024-07-30 21:49:17'),
(170, 'Jane Johnson', 2247.03, '2024-10-02 21:49:17'),
(171, 'Olivia Anderson', 813.25, '2024-08-03 21:49:17'),
(172, 'Emily White', 1448.08, '2023-12-18 21:49:17'),
(173, 'Emily Johnson', 2540.6, '2023-12-07 21:49:17'),
(174, 'Isabella Johnson', 1531.14, '2024-02-29 21:49:17'),
(175, 'Emma Brown', 878.94, '2024-02-03 21:49:17'),
(176, 'Sophia Jackson', 1947.05, '2024-08-03 21:49:17'),
(177, 'Noah Doe', 4634.66, '2024-05-12 21:49:17'),
(178, 'Isabella Miller', 1524.01, '2024-02-10 21:49:17'),
(179, 'Michael Martinez', 3098.0, '2024-10-26 21:49:17'),
(180, 'Ava Thomas', 2955.83, '2024-02-08 21:49:17'),
(181, 'James Miller', 2339.82, '2024-05-23 21:49:17'),
(182, 'William Martinez', 2048.37, '2024-02-14 21:49:17'),
(183, 'Olivia Doe', 2873.52, '2024-02-08 21:49:17'),
(184, 'James Anderson', 675.02, '2023-12-08 21:49:17'),
(185, 'John Davis', 1184.27, '2024-09-13 21:49:17'),
(186, 'Noah Brown', 2928.19, '2024-04-27 21:49:17'),
(187, 'Robert White', 2735.56, '2023-11-04 21:49:17'),
(188, 'Emma Brown', 4116.43, '2023-11-10 21:49:17'),
(189, 'Sophia Brown', 1577.14, '2024-04-12 21:49:17'),
(190, 'Emma Davis', 904.27, '2023-12-02 21:49:17'),
(191, 'Liam Brown', 3157.13, '2024-09-03 21:49:17'),
(192, 'Isabella Harris', 338.87, '2024-01-13 21:49:17'),
(193, 'Jane Garcia', 4677.58, '2024-03-25 21:49:17'),
(194, 'Emily Jackson', 3716.43, '2024-03-11 21:49:17'),
(195, 'Isabella Taylor', 4578.55, '2024-01-25 21:49:17'),
(196, 'William White', 2863.42, '2024-10-17 21:49:17'),
(197, 'John Thomas', 959.04, '2024-05-21 21:49:17'),
(198, 'Ava Miller', 3842.97, '2024-08-11 21:49:17'),
(199, 'Isabella Jackson', 4698.04, '2024-08-14 21:49:17'),
(200, 'William Anderson', 4187.1, '2024-08-02 21:49:17'),
(201, 'Emma Brown', 2882.09, '2024-02-19 21:49:17'),
(202, 'Emily Miller', 1269.1, '2024-09-18 21:49:17'),
(203, 'Jane Davis', 4938.88, '2024-10-05 21:49:17'),
(204, 'William Martinez', 173.79, '2024-09-01 21:49:17'),
(205, 'Ava Johnson', 3143.51, '2024-02-24 21:49:17'),
(206, 'Noah Davis', 3958.13, '2024-01-25 21:49:17'),
(207, 'Emma Thomas', 849.65, '2024-08-22 21:49:17'),
(208, 'Sophia Anderson', 1368.14, '2024-02-28 21:49:17'),
(209, 'Noah White', 3528.0, '2024-07-13 21:49:17'),
(210, 'Sophia Martinez', 3111.23, '2023-12-03 21:49:17'),
(211, 'Olivia Davis', 677.52, '2024-02-16 21:49:17'),
(212, 'Sophia Garcia', 807.35, '2024-05-12 21:49:17'),
(213, 'Emma Taylor', 3611.92, '2024-05-26 21:49:17'),
(214, 'Ava Anderson', 1889.0, '2023-12-15 21:49:17'),
(215, 'Robert Doe', 1236.33, '2024-06-26 21:49:17'),
(216, 'Emily Johnson', 4706.51, '2024-02-25 21:49:17'),
(217, 'William Thomas', 1964.87, '2023-11-13 21:49:17'),
(218, 'Michael Taylor', 654.41, '2023-12-23 21:49:17'),
(219, 'Robert Martinez', 4463.95, '2024-07-25 21:49:17'),
(220, 'Noah Taylor', 1480.9, '2024-06-06 21:49:17'),
(221, 'Ava Garcia', 1746.32, '2024-05-20 21:49:17'),
(222, 'Emily Davis', 2041.04, '2024-01-17 21:49:17'),
(223, 'Emma Miller', 788.59, '2024-01-05 21:49:17'),
(224, 'Ava Garcia', 1844.97, '2024-08-17 21:49:17'),
(225, 'Isabella Brown', 3671.91, '2024-03-16 21:49:17'),
(226, 'Olivia Johnson', 4844.34, '2024-01-17 21:49:17'),
(227, 'Robert Miller', 1499.21, '2024-03-21 21:49:17'),
(228, 'Robert Anderson', 4016.4, '2024-08-23 21:49:17'),
(229, 'Emily Taylor', 1411.78, '2024-08-11 21:49:17'),
(230, 'Ava Jackson', 4687.17, '2023-12-15 21:49:17'),
(231, 'Sophia Thomas', 1516.54, '2024-07-03 21:49:17'),
(232, 'Isabella Davis', 3737.8, '2024-04-09 21:49:17'),
(233, 'Noah Miller', 3937.99, '2023-11-04 21:49:17'),
(234, 'Ava Martinez', 2343.23, '2024-06-11 21:49:17'),
(235, 'Liam Davis', 2303.82, '2024-09-25 21:49:17'),
(236, 'Isabella Davis', 2018.19, '2024-05-22 21:49:17'),
(237, 'Liam Davis', 1561.19, '2024-07-16 21:49:17'),
(238, 'John Davis', 904.95, '2024-02-11 21:49:17'),
(239, 'Noah Martinez', 3856.69, '2024-02-09 21:49:17'),
(240, 'Isabella Martinez', 1411.6, '2024-01-16 21:49:17'),
(241, 'Noah Jackson', 2110.98, '2024-03-06 21:49:17'),
(242, 'Noah White', 2324.24, '2024-10-14 21:49:17'),
(243, 'Olivia Johnson', 4006.26, '2024-01-29 21:49:17'),
(244, 'Robert Doe', 2741.06, '2024-08-24 21:49:17'),
(245, 'Olivia Garcia', 4567.82, '2024-06-21 21:49:17'),
(246, 'Noah Jackson', 2343.57, '2024-09-21 21:49:17'),
(247, 'Michael Taylor', 1735.58, '2024-08-29 21:49:17'),
(248, 'Noah Taylor', 878.04, '2024-10-29 21:49:17'),
(249, 'James Johnson', 4390.74, '2024-10-13 21:49:17'),
(250, 'William Thomas', 2107.04, '2024-01-19 21:49:17'),
(251, 'Jane Davis', 2361.95, '2024-06-22 21:49:17'),
(252, 'Liam Taylor', 3967.33, '2023-12-08 21:49:17'),
(253, 'William Miller', 1615.98, '2024-09-22 21:49:17'),
(254, 'Robert Jackson', 108.7, '2024-10-13 21:49:17'),
(255, 'James Anderson', 3067.01, '2024-03-31 21:49:17'),
(256, 'James Harris', 425.81, '2024-09-06 21:49:17'),
(257, 'Noah Smith', 2497.56, '2024-06-23 21:49:17'),
(258, 'Sophia Harris', 472.37, '2024-07-09 21:49:17'),
(259, 'Isabella Anderson', 4902.61, '2023-12-26 21:49:17'),
(260, 'James Taylor', 4935.21, '2024-06-07 21:49:17'),
(261, 'Emily Miller', 3222.85, '2024-02-13 21:49:17'),
(262, 'Jane Miller', 1801.42, '2023-11-30 21:49:17'),
(263, 'Noah Johnson', 2412.12, '2024-10-30 21:49:17'),
(264, 'James Garcia', 2709.7, '2024-05-01 21:49:17'),
(265, 'Noah Anderson', 3160.55, '2024-10-09 21:49:17'),
(266, 'Jane Thomas', 2922.72, '2024-01-26 21:49:17'),
(267, 'Emma Anderson', 3980.53, '2023-11-19 21:49:17'),
(268, 'Emily Taylor', 3701.87, '2024-07-13 21:49:17'),
(269, 'Robert Jackson', 4796.25, '2024-08-21 21:49:17'),
(270, 'Ava Smith', 3435.36, '2024-05-07 21:49:17'),
(271, 'John Miller', 3033.82, '2024-06-29 21:49:17'),
(272, 'Noah Thomas', 1713.76, '2024-01-16 21:49:17'),
(273, 'Emma Miller', 3888.25, '2024-05-07 21:49:17'),
(274, 'William Martinez', 680.0, '2024-08-16 21:49:17'),
(275, 'Robert Doe', 4660.26, '2024-03-07 21:49:17'),
(276, 'Ava Martinez', 2524.32, '2024-06-27 21:49:17'),
(277, 'Emily Anderson', 1795.34, '2023-11-24 21:49:17'),
(278, 'Michael Miller', 2975.31, '2024-07-13 21:49:17'),
(279, 'Emily Davis', 1404.22, '2024-03-01 21:49:17'),
(280, 'Sophia Smith', 1617.46, '2024-06-17 21:49:17'),
(281, 'Emily Smith', 3284.34, '2024-10-16 21:49:17'),
(282, 'Sophia Miller', 4043.65, '2024-05-14 21:49:17'),
(283, 'Emily White', 3465.98, '2023-12-09 21:49:17'),
(284, 'Olivia Smith', 386.59, '2024-10-14 21:49:17'),
(285, 'Ava Anderson', 1030.28, '2024-09-03 21:49:17'),
(286, 'Robert Davis', 2631.07, '2024-07-22 21:49:17'),
(287, 'Michael Doe', 4986.61, '2024-08-07 21:49:17'),
(288, 'Emily Harris', 533.04, '2024-05-19 21:49:17'),
(289, 'Sophia Thomas', 2122.91, '2024-06-26 21:49:17'),
(290, 'William Jackson', 2546.3, '2023-12-09 21:49:17'),
(291, 'Olivia Taylor', 930.76, '2024-10-09 21:49:17'),
(292, 'Emma Johnson', 484.42, '2024-09-20 21:49:17'),
(293, 'Sophia Brown', 2241.73, '2024-10-03 21:49:17'),
(294, 'Emily Davis', 1244.66, '2024-10-09 21:49:17'),
(295, 'Isabella Davis', 1219.75, '2024-04-27 21:49:17'),
(296, 'Emily Anderson', 1983.25, '2024-01-06 21:49:17'),
(297, 'Sophia Thomas', 3126.64, '2024-02-06 21:49:17'),
(298, 'James Davis', 2302.9, '2024-03-11 21:49:17'),
(299, 'Emma Anderson', 3174.51, '2024-06-02 21:49:17'),
(300, 'Sophia Garcia', 4435.33, '2023-12-04 21:49:17'),
(301, 'Isabella Martinez', 3238.67, '2024-02-03 21:49:17'),
(302, 'James Miller', 2835.06, '2024-09-13 21:49:17'),
(303, 'Emma Brown', 3208.13, '2023-12-26 21:49:17'),
(304, 'Emma Thomas', 3810.54, '2024-10-17 21:49:17'),
(305, 'Isabella Davis', 1883.86, '2024-03-09 21:49:17'),
(306, 'Liam Martinez', 3354.5, '2023-11-28 21:49:17'),
(307, 'Noah Brown', 4784.38, '2024-04-10 21:49:17'),
(308, 'Robert Doe', 2159.85, '2024-04-18 21:49:17'),
(309, 'Robert Brown', 4431.75, '2024-10-10 21:49:17'),
(310, 'William Harris', 4429.49, '2024-07-01 21:49:17'),
(311, 'Emily White', 1724.69, '2024-01-07 21:49:17'),
(312, 'Emily Miller', 1184.07, '2023-12-15 21:49:17'),
(313, 'Robert Smith', 2253.55, '2024-04-17 21:49:17'),
(314, 'Emily White', 1650.12, '2024-07-10 21:49:17'),
(315, 'Ava Garcia', 3948.96, '2024-09-11 21:49:17'),
(316, 'Ava Doe', 4666.68, '2023-11-09 21:49:17'),
(317, 'Sophia Harris', 2820.72, '2024-04-18 21:49:17'),
(318, 'John White', 3347.97, '2024-07-21 21:49:17'),
(319, 'John White', 2387.62, '2024-06-20 21:49:17'),
(320, 'Isabella Harris', 3496.16, '2024-05-13 21:49:17'),
(321, 'Noah Smith', 55.19, '2023-11-04 21:49:17'),
(322, 'Emma Anderson', 1228.54, '2024-04-11 21:49:17'),
(323, 'Michael Anderson', 2921.69, '2024-05-05 21:49:17'),
(324, 'Emily Garcia', 1582.67, '2024-11-02 21:49:17'),
(325, 'Robert Taylor', 2225.97, '2024-04-14 21:49:17'),
(326, 'Emma Smith', 123.08, '2024-02-16 21:49:17'),
(327, 'James Davis', 410.02, '2024-10-04 21:49:17'),
(328, 'Michael White', 393.91, '2024-08-14 21:49:17'),
(329, 'Olivia Martinez', 4441.83, '2023-12-05 21:49:17'),
(330, 'Emily Smith', 1211.88, '2024-01-21 21:49:17'),
(331, 'Isabella Anderson', 1184.25, '2024-09-15 21:49:17'),
(332, 'James Johnson', 2554.01, '2024-08-20 21:49:17'),
(333, 'Michael Martinez', 2992.78, '2024-06-16 21:49:17'),
(334, 'Sophia Davis', 1503.7, '2024-07-12 21:49:17'),
(335, 'Isabella Jackson', 1408.76, '2024-01-20 21:49:17'),
(336, 'Robert Martinez', 1264.35, '2024-06-26 21:49:17'),
(337, 'Emma Doe', 514.79, '2024-01-10 21:49:17'),
(338, 'Jane Brown', 718.86, '2024-03-01 21:49:17'),
(339, 'Robert Thomas', 1381.94, '2024-08-02 21:49:17'),
(340, 'Robert Davis', 2348.42, '2023-11-09 21:49:17'),
(341, 'Ava Thomas', 2592.5, '2024-07-31 21:49:17'),
(342, 'Noah White', 4659.93, '2024-08-11 21:49:17'),
(343, 'Sophia Miller', 3062.36, '2024-09-20 21:49:17'),
(344, 'John Jackson', 2334.18, '2024-05-02 21:49:17'),
(345, 'Robert Taylor', 2960.46, '2024-02-04 21:49:17'),
(346, 'Emily Miller', 4763.33, '2024-05-18 21:49:17'),
(347, 'Emily Anderson', 585.84, '2024-02-24 21:49:17'),
(348, 'Olivia Smith', 3033.1, '2024-06-14 21:49:17'),
(349, 'Michael Thomas', 3494.24, '2024-06-19 21:49:17'),
(350, 'Noah Jackson', 2947.62, '2024-04-29 21:49:17'),
(351, 'John Miller', 3512.99, '2023-11-24 21:49:17'),
(352, 'Ava Doe', 4902.2, '2023-12-05 21:49:17'),
(353, 'Ava Thomas', 3731.11, '2024-09-24 21:49:17'),
(354, 'Jane Doe', 1408.91, '2024-07-18 21:49:17'),
(355, 'Michael Brown', 4599.84, '2023-12-05 21:49:17'),
(356, 'James Harris', 735.05, '2024-06-10 21:49:17'),
(357, 'Sophia Anderson', 117.01, '2024-06-15 21:49:17'),
(358, 'William Miller', 4655.93, '2024-03-04 21:49:17'),
(359, 'Emily Smith', 2977.36, '2024-05-09 21:49:17'),
(360, 'Emma Harris', 4564.43, '2024-06-06 21:49:17'),
(361, 'Emily Garcia', 1516.69, '2024-05-01 21:49:17'),
(362, 'Olivia Jackson', 3677.03, '2023-11-27 21:49:17'),
(363, 'James Smith', 4537.28, '2024-08-22 21:49:17'),
(364, 'Robert Miller', 634.72, '2024-04-20 21:49:17'),
(365, 'Noah Anderson', 4206.98, '2024-08-18 21:49:17'),
(366, 'Robert Miller', 580.63, '2024-02-10 21:49:17'),
(367, 'Emma Anderson', 1555.77, '2024-01-03 21:49:17'),
(368, 'John Garcia', 1708.37, '2024-03-27 21:49:17'),
(369, 'John Johnson', 3491.39, '2024-03-06 21:49:17'),
(370, 'Noah Anderson', 4055.09, '2024-09-24 21:49:17'),
(371, 'Michael Garcia', 3918.9, '2024-06-18 21:49:17'),
(372, 'Emma White', 4839.83, '2024-02-24 21:49:17'),
(373, 'Michael White', 4622.78, '2024-08-07 21:49:17'),
(374, 'James Anderson', 701.73, '2024-07-02 21:49:17'),
(375, 'James Thomas', 2814.14, '2024-04-12 21:49:17'),
(376, 'Liam Taylor', 3385.12, '2024-03-03 21:49:17'),
(377, 'James Jackson', 239.61, '2023-11-15 21:49:17'),
(378, 'Isabella Taylor', 4731.33, '2024-07-07 21:49:17'),
(379, 'Liam Brown', 251.02, '2024-01-04 21:49:17'),
(380, 'Isabella Davis', 3331.59, '2024-04-28 21:49:17'),
(381, 'Michael Martinez', 2116.06, '2024-06-17 21:49:17'),
(382, 'Robert Anderson', 4940.59, '2023-11-10 21:49:17'),
(383, 'Emma Harris', 2157.27, '2024-04-29 21:49:17'),
(384, 'James Brown', 716.54, '2024-08-27 21:49:17'),
(385, 'Jane Miller', 1016.62, '2024-01-05 21:49:17'),
(386, 'James Harris', 1200.28, '2024-09-17 21:49:17'),
(387, 'William Garcia', 4532.02, '2024-01-21 21:49:17'),
(388, 'Olivia Doe', 329.67, '2024-04-25 21:49:17'),
(389, 'Emma Thomas', 782.26, '2024-06-01 21:49:17'),
(390, 'Sophia Garcia', 66.53, '2024-02-12 21:49:17'),
(391, 'William Thomas', 4541.63, '2024-04-02 21:49:17'),
(392, 'Robert Johnson', 3739.8, '2023-12-16 21:49:17'),
(393, 'James Thomas', 2124.99, '2024-10-01 21:49:17'),
(394, 'James Miller', 4444.88, '2024-05-12 21:49:17'),
(395, 'James Garcia', 3698.67, '2024-04-08 21:49:17'),
(396, 'Emma Miller', 4799.04, '2024-08-12 21:49:17'),
(397, 'Noah Jackson', 217.02, '2024-10-13 21:49:17'),
(398, 'Isabella Martinez', 3100.87, '2024-07-11 21:49:17'),
(399, 'Olivia Brown', 2017.57, '2024-05-03 21:49:17'),
(400, 'Liam Garcia', 1184.37, '2023-11-30 21:49:17'),
(401, 'Sophia White', 1019.71, '2023-12-22 21:49:17'),
(402, 'Ava Harris', 2582.0, '2024-01-30 21:49:17'),
(403, 'Liam Jackson', 3939.36, '2023-12-11 21:49:17'),
(404, 'James Harris', 669.56, '2024-04-24 21:49:17'),
(405, 'Emily Davis', 3291.45, '2024-03-09 21:49:17'),
(406, 'Michael Thomas', 4279.13, '2024-01-26 21:49:17'),
(407, 'Emily Doe', 3548.76, '2024-05-19 21:49:17'),
(408, 'Liam White', 143.7, '2024-01-04 21:49:17'),
(409, 'Olivia Thomas', 311.45, '2024-10-15 21:49:17'),
(410, 'Emily Doe', 3486.73, '2024-05-02 21:49:17'),
(411, 'Ava Jackson', 990.86, '2024-04-28 21:49:17'),
(412, 'Sophia Brown', 3291.36, '2024-03-13 21:49:17'),
(413, 'Robert Taylor', 2285.93, '2024-04-15 21:49:17'),
(414, 'Robert Brown', 1395.54, '2024-05-06 21:49:17'),
(415, 'William Harris', 4902.23, '2024-02-29 21:49:17'),
(416, 'Robert Brown', 3712.31, '2024-03-10 21:49:17'),
(417, 'Olivia Miller', 3695.96, '2024-01-30 21:49:17'),
(418, 'Ava Smith', 4426.84, '2024-06-02 21:49:17'),
(419, 'Jane Smith', 4127.62, '2024-03-30 21:49:17'),
(420, 'Sophia Jackson', 1360.55, '2024-06-10 21:49:17'),
(421, 'James Jackson', 2995.4, '2024-08-18 21:49:17'),
(422, 'Michael Davis', 53.74, '2024-08-26 21:49:17'),
(423, 'Michael Miller', 3890.86, '2023-12-27 21:49:17'),
(424, 'Ava Garcia', 3203.67, '2023-11-06 21:49:17'),
(425, 'Liam Smith', 3504.71, '2024-08-14 21:49:17'),
(426, 'Noah Jackson', 4287.07, '2024-08-11 21:49:17'),
(427, 'Noah Jackson', 2506.35, '2024-08-19 21:49:17'),
(428, 'Michael Martinez', 2836.99, '2024-01-12 21:49:17'),
(429, 'Sophia Thomas', 2535.06, '2024-06-09 21:49:17'),
(430, 'Robert Brown', 144.23, '2024-07-14 21:49:17'),
(431, 'James Martinez', 4661.08, '2024-09-17 21:49:17'),
(432, 'Ava Harris', 3477.29, '2024-09-28 21:49:17'),
(433, 'Ava Smith', 4439.51, '2024-10-21 21:49:17'),
(434, 'John Martinez', 772.84, '2024-03-31 21:49:17'),
(435, 'Emily Davis', 4397.64, '2024-10-08 21:49:17'),
(436, 'Sophia Martinez', 2479.43, '2023-12-26 21:49:17'),
(437, 'James Harris', 1869.43, '2024-01-21 21:49:17'),
(438, 'Robert Miller', 4749.35, '2024-02-08 21:49:17'),
(439, 'Liam Brown', 4725.84, '2024-07-18 21:49:17'),
(440, 'William Brown', 4928.96, '2024-09-16 21:49:17'),
(441, 'Robert Thomas', 4945.39, '2023-11-22 21:49:17'),
(442, 'Ava Johnson', 4787.95, '2024-04-05 21:49:17'),
(443, 'Emma Miller', 538.27, '2024-04-02 21:49:17'),
(444, 'James Thomas', 538.16, '2024-09-26 21:49:17'),
(445, 'William Harris', 4807.83, '2024-10-13 21:49:17'),
(446, 'Robert Johnson', 2087.2, '2023-11-21 21:49:17'),
(447, 'John Davis', 4451.78, '2024-05-04 21:49:17'),
(448, 'Noah Anderson', 1999.34, '2024-06-14 21:49:17'),
(449, 'Jane Smith', 671.15, '2024-05-04 21:49:17'),
(450, 'Jane White', 2759.25, '2024-03-17 21:49:17'),
(451, 'John Miller', 2636.0, '2024-02-13 21:49:17'),
(452, 'Isabella Johnson', 1640.12, '2024-03-21 21:49:17'),
(453, 'Olivia Smith', 3911.73, '2024-07-02 21:49:17'),
(454, 'James Brown', 3148.56, '2023-12-12 21:49:17'),
(455, 'James Smith', 786.71, '2024-01-04 21:49:17'),
(456, 'Emma Johnson', 162.63, '2024-03-14 21:49:17'),
(457, 'Michael Harris', 4021.11, '2024-08-30 21:49:17'),
(458, 'William Taylor', 2089.2, '2024-09-21 21:49:17'),
(459, 'Liam White', 4218.59, '2024-07-16 21:49:17'),
(460, 'Emily Miller', 428.61, '2024-08-26 21:49:17'),
(461, 'Liam Martinez', 3361.04, '2023-11-17 21:49:17'),
(462, 'Robert Garcia', 4955.29, '2024-10-10 21:49:17'),
(463, 'John Taylor', 4270.56, '2024-02-27 21:49:17'),
(464, 'Liam Anderson', 1670.06, '2024-08-30 21:49:17'),
(465, 'Robert Miller', 4371.34, '2024-08-15 21:49:17'),
(466, 'Sophia Smith', 3546.03, '2024-03-15 21:49:17'),
(467, 'Michael Thomas', 1879.28, '2023-11-13 21:49:17'),
(468, 'Michael Thomas', 642.32, '2024-01-13 21:49:17'),
(469, 'Liam Davis', 2552.42, '2024-07-28 21:49:17'),
(470, 'Liam Harris', 713.16, '2024-04-30 21:49:17'),
(471, 'Emily Miller', 3136.08, '2024-04-15 21:49:17'),
(472, 'Michael Smith', 2030.44, '2024-05-07 21:49:17'),
(473, 'Liam Jackson', 1618.15, '2024-10-21 21:49:17'),
(474, 'Jane Brown', 860.03, '2023-11-14 21:49:17'),
(475, 'William Miller', 150.8, '2023-12-01 21:49:17'),
(476, 'Liam Martinez', 2305.53, '2024-09-06 21:49:17'),
(477, 'Michael Jackson', 2207.14, '2024-08-09 21:49:17'),
(478, 'Liam White', 4500.78, '2024-09-16 21:49:17'),
(479, 'Liam Anderson', 3009.27, '2024-05-26 21:49:17'),
(480, 'Ava Brown', 4036.59, '2024-05-03 21:49:17'),
(481, 'William Davis', 2179.82, '2024-05-14 21:49:17'),
(482, 'James Anderson', 956.89, '2024-01-18 21:49:17'),
(483, 'James Doe', 462.77, '2024-01-01 21:49:17'),
(484, 'William Miller', 1499.1, '2024-01-26 21:49:17'),
(485, 'James Thomas', 4673.88, '2024-01-22 21:49:17'),
(486, 'Emma Jackson', 624.14, '2024-02-14 21:49:17'),
(487, 'Emma Thomas', 174.65, '2024-09-06 21:49:17'),
(488, 'Ava Taylor', 2542.29, '2024-08-28 21:49:17'),
(489, 'Emily Brown', 1011.7, '2024-10-07 21:49:17'),
(490, 'Liam Taylor', 450.38, '2024-09-27 21:49:17'),
(491, 'Noah Brown', 2149.76, '2024-06-08 21:49:17'),
(492, 'Emily Miller', 2807.91, '2024-10-14 21:49:17'),
(493, 'Jane Johnson', 4278.79, '2024-08-23 21:49:17'),
(494, 'Sophia Smith', 2434.57, '2024-02-10 21:49:17'),
(495, 'John Davis', 3929.69, '2024-01-04 21:49:17'),
(496, 'Michael Johnson', 2471.25, '2024-09-09 21:49:17'),
(497, 'James Miller', 1860.83, '2024-06-17 21:49:17'),
(498, 'Isabella Anderson', 1703.02, '2024-01-20 21:49:17'),
(499, 'John Johnson', 2900.97, '2024-07-22 21:49:17'),
(500, 'Liam Doe', 3071.36, '2024-07-13 21:49:17');