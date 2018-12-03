const std = @import("std");

const W = 1000;
const H = 1000;

pub fn main() void {
    var board = [][W]usize{([]usize{0} ** W)} ** H;

    for (claims) |c| {
        var i: usize = 0;
        while (i < c.w) : (i += 1) {
            var j: usize = 0;
            while (j < c.h) : (j += 1) {
                board[c.x + i][c.y + j] += 1;
            }
        }
    }

    var c: usize = 0;
    var i: usize = 0;
    while (i < W) : (i += 1) {
        var j: usize = 0;
        while (j < H) : (j += 1) {
            if (board[i][j] >= 2) {
                c += 1;
            }
        }
    }

    std.debug.warn("{}\n", c);
}

const Claim = struct {
    x: usize,
    y: usize,
    w: usize,
    h: usize,
};

inline fn C(x: usize, y: usize, w: usize, h: usize) Claim {
    return Claim{ .x = x, .y = y, .w = w, .h = h };
}

const claims = comptime block: {
    @setEvalBranchQuota(10000);

    break :block []Claim{
        C(53, 238, 26, 24), C(134, 11, 27, 12), C(937, 817, 10, 25), C(441, 971, 21, 15),
        C(881, 682, 16, 24), C(769, 699, 18, 26), C(303, 593, 27, 28), C(31, 205, 11, 15),
        C(489, 318, 25, 20), C(948, 659, 16, 10), C(650, 921, 6, 7), C(487, 199, 13, 20),
        C(127, 4, 14, 22), C(797, 94, 23, 26), C(566, 190, 14, 24), C(53, 389, 12, 15),
        C(794, 737, 24, 24), C(439, 810, 11, 22), C(20, 711, 21, 15), C(39, 125, 18, 21),
        C(432, 838, 20, 11), C(192, 497, 29, 10), C(374, 342, 24, 28), C(247, 275, 14, 29),
        C(820, 212, 12, 17), C(731, 966, 22, 24), C(272, 281, 17, 26), C(190, 950, 16, 10),
        C(889, 170, 7, 18), C(422, 962, 19, 27), C(144, 302, 28, 20), C(440, 432, 16, 15),
        C(513, 787, 20, 21), C(127, 358, 18, 15), C(863, 125, 23, 21), C(567, 321, 25, 14),
        C(86, 861, 13, 13), C(667, 335, 13, 17), C(567, 846, 29, 22), C(432, 886, 14, 29),
        C(310, 307, 29, 13), C(734, 281, 28, 28), C(321, 763, 25, 20), C(955, 742, 10, 16),
        C(730, 249, 13, 16), C(952, 461, 16, 28), C(280, 656, 26, 17), C(205, 222, 22, 28),
        C(983, 95, 14, 16), C(365, 915, 6, 4), C(901, 364, 26, 22), C(555, 48, 24, 26),
        C(215, 236, 20, 28), C(316, 671, 24, 16), C(902, 379, 10, 18), C(675, 883, 3, 8),
        C(180, 153, 15, 21), C(627, 566, 29, 20), C(104, 479, 10, 17), C(142, 221, 14, 16),
        C(48, 52, 10, 16), C(754, 552, 16, 29), C(119, 392, 18, 26), C(892, 371, 22, 15),
        C(23, 240, 18, 25), C(781, 333, 12, 18), C(967, 566, 23, 23), C(202, 898, 29, 15),
        C(223, 562, 25, 17), C(737, 748, 25, 11), C(201, 606, 17, 16), C(698, 764, 15, 23),
        C(345, 279, 25, 12), C(679, 450, 28, 22), C(959, 320, 6, 5), C(288, 41, 21, 26),
        C(440, 869, 27, 18), C(758, 558, 22, 29), C(394, 665, 23, 20), C(871, 957, 15, 16),
        C(660, 671, 10, 28), C(173, 971, 10, 17), C(561, 127, 28, 16), C(673, 51, 10, 18),
        C(379, 162, 26, 12), C(320, 873, 19, 15), C(83, 523, 21, 20), C(587, 952, 24, 21),
        C(84, 747, 11, 14), C(256, 212, 19, 28), C(31, 657, 27, 11), C(793, 477, 13, 11),
        C(46, 389, 15, 18), C(671, 964, 26, 23), C(282, 889, 10, 26), C(249, 800, 15, 27),
        C(44, 924, 24, 17), C(347, 892, 11, 21), C(89, 708, 19, 16), C(762, 589, 26, 19),
        C(77, 240, 11, 20), C(729, 381, 18, 14), C(878, 682, 4, 7), C(208, 149, 26, 20),
        C(147, 620, 27, 24), C(546, 473, 18, 23), C(949, 323, 29, 11), C(796, 655, 17, 20),
        C(805, 942, 16, 19), C(441, 734, 24, 13), C(851, 187, 29, 20), C(678, 871, 29, 28),
        C(177, 154, 11, 23), C(762, 649, 24, 20), C(718, 853, 18, 15), C(579, 812, 11, 19),
        C(776, 850, 14, 11), C(71, 295, 27, 13), C(567, 842, 28, 21), C(45, 898, 14, 17),
        C(432, 661, 10, 11), C(263, 561, 17, 17), C(704, 363, 21, 23), C(37, 524, 13, 17),
        C(484, 279, 26, 24), C(104, 323, 23, 21), C(417, 270, 24, 28), C(338, 326, 10, 12),
        C(717, 47, 14, 24), C(959, 425, 19, 25), C(660, 631, 23, 13), C(172, 938, 11, 22),
        C(856, 114, 10, 13), C(497, 476, 22, 11), C(169, 195, 23, 24), C(485, 754, 20, 22),
        C(693, 683, 26, 11), C(278, 304, 22, 18), C(682, 318, 17, 18), C(625, 131, 21, 29),
        C(715, 974, 19, 12), C(193, 217, 26, 14), C(707, 437, 27, 10), C(427, 234, 10, 14),
        C(155, 413, 10, 15), C(961, 551, 13, 28), C(899, 351, 17, 23), C(362, 827, 12, 21),
        C(459, 360, 22, 21), C(564, 194, 17, 22), C(566, 477, 25, 24), C(897, 638, 24, 10),
        C(508, 332, 23, 14), C(826, 884, 10, 24), C(657, 516, 26, 21), C(711, 80, 15, 10),
        C(529, 611, 27, 18), C(292, 596, 20, 23), C(489, 175, 27, 11), C(649, 984, 28, 14),
        C(870, 780, 26, 11), C(920, 374, 13, 25), C(496, 497, 29, 17), C(842, 214, 18, 11),
        C(642, 983, 23, 12), C(377, 832, 27, 18), C(76, 720, 25, 16), C(683, 467, 23, 23),
        C(834, 735, 28, 13), C(795, 441, 5, 4), C(949, 51, 10, 25), C(953, 43, 16, 27),
        C(91, 64, 13, 23), C(156, 966, 20, 20), C(330, 204, 16, 23), C(639, 638, 28, 11),
        C(749, 27, 15, 14), C(830, 253, 26, 21), C(528, 386, 28, 16), C(470, 758, 19, 16),
        C(743, 617, 11, 23), C(367, 495, 29, 20), C(147, 307, 27, 21), C(283, 487, 11, 25),
        C(938, 630, 10, 24), C(278, 374, 24, 27), C(585, 871, 16, 23), C(716, 42, 18, 27),
        C(663, 637, 7, 14), C(599, 543, 14, 19), C(732, 568, 12, 11), C(769, 567, 17, 24),
        C(226, 32, 18, 23), C(334, 85, 17, 23), C(145, 224, 12, 23), C(234, 301, 18, 17),
        C(605, 765, 21, 26), C(890, 639, 27, 10), C(699, 563, 23, 16), C(582, 234, 14, 29),
        C(558, 452, 10, 16), C(668, 589, 16, 18), C(257, 797, 11, 21), C(259, 467, 19, 17),
        C(327, 246, 21, 20), C(826, 871, 18, 24), C(643, 135, 22, 12), C(559, 689, 20, 21),
        C(402, 788, 13, 22), C(110, 195, 18, 13), C(587, 676, 27, 29), C(344, 626, 11, 21),
        C(445, 508, 27, 16), C(450, 817, 25, 17), C(817, 619, 29, 14), C(667, 389, 5, 8),
        C(231, 300, 27, 24), C(181, 391, 16, 20), C(801, 891, 22, 13), C(519, 448, 19, 24),
        C(582, 829, 29, 16), C(376, 916, 17, 19), C(800, 139, 15, 11), C(287, 744, 25, 17),
        C(373, 150, 21, 18), C(478, 389, 28, 22), C(27, 694, 29, 19), C(579, 213, 12, 21),
        C(4, 841, 10, 21), C(612, 448, 15, 13), C(834, 608, 21, 23), C(744, 219, 19, 16),
        C(332, 920, 17, 13), C(616, 226, 28, 22), C(321, 28, 15, 18), C(569, 491, 25, 20),
        C(702, 366, 17, 17), C(452, 7, 19, 24), C(825, 843, 22, 17), C(743, 64, 17, 18),
        C(444, 595, 19, 10), C(243, 518, 9, 11), C(645, 133, 26, 21), C(802, 899, 10, 25),
        C(964, 270, 25, 24), C(257, 232, 24, 26), C(622, 687, 13, 28), C(32, 248, 28, 18),
        C(306, 502, 24, 27), C(830, 27, 29, 13), C(50, 436, 27, 18), C(366, 330, 23, 18),
        C(594, 708, 19, 14), C(486, 730, 20, 26), C(788, 938, 24, 16), C(15, 667, 17, 15),
        C(976, 404, 19, 13), C(945, 318, 26, 11), C(648, 919, 13, 13), C(721, 625, 27, 22),
        C(166, 113, 24, 11), C(639, 948, 18, 10), C(380, 642, 23, 18), C(425, 869, 21, 15),
        C(560, 201, 18, 14), C(69, 149, 26, 29), C(785, 426, 21, 27), C(642, 643, 20, 29),
        C(763, 542, 28, 19), C(294, 101, 12, 28), C(741, 77, 15, 18), C(898, 378, 11, 19),
        C(359, 421, 17, 10), C(760, 870, 23, 16), C(130, 251, 15, 7), C(816, 183, 22, 14),
        C(375, 695, 23, 24), C(975, 873, 17, 19), C(905, 768, 28, 14), C(797, 939, 15, 26),
        C(80, 757, 17, 13), C(488, 615, 14, 14), C(624, 208, 26, 29), C(500, 410, 21, 27),
        C(810, 733, 27, 10), C(951, 760, 10, 24), C(88, 926, 19, 23), C(613, 780, 28, 10),
        C(52, 750, 29, 21), C(379, 226, 16, 22), C(359, 210, 10, 12), C(783, 504, 26, 29),
        C(653, 931, 23, 27), C(666, 878, 17, 23), C(491, 903, 18, 20), C(269, 207, 22, 17),
        C(380, 507, 13, 18), C(770, 528, 25, 16), C(171, 984, 23, 11), C(313, 24, 28, 28),
        C(510, 890, 28, 27), C(13, 454, 20, 19), C(726, 176, 27, 24), C(631, 807, 13, 12),
        C(951, 68, 4, 16), C(847, 107, 27, 23), C(943, 970, 10, 15), C(322, 10, 10, 26),
        C(664, 677, 25, 10), C(335, 67, 14, 19), C(458, 647, 18, 12), C(664, 35, 20, 27),
        C(158, 46, 18, 29), C(265, 223, 20, 13), C(712, 164, 10, 20), C(724, 225, 10, 15),
        C(267, 500, 18, 10), C(103, 925, 18, 24), C(900, 124, 13, 23), C(32, 414, 19, 11),
        C(535, 326, 21, 19), C(390, 654, 10, 11), C(221, 301, 14, 17), C(576, 576, 15, 17),
        C(538, 701, 13, 19), C(539, 573, 14, 20), C(885, 645, 21, 14), C(155, 192, 20, 24),
        C(151, 16, 13, 25), C(455, 230, 12, 18), C(151, 207, 25, 14), C(102, 608, 23, 17),
        C(710, 521, 21, 17), C(43, 191, 15, 24), C(584, 47, 14, 17), C(708, 46, 29, 12),
        C(882, 866, 21, 3), C(488, 837, 11, 25), C(33, 900, 26, 28), C(188, 155, 27, 26),
        C(623, 409, 20, 18), C(234, 419, 16, 29), C(44, 528, 21, 23), C(476, 32, 15, 17),
        C(487, 402, 13, 18), C(364, 628, 29, 18), C(542, 403, 14, 12), C(251, 534, 19, 16),
        C(836, 651, 13, 29), C(75, 229, 15, 13), C(211, 580, 26, 20), C(818, 220, 28, 20),
        C(705, 694, 27, 24), C(15, 628, 13, 21), C(830, 657, 16, 12), C(732, 841, 21, 22),
        C(741, 559, 15, 23), C(830, 276, 24, 13), C(109, 236, 26, 15), C(895, 520, 10, 17),
        C(378, 240, 20, 29), C(773, 82, 20, 15), C(428, 981, 16, 11), C(218, 772, 25, 20),
        C(158, 920, 29, 25), C(497, 322, 10, 23), C(507, 684, 22, 10), C(425, 549, 17, 23),
        C(833, 865, 15, 24), C(91, 106, 4, 6), C(574, 388, 11, 14), C(583, 814, 11, 14),
        C(184, 389, 15, 22), C(753, 631, 10, 10), C(672, 708, 27, 18), C(835, 112, 18, 14),
        C(845, 177, 28, 29), C(759, 894, 21, 24), C(824, 186, 13, 28), C(336, 558, 22, 16),
        C(112, 358, 13, 27), C(397, 701, 27, 21), C(352, 629, 21, 28), C(872, 764, 17, 20),
        C(592, 655, 25, 22), C(384, 893, 22, 20), C(814, 247, 17, 29), C(793, 429, 7, 11),
        C(453, 510, 17, 12), C(937, 516, 29, 14), C(322, 662, 12, 11), C(542, 242, 24, 28),
        C(272, 372, 28, 13), C(867, 771, 21, 10), C(219, 214, 26, 22), C(445, 594, 25, 12),
        C(905, 346, 13, 17), C(462, 512, 19, 18), C(223, 610, 22, 25), C(617, 681, 17, 15),
        C(874, 18, 15, 21), C(884, 545, 15, 17), C(502, 640, 12, 24), C(245, 958, 29, 23),
        C(818, 689, 22, 23), C(680, 880, 16, 20), C(886, 168, 23, 24), C(78, 492, 27, 10),
        C(535, 461, 22, 23), C(804, 632, 25, 29), C(911, 47, 24, 20), C(24, 59, 29, 13),
        C(176, 925, 18, 22), C(460, 29, 19, 15), C(618, 687, 24, 23), C(251, 381, 21, 17),
        C(822, 658, 27, 24), C(152, 11, 14, 20), C(394, 613, 21, 14), C(148, 146, 19, 14),
        C(840, 15, 25, 25), C(28, 362, 12, 14), C(735, 733, 10, 13), C(361, 912, 26, 12),
        C(787, 866, 16, 25), C(402, 395, 14, 11), C(15, 350, 21, 20), C(37, 241, 25, 10),
        C(83, 104, 18, 13), C(589, 859, 12, 21), C(91, 321, 13, 29), C(699, 533, 19, 22),
        C(334, 641, 27, 14), C(12, 162, 25, 16), C(903, 385, 10, 25), C(91, 33, 17, 29),
        C(668, 797, 12, 16), C(498, 473, 29, 25), C(829, 477, 23, 28), C(949, 443, 19, 24),
        C(657, 387, 26, 14), C(47, 918, 21, 21), C(288, 89, 26, 15), C(902, 437, 25, 22),
        C(253, 818, 26, 20), C(73, 337, 29, 18), C(379, 362, 28, 23), C(659, 85, 13, 18),
        C(505, 165, 12, 22), C(772, 908, 20, 10), C(295, 311, 28, 12), C(150, 321, 17, 14),
        C(66, 921, 22, 24), C(825, 202, 18, 15), C(103, 622, 22, 16), C(195, 513, 18, 21),
        C(903, 781, 24, 13), C(688, 886, 25, 26), C(518, 650, 11, 17), C(810, 863, 23, 20),
        C(493, 172, 17, 12), C(440, 667, 26, 16), C(696, 390, 13, 25), C(116, 547, 18, 10),
        C(953, 894, 10, 10), C(308, 715, 21, 15), C(768, 77, 18, 10), C(605, 478, 24, 24),
        C(403, 471, 21, 28), C(885, 562, 20, 24), C(327, 574, 22, 23), C(295, 376, 20, 23),
        C(887, 864, 17, 12), C(74, 169, 12, 15), C(975, 676, 11, 11), C(951, 303, 12, 13),
        C(715, 252, 19, 13), C(662, 503, 10, 25), C(545, 499, 21, 23), C(494, 623, 13, 28),
        C(333, 123, 27, 22), C(880, 858, 28, 17), C(310, 262, 28, 13), C(487, 905, 20, 18),
        C(500, 502, 22, 10), C(414, 446, 27, 26), C(408, 795, 12, 17), C(759, 365, 15, 14),
        C(853, 838, 29, 15), C(128, 824, 15, 15), C(839, 782, 17, 20), C(674, 664, 20, 28),
        C(285, 199, 29, 10), C(312, 255, 23, 17), C(358, 193, 25, 19), C(568, 566, 7, 11),
        C(670, 315, 16, 27), C(841, 777, 19, 10), C(336, 835, 19, 28), C(248, 596, 17, 20),
        C(971, 945, 28, 13), C(423, 658, 27, 10), C(813, 341, 21, 17), C(568, 196, 18, 25),
        C(27, 627, 23, 13), C(881, 461, 27, 15), C(67, 154, 29, 29), C(114, 911, 27, 24),
        C(711, 138, 24, 29), C(22, 932, 29, 26), C(87, 861, 20, 16), C(179, 161, 5, 5),
        C(746, 882, 25, 22), C(549, 370, 10, 22), C(520, 554, 14, 18), C(157, 863, 18, 10),
        C(802, 878, 13, 14), C(497, 761, 10, 25), C(442, 171, 12, 10), C(844, 821, 12, 24),
        C(504, 658, 17, 10), C(19, 251, 11, 25), C(700, 16, 12, 11), C(466, 774, 19, 29),
        C(766, 828, 19, 25), C(218, 592, 14, 13), C(295, 137, 21, 28), C(507, 567, 28, 11),
        C(99, 635, 11, 19), C(775, 809, 28, 17), C(697, 381, 12, 15), C(40, 707, 14, 25),
        C(631, 786, 10, 23), C(940, 610, 20, 29), C(688, 745, 19, 13), C(647, 152, 29, 23),
        C(370, 815, 29, 21), C(856, 432, 29, 21), C(449, 26, 28, 26), C(196, 498, 27, 28),
        C(131, 358, 10, 14), C(101, 307, 25, 12), C(355, 589, 15, 17), C(214, 569, 18, 24),
        C(625, 709, 25, 22), C(89, 413, 14, 29), C(511, 116, 13, 25), C(536, 444, 10, 16),
        C(736, 190, 19, 13), C(301, 482, 17, 25), C(658, 370, 23, 23), C(862, 732, 23, 29),
        C(34, 668, 14, 16), C(537, 337, 10, 27), C(531, 451, 13, 17), C(278, 58, 19, 16),
        C(761, 793, 25, 17), C(300, 896, 26, 16), C(36, 941, 29, 20), C(619, 141, 20, 10),
        C(56, 897, 22, 11), C(224, 516, 24, 27), C(171, 617, 24, 23), C(453, 40, 29, 19),
        C(406, 762, 13, 22), C(780, 641, 23, 29), C(94, 753, 13, 10), C(876, 680, 10, 12),
        C(243, 669, 13, 17), C(456, 273, 13, 20), C(329, 846, 10, 21), C(769, 898, 3, 16),
        C(420, 323, 25, 22), C(246, 147, 12, 22), C(687, 686, 18, 21), C(520, 914, 17, 24),
        C(956, 711, 10, 23), C(888, 526, 17, 27), C(119, 617, 12, 17), C(892, 223, 28, 17),
        C(113, 372, 14, 11), C(793, 439, 19, 15), C(525, 618, 19, 23), C(107, 462, 29, 16),
        C(118, 140, 12, 13), C(173, 847, 16, 24), C(590, 827, 22, 20), C(303, 301, 19, 16),
        C(426, 248, 11, 15), C(91, 61, 18, 12), C(724, 673, 21, 25), C(384, 905, 11, 21),
        C(777, 215, 24, 14), C(214, 435, 16, 13), C(228, 49, 16, 28), C(882, 655, 26, 12),
        C(445, 716, 18, 27), C(859, 148, 23, 11), C(338, 90, 15, 13), C(794, 710, 17, 26),
        C(284, 767, 29, 16), C(120, 957, 27, 29), C(248, 881, 13, 29), C(106, 209, 19, 27),
        C(814, 755, 15, 29), C(605, 504, 21, 21), C(639, 794, 19, 25), C(219, 14, 21, 23),
        C(273, 490, 13, 12), C(447, 223, 28, 15), C(544, 544, 19, 19), C(842, 596, 10, 22),
        C(726, 818, 14, 11), C(221, 160, 25, 28), C(821, 204, 16, 27), C(689, 874, 14, 26),
        C(905, 601, 12, 22), C(331, 224, 12, 22), C(661, 635, 12, 23), C(124, 336, 24, 23),
        C(214, 252, 10, 26), C(286, 162, 29, 12), C(488, 214, 16, 10), C(567, 255, 20, 14),
        C(518, 118, 18, 28), C(93, 800, 11, 23), C(747, 610, 23, 27), C(749, 196, 29, 25),
        C(575, 613, 15, 29), C(266, 577, 11, 21), C(748, 796, 18, 21), C(380, 977, 21, 13),
        C(555, 446, 14, 28), C(187, 961, 16, 18), C(792, 556, 22, 29), C(882, 948, 12, 27),
        C(342, 644, 24, 23), C(686, 273, 14, 14), C(760, 577, 22, 13), C(806, 107, 29, 13),
        C(85, 753, 23, 12), C(25, 420, 11, 21), C(879, 523, 10, 27), C(325, 614, 19, 20),
        C(537, 692, 22, 23), C(584, 850, 28, 22), C(527, 82, 26, 23), C(506, 556, 12, 21),
        C(228, 818, 16, 24), C(414, 229, 28, 22), C(708, 230, 26, 23), C(304, 68, 29, 22),
        C(564, 554, 11, 25), C(627, 571, 29, 28), C(702, 811, 26, 24), C(378, 405, 25, 23),
        C(708, 440, 29, 20), C(922, 55, 23, 21), C(343, 80, 12, 17), C(14, 166, 20, 16),
        C(194, 185, 28, 14), C(190, 256, 22, 26), C(945, 612, 27, 28), C(326, 564, 27, 29),
        C(698, 130, 29, 15), C(886, 341, 29, 20), C(89, 298, 20, 24), C(652, 965, 24, 22),
        C(443, 199, 26, 22), C(719, 609, 21, 29), C(537, 576, 10, 20), C(242, 606, 19, 15),
        C(951, 629, 24, 10), C(934, 641, 20, 26), C(5, 853, 12, 24), C(818, 130, 24, 21),
        C(363, 810, 23, 24), C(783, 341, 24, 21), C(155, 427, 15, 18), C(456, 466, 21, 28),
        C(418, 183, 28, 26), C(72, 538, 28, 15), C(737, 810, 16, 25), C(492, 505, 10, 12),
        C(683, 141, 28, 19), C(459, 201, 6, 6), C(222, 509, 16, 10), C(53, 941, 22, 12),
        C(103, 293, 18, 25), C(392, 443, 26, 23), C(541, 15, 15, 22), C(551, 741, 28, 12),
        C(549, 851, 26, 18), C(818, 374, 27, 10), C(237, 519, 20, 27), C(573, 202, 18, 28),
        C(474, 145, 15, 20), C(537, 847, 18, 24), C(503, 614, 27, 22), C(455, 238, 24, 20),
        C(95, 815, 25, 24), C(663, 660, 29, 23), C(805, 954, 10, 15), C(820, 860, 29, 14),
        C(653, 492, 13, 15), C(690, 970, 17, 14), C(155, 868, 12, 17), C(887, 379, 23, 13),
        C(711, 977, 22, 22), C(148, 8, 14, 12), C(181, 595, 19, 17), C(880, 348, 24, 11),
        C(810, 122, 12, 15), C(848, 913, 14, 19), C(112, 178, 17, 24), C(476, 766, 19, 17),
        C(218, 418, 25, 24), C(484, 77, 25, 20), C(857, 38, 25, 26), C(245, 236, 15, 15),
        C(783, 239, 26, 12), C(895, 785, 15, 18), C(323, 772, 17, 19), C(487, 853, 19, 17),
        C(780, 834, 29, 23), C(481, 848, 12, 13), C(639, 434, 17, 14), C(456, 633, 25, 20),
        C(712, 559, 22, 28), C(665, 530, 18, 11), C(302, 779, 12, 12), C(510, 622, 24, 20),
        C(802, 96, 12, 29), C(894, 578, 25, 24), C(935, 30, 17, 27), C(414, 400, 21, 27),
        C(795, 946, 14, 17), C(867, 871, 23, 23), C(608, 327, 16, 17), C(509, 675, 29, 13),
        C(130, 963, 25, 12), C(455, 19, 10, 20), C(488, 174, 21, 19), C(951, 822, 16, 13),
        C(133, 534, 22, 15), C(399, 553, 27, 10), C(320, 322, 25, 15), C(614, 488, 14, 18),
        C(361, 718, 26, 29), C(809, 803, 14, 23), C(719, 51, 11, 17), C(464, 678, 28, 10),
        C(381, 138, 18, 20), C(321, 77, 11, 14), C(187, 942, 22, 29), C(849, 905, 25, 21),
        C(270, 461, 12, 11), C(109, 545, 26, 18), C(771, 224, 20, 22), C(373, 168, 22, 29),
        C(15, 913, 11, 16), C(955, 927, 17, 27), C(177, 198, 17, 28), C(637, 795, 24, 12),
        C(118, 965, 18, 15), C(136, 894, 11, 21), C(803, 128, 27, 29), C(413, 248, 26, 18),
        C(653, 372, 12, 14), C(663, 746, 24, 23), C(189, 932, 11, 13), C(883, 971, 24, 28),
        C(445, 251, 17, 23), C(881, 448, 16, 23), C(727, 703, 22, 15), C(11, 584, 21, 12),
        C(800, 343, 13, 21), C(435, 344, 13, 17), C(712, 693, 13, 17), C(20, 917, 28, 22),
        C(224, 427, 28, 14), C(606, 740, 14, 13), C(395, 346, 11, 15), C(458, 750, 18, 23),
        C(408, 525, 25, 24), C(405, 248, 25, 23), C(698, 435, 19, 12), C(363, 873, 23, 29),
        C(165, 251, 24, 12), C(745, 637, 14, 20), C(12, 656, 25, 20), C(653, 482, 17, 12),
        C(219, 336, 14, 20), C(836, 621, 18, 23), C(816, 623, 24, 23), C(304, 596, 11, 11),
        C(202, 549, 10, 27), C(254, 976, 15, 17), C(182, 121, 16, 15), C(839, 634, 29, 24),
        C(515, 433, 19, 10), C(565, 50, 27, 20), C(500, 774, 15, 20), C(326, 55, 12, 16),
        C(688, 89, 22, 27), C(548, 129, 17, 29), C(867, 698, 15, 16), C(155, 398, 28, 22),
        C(932, 825, 14, 11), C(264, 887, 10, 12), C(755, 651, 19, 19), C(761, 570, 20, 21),
        C(181, 227, 25, 27), C(720, 930, 22, 14), C(430, 272, 12, 23), C(772, 453, 20, 11),
        C(574, 853, 21, 26), C(219, 432, 10, 22), C(765, 908, 27, 28), C(897, 532, 26, 24),
        C(68, 345, 14, 12), C(379, 959, 29, 23), C(551, 475, 4, 11), C(779, 859, 18, 17),
        C(733, 551, 27, 13), C(922, 233, 18, 24), C(424, 650, 16, 22), C(8, 879, 13, 7),
        C(713, 135, 18, 20), C(495, 836, 27, 13), C(176, 409, 17, 22), C(169, 173, 22, 13),
        C(550, 8, 10, 15), C(321, 896, 14, 18), C(82, 974, 25, 26), C(640, 423, 26, 17),
        C(300, 647, 21, 12), C(497, 651, 10, 11), C(703, 656, 10, 28), C(512, 792, 10, 21),
        C(636, 146, 13, 27), C(421, 523, 10, 13), C(192, 255, 20, 16), C(341, 630, 18, 21),
        C(883, 874, 17, 24), C(891, 497, 16, 10), C(257, 885, 10, 29), C(478, 378, 23, 21),
        C(822, 122, 14, 28), C(711, 743, 27, 11), C(558, 256, 14, 25), C(574, 900, 15, 10),
        C(785, 449, 29, 11), C(766, 373, 12, 12), C(303, 174, 16, 19), C(636, 788, 14, 22),
        C(795, 583, 19, 29), C(105, 301, 25, 15), C(431, 468, 29, 19), C(65, 416, 29, 27),
        C(586, 146, 25, 25), C(926, 255, 17, 10), C(890, 480, 16, 23), C(388, 660, 23, 24),
        C(155, 38, 29, 26), C(444, 52, 11, 11), C(325, 138, 17, 16), C(205, 454, 25, 13),
        C(253, 602, 27, 21), C(441, 837, 28, 11), C(784, 893, 10, 17), C(952, 589, 19, 24),
        C(475, 750, 15, 29), C(494, 470, 18, 17), C(692, 740, 22, 12), C(755, 209, 12, 28),
        C(2, 789, 15, 17), C(284, 146, 17, 10), C(123, 973, 22, 23), C(302, 166, 25, 28),
        C(134, 98, 17, 14), C(532, 743, 4, 22), C(775, 147, 15, 10), C(24, 784, 24, 27),
        C(904, 463, 20, 28), C(840, 899, 13, 12), C(634, 799, 11, 17), C(913, 605, 19, 19),
        C(757, 692, 21, 22), C(205, 12, 21, 11), C(810, 115, 24, 23), C(678, 744, 11, 12),
        C(291, 956, 28, 26), C(552, 561, 17, 20), C(131, 14, 24, 16), C(332, 912, 18, 16),
        C(232, 656, 17, 18), C(79, 59, 10, 13), C(509, 433, 14, 12), C(828, 668, 25, 26),
        C(255, 225, 20, 10), C(760, 51, 29, 19), C(505, 658, 28, 10), C(669, 85, 18, 22),
        C(964, 831, 14, 15), C(42, 648, 18, 12), C(262, 612, 12, 13), C(229, 976, 26, 11),
        C(924, 769, 25, 16), C(13, 458, 26, 26), C(376, 30, 22, 25), C(105, 900, 21, 26),
        C(789, 345, 21, 11), C(575, 388, 11, 25), C(271, 374, 16, 27), C(47, 115, 12, 13),
        C(482, 421, 11, 20), C(920, 289, 5, 12), C(65, 247, 28, 23), C(509, 96, 11, 16),
        C(714, 824, 10, 26), C(690, 454, 13, 24), C(399, 303, 10, 25), C(955, 892, 12, 20),
        C(315, 678, 12, 26), C(0, 892, 23, 23), C(417, 503, 29, 15), C(127, 954, 29, 17),
        C(237, 143, 10, 20), C(283, 369, 13, 22), C(208, 375, 29, 18), C(420, 980, 25, 11),
        C(605, 745, 13, 12), C(264, 395, 23, 26), C(785, 92, 24, 16), C(35, 144, 25, 25),
        C(726, 185, 22, 15), C(438, 868, 23, 20), C(545, 559, 13, 11), C(909, 645, 26, 17),
        C(810, 613, 25, 24), C(879, 222, 28, 21), C(716, 555, 14, 18), C(315, 906, 25, 13),
        C(869, 653, 16, 24), C(947, 65, 16, 24), C(65, 923, 27, 17), C(25, 590, 19, 16),
        C(304, 15, 14, 10), C(791, 949, 17, 23), C(406, 313, 16, 10), C(61, 296, 15, 11),
        C(571, 580, 14, 25), C(206, 575, 26, 27), C(328, 86, 14, 29), C(97, 538, 29, 24),
        C(580, 906, 20, 13), C(606, 661, 13, 17), C(740, 693, 18, 22), C(958, 745, 17, 27),
        C(803, 850, 23, 27), C(409, 815, 15, 22), C(849, 115, 21, 28), C(26, 641, 23, 29),
        C(706, 73, 26, 28), C(5, 876, 23, 25), C(539, 556, 13, 17), C(293, 524, 19, 19),
        C(431, 810, 11, 22), C(619, 324, 11, 22), C(440, 129, 25, 26), C(745, 800, 29, 22),
        C(963, 442, 23, 12), C(726, 890, 25, 25), C(120, 617, 12, 25), C(677, 879, 26, 13),
        C(274, 671, 16, 27), C(685, 969, 10, 13), C(379, 333, 10, 16), C(374, 439, 23, 26),
        C(454, 826, 13, 26), C(751, 166, 16, 11), C(517, 647, 27, 28), C(282, 296, 24, 22),
        C(378, 937, 11, 25), C(94, 181, 22, 17), C(897, 824, 14, 19), C(833, 119, 25, 12),
        C(942, 637, 22, 12), C(690, 305, 17, 29), C(130, 244, 14, 12), C(968, 94, 18, 12),
        C(630, 423, 15, 19), C(569, 325, 24, 11), C(128, 247, 20, 24), C(35, 873, 26, 21),
        C(834, 628, 22, 20), C(461, 280, 29, 15), C(838, 614, 27, 28), C(222, 280, 10, 19),
        C(95, 332, 28, 15), C(239, 968, 11, 19), C(567, 839, 24, 29), C(610, 500, 13, 17),
        C(482, 745, 16, 14), C(276, 315, 25, 19), C(365, 628, 16, 26), C(456, 233, 26, 12),
        C(690, 880, 13, 20), C(510, 638, 24, 18), C(950, 304, 10, 20), C(224, 255, 24, 13),
        C(122, 231, 13, 25), C(542, 617, 16, 21), C(856, 732, 16, 21), C(7, 619, 24, 23),
        C(803, 801, 26, 22), C(219, 887, 12, 24), C(409, 123, 12, 18), C(20, 872, 22, 24),
        C(589, 675, 12, 26), C(270, 262, 29, 24), C(776, 582, 23, 21), C(843, 224, 24, 17),
        C(661, 141, 23, 10), C(130, 738, 16, 27), C(515, 291, 18, 28), C(917, 554, 18, 16),
        C(435, 237, 19, 26), C(144, 138, 16, 15), C(568, 267, 27, 12), C(658, 629, 15, 20),
        C(644, 485, 16, 10), C(150, 410, 21, 14), C(336, 578, 25, 24), C(591, 522, 22, 25),
        C(334, 918, 22, 22), C(590, 397, 24, 18), C(530, 740, 15, 29), C(494, 644, 28, 21),
        C(740, 580, 25, 14), C(332, 904, 12, 11), C(359, 693, 26, 12), C(420, 804, 12, 23),
        C(140, 259, 11, 15), C(319, 646, 12, 19), C(820, 412, 12, 29), C(357, 556, 12, 21),
        C(402, 750, 15, 18), C(784, 805, 21, 14), C(910, 54, 26, 23), C(413, 49, 25, 21),
        C(482, 440, 26, 17), C(4, 912, 19, 28), C(767, 807, 24, 13), C(232, 332, 16, 24),
        C(730, 626, 15, 27), C(824, 391, 21, 26), C(880, 965, 17, 21), C(918, 549, 10, 19),
        C(127, 385, 20, 12), C(155, 316, 14, 10), C(837, 895, 15, 17), C(240, 611, 24, 26),
        C(890, 193, 21, 18), C(237, 908, 18, 29), C(71, 743, 21, 24), C(238, 106, 11, 16),
        C(568, 806, 26, 27), C(525, 488, 15, 19), C(779, 59, 28, 20), C(389, 915, 13, 25),
        C(656, 786, 20, 15), C(267, 197, 21, 16), C(890, 363, 24, 19), C(48, 943, 23, 25),
        C(949, 713, 25, 23), C(46, 764, 10, 18), C(905, 174, 21, 19), C(782, 891, 29, 23),
        C(701, 647, 10, 19), C(216, 437, 15, 24), C(6, 734, 25, 26), C(949, 925, 28, 10),
        C(307, 510, 20, 20), C(229, 790, 13, 24), C(513, 434, 16, 18), C(325, 926, 19, 22),
        C(180, 149, 29, 27), C(894, 813, 17, 28), C(287, 653, 29, 24), C(775, 550, 9, 4),
        C(827, 478, 15, 10), C(161, 130, 23, 19), C(714, 364, 24, 27), C(9, 876, 25, 16),
        C(901, 552, 10, 29), C(930, 314, 22, 27), C(220, 907, 19, 13), C(708, 642, 25, 15),
        C(183, 811, 15, 26), C(194, 942, 17, 21), C(779, 516, 28, 14), C(380, 251, 10, 27),
        C(302, 981, 19, 12), C(951, 165, 14, 20), C(569, 590, 18, 25), C(865, 451, 27, 20),
        C(777, 856, 17, 10), C(771, 62, 28, 29), C(3, 54, 18, 11), C(721, 514, 14, 15),
        C(703, 869, 14, 10), C(189, 124, 21, 26), C(633, 171, 25, 28), C(226, 285, 13, 25),
        C(475, 38, 27, 27), C(23, 774, 23, 13), C(276, 731, 24, 24), C(800, 499, 29, 26),
        C(655, 672, 20, 28), C(216, 437, 28, 27), C(376, 874, 20, 22), C(838, 435, 24, 11),
        C(323, 237, 29, 28), C(518, 75, 16, 13), C(309, 376, 21, 29), C(787, 112, 11, 28),
        C(577, 836, 12, 26), C(660, 680, 17, 25), C(418, 252, 11, 17), C(362, 290, 10, 26),
        C(34, 626, 23, 26), C(16, 793, 26, 10), C(752, 623, 12, 17), C(262, 782, 18, 29),
        C(358, 343, 25, 14), C(938, 962, 26, 16), C(919, 361, 24, 20), C(550, 10, 12, 22),
        C(51, 387, 23, 23), C(202, 154, 15, 15), C(136, 661, 27, 12), C(504, 753, 23, 12),
        C(104, 494, 29, 27), C(352, 744, 23, 15), C(236, 113, 12, 27), C(413, 166, 16, 21),
        C(967, 933, 16, 16), C(198, 684, 20, 27), C(507, 268, 15, 27), C(765, 155, 14, 29),
        C(954, 813, 28, 26), C(226, 438, 10, 19), C(822, 738, 13, 19), C(580, 12, 10, 17),
        C(400, 346, 15, 23), C(326, 718, 24, 17), C(646, 581, 24, 17), C(115, 623, 27, 24),
        C(899, 282, 26, 13), C(733, 234, 17, 14), C(800, 832, 25, 28), C(960, 678, 29, 13),
        C(148, 256, 29, 23), C(514, 488, 24, 18), C(30, 720, 22, 26), C(423, 173, 20, 20),
        C(121, 742, 18, 21), C(904, 164, 18, 14), C(55, 263, 12, 11), C(230, 375, 11, 28),
        C(701, 867, 20, 20), C(89, 534, 29, 18), C(105, 182, 12, 22), C(686, 786, 28, 25),
        C(330, 90, 19, 14), C(472, 579, 25, 27), C(811, 546, 13, 16), C(419, 57, 21, 19),
        C(926, 445, 29, 28), C(779, 980, 16, 18), C(556, 516, 17, 20), C(929, 442, 15, 27),
        C(117, 537, 21, 20), C(845, 193, 14, 14), C(366, 423, 6, 5), C(979, 528, 12, 21),
        C(283, 499, 17, 12), C(798, 243, 28, 11), C(37, 636, 18, 25), C(883, 280, 29, 22),
        C(311, 159, 29, 15), C(639, 769, 11, 28), C(467, 294, 27, 17), C(576, 701, 27, 29),
        C(104, 971, 23, 17), C(916, 279, 13, 29), C(298, 190, 14, 19), C(31, 202, 11, 23),
        C(764, 881, 22, 23), C(51, 386, 11, 12), C(291, 612, 18, 20), C(111, 157, 26, 22),
        C(355, 48, 24, 26), C(747, 297, 10, 16), C(593, 53, 25, 18), C(865, 944, 25, 29),
        C(184, 112, 25, 24), C(395, 614, 27, 10), C(566, 562, 12, 25), C(193, 719, 22, 23),
        C(428, 255, 22, 10), C(575, 632, 10, 10), C(868, 206, 13, 28), C(425, 253, 17, 14),
        C(87, 191, 25, 22), C(721, 963, 26, 24), C(726, 138, 13, 13), C(450, 776, 21, 25),
        C(103, 481, 17, 24), C(166, 432, 28, 22), C(969, 386, 14, 22), C(745, 744, 15, 26),
        C(75, 36, 19, 25), C(224, 406, 13, 26), C(308, 635, 16, 24), C(195, 484, 28, 19),
        C(614, 297, 21, 14), C(123, 229, 17, 23), C(684, 709, 11, 18), C(749, 305, 11, 17),
        C(864, 937, 15, 24), C(371, 716, 28, 10), C(726, 620, 22, 20), C(63, 408, 22, 28),
        C(849, 284, 18, 23), C(207, 769, 13, 25), C(596, 300, 22, 13), C(578, 17, 10, 13),
        C(892, 265, 16, 21), C(27, 162, 29, 12), C(710, 177, 14, 15), C(703, 80, 29, 16),
        C(817, 718, 24, 19), C(305, 604, 11, 10), C(60, 47, 13, 14), C(863, 136, 20, 26),
        C(836, 304, 15, 22), C(295, 501, 14, 12), C(41, 887, 26, 16), C(711, 440, 13, 11),
        C(878, 827, 16, 13), C(693, 273, 29, 16), C(878, 143, 11, 12), C(68, 232, 14, 17),
        C(195, 223, 21, 3), C(587, 822, 12, 29), C(445, 131, 15, 14), C(897, 187, 11, 19),
        C(711, 6, 20, 22), C(719, 635, 21, 19), C(316, 631, 26, 17), C(441, 423, 20, 18),
        C(185, 613, 24, 18), C(161, 609, 10, 14), C(695, 909, 26, 22), C(338, 62, 18, 24),
        C(186, 679, 26, 28), C(430, 349, 24, 19), C(504, 92, 28, 26), C(53, 50, 12, 20),
        C(253, 307, 26, 19), C(590, 597, 23, 15), C(12, 43, 29, 19), C(950, 748, 18, 15),
        C(836, 7, 17, 17), C(838, 33, 23, 17), C(797, 603, 13, 13), C(72, 412, 29, 15),
        C(754, 206, 24, 26), C(831, 144, 26, 16), C(832, 633, 15, 13), C(944, 425, 11, 21),
        C(610, 710, 26, 10), C(574, 726, 11, 19), C(959, 667, 18, 22), C(966, 878, 28, 19),
        C(340, 927, 12, 29), C(976, 546, 10, 16), C(265, 310, 23, 24), C(581, 943, 22, 16),
        C(696, 530, 15, 12), C(122, 652, 15, 28), C(494, 63, 24, 25), C(634, 571, 15, 28),
        C(859, 776, 18, 24), C(585, 256, 12, 19), C(506, 617, 20, 10), C(555, 400, 11, 25),
        C(595, 391, 18, 26), C(497, 36, 24, 10), C(771, 974, 27, 23), C(284, 908, 26, 14),
        C(186, 814, 10, 14), C(315, 377, 14, 13), C(789, 81, 17, 15), C(415, 112, 14, 28),
        C(837, 845, 18, 26), C(492, 563, 17, 12), C(830, 285, 14, 28), C(216, 834, 13, 29),
        C(616, 792, 29, 12), C(899, 141, 22, 16), C(787, 475, 24, 20), C(196, 603, 17, 10),
        C(538, 2, 16, 24), C(381, 357, 17, 22), C(941, 817, 27, 22), C(196, 272, 25, 13),
        C(690, 135, 12, 13), C(147, 88, 13, 16), C(948, 267, 24, 12), C(50, 411, 14, 11),
        C(102, 968, 10, 11), C(177, 613, 25, 24), C(450, 229, 23, 25), C(802, 851, 12, 15),
        C(463, 149, 22, 11), C(19, 681, 20, 25), C(784, 709, 24, 17), C(672, 437, 21, 14),
        C(168, 145, 23, 20), C(169, 725, 25, 27), C(71, 731, 16, 22), C(602, 589, 25, 16),
        C(281, 888, 13, 19), C(753, 283, 13, 28), C(367, 421, 29, 11), C(714, 651, 21, 23),
        C(166, 985, 21, 14), C(473, 661, 16, 23), C(888, 512, 24, 13), C(615, 452, 11, 19),
        C(337, 160, 28, 12), C(56, 944, 13, 19), C(323, 497, 20, 23), C(110, 476, 27, 20),
        C(227, 77, 17, 25), C(713, 231, 12, 20), C(90, 946, 26, 17), C(138, 826, 18, 25),
        C(179, 105, 10, 24), C(357, 906, 23, 25), C(334, 871, 12, 29), C(529, 553, 18, 14),
        C(908, 495, 14, 28), C(603, 151, 25, 10), C(390, 669, 15, 17), C(957, 663, 29, 23),
        C(274, 390, 28, 27), C(393, 234, 24, 25), C(952, 164, 19, 11), C(239, 515, 17, 19),
        C(15, 733, 11, 15), C(891, 347, 26, 11), C(889, 282, 15, 17), C(959, 527, 17, 21),
        C(815, 368, 23, 10), C(437, 363, 16, 17), C(686, 646, 24, 21), C(782, 103, 29, 17),
        C(664, 598, 23, 15), C(322, 898, 22, 27), C(825, 322, 18, 29), C(767, 835, 19, 28),
        C(230, 874, 17, 27), C(899, 895, 16, 16), C(443, 44, 21, 17), C(233, 812, 19, 11),
        C(866, 816, 25, 17), C(912, 422, 21, 23), C(720, 683, 25, 19), C(64, 36, 23, 24),
        C(735, 608, 22, 17), C(760, 38, 25, 17), C(188, 804, 12, 20), C(362, 926, 16, 14),
        C(230, 86, 8, 11), C(143, 852, 24, 23), C(558, 583, 14, 29), C(399, 979, 24, 19),
        C(119, 134, 26, 10), C(959, 477, 23, 26), C(173, 807, 29, 20), C(138, 138, 18, 29),
        C(42, 201, 14, 18), C(588, 70, 12, 20), C(575, 56, 21, 21), C(505, 321, 27, 22),
        C(432, 243, 19, 17),
    };
};
