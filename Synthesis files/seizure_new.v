/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Tue Jul 15 12:00:00 2025
/////////////////////////////////////////////////////////////



    module seizure_regfile_DATA_WIDTH18_ADDR_WIDTH8_MCMC_DATA_WIDTH72_MCMC_ADDR_WIDTH2048 ( 
        apb_clk, reset_n, apb_addr, apb_pwrite, apb_psel, apb_penable, 
        apb_pwdata, pc_fifo_addr, pc_fifo_read, mcmc_lut_data, mcmc_lut_addr, 
        mcmc_lut_read, dctc_fifo_addr, dctc_fifo_read, apb_prdata, apb_ready, 
        pc_fifo_data, dctc_fifo_data, start_core );
  input [9:0] apb_addr;
  input [31:0] apb_pwdata;
  input [7:0] pc_fifo_addr;
  output [71:0] mcmc_lut_data;
  input [10:0] mcmc_lut_addr;
  input [7:0] dctc_fifo_addr;
  output [31:0] apb_prdata;
  output [17:0] pc_fifo_data;
  output [17:0] dctc_fifo_data;
  input apb_clk, reset_n, apb_pwrite, apb_psel, apb_penable, pc_fifo_read,
         mcmc_lut_read, dctc_fifo_read;
  output apb_ready, start_core;
  wire   fifo_data_read, fifo_data_read_d, mcmc_data_read_3,
         mcmc_data_read_d_1, mcmc_data_read_rise_1, mcmc_data_read_d_2,
         mcmc_data_read_rise_2, mcmc_data_read_d_3, N102,
         fifo_data_read_rise_d, mcmc_data_read_rise_d_1,
         mcmc_data_read_rise_d_2, mcmc_data_read_rise_d_3, mcmc_data_reg_1_0_,
         N153, n_1_net_, n_3_net_, n_5_net_, n_7_net_, cs, oe, N154, N155,
         N160, n_10_net_, n_11_net_, n_12_net_, n_13_net_, lut_cs, lut_oe,
         N181, N182, N186, N194, N195, N196, N197, N198, N199, N200, N201,
         N202, N203, N204, N205, n1, n2, n3, n4, n5, n7, n9, n11, n13, n15,
         n17, n19, n21, n23, n25, n27, n29, n31, n33, n36, n37, n40, n41, n44,
         n45, n48, n49, n52, n53, n56, n57, n60, n61, n64, n65, n68, n69, n72,
         n73, n76, n77, n80, n81, n84, n85, n88, n89, n92, n93, n96, n97, n100,
         n101, n102, n103, n104, n106, n108, n109, n110, n114, n115, n117,
         n141, n151, n152, n153, n154, n155, n156, n158, n159, n161, n162,
         n163, n164, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n181, n182, n183, n184, n185, n187,
         n189, n190, n192, n203, n205, n207, n209, n210, n212, n213, n223,
         n233, n234, n235, n236, n237, n238, n239, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n6, n8, n10, n12, n14, n16, n18, n20, n22, n24, n26, n28, n30,
         n32, n34, n35, n38, n39, n42, n43, n46, n47, n50, n51, n54, n55, n58,
         n59, n62, n63, n66, n67, n70, n71, n74, n75, n78, n79, n82, n83, n86,
         n87, n90, n91, n94, n95, n98, n99, n105, n107, n111, n112, n113, n116,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n142, n143, n144, n145, n146, n147, n148, n149, n150, n157,
         n160, n165, n180, n186, n188, n191, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n204, n206, n208, n211, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n224, n225, n226, n227,
         n228, n229, n230, n231, n464, n465, n466, n667, n668, n669, n670,
         n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
         n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692,
         n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703,
         n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714,
         n715, n716, n717, n718, n751, n753, n755, n757, n759, n761, n763,
         n765, n767, n769, n771, n773, n775, n777, n779, n781, n783, n785,
         n787, n789, n791, n793, n795, n797, n799, n801, n803, n805, n807,
         n809, n811, n813, n815, n824, n825, n826, n827, n828, n829, n830,
         n831, n832, n833, n834, n835, n836, n837, n838, n839, n840, n841,
         n842, n843, n844, n845, n846, n847, n848, n849, n850, n851, n852,
         n853, n854, n855, n856, n857, n858, n859, n860, n861, n862, n863,
         n864;
  wire   [17:0] fifo_data_in;
  wire   [17:0] fifo_data_reg;
  wire   [17:0] fifo_data_out;
  wire   [7:0] fifo_addr;
  wire   [10:0] lut_addr;
  wire   [71:0] lut_data_io;

  dfcrn1 lut_we_reg ( .D(N182), .CP(apb_clk), .CDN(n196), .QN(n296) );
  lanhq1 lut_addr_reg_10_ ( .E(N194), .D(N205), .Q(lut_addr[10]) );
  lanhq1 lut_addr_reg_9_ ( .E(N194), .D(N204), .Q(lut_addr[9]) );
  lanhq1 lut_addr_reg_8_ ( .E(N194), .D(N203), .Q(lut_addr[8]) );
  lanhq1 lut_addr_reg_7_ ( .E(N194), .D(N202), .Q(lut_addr[7]) );
  lanhq1 lut_addr_reg_6_ ( .E(N194), .D(N201), .Q(lut_addr[6]) );
  lanhq1 lut_addr_reg_5_ ( .E(N194), .D(N200), .Q(lut_addr[5]) );
  lanhq1 lut_addr_reg_4_ ( .E(N194), .D(N199), .Q(lut_addr[4]) );
  lanhq1 lut_addr_reg_3_ ( .E(N194), .D(N198), .Q(lut_addr[3]) );
  lanhq1 lut_addr_reg_2_ ( .E(N194), .D(N197), .Q(lut_addr[2]) );
  lanhq1 lut_addr_reg_1_ ( .E(N194), .D(N196), .Q(lut_addr[1]) );
  lanhq1 lut_addr_reg_0_ ( .E(N194), .D(N195), .Q(lut_addr[0]) );
  dfcrn1 mcmc_data_reg_1_reg_31_ ( .D(n500), .CP(apb_clk), .CDN(n208), .QN(
        n401) );
  dfcrn1 mcmc_data_reg_1_reg_30_ ( .D(n501), .CP(apb_clk), .CDN(n208), .QN(
        n400) );
  dfcrn1 mcmc_data_reg_1_reg_29_ ( .D(n502), .CP(apb_clk), .CDN(n208), .QN(
        n399) );
  dfcrn1 mcmc_data_reg_1_reg_28_ ( .D(n503), .CP(apb_clk), .CDN(n208), .QN(
        n398) );
  dfcrn1 mcmc_data_reg_1_reg_27_ ( .D(n504), .CP(apb_clk), .CDN(n206), .QN(
        n397) );
  dfcrn1 mcmc_data_reg_1_reg_26_ ( .D(n505), .CP(apb_clk), .CDN(n206), .QN(
        n396) );
  dfcrn1 mcmc_data_reg_1_reg_25_ ( .D(n506), .CP(apb_clk), .CDN(n206), .QN(
        n395) );
  dfcrn1 mcmc_data_reg_1_reg_24_ ( .D(n507), .CP(apb_clk), .CDN(n206), .QN(
        n394) );
  dfcrn1 mcmc_data_reg_1_reg_23_ ( .D(n508), .CP(apb_clk), .CDN(n206), .QN(
        n393) );
  dfcrn1 mcmc_data_reg_1_reg_22_ ( .D(n509), .CP(apb_clk), .CDN(n206), .QN(
        n392) );
  dfcrn1 mcmc_data_reg_1_reg_21_ ( .D(n510), .CP(apb_clk), .CDN(n206), .QN(
        n391) );
  dfcrn1 mcmc_data_reg_1_reg_20_ ( .D(n511), .CP(apb_clk), .CDN(n206), .QN(
        n390) );
  dfcrn1 mcmc_data_reg_1_reg_19_ ( .D(n512), .CP(apb_clk), .CDN(n206), .QN(
        n389) );
  dfcrn1 mcmc_data_reg_1_reg_18_ ( .D(n513), .CP(apb_clk), .CDN(n206), .QN(
        n388) );
  dfcrn1 mcmc_data_reg_1_reg_17_ ( .D(n514), .CP(apb_clk), .CDN(n204), .QN(
        n387) );
  dfcrn1 mcmc_data_reg_1_reg_16_ ( .D(n515), .CP(apb_clk), .CDN(n204), .QN(
        n386) );
  dfcrn1 mcmc_data_reg_1_reg_15_ ( .D(n516), .CP(apb_clk), .CDN(n204), .QN(
        n385) );
  dfcrn1 mcmc_data_reg_1_reg_14_ ( .D(n517), .CP(apb_clk), .CDN(n204), .QN(
        n384) );
  dfcrn1 mcmc_data_reg_1_reg_13_ ( .D(n518), .CP(apb_clk), .CDN(n204), .QN(
        n383) );
  dfcrn1 mcmc_data_reg_1_reg_12_ ( .D(n519), .CP(apb_clk), .CDN(n204), .QN(
        n382) );
  dfcrn1 mcmc_data_reg_1_reg_11_ ( .D(n520), .CP(apb_clk), .CDN(n204), .QN(
        n381) );
  dfcrn1 mcmc_data_reg_1_reg_10_ ( .D(n521), .CP(apb_clk), .CDN(n204), .QN(
        n380) );
  dfcrn1 mcmc_data_reg_1_reg_9_ ( .D(n522), .CP(apb_clk), .CDN(n204), .QN(n379) );
  dfcrn1 mcmc_data_reg_1_reg_8_ ( .D(n523), .CP(apb_clk), .CDN(n204), .QN(n378) );
  dfcrn1 mcmc_data_reg_3_reg_0_ ( .D(n666), .CP(apb_clk), .CDN(n202), .QN(n305) );
  dfcrn1 mcmc_lut_data_reg_1_ ( .D(n633), .CP(apb_clk), .CDN(n202), .QN(n377)
         );
  dfcrn1 mcmc_data_reg_3_reg_1_ ( .D(n664), .CP(apb_clk), .CDN(n202), .QN(n304) );
  dfcrn1 mcmc_lut_data_reg_2_ ( .D(n632), .CP(apb_clk), .CDN(n202), .QN(n376)
         );
  dfcrn1 mcmc_data_reg_3_reg_2_ ( .D(n663), .CP(apb_clk), .CDN(n202), .QN(n303) );
  dfcrn1 mcmc_lut_data_reg_3_ ( .D(n631), .CP(apb_clk), .CDN(n202), .QN(n375)
         );
  dfcrn1 mcmc_data_reg_3_reg_3_ ( .D(n662), .CP(apb_clk), .CDN(n202), .QN(n302) );
  dfcrn1 mcmc_lut_data_reg_4_ ( .D(n630), .CP(apb_clk), .CDN(n202), .QN(n374)
         );
  dfcrn1 mcmc_data_reg_3_reg_4_ ( .D(n661), .CP(apb_clk), .CDN(n202), .QN(n301) );
  dfcrn1 mcmc_lut_data_reg_5_ ( .D(n629), .CP(apb_clk), .CDN(n202), .QN(n373)
         );
  dfcrn1 mcmc_data_reg_3_reg_5_ ( .D(n660), .CP(apb_clk), .CDN(n201), .QN(n300) );
  dfcrn1 mcmc_lut_data_reg_6_ ( .D(n628), .CP(apb_clk), .CDN(n201), .QN(n372)
         );
  dfcrn1 mcmc_data_reg_3_reg_6_ ( .D(n659), .CP(apb_clk), .CDN(n201), .QN(n299) );
  dfcrn1 mcmc_lut_data_reg_7_ ( .D(n627), .CP(apb_clk), .CDN(n201), .QN(n371)
         );
  dfcrn1 mcmc_data_reg_3_reg_7_ ( .D(n658), .CP(apb_clk), .CDN(n201), .QN(n298) );
  dfcrn1 mcmc_lut_data_reg_8_ ( .D(n626), .CP(apb_clk), .CDN(n201), .QN(n370)
         );
  dfcrn1 mcmc_data_reg_3_reg_8_ ( .D(n657), .CP(apb_clk), .CDN(n201), .QN(n297) );
  dfcrn1 mcmc_lut_data_reg_9_ ( .D(n625), .CP(apb_clk), .CDN(n201), .QN(n369)
         );
  dfcrn1 mcmc_data_reg_3_reg_9_ ( .D(n656), .CP(apb_clk), .CDN(n201), .QN(n295) );
  dfcrn1 mcmc_lut_data_reg_10_ ( .D(n624), .CP(apb_clk), .CDN(n200), .QN(n368)
         );
  dfcrn1 mcmc_data_reg_3_reg_10_ ( .D(n655), .CP(apb_clk), .CDN(n200), .QN(
        n294) );
  dfcrn1 mcmc_lut_data_reg_11_ ( .D(n623), .CP(apb_clk), .CDN(n200), .QN(n367)
         );
  dfcrn1 mcmc_data_reg_3_reg_11_ ( .D(n654), .CP(apb_clk), .CDN(n200), .QN(
        n293) );
  dfcrn1 mcmc_lut_data_reg_12_ ( .D(n622), .CP(apb_clk), .CDN(n200), .QN(n366)
         );
  dfcrn1 mcmc_data_reg_3_reg_12_ ( .D(n653), .CP(apb_clk), .CDN(n200), .QN(
        n292) );
  dfcrn1 mcmc_lut_data_reg_13_ ( .D(n621), .CP(apb_clk), .CDN(n200), .QN(n365)
         );
  dfcrn1 mcmc_data_reg_3_reg_13_ ( .D(n652), .CP(apb_clk), .CDN(n200), .QN(
        n291) );
  dfcrn1 mcmc_lut_data_reg_14_ ( .D(n620), .CP(apb_clk), .CDN(n200), .QN(n364)
         );
  dfcrn1 mcmc_data_reg_3_reg_14_ ( .D(n651), .CP(apb_clk), .CDN(n200), .QN(
        n290) );
  dfcrn1 mcmc_lut_data_reg_15_ ( .D(n619), .CP(apb_clk), .CDN(n199), .QN(n363)
         );
  dfcrn1 mcmc_data_reg_3_reg_15_ ( .D(n650), .CP(apb_clk), .CDN(n199), .QN(
        n289) );
  dfcrn1 mcmc_lut_data_reg_16_ ( .D(n618), .CP(apb_clk), .CDN(n199), .QN(n362)
         );
  dfcrn1 mcmc_data_reg_3_reg_16_ ( .D(n649), .CP(apb_clk), .CDN(n199), .QN(
        n288) );
  dfcrn1 mcmc_lut_data_reg_17_ ( .D(n617), .CP(apb_clk), .CDN(n199), .QN(n361)
         );
  dfcrn1 mcmc_data_reg_3_reg_17_ ( .D(n648), .CP(apb_clk), .CDN(n199), .QN(
        n287) );
  dfcrn1 mcmc_lut_data_reg_18_ ( .D(n616), .CP(apb_clk), .CDN(n199), .QN(n360)
         );
  dfcrn1 mcmc_data_reg_3_reg_18_ ( .D(n647), .CP(apb_clk), .CDN(n199), .QN(
        n286) );
  dfcrn1 mcmc_lut_data_reg_19_ ( .D(n615), .CP(apb_clk), .CDN(n199), .QN(n359)
         );
  dfcrn1 mcmc_data_reg_3_reg_19_ ( .D(n646), .CP(apb_clk), .CDN(n199), .QN(
        n285) );
  dfcrn1 mcmc_lut_data_reg_20_ ( .D(n614), .CP(apb_clk), .CDN(n198), .QN(n358)
         );
  dfcrn1 mcmc_data_reg_3_reg_20_ ( .D(n645), .CP(apb_clk), .CDN(n198), .QN(
        n284) );
  dfcrn1 mcmc_lut_data_reg_21_ ( .D(n613), .CP(apb_clk), .CDN(n198), .QN(n357)
         );
  dfcrn1 mcmc_data_reg_3_reg_21_ ( .D(n644), .CP(apb_clk), .CDN(n198), .QN(
        n283) );
  dfcrn1 mcmc_lut_data_reg_22_ ( .D(n612), .CP(apb_clk), .CDN(n198), .QN(n356)
         );
  dfcrn1 mcmc_data_reg_3_reg_22_ ( .D(n643), .CP(apb_clk), .CDN(n198), .QN(
        n282) );
  dfcrn1 mcmc_lut_data_reg_23_ ( .D(n611), .CP(apb_clk), .CDN(n198), .QN(n355)
         );
  dfcrn1 mcmc_data_reg_3_reg_23_ ( .D(n642), .CP(apb_clk), .CDN(n198), .QN(
        n281) );
  dfcrn1 mcmc_lut_data_reg_24_ ( .D(n610), .CP(apb_clk), .CDN(n198), .QN(n354)
         );
  dfcrn1 mcmc_data_reg_3_reg_24_ ( .D(n641), .CP(apb_clk), .CDN(n198), .QN(
        n280) );
  dfcrn1 mcmc_lut_data_reg_25_ ( .D(n609), .CP(apb_clk), .CDN(n197), .QN(n353)
         );
  dfcrn1 mcmc_data_reg_3_reg_25_ ( .D(n640), .CP(apb_clk), .CDN(n197), .QN(
        n279) );
  dfcrn1 mcmc_lut_data_reg_26_ ( .D(n608), .CP(apb_clk), .CDN(n197), .QN(n352)
         );
  dfcrn1 mcmc_data_reg_3_reg_26_ ( .D(n639), .CP(apb_clk), .CDN(n197), .QN(
        n278) );
  dfcrn1 mcmc_lut_data_reg_27_ ( .D(n607), .CP(apb_clk), .CDN(n197), .QN(n351)
         );
  dfcrn1 mcmc_data_reg_3_reg_27_ ( .D(n638), .CP(apb_clk), .CDN(n197), .QN(
        n277) );
  dfcrn1 mcmc_lut_data_reg_28_ ( .D(n606), .CP(apb_clk), .CDN(n197), .QN(n350)
         );
  dfcrn1 mcmc_data_reg_3_reg_28_ ( .D(n637), .CP(apb_clk), .CDN(n197), .QN(
        n276) );
  dfcrn1 mcmc_lut_data_reg_29_ ( .D(n605), .CP(apb_clk), .CDN(n197), .QN(n349)
         );
  dfcrn1 mcmc_data_reg_3_reg_29_ ( .D(n636), .CP(apb_clk), .CDN(n197), .QN(
        n275) );
  dfcrn1 mcmc_lut_data_reg_30_ ( .D(n604), .CP(apb_clk), .CDN(n201), .QN(n348)
         );
  dfcrn1 mcmc_data_reg_3_reg_30_ ( .D(n635), .CP(apb_clk), .CDN(n208), .QN(
        n274) );
  dfcrn1 mcmc_lut_data_reg_31_ ( .D(n499), .CP(apb_clk), .CDN(n208), .QN(n347)
         );
  dfcrn1 mcmc_data_reg_3_reg_31_ ( .D(n634), .CP(apb_clk), .CDN(n208), .QN(
        n273) );
  dfcrn1 mcmc_lut_data_reg_32_ ( .D(n601), .CP(apb_clk), .CDN(n208), .QN(n346)
         );
  dfcrn1 mcmc_data_reg_2_reg_0_ ( .D(n602), .CP(apb_clk), .CDN(n208), .QN(n272) );
  dfcrn1 mcmc_lut_data_reg_33_ ( .D(n599), .CP(apb_clk), .CDN(n211), .QN(n345)
         );
  dfcrn1 mcmc_data_reg_2_reg_1_ ( .D(n600), .CP(apb_clk), .CDN(n211), .QN(n271) );
  dfcrn1 mcmc_lut_data_reg_34_ ( .D(n597), .CP(apb_clk), .CDN(n211), .QN(n344)
         );
  dfcrn1 mcmc_data_reg_2_reg_2_ ( .D(n598), .CP(apb_clk), .CDN(n211), .QN(n270) );
  dfcrn1 mcmc_lut_data_reg_35_ ( .D(n595), .CP(apb_clk), .CDN(n211), .QN(n343)
         );
  dfcrn1 mcmc_data_reg_2_reg_3_ ( .D(n596), .CP(apb_clk), .CDN(n211), .QN(n269) );
  dfcrn1 mcmc_lut_data_reg_36_ ( .D(n593), .CP(apb_clk), .CDN(n211), .QN(n342)
         );
  dfcrn1 mcmc_data_reg_2_reg_4_ ( .D(n594), .CP(apb_clk), .CDN(n211), .QN(n268) );
  dfcrn1 mcmc_lut_data_reg_37_ ( .D(n591), .CP(apb_clk), .CDN(n211), .QN(n341)
         );
  dfcrn1 mcmc_data_reg_2_reg_5_ ( .D(n592), .CP(apb_clk), .CDN(n211), .QN(n267) );
  dfcrn1 mcmc_lut_data_reg_38_ ( .D(n589), .CP(apb_clk), .CDN(n214), .QN(n340)
         );
  dfcrn1 mcmc_data_reg_2_reg_6_ ( .D(n590), .CP(apb_clk), .CDN(n214), .QN(n266) );
  dfcrn1 mcmc_lut_data_reg_39_ ( .D(n587), .CP(apb_clk), .CDN(n214), .QN(n339)
         );
  dfcrn1 mcmc_data_reg_2_reg_7_ ( .D(n588), .CP(apb_clk), .CDN(n214), .QN(n265) );
  dfcrn1 mcmc_lut_data_reg_40_ ( .D(n585), .CP(apb_clk), .CDN(n214), .QN(n338)
         );
  dfcrn1 mcmc_data_reg_2_reg_8_ ( .D(n586), .CP(apb_clk), .CDN(n214), .QN(n264) );
  dfcrn1 mcmc_lut_data_reg_41_ ( .D(n583), .CP(apb_clk), .CDN(n214), .QN(n337)
         );
  dfcrn1 mcmc_data_reg_2_reg_9_ ( .D(n584), .CP(apb_clk), .CDN(n214), .QN(n263) );
  dfcrn1 mcmc_lut_data_reg_42_ ( .D(n581), .CP(apb_clk), .CDN(n214), .QN(n336)
         );
  dfcrn1 mcmc_data_reg_2_reg_10_ ( .D(n582), .CP(apb_clk), .CDN(n214), .QN(
        n262) );
  dfcrn1 mcmc_lut_data_reg_43_ ( .D(n579), .CP(apb_clk), .CDN(n215), .QN(n335)
         );
  dfcrn1 mcmc_data_reg_2_reg_11_ ( .D(n580), .CP(apb_clk), .CDN(n215), .QN(
        n261) );
  dfcrn1 mcmc_lut_data_reg_44_ ( .D(n577), .CP(apb_clk), .CDN(n215), .QN(n334)
         );
  dfcrn1 mcmc_data_reg_2_reg_12_ ( .D(n578), .CP(apb_clk), .CDN(n215), .QN(
        n260) );
  dfcrn1 mcmc_lut_data_reg_45_ ( .D(n575), .CP(apb_clk), .CDN(n215), .QN(n333)
         );
  dfcrn1 mcmc_data_reg_2_reg_13_ ( .D(n576), .CP(apb_clk), .CDN(n215), .QN(
        n259) );
  dfcrn1 mcmc_lut_data_reg_46_ ( .D(n573), .CP(apb_clk), .CDN(n215), .QN(n332)
         );
  dfcrn1 mcmc_data_reg_2_reg_14_ ( .D(n574), .CP(apb_clk), .CDN(n215), .QN(
        n258) );
  dfcrn1 mcmc_lut_data_reg_47_ ( .D(n571), .CP(apb_clk), .CDN(n215), .QN(n331)
         );
  dfcrn1 mcmc_data_reg_2_reg_15_ ( .D(n572), .CP(apb_clk), .CDN(n215), .QN(
        n257) );
  dfcrn1 mcmc_lut_data_reg_48_ ( .D(n569), .CP(apb_clk), .CDN(n216), .QN(n330)
         );
  dfcrn1 mcmc_data_reg_2_reg_16_ ( .D(n570), .CP(apb_clk), .CDN(n216), .QN(
        n256) );
  dfcrn1 mcmc_lut_data_reg_49_ ( .D(n567), .CP(apb_clk), .CDN(n216), .QN(n329)
         );
  dfcrn1 mcmc_data_reg_2_reg_17_ ( .D(n568), .CP(apb_clk), .CDN(n216), .QN(
        n255) );
  dfcrn1 mcmc_lut_data_reg_50_ ( .D(n565), .CP(apb_clk), .CDN(n216), .QN(n328)
         );
  dfcrn1 mcmc_data_reg_2_reg_18_ ( .D(n566), .CP(apb_clk), .CDN(n216), .QN(
        n254) );
  dfcrn1 mcmc_lut_data_reg_51_ ( .D(n563), .CP(apb_clk), .CDN(n216), .QN(n327)
         );
  dfcrn1 mcmc_data_reg_2_reg_19_ ( .D(n564), .CP(apb_clk), .CDN(n216), .QN(
        n253) );
  dfcrn1 mcmc_lut_data_reg_52_ ( .D(n561), .CP(apb_clk), .CDN(n216), .QN(n326)
         );
  dfcrn1 mcmc_data_reg_2_reg_20_ ( .D(n562), .CP(apb_clk), .CDN(n216), .QN(
        n252) );
  dfcrn1 mcmc_lut_data_reg_53_ ( .D(n559), .CP(apb_clk), .CDN(n217), .QN(n325)
         );
  dfcrn1 mcmc_data_reg_2_reg_21_ ( .D(n560), .CP(apb_clk), .CDN(n217), .QN(
        n251) );
  dfcrn1 mcmc_lut_data_reg_54_ ( .D(n557), .CP(apb_clk), .CDN(n217), .QN(n324)
         );
  dfcrn1 mcmc_data_reg_2_reg_22_ ( .D(n558), .CP(apb_clk), .CDN(n217), .QN(
        n250) );
  dfcrn1 mcmc_lut_data_reg_55_ ( .D(n555), .CP(apb_clk), .CDN(n217), .QN(n323)
         );
  dfcrn1 mcmc_data_reg_2_reg_23_ ( .D(n556), .CP(apb_clk), .CDN(n217), .QN(
        n249) );
  dfcrn1 mcmc_lut_data_reg_56_ ( .D(n553), .CP(apb_clk), .CDN(n217), .QN(n322)
         );
  dfcrn1 mcmc_data_reg_2_reg_24_ ( .D(n554), .CP(apb_clk), .CDN(n217), .QN(
        n248) );
  dfcrn1 mcmc_lut_data_reg_57_ ( .D(n551), .CP(apb_clk), .CDN(n217), .QN(n321)
         );
  dfcrn1 mcmc_data_reg_2_reg_25_ ( .D(n552), .CP(apb_clk), .CDN(n217), .QN(
        n247) );
  dfcrn1 mcmc_lut_data_reg_58_ ( .D(n549), .CP(apb_clk), .CDN(n218), .QN(n320)
         );
  dfcrn1 mcmc_data_reg_2_reg_26_ ( .D(n550), .CP(apb_clk), .CDN(n218), .QN(
        n246) );
  dfcrn1 mcmc_lut_data_reg_59_ ( .D(n547), .CP(apb_clk), .CDN(n218), .QN(n319)
         );
  dfcrn1 mcmc_data_reg_2_reg_27_ ( .D(n548), .CP(apb_clk), .CDN(n218), .QN(
        n245) );
  dfcrn1 mcmc_lut_data_reg_60_ ( .D(n545), .CP(apb_clk), .CDN(n218), .QN(n318)
         );
  dfcrn1 mcmc_data_reg_2_reg_28_ ( .D(n546), .CP(apb_clk), .CDN(n218), .QN(
        n244) );
  dfcrn1 mcmc_lut_data_reg_61_ ( .D(n543), .CP(apb_clk), .CDN(n218), .QN(n317)
         );
  dfcrn1 mcmc_data_reg_2_reg_29_ ( .D(n544), .CP(apb_clk), .CDN(n218), .QN(
        n243) );
  dfcrn1 mcmc_lut_data_reg_62_ ( .D(n541), .CP(apb_clk), .CDN(n218), .QN(n316)
         );
  dfcrn1 mcmc_data_reg_2_reg_30_ ( .D(n542), .CP(apb_clk), .CDN(n218), .QN(
        n242) );
  dfcrn1 mcmc_lut_data_reg_63_ ( .D(n603), .CP(apb_clk), .CDN(n219), .QN(n315)
         );
  dfcrn1 mcmc_data_reg_2_reg_31_ ( .D(n540), .CP(apb_clk), .CDN(n219), .QN(
        n241) );
  dfcrn1 mcmc_lut_data_reg_64_ ( .D(n537), .CP(apb_clk), .CDN(n219), .QN(n314)
         );
  dfcrn1 mcmc_lut_data_reg_65_ ( .D(n535), .CP(apb_clk), .CDN(n219), .QN(n313)
         );
  dfcrn1 mcmc_data_reg_1_reg_1_ ( .D(n536), .CP(apb_clk), .CDN(n219), .QN(n239) );
  dfcrn1 mcmc_lut_data_reg_66_ ( .D(n533), .CP(apb_clk), .CDN(n219), .QN(n312)
         );
  dfcrn1 mcmc_data_reg_1_reg_2_ ( .D(n534), .CP(apb_clk), .CDN(n219), .QN(n238) );
  dfcrn1 mcmc_lut_data_reg_67_ ( .D(n531), .CP(apb_clk), .CDN(n219), .QN(n311)
         );
  dfcrn1 mcmc_data_reg_1_reg_3_ ( .D(n532), .CP(apb_clk), .CDN(n219), .QN(n237) );
  dfcrn1 mcmc_lut_data_reg_68_ ( .D(n529), .CP(apb_clk), .CDN(n219), .QN(n310)
         );
  dfcrn1 mcmc_data_reg_1_reg_4_ ( .D(n530), .CP(apb_clk), .CDN(n220), .QN(n236) );
  dfcrn1 mcmc_lut_data_reg_69_ ( .D(n527), .CP(apb_clk), .CDN(n220), .QN(n309)
         );
  dfcrn1 mcmc_data_reg_1_reg_5_ ( .D(n528), .CP(apb_clk), .CDN(n220), .QN(n235) );
  dfcrn1 mcmc_lut_data_reg_70_ ( .D(n525), .CP(apb_clk), .CDN(n220), .QN(n308)
         );
  dfcrn1 mcmc_data_reg_1_reg_6_ ( .D(n526), .CP(apb_clk), .CDN(n220), .QN(n234) );
  dfcrn1 mcmc_lut_data_reg_71_ ( .D(n539), .CP(apb_clk), .CDN(n220), .QN(n307)
         );
  dfcrn1 mcmc_data_reg_1_reg_7_ ( .D(n524), .CP(apb_clk), .CDN(n220), .QN(n233) );
  dfcrn1 mcmc_lut_data_reg_0_ ( .D(n665), .CP(apb_clk), .CDN(n220), .QN(n306)
         );
  invtd1 lut_data_io_tri_0_ ( .I(n305), .EN(n20), .ZN(lut_data_io[0]) );
  invtd1 lut_data_io_tri_1_ ( .I(n304), .EN(n296), .ZN(lut_data_io[1]) );
  invtd1 lut_data_io_tri_2_ ( .I(n303), .EN(n22), .ZN(lut_data_io[2]) );
  invtd1 lut_data_io_tri_3_ ( .I(n302), .EN(n20), .ZN(lut_data_io[3]) );
  invtd1 lut_data_io_tri_4_ ( .I(n301), .EN(n18), .ZN(lut_data_io[4]) );
  invtd1 lut_data_io_tri_5_ ( .I(n300), .EN(n22), .ZN(lut_data_io[5]) );
  invtd1 lut_data_io_tri_6_ ( .I(n299), .EN(n296), .ZN(lut_data_io[6]) );
  invtd1 lut_data_io_tri_7_ ( .I(n298), .EN(n24), .ZN(lut_data_io[7]) );
  invtd1 lut_data_io_tri_8_ ( .I(n297), .EN(n296), .ZN(lut_data_io[8]) );
  invtd1 lut_data_io_tri_9_ ( .I(n295), .EN(n24), .ZN(lut_data_io[9]) );
  invtd1 lut_data_io_tri_10_ ( .I(n294), .EN(n20), .ZN(lut_data_io[10]) );
  invtd1 lut_data_io_tri_11_ ( .I(n293), .EN(n20), .ZN(lut_data_io[11]) );
  invtd1 lut_data_io_tri_12_ ( .I(n292), .EN(n20), .ZN(lut_data_io[12]) );
  invtd1 lut_data_io_tri_13_ ( .I(n291), .EN(n20), .ZN(lut_data_io[13]) );
  invtd1 lut_data_io_tri_14_ ( .I(n290), .EN(n20), .ZN(lut_data_io[14]) );
  invtd1 lut_data_io_tri_15_ ( .I(n289), .EN(n20), .ZN(lut_data_io[15]) );
  invtd1 lut_data_io_tri_16_ ( .I(n288), .EN(n20), .ZN(lut_data_io[16]) );
  invtd1 lut_data_io_tri_17_ ( .I(n287), .EN(n20), .ZN(lut_data_io[17]) );
  invtd1 lut_data_io_tri_18_ ( .I(n286), .EN(n296), .ZN(lut_data_io[18]) );
  invtd1 lut_data_io_tri_19_ ( .I(n285), .EN(n20), .ZN(lut_data_io[19]) );
  invtd1 lut_data_io_tri_20_ ( .I(n284), .EN(n296), .ZN(lut_data_io[20]) );
  invtd1 lut_data_io_tri_21_ ( .I(n283), .EN(n20), .ZN(lut_data_io[21]) );
  invtd1 lut_data_io_tri_22_ ( .I(n282), .EN(n296), .ZN(lut_data_io[22]) );
  invtd1 lut_data_io_tri_23_ ( .I(n281), .EN(n296), .ZN(lut_data_io[23]) );
  invtd1 lut_data_io_tri_24_ ( .I(n280), .EN(n296), .ZN(lut_data_io[24]) );
  invtd1 lut_data_io_tri_25_ ( .I(n279), .EN(n18), .ZN(lut_data_io[25]) );
  invtd1 lut_data_io_tri_26_ ( .I(n278), .EN(n296), .ZN(lut_data_io[26]) );
  invtd1 lut_data_io_tri_27_ ( .I(n277), .EN(n18), .ZN(lut_data_io[27]) );
  invtd1 lut_data_io_tri_28_ ( .I(n276), .EN(n296), .ZN(lut_data_io[28]) );
  invtd1 lut_data_io_tri_29_ ( .I(n275), .EN(n22), .ZN(lut_data_io[29]) );
  invtd1 lut_data_io_tri_30_ ( .I(n274), .EN(n24), .ZN(lut_data_io[30]) );
  invtd1 lut_data_io_tri_31_ ( .I(n273), .EN(n18), .ZN(lut_data_io[31]) );
  invtd1 lut_data_io_tri_32_ ( .I(n272), .EN(n296), .ZN(lut_data_io[32]) );
  invtd1 lut_data_io_tri_33_ ( .I(n271), .EN(n24), .ZN(lut_data_io[33]) );
  invtd1 lut_data_io_tri_34_ ( .I(n270), .EN(n296), .ZN(lut_data_io[34]) );
  invtd1 lut_data_io_tri_35_ ( .I(n269), .EN(n20), .ZN(lut_data_io[35]) );
  invtd1 lut_data_io_tri_36_ ( .I(n268), .EN(n22), .ZN(lut_data_io[36]) );
  invtd1 lut_data_io_tri_37_ ( .I(n267), .EN(n22), .ZN(lut_data_io[37]) );
  invtd1 lut_data_io_tri_38_ ( .I(n266), .EN(n20), .ZN(lut_data_io[38]) );
  invtd1 lut_data_io_tri_39_ ( .I(n265), .EN(n18), .ZN(lut_data_io[39]) );
  invtd1 lut_data_io_tri_40_ ( .I(n264), .EN(n18), .ZN(lut_data_io[40]) );
  invtd1 lut_data_io_tri_41_ ( .I(n263), .EN(n18), .ZN(lut_data_io[41]) );
  invtd1 lut_data_io_tri_42_ ( .I(n262), .EN(n18), .ZN(lut_data_io[42]) );
  invtd1 lut_data_io_tri_43_ ( .I(n261), .EN(n22), .ZN(lut_data_io[43]) );
  invtd1 lut_data_io_tri_44_ ( .I(n260), .EN(n18), .ZN(lut_data_io[44]) );
  invtd1 lut_data_io_tri_45_ ( .I(n259), .EN(n20), .ZN(lut_data_io[45]) );
  invtd1 lut_data_io_tri_46_ ( .I(n258), .EN(n18), .ZN(lut_data_io[46]) );
  invtd1 lut_data_io_tri_47_ ( .I(n257), .EN(n18), .ZN(lut_data_io[47]) );
  invtd1 lut_data_io_tri_48_ ( .I(n256), .EN(n18), .ZN(lut_data_io[48]) );
  invtd1 lut_data_io_tri_49_ ( .I(n255), .EN(n22), .ZN(lut_data_io[49]) );
  invtd1 lut_data_io_tri_50_ ( .I(n254), .EN(n20), .ZN(lut_data_io[50]) );
  invtd1 lut_data_io_tri_51_ ( .I(n253), .EN(n18), .ZN(lut_data_io[51]) );
  invtd1 lut_data_io_tri_52_ ( .I(n252), .EN(n18), .ZN(lut_data_io[52]) );
  invtd1 lut_data_io_tri_53_ ( .I(n251), .EN(n18), .ZN(lut_data_io[53]) );
  invtd1 lut_data_io_tri_54_ ( .I(n250), .EN(n22), .ZN(lut_data_io[54]) );
  invtd1 lut_data_io_tri_55_ ( .I(n249), .EN(n18), .ZN(lut_data_io[55]) );
  invtd1 lut_data_io_tri_56_ ( .I(n248), .EN(n22), .ZN(lut_data_io[56]) );
  invtd1 lut_data_io_tri_57_ ( .I(n247), .EN(n296), .ZN(lut_data_io[57]) );
  invtd1 lut_data_io_tri_58_ ( .I(n246), .EN(n22), .ZN(lut_data_io[58]) );
  invtd1 lut_data_io_tri_59_ ( .I(n245), .EN(n296), .ZN(lut_data_io[59]) );
  invtd1 lut_data_io_tri_60_ ( .I(n244), .EN(n296), .ZN(lut_data_io[60]) );
  invtd1 lut_data_io_tri_61_ ( .I(n243), .EN(n22), .ZN(lut_data_io[61]) );
  invtd1 lut_data_io_tri_62_ ( .I(n242), .EN(n296), .ZN(lut_data_io[62]) );
  invtd1 lut_data_io_tri_63_ ( .I(n241), .EN(n22), .ZN(lut_data_io[63]) );
  invtd1 lut_data_io_tri_64_ ( .I(n815), .EN(n296), .ZN(lut_data_io[64]) );
  invtd1 lut_data_io_tri_65_ ( .I(n239), .EN(n22), .ZN(lut_data_io[65]) );
  invtd1 lut_data_io_tri_66_ ( .I(n238), .EN(n296), .ZN(lut_data_io[66]) );
  invtd1 lut_data_io_tri_67_ ( .I(n237), .EN(n22), .ZN(lut_data_io[67]) );
  invtd1 lut_data_io_tri_68_ ( .I(n236), .EN(n296), .ZN(lut_data_io[68]) );
  invtd1 lut_data_io_tri_69_ ( .I(n235), .EN(n22), .ZN(lut_data_io[69]) );
  invtd1 lut_data_io_tri_70_ ( .I(n234), .EN(n22), .ZN(lut_data_io[70]) );
  invtd1 lut_data_io_tri_71_ ( .I(n233), .EN(n296), .ZN(lut_data_io[71]) );
  invtd1 fifo_data_in_tri_0_ ( .I(n699), .EN(n223), .ZN(fifo_data_in[0]) );
  invtd1 fifo_data_in_tri_1_ ( .I(n716), .EN(n223), .ZN(fifo_data_in[1]) );
  invtd1 fifo_data_in_tri_2_ ( .I(n715), .EN(n223), .ZN(fifo_data_in[2]) );
  invtd1 fifo_data_in_tri_3_ ( .I(n714), .EN(n223), .ZN(fifo_data_in[3]) );
  invtd1 fifo_data_in_tri_4_ ( .I(n713), .EN(n223), .ZN(fifo_data_in[4]) );
  invtd1 fifo_data_in_tri_5_ ( .I(n712), .EN(n223), .ZN(fifo_data_in[5]) );
  invtd1 fifo_data_in_tri_6_ ( .I(n711), .EN(n223), .ZN(fifo_data_in[6]) );
  invtd1 fifo_data_in_tri_7_ ( .I(n710), .EN(n223), .ZN(fifo_data_in[7]) );
  invtd1 fifo_data_in_tri_8_ ( .I(n709), .EN(n223), .ZN(fifo_data_in[8]) );
  invtd1 fifo_data_in_tri_9_ ( .I(n708), .EN(n223), .ZN(fifo_data_in[9]) );
  invtd1 fifo_data_in_tri_10_ ( .I(n707), .EN(n223), .ZN(fifo_data_in[10]) );
  invtd1 fifo_data_in_tri_11_ ( .I(n706), .EN(n223), .ZN(fifo_data_in[11]) );
  invtd1 fifo_data_in_tri_12_ ( .I(n705), .EN(n223), .ZN(fifo_data_in[12]) );
  invtd1 fifo_data_in_tri_13_ ( .I(n704), .EN(n223), .ZN(fifo_data_in[13]) );
  invtd1 fifo_data_in_tri_14_ ( .I(n703), .EN(n223), .ZN(fifo_data_in[14]) );
  invtd1 fifo_data_in_tri_15_ ( .I(n702), .EN(n223), .ZN(fifo_data_in[15]) );
  invtd1 fifo_data_in_tri_16_ ( .I(n701), .EN(n223), .ZN(fifo_data_in[16]) );
  invtd1 fifo_data_in_tri_17_ ( .I(n700), .EN(n223), .ZN(fifo_data_in[17]) );
  oai221d1 U4 ( .B1(n401), .B2(n143), .C1(n273), .C2(n139), .A(n3), .ZN(n467)
         );
  aoi22d1 U5 ( .A1(apb_prdata[31]), .A2(n134), .B1(n130), .B2(n813), .ZN(n3)
         );
  oai221d1 U7 ( .B1(n400), .B2(n146), .C1(n274), .C2(n138), .A(n7), .ZN(n468)
         );
  aoi22d1 U8 ( .A1(apb_prdata[30]), .A2(n134), .B1(n130), .B2(n811), .ZN(n7)
         );
  oai221d1 U10 ( .B1(n399), .B2(n146), .C1(n275), .C2(n138), .A(n9), .ZN(n469)
         );
  aoi22d1 U11 ( .A1(apb_prdata[29]), .A2(n134), .B1(n130), .B2(n809), .ZN(n9)
         );
  oai221d1 U13 ( .B1(n398), .B2(n145), .C1(n276), .C2(n138), .A(n11), .ZN(n470) );
  aoi22d1 U14 ( .A1(apb_prdata[28]), .A2(n134), .B1(n130), .B2(n807), .ZN(n11)
         );
  oai221d1 U16 ( .B1(n397), .B2(n145), .C1(n277), .C2(n138), .A(n13), .ZN(n471) );
  aoi22d1 U17 ( .A1(apb_prdata[27]), .A2(n134), .B1(n130), .B2(n805), .ZN(n13)
         );
  oai221d1 U19 ( .B1(n396), .B2(n145), .C1(n278), .C2(n138), .A(n15), .ZN(n472) );
  aoi22d1 U20 ( .A1(apb_prdata[26]), .A2(n134), .B1(n130), .B2(n803), .ZN(n15)
         );
  oai221d1 U22 ( .B1(n395), .B2(n145), .C1(n279), .C2(n138), .A(n17), .ZN(n473) );
  aoi22d1 U23 ( .A1(apb_prdata[25]), .A2(n134), .B1(n130), .B2(n801), .ZN(n17)
         );
  oai221d1 U25 ( .B1(n394), .B2(n145), .C1(n280), .C2(n138), .A(n19), .ZN(n474) );
  aoi22d1 U26 ( .A1(apb_prdata[24]), .A2(n134), .B1(n130), .B2(n799), .ZN(n19)
         );
  oai221d1 U28 ( .B1(n393), .B2(n145), .C1(n281), .C2(n138), .A(n21), .ZN(n475) );
  aoi22d1 U29 ( .A1(apb_prdata[23]), .A2(n135), .B1(n130), .B2(n797), .ZN(n21)
         );
  oai221d1 U31 ( .B1(n392), .B2(n145), .C1(n282), .C2(n138), .A(n23), .ZN(n476) );
  aoi22d1 U32 ( .A1(apb_prdata[22]), .A2(n134), .B1(n131), .B2(n795), .ZN(n23)
         );
  oai221d1 U34 ( .B1(n391), .B2(n145), .C1(n283), .C2(n139), .A(n25), .ZN(n477) );
  aoi22d1 U35 ( .A1(apb_prdata[21]), .A2(n135), .B1(n131), .B2(n793), .ZN(n25)
         );
  oai221d1 U37 ( .B1(n390), .B2(n145), .C1(n284), .C2(n139), .A(n27), .ZN(n478) );
  aoi22d1 U38 ( .A1(apb_prdata[20]), .A2(n135), .B1(n131), .B2(n791), .ZN(n27)
         );
  oai221d1 U40 ( .B1(n389), .B2(n145), .C1(n285), .C2(n139), .A(n29), .ZN(n479) );
  aoi22d1 U41 ( .A1(apb_prdata[19]), .A2(n135), .B1(n131), .B2(n789), .ZN(n29)
         );
  oai221d1 U43 ( .B1(n388), .B2(n144), .C1(n286), .C2(n139), .A(n31), .ZN(n480) );
  aoi22d1 U44 ( .A1(apb_prdata[18]), .A2(n135), .B1(n131), .B2(n787), .ZN(n31)
         );
  oai221d1 U46 ( .B1(n387), .B2(n144), .C1(n287), .C2(n139), .A(n33), .ZN(n481) );
  aoi221d1 U47 ( .B1(n131), .B2(n785), .C1(apb_prdata[17]), .C2(n135), .A(n698), .ZN(n33) );
  oai221d1 U50 ( .B1(n386), .B2(n144), .C1(n288), .C2(n139), .A(n37), .ZN(n482) );
  aoi221d1 U51 ( .B1(n132), .B2(n783), .C1(apb_prdata[16]), .C2(n135), .A(n697), .ZN(n37) );
  oai221d1 U54 ( .B1(n385), .B2(n144), .C1(n289), .C2(n139), .A(n41), .ZN(n483) );
  aoi221d1 U55 ( .B1(n132), .B2(n781), .C1(apb_prdata[15]), .C2(n136), .A(n696), .ZN(n41) );
  oai221d1 U58 ( .B1(n384), .B2(n144), .C1(n290), .C2(n139), .A(n45), .ZN(n484) );
  aoi221d1 U59 ( .B1(n132), .B2(n779), .C1(apb_prdata[14]), .C2(n136), .A(n695), .ZN(n45) );
  oai221d1 U62 ( .B1(n383), .B2(n144), .C1(n291), .C2(n139), .A(n49), .ZN(n485) );
  aoi221d1 U63 ( .B1(n132), .B2(n777), .C1(apb_prdata[13]), .C2(n136), .A(n694), .ZN(n49) );
  oai221d1 U66 ( .B1(n382), .B2(n144), .C1(n292), .C2(n140), .A(n53), .ZN(n486) );
  aoi221d1 U67 ( .B1(n132), .B2(n775), .C1(apb_prdata[12]), .C2(n136), .A(n693), .ZN(n53) );
  oai221d1 U70 ( .B1(n381), .B2(n144), .C1(n293), .C2(n140), .A(n57), .ZN(n487) );
  aoi221d1 U71 ( .B1(n132), .B2(n773), .C1(apb_prdata[11]), .C2(n136), .A(n692), .ZN(n57) );
  oai221d1 U74 ( .B1(n380), .B2(n144), .C1(n294), .C2(n140), .A(n61), .ZN(n488) );
  aoi221d1 U75 ( .B1(n132), .B2(n771), .C1(apb_prdata[10]), .C2(n136), .A(n691), .ZN(n61) );
  oai221d1 U78 ( .B1(n379), .B2(n143), .C1(n295), .C2(n140), .A(n65), .ZN(n489) );
  aoi221d1 U79 ( .B1(n132), .B2(n769), .C1(apb_prdata[9]), .C2(n136), .A(n690), 
        .ZN(n65) );
  oai221d1 U82 ( .B1(n378), .B2(n143), .C1(n297), .C2(n140), .A(n69), .ZN(n490) );
  aoi221d1 U83 ( .B1(n132), .B2(n767), .C1(apb_prdata[8]), .C2(n136), .A(n689), 
        .ZN(n69) );
  oai221d1 U86 ( .B1(n233), .B2(n144), .C1(n298), .C2(n140), .A(n73), .ZN(n491) );
  aoi221d1 U87 ( .B1(n132), .B2(n765), .C1(apb_prdata[7]), .C2(n135), .A(n688), 
        .ZN(n73) );
  oai221d1 U90 ( .B1(n234), .B2(n143), .C1(n299), .C2(n140), .A(n77), .ZN(n492) );
  aoi221d1 U91 ( .B1(n133), .B2(n763), .C1(apb_prdata[6]), .C2(n136), .A(n687), 
        .ZN(n77) );
  oai221d1 U94 ( .B1(n235), .B2(n143), .C1(n300), .C2(n140), .A(n81), .ZN(n493) );
  aoi221d1 U95 ( .B1(n133), .B2(n761), .C1(apb_prdata[5]), .C2(n137), .A(n686), 
        .ZN(n81) );
  oai221d1 U98 ( .B1(n236), .B2(n143), .C1(n301), .C2(n140), .A(n85), .ZN(n494) );
  aoi221d1 U99 ( .B1(n133), .B2(n759), .C1(apb_prdata[4]), .C2(n137), .A(n685), 
        .ZN(n85) );
  oai221d1 U102 ( .B1(n237), .B2(n143), .C1(n302), .C2(n140), .A(n89), .ZN(
        n495) );
  aoi221d1 U103 ( .B1(n133), .B2(n757), .C1(apb_prdata[3]), .C2(n137), .A(n684), .ZN(n89) );
  oai221d1 U106 ( .B1(n238), .B2(n143), .C1(n303), .C2(n142), .A(n93), .ZN(
        n496) );
  aoi221d1 U107 ( .B1(n133), .B2(n755), .C1(apb_prdata[2]), .C2(n137), .A(n683), .ZN(n93) );
  oai221d1 U110 ( .B1(n239), .B2(n143), .C1(n304), .C2(n142), .A(n97), .ZN(
        n497) );
  aoi221d1 U111 ( .B1(n131), .B2(n753), .C1(apb_prdata[1]), .C2(n137), .A(n682), .ZN(n97) );
  oai211d1 U114 ( .C1(n305), .C2(n138), .A(n101), .B(n102), .ZN(n498) );
  aoi321d1 U115 ( .C1(start_core), .C2(n103), .C3(n104), .B1(apb_prdata[0]), 
        .B2(n135), .A(n681), .ZN(n102) );
  aoi31d1 U119 ( .B1(n109), .B2(n103), .B3(apb_addr[1]), .A(n131), .ZN(n108)
         );
  oaim22d1 U128 ( .A1(n347), .A2(n112), .B1(lut_data_io[31]), .B2(n127), .ZN(
        n499) );
  oai22d1 U129 ( .A1(n86), .A2(n833), .B1(n401), .B2(n75), .ZN(n500) );
  oai22d1 U130 ( .A1(n83), .A2(n834), .B1(n400), .B2(n75), .ZN(n501) );
  oai22d1 U131 ( .A1(n87), .A2(n835), .B1(n399), .B2(n75), .ZN(n502) );
  oai22d1 U132 ( .A1(n87), .A2(n836), .B1(n398), .B2(n75), .ZN(n503) );
  oai22d1 U133 ( .A1(n87), .A2(n837), .B1(n397), .B2(n75), .ZN(n504) );
  oai22d1 U134 ( .A1(n87), .A2(n838), .B1(n396), .B2(n75), .ZN(n505) );
  oai22d1 U135 ( .A1(n87), .A2(n839), .B1(n395), .B2(n75), .ZN(n506) );
  oai22d1 U136 ( .A1(n87), .A2(n840), .B1(n394), .B2(n75), .ZN(n507) );
  oai22d1 U137 ( .A1(n87), .A2(n841), .B1(n393), .B2(n75), .ZN(n508) );
  oai22d1 U138 ( .A1(n86), .A2(n842), .B1(n392), .B2(n78), .ZN(n509) );
  oai22d1 U139 ( .A1(n86), .A2(n843), .B1(n391), .B2(n78), .ZN(n510) );
  oai22d1 U140 ( .A1(n86), .A2(n844), .B1(n390), .B2(n78), .ZN(n511) );
  oai22d1 U141 ( .A1(n86), .A2(n845), .B1(n389), .B2(n78), .ZN(n512) );
  oai22d1 U142 ( .A1(n86), .A2(n846), .B1(n388), .B2(n78), .ZN(n513) );
  oai22d1 U143 ( .A1(n86), .A2(n847), .B1(n387), .B2(n78), .ZN(n514) );
  oai22d1 U144 ( .A1(n86), .A2(n848), .B1(n386), .B2(n78), .ZN(n515) );
  oai22d1 U145 ( .A1(n86), .A2(n849), .B1(n385), .B2(n78), .ZN(n516) );
  oai22d1 U146 ( .A1(n86), .A2(n850), .B1(n384), .B2(n78), .ZN(n517) );
  oai22d1 U147 ( .A1(n86), .A2(n851), .B1(n383), .B2(n79), .ZN(n518) );
  oai22d1 U148 ( .A1(n86), .A2(n852), .B1(n382), .B2(n79), .ZN(n519) );
  oai22d1 U149 ( .A1(n86), .A2(n853), .B1(n381), .B2(n79), .ZN(n520) );
  oai22d1 U150 ( .A1(n86), .A2(n854), .B1(n380), .B2(n79), .ZN(n521) );
  oai22d1 U151 ( .A1(n86), .A2(n855), .B1(n379), .B2(n79), .ZN(n522) );
  oai22d1 U152 ( .A1(n83), .A2(n856), .B1(n378), .B2(n79), .ZN(n523) );
  oai222d1 U153 ( .A1(n307), .A2(n141), .B1(n233), .B2(n79), .C1(n83), .C2(
        n857), .ZN(n524) );
  oaim22d1 U154 ( .A1(n308), .A2(n105), .B1(lut_data_io[70]), .B2(n126), .ZN(
        n525) );
  oai222d1 U155 ( .A1(n308), .A2(n141), .B1(n234), .B2(n79), .C1(n83), .C2(
        n858), .ZN(n526) );
  oaim22d1 U156 ( .A1(n309), .A2(n105), .B1(lut_data_io[69]), .B2(n126), .ZN(
        n527) );
  oai222d1 U157 ( .A1(n309), .A2(n141), .B1(n235), .B2(n79), .C1(n83), .C2(
        n859), .ZN(n528) );
  oaim22d1 U158 ( .A1(n310), .A2(n105), .B1(lut_data_io[68]), .B2(n126), .ZN(
        n529) );
  oai222d1 U159 ( .A1(n310), .A2(n141), .B1(n236), .B2(n82), .C1(n83), .C2(
        n860), .ZN(n530) );
  oaim22d1 U160 ( .A1(n311), .A2(n105), .B1(lut_data_io[67]), .B2(n126), .ZN(
        n531) );
  oai222d1 U161 ( .A1(n311), .A2(n141), .B1(n237), .B2(n82), .C1(n83), .C2(
        n861), .ZN(n532) );
  oaim22d1 U162 ( .A1(n312), .A2(n105), .B1(lut_data_io[66]), .B2(n126), .ZN(
        n533) );
  oai222d1 U163 ( .A1(n312), .A2(n141), .B1(n238), .B2(n82), .C1(n83), .C2(
        n862), .ZN(n534) );
  oaim22d1 U164 ( .A1(n313), .A2(n105), .B1(lut_data_io[65]), .B2(n126), .ZN(
        n535) );
  oai222d1 U165 ( .A1(n313), .A2(n141), .B1(n239), .B2(n82), .C1(n83), .C2(
        n863), .ZN(n536) );
  oaim22d1 U166 ( .A1(n314), .A2(n105), .B1(lut_data_io[64]), .B2(n126), .ZN(
        n537) );
  oai222d1 U167 ( .A1(n314), .A2(n141), .B1(n815), .B2(n82), .C1(n83), .C2(
        n864), .ZN(n538) );
  oaim22d1 U171 ( .A1(n307), .A2(n105), .B1(lut_data_io[71]), .B2(n125), .ZN(
        n539) );
  oai222d1 U172 ( .A1(n315), .A2(n74), .B1(n241), .B2(n62), .C1(n833), .C2(n55), .ZN(n540) );
  oaim22d1 U173 ( .A1(n316), .A2(n105), .B1(lut_data_io[62]), .B2(n125), .ZN(
        n541) );
  oai222d1 U174 ( .A1(n316), .A2(n74), .B1(n242), .B2(n62), .C1(n834), .C2(n59), .ZN(n542) );
  oaim22d1 U175 ( .A1(n317), .A2(n107), .B1(lut_data_io[61]), .B2(n125), .ZN(
        n543) );
  oai222d1 U176 ( .A1(n317), .A2(n74), .B1(n243), .B2(n62), .C1(n835), .C2(n59), .ZN(n544) );
  oaim22d1 U177 ( .A1(n318), .A2(n107), .B1(lut_data_io[60]), .B2(n125), .ZN(
        n545) );
  oai222d1 U178 ( .A1(n318), .A2(n74), .B1(n244), .B2(n62), .C1(n836), .C2(n59), .ZN(n546) );
  oaim22d1 U179 ( .A1(n319), .A2(n107), .B1(lut_data_io[59]), .B2(n125), .ZN(
        n547) );
  oai222d1 U180 ( .A1(n319), .A2(n74), .B1(n245), .B2(n62), .C1(n837), .C2(n59), .ZN(n548) );
  oaim22d1 U181 ( .A1(n320), .A2(n107), .B1(lut_data_io[58]), .B2(n125), .ZN(
        n549) );
  oai222d1 U182 ( .A1(n320), .A2(n74), .B1(n246), .B2(n62), .C1(n838), .C2(n59), .ZN(n550) );
  oaim22d1 U183 ( .A1(n321), .A2(n107), .B1(lut_data_io[57]), .B2(n124), .ZN(
        n551) );
  oai222d1 U184 ( .A1(n321), .A2(n71), .B1(n247), .B2(n62), .C1(n839), .C2(n59), .ZN(n552) );
  oaim22d1 U185 ( .A1(n322), .A2(n107), .B1(lut_data_io[56]), .B2(n124), .ZN(
        n553) );
  oai222d1 U186 ( .A1(n322), .A2(n71), .B1(n248), .B2(n62), .C1(n840), .C2(n59), .ZN(n554) );
  oaim22d1 U187 ( .A1(n323), .A2(n107), .B1(lut_data_io[55]), .B2(n125), .ZN(
        n555) );
  oai222d1 U188 ( .A1(n323), .A2(n71), .B1(n249), .B2(n62), .C1(n841), .C2(n59), .ZN(n556) );
  oaim22d1 U189 ( .A1(n324), .A2(n107), .B1(lut_data_io[54]), .B2(n124), .ZN(
        n557) );
  oai222d1 U190 ( .A1(n324), .A2(n71), .B1(n250), .B2(n63), .C1(n842), .C2(n59), .ZN(n558) );
  oaim22d1 U191 ( .A1(n325), .A2(n107), .B1(lut_data_io[53]), .B2(n124), .ZN(
        n559) );
  oai222d1 U192 ( .A1(n325), .A2(n71), .B1(n251), .B2(n63), .C1(n843), .C2(n59), .ZN(n560) );
  oaim22d1 U193 ( .A1(n326), .A2(n111), .B1(lut_data_io[52]), .B2(n124), .ZN(
        n561) );
  oai222d1 U194 ( .A1(n326), .A2(n71), .B1(n252), .B2(n63), .C1(n844), .C2(n58), .ZN(n562) );
  oaim22d1 U195 ( .A1(n327), .A2(n111), .B1(lut_data_io[51]), .B2(n123), .ZN(
        n563) );
  oai222d1 U196 ( .A1(n327), .A2(n71), .B1(n253), .B2(n63), .C1(n845), .C2(n58), .ZN(n564) );
  oaim22d1 U197 ( .A1(n328), .A2(n111), .B1(lut_data_io[50]), .B2(n123), .ZN(
        n565) );
  oai222d1 U198 ( .A1(n328), .A2(n71), .B1(n254), .B2(n63), .C1(n846), .C2(n58), .ZN(n566) );
  oaim22d1 U199 ( .A1(n329), .A2(n111), .B1(lut_data_io[49]), .B2(n124), .ZN(
        n567) );
  oai222d1 U200 ( .A1(n329), .A2(n71), .B1(n255), .B2(n63), .C1(n847), .C2(n58), .ZN(n568) );
  oaim22d1 U201 ( .A1(n330), .A2(n111), .B1(lut_data_io[48]), .B2(n123), .ZN(
        n569) );
  oai222d1 U202 ( .A1(n330), .A2(n71), .B1(n256), .B2(n63), .C1(n848), .C2(n58), .ZN(n570) );
  oaim22d1 U203 ( .A1(n331), .A2(n111), .B1(lut_data_io[47]), .B2(n122), .ZN(
        n571) );
  oai222d1 U204 ( .A1(n331), .A2(n71), .B1(n257), .B2(n63), .C1(n849), .C2(n58), .ZN(n572) );
  oaim22d1 U205 ( .A1(n332), .A2(n111), .B1(lut_data_io[46]), .B2(n123), .ZN(
        n573) );
  oai222d1 U206 ( .A1(n332), .A2(n71), .B1(n258), .B2(n63), .C1(n850), .C2(n58), .ZN(n574) );
  oaim22d1 U207 ( .A1(n333), .A2(n111), .B1(lut_data_io[45]), .B2(n122), .ZN(
        n575) );
  oai222d1 U208 ( .A1(n333), .A2(n71), .B1(n259), .B2(n66), .C1(n851), .C2(n58), .ZN(n576) );
  oaim22d1 U209 ( .A1(n334), .A2(n111), .B1(lut_data_io[44]), .B2(n122), .ZN(
        n577) );
  oai222d1 U210 ( .A1(n334), .A2(n71), .B1(n260), .B2(n66), .C1(n852), .C2(n58), .ZN(n578) );
  oaim22d1 U211 ( .A1(n335), .A2(n112), .B1(lut_data_io[43]), .B2(n123), .ZN(
        n579) );
  oai222d1 U212 ( .A1(n335), .A2(n70), .B1(n261), .B2(n66), .C1(n853), .C2(n58), .ZN(n580) );
  oaim22d1 U213 ( .A1(n336), .A2(n112), .B1(lut_data_io[42]), .B2(n122), .ZN(
        n581) );
  oai222d1 U214 ( .A1(n336), .A2(n70), .B1(n262), .B2(n66), .C1(n854), .C2(n58), .ZN(n582) );
  oaim22d1 U215 ( .A1(n337), .A2(n112), .B1(lut_data_io[41]), .B2(n121), .ZN(
        n583) );
  oai222d1 U216 ( .A1(n337), .A2(n70), .B1(n263), .B2(n66), .C1(n855), .C2(n55), .ZN(n584) );
  oaim22d1 U217 ( .A1(n338), .A2(n112), .B1(lut_data_io[40]), .B2(n123), .ZN(
        n585) );
  oai222d1 U218 ( .A1(n338), .A2(n70), .B1(n264), .B2(n66), .C1(n856), .C2(n55), .ZN(n586) );
  oaim22d1 U219 ( .A1(n339), .A2(n112), .B1(lut_data_io[39]), .B2(n121), .ZN(
        n587) );
  oai222d1 U220 ( .A1(n339), .A2(n70), .B1(n265), .B2(n66), .C1(n857), .C2(n55), .ZN(n588) );
  oaim22d1 U221 ( .A1(n340), .A2(n112), .B1(lut_data_io[38]), .B2(n121), .ZN(
        n589) );
  oai222d1 U222 ( .A1(n340), .A2(n70), .B1(n266), .B2(n66), .C1(n858), .C2(n58), .ZN(n590) );
  oaim22d1 U223 ( .A1(n341), .A2(n112), .B1(lut_data_io[37]), .B2(n122), .ZN(
        n591) );
  oai222d1 U224 ( .A1(n341), .A2(n70), .B1(n267), .B2(n66), .C1(n859), .C2(n55), .ZN(n592) );
  oaim22d1 U225 ( .A1(n342), .A2(n112), .B1(lut_data_io[36]), .B2(n121), .ZN(
        n593) );
  oai222d1 U226 ( .A1(n342), .A2(n70), .B1(n268), .B2(n67), .C1(n860), .C2(n55), .ZN(n594) );
  oaim22d1 U227 ( .A1(n343), .A2(n116), .B1(lut_data_io[35]), .B2(n121), .ZN(
        n595) );
  oai222d1 U228 ( .A1(n343), .A2(n70), .B1(n269), .B2(n67), .C1(n861), .C2(n55), .ZN(n596) );
  oaim22d1 U229 ( .A1(n344), .A2(n113), .B1(lut_data_io[34]), .B2(n122), .ZN(
        n597) );
  oai222d1 U230 ( .A1(n344), .A2(n70), .B1(n270), .B2(n67), .C1(n862), .C2(n55), .ZN(n598) );
  oaim22d1 U231 ( .A1(n345), .A2(n113), .B1(lut_data_io[33]), .B2(n120), .ZN(
        n599) );
  oai222d1 U232 ( .A1(n345), .A2(n70), .B1(n271), .B2(n67), .C1(n863), .C2(n55), .ZN(n600) );
  oaim22d1 U233 ( .A1(n346), .A2(n113), .B1(lut_data_io[32]), .B2(n120), .ZN(
        n601) );
  oai222d1 U234 ( .A1(n346), .A2(n70), .B1(n272), .B2(n67), .C1(n864), .C2(n55), .ZN(n602) );
  oaim22d1 U238 ( .A1(n315), .A2(n113), .B1(lut_data_io[63]), .B2(n122), .ZN(
        n603) );
  oaim22d1 U239 ( .A1(n348), .A2(n113), .B1(lut_data_io[30]), .B2(n120), .ZN(
        n604) );
  oaim22d1 U240 ( .A1(n349), .A2(n113), .B1(lut_data_io[29]), .B2(n120), .ZN(
        n605) );
  oaim22d1 U241 ( .A1(n350), .A2(n113), .B1(lut_data_io[28]), .B2(n121), .ZN(
        n606) );
  oaim22d1 U242 ( .A1(n351), .A2(n113), .B1(lut_data_io[27]), .B2(n120), .ZN(
        n607) );
  oaim22d1 U243 ( .A1(n352), .A2(n113), .B1(lut_data_io[26]), .B2(n120), .ZN(
        n608) );
  oaim22d1 U244 ( .A1(n353), .A2(n116), .B1(lut_data_io[25]), .B2(n121), .ZN(
        n609) );
  oaim22d1 U245 ( .A1(n354), .A2(n116), .B1(lut_data_io[24]), .B2(n120), .ZN(
        n610) );
  oaim22d1 U246 ( .A1(n355), .A2(n116), .B1(lut_data_io[23]), .B2(n120), .ZN(
        n611) );
  oaim22d1 U247 ( .A1(n356), .A2(n116), .B1(lut_data_io[22]), .B2(n120), .ZN(
        n612) );
  oaim22d1 U248 ( .A1(n357), .A2(n116), .B1(lut_data_io[21]), .B2(n121), .ZN(
        n613) );
  oaim22d1 U249 ( .A1(n358), .A2(n118), .B1(lut_data_io[20]), .B2(n120), .ZN(
        n614) );
  oaim22d1 U250 ( .A1(n359), .A2(n116), .B1(lut_data_io[19]), .B2(n123), .ZN(
        n615) );
  oaim22d1 U251 ( .A1(n360), .A2(n118), .B1(lut_data_io[18]), .B2(n122), .ZN(
        n616) );
  oaim22d1 U252 ( .A1(n361), .A2(n118), .B1(lut_data_io[17]), .B2(n121), .ZN(
        n617) );
  oaim22d1 U253 ( .A1(n362), .A2(n116), .B1(lut_data_io[16]), .B2(n121), .ZN(
        n618) );
  oaim22d1 U254 ( .A1(n363), .A2(n118), .B1(lut_data_io[15]), .B2(n123), .ZN(
        n619) );
  oaim22d1 U255 ( .A1(n364), .A2(n119), .B1(lut_data_io[14]), .B2(n122), .ZN(
        n620) );
  oaim22d1 U256 ( .A1(n365), .A2(n118), .B1(lut_data_io[13]), .B2(n122), .ZN(
        n621) );
  oaim22d1 U257 ( .A1(n366), .A2(n119), .B1(lut_data_io[12]), .B2(n124), .ZN(
        n622) );
  oaim22d1 U258 ( .A1(n367), .A2(n119), .B1(lut_data_io[11]), .B2(n123), .ZN(
        n623) );
  oaim22d1 U259 ( .A1(n368), .A2(n118), .B1(lut_data_io[10]), .B2(n123), .ZN(
        n624) );
  oaim22d1 U260 ( .A1(n369), .A2(n116), .B1(lut_data_io[9]), .B2(n124), .ZN(
        n625) );
  oaim22d1 U261 ( .A1(n370), .A2(n119), .B1(lut_data_io[8]), .B2(n124), .ZN(
        n626) );
  oaim22d1 U262 ( .A1(n371), .A2(n118), .B1(lut_data_io[7]), .B2(n124), .ZN(
        n627) );
  oaim22d1 U263 ( .A1(n372), .A2(n119), .B1(lut_data_io[6]), .B2(n125), .ZN(
        n628) );
  oaim22d1 U264 ( .A1(n373), .A2(n119), .B1(lut_data_io[5]), .B2(n125), .ZN(
        n629) );
  oaim22d1 U265 ( .A1(n374), .A2(n118), .B1(lut_data_io[4]), .B2(n125), .ZN(
        n630) );
  oaim22d1 U266 ( .A1(n375), .A2(n119), .B1(lut_data_io[3]), .B2(n126), .ZN(
        n631) );
  oaim22d1 U267 ( .A1(n376), .A2(n119), .B1(lut_data_io[2]), .B2(n126), .ZN(
        n632) );
  oaim22d1 U268 ( .A1(n377), .A2(n118), .B1(lut_data_io[1]), .B2(n126), .ZN(
        n633) );
  oai222d1 U269 ( .A1(n347), .A2(n54), .B1(n273), .B2(n42), .C1(n833), .C2(n35), .ZN(n634) );
  oai222d1 U271 ( .A1(n348), .A2(n54), .B1(n274), .B2(n42), .C1(n834), .C2(n39), .ZN(n635) );
  oai222d1 U273 ( .A1(n349), .A2(n54), .B1(n275), .B2(n42), .C1(n835), .C2(n39), .ZN(n636) );
  oai222d1 U275 ( .A1(n350), .A2(n54), .B1(n276), .B2(n42), .C1(n836), .C2(n39), .ZN(n637) );
  oai222d1 U277 ( .A1(n351), .A2(n54), .B1(n277), .B2(n42), .C1(n837), .C2(n39), .ZN(n638) );
  oai222d1 U279 ( .A1(n352), .A2(n54), .B1(n278), .B2(n42), .C1(n838), .C2(n39), .ZN(n639) );
  oai222d1 U281 ( .A1(n353), .A2(n51), .B1(n279), .B2(n42), .C1(n839), .C2(n39), .ZN(n640) );
  oai222d1 U283 ( .A1(n354), .A2(n51), .B1(n280), .B2(n42), .C1(n840), .C2(n39), .ZN(n641) );
  oai222d1 U285 ( .A1(n355), .A2(n51), .B1(n281), .B2(n42), .C1(n841), .C2(n39), .ZN(n642) );
  oai222d1 U287 ( .A1(n356), .A2(n51), .B1(n282), .B2(n43), .C1(n842), .C2(n38), .ZN(n643) );
  oai222d1 U289 ( .A1(n357), .A2(n51), .B1(n283), .B2(n43), .C1(n843), .C2(n38), .ZN(n644) );
  oai222d1 U291 ( .A1(n358), .A2(n51), .B1(n284), .B2(n43), .C1(n844), .C2(n38), .ZN(n645) );
  oai222d1 U293 ( .A1(n359), .A2(n51), .B1(n285), .B2(n43), .C1(n845), .C2(n38), .ZN(n646) );
  oai222d1 U295 ( .A1(n360), .A2(n51), .B1(n286), .B2(n43), .C1(n846), .C2(n38), .ZN(n647) );
  oai222d1 U297 ( .A1(n361), .A2(n51), .B1(n287), .B2(n43), .C1(n847), .C2(n38), .ZN(n648) );
  oai222d1 U298 ( .A1(n362), .A2(n51), .B1(n288), .B2(n43), .C1(n848), .C2(n38), .ZN(n649) );
  oai222d1 U299 ( .A1(n363), .A2(n51), .B1(n289), .B2(n43), .C1(n849), .C2(n38), .ZN(n650) );
  oai222d1 U300 ( .A1(n364), .A2(n51), .B1(n290), .B2(n43), .C1(n850), .C2(n38), .ZN(n651) );
  oai222d1 U301 ( .A1(n365), .A2(n51), .B1(n291), .B2(n46), .C1(n851), .C2(n38), .ZN(n652) );
  oai222d1 U302 ( .A1(n366), .A2(n51), .B1(n292), .B2(n46), .C1(n852), .C2(n38), .ZN(n653) );
  oai222d1 U303 ( .A1(n367), .A2(n50), .B1(n293), .B2(n46), .C1(n853), .C2(n38), .ZN(n654) );
  oai222d1 U304 ( .A1(n368), .A2(n50), .B1(n294), .B2(n46), .C1(n854), .C2(n38), .ZN(n655) );
  oai222d1 U305 ( .A1(n369), .A2(n50), .B1(n295), .B2(n46), .C1(n855), .C2(n35), .ZN(n656) );
  oai222d1 U306 ( .A1(n370), .A2(n50), .B1(n297), .B2(n46), .C1(n856), .C2(n35), .ZN(n657) );
  oai222d1 U307 ( .A1(n371), .A2(n50), .B1(n298), .B2(n46), .C1(n857), .C2(n35), .ZN(n658) );
  oai222d1 U308 ( .A1(n372), .A2(n50), .B1(n299), .B2(n46), .C1(n858), .C2(n35), .ZN(n659) );
  oai222d1 U309 ( .A1(n373), .A2(n50), .B1(n300), .B2(n46), .C1(n859), .C2(n38), .ZN(n660) );
  oai222d1 U310 ( .A1(n374), .A2(n50), .B1(n301), .B2(n47), .C1(n860), .C2(n35), .ZN(n661) );
  oai222d1 U311 ( .A1(n375), .A2(n50), .B1(n302), .B2(n47), .C1(n861), .C2(n35), .ZN(n662) );
  oai222d1 U312 ( .A1(n376), .A2(n50), .B1(n303), .B2(n47), .C1(n862), .C2(n35), .ZN(n663) );
  oai222d1 U313 ( .A1(n377), .A2(n50), .B1(n304), .B2(n47), .C1(n863), .C2(n35), .ZN(n664) );
  oaim22d1 U314 ( .A1(n306), .A2(n119), .B1(lut_data_io[0]), .B2(n127), .ZN(
        n665) );
  oai222d1 U316 ( .A1(n306), .A2(n50), .B1(n305), .B2(n47), .C1(n864), .C2(n35), .ZN(n666) );
  oaim21d1 U319 ( .B1(dctc_fifo_data[0]), .B2(n16), .A(n106), .ZN(n402) );
  oaim21d1 U320 ( .B1(dctc_fifo_data[1]), .B2(n14), .A(n100), .ZN(n403) );
  oaim21d1 U321 ( .B1(dctc_fifo_data[2]), .B2(n14), .A(n96), .ZN(n404) );
  oaim21d1 U322 ( .B1(dctc_fifo_data[3]), .B2(n14), .A(n92), .ZN(n405) );
  oaim21d1 U323 ( .B1(dctc_fifo_data[4]), .B2(n14), .A(n88), .ZN(n406) );
  oaim21d1 U324 ( .B1(dctc_fifo_data[5]), .B2(n14), .A(n84), .ZN(n407) );
  oaim21d1 U325 ( .B1(dctc_fifo_data[6]), .B2(n14), .A(n80), .ZN(n408) );
  oaim21d1 U326 ( .B1(dctc_fifo_data[7]), .B2(n14), .A(n76), .ZN(n409) );
  oaim21d1 U327 ( .B1(dctc_fifo_data[8]), .B2(n14), .A(n72), .ZN(n410) );
  oaim21d1 U328 ( .B1(dctc_fifo_data[9]), .B2(n14), .A(n68), .ZN(n411) );
  oaim21d1 U329 ( .B1(dctc_fifo_data[10]), .B2(n14), .A(n64), .ZN(n412) );
  oaim21d1 U330 ( .B1(dctc_fifo_data[11]), .B2(n14), .A(n60), .ZN(n413) );
  oaim21d1 U331 ( .B1(dctc_fifo_data[12]), .B2(n14), .A(n56), .ZN(n414) );
  oaim21d1 U332 ( .B1(dctc_fifo_data[13]), .B2(n16), .A(n52), .ZN(n415) );
  oaim21d1 U333 ( .B1(dctc_fifo_data[14]), .B2(n16), .A(n48), .ZN(n416) );
  oaim21d1 U334 ( .B1(dctc_fifo_data[15]), .B2(n16), .A(n44), .ZN(n417) );
  oaim21d1 U335 ( .B1(dctc_fifo_data[16]), .B2(n16), .A(n40), .ZN(n418) );
  oaim21d1 U336 ( .B1(dctc_fifo_data[17]), .B2(n16), .A(n36), .ZN(n419) );
  oaim21d1 U337 ( .B1(pc_fifo_data[0]), .B2(n16), .A(n106), .ZN(n420) );
  oaim21d1 U339 ( .B1(pc_fifo_data[1]), .B2(n16), .A(n100), .ZN(n421) );
  oaim21d1 U341 ( .B1(pc_fifo_data[2]), .B2(n16), .A(n96), .ZN(n422) );
  oaim21d1 U343 ( .B1(pc_fifo_data[3]), .B2(n16), .A(n92), .ZN(n423) );
  oaim21d1 U345 ( .B1(pc_fifo_data[4]), .B2(n16), .A(n88), .ZN(n424) );
  oaim21d1 U347 ( .B1(pc_fifo_data[5]), .B2(n16), .A(n84), .ZN(n425) );
  oaim21d1 U349 ( .B1(pc_fifo_data[6]), .B2(n16), .A(n80), .ZN(n426) );
  oaim21d1 U351 ( .B1(pc_fifo_data[7]), .B2(n16), .A(n76), .ZN(n427) );
  oaim21d1 U353 ( .B1(pc_fifo_data[8]), .B2(n6), .A(n72), .ZN(n428) );
  oaim21d1 U355 ( .B1(pc_fifo_data[9]), .B2(n6), .A(n68), .ZN(n429) );
  oaim21d1 U357 ( .B1(pc_fifo_data[10]), .B2(n6), .A(n64), .ZN(n430) );
  oaim21d1 U359 ( .B1(pc_fifo_data[11]), .B2(n6), .A(n60), .ZN(n431) );
  oaim21d1 U361 ( .B1(pc_fifo_data[12]), .B2(n6), .A(n56), .ZN(n432) );
  oaim21d1 U363 ( .B1(pc_fifo_data[13]), .B2(n6), .A(n52), .ZN(n433) );
  oaim21d1 U365 ( .B1(pc_fifo_data[14]), .B2(n6), .A(n48), .ZN(n434) );
  oaim21d1 U367 ( .B1(pc_fifo_data[15]), .B2(n6), .A(n44), .ZN(n435) );
  oaim21d1 U369 ( .B1(pc_fifo_data[16]), .B2(n6), .A(n40), .ZN(n436) );
  oaim21d1 U371 ( .B1(pc_fifo_data[17]), .B2(n6), .A(n36), .ZN(n437) );
  oai22d1 U373 ( .A1(n863), .A2(n159), .B1(n716), .B2(n465), .ZN(n438) );
  oai22d1 U374 ( .A1(n862), .A2(n159), .B1(n715), .B2(n465), .ZN(n439) );
  oai22d1 U375 ( .A1(n861), .A2(n159), .B1(n714), .B2(n465), .ZN(n440) );
  oai22d1 U376 ( .A1(n860), .A2(n159), .B1(n713), .B2(n465), .ZN(n441) );
  oai22d1 U377 ( .A1(n859), .A2(n159), .B1(n712), .B2(n465), .ZN(n442) );
  oai22d1 U378 ( .A1(n858), .A2(n159), .B1(n711), .B2(n465), .ZN(n443) );
  oai22d1 U379 ( .A1(n857), .A2(n159), .B1(n710), .B2(n465), .ZN(n444) );
  oai22d1 U380 ( .A1(n856), .A2(n159), .B1(n709), .B2(n465), .ZN(n445) );
  oai22d1 U381 ( .A1(n855), .A2(n159), .B1(n708), .B2(n465), .ZN(n446) );
  oai22d1 U382 ( .A1(n854), .A2(n159), .B1(n707), .B2(n465), .ZN(n447) );
  oai22d1 U383 ( .A1(n853), .A2(n159), .B1(n706), .B2(n465), .ZN(n448) );
  oai22d1 U385 ( .A1(n852), .A2(n159), .B1(n705), .B2(n465), .ZN(n449) );
  oai22d1 U387 ( .A1(n851), .A2(n159), .B1(n704), .B2(n465), .ZN(n450) );
  oai22d1 U389 ( .A1(n850), .A2(n159), .B1(n703), .B2(n465), .ZN(n451) );
  oai22d1 U391 ( .A1(n849), .A2(n159), .B1(n702), .B2(n465), .ZN(n452) );
  oai22d1 U393 ( .A1(n848), .A2(n159), .B1(n701), .B2(n465), .ZN(n453) );
  oai22d1 U395 ( .A1(n847), .A2(n159), .B1(n700), .B2(n465), .ZN(n454) );
  oai211d1 U397 ( .C1(n864), .C2(n161), .A(n162), .B(n163), .ZN(n455) );
  aoi22d1 U398 ( .A1(pc_fifo_read), .A2(pc_fifo_addr[0]), .B1(
        dctc_fifo_addr[0]), .B2(n164), .ZN(n163) );
  oai211d1 U400 ( .C1(n863), .C2(n161), .A(n166), .B(n167), .ZN(n456) );
  aoi22d1 U401 ( .A1(pc_fifo_addr[1]), .A2(pc_fifo_read), .B1(
        dctc_fifo_addr[1]), .B2(n164), .ZN(n167) );
  oai211d1 U403 ( .C1(n862), .C2(n161), .A(n168), .B(n169), .ZN(n457) );
  aoi22d1 U404 ( .A1(pc_fifo_addr[2]), .A2(pc_fifo_read), .B1(
        dctc_fifo_addr[2]), .B2(n164), .ZN(n169) );
  oai211d1 U406 ( .C1(n861), .C2(n161), .A(n170), .B(n171), .ZN(n458) );
  aoi22d1 U407 ( .A1(pc_fifo_addr[3]), .A2(pc_fifo_read), .B1(
        dctc_fifo_addr[3]), .B2(n164), .ZN(n171) );
  oai211d1 U409 ( .C1(n860), .C2(n161), .A(n172), .B(n173), .ZN(n459) );
  aoi22d1 U410 ( .A1(pc_fifo_addr[4]), .A2(pc_fifo_read), .B1(
        dctc_fifo_addr[4]), .B2(n164), .ZN(n173) );
  oai211d1 U412 ( .C1(n859), .C2(n161), .A(n174), .B(n175), .ZN(n460) );
  aoi22d1 U413 ( .A1(pc_fifo_addr[5]), .A2(pc_fifo_read), .B1(
        dctc_fifo_addr[5]), .B2(n164), .ZN(n175) );
  oai211d1 U415 ( .C1(n858), .C2(n161), .A(n176), .B(n177), .ZN(n461) );
  aoi22d1 U416 ( .A1(pc_fifo_addr[6]), .A2(pc_fifo_read), .B1(
        dctc_fifo_addr[6]), .B2(n164), .ZN(n177) );
  oai211d1 U418 ( .C1(n857), .C2(n161), .A(n178), .B(n179), .ZN(n462) );
  aoi22d1 U419 ( .A1(pc_fifo_addr[7]), .A2(pc_fifo_read), .B1(
        dctc_fifo_addr[7]), .B2(n164), .ZN(n179) );
  oai22d1 U426 ( .A1(n864), .A2(n159), .B1(n699), .B2(n465), .ZN(n463) );
  oai22d1 U530 ( .A1(n854), .A2(n190), .B1(n678), .B2(n192), .ZN(N205) );
  oai22d1 U533 ( .A1(n855), .A2(n190), .B1(n677), .B2(n192), .ZN(N204) );
  oai22d1 U536 ( .A1(n856), .A2(n190), .B1(n676), .B2(n192), .ZN(N203) );
  oai22d1 U539 ( .A1(n857), .A2(n190), .B1(n675), .B2(n192), .ZN(N202) );
  oai22d1 U542 ( .A1(n858), .A2(n190), .B1(n674), .B2(n192), .ZN(N201) );
  oai22d1 U545 ( .A1(n859), .A2(n190), .B1(n673), .B2(n192), .ZN(N200) );
  oai22d1 U548 ( .A1(n860), .A2(n190), .B1(n672), .B2(n192), .ZN(N199) );
  oai22d1 U551 ( .A1(n861), .A2(n190), .B1(n671), .B2(n192), .ZN(N198) );
  oai22d1 U554 ( .A1(n862), .A2(n190), .B1(n670), .B2(n192), .ZN(N197) );
  oai22d1 U557 ( .A1(n863), .A2(n190), .B1(n669), .B2(n192), .ZN(N196) );
  oai22d1 U560 ( .A1(n864), .A2(n190), .B1(n668), .B2(n192), .ZN(N195) );
  oai211d1 U576 ( .C1(n110), .C2(n209), .A(n189), .B(n182), .ZN(N160) );
  or02d0 U577 ( .A1(apb_pwrite), .A2(n832), .Z(n110) );
  oai21d1 U579 ( .B1(n832), .B2(n209), .A(n189), .ZN(N154) );
  oai31d1 U587 ( .B1(n825), .B2(n832), .B3(n829), .A(n6), .ZN(N153) );
  nr03d1 U117 ( .A1(n137), .A2(mcmc_data_read_rise_d_3), .A3(n8), .ZN(n104) );
  an04d1 U118 ( .A1(n142), .A2(n6), .A3(n146), .A4(n108), .Z(n4) );
  nr03d1 U120 ( .A1(mcmc_data_read_rise_d_1), .A2(mcmc_data_read_rise_d_2), 
        .A3(n110), .ZN(n103) );
  nr03d1 U124 ( .A1(fifo_data_read_rise_d), .A2(mcmc_data_read_rise_d_1), .A3(
        n718), .ZN(n5) );
  nd04d1 U125 ( .A1(mcmc_data_read_rise_d_3), .A2(n6), .A3(n717), .A4(n718), 
        .ZN(n2) );
  nd12d1 U425 ( .A1(N155), .A2(n182), .ZN(n181) );
  nr03d1 U508 ( .A1(n187), .A2(apb_addr[1]), .A3(n828), .ZN(n185) );
  nr04d1 U565 ( .A1(mcmc_lut_read), .A2(apb_addr[2]), .A3(n187), .A4(n829), 
        .ZN(n203) );
  nd12d1 U571 ( .A1(mcmc_data_read_d_3), .A2(mcmc_data_read_3), .ZN(n158) );
  nd04d1 U573 ( .A1(apb_addr[2]), .A2(apb_addr[1]), .A3(n824), .A4(n830), .ZN(
        n207) );
  nd12d1 U580 ( .A1(fifo_data_read_d), .A2(fifo_data_read), .ZN(n189) );
  nd04d1 U582 ( .A1(apb_addr[0]), .A2(n824), .A3(n829), .A4(n828), .ZN(n210)
         );
  nr04d1 U590 ( .A1(n825), .A2(n829), .A3(n205), .A4(n864), .ZN(N102) );
  nr03d1 U595 ( .A1(apb_addr[0]), .A2(apb_addr[2]), .A3(n187), .ZN(n109) );
  nr04d1 U597 ( .A1(apb_addr[9]), .A2(apb_addr[8]), .A3(apb_addr[7]), .A4(
        apb_addr[6]), .ZN(n213) );
  nr03d1 U598 ( .A1(apb_addr[3]), .A2(apb_addr[5]), .A3(apb_addr[4]), .ZN(n212) );
  dpram256x18_cb fifo ( .A1(fifo_addr), .A2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .CEB1(n_1_net_), .CEB2(1'b1), .WEB1(n_3_net_), 
        .WEB2(1'b1), .OEB1(n_5_net_), .OEB2(1'b1), .CSB1(n_7_net_), .CSB2(1'b1), .I1(fifo_data_in), .I2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .O1(
        fifo_data_out) );
  spram2048x72_cb lut_mcmc ( .A(lut_addr), .CEB(n_10_net_), .WEB(n_11_net_), 
        .OEB(n_12_net_), .CSB(n_13_net_), .IO(lut_data_io) );
  dfcrq1 cs_reg ( .D(N154), .CP(apb_clk), .CDN(n196), .Q(cs) );
  dfcrq1 oe_reg ( .D(N160), .CP(apb_clk), .CDN(n196), .Q(oe) );
  dfcrq1 lut_cs_reg ( .D(N181), .CP(apb_clk), .CDN(n180), .Q(lut_cs) );
  dfcrq1 lut_oe_reg ( .D(N186), .CP(apb_clk), .CDN(n180), .Q(lut_oe) );
  dfcrn1 we_reg ( .D(N155), .CP(apb_clk), .CDN(n208), .QN(n223) );
  dfcrq1 mcmc_data_read_d_2_reg ( .D(n827), .CP(apb_clk), .CDN(n180), .Q(
        mcmc_data_read_d_2) );
  dfcrq1 mcmc_data_read_d_1_reg ( .D(n826), .CP(apb_clk), .CDN(n186), .Q(
        mcmc_data_read_d_1) );
  dfcrq1 dctc_fifo_data_reg_17_ ( .D(n419), .CP(apb_clk), .CDN(n188), .Q(
        dctc_fifo_data[17]) );
  dfcrq1 pc_fifo_data_reg_17_ ( .D(n437), .CP(apb_clk), .CDN(n193), .Q(
        pc_fifo_data[17]) );
  dfcrq1 pc_fifo_data_reg_16_ ( .D(n436), .CP(apb_clk), .CDN(n193), .Q(
        pc_fifo_data[16]) );
  dfcrq1 pc_fifo_data_reg_15_ ( .D(n435), .CP(apb_clk), .CDN(n193), .Q(
        pc_fifo_data[15]) );
  dfcrq1 pc_fifo_data_reg_14_ ( .D(n434), .CP(apb_clk), .CDN(n193), .Q(
        pc_fifo_data[14]) );
  dfcrq1 pc_fifo_data_reg_13_ ( .D(n433), .CP(apb_clk), .CDN(n193), .Q(
        pc_fifo_data[13]) );
  dfcrq1 pc_fifo_data_reg_12_ ( .D(n432), .CP(apb_clk), .CDN(n193), .Q(
        pc_fifo_data[12]) );
  dfcrq1 pc_fifo_data_reg_11_ ( .D(n431), .CP(apb_clk), .CDN(n193), .Q(
        pc_fifo_data[11]) );
  dfcrq1 pc_fifo_data_reg_10_ ( .D(n430), .CP(apb_clk), .CDN(n193), .Q(
        pc_fifo_data[10]) );
  dfcrq1 pc_fifo_data_reg_9_ ( .D(n429), .CP(apb_clk), .CDN(n191), .Q(
        pc_fifo_data[9]) );
  dfcrq1 pc_fifo_data_reg_8_ ( .D(n428), .CP(apb_clk), .CDN(n191), .Q(
        pc_fifo_data[8]) );
  dfcrq1 pc_fifo_data_reg_7_ ( .D(n427), .CP(apb_clk), .CDN(n191), .Q(
        pc_fifo_data[7]) );
  dfcrq1 pc_fifo_data_reg_6_ ( .D(n426), .CP(apb_clk), .CDN(n191), .Q(
        pc_fifo_data[6]) );
  dfcrq1 pc_fifo_data_reg_5_ ( .D(n425), .CP(apb_clk), .CDN(n191), .Q(
        pc_fifo_data[5]) );
  dfcrq1 pc_fifo_data_reg_4_ ( .D(n424), .CP(apb_clk), .CDN(n191), .Q(
        pc_fifo_data[4]) );
  dfcrq1 pc_fifo_data_reg_3_ ( .D(n423), .CP(apb_clk), .CDN(n191), .Q(
        pc_fifo_data[3]) );
  dfcrq1 pc_fifo_data_reg_2_ ( .D(n422), .CP(apb_clk), .CDN(n191), .Q(
        pc_fifo_data[2]) );
  dfcrq1 pc_fifo_data_reg_1_ ( .D(n421), .CP(apb_clk), .CDN(n191), .Q(
        pc_fifo_data[1]) );
  dfcrq1 pc_fifo_data_reg_0_ ( .D(n420), .CP(apb_clk), .CDN(n191), .Q(
        pc_fifo_data[0]) );
  dfcrq1 fifo_addr_reg_7_ ( .D(n462), .CP(apb_clk), .CDN(n196), .Q(
        fifo_addr[7]) );
  dfcrq1 fifo_addr_reg_6_ ( .D(n461), .CP(apb_clk), .CDN(n196), .Q(
        fifo_addr[6]) );
  dfcrq1 fifo_addr_reg_5_ ( .D(n460), .CP(apb_clk), .CDN(n196), .Q(
        fifo_addr[5]) );
  dfcrq1 fifo_addr_reg_4_ ( .D(n459), .CP(apb_clk), .CDN(n195), .Q(
        fifo_addr[4]) );
  dfcrq1 fifo_addr_reg_3_ ( .D(n458), .CP(apb_clk), .CDN(n195), .Q(
        fifo_addr[3]) );
  dfcrq1 fifo_addr_reg_2_ ( .D(n457), .CP(apb_clk), .CDN(n195), .Q(
        fifo_addr[2]) );
  dfcrq1 fifo_addr_reg_1_ ( .D(n456), .CP(apb_clk), .CDN(n195), .Q(
        fifo_addr[1]) );
  dfcrq1 fifo_addr_reg_0_ ( .D(n455), .CP(apb_clk), .CDN(n195), .Q(
        fifo_addr[0]) );
  dfcrq1 apb_prdata_reg_18_ ( .D(n480), .CP(apb_clk), .CDN(n165), .Q(
        apb_prdata[18]) );
  dfcrq1 apb_prdata_reg_19_ ( .D(n479), .CP(apb_clk), .CDN(n165), .Q(
        apb_prdata[19]) );
  dfcrq1 apb_prdata_reg_20_ ( .D(n478), .CP(apb_clk), .CDN(n165), .Q(
        apb_prdata[20]) );
  dfcrq1 apb_prdata_reg_21_ ( .D(n477), .CP(apb_clk), .CDN(n160), .Q(
        apb_prdata[21]) );
  dfcrq1 apb_prdata_reg_22_ ( .D(n476), .CP(apb_clk), .CDN(n160), .Q(
        apb_prdata[22]) );
  dfcrq1 apb_prdata_reg_23_ ( .D(n475), .CP(apb_clk), .CDN(n160), .Q(
        apb_prdata[23]) );
  dfcrq1 apb_prdata_reg_24_ ( .D(n474), .CP(apb_clk), .CDN(n160), .Q(
        apb_prdata[24]) );
  dfcrq1 apb_prdata_reg_25_ ( .D(n473), .CP(apb_clk), .CDN(n160), .Q(
        apb_prdata[25]) );
  dfcrq1 apb_prdata_reg_26_ ( .D(n472), .CP(apb_clk), .CDN(n160), .Q(
        apb_prdata[26]) );
  dfcrq1 apb_prdata_reg_27_ ( .D(n471), .CP(apb_clk), .CDN(n160), .Q(
        apb_prdata[27]) );
  dfcrq1 apb_prdata_reg_28_ ( .D(n470), .CP(apb_clk), .CDN(n160), .Q(
        apb_prdata[28]) );
  dfcrq1 apb_prdata_reg_29_ ( .D(n469), .CP(apb_clk), .CDN(n160), .Q(
        apb_prdata[29]) );
  dfcrq1 apb_prdata_reg_30_ ( .D(n468), .CP(apb_clk), .CDN(n160), .Q(
        apb_prdata[30]) );
  dfcrq1 apb_prdata_reg_31_ ( .D(n467), .CP(apb_clk), .CDN(n157), .Q(
        apb_prdata[31]) );
  dfcrq1 fifo_data_reg_reg_0_ ( .D(n463), .CP(apb_clk), .CDN(n188), .Q(
        fifo_data_reg[0]) );
  dfcrq1 fifo_data_reg_reg_17_ ( .D(n454), .CP(apb_clk), .CDN(n195), .Q(
        fifo_data_reg[17]) );
  dfcrq1 fifo_data_reg_reg_16_ ( .D(n453), .CP(apb_clk), .CDN(n195), .Q(
        fifo_data_reg[16]) );
  dfcrq1 fifo_data_reg_reg_15_ ( .D(n452), .CP(apb_clk), .CDN(n195), .Q(
        fifo_data_reg[15]) );
  dfcrq1 fifo_data_reg_reg_14_ ( .D(n451), .CP(apb_clk), .CDN(n195), .Q(
        fifo_data_reg[14]) );
  dfcrq1 fifo_data_reg_reg_13_ ( .D(n450), .CP(apb_clk), .CDN(n195), .Q(
        fifo_data_reg[13]) );
  dfcrq1 fifo_data_reg_reg_12_ ( .D(n449), .CP(apb_clk), .CDN(n194), .Q(
        fifo_data_reg[12]) );
  dfcrq1 fifo_data_reg_reg_11_ ( .D(n448), .CP(apb_clk), .CDN(n194), .Q(
        fifo_data_reg[11]) );
  dfcrq1 fifo_data_reg_reg_10_ ( .D(n447), .CP(apb_clk), .CDN(n194), .Q(
        fifo_data_reg[10]) );
  dfcrq1 fifo_data_reg_reg_9_ ( .D(n446), .CP(apb_clk), .CDN(n194), .Q(
        fifo_data_reg[9]) );
  dfcrq1 fifo_data_reg_reg_8_ ( .D(n445), .CP(apb_clk), .CDN(n194), .Q(
        fifo_data_reg[8]) );
  dfcrq1 fifo_data_reg_reg_7_ ( .D(n444), .CP(apb_clk), .CDN(n194), .Q(
        fifo_data_reg[7]) );
  dfcrq1 fifo_data_reg_reg_6_ ( .D(n443), .CP(apb_clk), .CDN(n194), .Q(
        fifo_data_reg[6]) );
  dfcrq1 fifo_data_reg_reg_5_ ( .D(n442), .CP(apb_clk), .CDN(n194), .Q(
        fifo_data_reg[5]) );
  dfcrq1 fifo_data_reg_reg_4_ ( .D(n441), .CP(apb_clk), .CDN(n194), .Q(
        fifo_data_reg[4]) );
  dfcrq1 fifo_data_reg_reg_3_ ( .D(n440), .CP(apb_clk), .CDN(n194), .Q(
        fifo_data_reg[3]) );
  dfcrq1 fifo_data_reg_reg_2_ ( .D(n439), .CP(apb_clk), .CDN(n193), .Q(
        fifo_data_reg[2]) );
  dfcrq1 fifo_data_reg_reg_1_ ( .D(n438), .CP(apb_clk), .CDN(n193), .Q(
        fifo_data_reg[1]) );
  dfcrq1 fifo_data_read_d_reg ( .D(fifo_data_read), .CP(apb_clk), .CDN(n196), 
        .Q(fifo_data_read_d) );
  dfcrq1 mcmc_data_reg_1_reg_0_ ( .D(n538), .CP(apb_clk), .CDN(n157), .Q(
        mcmc_data_reg_1_0_) );
  dfcrq1 apb_prdata_reg_0_ ( .D(n498), .CP(apb_clk), .CDN(n157), .Q(
        apb_prdata[0]) );
  dfcrq1 apb_prdata_reg_8_ ( .D(n490), .CP(apb_clk), .CDN(n180), .Q(
        apb_prdata[8]) );
  dfcrq1 apb_prdata_reg_9_ ( .D(n489), .CP(apb_clk), .CDN(n180), .Q(
        apb_prdata[9]) );
  dfcrq1 apb_prdata_reg_10_ ( .D(n488), .CP(apb_clk), .CDN(n180), .Q(
        apb_prdata[10]) );
  dfcrq1 apb_prdata_reg_11_ ( .D(n487), .CP(apb_clk), .CDN(n165), .Q(
        apb_prdata[11]) );
  dfcrq1 apb_prdata_reg_12_ ( .D(n486), .CP(apb_clk), .CDN(n165), .Q(
        apb_prdata[12]) );
  dfcrq1 apb_prdata_reg_13_ ( .D(n485), .CP(apb_clk), .CDN(n165), .Q(
        apb_prdata[13]) );
  dfcrq1 apb_prdata_reg_14_ ( .D(n484), .CP(apb_clk), .CDN(n165), .Q(
        apb_prdata[14]) );
  dfcrq1 apb_prdata_reg_15_ ( .D(n483), .CP(apb_clk), .CDN(n165), .Q(
        apb_prdata[15]) );
  dfcrq1 apb_prdata_reg_16_ ( .D(n482), .CP(apb_clk), .CDN(n165), .Q(
        apb_prdata[16]) );
  dfcrq1 apb_prdata_reg_17_ ( .D(n481), .CP(apb_clk), .CDN(n165), .Q(
        apb_prdata[17]) );
  dfcrq1 apb_prdata_reg_1_ ( .D(n497), .CP(apb_clk), .CDN(n157), .Q(
        apb_prdata[1]) );
  dfcrq1 apb_prdata_reg_2_ ( .D(n496), .CP(apb_clk), .CDN(n157), .Q(
        apb_prdata[2]) );
  dfcrq1 apb_prdata_reg_3_ ( .D(n495), .CP(apb_clk), .CDN(n157), .Q(
        apb_prdata[3]) );
  dfcrq1 apb_prdata_reg_4_ ( .D(n494), .CP(apb_clk), .CDN(n157), .Q(
        apb_prdata[4]) );
  dfcrq1 apb_prdata_reg_5_ ( .D(n493), .CP(apb_clk), .CDN(n157), .Q(
        apb_prdata[5]) );
  dfcrq1 apb_prdata_reg_6_ ( .D(n492), .CP(apb_clk), .CDN(n157), .Q(
        apb_prdata[6]) );
  dfcrq1 apb_prdata_reg_7_ ( .D(n491), .CP(apb_clk), .CDN(n157), .Q(
        apb_prdata[7]) );
  dfcrq1 start_core_reg ( .D(N102), .CP(apb_clk), .CDN(n196), .Q(start_core)
         );
  dfcrq1 dctc_fifo_data_reg_16_ ( .D(n418), .CP(apb_clk), .CDN(n188), .Q(
        dctc_fifo_data[16]) );
  dfcrq1 mcmc_data_read_d_3_reg ( .D(mcmc_data_read_3), .CP(apb_clk), .CDN(
        n180), .Q(mcmc_data_read_d_3) );
  dfcrq1 dctc_fifo_data_reg_15_ ( .D(n417), .CP(apb_clk), .CDN(n188), .Q(
        dctc_fifo_data[15]) );
  dfcrq1 dctc_fifo_data_reg_14_ ( .D(n416), .CP(apb_clk), .CDN(n188), .Q(
        dctc_fifo_data[14]) );
  dfcrq1 mcmc_data_read_rise_d_3_reg ( .D(n679), .CP(apb_clk), .CDN(n180), .Q(
        mcmc_data_read_rise_d_3) );
  dfcrq1 dctc_fifo_data_reg_13_ ( .D(n415), .CP(apb_clk), .CDN(n188), .Q(
        dctc_fifo_data[13]) );
  dfcrq1 mcmc_data_read_rise_d_2_reg ( .D(mcmc_data_read_rise_2), .CP(apb_clk), 
        .CDN(n180), .Q(mcmc_data_read_rise_d_2) );
  dfcrq1 mcmc_data_read_rise_d_1_reg ( .D(mcmc_data_read_rise_1), .CP(apb_clk), 
        .CDN(n180), .Q(mcmc_data_read_rise_d_1) );
  dfcrq1 fifo_data_read_rise_d_reg ( .D(n466), .CP(apb_clk), .CDN(n196), .Q(
        fifo_data_read_rise_d) );
  dfcrq1 dctc_fifo_data_reg_12_ ( .D(n414), .CP(apb_clk), .CDN(n188), .Q(
        dctc_fifo_data[12]) );
  dfcrq1 dctc_fifo_data_reg_11_ ( .D(n413), .CP(apb_clk), .CDN(n188), .Q(
        dctc_fifo_data[11]) );
  dfcrq1 dctc_fifo_data_reg_10_ ( .D(n412), .CP(apb_clk), .CDN(n188), .Q(
        dctc_fifo_data[10]) );
  dfcrq1 dctc_fifo_data_reg_9_ ( .D(n411), .CP(apb_clk), .CDN(n188), .Q(
        dctc_fifo_data[9]) );
  dfcrq1 dctc_fifo_data_reg_8_ ( .D(n410), .CP(apb_clk), .CDN(n186), .Q(
        dctc_fifo_data[8]) );
  dfcrq1 dctc_fifo_data_reg_7_ ( .D(n409), .CP(apb_clk), .CDN(n186), .Q(
        dctc_fifo_data[7]) );
  dfcrq1 dctc_fifo_data_reg_6_ ( .D(n408), .CP(apb_clk), .CDN(n186), .Q(
        dctc_fifo_data[6]) );
  dfcrq1 dctc_fifo_data_reg_5_ ( .D(n407), .CP(apb_clk), .CDN(n186), .Q(
        dctc_fifo_data[5]) );
  dfcrq1 dctc_fifo_data_reg_4_ ( .D(n406), .CP(apb_clk), .CDN(n186), .Q(
        dctc_fifo_data[4]) );
  dfcrq1 dctc_fifo_data_reg_3_ ( .D(n405), .CP(apb_clk), .CDN(n186), .Q(
        dctc_fifo_data[3]) );
  dfcrq1 dctc_fifo_data_reg_2_ ( .D(n404), .CP(apb_clk), .CDN(n186), .Q(
        dctc_fifo_data[2]) );
  dfcrq1 dctc_fifo_data_reg_1_ ( .D(n403), .CP(apb_clk), .CDN(n186), .Q(
        dctc_fifo_data[1]) );
  dfcrq1 dctc_fifo_data_reg_0_ ( .D(n402), .CP(apb_clk), .CDN(n186), .Q(
        dctc_fifo_data[0]) );
  inv0d0 I_116 ( .I(apb_clk), .ZN(n_1_net_) );
  inv0d0 I_125 ( .I(apb_clk), .ZN(n_10_net_) );
  inv0d0 I_114 ( .I(oe), .ZN(n_5_net_) );
  inv0d0 I_113 ( .I(cs), .ZN(n_7_net_) );
  inv0d0 I_123 ( .I(lut_oe), .ZN(n_12_net_) );
  inv0d0 I_122 ( .I(lut_cs), .ZN(n_13_net_) );
  inv0d0 I_115 ( .I(n12), .ZN(n_3_net_) );
  inv0d0 I_124 ( .I(n26), .ZN(n_11_net_) );
  dfcrq1 apb_ready_reg ( .D(N153), .CP(apb_clk), .CDN(n196), .Q(apb_ready) );
  inv0d1 U3 ( .I(fifo_data_read_rise_d), .ZN(n6) );
  inv0d0 U6 ( .I(n310), .ZN(mcmc_lut_data[68]) );
  inv0d0 U9 ( .I(n309), .ZN(mcmc_lut_data[69]) );
  inv0d0 U12 ( .I(n308), .ZN(mcmc_lut_data[70]) );
  inv0d0 U15 ( .I(n307), .ZN(mcmc_lut_data[71]) );
  inv0d0 U18 ( .I(n296), .ZN(n34) );
  buffd1 U21 ( .I(n155), .Z(n42) );
  buffd1 U24 ( .I(n155), .Z(n43) );
  buffd1 U27 ( .I(n155), .Z(n46) );
  buffd1 U30 ( .I(n155), .Z(n47) );
  buffd1 U33 ( .I(n94), .Z(n120) );
  buffd1 U36 ( .I(n95), .Z(n121) );
  buffd1 U39 ( .I(n95), .Z(n122) );
  buffd1 U42 ( .I(n95), .Z(n123) );
  buffd1 U45 ( .I(n98), .Z(n124) );
  buffd1 U48 ( .I(n98), .Z(n125) );
  buffd1 U49 ( .I(n98), .Z(n126) );
  buffd1 U52 ( .I(n90), .Z(n105) );
  buffd1 U53 ( .I(n90), .Z(n107) );
  buffd1 U56 ( .I(n90), .Z(n111) );
  buffd1 U57 ( .I(n91), .Z(n112) );
  buffd1 U60 ( .I(n91), .Z(n113) );
  buffd1 U61 ( .I(n91), .Z(n116) );
  buffd1 U64 ( .I(n94), .Z(n119) );
  buffd1 U65 ( .I(n94), .Z(n118) );
  buffd1 U68 ( .I(n152), .Z(n62) );
  buffd1 U69 ( .I(n152), .Z(n63) );
  buffd1 U72 ( .I(n152), .Z(n66) );
  buffd1 U73 ( .I(n152), .Z(n67) );
  buffd1 U76 ( .I(n153), .Z(n55) );
  buffd1 U77 ( .I(n115), .Z(n86) );
  buffd1 U80 ( .I(n115), .Z(n83) );
  buffd1 U81 ( .I(n153), .Z(n58) );
  buffd1 U84 ( .I(n153), .Z(n59) );
  buffd1 U85 ( .I(n115), .Z(n87) );
  buffd1 U88 ( .I(n128), .Z(n131) );
  nd02d1 U89 ( .A1(n35), .A2(n50), .ZN(n155) );
  buffd1 U92 ( .I(n156), .Z(n35) );
  buffd1 U93 ( .I(n128), .Z(n132) );
  buffd1 U96 ( .I(n128), .Z(n130) );
  buffd1 U97 ( .I(n114), .Z(n95) );
  buffd1 U100 ( .I(n114), .Z(n98) );
  buffd1 U101 ( .I(n114), .Z(n94) );
  buffd1 U104 ( .I(n99), .Z(n127) );
  buffd1 U105 ( .I(n114), .Z(n99) );
  buffd1 U108 ( .I(n114), .Z(n90) );
  buffd1 U109 ( .I(n114), .Z(n91) );
  inv0d1 U112 ( .I(n159), .ZN(n465) );
  nd02d1 U113 ( .A1(n55), .A2(n70), .ZN(n152) );
  buffd1 U116 ( .I(n117), .Z(n82) );
  buffd1 U121 ( .I(n117), .Z(n79) );
  buffd1 U122 ( .I(n117), .Z(n78) );
  buffd1 U123 ( .I(n117), .Z(n75) );
  inv0d0 U126 ( .I(n26), .ZN(n24) );
  buffd1 U127 ( .I(n156), .Z(n38) );
  inv0d0 U168 ( .I(n181), .ZN(n667) );
  buffd1 U169 ( .I(n156), .Z(n39) );
  nd02d1 U170 ( .A1(n827), .A2(n831), .ZN(n153) );
  nd02d1 U235 ( .A1(n831), .A2(n826), .ZN(n115) );
  buffd1 U236 ( .I(n230), .Z(n165) );
  buffd1 U237 ( .I(n230), .Z(n180) );
  buffd1 U270 ( .I(n230), .Z(n186) );
  buffd1 U272 ( .I(n229), .Z(n191) );
  buffd1 U274 ( .I(n229), .Z(n193) );
  buffd1 U276 ( .I(n228), .Z(n194) );
  buffd1 U278 ( .I(n228), .Z(n195) );
  buffd1 U280 ( .I(n229), .Z(n188) );
  buffd1 U282 ( .I(n228), .Z(n196) );
  buffd1 U284 ( .I(n225), .Z(n208) );
  buffd1 U286 ( .I(n221), .Z(n219) );
  buffd1 U288 ( .I(n222), .Z(n218) );
  buffd1 U290 ( .I(n222), .Z(n217) );
  buffd1 U292 ( .I(n222), .Z(n216) );
  buffd1 U294 ( .I(n224), .Z(n215) );
  buffd1 U296 ( .I(n224), .Z(n214) );
  buffd1 U315 ( .I(n224), .Z(n211) );
  buffd1 U317 ( .I(n227), .Z(n197) );
  buffd1 U318 ( .I(n227), .Z(n198) );
  buffd1 U338 ( .I(n227), .Z(n199) );
  buffd1 U340 ( .I(n226), .Z(n200) );
  buffd1 U342 ( .I(n226), .Z(n201) );
  buffd1 U344 ( .I(n226), .Z(n202) );
  buffd1 U346 ( .I(n225), .Z(n204) );
  buffd1 U348 ( .I(n225), .Z(n206) );
  buffd1 U350 ( .I(n221), .Z(n220) );
  inv0d0 U352 ( .I(n183), .ZN(n826) );
  buffd1 U354 ( .I(n5), .Z(n128) );
  buffd1 U356 ( .I(n4), .Z(n137) );
  buffd1 U358 ( .I(n2), .Z(n142) );
  buffd1 U360 ( .I(n4), .Z(n135) );
  buffd1 U362 ( .I(n4), .Z(n136) );
  buffd1 U364 ( .I(n4), .Z(n134) );
  buffd1 U366 ( .I(n6), .Z(n14) );
  buffd1 U368 ( .I(n1), .Z(n146) );
  nd02d1 U370 ( .A1(n831), .A2(mcmc_data_read_3), .ZN(n156) );
  buffd1 U372 ( .I(n154), .Z(n50) );
  buffd1 U384 ( .I(n129), .Z(n133) );
  buffd1 U386 ( .I(n5), .Z(n129) );
  buffd1 U388 ( .I(n2), .Z(n138) );
  buffd1 U390 ( .I(n2), .Z(n139) );
  buffd1 U392 ( .I(n2), .Z(n140) );
  nd02d1 U394 ( .A1(n680), .A2(n158), .ZN(n114) );
  buffd1 U396 ( .I(n154), .Z(n51) );
  nd02d1 U399 ( .A1(n831), .A2(fifo_data_read), .ZN(n159) );
  buffd1 U402 ( .I(n154), .Z(n54) );
  buffd1 U405 ( .I(n1), .Z(n143) );
  buffd1 U408 ( .I(n151), .Z(n70) );
  buffd1 U411 ( .I(n1), .Z(n145) );
  buffd1 U414 ( .I(n1), .Z(n144) );
  nd02d1 U417 ( .A1(n83), .A2(n141), .ZN(n117) );
  inv0d1 U420 ( .I(n28), .ZN(n22) );
  buffd1 U421 ( .I(n34), .Z(n28) );
  inv0d1 U422 ( .I(n32), .ZN(n18) );
  buffd1 U423 ( .I(n34), .Z(n32) );
  inv0d1 U424 ( .I(n30), .ZN(n20) );
  buffd1 U427 ( .I(n34), .Z(n30) );
  nd02d1 U428 ( .A1(n182), .A2(n181), .ZN(n161) );
  buffd1 U429 ( .I(n34), .Z(n26) );
  inv0d0 U430 ( .I(n6), .ZN(n8) );
  inv0d0 U431 ( .I(n106), .ZN(n681) );
  inv0d0 U432 ( .I(n6), .ZN(n10) );
  inv0d0 U433 ( .I(n189), .ZN(n466) );
  buffd1 U434 ( .I(n151), .Z(n71) );
  buffd1 U435 ( .I(n151), .Z(n74) );
  buffd1 U436 ( .I(n6), .Z(n16) );
  nd02d1 U437 ( .A1(n832), .A2(n158), .ZN(N181) );
  inv0d0 U438 ( .I(n158), .ZN(n679) );
  nd02d1 U439 ( .A1(n680), .A2(n110), .ZN(N186) );
  nd03d1 U440 ( .A1(n190), .A2(n192), .A3(n220), .ZN(N194) );
  nd02d1 U441 ( .A1(n109), .A2(n829), .ZN(n209) );
  nd02d1 U442 ( .A1(n185), .A2(n830), .ZN(n183) );
  inv0d0 U443 ( .I(n109), .ZN(n825) );
  nr02d1 U444 ( .A1(n209), .A2(n205), .ZN(N155) );
  inv0d0 U445 ( .I(n205), .ZN(n831) );
  buffd1 U446 ( .I(n231), .Z(n157) );
  buffd1 U447 ( .I(n231), .Z(n160) );
  inv0d0 U448 ( .I(n184), .ZN(n827) );
  buffd1 U449 ( .I(n149), .Z(n230) );
  buffd1 U450 ( .I(n149), .Z(n229) );
  buffd1 U451 ( .I(n147), .Z(n221) );
  buffd1 U452 ( .I(n147), .Z(n222) );
  buffd1 U453 ( .I(n147), .Z(n224) );
  buffd1 U454 ( .I(n148), .Z(n227) );
  buffd1 U455 ( .I(n148), .Z(n226) );
  buffd1 U456 ( .I(n148), .Z(n225) );
  buffd1 U457 ( .I(n149), .Z(n228) );
  inv0d0 U458 ( .I(n187), .ZN(n824) );
  aoim22d1 U459 ( .A1(n131), .A2(n751), .B1(n143), .B2(n815), .Z(n101) );
  inv0d0 U460 ( .I(n272), .ZN(n751) );
  inv0d0 U461 ( .I(mcmc_data_read_rise_d_1), .ZN(n717) );
  inv0d0 U462 ( .I(n265), .ZN(n765) );
  inv0d0 U463 ( .I(n76), .ZN(n688) );
  inv0d0 U464 ( .I(n255), .ZN(n785) );
  inv0d0 U465 ( .I(n36), .ZN(n698) );
  inv0d0 U466 ( .I(n256), .ZN(n783) );
  inv0d0 U467 ( .I(n40), .ZN(n697) );
  inv0d0 U468 ( .I(n266), .ZN(n763) );
  inv0d0 U469 ( .I(n80), .ZN(n687) );
  inv0d0 U470 ( .I(n257), .ZN(n781) );
  inv0d0 U471 ( .I(n44), .ZN(n696) );
  inv0d0 U472 ( .I(n258), .ZN(n779) );
  inv0d0 U473 ( .I(n48), .ZN(n695) );
  inv0d0 U474 ( .I(n259), .ZN(n777) );
  inv0d0 U475 ( .I(n52), .ZN(n694) );
  inv0d0 U476 ( .I(n260), .ZN(n775) );
  inv0d0 U477 ( .I(n56), .ZN(n693) );
  inv0d0 U478 ( .I(n261), .ZN(n773) );
  inv0d0 U479 ( .I(n60), .ZN(n692) );
  inv0d0 U480 ( .I(n262), .ZN(n771) );
  inv0d0 U481 ( .I(n64), .ZN(n691) );
  inv0d0 U482 ( .I(n263), .ZN(n769) );
  inv0d0 U483 ( .I(n68), .ZN(n690) );
  inv0d0 U484 ( .I(n264), .ZN(n767) );
  inv0d0 U485 ( .I(n72), .ZN(n689) );
  inv0d0 U486 ( .I(n267), .ZN(n761) );
  inv0d0 U487 ( .I(n84), .ZN(n686) );
  inv0d0 U488 ( .I(n268), .ZN(n759) );
  inv0d0 U489 ( .I(n88), .ZN(n685) );
  inv0d0 U490 ( .I(n269), .ZN(n757) );
  inv0d0 U491 ( .I(n92), .ZN(n684) );
  inv0d0 U492 ( .I(n270), .ZN(n755) );
  inv0d0 U493 ( .I(n96), .ZN(n683) );
  inv0d0 U494 ( .I(n271), .ZN(n753) );
  inv0d0 U495 ( .I(n100), .ZN(n682) );
  inv0d0 U496 ( .I(mcmc_data_read_rise_d_2), .ZN(n718) );
  inv0d0 U497 ( .I(n241), .ZN(n813) );
  inv0d0 U498 ( .I(n242), .ZN(n811) );
  inv0d0 U499 ( .I(n243), .ZN(n809) );
  inv0d0 U500 ( .I(n244), .ZN(n807) );
  inv0d0 U501 ( .I(n245), .ZN(n805) );
  inv0d0 U502 ( .I(n246), .ZN(n803) );
  inv0d0 U503 ( .I(n247), .ZN(n801) );
  inv0d0 U504 ( .I(n248), .ZN(n799) );
  inv0d0 U505 ( .I(n250), .ZN(n795) );
  inv0d0 U506 ( .I(n249), .ZN(n797) );
  inv0d0 U507 ( .I(n251), .ZN(n793) );
  inv0d0 U509 ( .I(n252), .ZN(n791) );
  inv0d0 U510 ( .I(n253), .ZN(n789) );
  inv0d0 U511 ( .I(n254), .ZN(n787) );
  nd02d1 U512 ( .A1(mcmc_data_read_rise_d_1), .A2(n14), .ZN(n1) );
  nd02d1 U513 ( .A1(mcmc_data_read_rise_d_3), .A2(n35), .ZN(n154) );
  nd02d1 U514 ( .A1(n680), .A2(n207), .ZN(mcmc_data_read_3) );
  inv0d0 U515 ( .I(mcmc_lut_read), .ZN(n680) );
  nr02d1 U516 ( .A1(pc_fifo_read), .A2(dctc_fifo_read), .ZN(n182) );
  nd02d1 U517 ( .A1(n182), .A2(n210), .ZN(fifo_data_read) );
  nd02d1 U518 ( .A1(mcmc_data_read_rise_d_3), .A2(n55), .ZN(n151) );
  nd02d1 U519 ( .A1(fifo_addr[1]), .A2(n667), .ZN(n166) );
  nd02d1 U520 ( .A1(mcmc_data_read_rise_d_3), .A2(n83), .ZN(n141) );
  nd02d1 U521 ( .A1(fifo_addr[0]), .A2(n667), .ZN(n162) );
  nd02d1 U522 ( .A1(fifo_addr[2]), .A2(n667), .ZN(n168) );
  nd02d1 U523 ( .A1(fifo_addr[3]), .A2(n667), .ZN(n170) );
  nd02d1 U524 ( .A1(fifo_addr[4]), .A2(n667), .ZN(n172) );
  nd02d1 U525 ( .A1(fifo_addr[5]), .A2(n667), .ZN(n174) );
  nd02d1 U526 ( .A1(fifo_addr[6]), .A2(n667), .ZN(n176) );
  nd02d1 U527 ( .A1(fifo_addr[7]), .A2(n667), .ZN(n178) );
  nr02d1 U528 ( .A1(n464), .A2(pc_fifo_read), .ZN(n164) );
  inv0d0 U529 ( .I(dctc_fifo_read), .ZN(n464) );
  nd02d1 U531 ( .A1(fifo_data_out[0]), .A2(n8), .ZN(n106) );
  nd02d1 U532 ( .A1(fifo_data_out[5]), .A2(n8), .ZN(n84) );
  nd02d1 U534 ( .A1(fifo_data_out[4]), .A2(n8), .ZN(n88) );
  nd02d1 U535 ( .A1(fifo_data_out[14]), .A2(n8), .ZN(n48) );
  nd02d1 U537 ( .A1(fifo_data_out[13]), .A2(n8), .ZN(n52) );
  nd02d1 U538 ( .A1(fifo_data_out[9]), .A2(n8), .ZN(n68) );
  nd02d1 U540 ( .A1(fifo_data_out[6]), .A2(n8), .ZN(n80) );
  nd02d1 U541 ( .A1(fifo_data_out[2]), .A2(n10), .ZN(n96) );
  nd02d1 U543 ( .A1(fifo_data_out[1]), .A2(n8), .ZN(n100) );
  nd02d1 U544 ( .A1(fifo_data_out[15]), .A2(n10), .ZN(n44) );
  nd02d1 U546 ( .A1(fifo_data_out[11]), .A2(n10), .ZN(n60) );
  nd02d1 U547 ( .A1(fifo_data_out[10]), .A2(n8), .ZN(n64) );
  nd02d1 U549 ( .A1(fifo_data_out[7]), .A2(n10), .ZN(n76) );
  nd02d1 U550 ( .A1(fifo_data_out[3]), .A2(n10), .ZN(n92) );
  nd02d1 U552 ( .A1(fifo_data_out[16]), .A2(n10), .ZN(n40) );
  nd02d1 U553 ( .A1(fifo_data_out[12]), .A2(n10), .ZN(n56) );
  nd02d1 U555 ( .A1(fifo_data_out[8]), .A2(n10), .ZN(n72) );
  nd02d1 U556 ( .A1(n10), .A2(fifo_data_out[17]), .ZN(n36) );
  nr02d1 U558 ( .A1(mcmc_data_read_d_3), .A2(n35), .ZN(N182) );
  inv0d0 U559 ( .I(mcmc_data_reg_1_0_), .ZN(n815) );
  inv0d0 U561 ( .I(n361), .ZN(mcmc_lut_data[17]) );
  inv0d0 U562 ( .I(n345), .ZN(mcmc_lut_data[33]) );
  inv0d0 U563 ( .I(n346), .ZN(mcmc_lut_data[32]) );
  inv0d0 U564 ( .I(n347), .ZN(mcmc_lut_data[31]) );
  inv0d0 U566 ( .I(n348), .ZN(mcmc_lut_data[30]) );
  inv0d0 U567 ( .I(n349), .ZN(mcmc_lut_data[29]) );
  inv0d0 U568 ( .I(n350), .ZN(mcmc_lut_data[28]) );
  inv0d0 U569 ( .I(n351), .ZN(mcmc_lut_data[27]) );
  inv0d0 U570 ( .I(n352), .ZN(mcmc_lut_data[26]) );
  inv0d0 U572 ( .I(n353), .ZN(mcmc_lut_data[25]) );
  inv0d0 U574 ( .I(n354), .ZN(mcmc_lut_data[24]) );
  inv0d0 U575 ( .I(n355), .ZN(mcmc_lut_data[23]) );
  inv0d0 U578 ( .I(n356), .ZN(mcmc_lut_data[22]) );
  inv0d0 U581 ( .I(n357), .ZN(mcmc_lut_data[21]) );
  inv0d0 U583 ( .I(n358), .ZN(mcmc_lut_data[20]) );
  inv0d0 U584 ( .I(n359), .ZN(mcmc_lut_data[19]) );
  inv0d0 U585 ( .I(n360), .ZN(mcmc_lut_data[18]) );
  inv0d0 U586 ( .I(n327), .ZN(mcmc_lut_data[51]) );
  inv0d0 U588 ( .I(n311), .ZN(mcmc_lut_data[67]) );
  inv0d0 U589 ( .I(n312), .ZN(mcmc_lut_data[66]) );
  inv0d0 U591 ( .I(n313), .ZN(mcmc_lut_data[65]) );
  inv0d0 U592 ( .I(n314), .ZN(mcmc_lut_data[64]) );
  inv0d0 U593 ( .I(n315), .ZN(mcmc_lut_data[63]) );
  inv0d0 U594 ( .I(n316), .ZN(mcmc_lut_data[62]) );
  inv0d0 U596 ( .I(n317), .ZN(mcmc_lut_data[61]) );
  inv0d0 U599 ( .I(n318), .ZN(mcmc_lut_data[60]) );
  inv0d0 U600 ( .I(n319), .ZN(mcmc_lut_data[59]) );
  inv0d0 U601 ( .I(n320), .ZN(mcmc_lut_data[58]) );
  inv0d0 U602 ( .I(n321), .ZN(mcmc_lut_data[57]) );
  inv0d0 U603 ( .I(n322), .ZN(mcmc_lut_data[56]) );
  inv0d0 U604 ( .I(n323), .ZN(mcmc_lut_data[55]) );
  inv0d0 U605 ( .I(n324), .ZN(mcmc_lut_data[54]) );
  inv0d0 U606 ( .I(n325), .ZN(mcmc_lut_data[53]) );
  inv0d0 U607 ( .I(n326), .ZN(mcmc_lut_data[52]) );
  inv0d0 U608 ( .I(n343), .ZN(mcmc_lut_data[35]) );
  inv0d0 U609 ( .I(n342), .ZN(mcmc_lut_data[36]) );
  inv0d0 U610 ( .I(n341), .ZN(mcmc_lut_data[37]) );
  inv0d0 U611 ( .I(n340), .ZN(mcmc_lut_data[38]) );
  inv0d0 U612 ( .I(n339), .ZN(mcmc_lut_data[39]) );
  inv0d0 U613 ( .I(n338), .ZN(mcmc_lut_data[40]) );
  inv0d0 U614 ( .I(n337), .ZN(mcmc_lut_data[41]) );
  inv0d0 U615 ( .I(n336), .ZN(mcmc_lut_data[42]) );
  inv0d0 U616 ( .I(n335), .ZN(mcmc_lut_data[43]) );
  inv0d0 U617 ( .I(n334), .ZN(mcmc_lut_data[44]) );
  inv0d0 U618 ( .I(n333), .ZN(mcmc_lut_data[45]) );
  inv0d0 U619 ( .I(n332), .ZN(mcmc_lut_data[46]) );
  inv0d0 U620 ( .I(n331), .ZN(mcmc_lut_data[47]) );
  inv0d0 U621 ( .I(n330), .ZN(mcmc_lut_data[48]) );
  inv0d0 U622 ( .I(n329), .ZN(mcmc_lut_data[49]) );
  inv0d0 U623 ( .I(n328), .ZN(mcmc_lut_data[50]) );
  inv0d0 U624 ( .I(n344), .ZN(mcmc_lut_data[34]) );
  inv0d0 U625 ( .I(n377), .ZN(mcmc_lut_data[1]) );
  inv0d0 U626 ( .I(n376), .ZN(mcmc_lut_data[2]) );
  inv0d0 U627 ( .I(n375), .ZN(mcmc_lut_data[3]) );
  inv0d0 U628 ( .I(n374), .ZN(mcmc_lut_data[4]) );
  inv0d0 U629 ( .I(n373), .ZN(mcmc_lut_data[5]) );
  inv0d0 U630 ( .I(n372), .ZN(mcmc_lut_data[6]) );
  inv0d0 U631 ( .I(n371), .ZN(mcmc_lut_data[7]) );
  inv0d0 U632 ( .I(n370), .ZN(mcmc_lut_data[8]) );
  inv0d0 U633 ( .I(n369), .ZN(mcmc_lut_data[9]) );
  inv0d0 U634 ( .I(n368), .ZN(mcmc_lut_data[10]) );
  inv0d0 U635 ( .I(n367), .ZN(mcmc_lut_data[11]) );
  inv0d0 U636 ( .I(n366), .ZN(mcmc_lut_data[12]) );
  inv0d0 U637 ( .I(n365), .ZN(mcmc_lut_data[13]) );
  inv0d0 U638 ( .I(n364), .ZN(mcmc_lut_data[14]) );
  inv0d0 U639 ( .I(n363), .ZN(mcmc_lut_data[15]) );
  inv0d0 U640 ( .I(n362), .ZN(mcmc_lut_data[16]) );
  inv0d0 U641 ( .I(n306), .ZN(mcmc_lut_data[0]) );
  inv0d0 U642 ( .I(fifo_data_reg[17]), .ZN(n700) );
  inv0d0 U643 ( .I(fifo_data_reg[16]), .ZN(n701) );
  inv0d0 U644 ( .I(fifo_data_reg[15]), .ZN(n702) );
  inv0d0 U645 ( .I(fifo_data_reg[14]), .ZN(n703) );
  inv0d0 U646 ( .I(fifo_data_reg[13]), .ZN(n704) );
  inv0d0 U647 ( .I(fifo_data_reg[12]), .ZN(n705) );
  inv0d0 U648 ( .I(fifo_data_reg[11]), .ZN(n706) );
  inv0d0 U649 ( .I(fifo_data_reg[10]), .ZN(n707) );
  inv0d0 U650 ( .I(fifo_data_reg[9]), .ZN(n708) );
  inv0d0 U651 ( .I(fifo_data_reg[8]), .ZN(n709) );
  inv0d0 U652 ( .I(fifo_data_reg[7]), .ZN(n710) );
  inv0d0 U653 ( .I(fifo_data_reg[6]), .ZN(n711) );
  inv0d0 U654 ( .I(fifo_data_reg[5]), .ZN(n712) );
  inv0d0 U655 ( .I(fifo_data_reg[4]), .ZN(n713) );
  inv0d0 U656 ( .I(fifo_data_reg[3]), .ZN(n714) );
  inv0d0 U657 ( .I(fifo_data_reg[2]), .ZN(n715) );
  inv0d0 U658 ( .I(fifo_data_reg[1]), .ZN(n716) );
  inv0d0 U659 ( .I(fifo_data_reg[0]), .ZN(n699) );
  nr02d1 U660 ( .A1(mcmc_data_read_d_1), .A2(n183), .ZN(mcmc_data_read_rise_1)
         );
  nr02d1 U661 ( .A1(mcmc_data_read_d_2), .A2(n184), .ZN(mcmc_data_read_rise_2)
         );
  inv0d0 U662 ( .I(mcmc_lut_addr[0]), .ZN(n668) );
  inv0d0 U663 ( .I(mcmc_lut_addr[1]), .ZN(n669) );
  inv0d0 U664 ( .I(mcmc_lut_addr[2]), .ZN(n670) );
  inv0d0 U665 ( .I(mcmc_lut_addr[3]), .ZN(n671) );
  inv0d0 U666 ( .I(mcmc_lut_addr[4]), .ZN(n672) );
  inv0d0 U667 ( .I(mcmc_lut_addr[5]), .ZN(n673) );
  inv0d0 U668 ( .I(mcmc_lut_addr[6]), .ZN(n674) );
  inv0d0 U669 ( .I(mcmc_lut_addr[7]), .ZN(n675) );
  inv0d0 U670 ( .I(mcmc_lut_addr[8]), .ZN(n676) );
  inv0d0 U671 ( .I(mcmc_lut_addr[9]), .ZN(n677) );
  inv0d0 U672 ( .I(mcmc_lut_addr[10]), .ZN(n678) );
  nd04d1 U673 ( .A1(apb_addr[0]), .A2(n831), .A3(n150), .A4(n203), .ZN(n190)
         );
  nd02d1 U674 ( .A1(n212), .A2(n213), .ZN(n187) );
  nd02d1 U675 ( .A1(apb_addr[0]), .A2(n185), .ZN(n184) );
  nd02d1 U676 ( .A1(apb_pwrite), .A2(apb_penable), .ZN(n205) );
  nd02d1 U677 ( .A1(mcmc_lut_read), .A2(n220), .ZN(n192) );
  inv0d0 U678 ( .I(apb_pwdata[0]), .ZN(n864) );
  inv0d0 U679 ( .I(apb_pwdata[1]), .ZN(n863) );
  inv0d0 U680 ( .I(apb_pwdata[2]), .ZN(n862) );
  inv0d0 U681 ( .I(apb_pwdata[3]), .ZN(n861) );
  inv0d0 U682 ( .I(apb_pwdata[4]), .ZN(n860) );
  inv0d0 U683 ( .I(apb_pwdata[5]), .ZN(n859) );
  inv0d0 U684 ( .I(apb_pwdata[6]), .ZN(n858) );
  inv0d0 U685 ( .I(apb_pwdata[7]), .ZN(n857) );
  inv0d0 U686 ( .I(apb_addr[1]), .ZN(n829) );
  inv0d0 U687 ( .I(apb_pwdata[8]), .ZN(n856) );
  inv0d0 U688 ( .I(apb_pwdata[9]), .ZN(n855) );
  inv0d0 U689 ( .I(apb_pwdata[10]), .ZN(n854) );
  inv0d0 U690 ( .I(apb_penable), .ZN(n832) );
  inv0d0 U691 ( .I(apb_pwdata[11]), .ZN(n853) );
  inv0d0 U692 ( .I(apb_pwdata[12]), .ZN(n852) );
  inv0d0 U693 ( .I(apb_pwdata[13]), .ZN(n851) );
  inv0d0 U694 ( .I(apb_pwdata[14]), .ZN(n850) );
  inv0d0 U695 ( .I(apb_pwdata[15]), .ZN(n849) );
  inv0d0 U696 ( .I(apb_pwdata[16]), .ZN(n848) );
  inv0d0 U697 ( .I(apb_pwdata[17]), .ZN(n847) );
  inv0d0 U698 ( .I(n223), .ZN(n12) );
  buffd1 U699 ( .I(reset_n), .Z(n147) );
  buffd1 U700 ( .I(reset_n), .Z(n148) );
  buffd1 U701 ( .I(reset_n), .Z(n149) );
  buffd1 U702 ( .I(n150), .Z(n231) );
  buffd1 U703 ( .I(reset_n), .Z(n150) );
  inv0d0 U704 ( .I(apb_pwdata[18]), .ZN(n846) );
  inv0d0 U705 ( .I(apb_pwdata[19]), .ZN(n845) );
  inv0d0 U706 ( .I(apb_pwdata[20]), .ZN(n844) );
  inv0d0 U707 ( .I(apb_pwdata[21]), .ZN(n843) );
  inv0d0 U708 ( .I(apb_pwdata[22]), .ZN(n842) );
  inv0d0 U709 ( .I(apb_pwdata[23]), .ZN(n841) );
  inv0d0 U710 ( .I(apb_pwdata[24]), .ZN(n840) );
  inv0d0 U711 ( .I(apb_pwdata[25]), .ZN(n839) );
  inv0d0 U712 ( .I(apb_pwdata[26]), .ZN(n838) );
  inv0d0 U713 ( .I(apb_pwdata[27]), .ZN(n837) );
  inv0d0 U714 ( .I(apb_pwdata[28]), .ZN(n836) );
  inv0d0 U715 ( .I(apb_pwdata[29]), .ZN(n835) );
  inv0d0 U716 ( .I(apb_pwdata[30]), .ZN(n834) );
  inv0d0 U717 ( .I(apb_pwdata[31]), .ZN(n833) );
  inv0d0 U718 ( .I(apb_addr[0]), .ZN(n830) );
  inv0d0 U719 ( .I(apb_addr[2]), .ZN(n828) );
endmodule


module global_fsm ( clk, reset_n, start_core, param_calc_finish, mcmc_finish, 
        dctc_finish, state );
  output [1:0] state;
  input clk, reset_n, start_core, param_calc_finish, mcmc_finish, dctc_finish;
  wire   n1, n4, n5, n6, n2;
  wire   [1:0] next_state;

  dfcrn1 current_state_reg_1_ ( .D(next_state[1]), .CP(clk), .CDN(reset_n), 
        .QN(n1) );
  aon211d1 U9 ( .C1(dctc_finish), .C2(state[0]), .B(n1), .A(n4), .ZN(
        next_state[1]) );
  oai22d1 U10 ( .A1(n5), .A2(n1), .B1(state[1]), .B2(n6), .ZN(next_state[0])
         );
  dfcrq1 current_state_reg_0_ ( .D(next_state[0]), .CP(clk), .CDN(reset_n), 
        .Q(state[0]) );
  aoim22d1 U3 ( .A1(mcmc_finish), .A2(n2), .B1(n2), .B2(dctc_finish), .Z(n5)
         );
  aoim22d1 U4 ( .A1(start_core), .A2(n2), .B1(n2), .B2(param_calc_finish), .Z(
        n6) );
  inv0d0 U5 ( .I(state[0]), .ZN(n2) );
  inv0d0 U6 ( .I(n1), .ZN(state[1]) );
  nd03d1 U7 ( .A1(param_calc_finish), .A2(n1), .A3(state[0]), .ZN(n4) );
endmodule


module mean_calc_0_DW01_add_0_DW01_add_43 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [7:1] carry;

  ad01d4 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  xr03d1 U1_3 ( .A1(A[3]), .A2(B[3]), .A3(carry[3]), .Z(SUM[3]) );
  ad01d1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  xr03d1 U1_2 ( .A1(A[2]), .A2(B[2]), .A3(carry[2]), .Z(SUM[2]) );
  nd02d1 U1 ( .A1(B[6]), .A2(n5), .ZN(n10) );
  inv0d0 U2 ( .I(B[7]), .ZN(n1) );
  inv0d0 U3 ( .I(n12), .ZN(n2) );
  nd02d1 U4 ( .A1(A[6]), .A2(B[6]), .ZN(n8) );
  cg01d1 U5 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]) );
  xn02d1 U6 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
  invbd4 U7 ( .I(A[0]), .ZN(n7) );
  cg01d1 U8 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]) );
  nd12d1 U9 ( .A1(n1), .A2(n6), .ZN(n14) );
  nr23d2 U10 ( .A1(n14), .A2(n13), .A3(n2), .ZN(n15) );
  inv0d0 U11 ( .I(n9), .ZN(n3) );
  inv0d1 U12 ( .I(n3), .ZN(n4) );
  nd03d0 U13 ( .A1(n8), .A2(n10), .A3(n4), .ZN(carry[7]) );
  cg01d1 U14 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(n5) );
  nd03d2 U15 ( .A1(n8), .A2(n10), .A3(n9), .ZN(n6) );
  nd12d2 U16 ( .A1(B[0]), .A2(n7), .ZN(carry[1]) );
  nd02d1 U17 ( .A1(n6), .A2(A[7]), .ZN(n13) );
  xr03d1 U18 ( .A1(A[6]), .A2(B[6]), .A3(n5), .Z(SUM[6]) );
  nd02d2 U19 ( .A1(carry[6]), .A2(A[6]), .ZN(n9) );
  xr02d1 U20 ( .A1(A[7]), .A2(B[7]), .Z(n11) );
  xr02d1 U21 ( .A1(n11), .A2(carry[7]), .Z(SUM[7]) );
  nd02d0 U22 ( .A1(A[7]), .A2(B[7]), .ZN(n12) );
  nd12d2 U23 ( .A1(A[8]), .A2(n15), .ZN(CO) );
endmodule


module mean_calc_0_DW01_add_1_DW01_add_44 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  wire   [8:1] carry;

  ad01d1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d1 U1_4 ( .A(A[4]), .B(B[4]), .CI(n7), .CO(carry[5]), .S(SUM[4]) );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  nd12d2 U1 ( .A1(carry[8]), .A2(n1), .ZN(CO) );
  invbdk U2 ( .I(A[8]), .ZN(n1) );
  nd02d1 U3 ( .A1(n9), .A2(A[5]), .ZN(n12) );
  xr03d1 U4 ( .A1(carry[1]), .A2(B[1]), .A3(A[1]), .Z(SUM[1]) );
  nd02d1 U5 ( .A1(A[1]), .A2(carry[1]), .ZN(n2) );
  nd02d1 U6 ( .A1(A[1]), .A2(B[1]), .ZN(n3) );
  nd02d0 U7 ( .A1(carry[1]), .A2(B[1]), .ZN(n4) );
  nd03d2 U8 ( .A1(n4), .A2(n3), .A3(n2), .ZN(carry[2]) );
  or02d1 U9 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  nd02d1 U10 ( .A1(A[2]), .A2(B[2]), .ZN(n15) );
  inv0d0 U11 ( .I(n6), .ZN(n5) );
  nd03d2 U12 ( .A1(n19), .A2(n20), .A3(n21), .ZN(n7) );
  inv0d0 U13 ( .I(n10), .ZN(n6) );
  cg01d1 U14 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(n8) );
  cg01d1 U15 ( .A(A[4]), .B(B[4]), .CI(n7), .CO(n9) );
  nd03d2 U16 ( .A1(n15), .A2(n17), .A3(n16), .ZN(n10) );
  xr02d1 U17 ( .A1(B[5]), .A2(A[5]), .Z(n11) );
  xr02d1 U18 ( .A1(n11), .A2(n9), .Z(SUM[5]) );
  nd02d2 U19 ( .A1(carry[5]), .A2(B[5]), .ZN(n13) );
  nd02d0 U20 ( .A1(A[5]), .A2(B[5]), .ZN(n14) );
  nd03d2 U21 ( .A1(n14), .A2(n12), .A3(n13), .ZN(carry[6]) );
  xr03d1 U22 ( .A1(A[2]), .A2(B[2]), .A3(n8), .Z(SUM[2]) );
  nd02d2 U23 ( .A1(carry[2]), .A2(A[2]), .ZN(n16) );
  nd02d2 U24 ( .A1(n8), .A2(B[2]), .ZN(n17) );
  nd03d2 U25 ( .A1(n15), .A2(n17), .A3(n16), .ZN(carry[3]) );
  xr02d1 U26 ( .A1(A[3]), .A2(B[3]), .Z(n18) );
  xr02d1 U27 ( .A1(n18), .A2(n5), .Z(SUM[3]) );
  nd02d0 U28 ( .A1(A[3]), .A2(B[3]), .ZN(n19) );
  nd02d2 U29 ( .A1(carry[3]), .A2(A[3]), .ZN(n20) );
  nd02d2 U30 ( .A1(n10), .A2(B[3]), .ZN(n21) );
  xn02d1 U31 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module mean_calc_0_DW01_add_2_DW01_add_45 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7;
  wire   [8:1] carry;

  ad01d1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  xr03d1 U1_7 ( .A1(A[7]), .A2(B[7]), .A3(n1), .Z(SUM[7]) );
  ad01d1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d0 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  cg01d0 U1 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(n1) );
  cg01d1 U2 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(n2) );
  xr02d1 U3 ( .A1(B[2]), .A2(A[2]), .Z(n3) );
  xr02d1 U4 ( .A1(n3), .A2(n2), .Z(SUM[2]) );
  nd02d1 U5 ( .A1(n2), .A2(A[2]), .ZN(n4) );
  nd02d1 U6 ( .A1(carry[2]), .A2(B[2]), .ZN(n5) );
  nd02d0 U7 ( .A1(A[2]), .A2(B[2]), .ZN(n6) );
  nd03d2 U8 ( .A1(n6), .A2(n5), .A3(n4), .ZN(carry[3]) );
  cg01d1 U9 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]) );
  nd12d2 U10 ( .A1(A[8]), .A2(n7), .ZN(CO) );
  invbd2 U11 ( .I(carry[8]), .ZN(n7) );
  or02d0 U12 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  xn02d1 U13 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module mean_calc_0_DW01_add_3_DW01_add_46 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [8:1] carry;

  ad01d1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d4 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d1 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  ad01d4 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  nd02d1 U1 ( .A1(n1), .A2(A[6]), .ZN(n4) );
  cg01d1 U2 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(n1) );
  inv0da U3 ( .I(n2), .ZN(CO) );
  nr02d7 U4 ( .A1(A[8]), .A2(carry[8]), .ZN(n2) );
  nd02d2 U5 ( .A1(carry[6]), .A2(B[6]), .ZN(n5) );
  xr02d1 U6 ( .A1(B[6]), .A2(A[6]), .Z(n3) );
  xr02d1 U7 ( .A1(n3), .A2(n1), .Z(SUM[6]) );
  nd02d0 U8 ( .A1(A[6]), .A2(B[6]), .ZN(n6) );
  nd03d2 U9 ( .A1(n6), .A2(n4), .A3(n5), .ZN(carry[7]) );
  or02d0 U10 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  xn02d1 U11 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module mean_calc_0_DW01_add_4_DW01_add_47 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5;
  wire   [8:1] carry;

  xr03d2 U1_5 ( .A1(A[5]), .A2(B[5]), .A3(carry[5]), .Z(SUM[5]) );
  xr03d1 U1_7 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .Z(SUM[7]) );
  ad01d1 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  xr03d1 U1_2 ( .A1(A[2]), .A2(B[2]), .A3(carry[2]), .Z(SUM[2]) );
  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  xr03d1 U1_4 ( .A1(A[4]), .A2(B[4]), .A3(carry[4]), .Z(SUM[4]) );
  xr02d1 U1 ( .A1(B[6]), .A2(A[6]), .Z(n1) );
  xr02d1 U2 ( .A1(n1), .A2(carry[6]), .Z(SUM[6]) );
  nd02d1 U3 ( .A1(carry[6]), .A2(A[6]), .ZN(n2) );
  nd02d1 U4 ( .A1(carry[6]), .A2(B[6]), .ZN(n3) );
  nd02d0 U5 ( .A1(A[6]), .A2(B[6]), .ZN(n4) );
  nd03d2 U6 ( .A1(n4), .A2(n3), .A3(n2), .ZN(carry[7]) );
  cg01d1 U7 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]) );
  cg01d1 U8 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]) );
  cg01d1 U9 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]) );
  nd12d2 U10 ( .A1(A[8]), .A2(n5), .ZN(CO) );
  invbd2 U11 ( .I(carry[8]), .ZN(n5) );
  cg01d1 U12 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]) );
  or02d0 U13 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  xn02d1 U14 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module mean_calc_0_DW01_add_5_DW01_add_48 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;
  wire   [6:1] carry;

  ad01d1 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  ad01d4 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  nd03d2 U1 ( .A1(n9), .A2(n8), .A3(n7), .ZN(n1) );
  nd03d1 U2 ( .A1(n9), .A2(n8), .A3(n7), .ZN(carry[5]) );
  xr02d1 U3 ( .A1(B[5]), .A2(A[5]), .Z(n2) );
  xr02d1 U4 ( .A1(n2), .A2(n1), .Z(SUM[5]) );
  nd02d1 U5 ( .A1(n1), .A2(A[5]), .ZN(n3) );
  nd02d1 U6 ( .A1(n1), .A2(B[5]), .ZN(n4) );
  nd02d0 U7 ( .A1(A[5]), .A2(B[5]), .ZN(n5) );
  nd03d2 U8 ( .A1(n5), .A2(n4), .A3(n3), .ZN(carry[6]) );
  xr02d1 U9 ( .A1(B[4]), .A2(A[4]), .Z(n6) );
  xr02d1 U10 ( .A1(n6), .A2(carry[4]), .Z(SUM[4]) );
  nd02d1 U11 ( .A1(carry[4]), .A2(A[4]), .ZN(n7) );
  nd02d1 U12 ( .A1(carry[4]), .A2(B[4]), .ZN(n8) );
  nd02d0 U13 ( .A1(A[4]), .A2(B[4]), .ZN(n9) );
  an03d1 U14 ( .A1(n25), .A2(n24), .A3(n23), .Z(n17) );
  inv0d0 U15 ( .I(B[6]), .ZN(n13) );
  nd02d1 U16 ( .A1(A[6]), .A2(B[6]), .ZN(n19) );
  inv0d0 U17 ( .I(n21), .ZN(n10) );
  inv0d1 U18 ( .I(n10), .ZN(n11) );
  nd02d1 U19 ( .A1(n18), .A2(B[7]), .ZN(n25) );
  nd03d0 U20 ( .A1(n19), .A2(n20), .A3(n11), .ZN(n12) );
  nd12d2 U21 ( .A1(n13), .A2(carry[6]), .ZN(n21) );
  cg01d1 U22 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(n14) );
  nd02d1 U23 ( .A1(n18), .A2(A[7]), .ZN(n24) );
  invbd4 U24 ( .I(n26), .ZN(n15) );
  inv0da U25 ( .I(n15), .ZN(CO) );
  nd12d2 U26 ( .A1(A[8]), .A2(n17), .ZN(n26) );
  nd03d2 U27 ( .A1(n19), .A2(n21), .A3(n20), .ZN(n18) );
  xr03d1 U28 ( .A1(A[6]), .A2(B[6]), .A3(n14), .Z(SUM[6]) );
  nd02d2 U29 ( .A1(A[6]), .A2(n14), .ZN(n20) );
  xr02d1 U30 ( .A1(A[7]), .A2(B[7]), .Z(n22) );
  xr02d1 U31 ( .A1(n22), .A2(n12), .Z(SUM[7]) );
  nd02d0 U32 ( .A1(A[7]), .A2(B[7]), .ZN(n23) );
  or02d0 U33 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  xn02d1 U34 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module mean_calc_0_DW01_add_6_DW01_add_49 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [8:1] carry;

  ad01d1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d1 U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ad01d4 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  inv0d0 U1 ( .I(A[8]), .ZN(n2) );
  nd03d2 U2 ( .A1(n8), .A2(n6), .A3(n7), .ZN(n1) );
  nd02d1 U3 ( .A1(n4), .A2(A[5]), .ZN(n10) );
  nd02d1 U4 ( .A1(n3), .A2(A[3]), .ZN(n6) );
  nd12d2 U5 ( .A1(carry[8]), .A2(n2), .ZN(CO) );
  cg01d1 U6 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(n3) );
  cg01d1 U7 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(n4) );
  nd02d2 U8 ( .A1(carry[3]), .A2(B[3]), .ZN(n7) );
  nd02d2 U9 ( .A1(carry[5]), .A2(B[5]), .ZN(n11) );
  xr02d1 U10 ( .A1(B[3]), .A2(A[3]), .Z(n5) );
  xr02d1 U11 ( .A1(n5), .A2(n3), .Z(SUM[3]) );
  nd02d0 U12 ( .A1(A[3]), .A2(B[3]), .ZN(n8) );
  xr02d1 U13 ( .A1(B[5]), .A2(A[5]), .Z(n9) );
  xr02d1 U14 ( .A1(n9), .A2(n4), .Z(SUM[5]) );
  nd02d0 U15 ( .A1(A[5]), .A2(B[5]), .ZN(n12) );
  nd03d2 U16 ( .A1(n12), .A2(n10), .A3(n11), .ZN(carry[6]) );
  or02d0 U17 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  xn02d1 U18 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module mean_calc_0_DW01_add_7_DW01_add_50 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;
  wire   [8:1] carry;

  ad01d1 U1_4 ( .A(A[4]), .B(B[4]), .CI(n4), .CO(carry[5]), .S(SUM[4]) );
  ad01d1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d1 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  nd12d2 U1 ( .A1(carry[8]), .A2(n1), .ZN(CO) );
  invbdk U2 ( .I(A[8]), .ZN(n1) );
  nd02d2 U3 ( .A1(A[2]), .A2(B[2]), .ZN(n12) );
  nd02d1 U4 ( .A1(A[5]), .A2(B[5]), .ZN(n11) );
  inv0d0 U5 ( .I(n3), .ZN(n2) );
  nd03d2 U6 ( .A1(n16), .A2(n17), .A3(n18), .ZN(n4) );
  inv0d0 U7 ( .I(n6), .ZN(n3) );
  cg01d1 U8 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(n5) );
  nd03d2 U9 ( .A1(n12), .A2(n14), .A3(n13), .ZN(n6) );
  cg01d1 U10 ( .A(A[4]), .B(B[4]), .CI(n4), .CO(n7) );
  xr02d1 U11 ( .A1(B[5]), .A2(A[5]), .Z(n8) );
  xr02d1 U12 ( .A1(n8), .A2(n7), .Z(SUM[5]) );
  nd02d2 U13 ( .A1(n7), .A2(A[5]), .ZN(n9) );
  nd02d2 U14 ( .A1(carry[5]), .A2(B[5]), .ZN(n10) );
  nd03d2 U15 ( .A1(n11), .A2(n9), .A3(n10), .ZN(carry[6]) );
  xr03d1 U16 ( .A1(A[2]), .A2(B[2]), .A3(n5), .Z(SUM[2]) );
  nd02d2 U17 ( .A1(carry[2]), .A2(A[2]), .ZN(n13) );
  nd02d2 U18 ( .A1(B[2]), .A2(n5), .ZN(n14) );
  nd03d2 U19 ( .A1(n12), .A2(n14), .A3(n13), .ZN(carry[3]) );
  xr02d1 U20 ( .A1(A[3]), .A2(B[3]), .Z(n15) );
  xr02d1 U21 ( .A1(n15), .A2(n2), .Z(SUM[3]) );
  nd02d0 U22 ( .A1(A[3]), .A2(B[3]), .ZN(n16) );
  nd02d2 U23 ( .A1(carry[3]), .A2(A[3]), .ZN(n17) );
  nd02d2 U24 ( .A1(n6), .A2(B[3]), .ZN(n18) );
  or02d0 U25 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  xn02d1 U26 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module mean_calc_0_DW_div_seq_0_DW_div_seq_3 ( clk, rst_n, hold, start, a, b, 
        complete, divide_by_0, quotient, remainder );
  input [22:0] a;
  input [7:0] b;
  output [22:0] quotient;
  output [7:0] remainder;
  input clk, rst_n, hold, start;
  output complete, divide_by_0;
  wire   hold_n, load_tc, first_cyc, pr_7__8_, pr_7__7_, pr_7__6_, pr_7__5_,
         pr_7__4_, pr_7__3_, pr_7__2_, pr_7__1_, pr_6__8_, pr_6__7_, pr_6__6_,
         pr_6__5_, pr_6__4_, pr_6__3_, pr_6__2_, pr_6__1_, pr_5__8_, pr_5__7_,
         pr_5__6_, pr_5__5_, pr_5__4_, pr_5__3_, pr_5__2_, pr_5__1_, pr_4__8_,
         pr_4__7_, pr_4__6_, pr_4__5_, pr_4__4_, pr_4__3_, pr_4__2_, pr_4__1_,
         pr_3__8_, pr_3__7_, pr_3__6_, pr_3__5_, pr_3__4_, pr_3__3_, pr_3__2_,
         pr_3__1_, pr_2__8_, pr_2__7_, pr_2__6_, pr_2__5_, pr_2__4_, pr_2__3_,
         pr_2__2_, pr_2__1_, pr_1__8_, pr_1__7_, pr_1__6_, pr_1__5_, pr_1__4_,
         pr_1__3_, pr_1__2_, pr_1__1_, temp_part_rem_7__7_,
         temp_part_rem_7__6_, temp_part_rem_7__5_, temp_part_rem_7__4_,
         temp_part_rem_7__3_, temp_part_rem_7__2_, temp_part_rem_7__1_,
         temp_part_rem_7__0_, temp_part_rem_6__7_, temp_part_rem_6__6_,
         temp_part_rem_6__5_, temp_part_rem_6__4_, temp_part_rem_6__3_,
         temp_part_rem_6__2_, temp_part_rem_6__1_, temp_part_rem_6__0_,
         temp_part_rem_5__7_, temp_part_rem_5__6_, temp_part_rem_5__5_,
         temp_part_rem_5__4_, temp_part_rem_5__3_, temp_part_rem_5__2_,
         temp_part_rem_5__1_, temp_part_rem_5__0_, temp_part_rem_4__7_,
         temp_part_rem_4__6_, temp_part_rem_4__5_, temp_part_rem_4__4_,
         temp_part_rem_4__3_, temp_part_rem_4__2_, temp_part_rem_4__1_,
         temp_part_rem_4__0_, temp_part_rem_3__7_, temp_part_rem_3__6_,
         temp_part_rem_3__5_, temp_part_rem_3__4_, temp_part_rem_3__3_,
         temp_part_rem_3__2_, temp_part_rem_3__1_, temp_part_rem_3__0_,
         temp_part_rem_2__7_, temp_part_rem_2__6_, temp_part_rem_2__5_,
         temp_part_rem_2__4_, temp_part_rem_2__3_, temp_part_rem_2__2_,
         temp_part_rem_2__1_, temp_part_rem_2__0_, temp_part_rem_1__7_,
         temp_part_rem_1__6_, temp_part_rem_1__5_, temp_part_rem_1__4_,
         temp_part_rem_1__3_, temp_part_rem_1__2_, temp_part_rem_1__1_,
         temp_part_rem_1__0_, temp_part_rem_0__7_, temp_part_rem_0__6_,
         temp_part_rem_0__5_, temp_part_rem_0__4_, temp_part_rem_0__3_,
         temp_part_rem_0__2_, temp_part_rem_0__1_, temp_part_rem_0__0_,
         start_q, nx_state, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33,
         N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47,
         N48, N49, N50, N51, N52, N53, N54, N55, N56, U_COUNT_tercnt_d,
         U_COUNT_tercnt_cmp_bus_0_, U_COUNT_next_count_2_, U_COUNT_load_n, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8;
  wire   [7:0] a_in_temp0;
  wire   [7:0] part_rem_0;
  wire   [15:0] final_quotient;
  wire   [7:0] final_remainder;
  wire   [7:0] b_in;
  wire   [7:0] temp_q_rev;
  wire   [2:0] U_COUNT_count_inc;
  wire   [2:0] U_COUNT_count;

  mean_calc_0_DW01_add_0_DW01_add_43 U_ADD_0 ( .A({part_rem_0, a_in_temp0[0]}), 
        .B({1'b1, n98, n99, n100, n101, n102, n103, n104, n105}), .CI(1'b1), 
        .SUM({SYNOPSYS_UNCONNECTED_1, temp_part_rem_0__7_, temp_part_rem_0__6_, 
        temp_part_rem_0__5_, temp_part_rem_0__4_, temp_part_rem_0__3_, 
        temp_part_rem_0__2_, temp_part_rem_0__1_, temp_part_rem_0__0_}), .CO(
        temp_q_rev[7]) );
  mean_calc_0_DW01_add_1_DW01_add_44 U_ADD_1 ( .A({pr_1__8_, pr_1__7_, 
        pr_1__6_, pr_1__5_, pr_1__4_, pr_1__3_, pr_1__2_, pr_1__1_, 
        a_in_temp0[1]}), .B({1'b1, n98, n99, n100, n101, n102, n103, n104, 
        n105}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_2, temp_part_rem_1__7_, 
        temp_part_rem_1__6_, temp_part_rem_1__5_, temp_part_rem_1__4_, 
        temp_part_rem_1__3_, temp_part_rem_1__2_, temp_part_rem_1__1_, 
        temp_part_rem_1__0_}), .CO(temp_q_rev[6]) );
  mean_calc_0_DW01_add_2_DW01_add_45 U_ADD_2 ( .A({pr_2__8_, pr_2__7_, 
        pr_2__6_, pr_2__5_, pr_2__4_, pr_2__3_, pr_2__2_, pr_2__1_, 
        a_in_temp0[2]}), .B({1'b1, n98, n99, n100, n101, n102, n103, n104, 
        n105}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_3, temp_part_rem_2__7_, 
        temp_part_rem_2__6_, temp_part_rem_2__5_, temp_part_rem_2__4_, 
        temp_part_rem_2__3_, temp_part_rem_2__2_, temp_part_rem_2__1_, 
        temp_part_rem_2__0_}), .CO(temp_q_rev[5]) );
  mean_calc_0_DW01_add_3_DW01_add_46 U_ADD_3 ( .A({pr_3__8_, pr_3__7_, 
        pr_3__6_, pr_3__5_, pr_3__4_, pr_3__3_, pr_3__2_, pr_3__1_, 
        a_in_temp0[3]}), .B({1'b1, n98, n99, n100, n101, n102, n103, n104, 
        n105}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_4, temp_part_rem_3__7_, 
        temp_part_rem_3__6_, temp_part_rem_3__5_, temp_part_rem_3__4_, 
        temp_part_rem_3__3_, temp_part_rem_3__2_, temp_part_rem_3__1_, 
        temp_part_rem_3__0_}), .CO(temp_q_rev[4]) );
  mean_calc_0_DW01_add_4_DW01_add_47 U_ADD_4 ( .A({pr_4__8_, pr_4__7_, 
        pr_4__6_, pr_4__5_, pr_4__4_, pr_4__3_, pr_4__2_, pr_4__1_, 
        a_in_temp0[4]}), .B({1'b1, n98, n99, n100, n101, n102, n103, n104, n27}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_5, temp_part_rem_4__7_, 
        temp_part_rem_4__6_, temp_part_rem_4__5_, temp_part_rem_4__4_, 
        temp_part_rem_4__3_, temp_part_rem_4__2_, temp_part_rem_4__1_, 
        temp_part_rem_4__0_}), .CO(temp_q_rev[3]) );
  mean_calc_0_DW01_add_5_DW01_add_48 U_ADD_5 ( .A({pr_5__8_, pr_5__7_, 
        pr_5__6_, pr_5__5_, pr_5__4_, pr_5__3_, pr_5__2_, pr_5__1_, 
        a_in_temp0[5]}), .B({1'b1, n98, n99, n100, n101, n102, n103, n104, n27}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_6, temp_part_rem_5__7_, 
        temp_part_rem_5__6_, temp_part_rem_5__5_, temp_part_rem_5__4_, 
        temp_part_rem_5__3_, temp_part_rem_5__2_, temp_part_rem_5__1_, 
        temp_part_rem_5__0_}), .CO(temp_q_rev[2]) );
  mean_calc_0_DW01_add_6_DW01_add_49 U_ADD_6 ( .A({pr_6__8_, pr_6__7_, 
        pr_6__6_, pr_6__5_, pr_6__4_, pr_6__3_, pr_6__2_, pr_6__1_, 
        a_in_temp0[6]}), .B({1'b1, n98, n99, n100, n101, n102, n103, n33, n27}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_7, temp_part_rem_6__7_, 
        temp_part_rem_6__6_, temp_part_rem_6__5_, temp_part_rem_6__4_, 
        temp_part_rem_6__3_, temp_part_rem_6__2_, temp_part_rem_6__1_, 
        temp_part_rem_6__0_}), .CO(temp_q_rev[1]) );
  mean_calc_0_DW01_add_7_DW01_add_50 U_ADD_7 ( .A({pr_7__8_, pr_7__7_, 
        pr_7__6_, pr_7__5_, pr_7__4_, pr_7__3_, pr_7__2_, pr_7__1_, 
        a_in_temp0[7]}), .B({1'b1, n98, n99, n100, n101, n102, n103, n33, n27}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_8, temp_part_rem_7__7_, 
        temp_part_rem_7__6_, temp_part_rem_7__5_, temp_part_rem_7__4_, 
        temp_part_rem_7__3_, temp_part_rem_7__2_, temp_part_rem_7__1_, 
        temp_part_rem_7__0_}), .CO(temp_q_rev[0]) );
  dfcrq1 shf_reg_reg_7__1_ ( .D(N55), .CP(clk), .CDN(n41), .Q(
        final_quotient[8]) );
  dfcrq1 shf_reg_reg_7__0_ ( .D(N54), .CP(clk), .CDN(n41), .Q(a_in_temp0[7])
         );
  dfcrq1 shf_reg_reg_6__2_ ( .D(N53), .CP(clk), .CDN(n41), .Q(
        final_quotient[1]) );
  dfcrq1 shf_reg_reg_6__1_ ( .D(N52), .CP(clk), .CDN(n41), .Q(
        final_quotient[9]) );
  dfcrq1 shf_reg_reg_6__0_ ( .D(N51), .CP(clk), .CDN(n41), .Q(a_in_temp0[6])
         );
  dfcrq1 shf_reg_reg_5__2_ ( .D(N50), .CP(clk), .CDN(n42), .Q(
        final_quotient[2]) );
  dfcrq1 shf_reg_reg_5__1_ ( .D(N49), .CP(clk), .CDN(n42), .Q(
        final_quotient[10]) );
  dfcrq1 shf_reg_reg_5__0_ ( .D(N48), .CP(clk), .CDN(n42), .Q(a_in_temp0[5])
         );
  dfcrq1 shf_reg_reg_4__2_ ( .D(N47), .CP(clk), .CDN(n42), .Q(
        final_quotient[3]) );
  dfcrq1 shf_reg_reg_4__1_ ( .D(N46), .CP(clk), .CDN(n42), .Q(
        final_quotient[11]) );
  dfcrq1 shf_reg_reg_4__0_ ( .D(N45), .CP(clk), .CDN(n42), .Q(a_in_temp0[4])
         );
  dfcrq1 shf_reg_reg_3__2_ ( .D(N44), .CP(clk), .CDN(n42), .Q(
        final_quotient[4]) );
  dfcrq1 shf_reg_reg_3__1_ ( .D(N43), .CP(clk), .CDN(n42), .Q(
        final_quotient[12]) );
  dfcrq1 shf_reg_reg_3__0_ ( .D(N42), .CP(clk), .CDN(n42), .Q(a_in_temp0[3])
         );
  dfcrq1 shf_reg_reg_2__2_ ( .D(N41), .CP(clk), .CDN(n42), .Q(
        final_quotient[5]) );
  dfcrq1 shf_reg_reg_2__1_ ( .D(N40), .CP(clk), .CDN(n43), .Q(
        final_quotient[13]) );
  dfcrq1 shf_reg_reg_2__0_ ( .D(N39), .CP(clk), .CDN(n43), .Q(a_in_temp0[2])
         );
  dfcrq1 shf_reg_reg_1__2_ ( .D(N38), .CP(clk), .CDN(n43), .Q(
        final_quotient[6]) );
  dfcrq1 shf_reg_reg_1__1_ ( .D(N37), .CP(clk), .CDN(n43), .Q(
        final_quotient[14]) );
  dfcrq1 shf_reg_reg_1__0_ ( .D(N36), .CP(clk), .CDN(n43), .Q(a_in_temp0[1])
         );
  dfcrq1 shf_reg_reg_0__2_ ( .D(N35), .CP(clk), .CDN(n43), .Q(
        final_quotient[7]) );
  dfcrq1 shf_reg_reg_0__1_ ( .D(N34), .CP(clk), .CDN(n43), .Q(
        final_quotient[15]) );
  dfcrq1 part_rem_reg_reg_7_ ( .D(N32), .CP(clk), .CDN(n43), .Q(
        final_remainder[7]) );
  dfcrq1 part_rem_reg_reg_6_ ( .D(N31), .CP(clk), .CDN(n44), .Q(
        final_remainder[6]) );
  dfcrq1 part_rem_reg_reg_5_ ( .D(N30), .CP(clk), .CDN(n44), .Q(
        final_remainder[5]) );
  dfcrq1 part_rem_reg_reg_4_ ( .D(N29), .CP(clk), .CDN(n44), .Q(
        final_remainder[4]) );
  dfcrq1 part_rem_reg_reg_3_ ( .D(N28), .CP(clk), .CDN(n44), .Q(
        final_remainder[3]) );
  dfcrq1 part_rem_reg_reg_2_ ( .D(N27), .CP(clk), .CDN(n44), .Q(
        final_remainder[2]) );
  dfcrq1 part_rem_reg_reg_1_ ( .D(N26), .CP(clk), .CDN(n44), .Q(
        final_remainder[1]) );
  dfcrq1 start_q_reg ( .D(start), .CP(clk), .CDN(n44), .Q(start_q) );
  dfprb1 pr_state_reg ( .D(nx_state), .CP(clk), .SDN(n44), .QN(n17) );
  deprq1 b_reg_reg_7_ ( .D(b[7]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n44), 
        .Q(b_in[7]) );
  deprq1 b_reg_reg_6_ ( .D(b[6]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n45), 
        .Q(b_in[6]) );
  deprq1 b_reg_reg_5_ ( .D(b[5]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n45), 
        .Q(b_in[5]) );
  deprq1 b_reg_reg_4_ ( .D(b[4]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n45), 
        .Q(b_in[4]) );
  deprq1 b_reg_reg_3_ ( .D(b[3]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n45), 
        .Q(b_in[3]) );
  deprq1 b_reg_reg_2_ ( .D(b[2]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n45), 
        .Q(b_in[2]) );
  dfcrn1 U_COUNT_U2_1 ( .D(U_COUNT_tercnt_d), .CP(clk), .CDN(n41), .QN(load_tc) );
  dfcrq1 U_COUNT_U1_3_2 ( .D(U_COUNT_next_count_2_), .CP(clk), .CDN(n43), .Q(
        U_COUNT_count[2]) );
  dfcrq1 U_COUNT_U1_3_1 ( .D(n58), .CP(clk), .CDN(n41), .Q(U_COUNT_count[1])
         );
  dfcrq1 U_COUNT_U1_3_0 ( .D(U_COUNT_tercnt_cmp_bus_0_), .CP(clk), .CDN(n41), 
        .Q(U_COUNT_count[0]) );
  dfcrq4 start_reg_reg ( .D(N24), .CP(clk), .CDN(n41), .Q(first_cyc) );
  dfcrq2 part_rem_reg_reg_0_ ( .D(N25), .CP(clk), .CDN(n44), .Q(
        final_remainder[0]) );
  deprq4 b_reg_reg_0_ ( .D(b[0]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n45), 
        .Q(b_in[0]) );
  dfcrq4 shf_reg_reg_0__0_ ( .D(N33), .CP(clk), .CDN(n43), .Q(a_in_temp0[0])
         );
  deprq4 b_reg_reg_1_ ( .D(b[1]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n45), 
        .Q(b_in[1]) );
  dfcrq4 shf_reg_reg_7__2_ ( .D(N56), .CP(clk), .CDN(n41), .Q(
        final_quotient[0]) );
  buffd3 U3 ( .I(n60), .Z(n32) );
  inv0d2 U4 ( .I(temp_q_rev[0]), .ZN(n60) );
  oaim22d1 U5 ( .A1(n32), .A2(n106), .B1(n12), .B2(final_quotient[0]), .ZN(N56) );
  invbdk U6 ( .I(n54), .ZN(n12) );
  inv0d1 U7 ( .I(n47), .ZN(n38) );
  inv0d4 U8 ( .I(b_in[2]), .ZN(n103) );
  mx02d2 U9 ( .I0(a_in_temp0[0]), .I1(temp_part_rem_0__0_), .S(temp_q_rev[7]), 
        .Z(pr_1__1_) );
  mx02d2 U10 ( .I0(pr_4__4_), .I1(temp_part_rem_4__4_), .S(n31), .Z(pr_5__5_)
         );
  inv0d7 U11 ( .I(b_in[5]), .ZN(n100) );
  mx02d1 U12 ( .I0(pr_4__3_), .I1(temp_part_rem_4__3_), .S(n31), .Z(pr_5__4_)
         );
  inv0d7 U13 ( .I(b_in[4]), .ZN(n101) );
  inv0d7 U14 ( .I(b_in[6]), .ZN(n99) );
  mx02d1 U15 ( .I0(n26), .I1(temp_part_rem_2__1_), .S(n46), .Z(pr_3__2_) );
  mx02d1 U16 ( .I0(n37), .I1(temp_part_rem_4__1_), .S(n31), .Z(pr_5__2_) );
  inv0d1 U17 ( .I(temp_part_rem_6__1_), .ZN(n29) );
  mx02d1 U18 ( .I0(a_in_temp0[0]), .I1(temp_part_rem_0__0_), .S(n48), .Z(n13)
         );
  buffd1 U19 ( .I(part_rem_0[0]), .Z(n14) );
  mx02d1 U20 ( .I0(a_in_temp0[6]), .I1(temp_part_rem_6__0_), .S(n35), .Z(n15)
         );
  mx02d1 U21 ( .I0(a_in_temp0[4]), .I1(temp_part_rem_4__0_), .S(n31), .Z(n16)
         );
  nd12d2 U22 ( .A1(n18), .A2(n47), .ZN(n39) );
  invbdk U23 ( .I(temp_part_rem_1__0_), .ZN(n18) );
  buffd1 U24 ( .I(temp_q_rev[7]), .Z(n19) );
  inv0d0 U25 ( .I(n38), .ZN(n20) );
  buffd1 U26 ( .I(n19), .Z(n48) );
  nr02d4 U27 ( .A1(load_tc), .A2(first_cyc), .ZN(complete) );
  nr02d4 U28 ( .A1(n92), .A2(first_cyc), .ZN(part_rem_0[5]) );
  nr02d4 U29 ( .A1(n93), .A2(first_cyc), .ZN(part_rem_0[4]) );
  nr02d4 U30 ( .A1(n91), .A2(first_cyc), .ZN(part_rem_0[6]) );
  nr02d4 U31 ( .A1(n94), .A2(first_cyc), .ZN(part_rem_0[3]) );
  nr02d4 U32 ( .A1(n95), .A2(first_cyc), .ZN(part_rem_0[2]) );
  inv0da U33 ( .I(b_in[1]), .ZN(n104) );
  nr02d4 U34 ( .A1(n96), .A2(first_cyc), .ZN(part_rem_0[1]) );
  inv0d2 U35 ( .I(final_remainder[1]), .ZN(n96) );
  oaim31d1 U36 ( .B1(final_remainder[0]), .B2(n21), .B3(U_COUNT_load_n), .A(
        n134), .ZN(N25) );
  oaim31d1 U37 ( .B1(final_remainder[1]), .B2(n21), .B3(U_COUNT_load_n), .A(
        n133), .ZN(N26) );
  inv0d0 U38 ( .I(load_tc), .ZN(n21) );
  oaim31d1 U39 ( .B1(final_remainder[2]), .B2(n22), .B3(U_COUNT_load_n), .A(
        n132), .ZN(N27) );
  inv0d0 U40 ( .I(load_tc), .ZN(n22) );
  oaim31d1 U41 ( .B1(final_remainder[6]), .B2(n23), .B3(U_COUNT_load_n), .A(
        n128), .ZN(N31) );
  inv0d0 U42 ( .I(load_tc), .ZN(n23) );
  oaim31d1 U43 ( .B1(final_remainder[7]), .B2(n23), .B3(U_COUNT_load_n), .A(
        n125), .ZN(N32) );
  oaim31d1 U44 ( .B1(final_remainder[5]), .B2(n22), .B3(U_COUNT_load_n), .A(
        n129), .ZN(N30) );
  oaim31d1 U45 ( .B1(final_remainder[3]), .B2(n21), .B3(U_COUNT_load_n), .A(
        n131), .ZN(N28) );
  oaim31d1 U46 ( .B1(final_remainder[4]), .B2(n23), .B3(U_COUNT_load_n), .A(
        n130), .ZN(N29) );
  nr02d2 U47 ( .A1(n97), .A2(first_cyc), .ZN(part_rem_0[0]) );
  bufbd3 U48 ( .I(temp_q_rev[5]), .Z(n46) );
  mx02d0 U49 ( .I0(temp_part_rem_4__7_), .I1(pr_4__7_), .S(n62), .Z(pr_5__8_)
         );
  mx02d0 U50 ( .I0(a_in_temp0[2]), .I1(temp_part_rem_2__0_), .S(n46), .Z(n24)
         );
  mx02d1 U51 ( .I0(a_in_temp0[2]), .I1(temp_part_rem_2__0_), .S(temp_q_rev[5]), 
        .Z(pr_3__1_) );
  inv0d0 U52 ( .I(pr_2__1_), .ZN(n25) );
  inv0d0 U53 ( .I(n25), .ZN(n26) );
  mx02d0 U54 ( .I0(part_rem_0[2]), .I1(temp_part_rem_0__3_), .S(temp_q_rev[7]), 
        .Z(pr_1__4_) );
  inv0d4 U55 ( .I(n34), .ZN(n35) );
  invbd2 U56 ( .I(temp_q_rev[1]), .ZN(n34) );
  mx02d1 U57 ( .I0(a_in_temp0[6]), .I1(temp_part_rem_6__0_), .S(temp_q_rev[1]), 
        .Z(pr_7__1_) );
  mx02d0 U58 ( .I0(part_rem_0[4]), .I1(temp_part_rem_0__5_), .S(n19), .Z(
        pr_1__6_) );
  mx02d0 U59 ( .I0(part_rem_0[5]), .I1(temp_part_rem_0__6_), .S(n19), .Z(
        pr_1__7_) );
  mx02d0 U60 ( .I0(pr_2__2_), .I1(temp_part_rem_2__2_), .S(n46), .Z(pr_3__3_)
         );
  mx02d0 U61 ( .I0(pr_2__3_), .I1(temp_part_rem_2__3_), .S(n46), .Z(pr_3__4_)
         );
  mx02d0 U62 ( .I0(pr_2__4_), .I1(temp_part_rem_2__4_), .S(n46), .Z(pr_3__5_)
         );
  mx02d0 U63 ( .I0(pr_2__6_), .I1(temp_part_rem_2__6_), .S(n46), .Z(pr_3__7_)
         );
  mx02d0 U64 ( .I0(temp_part_rem_3__7_), .I1(pr_3__7_), .S(n63), .Z(pr_4__8_)
         );
  buffd1 U65 ( .I(n105), .Z(n27) );
  inv0d7 U66 ( .I(b_in[0]), .ZN(n105) );
  mx02d0 U67 ( .I0(pr_1__4_), .I1(temp_part_rem_1__4_), .S(n47), .Z(pr_2__5_)
         );
  mx02d0 U68 ( .I0(pr_1__5_), .I1(temp_part_rem_1__5_), .S(n47), .Z(pr_2__6_)
         );
  mx02d0 U69 ( .I0(pr_1__6_), .I1(temp_part_rem_1__6_), .S(n47), .Z(pr_2__7_)
         );
  mx02d0 U70 ( .I0(pr_1__7_), .I1(temp_part_rem_1__7_), .S(n47), .Z(pr_2__8_)
         );
  mx02d0 U71 ( .I0(pr_1__2_), .I1(temp_part_rem_1__2_), .S(n47), .Z(pr_2__3_)
         );
  mx02d0 U72 ( .I0(pr_1__3_), .I1(temp_part_rem_1__3_), .S(n47), .Z(pr_2__4_)
         );
  mx02d0 U73 ( .I0(pr_2__7_), .I1(temp_part_rem_2__7_), .S(n46), .Z(pr_3__8_)
         );
  an02d1 U74 ( .A1(a_in_temp0[1]), .A2(n38), .Z(n28) );
  mx02d0 U75 ( .I0(part_rem_0[6]), .I1(temp_part_rem_0__7_), .S(n19), .Z(
        pr_1__8_) );
  nd12d2 U76 ( .A1(n28), .A2(n39), .ZN(pr_2__1_) );
  mx02d0 U77 ( .I0(temp_part_rem_6__7_), .I1(pr_6__7_), .S(n34), .Z(pr_7__8_)
         );
  mi02d1 U78 ( .I0(n36), .I1(n29), .S(n35), .ZN(pr_7__2_) );
  mi02d0 U79 ( .I0(a_in_temp0[5]), .I1(temp_part_rem_5__0_), .S(temp_q_rev[2]), 
        .ZN(n36) );
  inv0d1 U80 ( .I(temp_q_rev[3]), .ZN(n30) );
  inv0d2 U81 ( .I(n30), .ZN(n31) );
  buffd1 U82 ( .I(n104), .Z(n33) );
  mx02d0 U83 ( .I0(a_in_temp0[3]), .I1(temp_part_rem_3__0_), .S(temp_q_rev[4]), 
        .Z(n37) );
  mx02d0 U84 ( .I0(part_rem_0[3]), .I1(temp_part_rem_0__4_), .S(temp_q_rev[7]), 
        .Z(pr_1__5_) );
  mx02d0 U85 ( .I0(pr_4__6_), .I1(temp_part_rem_4__6_), .S(n31), .Z(pr_5__7_)
         );
  mx02d0 U86 ( .I0(pr_4__5_), .I1(temp_part_rem_4__5_), .S(n31), .Z(pr_5__6_)
         );
  mx02d0 U87 ( .I0(pr_4__2_), .I1(temp_part_rem_4__2_), .S(n31), .Z(pr_5__3_)
         );
  mx02d0 U88 ( .I0(pr_6__6_), .I1(temp_part_rem_6__6_), .S(n35), .Z(pr_7__7_)
         );
  mx02d0 U89 ( .I0(pr_6__5_), .I1(temp_part_rem_6__5_), .S(n35), .Z(pr_7__6_)
         );
  mx02d0 U90 ( .I0(pr_6__4_), .I1(temp_part_rem_6__4_), .S(n35), .Z(pr_7__5_)
         );
  mx02d0 U91 ( .I0(pr_6__3_), .I1(temp_part_rem_6__3_), .S(n35), .Z(pr_7__4_)
         );
  mx02d0 U92 ( .I0(pr_6__2_), .I1(temp_part_rem_6__2_), .S(n35), .Z(pr_7__3_)
         );
  mx02d1 U93 ( .I0(a_in_temp0[5]), .I1(temp_part_rem_5__0_), .S(temp_q_rev[2]), 
        .Z(pr_6__1_) );
  an02d2 U94 ( .A1(n60), .A2(n54), .Z(n40) );
  an02d2 U95 ( .A1(n60), .A2(n54), .Z(n126) );
  mx02d0 U96 ( .I0(pr_2__5_), .I1(temp_part_rem_2__5_), .S(n46), .Z(pr_3__6_)
         );
  mx02d1 U97 ( .I0(a_in_temp0[4]), .I1(temp_part_rem_4__0_), .S(temp_q_rev[3]), 
        .Z(pr_5__1_) );
  mx02d0 U98 ( .I0(pr_3__6_), .I1(temp_part_rem_3__6_), .S(temp_q_rev[4]), .Z(
        pr_4__7_) );
  mx02d0 U99 ( .I0(pr_3__5_), .I1(temp_part_rem_3__5_), .S(temp_q_rev[4]), .Z(
        pr_4__6_) );
  mx02d0 U100 ( .I0(pr_3__4_), .I1(temp_part_rem_3__4_), .S(temp_q_rev[4]), 
        .Z(pr_4__5_) );
  mx02d0 U101 ( .I0(pr_3__3_), .I1(temp_part_rem_3__3_), .S(temp_q_rev[4]), 
        .Z(pr_4__4_) );
  mx02d0 U102 ( .I0(pr_3__2_), .I1(temp_part_rem_3__2_), .S(temp_q_rev[4]), 
        .Z(pr_4__3_) );
  mx02d0 U103 ( .I0(n24), .I1(temp_part_rem_3__1_), .S(temp_q_rev[4]), .Z(
        pr_4__2_) );
  mx02d1 U104 ( .I0(a_in_temp0[3]), .I1(temp_part_rem_3__0_), .S(temp_q_rev[4]), .Z(pr_4__1_) );
  mx02d0 U105 ( .I0(pr_5__2_), .I1(temp_part_rem_5__2_), .S(temp_q_rev[2]), 
        .Z(pr_6__3_) );
  inv0d4 U106 ( .I(b_in[3]), .ZN(n102) );
  mx02d0 U107 ( .I0(pr_5__4_), .I1(temp_part_rem_5__4_), .S(temp_q_rev[2]), 
        .Z(pr_6__5_) );
  inv0d2 U108 ( .I(final_remainder[0]), .ZN(n97) );
  mx02d0 U109 ( .I0(n14), .I1(temp_part_rem_0__1_), .S(temp_q_rev[7]), .Z(
        pr_1__2_) );
  mx02d0 U110 ( .I0(n16), .I1(temp_part_rem_5__1_), .S(temp_q_rev[2]), .Z(
        pr_6__2_) );
  mx02d0 U111 ( .I0(n13), .I1(temp_part_rem_1__1_), .S(n47), .Z(pr_2__2_) );
  bufbd7 U112 ( .I(temp_q_rev[6]), .Z(n47) );
  an02d4 U113 ( .A1(temp_q_rev[0]), .A2(n54), .Z(n127) );
  inv0d1 U114 ( .I(final_remainder[2]), .ZN(n95) );
  inv0d1 U115 ( .I(final_remainder[3]), .ZN(n94) );
  inv0d1 U116 ( .I(final_remainder[4]), .ZN(n93) );
  inv0d4 U117 ( .I(b_in[7]), .ZN(n98) );
  buffd1 U118 ( .I(rst_n), .Z(n41) );
  buffd1 U119 ( .I(rst_n), .Z(n43) );
  buffd1 U120 ( .I(rst_n), .Z(n42) );
  buffd1 U121 ( .I(rst_n), .Z(n44) );
  buffd1 U122 ( .I(rst_n), .Z(n45) );
  inv0d0 U123 ( .I(n31), .ZN(n62) );
  inv0d0 U124 ( .I(temp_q_rev[4]), .ZN(n63) );
  inv0d0 U125 ( .I(temp_q_rev[2]), .ZN(n61) );
  inv0d1 U126 ( .I(n106), .ZN(n64) );
  inv0d0 U127 ( .I(n55), .ZN(n58) );
  buffd1 U128 ( .I(n49), .Z(n51) );
  buffd1 U129 ( .I(n49), .Z(n53) );
  buffd1 U130 ( .I(n49), .Z(n52) );
  buffd1 U131 ( .I(n50), .Z(n54) );
  buffd1 U132 ( .I(hold_n), .Z(n50) );
  buffd1 U133 ( .I(hold_n), .Z(n49) );
  inv0d0 U134 ( .I(final_remainder[5]), .ZN(n92) );
  inv0d0 U135 ( .I(final_remainder[6]), .ZN(n91) );
  inv0d1 U136 ( .I(final_remainder[7]), .ZN(n90) );
  nr02d1 U137 ( .A1(start_q), .A2(n17), .ZN(nx_state) );
  inv0d0 U138 ( .I(final_quotient[0]), .ZN(n65) );
  inv0d0 U139 ( .I(final_quotient[1]), .ZN(n68) );
  inv0d0 U140 ( .I(final_quotient[2]), .ZN(n71) );
  inv0d0 U141 ( .I(final_quotient[3]), .ZN(n74) );
  inv0d0 U142 ( .I(final_quotient[4]), .ZN(n77) );
  inv0d0 U143 ( .I(final_quotient[5]), .ZN(n80) );
  inv0d0 U144 ( .I(final_quotient[6]), .ZN(n83) );
  inv0d0 U145 ( .I(final_quotient[7]), .ZN(n86) );
  inv0d0 U146 ( .I(final_quotient[8]), .ZN(n66) );
  inv0d0 U147 ( .I(final_quotient[13]), .ZN(n81) );
  inv0d0 U148 ( .I(final_quotient[9]), .ZN(n69) );
  inv0d0 U149 ( .I(final_quotient[11]), .ZN(n75) );
  inv0d0 U150 ( .I(final_quotient[10]), .ZN(n72) );
  inv0d0 U151 ( .I(final_quotient[12]), .ZN(n78) );
  inv0d0 U152 ( .I(final_quotient[14]), .ZN(n84) );
  inv0d0 U153 ( .I(a_in_temp0[1]), .ZN(n85) );
  inv0d0 U154 ( .I(a_in_temp0[2]), .ZN(n82) );
  inv0d0 U155 ( .I(a_in_temp0[3]), .ZN(n79) );
  inv0d0 U156 ( .I(a_in_temp0[4]), .ZN(n76) );
  inv0d0 U157 ( .I(a_in_temp0[5]), .ZN(n73) );
  inv0d0 U158 ( .I(a_in_temp0[6]), .ZN(n70) );
  inv0d0 U159 ( .I(a_in_temp0[7]), .ZN(n67) );
  inv0d1 U160 ( .I(start), .ZN(U_COUNT_load_n) );
  inv0d0 U161 ( .I(a_in_temp0[0]), .ZN(n88) );
  inv0d0 U162 ( .I(first_cyc), .ZN(n89) );
  inv0d0 U163 ( .I(U_COUNT_count[1]), .ZN(n59) );
  inv0d0 U164 ( .I(final_quotient[15]), .ZN(n87) );
  an02d0 U165 ( .A1(U_COUNT_load_n), .A2(U_COUNT_count_inc[2]), .Z(
        U_COUNT_next_count_2_) );
  an02d0 U166 ( .A1(U_COUNT_load_n), .A2(U_COUNT_count_inc[0]), .Z(
        U_COUNT_tercnt_cmp_bus_0_) );
  nd02d0 U167 ( .A1(U_COUNT_load_n), .A2(U_COUNT_count_inc[1]), .ZN(n55) );
  nr13d1 U168 ( .A1(U_COUNT_count_inc[0]), .A2(U_COUNT_count_inc[2]), .A3(n55), 
        .ZN(U_COUNT_tercnt_d) );
  xr02d1 U169 ( .A1(U_COUNT_count[2]), .A2(n56), .Z(U_COUNT_count_inc[2]) );
  nr02d0 U170 ( .A1(n57), .A2(n59), .ZN(n56) );
  xr02d1 U171 ( .A1(n59), .A2(n57), .Z(U_COUNT_count_inc[1]) );
  nd02d0 U172 ( .A1(n54), .A2(U_COUNT_count[0]), .ZN(n57) );
  xr02d1 U173 ( .A1(n51), .A2(U_COUNT_count[0]), .Z(U_COUNT_count_inc[0]) );
  nr02d0 U174 ( .A1(nx_state), .A2(n69), .ZN(quotient[9]) );
  nr02d0 U175 ( .A1(nx_state), .A2(n66), .ZN(quotient[8]) );
  nr02d0 U176 ( .A1(nx_state), .A2(n86), .ZN(quotient[7]) );
  nr02d0 U177 ( .A1(nx_state), .A2(n83), .ZN(quotient[6]) );
  nr02d0 U178 ( .A1(nx_state), .A2(n80), .ZN(quotient[5]) );
  nr02d0 U179 ( .A1(nx_state), .A2(n77), .ZN(quotient[4]) );
  nr02d0 U180 ( .A1(nx_state), .A2(n74), .ZN(quotient[3]) );
  nr02d0 U181 ( .A1(nx_state), .A2(n71), .ZN(quotient[2]) );
  nr02d0 U182 ( .A1(nx_state), .A2(n68), .ZN(quotient[1]) );
  nr02d0 U183 ( .A1(nx_state), .A2(n84), .ZN(quotient[14]) );
  nr02d0 U184 ( .A1(nx_state), .A2(n81), .ZN(quotient[13]) );
  nr02d0 U185 ( .A1(nx_state), .A2(n78), .ZN(quotient[12]) );
  nr02d0 U186 ( .A1(nx_state), .A2(n75), .ZN(quotient[11]) );
  nr02d0 U187 ( .A1(nx_state), .A2(n72), .ZN(quotient[10]) );
  nr02d0 U188 ( .A1(nx_state), .A2(n65), .ZN(quotient[0]) );
  mx02d1 U189 ( .I0(temp_part_rem_5__7_), .I1(pr_5__7_), .S(n61), .Z(pr_6__8_)
         );
  mx02d1 U190 ( .I0(pr_5__6_), .I1(temp_part_rem_5__6_), .S(temp_q_rev[2]), 
        .Z(pr_6__7_) );
  mx02d1 U191 ( .I0(part_rem_0[1]), .I1(temp_part_rem_0__2_), .S(temp_q_rev[7]), .Z(pr_1__3_) );
  nr02d0 U192 ( .A1(first_cyc), .A2(n90), .ZN(part_rem_0[7]) );
  oai21d1 U193 ( .B1(n53), .B2(n66), .A(n107), .ZN(N55) );
  aoi22d1 U194 ( .A1(a[8]), .A2(start), .B1(n64), .B2(final_quotient[0]), .ZN(
        n107) );
  oai21d1 U195 ( .B1(n53), .B2(n67), .A(n108), .ZN(N54) );
  aoi22d1 U196 ( .A1(a[16]), .A2(start), .B1(n64), .B2(final_quotient[8]), 
        .ZN(n108) );
  oai22d1 U197 ( .A1(n54), .A2(n68), .B1(n34), .B2(n106), .ZN(N53) );
  oai21d1 U198 ( .B1(n53), .B2(n69), .A(n109), .ZN(N52) );
  aoi22d1 U199 ( .A1(a[9]), .A2(start), .B1(n64), .B2(final_quotient[1]), .ZN(
        n109) );
  oai21d1 U200 ( .B1(n53), .B2(n70), .A(n110), .ZN(N51) );
  aoi22d1 U201 ( .A1(a[17]), .A2(start), .B1(n64), .B2(final_quotient[9]), 
        .ZN(n110) );
  oai22d1 U202 ( .A1(n54), .A2(n71), .B1(n61), .B2(n106), .ZN(N50) );
  oai21d1 U203 ( .B1(n53), .B2(n72), .A(n111), .ZN(N49) );
  aoi22d1 U204 ( .A1(a[10]), .A2(start), .B1(n64), .B2(final_quotient[2]), 
        .ZN(n111) );
  oai21d1 U205 ( .B1(n53), .B2(n73), .A(n112), .ZN(N48) );
  aoi22d1 U206 ( .A1(a[18]), .A2(start), .B1(n64), .B2(final_quotient[10]), 
        .ZN(n112) );
  oai22d1 U207 ( .A1(n53), .A2(n74), .B1(n62), .B2(n106), .ZN(N47) );
  oai21d1 U208 ( .B1(n53), .B2(n75), .A(n113), .ZN(N46) );
  aoi22d1 U209 ( .A1(a[11]), .A2(start), .B1(n64), .B2(final_quotient[3]), 
        .ZN(n113) );
  oai21d1 U210 ( .B1(n53), .B2(n76), .A(n114), .ZN(N45) );
  aoi22d1 U211 ( .A1(a[19]), .A2(start), .B1(n64), .B2(final_quotient[11]), 
        .ZN(n114) );
  oai22d1 U212 ( .A1(n53), .A2(n77), .B1(n63), .B2(n106), .ZN(N44) );
  oai21d1 U213 ( .B1(n52), .B2(n78), .A(n115), .ZN(N43) );
  aoi22d1 U214 ( .A1(a[12]), .A2(start), .B1(n64), .B2(final_quotient[4]), 
        .ZN(n115) );
  oai21d1 U215 ( .B1(n52), .B2(n79), .A(n116), .ZN(N42) );
  aoi22d1 U216 ( .A1(a[20]), .A2(start), .B1(n64), .B2(final_quotient[12]), 
        .ZN(n116) );
  oai21d1 U217 ( .B1(n52), .B2(n80), .A(n117), .ZN(N41) );
  aoi22d1 U218 ( .A1(a[5]), .A2(start), .B1(n64), .B2(n46), .ZN(n117) );
  oai21d1 U219 ( .B1(n52), .B2(n81), .A(n118), .ZN(N40) );
  aoi22d1 U220 ( .A1(a[13]), .A2(start), .B1(n64), .B2(final_quotient[5]), 
        .ZN(n118) );
  oai21d1 U221 ( .B1(n52), .B2(n82), .A(n119), .ZN(N39) );
  aoi22d1 U222 ( .A1(a[21]), .A2(start), .B1(n64), .B2(final_quotient[13]), 
        .ZN(n119) );
  oai21d1 U223 ( .B1(n52), .B2(n83), .A(n120), .ZN(N38) );
  aoi22d1 U224 ( .A1(a[6]), .A2(start), .B1(n64), .B2(n20), .ZN(n120) );
  oai21d1 U225 ( .B1(n52), .B2(n84), .A(n121), .ZN(N37) );
  aoi22d1 U226 ( .A1(a[14]), .A2(start), .B1(n64), .B2(final_quotient[6]), 
        .ZN(n121) );
  oai21d1 U227 ( .B1(n52), .B2(n85), .A(n122), .ZN(N36) );
  aoi22d1 U228 ( .A1(a[22]), .A2(start), .B1(n64), .B2(final_quotient[14]), 
        .ZN(n122) );
  oai21d1 U229 ( .B1(n52), .B2(n86), .A(n123), .ZN(N35) );
  aoi22d1 U230 ( .A1(a[7]), .A2(start), .B1(n64), .B2(n48), .ZN(n123) );
  oai21d1 U231 ( .B1(n51), .B2(n87), .A(n124), .ZN(N34) );
  aoi22d1 U232 ( .A1(a[15]), .A2(start), .B1(n64), .B2(final_quotient[7]), 
        .ZN(n124) );
  oai22d1 U233 ( .A1(n54), .A2(n88), .B1(n106), .B2(n87), .ZN(N33) );
  nd02d0 U234 ( .A1(n54), .A2(U_COUNT_load_n), .ZN(n106) );
  aoi22d1 U235 ( .A1(n40), .A2(pr_7__7_), .B1(n127), .B2(temp_part_rem_7__7_), 
        .ZN(n125) );
  mx02d1 U236 ( .I0(pr_5__5_), .I1(temp_part_rem_5__5_), .S(temp_q_rev[2]), 
        .Z(pr_6__6_) );
  aoi22d1 U237 ( .A1(n40), .A2(pr_7__6_), .B1(n127), .B2(temp_part_rem_7__6_), 
        .ZN(n128) );
  aoi22d1 U238 ( .A1(n40), .A2(pr_7__5_), .B1(n127), .B2(temp_part_rem_7__5_), 
        .ZN(n129) );
  mx02d1 U239 ( .I0(pr_5__3_), .I1(temp_part_rem_5__3_), .S(temp_q_rev[2]), 
        .Z(pr_6__4_) );
  aoi22d1 U240 ( .A1(n126), .A2(pr_7__4_), .B1(n127), .B2(temp_part_rem_7__4_), 
        .ZN(n130) );
  aoi22d1 U241 ( .A1(n126), .A2(pr_7__3_), .B1(n127), .B2(temp_part_rem_7__3_), 
        .ZN(n131) );
  aoi22d1 U242 ( .A1(n126), .A2(pr_7__2_), .B1(n127), .B2(temp_part_rem_7__2_), 
        .ZN(n132) );
  aoi22d1 U243 ( .A1(n126), .A2(n15), .B1(n127), .B2(temp_part_rem_7__1_), 
        .ZN(n133) );
  aoi22d1 U244 ( .A1(n40), .A2(a_in_temp0[7]), .B1(n127), .B2(
        temp_part_rem_7__0_), .ZN(n134) );
  oai21d1 U245 ( .B1(n52), .B2(n89), .A(U_COUNT_load_n), .ZN(N24) );
  nd12d0 U246 ( .A1(load_tc), .A2(U_COUNT_load_n), .ZN(hold_n) );
endmodule


module mean_calc_0_DW01_inc_0_DW01_inc_7 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ah01d1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ah01d1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ah01d1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ah01d1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ah01d1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ah01d1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  inv0d0 U1 ( .I(A[0]), .ZN(SUM[0]) );
  xr02d1 U2 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
endmodule


module mean_calc_0_DW01_add_8_DW01_add_51 ( A, B, CI, SUM, CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [17:2] carry;

  ad01d0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ad01d0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ad01d0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ad01d0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ad01d0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ad01d0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ad01d0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  an02d1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  nd02d1 U2 ( .A1(n8), .A2(A[24]), .ZN(n9) );
  xn02d1 U3 ( .A1(A[25]), .A2(n9), .ZN(SUM[25]) );
  an02d1 U4 ( .A1(carry[17]), .A2(A[17]), .Z(n2) );
  an02d1 U5 ( .A1(n2), .A2(A[18]), .Z(n3) );
  an02d1 U6 ( .A1(n3), .A2(A[19]), .Z(n4) );
  an02d1 U7 ( .A1(n4), .A2(A[20]), .Z(n5) );
  an02d1 U8 ( .A1(n5), .A2(A[21]), .Z(n6) );
  an02d1 U9 ( .A1(n6), .A2(A[22]), .Z(n7) );
  an02d1 U10 ( .A1(n7), .A2(A[23]), .Z(n8) );
  xr02d1 U11 ( .A1(A[24]), .A2(n8), .Z(SUM[24]) );
  xr02d1 U12 ( .A1(A[23]), .A2(n7), .Z(SUM[23]) );
  xr02d1 U13 ( .A1(A[22]), .A2(n6), .Z(SUM[22]) );
  xr02d1 U14 ( .A1(A[21]), .A2(n5), .Z(SUM[21]) );
  xr02d1 U15 ( .A1(A[20]), .A2(n4), .Z(SUM[20]) );
  xr02d1 U16 ( .A1(A[19]), .A2(n3), .Z(SUM[19]) );
  xr02d1 U17 ( .A1(A[18]), .A2(n2), .Z(SUM[18]) );
  xr02d1 U18 ( .A1(A[17]), .A2(carry[17]), .Z(SUM[17]) );
  xr02d1 U19 ( .A1(A[0]), .A2(B[0]), .Z(SUM[0]) );
endmodule


module mean_calc_0 ( clk, reset_n, start, eeg, start_div, complete_div, mean, 
        count );
  input [17:0] eeg;
  output [17:0] mean;
  output [7:0] count;
  input clk, reset_n, start, start_div;
  output complete_div;
  wire   start_div_d, n_1_net__7_, n_1_net__6_, n_1_net__5_, n_1_net__4_,
         n_1_net__3_, n_1_net__2_, n_1_net__1_, n_1_net__0_, N5, N6, N7, N8,
         N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22,
         N23, N24, N25, N26, N27, N28, N29, N30, N34, N35, N36, N37, N38, N39,
         N40, N41, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n1, n2, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16;
  wire   [22:0] a;
  wire   [24:0] sum;
  assign mean[0] = 1'b0;
  assign mean[1] = 1'b0;

  aor22d1 U3 ( .A1(count[7]), .A2(n69), .B1(n65), .B2(N41), .Z(n3) );
  aor22d1 U4 ( .A1(count[6]), .A2(n66), .B1(N40), .B2(n65), .Z(n4) );
  aor22d1 U5 ( .A1(count[5]), .A2(n66), .B1(N39), .B2(n65), .Z(n5) );
  aor22d1 U6 ( .A1(count[4]), .A2(n67), .B1(N38), .B2(n65), .Z(n6) );
  aor22d1 U7 ( .A1(count[3]), .A2(n67), .B1(N37), .B2(n65), .Z(n7) );
  aor22d1 U8 ( .A1(count[2]), .A2(n67), .B1(N36), .B2(n65), .Z(n8) );
  aor22d1 U9 ( .A1(count[1]), .A2(n68), .B1(N35), .B2(n65), .Z(n9) );
  aor22d1 U10 ( .A1(count[0]), .A2(n68), .B1(N34), .B2(n64), .Z(n10) );
  aor22d1 U11 ( .A1(mean[17]), .A2(n68), .B1(N30), .B2(n64), .Z(n11) );
  aor22d1 U12 ( .A1(n61), .A2(sum[24]), .B1(a[22]), .B2(n58), .Z(n12) );
  aor22d1 U13 ( .A1(n70), .A2(sum[24]), .B1(N29), .B2(n64), .Z(n13) );
  aor22d1 U14 ( .A1(n61), .A2(sum[23]), .B1(a[21]), .B2(n58), .Z(n14) );
  aor22d1 U15 ( .A1(n70), .A2(sum[23]), .B1(N28), .B2(n64), .Z(n15) );
  aor22d1 U16 ( .A1(n61), .A2(sum[22]), .B1(a[20]), .B2(n58), .Z(n16) );
  aor22d1 U17 ( .A1(n70), .A2(sum[22]), .B1(N27), .B2(n64), .Z(n17) );
  aor22d1 U18 ( .A1(n61), .A2(sum[21]), .B1(a[19]), .B2(n58), .Z(n18) );
  aor22d1 U19 ( .A1(n70), .A2(sum[21]), .B1(N26), .B2(n64), .Z(n19) );
  aor22d1 U20 ( .A1(n61), .A2(sum[20]), .B1(a[18]), .B2(n58), .Z(n20) );
  aor22d1 U21 ( .A1(n70), .A2(sum[20]), .B1(N25), .B2(n64), .Z(n21) );
  aor22d1 U22 ( .A1(n61), .A2(sum[19]), .B1(a[17]), .B2(n58), .Z(n22) );
  aor22d1 U23 ( .A1(n1), .A2(sum[19]), .B1(N24), .B2(n64), .Z(n23) );
  aor22d1 U24 ( .A1(n61), .A2(sum[18]), .B1(a[16]), .B2(n58), .Z(n24) );
  aor22d1 U25 ( .A1(n1), .A2(sum[18]), .B1(N23), .B2(n64), .Z(n25) );
  aor22d1 U26 ( .A1(n61), .A2(sum[17]), .B1(a[15]), .B2(n58), .Z(n26) );
  aor22d1 U27 ( .A1(n70), .A2(sum[17]), .B1(N22), .B2(n63), .Z(n27) );
  aor22d1 U28 ( .A1(n61), .A2(sum[16]), .B1(a[14]), .B2(n58), .Z(n28) );
  aor22d1 U29 ( .A1(n1), .A2(sum[16]), .B1(N21), .B2(n63), .Z(n29) );
  aor22d1 U30 ( .A1(n60), .A2(sum[15]), .B1(a[13]), .B2(n57), .Z(n30) );
  aor22d1 U31 ( .A1(n1), .A2(sum[15]), .B1(N20), .B2(n63), .Z(n31) );
  aor22d1 U32 ( .A1(n60), .A2(sum[14]), .B1(a[12]), .B2(n57), .Z(n32) );
  aor22d1 U33 ( .A1(n1), .A2(sum[14]), .B1(N19), .B2(n63), .Z(n33) );
  aor22d1 U34 ( .A1(n60), .A2(sum[13]), .B1(a[11]), .B2(n57), .Z(n34) );
  aor22d1 U35 ( .A1(n70), .A2(sum[13]), .B1(N18), .B2(n63), .Z(n35) );
  aor22d1 U36 ( .A1(n60), .A2(sum[12]), .B1(a[10]), .B2(n57), .Z(n36) );
  aor22d1 U37 ( .A1(n1), .A2(sum[12]), .B1(N17), .B2(n63), .Z(n37) );
  aor22d1 U38 ( .A1(n59), .A2(sum[11]), .B1(a[9]), .B2(n57), .Z(n38) );
  aor22d1 U39 ( .A1(n1), .A2(sum[11]), .B1(N16), .B2(n63), .Z(n39) );
  aor22d1 U40 ( .A1(n59), .A2(sum[10]), .B1(a[8]), .B2(n57), .Z(n40) );
  aor22d1 U41 ( .A1(n1), .A2(sum[10]), .B1(N15), .B2(n63), .Z(n41) );
  aor22d1 U42 ( .A1(n59), .A2(sum[9]), .B1(a[7]), .B2(n57), .Z(n42) );
  aor22d1 U43 ( .A1(n70), .A2(sum[9]), .B1(N14), .B2(n63), .Z(n43) );
  aor22d1 U44 ( .A1(n59), .A2(sum[8]), .B1(a[6]), .B2(n57), .Z(n44) );
  aor22d1 U45 ( .A1(n70), .A2(sum[8]), .B1(N13), .B2(n62), .Z(n45) );
  aor22d1 U46 ( .A1(n61), .A2(sum[7]), .B1(a[5]), .B2(n57), .Z(n46) );
  aor22d1 U48 ( .A1(n70), .A2(sum[7]), .B1(N12), .B2(n62), .Z(n47) );
  aor22d1 U49 ( .A1(sum[6]), .A2(n1), .B1(N11), .B2(n62), .Z(n48) );
  aor22d1 U50 ( .A1(sum[5]), .A2(n69), .B1(N10), .B2(n62), .Z(n49) );
  aor22d1 U51 ( .A1(sum[4]), .A2(n1), .B1(N9), .B2(n62), .Z(n50) );
  aor22d1 U52 ( .A1(sum[3]), .A2(n1), .B1(N8), .B2(n62), .Z(n51) );
  aor22d1 U53 ( .A1(sum[2]), .A2(n1), .B1(N7), .B2(n62), .Z(n52) );
  aor22d1 U54 ( .A1(sum[1]), .A2(n69), .B1(N6), .B2(n62), .Z(n53) );
  aor22d1 U55 ( .A1(sum[0]), .A2(n66), .B1(N5), .B2(n62), .Z(n54) );
  mean_calc_0_DW_div_seq_0_DW_div_seq_3 DW_div_seq_full ( .clk(clk), .rst_n(n2), .hold(1'b0), .start(start_div_d), .a({a[22:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .b({n_1_net__7_, n_1_net__6_, n_1_net__5_, n_1_net__4_, n_1_net__3_, 
        n_1_net__2_, n_1_net__1_, n_1_net__0_}), .complete(complete_div), 
        .quotient({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        mean[16:2]}), .remainder({SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16}) );
  mean_calc_0_DW01_inc_0_DW01_inc_7 add_71_S2 ( .A(count), .SUM({N41, N40, N39, 
        N38, N37, N36, N35, N34}) );
  mean_calc_0_DW01_add_8_DW01_add_51 add_65_S2 ( .A({mean[17], sum}), .B({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, eeg[16:0]}), .CI(1'b0), 
        .SUM({N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5}) );
  dfcrq1 a_reg_5_ ( .D(n46), .CP(clk), .CDN(n2), .Q(a[5]) );
  dfcrq1 a_reg_6_ ( .D(n44), .CP(clk), .CDN(n2), .Q(a[6]) );
  dfcrq1 a_reg_7_ ( .D(n42), .CP(clk), .CDN(n2), .Q(a[7]) );
  dfcrq1 a_reg_8_ ( .D(n40), .CP(clk), .CDN(n2), .Q(a[8]) );
  dfcrq1 a_reg_9_ ( .D(n38), .CP(clk), .CDN(n2), .Q(a[9]) );
  dfcrq1 a_reg_10_ ( .D(n36), .CP(clk), .CDN(n2), .Q(a[10]) );
  dfcrq1 a_reg_11_ ( .D(n34), .CP(clk), .CDN(n2), .Q(a[11]) );
  dfcrq1 a_reg_12_ ( .D(n32), .CP(clk), .CDN(n2), .Q(a[12]) );
  dfcrq1 a_reg_13_ ( .D(n30), .CP(clk), .CDN(n2), .Q(a[13]) );
  dfcrq1 a_reg_14_ ( .D(n28), .CP(clk), .CDN(n2), .Q(a[14]) );
  dfcrq1 a_reg_15_ ( .D(n26), .CP(clk), .CDN(n2), .Q(a[15]) );
  dfcrq1 a_reg_16_ ( .D(n24), .CP(clk), .CDN(n2), .Q(a[16]) );
  dfcrq1 a_reg_17_ ( .D(n22), .CP(clk), .CDN(n2), .Q(a[17]) );
  dfcrq1 a_reg_18_ ( .D(n20), .CP(clk), .CDN(n2), .Q(a[18]) );
  dfcrq1 a_reg_19_ ( .D(n18), .CP(clk), .CDN(n2), .Q(a[19]) );
  dfcrq1 a_reg_20_ ( .D(n16), .CP(clk), .CDN(n2), .Q(a[20]) );
  dfcrq1 a_reg_21_ ( .D(n14), .CP(clk), .CDN(n56), .Q(a[21]) );
  dfcrq1 a_reg_22_ ( .D(n12), .CP(clk), .CDN(n56), .Q(a[22]) );
  dfcrq1 sum_reg_25_ ( .D(n11), .CP(clk), .CDN(n56), .Q(mean[17]) );
  dfcrq1 sum_reg_24_ ( .D(n13), .CP(clk), .CDN(n56), .Q(sum[24]) );
  dfcrq1 sum_reg_23_ ( .D(n15), .CP(clk), .CDN(n2), .Q(sum[23]) );
  dfcrq1 total_count_reg_7_ ( .D(n3), .CP(clk), .CDN(n2), .Q(count[7]) );
  dfcrq1 sum_reg_22_ ( .D(n17), .CP(clk), .CDN(n2), .Q(sum[22]) );
  dfcrq1 sum_reg_21_ ( .D(n19), .CP(clk), .CDN(n2), .Q(sum[21]) );
  dfcrq1 sum_reg_20_ ( .D(n21), .CP(clk), .CDN(n2), .Q(sum[20]) );
  dfcrq1 total_count_reg_6_ ( .D(n4), .CP(clk), .CDN(n56), .Q(count[6]) );
  dfcrq1 sum_reg_19_ ( .D(n23), .CP(clk), .CDN(n2), .Q(sum[19]) );
  dfcrq1 sum_reg_18_ ( .D(n25), .CP(clk), .CDN(n2), .Q(sum[18]) );
  dfcrq1 total_count_reg_5_ ( .D(n5), .CP(clk), .CDN(n56), .Q(count[5]) );
  dfcrq1 sum_reg_17_ ( .D(n27), .CP(clk), .CDN(n2), .Q(sum[17]) );
  dfcrq1 total_count_reg_4_ ( .D(n6), .CP(clk), .CDN(n56), .Q(count[4]) );
  dfcrq1 sum_reg_16_ ( .D(n29), .CP(clk), .CDN(n2), .Q(sum[16]) );
  dfcrq1 start_div_d_reg ( .D(n61), .CP(clk), .CDN(n2), .Q(start_div_d) );
  dfcrq1 total_count_reg_3_ ( .D(n7), .CP(clk), .CDN(n56), .Q(count[3]) );
  dfcrq1 sum_reg_15_ ( .D(n31), .CP(clk), .CDN(n2), .Q(sum[15]) );
  dfcrq1 total_count_reg_2_ ( .D(n8), .CP(clk), .CDN(n56), .Q(count[2]) );
  dfcrq1 sum_reg_14_ ( .D(n33), .CP(clk), .CDN(n2), .Q(sum[14]) );
  dfcrq1 total_count_reg_1_ ( .D(n9), .CP(clk), .CDN(n56), .Q(count[1]) );
  dfcrq1 sum_reg_13_ ( .D(n35), .CP(clk), .CDN(n2), .Q(sum[13]) );
  dfcrq1 total_count_reg_0_ ( .D(n10), .CP(clk), .CDN(n56), .Q(count[0]) );
  dfcrq1 sum_reg_12_ ( .D(n37), .CP(clk), .CDN(n2), .Q(sum[12]) );
  dfcrq1 sum_reg_11_ ( .D(n39), .CP(clk), .CDN(n2), .Q(sum[11]) );
  dfcrq1 sum_reg_10_ ( .D(n41), .CP(clk), .CDN(n2), .Q(sum[10]) );
  dfcrq1 sum_reg_9_ ( .D(n43), .CP(clk), .CDN(n2), .Q(sum[9]) );
  dfcrq1 sum_reg_8_ ( .D(n45), .CP(clk), .CDN(n2), .Q(sum[8]) );
  dfcrq1 sum_reg_7_ ( .D(n47), .CP(clk), .CDN(n2), .Q(sum[7]) );
  dfcrq1 sum_reg_6_ ( .D(n48), .CP(clk), .CDN(n2), .Q(sum[6]) );
  dfcrq1 sum_reg_5_ ( .D(n49), .CP(clk), .CDN(n2), .Q(sum[5]) );
  dfcrq1 sum_reg_4_ ( .D(n50), .CP(clk), .CDN(n2), .Q(sum[4]) );
  dfcrq1 sum_reg_3_ ( .D(n51), .CP(clk), .CDN(n2), .Q(sum[3]) );
  dfcrq1 sum_reg_2_ ( .D(n52), .CP(clk), .CDN(n56), .Q(sum[2]) );
  dfcrq1 sum_reg_1_ ( .D(n53), .CP(clk), .CDN(n2), .Q(sum[1]) );
  dfcrq1 sum_reg_0_ ( .D(n54), .CP(clk), .CDN(n56), .Q(sum[0]) );
  inv0d1 U47 ( .I(start), .ZN(n1) );
  inv0d0 U56 ( .I(n59), .ZN(n58) );
  inv0d0 U63 ( .I(n60), .ZN(n57) );
  bufbd4 U64 ( .I(reset_n), .Z(n2) );
  buffd1 U65 ( .I(reset_n), .Z(n56) );
  buffd1 U66 ( .I(start_div), .Z(n60) );
  buffd1 U67 ( .I(start_div), .Z(n59) );
  buffd1 U68 ( .I(start_div), .Z(n61) );
  inv0d0 U69 ( .I(n67), .ZN(n64) );
  inv0d0 U70 ( .I(n68), .ZN(n63) );
  inv0d0 U71 ( .I(n69), .ZN(n62) );
  inv0d0 U72 ( .I(n66), .ZN(n65) );
  inv0d0 U73 ( .I(n75), .ZN(n77) );
  buffd1 U74 ( .I(n1), .Z(n67) );
  buffd1 U75 ( .I(n1), .Z(n68) );
  buffd1 U76 ( .I(n1), .Z(n69) );
  buffd1 U77 ( .I(n1), .Z(n66) );
  buffd1 U78 ( .I(n1), .Z(n70) );
  inv0d0 U79 ( .I(count[0]), .ZN(n_1_net__0_) );
  nd12d0 U80 ( .A1(count[1]), .A2(n_1_net__0_), .ZN(n71) );
  oaim21d1 U81 ( .B1(count[0]), .B2(count[1]), .A(n71), .ZN(n_1_net__1_) );
  or02d0 U82 ( .A1(n71), .A2(count[2]), .Z(n72) );
  oaim21d1 U83 ( .B1(n71), .B2(count[2]), .A(n72), .ZN(n_1_net__2_) );
  or02d0 U84 ( .A1(n72), .A2(count[3]), .Z(n73) );
  oaim21d1 U85 ( .B1(n72), .B2(count[3]), .A(n73), .ZN(n_1_net__3_) );
  or02d0 U86 ( .A1(n73), .A2(count[4]), .Z(n74) );
  oaim21d1 U87 ( .B1(n73), .B2(count[4]), .A(n74), .ZN(n_1_net__4_) );
  nr02d0 U88 ( .A1(n74), .A2(count[5]), .ZN(n75) );
  oaim21d1 U89 ( .B1(n74), .B2(count[5]), .A(n77), .ZN(n_1_net__5_) );
  xr02d1 U90 ( .A1(count[6]), .A2(n75), .Z(n_1_net__6_) );
  nr02d0 U91 ( .A1(count[6]), .A2(n77), .ZN(n76) );
  xr02d1 U92 ( .A1(count[7]), .A2(n76), .Z(n_1_net__7_) );
endmodule


module mean_calc_1_DW01_add_0_DW01_add_34 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n23, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22;
  wire   [8:1] carry;

  ad01d1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(n5), .CO(carry[3]), .S(SUM[2]) );
  xr03d1 U1_5 ( .A1(A[5]), .A2(B[5]), .A3(carry[5]), .Z(SUM[5]) );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  buffd3 U1 ( .I(B[0]), .Z(n4) );
  invbd4 U2 ( .I(n23), .ZN(n1) );
  inv0da U3 ( .I(n1), .ZN(CO) );
  nd12d2 U4 ( .A1(carry[8]), .A2(n3), .ZN(n23) );
  invbdk U5 ( .I(A[8]), .ZN(n3) );
  nd02d1 U6 ( .A1(A[3]), .A2(B[3]), .ZN(n16) );
  invbd4 U7 ( .I(A[0]), .ZN(n12) );
  cg01d1 U8 ( .A(A[2]), .B(B[2]), .CI(n5), .CO(n11) );
  nd03d2 U9 ( .A1(n15), .A2(n14), .A3(n13), .ZN(n5) );
  cg01d1 U10 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]) );
  inv0d0 U11 ( .I(n10), .ZN(n6) );
  inv0d1 U12 ( .I(n6), .ZN(n7) );
  nd12d2 U13 ( .A1(B[0]), .A2(n12), .ZN(n8) );
  nd12d0 U14 ( .A1(n4), .A2(n12), .ZN(n9) );
  nd03d2 U15 ( .A1(n18), .A2(n17), .A3(n16), .ZN(n10) );
  nd12d2 U16 ( .A1(B[0]), .A2(n12), .ZN(carry[1]) );
  xr03d1 U17 ( .A1(A[1]), .A2(B[1]), .A3(n9), .Z(SUM[1]) );
  nd02d2 U18 ( .A1(n8), .A2(A[1]), .ZN(n13) );
  nd02d2 U19 ( .A1(carry[1]), .A2(B[1]), .ZN(n14) );
  nd02d2 U20 ( .A1(A[1]), .A2(B[1]), .ZN(n15) );
  xr03d1 U21 ( .A1(A[3]), .A2(B[3]), .A3(n11), .Z(SUM[3]) );
  nd02d2 U22 ( .A1(carry[3]), .A2(A[3]), .ZN(n17) );
  nd02d2 U23 ( .A1(B[3]), .A2(n11), .ZN(n18) );
  nd03d2 U24 ( .A1(n16), .A2(n18), .A3(n17), .ZN(carry[4]) );
  xr02d1 U25 ( .A1(A[4]), .A2(B[4]), .Z(n19) );
  xr02d1 U26 ( .A1(n19), .A2(n7), .Z(SUM[4]) );
  nd02d0 U27 ( .A1(A[4]), .A2(B[4]), .ZN(n20) );
  nd02d2 U28 ( .A1(n10), .A2(A[4]), .ZN(n21) );
  nd02d2 U29 ( .A1(B[4]), .A2(carry[4]), .ZN(n22) );
  nd03d2 U30 ( .A1(n20), .A2(n22), .A3(n21), .ZN(carry[5]) );
  xn02d1 U31 ( .A1(n4), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module mean_calc_1_DW01_add_1_DW01_add_35 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24;
  wire   [8:1] carry;

  ad01d1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  xn02d1 U1 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
  or02d1 U2 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  xr03d2 U3 ( .A1(A[6]), .A2(B[6]), .A3(carry[6]), .Z(SUM[6]) );
  nd02d4 U4 ( .A1(A[6]), .A2(B[6]), .ZN(n1) );
  nd02d2 U5 ( .A1(A[6]), .A2(carry[6]), .ZN(n2) );
  nd02d2 U6 ( .A1(B[6]), .A2(carry[6]), .ZN(n3) );
  nd03d2 U7 ( .A1(n1), .A2(n2), .A3(n3), .ZN(carry[7]) );
  xr02d1 U8 ( .A1(A[7]), .A2(B[7]), .Z(n4) );
  xr02d1 U9 ( .A1(n4), .A2(carry[7]), .Z(SUM[7]) );
  nd02d0 U10 ( .A1(A[7]), .A2(B[7]), .ZN(n5) );
  nd02d2 U11 ( .A1(A[7]), .A2(carry[7]), .ZN(n6) );
  nd02d2 U12 ( .A1(B[7]), .A2(carry[7]), .ZN(n7) );
  nd03d2 U13 ( .A1(n5), .A2(n6), .A3(n7), .ZN(carry[8]) );
  nd02d0 U14 ( .A1(carry[1]), .A2(B[1]), .ZN(n16) );
  inv0d1 U15 ( .I(A[1]), .ZN(n13) );
  aon211d1 U16 ( .C1(n10), .C2(n11), .B(n13), .A(n16), .ZN(n8) );
  nd12d2 U17 ( .A1(A[8]), .A2(n9), .ZN(CO) );
  invbd2 U18 ( .I(carry[8]), .ZN(n9) );
  aon211d1 U19 ( .C1(n10), .C2(n11), .B(n12), .A(n16), .ZN(carry[2]) );
  inv0d0 U20 ( .I(B[1]), .ZN(n10) );
  inv0d0 U21 ( .I(carry[1]), .ZN(n11) );
  invbd2 U22 ( .I(A[1]), .ZN(n12) );
  inv0d1 U23 ( .I(n13), .ZN(n14) );
  nd02d2 U24 ( .A1(carry[4]), .A2(A[4]), .ZN(n22) );
  nd02d2 U25 ( .A1(carry[4]), .A2(B[4]), .ZN(n23) );
  cg01d1 U26 ( .A(A[2]), .B(B[2]), .CI(n8), .CO(n15) );
  xr03d1 U27 ( .A1(carry[1]), .A2(B[1]), .A3(n14), .Z(SUM[1]) );
  xr02d1 U28 ( .A1(B[3]), .A2(A[3]), .Z(n17) );
  xr02d1 U29 ( .A1(n17), .A2(n15), .Z(SUM[3]) );
  nd02d2 U30 ( .A1(n15), .A2(A[3]), .ZN(n18) );
  nd02d2 U31 ( .A1(carry[3]), .A2(B[3]), .ZN(n19) );
  nd02d0 U32 ( .A1(A[3]), .A2(B[3]), .ZN(n20) );
  nd03d2 U33 ( .A1(n20), .A2(n18), .A3(n19), .ZN(carry[4]) );
  xr02d1 U34 ( .A1(B[4]), .A2(A[4]), .Z(n21) );
  xr02d1 U35 ( .A1(n21), .A2(carry[4]), .Z(SUM[4]) );
  nd02d0 U36 ( .A1(A[4]), .A2(B[4]), .ZN(n24) );
  nd03d2 U37 ( .A1(n24), .A2(n23), .A3(n22), .ZN(carry[5]) );
endmodule


module mean_calc_1_DW01_add_2_DW01_add_36 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [8:1] carry;

  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d1 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  xn02d1 U1 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
  xr03d1 U2 ( .A1(A[6]), .A2(B[6]), .A3(carry[6]), .Z(SUM[6]) );
  nd02d4 U3 ( .A1(A[6]), .A2(B[6]), .ZN(n1) );
  nd02d2 U4 ( .A1(A[6]), .A2(carry[6]), .ZN(n2) );
  nd02d2 U5 ( .A1(B[6]), .A2(carry[6]), .ZN(n3) );
  nd03d2 U6 ( .A1(n1), .A2(n2), .A3(n3), .ZN(carry[7]) );
  xr02d1 U7 ( .A1(A[7]), .A2(B[7]), .Z(n4) );
  xr02d1 U8 ( .A1(n4), .A2(carry[7]), .Z(SUM[7]) );
  nd02d0 U9 ( .A1(A[7]), .A2(B[7]), .ZN(n5) );
  nd02d2 U10 ( .A1(A[7]), .A2(carry[7]), .ZN(n6) );
  nd02d2 U11 ( .A1(B[7]), .A2(carry[7]), .ZN(n7) );
  nd03d2 U12 ( .A1(n5), .A2(n6), .A3(n7), .ZN(carry[8]) );
  nd12d2 U13 ( .A1(A[8]), .A2(n8), .ZN(CO) );
  invbd2 U14 ( .I(carry[8]), .ZN(n8) );
  or02d1 U15 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
endmodule


module mean_calc_1_DW01_add_3_DW01_add_37 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [8:1] carry;

  ad01d1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d1 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  nd12d2 U1 ( .A1(carry[8]), .A2(n1), .ZN(CO) );
  invbdk U2 ( .I(A[8]), .ZN(n1) );
  nd02d2 U3 ( .A1(carry[6]), .A2(B[6]), .ZN(n5) );
  cg01d1 U4 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(n2) );
  xr02d1 U5 ( .A1(B[6]), .A2(A[6]), .Z(n3) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(SUM[6]) );
  nd02d1 U7 ( .A1(n2), .A2(A[6]), .ZN(n4) );
  nd02d0 U8 ( .A1(A[6]), .A2(B[6]), .ZN(n6) );
  nd03d2 U9 ( .A1(n6), .A2(n4), .A3(n5), .ZN(carry[7]) );
  cg01d1 U10 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(n7) );
  cg01d1 U11 ( .A(A[2]), .B(B[2]), .CI(n7), .CO(n8) );
  nd03d2 U12 ( .A1(n12), .A2(n11), .A3(n10), .ZN(n9) );
  nd02d2 U13 ( .A1(n9), .A2(A[4]), .ZN(n14) );
  nd02d2 U14 ( .A1(carry[4]), .A2(B[4]), .ZN(n15) );
  xr03d1 U15 ( .A1(A[3]), .A2(B[3]), .A3(n8), .Z(SUM[3]) );
  nd02d2 U16 ( .A1(carry[3]), .A2(A[3]), .ZN(n10) );
  nd02d2 U17 ( .A1(n8), .A2(B[3]), .ZN(n11) );
  nd02d0 U18 ( .A1(A[3]), .A2(B[3]), .ZN(n12) );
  nd03d2 U19 ( .A1(n12), .A2(n11), .A3(n10), .ZN(carry[4]) );
  xr02d1 U20 ( .A1(B[4]), .A2(A[4]), .Z(n13) );
  xr02d1 U21 ( .A1(n13), .A2(n9), .Z(SUM[4]) );
  nd02d0 U22 ( .A1(A[4]), .A2(B[4]), .ZN(n16) );
  nd03d2 U23 ( .A1(n16), .A2(n15), .A3(n14), .ZN(carry[5]) );
  xn02d7 U24 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
  or02d1 U25 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
endmodule


module mean_calc_1_DW01_add_4_DW01_add_38 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [8:1] carry;

  ad01d1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d4 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  xr03d2 U1_5 ( .A1(A[5]), .A2(B[5]), .A3(carry[5]), .Z(SUM[5]) );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  nd12d2 U1 ( .A1(carry[8]), .A2(n1), .ZN(CO) );
  invbdk U2 ( .I(A[8]), .ZN(n1) );
  nd02d1 U3 ( .A1(n2), .A2(A[3]), .ZN(n4) );
  cg01d1 U4 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]) );
  cg01d1 U5 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(n2) );
  nd02d2 U6 ( .A1(carry[3]), .A2(B[3]), .ZN(n5) );
  xr02d1 U7 ( .A1(B[3]), .A2(A[3]), .Z(n3) );
  xr02d1 U8 ( .A1(n3), .A2(n2), .Z(SUM[3]) );
  nd02d0 U9 ( .A1(A[3]), .A2(B[3]), .ZN(n6) );
  nd03d2 U10 ( .A1(n6), .A2(n4), .A3(n5), .ZN(carry[4]) );
  or02d1 U11 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  xn02d1 U12 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module mean_calc_1_DW01_add_5_DW01_add_39 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;
  wire   [7:1] carry;

  ad01d1 U1_5 ( .A(A[5]), .B(B[5]), .CI(n2), .CO(carry[6]), .S(SUM[5]) );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ad01d4 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  nd02d1 U1 ( .A1(B[6]), .A2(n5), .ZN(n10) );
  an03d1 U2 ( .A1(n14), .A2(n13), .A3(n12), .Z(n6) );
  nd02d1 U3 ( .A1(A[6]), .A2(B[6]), .ZN(n8) );
  oaim211d1 U4 ( .C1(B[6]), .C2(n5), .A(n9), .B(n8), .ZN(n7) );
  cg01d1 U5 ( .A(B[3]), .B(A[3]), .CI(carry[3]), .CO(n1) );
  cg01d1 U6 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(n2) );
  inv0d0 U7 ( .I(A[1]), .ZN(n3) );
  inv0d1 U8 ( .I(n3), .ZN(n4) );
  cg01d1 U9 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(n5) );
  nd12d2 U10 ( .A1(A[8]), .A2(n6), .ZN(CO) );
  nd02d2 U11 ( .A1(A[1]), .A2(carry[1]), .ZN(n15) );
  xr03d1 U12 ( .A1(A[6]), .A2(B[6]), .A3(n5), .Z(SUM[6]) );
  nd02d2 U13 ( .A1(carry[6]), .A2(A[6]), .ZN(n9) );
  nd03d2 U14 ( .A1(n8), .A2(n10), .A3(n9), .ZN(carry[7]) );
  xr02d1 U15 ( .A1(A[7]), .A2(B[7]), .Z(n11) );
  xr02d1 U16 ( .A1(n11), .A2(carry[7]), .Z(SUM[7]) );
  nd02d0 U17 ( .A1(A[7]), .A2(B[7]), .ZN(n12) );
  nd02d2 U18 ( .A1(n7), .A2(A[7]), .ZN(n13) );
  nd02d2 U19 ( .A1(carry[7]), .A2(B[7]), .ZN(n14) );
  nd02d2 U20 ( .A1(A[1]), .A2(B[1]), .ZN(n16) );
  xr03d1 U21 ( .A1(carry[1]), .A2(B[1]), .A3(n4), .Z(SUM[1]) );
  nd02d1 U22 ( .A1(carry[1]), .A2(B[1]), .ZN(n17) );
  nd03d2 U23 ( .A1(n17), .A2(n16), .A3(n15), .ZN(carry[2]) );
  or02d0 U24 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  xn02d1 U25 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module mean_calc_1_DW01_add_6_DW01_add_40 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [8:1] carry;

  ad01d1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  xr03d1 U1_5 ( .A1(A[5]), .A2(B[5]), .A3(carry[5]), .Z(SUM[5]) );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  nd12d2 U1 ( .A1(carry[8]), .A2(n1), .ZN(CO) );
  invbdk U2 ( .I(A[8]), .ZN(n1) );
  inv0d0 U3 ( .I(n6), .ZN(n2) );
  aon211d1 U4 ( .C1(n4), .C2(n5), .B(n6), .A(n12), .ZN(n3) );
  cg01d1 U5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]) );
  aon211d1 U6 ( .C1(n4), .C2(n5), .B(n6), .A(n12), .ZN(carry[2]) );
  inv0d0 U7 ( .I(B[1]), .ZN(n4) );
  inv0d0 U8 ( .I(carry[1]), .ZN(n5) );
  invbd2 U9 ( .I(A[1]), .ZN(n6) );
  nd02d2 U10 ( .A1(carry[3]), .A2(B[3]), .ZN(n10) );
  cg01d1 U11 ( .A(n3), .B(B[2]), .CI(A[2]), .CO(n7) );
  xr02d1 U12 ( .A1(B[3]), .A2(A[3]), .Z(n8) );
  xr02d1 U13 ( .A1(n8), .A2(n7), .Z(SUM[3]) );
  nd02d1 U14 ( .A1(n7), .A2(A[3]), .ZN(n9) );
  nd02d0 U15 ( .A1(A[3]), .A2(B[3]), .ZN(n11) );
  nd03d2 U16 ( .A1(n11), .A2(n9), .A3(n10), .ZN(carry[4]) );
  xr03d1 U17 ( .A1(carry[1]), .A2(B[1]), .A3(n2), .Z(SUM[1]) );
  nd02d0 U18 ( .A1(carry[1]), .A2(B[1]), .ZN(n12) );
  or02d0 U19 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  xn02d1 U20 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module mean_calc_1_DW01_add_7_DW01_add_41 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5;
  wire   [8:1] carry;

  ad01d4 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  ad01d1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  xn02d1 U1 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
  nd02d1 U2 ( .A1(n1), .A2(B[3]), .ZN(n4) );
  nd02d2 U3 ( .A1(carry[3]), .A2(A[3]), .ZN(n3) );
  cg01d1 U4 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(n1) );
  xr02d1 U5 ( .A1(B[3]), .A2(A[3]), .Z(n2) );
  xr02d1 U6 ( .A1(n2), .A2(n1), .Z(SUM[3]) );
  nd02d0 U7 ( .A1(A[3]), .A2(B[3]), .ZN(n5) );
  nd03d2 U8 ( .A1(n5), .A2(n4), .A3(n3), .ZN(carry[4]) );
  or02d1 U9 ( .A1(carry[8]), .A2(A[8]), .Z(CO) );
  or02d0 U10 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
endmodule


module mean_calc_1_DW_div_seq_0_DW_div_seq_2 ( clk, rst_n, hold, start, a, b, 
        complete, divide_by_0, quotient, remainder );
  input [22:0] a;
  input [7:0] b;
  output [22:0] quotient;
  output [7:0] remainder;
  input clk, rst_n, hold, start;
  output complete, divide_by_0;
  wire   hold_n, load_tc, first_cyc, pr_7__8_, pr_7__7_, pr_7__6_, pr_7__5_,
         pr_7__4_, pr_7__3_, pr_7__2_, pr_7__1_, pr_6__8_, pr_6__7_, pr_6__6_,
         pr_6__5_, pr_6__4_, pr_6__3_, pr_6__2_, pr_6__1_, pr_5__8_, pr_5__7_,
         pr_5__6_, pr_5__5_, pr_5__4_, pr_5__3_, pr_5__2_, pr_5__1_, pr_4__8_,
         pr_4__7_, pr_4__6_, pr_4__5_, pr_4__4_, pr_4__3_, pr_4__2_, pr_4__1_,
         pr_3__8_, pr_3__7_, pr_3__6_, pr_3__5_, pr_3__4_, pr_3__3_, pr_3__2_,
         pr_3__1_, pr_2__8_, pr_2__7_, pr_2__6_, pr_2__5_, pr_2__4_, pr_2__3_,
         pr_2__2_, pr_2__1_, pr_1__8_, pr_1__7_, pr_1__6_, pr_1__5_, pr_1__4_,
         pr_1__3_, pr_1__2_, pr_1__1_, temp_part_rem_7__7_,
         temp_part_rem_7__6_, temp_part_rem_7__5_, temp_part_rem_7__4_,
         temp_part_rem_7__3_, temp_part_rem_7__2_, temp_part_rem_7__1_,
         temp_part_rem_7__0_, temp_part_rem_6__7_, temp_part_rem_6__6_,
         temp_part_rem_6__5_, temp_part_rem_6__4_, temp_part_rem_6__3_,
         temp_part_rem_6__2_, temp_part_rem_6__1_, temp_part_rem_6__0_,
         temp_part_rem_5__7_, temp_part_rem_5__6_, temp_part_rem_5__5_,
         temp_part_rem_5__4_, temp_part_rem_5__3_, temp_part_rem_5__2_,
         temp_part_rem_5__1_, temp_part_rem_5__0_, temp_part_rem_4__7_,
         temp_part_rem_4__6_, temp_part_rem_4__5_, temp_part_rem_4__4_,
         temp_part_rem_4__3_, temp_part_rem_4__2_, temp_part_rem_4__1_,
         temp_part_rem_4__0_, temp_part_rem_3__7_, temp_part_rem_3__6_,
         temp_part_rem_3__5_, temp_part_rem_3__4_, temp_part_rem_3__3_,
         temp_part_rem_3__2_, temp_part_rem_3__1_, temp_part_rem_3__0_,
         temp_part_rem_2__7_, temp_part_rem_2__6_, temp_part_rem_2__5_,
         temp_part_rem_2__4_, temp_part_rem_2__3_, temp_part_rem_2__2_,
         temp_part_rem_2__1_, temp_part_rem_2__0_, temp_part_rem_1__7_,
         temp_part_rem_1__6_, temp_part_rem_1__5_, temp_part_rem_1__4_,
         temp_part_rem_1__3_, temp_part_rem_1__2_, temp_part_rem_1__1_,
         temp_part_rem_1__0_, temp_part_rem_0__7_, temp_part_rem_0__6_,
         temp_part_rem_0__5_, temp_part_rem_0__4_, temp_part_rem_0__3_,
         temp_part_rem_0__2_, temp_part_rem_0__1_, temp_part_rem_0__0_,
         start_q, nx_state, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33,
         N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47,
         N48, N49, N50, N51, N52, N53, N54, N55, N56, U_COUNT_tercnt_d,
         U_COUNT_tercnt_cmp_bus_0_, U_COUNT_next_count_2_, U_COUNT_load_n, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8;
  wire   [7:0] a_in_temp0;
  wire   [7:0] part_rem_0;
  wire   [15:0] final_quotient;
  wire   [7:0] final_remainder;
  wire   [7:0] b_in;
  wire   [7:0] temp_q_rev;
  wire   [2:0] U_COUNT_count_inc;
  wire   [2:0] U_COUNT_count;

  mean_calc_1_DW01_add_0_DW01_add_34 U_ADD_0 ( .A({part_rem_0, a_in_temp0[0]}), 
        .B({1'b1, n105, n106, n107, n108, n109, n110, n111, n112}), .CI(1'b1), 
        .SUM({SYNOPSYS_UNCONNECTED_1, temp_part_rem_0__7_, temp_part_rem_0__6_, 
        temp_part_rem_0__5_, temp_part_rem_0__4_, temp_part_rem_0__3_, 
        temp_part_rem_0__2_, temp_part_rem_0__1_, temp_part_rem_0__0_}), .CO(
        temp_q_rev[7]) );
  mean_calc_1_DW01_add_1_DW01_add_35 U_ADD_1 ( .A({pr_1__8_, pr_1__7_, 
        pr_1__6_, pr_1__5_, pr_1__4_, pr_1__3_, pr_1__2_, pr_1__1_, 
        a_in_temp0[1]}), .B({1'b1, n105, n106, n107, n108, n109, n110, n111, 
        n112}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_2, temp_part_rem_1__7_, 
        temp_part_rem_1__6_, temp_part_rem_1__5_, temp_part_rem_1__4_, 
        temp_part_rem_1__3_, temp_part_rem_1__2_, temp_part_rem_1__1_, 
        temp_part_rem_1__0_}), .CO(temp_q_rev[6]) );
  mean_calc_1_DW01_add_2_DW01_add_36 U_ADD_2 ( .A({pr_2__8_, pr_2__7_, 
        pr_2__6_, pr_2__5_, pr_2__4_, pr_2__3_, pr_2__2_, pr_2__1_, 
        a_in_temp0[2]}), .B({1'b1, n105, n106, n107, n108, n109, n110, n111, 
        n112}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_3, temp_part_rem_2__7_, 
        temp_part_rem_2__6_, temp_part_rem_2__5_, temp_part_rem_2__4_, 
        temp_part_rem_2__3_, temp_part_rem_2__2_, temp_part_rem_2__1_, 
        temp_part_rem_2__0_}), .CO(temp_q_rev[5]) );
  mean_calc_1_DW01_add_3_DW01_add_37 U_ADD_3 ( .A({pr_3__8_, pr_3__7_, 
        pr_3__6_, pr_3__5_, pr_3__4_, pr_3__3_, pr_3__2_, pr_3__1_, 
        a_in_temp0[3]}), .B({1'b1, n105, n106, n107, n108, n109, n110, n111, 
        n112}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_4, temp_part_rem_3__7_, 
        temp_part_rem_3__6_, temp_part_rem_3__5_, temp_part_rem_3__4_, 
        temp_part_rem_3__3_, temp_part_rem_3__2_, temp_part_rem_3__1_, 
        temp_part_rem_3__0_}), .CO(temp_q_rev[4]) );
  mean_calc_1_DW01_add_4_DW01_add_38 U_ADD_4 ( .A({pr_4__8_, pr_4__7_, 
        pr_4__6_, pr_4__5_, pr_4__4_, pr_4__3_, pr_4__2_, pr_4__1_, 
        a_in_temp0[4]}), .B({1'b1, n105, n106, n107, n108, n109, n110, n111, 
        n35}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_5, temp_part_rem_4__7_, 
        temp_part_rem_4__6_, temp_part_rem_4__5_, temp_part_rem_4__4_, 
        temp_part_rem_4__3_, temp_part_rem_4__2_, temp_part_rem_4__1_, 
        temp_part_rem_4__0_}), .CO(temp_q_rev[3]) );
  mean_calc_1_DW01_add_5_DW01_add_39 U_ADD_5 ( .A({pr_5__8_, pr_5__7_, 
        pr_5__6_, pr_5__5_, pr_5__4_, pr_5__3_, pr_5__2_, pr_5__1_, 
        a_in_temp0[5]}), .B({1'b1, n105, n106, n107, n108, n109, n110, n111, 
        n35}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_6, temp_part_rem_5__7_, 
        temp_part_rem_5__6_, temp_part_rem_5__5_, temp_part_rem_5__4_, 
        temp_part_rem_5__3_, temp_part_rem_5__2_, temp_part_rem_5__1_, 
        temp_part_rem_5__0_}), .CO(temp_q_rev[2]) );
  mean_calc_1_DW01_add_6_DW01_add_40 U_ADD_6 ( .A({pr_6__8_, pr_6__7_, 
        pr_6__6_, pr_6__5_, pr_6__4_, pr_6__3_, pr_6__2_, pr_6__1_, 
        a_in_temp0[6]}), .B({1'b1, n105, n106, n107, n108, n109, n110, n111, 
        n35}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_7, temp_part_rem_6__7_, 
        temp_part_rem_6__6_, temp_part_rem_6__5_, temp_part_rem_6__4_, 
        temp_part_rem_6__3_, temp_part_rem_6__2_, temp_part_rem_6__1_, 
        temp_part_rem_6__0_}), .CO(temp_q_rev[1]) );
  mean_calc_1_DW01_add_7_DW01_add_41 U_ADD_7 ( .A({pr_7__8_, pr_7__7_, 
        pr_7__6_, pr_7__5_, pr_7__4_, pr_7__3_, pr_7__2_, pr_7__1_, 
        a_in_temp0[7]}), .B({1'b1, n105, n106, n107, n108, n109, n110, n111, 
        n35}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_8, temp_part_rem_7__7_, 
        temp_part_rem_7__6_, temp_part_rem_7__5_, temp_part_rem_7__4_, 
        temp_part_rem_7__3_, temp_part_rem_7__2_, temp_part_rem_7__1_, 
        temp_part_rem_7__0_}), .CO(temp_q_rev[0]) );
  dfcrq1 shf_reg_reg_7__1_ ( .D(N55), .CP(clk), .CDN(n48), .Q(
        final_quotient[8]) );
  dfcrq1 shf_reg_reg_7__0_ ( .D(N54), .CP(clk), .CDN(n48), .Q(a_in_temp0[7])
         );
  dfcrq1 shf_reg_reg_6__2_ ( .D(N53), .CP(clk), .CDN(n48), .Q(
        final_quotient[1]) );
  dfcrq1 shf_reg_reg_6__1_ ( .D(N52), .CP(clk), .CDN(n48), .Q(
        final_quotient[9]) );
  dfcrq1 shf_reg_reg_6__0_ ( .D(N51), .CP(clk), .CDN(n48), .Q(a_in_temp0[6])
         );
  dfcrq1 shf_reg_reg_5__2_ ( .D(N50), .CP(clk), .CDN(n49), .Q(
        final_quotient[2]) );
  dfcrq1 shf_reg_reg_5__1_ ( .D(N49), .CP(clk), .CDN(n49), .Q(
        final_quotient[10]) );
  dfcrq1 shf_reg_reg_5__0_ ( .D(N48), .CP(clk), .CDN(n49), .Q(a_in_temp0[5])
         );
  dfcrq1 shf_reg_reg_4__2_ ( .D(N47), .CP(clk), .CDN(n49), .Q(
        final_quotient[3]) );
  dfcrq1 shf_reg_reg_4__1_ ( .D(N46), .CP(clk), .CDN(n49), .Q(
        final_quotient[11]) );
  dfcrq1 shf_reg_reg_4__0_ ( .D(N45), .CP(clk), .CDN(n49), .Q(a_in_temp0[4])
         );
  dfcrq1 shf_reg_reg_3__2_ ( .D(N44), .CP(clk), .CDN(n49), .Q(
        final_quotient[4]) );
  dfcrq1 shf_reg_reg_3__1_ ( .D(N43), .CP(clk), .CDN(n49), .Q(
        final_quotient[12]) );
  dfcrq1 shf_reg_reg_3__0_ ( .D(N42), .CP(clk), .CDN(n49), .Q(a_in_temp0[3])
         );
  dfcrq1 shf_reg_reg_2__2_ ( .D(N41), .CP(clk), .CDN(n49), .Q(
        final_quotient[5]) );
  dfcrq1 shf_reg_reg_2__1_ ( .D(N40), .CP(clk), .CDN(n50), .Q(
        final_quotient[13]) );
  dfcrq1 shf_reg_reg_2__0_ ( .D(N39), .CP(clk), .CDN(n50), .Q(a_in_temp0[2])
         );
  dfcrq1 shf_reg_reg_1__2_ ( .D(N38), .CP(clk), .CDN(n50), .Q(
        final_quotient[6]) );
  dfcrq1 shf_reg_reg_1__1_ ( .D(N37), .CP(clk), .CDN(n50), .Q(
        final_quotient[14]) );
  dfcrq1 shf_reg_reg_1__0_ ( .D(N36), .CP(clk), .CDN(n50), .Q(a_in_temp0[1])
         );
  dfcrq1 shf_reg_reg_0__2_ ( .D(N35), .CP(clk), .CDN(n50), .Q(
        final_quotient[7]) );
  dfcrq1 shf_reg_reg_0__1_ ( .D(N34), .CP(clk), .CDN(n50), .Q(
        final_quotient[15]) );
  dfcrq1 part_rem_reg_reg_1_ ( .D(N26), .CP(clk), .CDN(n51), .Q(
        final_remainder[1]) );
  dfcrq1 start_q_reg ( .D(start), .CP(clk), .CDN(n51), .Q(start_q) );
  dfprb1 pr_state_reg ( .D(nx_state), .CP(clk), .SDN(n51), .QN(n21) );
  deprq1 b_reg_reg_7_ ( .D(b[7]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n51), 
        .Q(b_in[7]) );
  deprq1 b_reg_reg_6_ ( .D(b[6]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n52), 
        .Q(b_in[6]) );
  deprq1 b_reg_reg_5_ ( .D(b[5]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n52), 
        .Q(b_in[5]) );
  deprq1 b_reg_reg_4_ ( .D(b[4]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n52), 
        .Q(b_in[4]) );
  deprq1 b_reg_reg_3_ ( .D(b[3]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n52), 
        .Q(b_in[3]) );
  deprq1 b_reg_reg_2_ ( .D(b[2]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n52), 
        .Q(b_in[2]) );
  dfcrn1 U_COUNT_U2_1 ( .D(U_COUNT_tercnt_d), .CP(clk), .CDN(n48), .QN(load_tc) );
  dfcrq1 U_COUNT_U1_3_2 ( .D(U_COUNT_next_count_2_), .CP(clk), .CDN(n50), .Q(
        U_COUNT_count[2]) );
  dfcrq1 U_COUNT_U1_3_1 ( .D(n65), .CP(clk), .CDN(n48), .Q(U_COUNT_count[1])
         );
  dfcrq1 U_COUNT_U1_3_0 ( .D(U_COUNT_tercnt_cmp_bus_0_), .CP(clk), .CDN(n48), 
        .Q(U_COUNT_count[0]) );
  dfcrq4 start_reg_reg ( .D(N24), .CP(clk), .CDN(n48), .Q(first_cyc) );
  deprq4 b_reg_reg_0_ ( .D(b[0]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n52), 
        .Q(b_in[0]) );
  dfcrq4 shf_reg_reg_0__0_ ( .D(N33), .CP(clk), .CDN(n50), .Q(a_in_temp0[0])
         );
  deprq4 b_reg_reg_1_ ( .D(b[1]), .ENN(U_COUNT_load_n), .CP(clk), .SDN(n52), 
        .Q(b_in[1]) );
  dfcrq4 part_rem_reg_reg_4_ ( .D(N29), .CP(clk), .CDN(n51), .Q(
        final_remainder[4]) );
  dfcrq4 part_rem_reg_reg_6_ ( .D(N31), .CP(clk), .CDN(n51), .Q(
        final_remainder[6]) );
  dfcrq2 part_rem_reg_reg_7_ ( .D(N32), .CP(clk), .CDN(n50), .Q(
        final_remainder[7]) );
  dfcrq2 part_rem_reg_reg_3_ ( .D(N28), .CP(clk), .CDN(n51), .Q(
        final_remainder[3]) );
  dfcrq4 part_rem_reg_reg_0_ ( .D(N25), .CP(clk), .CDN(n51), .Q(
        final_remainder[0]) );
  dfcrq4 part_rem_reg_reg_2_ ( .D(N27), .CP(clk), .CDN(n51), .Q(
        final_remainder[2]) );
  dfcrq4 part_rem_reg_reg_5_ ( .D(N30), .CP(clk), .CDN(n51), .Q(
        final_remainder[5]) );
  dfcrq4 shf_reg_reg_7__2_ ( .D(N56), .CP(clk), .CDN(n48), .Q(
        final_quotient[0]) );
  invbd2 U3 ( .I(temp_q_rev[1]), .ZN(n33) );
  mx02d1 U4 ( .I0(pr_6__4_), .I1(temp_part_rem_6__4_), .S(n34), .Z(pr_7__5_)
         );
  mx02d1 U5 ( .I0(pr_6__3_), .I1(temp_part_rem_6__3_), .S(n34), .Z(pr_7__4_)
         );
  mx02d1 U6 ( .I0(pr_6__5_), .I1(temp_part_rem_6__5_), .S(n34), .Z(pr_7__6_)
         );
  mx02d1 U7 ( .I0(pr_6__6_), .I1(temp_part_rem_6__6_), .S(n34), .Z(pr_7__7_)
         );
  inv0d4 U8 ( .I(n33), .ZN(n34) );
  nd12d2 U9 ( .A1(n12), .A2(temp_q_rev[1]), .ZN(n18) );
  invbdk U10 ( .I(temp_part_rem_6__0_), .ZN(n12) );
  inv0da U11 ( .I(b_in[0]), .ZN(n112) );
  buffd1 U12 ( .I(temp_q_rev[7]), .Z(n55) );
  bufbd7 U13 ( .I(temp_q_rev[5]), .Z(n53) );
  nd02d1 U14 ( .A1(n20), .A2(n13), .ZN(n14) );
  nd02d1 U15 ( .A1(temp_part_rem_5__1_), .A2(n37), .ZN(n15) );
  nd02d2 U16 ( .A1(n14), .A2(n15), .ZN(pr_6__2_) );
  inv0d1 U17 ( .I(n37), .ZN(n13) );
  nd02d2 U18 ( .A1(a_in_temp0[6]), .A2(n16), .ZN(n17) );
  nd02d2 U19 ( .A1(n18), .A2(n17), .ZN(pr_7__1_) );
  inv0d1 U20 ( .I(temp_q_rev[1]), .ZN(n16) );
  mx02d0 U21 ( .I0(a_in_temp0[4]), .I1(temp_part_rem_4__0_), .S(n39), .Z(n20)
         );
  mx02d2 U22 ( .I0(pr_6__2_), .I1(temp_part_rem_6__2_), .S(n34), .Z(pr_7__3_)
         );
  mx02d1 U23 ( .I0(pr_5__3_), .I1(temp_part_rem_5__3_), .S(n37), .Z(pr_6__4_)
         );
  mx02d1 U24 ( .I0(pr_5__4_), .I1(temp_part_rem_5__4_), .S(n37), .Z(pr_6__5_)
         );
  mx02d1 U25 ( .I0(pr_5__5_), .I1(temp_part_rem_5__5_), .S(n37), .Z(pr_6__6_)
         );
  inv0d7 U26 ( .I(n36), .ZN(n37) );
  mx02d2 U27 ( .I0(pr_2__5_), .I1(temp_part_rem_2__5_), .S(n53), .Z(pr_3__6_)
         );
  inv0d4 U28 ( .I(b_in[6]), .ZN(n106) );
  mx02d1 U29 ( .I0(n43), .I1(temp_part_rem_1__1_), .S(n54), .Z(pr_2__2_) );
  mx02d1 U30 ( .I0(n45), .I1(temp_part_rem_2__1_), .S(n53), .Z(pr_3__2_) );
  mx02d1 U31 ( .I0(a_in_temp0[4]), .I1(temp_part_rem_4__0_), .S(temp_q_rev[3]), 
        .Z(pr_5__1_) );
  mx02d1 U32 ( .I0(n31), .I1(temp_part_rem_4__2_), .S(n39), .Z(pr_5__3_) );
  inv0d1 U33 ( .I(n38), .ZN(n30) );
  inv0d1 U34 ( .I(start), .ZN(U_COUNT_load_n) );
  oaim22d1 U35 ( .A1(n67), .A2(n113), .B1(n22), .B2(final_quotient[0]), .ZN(
        N56) );
  nd12d1 U36 ( .A1(n22), .A2(n67), .ZN(n23) );
  mx02d1 U37 ( .I0(a_in_temp0[0]), .I1(temp_part_rem_0__0_), .S(temp_q_rev[7]), 
        .Z(pr_1__1_) );
  nr02d1 U38 ( .A1(n103), .A2(first_cyc), .ZN(part_rem_0[1]) );
  mx02d1 U39 ( .I0(a_in_temp0[5]), .I1(temp_part_rem_5__0_), .S(temp_q_rev[2]), 
        .Z(pr_6__1_) );
  mx02d2 U40 ( .I0(n42), .I1(temp_part_rem_6__1_), .S(n34), .Z(pr_7__2_) );
  mx02d1 U41 ( .I0(a_in_temp0[1]), .I1(temp_part_rem_1__0_), .S(temp_q_rev[6]), 
        .Z(pr_2__1_) );
  inv0d0 U42 ( .I(hold_n), .ZN(n22) );
  invbd2 U43 ( .I(n23), .ZN(n47) );
  oaim21d1 U44 ( .B1(n24), .B2(U_COUNT_load_n), .A(n67), .ZN(n25) );
  inv0d0 U45 ( .I(load_tc), .ZN(n24) );
  invbd2 U46 ( .I(n25), .ZN(n133) );
  mx02d1 U47 ( .I0(a_in_temp0[2]), .I1(temp_part_rem_2__0_), .S(temp_q_rev[5]), 
        .Z(pr_3__1_) );
  oaim21d1 U48 ( .B1(final_remainder[1]), .B2(n22), .A(n140), .ZN(N26) );
  oaim31d1 U49 ( .B1(final_remainder[0]), .B2(n27), .B3(U_COUNT_load_n), .A(
        n141), .ZN(N25) );
  oaim31d1 U50 ( .B1(final_remainder[5]), .B2(n26), .B3(U_COUNT_load_n), .A(
        n136), .ZN(N30) );
  inv0d0 U51 ( .I(load_tc), .ZN(n26) );
  oaim31d1 U52 ( .B1(final_remainder[6]), .B2(n26), .B3(U_COUNT_load_n), .A(
        n135), .ZN(N31) );
  oaim31d1 U53 ( .B1(final_remainder[4]), .B2(n26), .B3(U_COUNT_load_n), .A(
        n137), .ZN(N29) );
  oaim31d1 U54 ( .B1(final_remainder[7]), .B2(n27), .B3(U_COUNT_load_n), .A(
        n132), .ZN(N32) );
  inv0d0 U55 ( .I(load_tc), .ZN(n27) );
  oaim31d1 U56 ( .B1(final_remainder[3]), .B2(n27), .B3(U_COUNT_load_n), .A(
        n138), .ZN(N28) );
  oaim31d1 U57 ( .B1(final_remainder[2]), .B2(n26), .B3(U_COUNT_load_n), .A(
        n139), .ZN(N27) );
  inv0d0 U58 ( .I(pr_7__1_), .ZN(n28) );
  inv0d1 U59 ( .I(n28), .ZN(n29) );
  inv0d1 U60 ( .I(temp_q_rev[3]), .ZN(n38) );
  inv0d4 U61 ( .I(b_in[2]), .ZN(n110) );
  invbd2 U62 ( .I(temp_q_rev[2]), .ZN(n36) );
  clk2d2 U63 ( .CLK(n38), .CN(n39), .C(n19) );
  mx02d1 U64 ( .I0(n46), .I1(temp_part_rem_4__1_), .S(n30), .Z(pr_5__2_) );
  mx02d0 U65 ( .I0(pr_2__4_), .I1(temp_part_rem_2__4_), .S(n53), .Z(pr_3__5_)
         );
  mx02d0 U66 ( .I0(pr_2__6_), .I1(temp_part_rem_2__6_), .S(n53), .Z(pr_3__7_)
         );
  mx02d0 U67 ( .I0(pr_2__7_), .I1(temp_part_rem_2__7_), .S(n53), .Z(pr_3__8_)
         );
  mx02d0 U68 ( .I0(temp_part_rem_3__7_), .I1(pr_3__7_), .S(n70), .Z(pr_4__8_)
         );
  mx02d1 U69 ( .I0(n44), .I1(temp_part_rem_3__1_), .S(n41), .Z(pr_4__2_) );
  mx02d0 U70 ( .I0(part_rem_0[3]), .I1(temp_part_rem_0__4_), .S(temp_q_rev[7]), 
        .Z(pr_1__5_) );
  mx02d0 U71 ( .I0(part_rem_0[5]), .I1(temp_part_rem_0__6_), .S(temp_q_rev[7]), 
        .Z(pr_1__7_) );
  mx02d0 U72 ( .I0(part_rem_0[6]), .I1(temp_part_rem_0__7_), .S(temp_q_rev[7]), 
        .Z(pr_1__8_) );
  mx02d0 U73 ( .I0(pr_1__4_), .I1(temp_part_rem_1__4_), .S(n54), .Z(pr_2__5_)
         );
  mx02d0 U74 ( .I0(pr_1__7_), .I1(temp_part_rem_1__7_), .S(n54), .Z(pr_2__8_)
         );
  buffd1 U75 ( .I(pr_4__2_), .Z(n31) );
  inv0d1 U76 ( .I(temp_q_rev[4]), .ZN(n40) );
  mx02d1 U77 ( .I0(a_in_temp0[3]), .I1(temp_part_rem_3__0_), .S(temp_q_rev[4]), 
        .Z(pr_4__1_) );
  inv0d2 U78 ( .I(n40), .ZN(n41) );
  mx02d0 U79 ( .I0(pr_1__5_), .I1(temp_part_rem_1__5_), .S(n54), .Z(pr_2__6_)
         );
  inv0d0 U80 ( .I(n33), .ZN(n32) );
  inv0d2 U81 ( .I(final_remainder[0]), .ZN(n104) );
  mx02d0 U82 ( .I0(a_in_temp0[0]), .I1(temp_part_rem_0__0_), .S(n55), .Z(n43)
         );
  buffd1 U83 ( .I(n112), .Z(n35) );
  mx02d0 U84 ( .I0(pr_1__2_), .I1(temp_part_rem_1__2_), .S(n54), .Z(pr_2__3_)
         );
  mx02d0 U85 ( .I0(pr_1__3_), .I1(temp_part_rem_1__3_), .S(n54), .Z(pr_2__4_)
         );
  mx02d0 U86 ( .I0(pr_1__6_), .I1(temp_part_rem_1__6_), .S(n54), .Z(pr_2__7_)
         );
  mx02d1 U87 ( .I0(a_in_temp0[5]), .I1(temp_part_rem_5__0_), .S(n37), .Z(n42)
         );
  mx02d0 U88 ( .I0(part_rem_0[4]), .I1(temp_part_rem_0__5_), .S(temp_q_rev[7]), 
        .Z(pr_1__6_) );
  mx02d0 U89 ( .I0(a_in_temp0[2]), .I1(temp_part_rem_2__0_), .S(n53), .Z(n44)
         );
  mx02d0 U90 ( .I0(a_in_temp0[1]), .I1(temp_part_rem_1__0_), .S(n54), .Z(n45)
         );
  mx02d0 U91 ( .I0(a_in_temp0[3]), .I1(temp_part_rem_3__0_), .S(n41), .Z(n46)
         );
  mx02d0 U92 ( .I0(pr_5__2_), .I1(temp_part_rem_5__2_), .S(n37), .Z(pr_6__3_)
         );
  nr02d2 U93 ( .A1(n104), .A2(first_cyc), .ZN(part_rem_0[0]) );
  inv0da U94 ( .I(b_in[1]), .ZN(n111) );
  mx02d0 U95 ( .I0(pr_2__2_), .I1(temp_part_rem_2__2_), .S(n53), .Z(pr_3__3_)
         );
  inv0d4 U96 ( .I(b_in[3]), .ZN(n109) );
  mx02d0 U97 ( .I0(pr_2__3_), .I1(temp_part_rem_2__3_), .S(n53), .Z(pr_3__4_)
         );
  mx02d0 U98 ( .I0(part_rem_0[1]), .I1(temp_part_rem_0__2_), .S(temp_q_rev[7]), 
        .Z(pr_1__3_) );
  mx02d0 U99 ( .I0(part_rem_0[2]), .I1(temp_part_rem_0__3_), .S(temp_q_rev[7]), 
        .Z(pr_1__4_) );
  inv0d4 U100 ( .I(b_in[4]), .ZN(n108) );
  mx02d0 U101 ( .I0(pr_4__6_), .I1(temp_part_rem_4__6_), .S(n39), .Z(pr_5__7_)
         );
  mx02d0 U102 ( .I0(pr_4__5_), .I1(temp_part_rem_4__5_), .S(n39), .Z(pr_5__6_)
         );
  mx02d0 U103 ( .I0(pr_4__4_), .I1(temp_part_rem_4__4_), .S(n39), .Z(pr_5__5_)
         );
  mx02d0 U104 ( .I0(pr_4__3_), .I1(temp_part_rem_4__3_), .S(n39), .Z(pr_5__4_)
         );
  mx02d0 U105 ( .I0(pr_3__6_), .I1(temp_part_rem_3__6_), .S(n41), .Z(pr_4__7_)
         );
  mx02d0 U106 ( .I0(pr_3__5_), .I1(temp_part_rem_3__5_), .S(n41), .Z(pr_4__6_)
         );
  mx02d0 U107 ( .I0(pr_3__4_), .I1(temp_part_rem_3__4_), .S(n41), .Z(pr_4__5_)
         );
  mx02d0 U108 ( .I0(pr_3__3_), .I1(temp_part_rem_3__3_), .S(n41), .Z(pr_4__4_)
         );
  mx02d0 U109 ( .I0(pr_3__2_), .I1(temp_part_rem_3__2_), .S(n41), .Z(pr_4__3_)
         );
  mx02d0 U110 ( .I0(pr_5__6_), .I1(temp_part_rem_5__6_), .S(n37), .Z(pr_6__7_)
         );
  mx02d0 U111 ( .I0(part_rem_0[0]), .I1(temp_part_rem_0__1_), .S(temp_q_rev[7]), .Z(pr_1__2_) );
  bufbd7 U112 ( .I(temp_q_rev[6]), .Z(n54) );
  an02d4 U113 ( .A1(temp_q_rev[0]), .A2(n61), .Z(n134) );
  inv0d1 U114 ( .I(final_remainder[1]), .ZN(n103) );
  inv0d1 U115 ( .I(final_remainder[2]), .ZN(n102) );
  inv0d1 U116 ( .I(final_remainder[3]), .ZN(n101) );
  inv0d1 U117 ( .I(final_remainder[4]), .ZN(n100) );
  inv0d4 U118 ( .I(b_in[7]), .ZN(n105) );
  buffd1 U119 ( .I(rst_n), .Z(n48) );
  buffd1 U120 ( .I(rst_n), .Z(n50) );
  buffd1 U121 ( .I(rst_n), .Z(n49) );
  buffd1 U122 ( .I(rst_n), .Z(n51) );
  buffd1 U123 ( .I(rst_n), .Z(n52) );
  inv0d1 U124 ( .I(temp_q_rev[0]), .ZN(n67) );
  inv0d0 U125 ( .I(n41), .ZN(n70) );
  inv0d0 U126 ( .I(n37), .ZN(n69) );
  inv0d0 U127 ( .I(n32), .ZN(n68) );
  inv0d1 U128 ( .I(n113), .ZN(n71) );
  inv0d0 U129 ( .I(n62), .ZN(n65) );
  buffd1 U130 ( .I(n56), .Z(n58) );
  buffd1 U131 ( .I(n56), .Z(n60) );
  buffd1 U132 ( .I(n56), .Z(n59) );
  buffd1 U133 ( .I(n57), .Z(n61) );
  buffd1 U134 ( .I(hold_n), .Z(n57) );
  buffd1 U135 ( .I(hold_n), .Z(n56) );
  inv0d2 U136 ( .I(b_in[5]), .ZN(n107) );
  inv0d0 U137 ( .I(final_remainder[5]), .ZN(n99) );
  inv0d0 U138 ( .I(final_remainder[6]), .ZN(n98) );
  inv0d1 U139 ( .I(final_remainder[7]), .ZN(n97) );
  nr02d1 U140 ( .A1(start_q), .A2(n21), .ZN(nx_state) );
  inv0d0 U141 ( .I(final_quotient[0]), .ZN(n72) );
  inv0d0 U142 ( .I(final_quotient[1]), .ZN(n75) );
  inv0d0 U143 ( .I(final_quotient[2]), .ZN(n78) );
  inv0d0 U144 ( .I(final_quotient[3]), .ZN(n81) );
  inv0d0 U145 ( .I(final_quotient[4]), .ZN(n84) );
  inv0d0 U146 ( .I(final_quotient[5]), .ZN(n87) );
  inv0d0 U147 ( .I(final_quotient[6]), .ZN(n90) );
  inv0d0 U148 ( .I(final_quotient[7]), .ZN(n93) );
  inv0d0 U149 ( .I(final_quotient[8]), .ZN(n73) );
  inv0d0 U150 ( .I(final_quotient[9]), .ZN(n76) );
  inv0d0 U151 ( .I(final_quotient[13]), .ZN(n88) );
  inv0d0 U152 ( .I(final_quotient[10]), .ZN(n79) );
  inv0d0 U153 ( .I(final_quotient[11]), .ZN(n82) );
  inv0d0 U154 ( .I(final_quotient[12]), .ZN(n85) );
  inv0d0 U155 ( .I(a_in_temp0[1]), .ZN(n92) );
  inv0d0 U156 ( .I(a_in_temp0[2]), .ZN(n89) );
  inv0d0 U157 ( .I(a_in_temp0[3]), .ZN(n86) );
  inv0d0 U158 ( .I(a_in_temp0[4]), .ZN(n83) );
  inv0d0 U159 ( .I(a_in_temp0[5]), .ZN(n80) );
  inv0d0 U160 ( .I(a_in_temp0[6]), .ZN(n77) );
  inv0d0 U161 ( .I(a_in_temp0[7]), .ZN(n74) );
  inv0d0 U162 ( .I(final_quotient[14]), .ZN(n91) );
  inv0d0 U163 ( .I(a_in_temp0[0]), .ZN(n95) );
  inv0d0 U164 ( .I(first_cyc), .ZN(n96) );
  inv0d0 U165 ( .I(U_COUNT_count[1]), .ZN(n66) );
  inv0d0 U166 ( .I(final_quotient[15]), .ZN(n94) );
  an02d0 U167 ( .A1(U_COUNT_load_n), .A2(U_COUNT_count_inc[2]), .Z(
        U_COUNT_next_count_2_) );
  an02d0 U168 ( .A1(U_COUNT_load_n), .A2(U_COUNT_count_inc[0]), .Z(
        U_COUNT_tercnt_cmp_bus_0_) );
  nd02d0 U169 ( .A1(U_COUNT_load_n), .A2(U_COUNT_count_inc[1]), .ZN(n62) );
  nr13d1 U170 ( .A1(U_COUNT_count_inc[0]), .A2(U_COUNT_count_inc[2]), .A3(n62), 
        .ZN(U_COUNT_tercnt_d) );
  xr02d1 U171 ( .A1(U_COUNT_count[2]), .A2(n63), .Z(U_COUNT_count_inc[2]) );
  nr02d0 U172 ( .A1(n64), .A2(n66), .ZN(n63) );
  xr02d1 U173 ( .A1(n66), .A2(n64), .Z(U_COUNT_count_inc[1]) );
  nd02d0 U174 ( .A1(n61), .A2(U_COUNT_count[0]), .ZN(n64) );
  xr02d1 U175 ( .A1(n58), .A2(U_COUNT_count[0]), .Z(U_COUNT_count_inc[0]) );
  nr02d0 U176 ( .A1(nx_state), .A2(n76), .ZN(quotient[9]) );
  nr02d0 U177 ( .A1(nx_state), .A2(n73), .ZN(quotient[8]) );
  nr02d0 U178 ( .A1(nx_state), .A2(n93), .ZN(quotient[7]) );
  nr02d0 U179 ( .A1(nx_state), .A2(n90), .ZN(quotient[6]) );
  nr02d0 U180 ( .A1(nx_state), .A2(n87), .ZN(quotient[5]) );
  nr02d0 U181 ( .A1(nx_state), .A2(n84), .ZN(quotient[4]) );
  nr02d0 U182 ( .A1(nx_state), .A2(n81), .ZN(quotient[3]) );
  nr02d0 U183 ( .A1(nx_state), .A2(n78), .ZN(quotient[2]) );
  nr02d0 U184 ( .A1(nx_state), .A2(n75), .ZN(quotient[1]) );
  nr02d0 U185 ( .A1(nx_state), .A2(n91), .ZN(quotient[14]) );
  nr02d0 U186 ( .A1(nx_state), .A2(n88), .ZN(quotient[13]) );
  nr02d0 U187 ( .A1(nx_state), .A2(n85), .ZN(quotient[12]) );
  nr02d0 U188 ( .A1(nx_state), .A2(n82), .ZN(quotient[11]) );
  nr02d0 U189 ( .A1(nx_state), .A2(n79), .ZN(quotient[10]) );
  nr02d0 U190 ( .A1(nx_state), .A2(n72), .ZN(quotient[0]) );
  mx02d1 U191 ( .I0(temp_part_rem_6__7_), .I1(pr_6__7_), .S(n68), .Z(pr_7__8_)
         );
  mx02d1 U192 ( .I0(temp_part_rem_5__7_), .I1(pr_5__7_), .S(n69), .Z(pr_6__8_)
         );
  mx02d1 U193 ( .I0(temp_part_rem_4__7_), .I1(pr_4__7_), .S(n19), .Z(pr_5__8_)
         );
  nr02d0 U194 ( .A1(first_cyc), .A2(n97), .ZN(part_rem_0[7]) );
  nr02d0 U195 ( .A1(n98), .A2(first_cyc), .ZN(part_rem_0[6]) );
  nr02d0 U196 ( .A1(n99), .A2(first_cyc), .ZN(part_rem_0[5]) );
  nr02d0 U197 ( .A1(n100), .A2(first_cyc), .ZN(part_rem_0[4]) );
  nr02d0 U198 ( .A1(n101), .A2(first_cyc), .ZN(part_rem_0[3]) );
  nr02d0 U199 ( .A1(n102), .A2(first_cyc), .ZN(part_rem_0[2]) );
  nr02d0 U200 ( .A1(load_tc), .A2(first_cyc), .ZN(complete) );
  oai21d1 U201 ( .B1(n60), .B2(n73), .A(n114), .ZN(N55) );
  aoi22d1 U202 ( .A1(a[8]), .A2(start), .B1(n71), .B2(final_quotient[0]), .ZN(
        n114) );
  oai21d1 U203 ( .B1(n60), .B2(n74), .A(n115), .ZN(N54) );
  aoi22d1 U204 ( .A1(a[16]), .A2(start), .B1(n71), .B2(final_quotient[8]), 
        .ZN(n115) );
  oai22d1 U205 ( .A1(n61), .A2(n75), .B1(n68), .B2(n113), .ZN(N53) );
  oai21d1 U206 ( .B1(n60), .B2(n76), .A(n116), .ZN(N52) );
  aoi22d1 U207 ( .A1(a[9]), .A2(start), .B1(n71), .B2(final_quotient[1]), .ZN(
        n116) );
  oai21d1 U208 ( .B1(n60), .B2(n77), .A(n117), .ZN(N51) );
  aoi22d1 U209 ( .A1(a[17]), .A2(start), .B1(n71), .B2(final_quotient[9]), 
        .ZN(n117) );
  oai22d1 U210 ( .A1(n61), .A2(n78), .B1(n69), .B2(n113), .ZN(N50) );
  oai21d1 U211 ( .B1(n60), .B2(n79), .A(n118), .ZN(N49) );
  aoi22d1 U212 ( .A1(a[10]), .A2(start), .B1(n71), .B2(final_quotient[2]), 
        .ZN(n118) );
  oai21d1 U213 ( .B1(n60), .B2(n80), .A(n119), .ZN(N48) );
  aoi22d1 U214 ( .A1(a[18]), .A2(start), .B1(n71), .B2(final_quotient[10]), 
        .ZN(n119) );
  oai22d1 U215 ( .A1(n60), .A2(n81), .B1(n19), .B2(n113), .ZN(N47) );
  oai21d1 U216 ( .B1(n60), .B2(n82), .A(n120), .ZN(N46) );
  aoi22d1 U217 ( .A1(a[11]), .A2(start), .B1(n71), .B2(final_quotient[3]), 
        .ZN(n120) );
  oai21d1 U218 ( .B1(n60), .B2(n83), .A(n121), .ZN(N45) );
  aoi22d1 U219 ( .A1(a[19]), .A2(start), .B1(n71), .B2(final_quotient[11]), 
        .ZN(n121) );
  oai22d1 U220 ( .A1(n60), .A2(n84), .B1(n70), .B2(n113), .ZN(N44) );
  oai21d1 U221 ( .B1(n59), .B2(n85), .A(n122), .ZN(N43) );
  aoi22d1 U222 ( .A1(a[12]), .A2(start), .B1(n71), .B2(final_quotient[4]), 
        .ZN(n122) );
  oai21d1 U223 ( .B1(n59), .B2(n86), .A(n123), .ZN(N42) );
  aoi22d1 U224 ( .A1(a[20]), .A2(start), .B1(n71), .B2(final_quotient[12]), 
        .ZN(n123) );
  oai21d1 U225 ( .B1(n59), .B2(n87), .A(n124), .ZN(N41) );
  aoi22d1 U226 ( .A1(a[5]), .A2(start), .B1(n71), .B2(n53), .ZN(n124) );
  oai21d1 U227 ( .B1(n59), .B2(n88), .A(n125), .ZN(N40) );
  aoi22d1 U228 ( .A1(a[13]), .A2(start), .B1(n71), .B2(final_quotient[5]), 
        .ZN(n125) );
  oai21d1 U229 ( .B1(n59), .B2(n89), .A(n126), .ZN(N39) );
  aoi22d1 U230 ( .A1(a[21]), .A2(start), .B1(n71), .B2(final_quotient[13]), 
        .ZN(n126) );
  oai21d1 U231 ( .B1(n59), .B2(n90), .A(n127), .ZN(N38) );
  aoi22d1 U232 ( .A1(a[6]), .A2(start), .B1(n71), .B2(n54), .ZN(n127) );
  oai21d1 U233 ( .B1(n59), .B2(n91), .A(n128), .ZN(N37) );
  aoi22d1 U234 ( .A1(a[14]), .A2(start), .B1(n71), .B2(final_quotient[6]), 
        .ZN(n128) );
  oai21d1 U235 ( .B1(n59), .B2(n92), .A(n129), .ZN(N36) );
  aoi22d1 U236 ( .A1(a[22]), .A2(start), .B1(n71), .B2(final_quotient[14]), 
        .ZN(n129) );
  oai21d1 U237 ( .B1(n59), .B2(n93), .A(n130), .ZN(N35) );
  aoi22d1 U238 ( .A1(a[7]), .A2(start), .B1(n71), .B2(n55), .ZN(n130) );
  oai21d1 U239 ( .B1(n58), .B2(n94), .A(n131), .ZN(N34) );
  aoi22d1 U240 ( .A1(a[15]), .A2(start), .B1(n71), .B2(final_quotient[7]), 
        .ZN(n131) );
  oai22d1 U241 ( .A1(n61), .A2(n95), .B1(n113), .B2(n94), .ZN(N33) );
  nd02d0 U242 ( .A1(n61), .A2(U_COUNT_load_n), .ZN(n113) );
  aoi22d1 U243 ( .A1(n47), .A2(pr_7__7_), .B1(n134), .B2(temp_part_rem_7__7_), 
        .ZN(n132) );
  aoi22d1 U244 ( .A1(n47), .A2(pr_7__6_), .B1(n134), .B2(temp_part_rem_7__6_), 
        .ZN(n135) );
  aoi22d1 U245 ( .A1(n47), .A2(pr_7__5_), .B1(n134), .B2(temp_part_rem_7__5_), 
        .ZN(n136) );
  aoi22d1 U246 ( .A1(n47), .A2(pr_7__4_), .B1(n134), .B2(temp_part_rem_7__4_), 
        .ZN(n137) );
  aoi22d1 U247 ( .A1(n133), .A2(pr_7__3_), .B1(n134), .B2(temp_part_rem_7__3_), 
        .ZN(n138) );
  aoi22d1 U248 ( .A1(n133), .A2(pr_7__2_), .B1(n134), .B2(temp_part_rem_7__2_), 
        .ZN(n139) );
  aoi22d1 U249 ( .A1(n133), .A2(n29), .B1(n134), .B2(temp_part_rem_7__1_), 
        .ZN(n140) );
  aoi22d1 U250 ( .A1(n133), .A2(a_in_temp0[7]), .B1(n134), .B2(
        temp_part_rem_7__0_), .ZN(n141) );
  oai21d1 U251 ( .B1(n59), .B2(n96), .A(U_COUNT_load_n), .ZN(N24) );
  nd12d0 U252 ( .A1(load_tc), .A2(U_COUNT_load_n), .ZN(hold_n) );
endmodule


module mean_calc_1_DW01_inc_0_DW01_inc_6 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ah01d1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ah01d1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ah01d1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ah01d1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ah01d1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ah01d1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  inv0d0 U1 ( .I(A[0]), .ZN(SUM[0]) );
  xr02d1 U2 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
endmodule


module mean_calc_1_DW01_add_8_DW01_add_42 ( A, B, CI, SUM, CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [17:2] carry;

  ad01d0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ad01d0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ad01d0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ad01d0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ad01d0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ad01d0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ad01d0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  an02d1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  nd02d1 U2 ( .A1(n8), .A2(A[24]), .ZN(n9) );
  xn02d1 U3 ( .A1(A[25]), .A2(n9), .ZN(SUM[25]) );
  an02d1 U4 ( .A1(carry[17]), .A2(A[17]), .Z(n2) );
  an02d1 U5 ( .A1(n2), .A2(A[18]), .Z(n3) );
  an02d1 U6 ( .A1(n3), .A2(A[19]), .Z(n4) );
  an02d1 U7 ( .A1(n4), .A2(A[20]), .Z(n5) );
  an02d1 U8 ( .A1(n5), .A2(A[21]), .Z(n6) );
  an02d1 U9 ( .A1(n6), .A2(A[22]), .Z(n7) );
  an02d1 U10 ( .A1(n7), .A2(A[23]), .Z(n8) );
  xr02d1 U11 ( .A1(A[24]), .A2(n8), .Z(SUM[24]) );
  xr02d1 U12 ( .A1(A[23]), .A2(n7), .Z(SUM[23]) );
  xr02d1 U13 ( .A1(A[22]), .A2(n6), .Z(SUM[22]) );
  xr02d1 U14 ( .A1(A[21]), .A2(n5), .Z(SUM[21]) );
  xr02d1 U15 ( .A1(A[20]), .A2(n4), .Z(SUM[20]) );
  xr02d1 U16 ( .A1(A[19]), .A2(n3), .Z(SUM[19]) );
  xr02d1 U17 ( .A1(A[18]), .A2(n2), .Z(SUM[18]) );
  xr02d1 U18 ( .A1(A[17]), .A2(carry[17]), .Z(SUM[17]) );
  xr02d1 U19 ( .A1(A[0]), .A2(B[0]), .Z(SUM[0]) );
endmodule


module mean_calc_1 ( clk, reset_n, start, eeg, start_div, complete_div, mean, 
        count );
  input [17:0] eeg;
  output [17:0] mean;
  output [7:0] count;
  input clk, reset_n, start, start_div;
  output complete_div;
  wire   start_div_d, n_1_net__7_, n_1_net__6_, n_1_net__5_, n_1_net__4_,
         n_1_net__3_, n_1_net__2_, n_1_net__1_, n_1_net__0_, N5, N6, N7, N8,
         N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22,
         N23, N24, N25, N26, N27, N28, N29, N30, N34, N35, N36, N37, N38, N39,
         N40, N41, n1, n2, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16;
  wire   [22:0] a;
  wire   [24:0] sum;
  assign mean[0] = 1'b0;
  assign mean[1] = 1'b0;

  aor22d1 U3 ( .A1(count[7]), .A2(n64), .B1(n60), .B2(N41), .Z(n130) );
  aor22d1 U4 ( .A1(count[6]), .A2(n61), .B1(N40), .B2(n60), .Z(n129) );
  aor22d1 U5 ( .A1(count[5]), .A2(n61), .B1(N39), .B2(n60), .Z(n128) );
  aor22d1 U6 ( .A1(count[4]), .A2(n62), .B1(N38), .B2(n60), .Z(n127) );
  aor22d1 U7 ( .A1(count[3]), .A2(n62), .B1(N37), .B2(n60), .Z(n126) );
  aor22d1 U8 ( .A1(count[2]), .A2(n62), .B1(N36), .B2(n60), .Z(n125) );
  aor22d1 U9 ( .A1(count[1]), .A2(n63), .B1(N35), .B2(n60), .Z(n124) );
  aor22d1 U10 ( .A1(count[0]), .A2(n63), .B1(N34), .B2(n59), .Z(n123) );
  aor22d1 U11 ( .A1(mean[17]), .A2(n63), .B1(N30), .B2(n59), .Z(n122) );
  aor22d1 U12 ( .A1(n70), .A2(sum[24]), .B1(a[22]), .B2(n67), .Z(n121) );
  aor22d1 U13 ( .A1(n65), .A2(sum[24]), .B1(N29), .B2(n59), .Z(n120) );
  aor22d1 U14 ( .A1(n70), .A2(sum[23]), .B1(a[21]), .B2(n67), .Z(n119) );
  aor22d1 U15 ( .A1(n65), .A2(sum[23]), .B1(N28), .B2(n59), .Z(n118) );
  aor22d1 U16 ( .A1(n70), .A2(sum[22]), .B1(a[20]), .B2(n67), .Z(n117) );
  aor22d1 U17 ( .A1(n65), .A2(sum[22]), .B1(N27), .B2(n59), .Z(n116) );
  aor22d1 U18 ( .A1(n70), .A2(sum[21]), .B1(a[19]), .B2(n67), .Z(n115) );
  aor22d1 U19 ( .A1(n65), .A2(sum[21]), .B1(N26), .B2(n59), .Z(n114) );
  aor22d1 U20 ( .A1(n70), .A2(sum[20]), .B1(a[18]), .B2(n67), .Z(n113) );
  aor22d1 U21 ( .A1(n65), .A2(sum[20]), .B1(N25), .B2(n59), .Z(n112) );
  aor22d1 U22 ( .A1(n70), .A2(sum[19]), .B1(a[17]), .B2(n67), .Z(n111) );
  aor22d1 U23 ( .A1(n1), .A2(sum[19]), .B1(N24), .B2(n59), .Z(n110) );
  aor22d1 U24 ( .A1(n70), .A2(sum[18]), .B1(a[16]), .B2(n67), .Z(n109) );
  aor22d1 U25 ( .A1(n1), .A2(sum[18]), .B1(N23), .B2(n59), .Z(n108) );
  aor22d1 U26 ( .A1(n70), .A2(sum[17]), .B1(a[15]), .B2(n67), .Z(n107) );
  aor22d1 U27 ( .A1(n65), .A2(sum[17]), .B1(N22), .B2(n58), .Z(n106) );
  aor22d1 U28 ( .A1(n70), .A2(sum[16]), .B1(a[14]), .B2(n67), .Z(n105) );
  aor22d1 U29 ( .A1(n1), .A2(sum[16]), .B1(N21), .B2(n58), .Z(n104) );
  aor22d1 U30 ( .A1(n69), .A2(sum[15]), .B1(a[13]), .B2(n66), .Z(n103) );
  aor22d1 U31 ( .A1(n1), .A2(sum[15]), .B1(N20), .B2(n58), .Z(n102) );
  aor22d1 U32 ( .A1(n69), .A2(sum[14]), .B1(a[12]), .B2(n66), .Z(n101) );
  aor22d1 U33 ( .A1(n1), .A2(sum[14]), .B1(N19), .B2(n58), .Z(n100) );
  aor22d1 U34 ( .A1(n69), .A2(sum[13]), .B1(a[11]), .B2(n66), .Z(n99) );
  aor22d1 U35 ( .A1(n65), .A2(sum[13]), .B1(N18), .B2(n58), .Z(n98) );
  aor22d1 U36 ( .A1(n69), .A2(sum[12]), .B1(a[10]), .B2(n66), .Z(n97) );
  aor22d1 U37 ( .A1(n1), .A2(sum[12]), .B1(N17), .B2(n58), .Z(n96) );
  aor22d1 U38 ( .A1(n68), .A2(sum[11]), .B1(a[9]), .B2(n66), .Z(n95) );
  aor22d1 U39 ( .A1(n1), .A2(sum[11]), .B1(N16), .B2(n58), .Z(n94) );
  aor22d1 U40 ( .A1(n68), .A2(sum[10]), .B1(a[8]), .B2(n66), .Z(n93) );
  aor22d1 U41 ( .A1(n1), .A2(sum[10]), .B1(N15), .B2(n58), .Z(n92) );
  aor22d1 U42 ( .A1(n68), .A2(sum[9]), .B1(a[7]), .B2(n66), .Z(n91) );
  aor22d1 U43 ( .A1(n65), .A2(sum[9]), .B1(N14), .B2(n58), .Z(n90) );
  aor22d1 U44 ( .A1(n68), .A2(sum[8]), .B1(a[6]), .B2(n66), .Z(n89) );
  aor22d1 U45 ( .A1(n65), .A2(sum[8]), .B1(N13), .B2(n57), .Z(n88) );
  aor22d1 U46 ( .A1(n70), .A2(sum[7]), .B1(a[5]), .B2(n66), .Z(n87) );
  aor22d1 U48 ( .A1(n65), .A2(sum[7]), .B1(N12), .B2(n57), .Z(n86) );
  aor22d1 U49 ( .A1(sum[6]), .A2(n1), .B1(N11), .B2(n57), .Z(n85) );
  aor22d1 U50 ( .A1(sum[5]), .A2(n64), .B1(N10), .B2(n57), .Z(n84) );
  aor22d1 U51 ( .A1(sum[4]), .A2(n1), .B1(N9), .B2(n57), .Z(n83) );
  aor22d1 U52 ( .A1(sum[3]), .A2(n1), .B1(N8), .B2(n57), .Z(n82) );
  aor22d1 U53 ( .A1(sum[2]), .A2(n1), .B1(N7), .B2(n57), .Z(n81) );
  aor22d1 U54 ( .A1(sum[1]), .A2(n64), .B1(N6), .B2(n57), .Z(n80) );
  aor22d1 U55 ( .A1(sum[0]), .A2(n61), .B1(N5), .B2(n57), .Z(n79) );
  mean_calc_1_DW_div_seq_0_DW_div_seq_2 DW_div_seq_full ( .clk(clk), .rst_n(n2), .hold(1'b0), .start(start_div_d), .a({a[22:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .b({n_1_net__7_, n_1_net__6_, n_1_net__5_, n_1_net__4_, n_1_net__3_, 
        n_1_net__2_, n_1_net__1_, n_1_net__0_}), .complete(complete_div), 
        .quotient({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        mean[16:2]}), .remainder({SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16}) );
  mean_calc_1_DW01_inc_0_DW01_inc_6 add_71_S2 ( .A(count), .SUM({N41, N40, N39, 
        N38, N37, N36, N35, N34}) );
  mean_calc_1_DW01_add_8_DW01_add_42 add_65_S2 ( .A({mean[17], sum}), .B({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, eeg[16:0]}), .CI(1'b0), 
        .SUM({N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5}) );
  dfcrq1 a_reg_5_ ( .D(n87), .CP(clk), .CDN(n2), .Q(a[5]) );
  dfcrq1 a_reg_6_ ( .D(n89), .CP(clk), .CDN(n2), .Q(a[6]) );
  dfcrq1 a_reg_7_ ( .D(n91), .CP(clk), .CDN(n2), .Q(a[7]) );
  dfcrq1 a_reg_8_ ( .D(n93), .CP(clk), .CDN(n2), .Q(a[8]) );
  dfcrq1 a_reg_9_ ( .D(n95), .CP(clk), .CDN(n2), .Q(a[9]) );
  dfcrq1 a_reg_10_ ( .D(n97), .CP(clk), .CDN(n2), .Q(a[10]) );
  dfcrq1 a_reg_11_ ( .D(n99), .CP(clk), .CDN(n2), .Q(a[11]) );
  dfcrq1 a_reg_12_ ( .D(n101), .CP(clk), .CDN(n2), .Q(a[12]) );
  dfcrq1 a_reg_13_ ( .D(n103), .CP(clk), .CDN(n2), .Q(a[13]) );
  dfcrq1 a_reg_14_ ( .D(n105), .CP(clk), .CDN(n2), .Q(a[14]) );
  dfcrq1 a_reg_15_ ( .D(n107), .CP(clk), .CDN(n2), .Q(a[15]) );
  dfcrq1 a_reg_16_ ( .D(n109), .CP(clk), .CDN(n2), .Q(a[16]) );
  dfcrq1 a_reg_17_ ( .D(n111), .CP(clk), .CDN(n2), .Q(a[17]) );
  dfcrq1 a_reg_18_ ( .D(n113), .CP(clk), .CDN(n2), .Q(a[18]) );
  dfcrq1 a_reg_19_ ( .D(n115), .CP(clk), .CDN(n2), .Q(a[19]) );
  dfcrq1 a_reg_20_ ( .D(n117), .CP(clk), .CDN(n2), .Q(a[20]) );
  dfcrq1 a_reg_21_ ( .D(n119), .CP(clk), .CDN(n56), .Q(a[21]) );
  dfcrq1 a_reg_22_ ( .D(n121), .CP(clk), .CDN(n56), .Q(a[22]) );
  dfcrq1 sum_reg_25_ ( .D(n122), .CP(clk), .CDN(n56), .Q(mean[17]) );
  dfcrq1 sum_reg_24_ ( .D(n120), .CP(clk), .CDN(n56), .Q(sum[24]) );
  dfcrq1 sum_reg_23_ ( .D(n118), .CP(clk), .CDN(n2), .Q(sum[23]) );
  dfcrq1 total_count_reg_7_ ( .D(n130), .CP(clk), .CDN(n2), .Q(count[7]) );
  dfcrq1 sum_reg_22_ ( .D(n116), .CP(clk), .CDN(n2), .Q(sum[22]) );
  dfcrq1 sum_reg_21_ ( .D(n114), .CP(clk), .CDN(n2), .Q(sum[21]) );
  dfcrq1 sum_reg_20_ ( .D(n112), .CP(clk), .CDN(n2), .Q(sum[20]) );
  dfcrq1 total_count_reg_6_ ( .D(n129), .CP(clk), .CDN(n56), .Q(count[6]) );
  dfcrq1 sum_reg_19_ ( .D(n110), .CP(clk), .CDN(n2), .Q(sum[19]) );
  dfcrq1 sum_reg_18_ ( .D(n108), .CP(clk), .CDN(n2), .Q(sum[18]) );
  dfcrq1 total_count_reg_5_ ( .D(n128), .CP(clk), .CDN(n56), .Q(count[5]) );
  dfcrq1 sum_reg_17_ ( .D(n106), .CP(clk), .CDN(n2), .Q(sum[17]) );
  dfcrq1 total_count_reg_4_ ( .D(n127), .CP(clk), .CDN(n56), .Q(count[4]) );
  dfcrq1 sum_reg_16_ ( .D(n104), .CP(clk), .CDN(n2), .Q(sum[16]) );
  dfcrq1 start_div_d_reg ( .D(n70), .CP(clk), .CDN(n2), .Q(start_div_d) );
  dfcrq1 total_count_reg_3_ ( .D(n126), .CP(clk), .CDN(n56), .Q(count[3]) );
  dfcrq1 sum_reg_15_ ( .D(n102), .CP(clk), .CDN(n2), .Q(sum[15]) );
  dfcrq1 total_count_reg_2_ ( .D(n125), .CP(clk), .CDN(n56), .Q(count[2]) );
  dfcrq1 sum_reg_14_ ( .D(n100), .CP(clk), .CDN(n2), .Q(sum[14]) );
  dfcrq1 total_count_reg_1_ ( .D(n124), .CP(clk), .CDN(n56), .Q(count[1]) );
  dfcrq1 sum_reg_13_ ( .D(n98), .CP(clk), .CDN(n2), .Q(sum[13]) );
  dfcrq1 total_count_reg_0_ ( .D(n123), .CP(clk), .CDN(n56), .Q(count[0]) );
  dfcrq1 sum_reg_12_ ( .D(n96), .CP(clk), .CDN(n2), .Q(sum[12]) );
  dfcrq1 sum_reg_11_ ( .D(n94), .CP(clk), .CDN(n2), .Q(sum[11]) );
  dfcrq1 sum_reg_10_ ( .D(n92), .CP(clk), .CDN(n2), .Q(sum[10]) );
  dfcrq1 sum_reg_9_ ( .D(n90), .CP(clk), .CDN(n2), .Q(sum[9]) );
  dfcrq1 sum_reg_8_ ( .D(n88), .CP(clk), .CDN(n2), .Q(sum[8]) );
  dfcrq1 sum_reg_7_ ( .D(n86), .CP(clk), .CDN(n2), .Q(sum[7]) );
  dfcrq1 sum_reg_6_ ( .D(n85), .CP(clk), .CDN(n2), .Q(sum[6]) );
  dfcrq1 sum_reg_5_ ( .D(n84), .CP(clk), .CDN(n2), .Q(sum[5]) );
  dfcrq1 sum_reg_4_ ( .D(n83), .CP(clk), .CDN(n2), .Q(sum[4]) );
  dfcrq1 sum_reg_3_ ( .D(n82), .CP(clk), .CDN(n2), .Q(sum[3]) );
  dfcrq1 sum_reg_2_ ( .D(n81), .CP(clk), .CDN(n56), .Q(sum[2]) );
  dfcrq1 sum_reg_1_ ( .D(n80), .CP(clk), .CDN(n2), .Q(sum[1]) );
  dfcrq1 sum_reg_0_ ( .D(n79), .CP(clk), .CDN(n56), .Q(sum[0]) );
  inv0d1 U47 ( .I(start), .ZN(n1) );
  inv0d0 U56 ( .I(n68), .ZN(n67) );
  inv0d0 U63 ( .I(n69), .ZN(n66) );
  bufbd4 U64 ( .I(reset_n), .Z(n2) );
  buffd1 U65 ( .I(reset_n), .Z(n56) );
  buffd1 U66 ( .I(start_div), .Z(n69) );
  buffd1 U67 ( .I(start_div), .Z(n68) );
  buffd1 U68 ( .I(start_div), .Z(n70) );
  inv0d0 U69 ( .I(n62), .ZN(n59) );
  inv0d0 U70 ( .I(n63), .ZN(n58) );
  inv0d0 U71 ( .I(n64), .ZN(n57) );
  inv0d0 U72 ( .I(n61), .ZN(n60) );
  inv0d0 U73 ( .I(n75), .ZN(n77) );
  buffd1 U74 ( .I(n1), .Z(n62) );
  buffd1 U75 ( .I(n1), .Z(n63) );
  buffd1 U76 ( .I(n1), .Z(n64) );
  buffd1 U77 ( .I(n1), .Z(n61) );
  buffd1 U78 ( .I(n1), .Z(n65) );
  inv0d0 U79 ( .I(count[0]), .ZN(n_1_net__0_) );
  nd12d0 U80 ( .A1(count[1]), .A2(n_1_net__0_), .ZN(n71) );
  oaim21d1 U81 ( .B1(count[0]), .B2(count[1]), .A(n71), .ZN(n_1_net__1_) );
  or02d0 U82 ( .A1(n71), .A2(count[2]), .Z(n72) );
  oaim21d1 U83 ( .B1(n71), .B2(count[2]), .A(n72), .ZN(n_1_net__2_) );
  or02d0 U84 ( .A1(n72), .A2(count[3]), .Z(n73) );
  oaim21d1 U85 ( .B1(n72), .B2(count[3]), .A(n73), .ZN(n_1_net__3_) );
  or02d0 U86 ( .A1(n73), .A2(count[4]), .Z(n74) );
  oaim21d1 U87 ( .B1(n73), .B2(count[4]), .A(n74), .ZN(n_1_net__4_) );
  nr02d0 U88 ( .A1(n74), .A2(count[5]), .ZN(n75) );
  oaim21d1 U89 ( .B1(n74), .B2(count[5]), .A(n77), .ZN(n_1_net__5_) );
  xr02d1 U90 ( .A1(count[6]), .A2(n75), .Z(n_1_net__6_) );
  nr02d0 U91 ( .A1(count[6]), .A2(n77), .ZN(n76) );
  xr02d1 U92 ( .A1(count[7]), .A2(n76), .Z(n_1_net__7_) );
endmodule


module std_calc_0_DW01_add_0_DW01_add_18 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   carry_10_, carry_9_, carry_8_, carry_7_, carry_6_, carry_5_, carry_4_,
         carry_3_, carry_2_, n1, n2;

  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry_9_), .CO(carry_10_), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry_8_), .CO(carry_9_), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry_7_), .CO(carry_8_), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry_6_), .CO(carry_7_), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry_5_), .CO(carry_6_), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry_4_), .CO(carry_5_), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry_3_), .CO(carry_4_), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry_2_), .CO(carry_3_), .S(SUM[2])
         );
  inv0d0 U1 ( .I(A[0]), .ZN(SUM[0]) );
  or02d1 U2 ( .A1(A[0]), .A2(A[1]), .Z(carry_2_) );
  xn02d1 U3 ( .A1(A[0]), .A2(A[1]), .ZN(SUM[1]) );
  oaim21d1 U4 ( .B1(n1), .B2(A[11]), .A(n2), .ZN(CO) );
  oai21d1 U5 ( .B1(A[11]), .B2(n1), .A(B[11]), .ZN(n2) );
  cg01d0 U6 ( .A(carry_10_), .B(A[10]), .CI(B[10]), .CO(n1) );
endmodule


module std_calc_0_DW01_add_1_DW01_add_19 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   carry_10_, carry_9_, carry_8_, carry_7_, carry_6_, carry_5_, carry_4_,
         carry_3_, carry_2_, n2, n3;

  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry_9_), .CO(carry_10_), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry_8_), .CO(carry_9_), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry_7_), .CO(carry_8_), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry_6_), .CO(carry_7_), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry_5_), .CO(carry_6_), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry_4_), .CO(carry_5_), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry_3_), .CO(carry_4_), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry_2_), .CO(carry_3_), .S(SUM[2])
         );
  inv0d0 U1 ( .I(A[0]), .ZN(SUM[0]) );
  cg01d1 U2 ( .A(carry_10_), .B(A[10]), .CI(B[10]), .CO(n2) );
  or02d1 U3 ( .A1(A[0]), .A2(A[1]), .Z(carry_2_) );
  xn02d1 U4 ( .A1(A[0]), .A2(A[1]), .ZN(SUM[1]) );
  oaim21d1 U5 ( .B1(n2), .B2(A[11]), .A(n3), .ZN(CO) );
  oai21d1 U6 ( .B1(A[11]), .B2(n2), .A(B[11]), .ZN(n3) );
endmodule


module std_calc_0_DW01_add_2_DW01_add_20 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   carry_10_, carry_9_, carry_8_, carry_7_, carry_6_, carry_5_, carry_4_,
         carry_3_, carry_2_, n2, n3;

  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry_9_), .CO(carry_10_), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry_8_), .CO(carry_9_), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry_7_), .CO(carry_8_), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry_6_), .CO(carry_7_), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry_5_), .CO(carry_6_), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry_4_), .CO(carry_5_), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry_3_), .CO(carry_4_), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry_2_), .CO(carry_3_), .S(SUM[2])
         );
  inv0d0 U1 ( .I(A[0]), .ZN(SUM[0]) );
  or02d0 U2 ( .A1(A[0]), .A2(A[1]), .Z(carry_2_) );
  xn02d1 U3 ( .A1(A[0]), .A2(A[1]), .ZN(SUM[1]) );
  oaim21d1 U4 ( .B1(n2), .B2(A[11]), .A(n3), .ZN(CO) );
  oai21d1 U5 ( .B1(A[11]), .B2(n2), .A(B[11]), .ZN(n3) );
  cg01d0 U6 ( .A(carry_10_), .B(A[10]), .CI(B[10]), .CO(n2) );
endmodule


module std_calc_0_DW01_add_3_DW01_add_21 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   carry_10_, carry_9_, carry_8_, carry_7_, carry_6_, carry_5_, carry_4_,
         carry_3_, carry_2_, n1, n2;

  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry_9_), .CO(carry_10_), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry_8_), .CO(carry_9_), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry_7_), .CO(carry_8_), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry_6_), .CO(carry_7_), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry_5_), .CO(carry_6_), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry_4_), .CO(carry_5_), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry_3_), .CO(carry_4_), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry_2_), .CO(carry_3_), .S(SUM[2])
         );
  or02d0 U1 ( .A1(A[0]), .A2(A[1]), .Z(carry_2_) );
  xn02d1 U2 ( .A1(A[0]), .A2(A[1]), .ZN(SUM[1]) );
  oaim21d1 U3 ( .B1(n1), .B2(A[11]), .A(n2), .ZN(CO) );
  oai21d1 U4 ( .B1(A[11]), .B2(n1), .A(B[11]), .ZN(n2) );
  cg01d0 U5 ( .A(carry_10_), .B(A[10]), .CI(B[10]), .CO(n1) );
endmodule


module std_calc_0_DW_sqrt_seq_0_DW_sqrt_seq_1 ( clk, rst_n, hold, start, a, 
        complete, root );
  input [19:0] a;
  output [9:0] root;
  input clk, rst_n, hold, start;
  output complete;
  wire   count_ov_n, first_cyc, pr_3__11_, pr_3__10_, pr_3__9_, pr_3__8_,
         pr_3__7_, pr_3__6_, pr_3__5_, pr_3__4_, pr_2__11_, pr_2__10_,
         pr_2__9_, pr_2__8_, pr_2__7_, pr_2__6_, pr_2__5_, pr_2__4_, pr_1__11_,
         pr_1__10_, pr_0__11_, pr_0__10_, b_shf_in_3__0_, b_shf_in_2__0_,
         b_shf_in_1__1_, b_shf_in_1__0_, b_shf_in_0__1_, b_shf_in_0__0_,
         temp_part_rem_3__9_, temp_part_rem_3__8_, temp_part_rem_3__7_,
         temp_part_rem_3__6_, temp_part_rem_3__5_, temp_part_rem_3__4_,
         temp_part_rem_3__3_, temp_part_rem_3__2_, temp_part_rem_3__1_,
         temp_part_rem_2__9_, temp_part_rem_2__8_, temp_part_rem_2__7_,
         temp_part_rem_2__6_, temp_part_rem_2__5_, temp_part_rem_2__4_,
         temp_part_rem_2__3_, temp_part_rem_2__2_, temp_part_rem_2__1_,
         temp_part_rem_2__0_, temp_part_rem_1__9_, temp_part_rem_1__8_,
         temp_part_rem_1__7_, temp_part_rem_1__6_, temp_part_rem_1__5_,
         temp_part_rem_1__4_, temp_part_rem_1__3_, temp_part_rem_1__2_,
         temp_part_rem_1__1_, temp_part_rem_1__0_, temp_part_rem_0__9_,
         temp_part_rem_0__8_, temp_part_rem_0__7_, temp_part_rem_0__6_,
         temp_part_rem_0__5_, temp_part_rem_0__4_, temp_part_rem_0__3_,
         temp_part_rem_0__2_, temp_part_rem_0__1_, temp_part_rem_0__0_, N16,
         N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N29, N30, N31, N32,
         N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46,
         N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N60, N61,
         U_COUNT_tercnt_d, U_COUNT_tercnt_cmp_bus_0_, U_COUNT_next_count_2_,
         U_COUNT_enable, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n130, n131, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9;
  wire   [1:0] a_in_temp0;
  wire   [3:0] b_in_temp0;
  wire   [11:2] part_rt_reg;
  wire   [9:0] part_rem_reg;
  wire   [3:0] temp_rt_rev;
  wire   [11:0] part_rt_inv;
  wire   [2:0] U_COUNT_count_inc;
  wire   [2:0] U_COUNT_count;

  std_calc_0_DW01_add_0_DW01_add_18 U_ADD_0 ( .A({pr_0__11_, pr_0__10_, n31, 
        n30, n29, n28, n27, n26, n25, n21, b_in_temp0[0], a_in_temp0[0]}), .B(
        {part_rt_inv[2], part_rt_inv[3], part_rt_inv[4], part_rt_inv[11:5], 
        1'b1, 1'b1}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, temp_part_rem_0__9_, temp_part_rem_0__8_, 
        temp_part_rem_0__7_, temp_part_rem_0__6_, temp_part_rem_0__5_, 
        temp_part_rem_0__4_, temp_part_rem_0__3_, temp_part_rem_0__2_, 
        temp_part_rem_0__1_, temp_part_rem_0__0_}), .CO(temp_rt_rev[3]) );
  std_calc_0_DW01_add_1_DW01_add_19 U_ADD_1 ( .A({pr_1__11_, pr_1__10_, n17, 
        n16, n15, n14, n13, n12, n23, n18, b_in_temp0[1], a_in_temp0[1]}), .B(
        {part_rt_inv[3], part_rt_inv[4], part_rt_inv[11:5], n95, 1'b1, 1'b1}), 
        .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        temp_part_rem_1__9_, temp_part_rem_1__8_, temp_part_rem_1__7_, 
        temp_part_rem_1__6_, temp_part_rem_1__5_, temp_part_rem_1__4_, 
        temp_part_rem_1__3_, temp_part_rem_1__2_, temp_part_rem_1__1_, 
        temp_part_rem_1__0_}), .CO(temp_rt_rev[2]) );
  std_calc_0_DW01_add_2_DW01_add_20 U_ADD_2 ( .A({pr_2__11_, pr_2__10_, 
        pr_2__9_, pr_2__8_, pr_2__7_, pr_2__6_, pr_2__5_, pr_2__4_, n24, n19, 
        b_in_temp0[2], root[9]}), .B({part_rt_inv[4], part_rt_inv[11:5], n95, 
        n94, 1'b1, 1'b1}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, temp_part_rem_2__9_, temp_part_rem_2__8_, 
        temp_part_rem_2__7_, temp_part_rem_2__6_, temp_part_rem_2__5_, 
        temp_part_rem_2__4_, temp_part_rem_2__3_, temp_part_rem_2__2_, 
        temp_part_rem_2__1_, temp_part_rem_2__0_}), .CO(temp_rt_rev[1]) );
  std_calc_0_DW01_add_3_DW01_add_21 U_ADD_3 ( .A({pr_3__11_, pr_3__10_, 
        pr_3__9_, pr_3__8_, pr_3__7_, pr_3__6_, pr_3__5_, pr_3__4_, n22, n20, 
        b_in_temp0[3], root[8]}), .B({part_rt_inv[11:5], n95, n94, n93, 1'b1, 
        1'b1}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, temp_part_rem_3__9_, temp_part_rem_3__8_, 
        temp_part_rem_3__7_, temp_part_rem_3__6_, temp_part_rem_3__5_, 
        temp_part_rem_3__4_, temp_part_rem_3__3_, temp_part_rem_3__2_, 
        temp_part_rem_3__1_, SYNOPSYS_UNCONNECTED_9}), .CO(temp_rt_rev[0]) );
  dfcrq1 a_shf_reg_reg_3__2_ ( .D(N50), .CP(clk), .CDN(n36), .Q(root[0]) );
  dfcrq1 a_shf_reg_reg_3__1_ ( .D(N49), .CP(clk), .CDN(n36), .Q(root[4]) );
  dfcrq1 a_shf_reg_reg_3__0_ ( .D(N48), .CP(clk), .CDN(n36), .Q(root[8]) );
  dfcrq1 a_shf_reg_reg_2__2_ ( .D(N47), .CP(clk), .CDN(n35), .Q(root[1]) );
  dfcrq1 a_shf_reg_reg_2__1_ ( .D(N46), .CP(clk), .CDN(n35), .Q(root[5]) );
  dfcrq1 a_shf_reg_reg_2__0_ ( .D(N45), .CP(clk), .CDN(n35), .Q(root[9]) );
  dfcrq1 a_shf_reg_reg_1__2_ ( .D(N44), .CP(clk), .CDN(n35), .Q(root[2]) );
  dfcrq1 a_shf_reg_reg_1__1_ ( .D(N43), .CP(clk), .CDN(n35), .Q(root[6]) );
  dfcrq1 a_shf_reg_reg_1__0_ ( .D(N42), .CP(clk), .CDN(n35), .Q(a_in_temp0[1])
         );
  dfcrq1 a_shf_reg_reg_0__2_ ( .D(N41), .CP(clk), .CDN(n35), .Q(root[3]) );
  dfcrq1 a_shf_reg_reg_0__1_ ( .D(N40), .CP(clk), .CDN(n35), .Q(root[7]) );
  dfcrq1 a_shf_reg_reg_0__0_ ( .D(N39), .CP(clk), .CDN(n35), .Q(a_in_temp0[0])
         );
  dfcrq1 start_reg_reg ( .D(N16), .CP(clk), .CDN(n35), .Q(first_cyc) );
  dfcrq1 part_rem_reg_reg_6_ ( .D(N23), .CP(clk), .CDN(n34), .Q(
        part_rem_reg[6]) );
  dfcrq1 part_rem_reg_reg_4_ ( .D(N21), .CP(clk), .CDN(n34), .Q(
        part_rem_reg[4]) );
  dfcrq1 part_rem_reg_reg_2_ ( .D(N19), .CP(clk), .CDN(n34), .Q(
        part_rem_reg[2]) );
  dfcrq1 part_rem_reg_reg_0_ ( .D(N17), .CP(clk), .CDN(n34), .Q(
        part_rem_reg[0]) );
  dfcrq1 part_rem_reg_reg_8_ ( .D(N25), .CP(clk), .CDN(n34), .Q(
        part_rem_reg[8]) );
  dfcrq1 part_rt_reg_reg_5_ ( .D(N32), .CP(clk), .CDN(n34), .Q(part_rt_reg[5])
         );
  dfcrq1 part_rt_reg_reg_9_ ( .D(N36), .CP(clk), .CDN(n34), .Q(part_rt_reg[9])
         );
  dfcrq1 part_rt_reg_reg_4_ ( .D(N31), .CP(clk), .CDN(n34), .Q(part_rt_reg[4])
         );
  dfcrq1 part_rt_reg_reg_8_ ( .D(N35), .CP(clk), .CDN(n34), .Q(part_rt_reg[8])
         );
  dfcrq1 part_rt_reg_reg_3_ ( .D(N30), .CP(clk), .CDN(n34), .Q(part_rt_reg[3])
         );
  dfcrq1 part_rt_reg_reg_7_ ( .D(N34), .CP(clk), .CDN(n33), .Q(part_rt_reg[7])
         );
  dfcrq1 part_rt_reg_reg_11_ ( .D(N38), .CP(clk), .CDN(n33), .Q(
        part_rt_reg[11]) );
  dfcrq1 part_rt_reg_reg_2_ ( .D(N29), .CP(clk), .CDN(n33), .Q(part_rt_reg[2])
         );
  dfcrq1 part_rt_reg_reg_6_ ( .D(N33), .CP(clk), .CDN(n33), .Q(part_rt_reg[6])
         );
  dfcrq1 part_rt_reg_reg_10_ ( .D(N37), .CP(clk), .CDN(n33), .Q(
        part_rt_reg[10]) );
  dfcrq1 b_shf_reg_reg_3__1_ ( .D(N61), .CP(clk), .CDN(n33), .Q(b_shf_in_3__0_) );
  dfcrq1 b_shf_reg_reg_3__0_ ( .D(N60), .CP(clk), .CDN(n33), .Q(b_in_temp0[3])
         );
  dfcrq1 part_rem_reg_reg_1_ ( .D(N18), .CP(clk), .CDN(n33), .Q(
        part_rem_reg[1]) );
  dfcrq1 part_rem_reg_reg_9_ ( .D(N26), .CP(clk), .CDN(n33), .Q(
        part_rem_reg[9]) );
  dfcrq1 b_shf_reg_reg_2__1_ ( .D(N58), .CP(clk), .CDN(n33), .Q(b_shf_in_2__0_) );
  dfcrq1 b_shf_reg_reg_2__0_ ( .D(N57), .CP(clk), .CDN(n32), .Q(b_in_temp0[2])
         );
  dfcrq1 part_rem_reg_reg_3_ ( .D(N20), .CP(clk), .CDN(n32), .Q(
        part_rem_reg[3]) );
  dfcrq1 b_shf_reg_reg_1__2_ ( .D(N56), .CP(clk), .CDN(n32), .Q(b_shf_in_1__1_) );
  dfcrq1 b_shf_reg_reg_1__1_ ( .D(N55), .CP(clk), .CDN(n32), .Q(b_shf_in_1__0_) );
  dfcrq1 b_shf_reg_reg_1__0_ ( .D(N54), .CP(clk), .CDN(n32), .Q(b_in_temp0[1])
         );
  dfcrq1 part_rem_reg_reg_5_ ( .D(N22), .CP(clk), .CDN(n32), .Q(
        part_rem_reg[5]) );
  dfcrq1 b_shf_reg_reg_0__2_ ( .D(N53), .CP(clk), .CDN(n32), .Q(b_shf_in_0__1_) );
  dfcrq1 b_shf_reg_reg_0__1_ ( .D(N52), .CP(clk), .CDN(n32), .Q(b_shf_in_0__0_) );
  dfcrq1 b_shf_reg_reg_0__0_ ( .D(N51), .CP(clk), .CDN(n32), .Q(b_in_temp0[0])
         );
  dfcrq1 part_rem_reg_reg_7_ ( .D(N24), .CP(clk), .CDN(n32), .Q(
        part_rem_reg[7]) );
  dfcrn1 U_COUNT_U2_1 ( .D(U_COUNT_tercnt_d), .CP(clk), .CDN(n36), .QN(
        count_ov_n) );
  dfcrq1 U_COUNT_U1_3_2 ( .D(U_COUNT_next_count_2_), .CP(clk), .CDN(n36), .Q(
        U_COUNT_count[2]) );
  dfcrq1 U_COUNT_U1_3_1 ( .D(n83), .CP(clk), .CDN(n36), .Q(U_COUNT_count[1])
         );
  dfcrq1 U_COUNT_U1_3_0 ( .D(U_COUNT_tercnt_cmp_bus_0_), .CP(clk), .CDN(n36), 
        .Q(U_COUNT_count[0]) );
  invbd2 U4 ( .I(n65), .ZN(n74) );
  bufbd3 U5 ( .I(temp_rt_rev[2]), .Z(n38) );
  inv0d1 U6 ( .I(n39), .ZN(n95) );
  invbd7 U7 ( .I(first_cyc), .ZN(n77) );
  an02d0 U8 ( .A1(part_rem_reg[0]), .A2(n77), .Z(n21) );
  an02d0 U9 ( .A1(part_rem_reg[1]), .A2(n77), .Z(n25) );
  an02d0 U10 ( .A1(part_rem_reg[2]), .A2(n77), .Z(n26) );
  an02d0 U11 ( .A1(part_rem_reg[3]), .A2(n77), .Z(n27) );
  an02d0 U12 ( .A1(part_rem_reg[4]), .A2(n77), .Z(n28) );
  an02d0 U13 ( .A1(part_rem_reg[5]), .A2(n77), .Z(n29) );
  an02d0 U14 ( .A1(part_rem_reg[6]), .A2(n77), .Z(n30) );
  an02d0 U15 ( .A1(part_rem_reg[7]), .A2(n77), .Z(n31) );
  inv0d1 U16 ( .I(part_rem_reg[8]), .ZN(n64) );
  inv0d1 U17 ( .I(part_rem_reg[9]), .ZN(n55) );
  buffd1 U18 ( .I(rst_n), .Z(n32) );
  buffd1 U19 ( .I(rst_n), .Z(n33) );
  buffd1 U20 ( .I(rst_n), .Z(n34) );
  buffd1 U21 ( .I(rst_n), .Z(n35) );
  buffd1 U22 ( .I(rst_n), .Z(n36) );
  inv0d2 U23 ( .I(n66), .ZN(n73) );
  inv0d1 U24 ( .I(temp_rt_rev[0]), .ZN(n78) );
  inv0d0 U25 ( .I(n38), .ZN(n94) );
  inv0d0 U26 ( .I(n37), .ZN(n93) );
  inv0d0 U27 ( .I(n80), .ZN(n83) );
  inv0d0 U28 ( .I(n43), .ZN(n41) );
  inv0d0 U29 ( .I(n45), .ZN(n40) );
  buffd3 U30 ( .I(temp_rt_rev[3]), .Z(n39) );
  buffd3 U31 ( .I(temp_rt_rev[1]), .Z(n37) );
  mx02d1 U32 ( .I0(n21), .I1(temp_part_rem_0__2_), .S(n39), .Z(n12) );
  mx02d1 U33 ( .I0(n25), .I1(temp_part_rem_0__3_), .S(n39), .Z(n13) );
  mx02d1 U34 ( .I0(n26), .I1(temp_part_rem_0__4_), .S(n39), .Z(n14) );
  mx02d1 U35 ( .I0(n27), .I1(temp_part_rem_0__5_), .S(n39), .Z(n15) );
  mx02d1 U36 ( .I0(n28), .I1(temp_part_rem_0__6_), .S(n39), .Z(n16) );
  mx02d1 U37 ( .I0(n29), .I1(temp_part_rem_0__7_), .S(n39), .Z(n17) );
  buffd1 U38 ( .I(n47), .Z(complete) );
  buffd1 U39 ( .I(n47), .Z(n43) );
  nd02d1 U40 ( .A1(n41), .A2(n79), .ZN(n130) );
  buffd1 U41 ( .I(n47), .Z(n45) );
  buffd1 U42 ( .I(n47), .Z(n44) );
  buffd1 U43 ( .I(n47), .Z(n46) );
  inv0d0 U44 ( .I(n109), .ZN(n90) );
  inv0d0 U45 ( .I(n107), .ZN(n86) );
  inv0d0 U46 ( .I(part_rem_reg[7]), .ZN(n49) );
  inv0d0 U47 ( .I(part_rem_reg[5]), .ZN(n51) );
  inv0d0 U48 ( .I(part_rem_reg[3]), .ZN(n53) );
  inv0d0 U49 ( .I(part_rem_reg[1]), .ZN(n57) );
  inv0d0 U50 ( .I(part_rem_reg[2]), .ZN(n70) );
  inv0d0 U51 ( .I(part_rem_reg[4]), .ZN(n72) );
  inv0d0 U52 ( .I(part_rem_reg[6]), .ZN(n76) );
  mx02d1 U53 ( .I0(a_in_temp0[0]), .I1(temp_part_rem_0__0_), .S(n39), .Z(n18)
         );
  mx02d1 U54 ( .I0(a_in_temp0[1]), .I1(temp_part_rem_1__0_), .S(n38), .Z(n19)
         );
  mx02d1 U55 ( .I0(root[9]), .I1(temp_part_rem_2__0_), .S(n37), .Z(n20) );
  inv0d0 U56 ( .I(part_rem_reg[0]), .ZN(n68) );
  mx02d1 U57 ( .I0(b_in_temp0[2]), .I1(temp_part_rem_2__1_), .S(n37), .Z(n22)
         );
  mx02d1 U58 ( .I0(b_in_temp0[0]), .I1(temp_part_rem_0__1_), .S(n39), .Z(n23)
         );
  mx02d1 U59 ( .I0(b_in_temp0[1]), .I1(temp_part_rem_1__1_), .S(n38), .Z(n24)
         );
  inv0d0 U60 ( .I(a[4]), .ZN(n128) );
  inv0d0 U61 ( .I(a[6]), .ZN(n127) );
  nd12d1 U62 ( .A1(complete), .A2(U_COUNT_count[0]), .ZN(n82) );
  inv0d0 U63 ( .I(U_COUNT_enable), .ZN(n47) );
  inv0d1 U64 ( .I(start), .ZN(n79) );
  inv0d0 U65 ( .I(b_shf_in_0__1_), .ZN(n113) );
  inv0d0 U66 ( .I(a[15]), .ZN(n119) );
  inv0d0 U67 ( .I(b_shf_in_1__1_), .ZN(n111) );
  inv0d0 U68 ( .I(a[13]), .ZN(n121) );
  inv0d0 U69 ( .I(a[19]), .ZN(n115) );
  inv0d0 U70 ( .I(b_in_temp0[2]), .ZN(n110) );
  inv0d0 U71 ( .I(a[17]), .ZN(n117) );
  inv0d0 U72 ( .I(b_in_temp0[3]), .ZN(n108) );
  inv0d0 U73 ( .I(a[14]), .ZN(n120) );
  inv0d0 U74 ( .I(a[12]), .ZN(n122) );
  inv0d0 U75 ( .I(a[18]), .ZN(n116) );
  inv0d0 U76 ( .I(root[9]), .ZN(n101) );
  inv0d0 U77 ( .I(a[10]), .ZN(n124) );
  inv0d0 U78 ( .I(a[16]), .ZN(n118) );
  inv0d0 U79 ( .I(root[8]), .ZN(n98) );
  inv0d0 U80 ( .I(a[8]), .ZN(n126) );
  inv0d0 U81 ( .I(part_rt_inv[9]), .ZN(n58) );
  inv0d0 U82 ( .I(part_rt_inv[7]), .ZN(n61) );
  inv0d0 U83 ( .I(part_rt_inv[8]), .ZN(n62) );
  inv0d0 U84 ( .I(part_rt_inv[10]), .ZN(n59) );
  inv0d0 U85 ( .I(part_rt_inv[6]), .ZN(n60) );
  nd02d1 U86 ( .A1(n87), .A2(n88), .ZN(N61) );
  nd02d1 U87 ( .A1(n85), .A2(start), .ZN(n87) );
  nd02d1 U88 ( .A1(n86), .A2(n43), .ZN(n88) );
  inv0d0 U89 ( .I(n125), .ZN(n85) );
  nd02d1 U90 ( .A1(n91), .A2(n92), .ZN(N58) );
  nd02d1 U91 ( .A1(n89), .A2(start), .ZN(n91) );
  nd02d1 U92 ( .A1(n90), .A2(complete), .ZN(n92) );
  inv0d0 U93 ( .I(n123), .ZN(n89) );
  inv0d0 U94 ( .I(U_COUNT_count[1]), .ZN(n84) );
  inv0d0 U95 ( .I(root[7]), .ZN(n105) );
  inv0d0 U96 ( .I(root[6]), .ZN(n103) );
  inv0d0 U97 ( .I(root[5]), .ZN(n100) );
  inv0d0 U98 ( .I(root[4]), .ZN(n97) );
  inv0d0 U99 ( .I(part_rt_reg[2]), .ZN(n106) );
  inv0d0 U100 ( .I(b_shf_in_0__0_), .ZN(n114) );
  inv0d0 U101 ( .I(b_shf_in_1__0_), .ZN(n112) );
  inv0d0 U102 ( .I(root[1]), .ZN(n99) );
  inv0d0 U103 ( .I(b_shf_in_2__0_), .ZN(n109) );
  inv0d0 U104 ( .I(b_shf_in_3__0_), .ZN(n107) );
  inv0d0 U105 ( .I(root[3]), .ZN(n104) );
  inv0d0 U106 ( .I(root[2]), .ZN(n102) );
  inv0d0 U107 ( .I(root[0]), .ZN(n96) );
  inv0d0 U108 ( .I(a[11]), .ZN(n123) );
  inv0d0 U109 ( .I(a[9]), .ZN(n125) );
  nd12d1 U110 ( .A1(count_ov_n), .A2(n79), .ZN(U_COUNT_enable) );
  nr02d1 U111 ( .A1(first_cyc), .A2(n55), .ZN(pr_0__11_) );
  nr02d1 U112 ( .A1(first_cyc), .A2(n64), .ZN(pr_0__10_) );
  nd02d1 U113 ( .A1(part_rt_reg[11]), .A2(n77), .ZN(part_rt_inv[2]) );
  nd02d1 U114 ( .A1(part_rt_reg[10]), .A2(n77), .ZN(part_rt_inv[3]) );
  nd02d1 U115 ( .A1(part_rt_reg[9]), .A2(n77), .ZN(part_rt_inv[4]) );
  nd02d1 U116 ( .A1(part_rt_reg[8]), .A2(n77), .ZN(part_rt_inv[11]) );
  nd02d1 U117 ( .A1(part_rt_reg[7]), .A2(n77), .ZN(part_rt_inv[10]) );
  nd02d1 U118 ( .A1(part_rt_reg[6]), .A2(n77), .ZN(part_rt_inv[9]) );
  nd02d1 U119 ( .A1(part_rt_reg[5]), .A2(n77), .ZN(part_rt_inv[8]) );
  nd02d1 U120 ( .A1(part_rt_reg[4]), .A2(n77), .ZN(part_rt_inv[7]) );
  nd02d1 U121 ( .A1(part_rt_reg[3]), .A2(n77), .ZN(part_rt_inv[6]) );
  nd02d1 U122 ( .A1(part_rt_reg[2]), .A2(n77), .ZN(part_rt_inv[5]) );
  mx02d1 U123 ( .I0(n31), .I1(temp_part_rem_0__9_), .S(n39), .Z(pr_1__11_) );
  mx02d1 U124 ( .I0(n30), .I1(temp_part_rem_0__8_), .S(n39), .Z(pr_1__10_) );
  mx02d1 U125 ( .I0(n15), .I1(temp_part_rem_1__7_), .S(n38), .Z(pr_2__9_) );
  mx02d1 U126 ( .I0(n17), .I1(temp_part_rem_1__9_), .S(n38), .Z(pr_2__11_) );
  mx02d1 U127 ( .I0(n16), .I1(temp_part_rem_1__8_), .S(n38), .Z(pr_2__10_) );
  mx02d1 U128 ( .I0(n14), .I1(temp_part_rem_1__6_), .S(n38), .Z(pr_2__8_) );
  mx02d1 U129 ( .I0(n13), .I1(temp_part_rem_1__5_), .S(n38), .Z(pr_2__7_) );
  mx02d1 U130 ( .I0(n12), .I1(temp_part_rem_1__4_), .S(n38), .Z(pr_2__6_) );
  mx02d1 U131 ( .I0(n23), .I1(temp_part_rem_1__3_), .S(n38), .Z(pr_2__5_) );
  mx02d1 U132 ( .I0(n18), .I1(temp_part_rem_1__2_), .S(n38), .Z(pr_2__4_) );
  mx02d1 U133 ( .I0(pr_2__9_), .I1(temp_part_rem_2__9_), .S(n37), .Z(pr_3__11_) );
  mx02d1 U134 ( .I0(pr_2__8_), .I1(temp_part_rem_2__8_), .S(n37), .Z(pr_3__10_) );
  mx02d1 U135 ( .I0(pr_2__7_), .I1(temp_part_rem_2__7_), .S(n37), .Z(pr_3__9_)
         );
  mx02d1 U136 ( .I0(pr_2__6_), .I1(temp_part_rem_2__6_), .S(n37), .Z(pr_3__8_)
         );
  mx02d1 U137 ( .I0(pr_2__5_), .I1(temp_part_rem_2__5_), .S(n37), .Z(pr_3__7_)
         );
  mx02d1 U138 ( .I0(pr_2__4_), .I1(temp_part_rem_2__4_), .S(n37), .Z(pr_3__6_)
         );
  mx02d1 U139 ( .I0(n24), .I1(temp_part_rem_2__3_), .S(n37), .Z(pr_3__5_) );
  mx02d1 U140 ( .I0(n19), .I1(temp_part_rem_2__2_), .S(n37), .Z(pr_3__4_) );
  nd02d1 U141 ( .A1(n41), .A2(n78), .ZN(n65) );
  nd02d1 U142 ( .A1(temp_rt_rev[0]), .A2(n41), .ZN(n66) );
  aoi22d1 U143 ( .A1(n74), .A2(pr_3__7_), .B1(temp_part_rem_3__7_), .B2(n73), 
        .ZN(n48) );
  oai21d1 U144 ( .B1(n41), .B2(n49), .A(n48), .ZN(N24) );
  aoi22d1 U145 ( .A1(n74), .A2(pr_3__5_), .B1(temp_part_rem_3__5_), .B2(n73), 
        .ZN(n50) );
  oai21d1 U146 ( .B1(n41), .B2(n51), .A(n50), .ZN(N22) );
  aoi22d1 U147 ( .A1(n74), .A2(n22), .B1(temp_part_rem_3__3_), .B2(n73), .ZN(
        n52) );
  oai21d1 U148 ( .B1(n41), .B2(n53), .A(n52), .ZN(N20) );
  aoi22d1 U149 ( .A1(n74), .A2(pr_3__9_), .B1(temp_part_rem_3__9_), .B2(n73), 
        .ZN(n54) );
  oai21d1 U150 ( .B1(n41), .B2(n55), .A(n54), .ZN(N26) );
  aoi22d1 U151 ( .A1(n74), .A2(b_in_temp0[3]), .B1(temp_part_rem_3__1_), .B2(
        n73), .ZN(n56) );
  oai21d1 U152 ( .B1(U_COUNT_enable), .B2(n57), .A(n56), .ZN(N18) );
  mx02d1 U153 ( .I0(n58), .I1(part_rt_reg[10]), .S(n43), .Z(N37) );
  oai21d1 U154 ( .B1(n106), .B2(U_COUNT_enable), .A(n66), .ZN(N29) );
  mx02d1 U155 ( .I0(n59), .I1(part_rt_reg[11]), .S(n45), .Z(N38) );
  mx02d1 U156 ( .I0(n60), .I1(part_rt_reg[7]), .S(n46), .Z(N34) );
  mx02d1 U157 ( .I0(n37), .I1(part_rt_reg[3]), .S(n45), .Z(N30) );
  mx02d1 U158 ( .I0(n61), .I1(part_rt_reg[8]), .S(n45), .Z(N35) );
  mx02d1 U159 ( .I0(n38), .I1(part_rt_reg[4]), .S(n44), .Z(N31) );
  mx02d1 U160 ( .I0(n62), .I1(part_rt_reg[9]), .S(n44), .Z(N36) );
  mx02d1 U161 ( .I0(n39), .I1(part_rt_reg[5]), .S(n44), .Z(N32) );
  aoi22d1 U162 ( .A1(n74), .A2(pr_3__8_), .B1(temp_part_rem_3__8_), .B2(n73), 
        .ZN(n63) );
  oai21d1 U163 ( .B1(U_COUNT_enable), .B2(n64), .A(n63), .ZN(N25) );
  mx02d1 U164 ( .I0(n66), .I1(n65), .S(root[8]), .Z(n67) );
  oai21d1 U165 ( .B1(n41), .B2(n68), .A(n67), .ZN(N17) );
  aoi22d1 U166 ( .A1(n74), .A2(n20), .B1(temp_part_rem_3__2_), .B2(n73), .ZN(
        n69) );
  oai21d1 U167 ( .B1(U_COUNT_enable), .B2(n70), .A(n69), .ZN(N19) );
  aoi22d1 U168 ( .A1(n74), .A2(pr_3__4_), .B1(temp_part_rem_3__4_), .B2(n73), 
        .ZN(n71) );
  oai21d1 U169 ( .B1(U_COUNT_enable), .B2(n72), .A(n71), .ZN(N21) );
  aoi22d1 U170 ( .A1(n74), .A2(pr_3__6_), .B1(temp_part_rem_3__6_), .B2(n73), 
        .ZN(n75) );
  oai21d1 U171 ( .B1(U_COUNT_enable), .B2(n76), .A(n75), .ZN(N23) );
  oai21d1 U172 ( .B1(U_COUNT_enable), .B2(n77), .A(n79), .ZN(N16) );
  oai222d1 U173 ( .A1(n104), .A2(n41), .B1(n130), .B2(n95), .C1(n127), .C2(n79), .ZN(N41) );
  oai222d1 U174 ( .A1(n102), .A2(n41), .B1(n130), .B2(n94), .C1(n128), .C2(n79), .ZN(N44) );
  oai22d1 U175 ( .A1(n130), .A2(n93), .B1(n99), .B2(U_COUNT_enable), .ZN(N47)
         );
  oai22d1 U176 ( .A1(n130), .A2(n78), .B1(n96), .B2(U_COUNT_enable), .ZN(N50)
         );
  an02d0 U177 ( .A1(n79), .A2(U_COUNT_count_inc[2]), .Z(U_COUNT_next_count_2_)
         );
  an02d0 U178 ( .A1(n79), .A2(U_COUNT_count_inc[0]), .Z(
        U_COUNT_tercnt_cmp_bus_0_) );
  nd02d0 U179 ( .A1(n79), .A2(U_COUNT_count_inc[1]), .ZN(n80) );
  nr13d1 U180 ( .A1(U_COUNT_count_inc[0]), .A2(U_COUNT_count_inc[2]), .A3(n80), 
        .ZN(U_COUNT_tercnt_d) );
  xr02d1 U181 ( .A1(U_COUNT_count[2]), .A2(n81), .Z(U_COUNT_count_inc[2]) );
  nr02d0 U182 ( .A1(n82), .A2(n84), .ZN(n81) );
  xr02d1 U183 ( .A1(n84), .A2(n82), .Z(U_COUNT_count_inc[1]) );
  xr02d1 U184 ( .A1(n40), .A2(U_COUNT_count[0]), .Z(U_COUNT_count_inc[0]) );
  oai222d1 U188 ( .A1(n130), .A2(n107), .B1(n79), .B2(n117), .C1(n40), .C2(
        n108), .ZN(N60) );
  oai222d1 U189 ( .A1(n130), .A2(n109), .B1(n79), .B2(n115), .C1(
        U_COUNT_enable), .C2(n110), .ZN(N57) );
  aor22d1 U190 ( .A1(n46), .A2(b_shf_in_1__1_), .B1(a[5]), .B2(start), .Z(N56)
         );
  oai222d1 U191 ( .A1(n130), .A2(n111), .B1(n79), .B2(n121), .C1(n40), .C2(
        n112), .ZN(N55) );
  oaim22d1 U192 ( .A1(n130), .A2(n112), .B1(n46), .B2(b_in_temp0[1]), .ZN(N54)
         );
  aor22d1 U193 ( .A1(n46), .A2(b_shf_in_0__1_), .B1(a[7]), .B2(start), .Z(N53)
         );
  oai222d1 U194 ( .A1(n130), .A2(n113), .B1(n79), .B2(n119), .C1(n40), .C2(
        n114), .ZN(N52) );
  oaim22d1 U195 ( .A1(n130), .A2(n114), .B1(n46), .B2(b_in_temp0[0]), .ZN(N51)
         );
  oai222d1 U196 ( .A1(n130), .A2(n96), .B1(n79), .B2(n126), .C1(n40), .C2(n97), 
        .ZN(N49) );
  oai222d1 U197 ( .A1(n130), .A2(n97), .B1(n79), .B2(n118), .C1(n40), .C2(n98), 
        .ZN(N48) );
  oai222d1 U198 ( .A1(n130), .A2(n99), .B1(n79), .B2(n124), .C1(n40), .C2(n100), .ZN(N46) );
  oai222d1 U199 ( .A1(n130), .A2(n100), .B1(n79), .B2(n116), .C1(n40), .C2(
        n101), .ZN(N45) );
  oai222d1 U200 ( .A1(n130), .A2(n102), .B1(n79), .B2(n122), .C1(n40), .C2(
        n103), .ZN(N43) );
  oaim22d1 U201 ( .A1(n130), .A2(n103), .B1(n46), .B2(a_in_temp0[1]), .ZN(N42)
         );
  oai222d1 U202 ( .A1(n130), .A2(n104), .B1(n79), .B2(n120), .C1(n40), .C2(
        n105), .ZN(N40) );
  oaim22d1 U203 ( .A1(n130), .A2(n105), .B1(n46), .B2(a_in_temp0[0]), .ZN(N39)
         );
  mx02d1 U204 ( .I0(n131), .I1(part_rt_reg[6]), .S(n43), .Z(N33) );
  nr02d0 U205 ( .A1(first_cyc), .A2(n106), .ZN(n131) );
endmodule


module std_calc_0_DW01_add_4_DW01_add_22 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35;
  wire   [8:1] carry;

  ad01d1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  xr03d1 U1_4 ( .A1(A[4]), .A2(B[4]), .A3(n7), .Z(SUM[4]) );
  ad01d1 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  cg01d1 U1 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(n1) );
  inv0d0 U2 ( .I(n29), .ZN(n2) );
  inv0d1 U3 ( .I(n2), .ZN(n3) );
  nd03d0 U4 ( .A1(n23), .A2(n25), .A3(n24), .ZN(n4) );
  nd12d1 U5 ( .A1(n21), .A2(n8), .ZN(n10) );
  inv0d0 U6 ( .I(A[8]), .ZN(n19) );
  invbd2 U7 ( .I(A[2]), .ZN(n21) );
  inv0d0 U8 ( .I(B[3]), .ZN(n20) );
  inv0d1 U9 ( .I(A[3]), .ZN(n22) );
  inv0d4 U10 ( .I(B[2]), .ZN(n5) );
  inv0d2 U11 ( .I(n5), .ZN(n6) );
  nd03d2 U12 ( .A1(n23), .A2(n25), .A3(n24), .ZN(n9) );
  nd03d0 U13 ( .A1(n27), .A2(n28), .A3(n3), .ZN(n7) );
  cg01d1 U14 ( .A(A[5]), .B(B[5]), .CI(n1), .CO(n11) );
  cg01d1 U15 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]) );
  cg01d0 U16 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]) );
  nd02d2 U17 ( .A1(n18), .A2(n35), .ZN(n12) );
  cg01d1 U18 ( .A(n12), .B(B[1]), .CI(A[1]), .CO(n8) );
  nd02d2 U19 ( .A1(A[2]), .A2(n6), .ZN(n23) );
  invbd4 U20 ( .I(A[0]), .ZN(n35) );
  cg01d1 U21 ( .A(n12), .B(B[1]), .CI(A[1]), .CO(n13) );
  nd12d2 U22 ( .A1(n5), .A2(n13), .ZN(n25) );
  inv0d0 U23 ( .I(carry[7]), .ZN(n14) );
  inv0d1 U24 ( .I(n14), .ZN(n15) );
  inv0d0 U25 ( .I(n4), .ZN(n16) );
  inv0d1 U26 ( .I(n16), .ZN(n17) );
  xn02d7 U27 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
  invbd7 U28 ( .I(B[0]), .ZN(n18) );
  nd02d2 U29 ( .A1(n18), .A2(n35), .ZN(carry[1]) );
  nd12d2 U30 ( .A1(carry[8]), .A2(n19), .ZN(CO) );
  nd12d2 U31 ( .A1(n20), .A2(n9), .ZN(n29) );
  nd12d2 U32 ( .A1(n21), .A2(carry[2]), .ZN(n24) );
  nd12d2 U33 ( .A1(n22), .A2(carry[3]), .ZN(n28) );
  xr03d1 U34 ( .A1(A[2]), .A2(n6), .A3(n13), .Z(SUM[2]) );
  nd03d2 U35 ( .A1(n23), .A2(n25), .A3(n10), .ZN(carry[3]) );
  xr02d1 U36 ( .A1(A[3]), .A2(B[3]), .Z(n26) );
  xr02d1 U37 ( .A1(n26), .A2(n17), .Z(SUM[3]) );
  nd02d0 U38 ( .A1(A[3]), .A2(B[3]), .ZN(n27) );
  nd03d2 U39 ( .A1(n27), .A2(n28), .A3(n29), .ZN(carry[4]) );
  nd02d2 U40 ( .A1(n11), .A2(A[6]), .ZN(n31) );
  nd02d2 U41 ( .A1(carry[6]), .A2(B[6]), .ZN(n32) );
  xr02d1 U42 ( .A1(B[6]), .A2(A[6]), .Z(n30) );
  xr02d1 U43 ( .A1(n30), .A2(n11), .Z(SUM[6]) );
  nd02d0 U44 ( .A1(A[6]), .A2(B[6]), .ZN(n33) );
  nd03d2 U45 ( .A1(n33), .A2(n31), .A3(n32), .ZN(carry[7]) );
  xr02d1 U46 ( .A1(B[7]), .A2(A[7]), .Z(n34) );
  xr02d1 U47 ( .A1(n34), .A2(n15), .Z(SUM[7]) );
endmodule


module std_calc_0_DW01_add_5_DW01_add_23 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [8:1] carry;

  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  nd02d1 U1 ( .A1(B[1]), .A2(carry[1]), .ZN(n21) );
  inv0d0 U2 ( .I(A[8]), .ZN(n18) );
  inv0d0 U3 ( .I(n15), .ZN(n1) );
  inv0d0 U4 ( .I(n26), .ZN(n2) );
  inv0d1 U5 ( .I(n2), .ZN(n3) );
  nd02d2 U6 ( .A1(n13), .A2(A[5]), .ZN(n4) );
  nd03d2 U7 ( .A1(n30), .A2(n28), .A3(n29), .ZN(carry[5]) );
  nd13d2 U8 ( .A1(n5), .A2(n33), .A3(n32), .ZN(carry[6]) );
  inv0d1 U9 ( .I(n34), .ZN(n5) );
  oaim211d1 U10 ( .C1(A[7]), .C2(B[7]), .A(n37), .B(n36), .ZN(carry[8]) );
  nd03d2 U11 ( .A1(n41), .A2(n40), .A3(n39), .ZN(n6) );
  nd02d2 U12 ( .A1(carry[7]), .A2(A[7]), .ZN(n36) );
  nd02d2 U13 ( .A1(n6), .A2(B[7]), .ZN(n37) );
  nd02d2 U14 ( .A1(A[2]), .A2(B[2]), .ZN(n23) );
  inv0d0 U15 ( .I(n6), .ZN(n7) );
  inv0d1 U16 ( .I(n7), .ZN(n8) );
  inv0d0 U17 ( .I(n13), .ZN(n9) );
  inv0d1 U18 ( .I(n9), .ZN(n10) );
  inv0d0 U19 ( .I(n14), .ZN(n11) );
  inv0d1 U20 ( .I(n11), .ZN(n12) );
  cg01d2 U21 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(n26) );
  nd03d2 U22 ( .A1(n30), .A2(n28), .A3(n29), .ZN(n13) );
  nd03d2 U23 ( .A1(n34), .A2(n33), .A3(n4), .ZN(n14) );
  nd02d2 U24 ( .A1(n13), .A2(A[5]), .ZN(n32) );
  inv0d0 U25 ( .I(carry[2]), .ZN(n15) );
  nd02d2 U26 ( .A1(carry[2]), .A2(A[2]), .ZN(n24) );
  nd02d2 U27 ( .A1(carry[2]), .A2(B[2]), .ZN(n25) );
  inv0d0 U28 ( .I(A[1]), .ZN(n16) );
  inv0d1 U29 ( .I(n16), .ZN(n17) );
  nd02d2 U30 ( .A1(A[1]), .A2(carry[1]), .ZN(n20) );
  nd02d2 U31 ( .A1(A[1]), .A2(B[1]), .ZN(n19) );
  nd02d2 U32 ( .A1(carry[5]), .A2(B[5]), .ZN(n33) );
  or02d1 U33 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  nd12d2 U34 ( .A1(carry[8]), .A2(n18), .ZN(CO) );
  xr03d1 U35 ( .A1(n17), .A2(B[1]), .A3(carry[1]), .Z(SUM[1]) );
  nd03d2 U36 ( .A1(n21), .A2(n19), .A3(n20), .ZN(carry[2]) );
  xr02d1 U37 ( .A1(A[2]), .A2(B[2]), .Z(n22) );
  xr02d1 U38 ( .A1(n22), .A2(n1), .Z(SUM[2]) );
  nd03d2 U39 ( .A1(n23), .A2(n24), .A3(n25), .ZN(carry[3]) );
  xr02d1 U40 ( .A1(B[4]), .A2(A[4]), .Z(n27) );
  xr02d1 U41 ( .A1(n27), .A2(n3), .Z(SUM[4]) );
  nd02d2 U42 ( .A1(n26), .A2(A[4]), .ZN(n28) );
  nd02d2 U43 ( .A1(carry[4]), .A2(B[4]), .ZN(n29) );
  nd02d1 U44 ( .A1(A[4]), .A2(B[4]), .ZN(n30) );
  nd02d2 U45 ( .A1(carry[6]), .A2(B[6]), .ZN(n40) );
  nd02d2 U46 ( .A1(n14), .A2(A[6]), .ZN(n39) );
  xr02d1 U47 ( .A1(B[5]), .A2(A[5]), .Z(n31) );
  xr02d1 U48 ( .A1(n31), .A2(n10), .Z(SUM[5]) );
  nd02d0 U49 ( .A1(A[5]), .A2(B[5]), .ZN(n34) );
  xr02d1 U50 ( .A1(B[7]), .A2(A[7]), .Z(n35) );
  xr02d1 U51 ( .A1(n8), .A2(n35), .Z(SUM[7]) );
  xr02d1 U52 ( .A1(B[6]), .A2(A[6]), .Z(n38) );
  xr02d1 U53 ( .A1(n38), .A2(n12), .Z(SUM[6]) );
  nd02d1 U54 ( .A1(A[6]), .A2(B[6]), .ZN(n41) );
  nd03d2 U55 ( .A1(n41), .A2(n40), .A3(n39), .ZN(carry[7]) );
  xn02d1 U56 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module std_calc_0_DW01_add_6_DW01_add_24 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [8:1] carry;

  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  xr03d1 U1_2 ( .A1(A[2]), .A2(B[2]), .A3(carry[2]), .Z(SUM[2]) );
  xr03d1 U1_7 ( .A1(A[7]), .A2(B[7]), .A3(n2), .Z(SUM[7]) );
  inv0d0 U1 ( .I(carry[7]), .ZN(n1) );
  inv0d1 U2 ( .I(n1), .ZN(n2) );
  inv0d0 U3 ( .I(A[8]), .ZN(n7) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  nd12d2 U5 ( .A1(n13), .A2(n6), .ZN(n15) );
  inv0d0 U6 ( .I(A[4]), .ZN(n13) );
  cg01d1 U7 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]) );
  cg01d1 U8 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]) );
  nd12d2 U9 ( .A1(n12), .A2(carry[4]), .ZN(n16) );
  inv0d0 U10 ( .I(B[4]), .ZN(n12) );
  nd13d2 U11 ( .A1(n4), .A2(n15), .A3(n16), .ZN(n11) );
  inv0d0 U12 ( .I(n14), .ZN(n4) );
  inv0d0 U13 ( .I(n11), .ZN(n5) );
  cg01d1 U14 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(n6) );
  nd12d2 U15 ( .A1(carry[8]), .A2(n7), .ZN(CO) );
  inv0d0 U16 ( .I(n10), .ZN(n8) );
  inv0d1 U17 ( .I(n8), .ZN(n9) );
  nd03d2 U18 ( .A1(n18), .A2(n19), .A3(n20), .ZN(n10) );
  nd02d2 U19 ( .A1(n10), .A2(A[6]), .ZN(n22) );
  nd02d2 U20 ( .A1(carry[6]), .A2(B[6]), .ZN(n23) );
  nd02d0 U21 ( .A1(A[4]), .A2(B[4]), .ZN(n14) );
  xr03d1 U22 ( .A1(A[4]), .A2(B[4]), .A3(n6), .Z(SUM[4]) );
  nd03d2 U23 ( .A1(n14), .A2(n15), .A3(n16), .ZN(carry[5]) );
  xr02d1 U24 ( .A1(A[5]), .A2(B[5]), .Z(n17) );
  xr02d1 U25 ( .A1(n17), .A2(n3), .Z(SUM[5]) );
  nd02d0 U26 ( .A1(A[5]), .A2(B[5]), .ZN(n18) );
  nd02d2 U27 ( .A1(carry[5]), .A2(A[5]), .ZN(n19) );
  nd02d2 U28 ( .A1(n11), .A2(B[5]), .ZN(n20) );
  nd03d2 U29 ( .A1(n18), .A2(n19), .A3(n20), .ZN(carry[6]) );
  nd02d1 U30 ( .A1(A[1]), .A2(B[1]), .ZN(n26) );
  xr02d1 U31 ( .A1(B[6]), .A2(A[6]), .Z(n21) );
  xr02d1 U32 ( .A1(n21), .A2(n9), .Z(SUM[6]) );
  nd02d0 U33 ( .A1(A[6]), .A2(B[6]), .ZN(n24) );
  nd03d2 U34 ( .A1(n24), .A2(n23), .A3(n22), .ZN(carry[7]) );
  xr03d1 U35 ( .A1(carry[1]), .A2(B[1]), .A3(A[1]), .Z(SUM[1]) );
  nd02d1 U36 ( .A1(A[1]), .A2(carry[1]), .ZN(n25) );
  nd02d1 U37 ( .A1(carry[1]), .A2(B[1]), .ZN(n27) );
  nd03d2 U38 ( .A1(n27), .A2(n26), .A3(n25), .ZN(carry[2]) );
  or02d0 U39 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  xn02d1 U40 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module std_calc_0_DW01_add_7_DW01_add_25 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24;
  wire   [8:1] carry;

  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  xr03d1 U1_4 ( .A1(A[4]), .A2(B[4]), .A3(n7), .Z(SUM[4]) );
  ad01d2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  xr03d1 U1_3 ( .A1(A[3]), .A2(B[3]), .A3(n3), .Z(SUM[3]) );
  buffd1 U1 ( .I(n13), .Z(n1) );
  invbd2 U2 ( .I(carry[8]), .ZN(n8) );
  nd02d2 U3 ( .A1(n13), .A2(B[7]), .ZN(n17) );
  inv0d0 U4 ( .I(carry[3]), .ZN(n2) );
  inv0d1 U5 ( .I(n2), .ZN(n3) );
  inv0d0 U6 ( .I(n11), .ZN(n4) );
  buffd1 U7 ( .I(n12), .Z(n5) );
  cg01d0 U8 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]) );
  cg01d1 U9 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(n6) );
  buffd1 U10 ( .I(n6), .Z(n7) );
  aon211d1 U11 ( .C1(n9), .C2(n10), .B(n11), .A(n24), .ZN(carry[2]) );
  invbd2 U12 ( .I(A[1]), .ZN(n11) );
  cg01d1 U13 ( .A(A[4]), .B(B[4]), .CI(n6), .CO(carry[5]) );
  nd02d2 U14 ( .A1(n8), .A2(n14), .ZN(CO) );
  inv0d0 U15 ( .I(A[8]), .ZN(n14) );
  inv0d0 U16 ( .I(B[1]), .ZN(n9) );
  inv0d0 U17 ( .I(carry[1]), .ZN(n10) );
  nd03d2 U18 ( .A1(n18), .A2(n17), .A3(n16), .ZN(carry[8]) );
  nd02d2 U19 ( .A1(carry[7]), .A2(A[7]), .ZN(n16) );
  cg01d1 U20 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(n12) );
  cg01d1 U21 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(n13) );
  nd02d2 U22 ( .A1(n12), .A2(A[5]), .ZN(n20) );
  nd02d2 U23 ( .A1(carry[5]), .A2(B[5]), .ZN(n21) );
  xr02d1 U24 ( .A1(B[7]), .A2(A[7]), .Z(n15) );
  xr02d1 U25 ( .A1(n15), .A2(n1), .Z(SUM[7]) );
  nd02d4 U26 ( .A1(A[7]), .A2(B[7]), .ZN(n18) );
  xr02d1 U27 ( .A1(B[5]), .A2(A[5]), .Z(n19) );
  xr02d1 U28 ( .A1(n19), .A2(n5), .Z(SUM[5]) );
  nd02d1 U29 ( .A1(A[5]), .A2(B[5]), .ZN(n22) );
  nd03d2 U30 ( .A1(n22), .A2(n20), .A3(n21), .ZN(carry[6]) );
  xr02d1 U31 ( .A1(B[1]), .A2(carry[1]), .Z(n23) );
  xr02d1 U32 ( .A1(n23), .A2(n4), .Z(SUM[1]) );
  nd02d1 U33 ( .A1(carry[1]), .A2(B[1]), .ZN(n24) );
  or02d0 U34 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  xn02d1 U35 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module std_calc_0_DW01_add_8_DW01_add_26 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;
  wire   [8:1] carry;

  xr03d1 U1_4 ( .A1(A[4]), .A2(B[4]), .A3(n15), .Z(SUM[4]) );
  xr03d1 U1_3 ( .A1(A[3]), .A2(B[3]), .A3(n3), .Z(SUM[3]) );
  xr03d7 U1_2 ( .A1(n5), .A2(B[2]), .A3(n10), .Z(SUM[2]) );
  inv0d0 U1 ( .I(n11), .ZN(n1) );
  inv0d1 U2 ( .I(n1), .ZN(n2) );
  buffd1 U3 ( .I(n2), .Z(n3) );
  inv0d0 U4 ( .I(A[2]), .ZN(n4) );
  inv0d1 U5 ( .I(n4), .ZN(n5) );
  inv0d0 U6 ( .I(n12), .ZN(n6) );
  inv0d1 U7 ( .I(n6), .ZN(n7) );
  cg01d0 U8 ( .A(B[3]), .B(A[3]), .CI(n11), .CO(carry[4]) );
  cg01d1 U9 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(n8) );
  inv0d0 U10 ( .I(n8), .ZN(n9) );
  inv0d1 U11 ( .I(n9), .ZN(n10) );
  cg01d1 U12 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(n11) );
  cg01d1 U13 ( .A(B[3]), .B(A[3]), .CI(carry[3]), .CO(n12) );
  inv0d0 U14 ( .I(carry[5]), .ZN(n13) );
  inv0d1 U15 ( .I(n13), .ZN(n14) );
  buffd1 U16 ( .I(n7), .Z(n15) );
  inv0d0 U17 ( .I(A[8]), .ZN(n38) );
  inv0d1 U18 ( .I(A[5]), .ZN(n26) );
  nd02d1 U19 ( .A1(A[7]), .A2(B[7]), .ZN(n37) );
  inv0d0 U20 ( .I(A[0]), .ZN(n40) );
  nd02d1 U21 ( .A1(A[5]), .A2(B[5]), .ZN(n27) );
  inv0d0 U22 ( .I(n17), .ZN(n16) );
  nd12d2 U23 ( .A1(n19), .A2(carry[6]), .ZN(n32) );
  inv0d0 U24 ( .I(A[6]), .ZN(n19) );
  nd02d2 U25 ( .A1(A[6]), .A2(B[6]), .ZN(n31) );
  nd12d2 U26 ( .A1(n21), .A2(n18), .ZN(n29) );
  inv0d0 U27 ( .I(B[5]), .ZN(n21) );
  cg01d1 U28 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]) );
  nd12d2 U29 ( .A1(n20), .A2(n24), .ZN(n33) );
  inv0d0 U30 ( .I(B[6]), .ZN(n20) );
  cg01d1 U31 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]) );
  cg01d1 U32 ( .A(A[2]), .B(B[2]), .CI(n8), .CO(carry[3]) );
  inv0d0 U33 ( .I(n24), .ZN(n17) );
  cg01d1 U34 ( .A(A[4]), .B(B[4]), .CI(n12), .CO(n18) );
  inv0d0 U35 ( .I(n25), .ZN(n22) );
  inv0d1 U36 ( .I(n22), .ZN(n23) );
  nd03d2 U37 ( .A1(n27), .A2(n29), .A3(n28), .ZN(n24) );
  nd03d2 U38 ( .A1(n31), .A2(n32), .A3(n33), .ZN(n25) );
  nd12d2 U39 ( .A1(n26), .A2(carry[5]), .ZN(n28) );
  xr03d1 U40 ( .A1(A[5]), .A2(B[5]), .A3(n14), .Z(SUM[5]) );
  nd03d2 U41 ( .A1(n27), .A2(n29), .A3(n28), .ZN(carry[6]) );
  xr02d1 U42 ( .A1(A[6]), .A2(B[6]), .Z(n30) );
  xr02d1 U43 ( .A1(n30), .A2(n16), .Z(SUM[6]) );
  nd03d2 U44 ( .A1(n31), .A2(n32), .A3(n33), .ZN(carry[7]) );
  xr02d1 U45 ( .A1(B[7]), .A2(A[7]), .Z(n34) );
  xr02d1 U46 ( .A1(n34), .A2(n23), .Z(SUM[7]) );
  nd02d2 U47 ( .A1(n25), .A2(A[7]), .ZN(n35) );
  nd02d2 U48 ( .A1(carry[7]), .A2(B[7]), .ZN(n36) );
  nd03d2 U49 ( .A1(n37), .A2(n36), .A3(n35), .ZN(carry[8]) );
  xn02d7 U50 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
  nd12d2 U51 ( .A1(carry[8]), .A2(n38), .ZN(CO) );
  xr02d1 U52 ( .A1(B[1]), .A2(carry[1]), .Z(n39) );
  xr02d1 U53 ( .A1(n39), .A2(A[1]), .Z(SUM[1]) );
  nd12d0 U54 ( .A1(B[0]), .A2(n40), .ZN(carry[1]) );
endmodule


module std_calc_0_DW01_add_9_DW01_add_27 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;
  wire   [8:1] carry;

  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d1 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  inv0d0 U1 ( .I(A[8]), .ZN(n8) );
  nd02d1 U2 ( .A1(A[4]), .A2(B[4]), .ZN(n22) );
  inv0d0 U3 ( .I(A[0]), .ZN(n29) );
  nd03d0 U4 ( .A1(n21), .A2(n20), .A3(n19), .ZN(n1) );
  nd02d1 U5 ( .A1(n9), .A2(B[7]), .ZN(n12) );
  cg01d1 U6 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(n14) );
  nd03d2 U7 ( .A1(n22), .A2(n24), .A3(n23), .ZN(n2) );
  xr03d1 U8 ( .A1(A[2]), .A2(B[2]), .A3(n14), .Z(SUM[2]) );
  nd03d2 U9 ( .A1(n13), .A2(n12), .A3(n11), .ZN(carry[8]) );
  nd02d2 U10 ( .A1(carry[7]), .A2(A[7]), .ZN(n11) );
  nd03d2 U11 ( .A1(n17), .A2(n16), .A3(n15), .ZN(n3) );
  nd02d2 U12 ( .A1(A[2]), .A2(B[2]), .ZN(n17) );
  inv0d0 U13 ( .I(n3), .ZN(n4) );
  inv0d1 U14 ( .I(n4), .ZN(n5) );
  nd02d2 U15 ( .A1(n3), .A2(A[3]), .ZN(n19) );
  nd02d2 U16 ( .A1(A[3]), .A2(B[3]), .ZN(n21) );
  inv0d0 U17 ( .I(n2), .ZN(n6) );
  inv0d1 U18 ( .I(n6), .ZN(n7) );
  nd02d2 U19 ( .A1(carry[3]), .A2(B[3]), .ZN(n20) );
  nd02d2 U20 ( .A1(carry[4]), .A2(A[4]), .ZN(n23) );
  nd02d2 U21 ( .A1(carry[4]), .A2(B[4]), .ZN(n24) );
  nd12d2 U22 ( .A1(carry[8]), .A2(n8), .ZN(CO) );
  cg01d1 U23 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(n9) );
  xr02d1 U24 ( .A1(B[7]), .A2(A[7]), .Z(n10) );
  xr02d1 U25 ( .A1(n10), .A2(n9), .Z(SUM[7]) );
  nd02d0 U26 ( .A1(A[7]), .A2(B[7]), .ZN(n13) );
  nd02d2 U27 ( .A1(carry[2]), .A2(A[2]), .ZN(n15) );
  nd02d2 U28 ( .A1(n14), .A2(B[2]), .ZN(n16) );
  nd03d2 U29 ( .A1(n17), .A2(n16), .A3(n15), .ZN(carry[3]) );
  xr02d1 U30 ( .A1(B[3]), .A2(A[3]), .Z(n18) );
  xr02d1 U31 ( .A1(n18), .A2(n5), .Z(SUM[3]) );
  nd03d2 U32 ( .A1(n21), .A2(n20), .A3(n19), .ZN(carry[4]) );
  xr03d1 U33 ( .A1(A[4]), .A2(B[4]), .A3(n1), .Z(SUM[4]) );
  nd03d2 U34 ( .A1(n22), .A2(n23), .A3(n24), .ZN(carry[5]) );
  xr02d1 U35 ( .A1(A[5]), .A2(B[5]), .Z(n25) );
  xr02d1 U36 ( .A1(n25), .A2(n7), .Z(SUM[5]) );
  nd02d0 U37 ( .A1(A[5]), .A2(B[5]), .ZN(n26) );
  nd02d2 U38 ( .A1(A[5]), .A2(carry[5]), .ZN(n27) );
  nd02d2 U39 ( .A1(n2), .A2(B[5]), .ZN(n28) );
  nd03d2 U40 ( .A1(n26), .A2(n27), .A3(n28), .ZN(carry[6]) );
  nd12d0 U41 ( .A1(B[0]), .A2(n29), .ZN(carry[1]) );
  xn02d1 U42 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module std_calc_0_DW01_add_10_DW01_add_28 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47;
  wire   [8:1] carry;

  ad01d1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  xr03d2 U1 ( .A1(n16), .A2(B[1]), .A3(carry[1]), .Z(SUM[1]) );
  invbd2 U2 ( .I(carry[7]), .ZN(n6) );
  inv0d0 U3 ( .I(A[0]), .ZN(n47) );
  inv0d0 U4 ( .I(A[8]), .ZN(n25) );
  inv0d0 U5 ( .I(n13), .ZN(n14) );
  inv0d0 U6 ( .I(n7), .ZN(n8) );
  nd03d0 U7 ( .A1(n33), .A2(n14), .A3(n8), .ZN(n1) );
  inv0d0 U8 ( .I(A[2]), .ZN(n2) );
  inv0d1 U9 ( .I(n2), .ZN(n3) );
  aon211d1 U10 ( .C1(n4), .C2(n5), .B(n6), .A(n35), .ZN(carry[8]) );
  nd02d2 U11 ( .A1(n24), .A2(A[6]), .ZN(n37) );
  inv0d0 U12 ( .I(A[7]), .ZN(n4) );
  inv0d0 U13 ( .I(B[7]), .ZN(n5) );
  inv0d0 U14 ( .I(n31), .ZN(n7) );
  nd03d2 U15 ( .A1(n44), .A2(n45), .A3(n46), .ZN(n9) );
  nd02d2 U16 ( .A1(A[2]), .A2(B[2]), .ZN(n44) );
  nd03d2 U17 ( .A1(n42), .A2(n40), .A3(n41), .ZN(n10) );
  nd02d2 U18 ( .A1(carry[2]), .A2(A[2]), .ZN(n45) );
  nd02d2 U19 ( .A1(n10), .A2(B[2]), .ZN(n46) );
  inv0d0 U20 ( .I(n38), .ZN(n11) );
  inv0d1 U21 ( .I(n11), .ZN(n12) );
  inv0d0 U22 ( .I(n32), .ZN(n13) );
  inv0d0 U23 ( .I(A[1]), .ZN(n15) );
  inv0d1 U24 ( .I(n15), .ZN(n16) );
  inv0d0 U25 ( .I(n10), .ZN(n17) );
  inv0d1 U26 ( .I(n17), .ZN(n18) );
  nd03d0 U27 ( .A1(n39), .A2(n12), .A3(n37), .ZN(n19) );
  inv0d0 U28 ( .I(n9), .ZN(n20) );
  inv0d1 U29 ( .I(n20), .ZN(n21) );
  nd02d2 U30 ( .A1(carry[3]), .A2(B[3]), .ZN(n32) );
  nd02d2 U31 ( .A1(n9), .A2(A[3]), .ZN(n31) );
  inv0d0 U32 ( .I(n19), .ZN(n22) );
  inv0d1 U33 ( .I(n22), .ZN(n23) );
  cg01d1 U34 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(n24) );
  nd12d2 U35 ( .A1(carry[8]), .A2(n25), .ZN(CO) );
  xr02d1 U36 ( .A1(B[4]), .A2(A[4]), .Z(n26) );
  xr02d1 U37 ( .A1(n26), .A2(n1), .Z(SUM[4]) );
  nd02d2 U38 ( .A1(carry[4]), .A2(A[4]), .ZN(n27) );
  nd02d2 U39 ( .A1(carry[4]), .A2(B[4]), .ZN(n28) );
  nd02d4 U40 ( .A1(A[4]), .A2(B[4]), .ZN(n29) );
  nd03d2 U41 ( .A1(n29), .A2(n27), .A3(n28), .ZN(carry[5]) );
  xr02d1 U42 ( .A1(B[3]), .A2(A[3]), .Z(n30) );
  xr02d1 U43 ( .A1(n30), .A2(n21), .Z(SUM[3]) );
  nd02d0 U44 ( .A1(A[3]), .A2(B[3]), .ZN(n33) );
  nd03d2 U45 ( .A1(n33), .A2(n32), .A3(n31), .ZN(carry[4]) );
  xr02d1 U46 ( .A1(B[7]), .A2(A[7]), .Z(n34) );
  xr02d1 U47 ( .A1(n34), .A2(n23), .Z(SUM[7]) );
  nd02d0 U48 ( .A1(A[7]), .A2(B[7]), .ZN(n35) );
  nd02d2 U49 ( .A1(A[1]), .A2(B[1]), .ZN(n40) );
  nd02d2 U50 ( .A1(A[1]), .A2(carry[1]), .ZN(n41) );
  nd03d2 U51 ( .A1(n44), .A2(n45), .A3(n46), .ZN(carry[3]) );
  xr02d1 U52 ( .A1(B[6]), .A2(A[6]), .Z(n36) );
  xr02d1 U53 ( .A1(n36), .A2(n24), .Z(SUM[6]) );
  nd02d2 U54 ( .A1(carry[6]), .A2(B[6]), .ZN(n38) );
  nd02d0 U55 ( .A1(A[6]), .A2(B[6]), .ZN(n39) );
  nd03d2 U56 ( .A1(n39), .A2(n37), .A3(n38), .ZN(carry[7]) );
  nd02d0 U57 ( .A1(B[1]), .A2(carry[1]), .ZN(n42) );
  nd03d2 U58 ( .A1(n42), .A2(n40), .A3(n41), .ZN(carry[2]) );
  xr02d1 U59 ( .A1(n3), .A2(B[2]), .Z(n43) );
  xr02d1 U60 ( .A1(n43), .A2(n18), .Z(SUM[2]) );
  nd12d0 U61 ( .A1(B[0]), .A2(n47), .ZN(carry[1]) );
  xn02d1 U62 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module std_calc_0_DW01_add_11_DW01_add_29 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19;
  wire   [7:1] carry;

  ad01d4 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  xr03d1 U1_2 ( .A1(n5), .A2(B[2]), .A3(n6), .Z(SUM[2]) );
  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  xr03d1 U1_4 ( .A1(A[4]), .A2(B[4]), .A3(n8), .Z(SUM[4]) );
  inv0d0 U1 ( .I(n2), .ZN(n1) );
  invbd2 U2 ( .I(A[1]), .ZN(n2) );
  inv0d0 U3 ( .I(n1), .ZN(n11) );
  inv0d0 U4 ( .I(carry[3]), .ZN(n3) );
  inv0d1 U5 ( .I(n3), .ZN(n4) );
  buffd1 U6 ( .I(A[2]), .Z(n5) );
  aon211d1 U7 ( .C1(n9), .C2(n10), .B(n11), .A(n19), .ZN(n6) );
  inv0d0 U8 ( .I(n11), .ZN(n7) );
  cg01d1 U9 ( .A(A[3]), .B(B[3]), .CI(n4), .CO(n8) );
  nd04d1 U10 ( .A1(n13), .A2(n16), .A3(n17), .A4(n15), .ZN(CO) );
  inv0d0 U11 ( .I(A[8]), .ZN(n13) );
  cg01d1 U12 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]) );
  aon211d1 U13 ( .C1(n9), .C2(n10), .B(n2), .A(n19), .ZN(carry[2]) );
  inv0d0 U14 ( .I(B[1]), .ZN(n9) );
  inv0d0 U15 ( .I(carry[1]), .ZN(n10) );
  cg01d1 U16 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]) );
  nd02d1 U17 ( .A1(n12), .A2(A[7]), .ZN(n15) );
  nd02d2 U18 ( .A1(carry[7]), .A2(B[7]), .ZN(n16) );
  cg01d1 U19 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(n12) );
  xr02d1 U20 ( .A1(B[7]), .A2(A[7]), .Z(n14) );
  xr02d1 U21 ( .A1(n14), .A2(n12), .Z(SUM[7]) );
  nd02d0 U22 ( .A1(A[7]), .A2(B[7]), .ZN(n17) );
  xr02d1 U23 ( .A1(B[1]), .A2(carry[1]), .Z(n18) );
  xr02d1 U24 ( .A1(n7), .A2(n18), .Z(SUM[1]) );
  nd02d1 U25 ( .A1(carry[1]), .A2(B[1]), .ZN(n19) );
  or02d0 U26 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  xn02d1 U27 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module std_calc_0_DW01_add_12_DW01_add_30 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51;
  wire   [7:1] carry;

  nd02d2 U1 ( .A1(A[3]), .A2(B[3]), .ZN(n36) );
  inv0d0 U2 ( .I(n33), .ZN(n1) );
  inv0d1 U3 ( .I(n1), .ZN(n2) );
  cg01d0 U4 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(n14) );
  inv0d0 U5 ( .I(n15), .ZN(n16) );
  inv0d0 U6 ( .I(A[8]), .ZN(n18) );
  nd03d0 U7 ( .A1(n51), .A2(n20), .A3(n49), .ZN(n3) );
  nd03d0 U8 ( .A1(n9), .A2(n2), .A3(n32), .ZN(n4) );
  nd03d0 U9 ( .A1(n16), .A2(n17), .A3(n46), .ZN(n5) );
  inv0d0 U10 ( .I(n7), .ZN(n6) );
  nd02d2 U11 ( .A1(A[2]), .A2(B[2]), .ZN(n32) );
  inv0d0 U12 ( .I(A[1]), .ZN(n7) );
  inv0d0 U13 ( .I(n34), .ZN(n8) );
  inv0d1 U14 ( .I(n8), .ZN(n9) );
  inv0d0 U15 ( .I(n37), .ZN(n10) );
  inv0d1 U16 ( .I(n10), .ZN(n11) );
  inv0d0 U17 ( .I(carry[6]), .ZN(n12) );
  inv0d0 U18 ( .I(n12), .ZN(n13) );
  nd12d2 U19 ( .A1(n14), .A2(n18), .ZN(CO) );
  inv0d0 U20 ( .I(n44), .ZN(n15) );
  xr03d7 U21 ( .A1(A[2]), .A2(B[2]), .A3(n25), .Z(SUM[2]) );
  nd02d0 U22 ( .A1(n13), .A2(B[6]), .ZN(n17) );
  inv0d0 U23 ( .I(n50), .ZN(n19) );
  inv0d1 U24 ( .I(n19), .ZN(n20) );
  nd03d2 U25 ( .A1(n42), .A2(n41), .A3(n40), .ZN(n21) );
  inv0d0 U26 ( .I(n21), .ZN(n22) );
  inv0d1 U27 ( .I(n22), .ZN(n23) );
  nd02d2 U28 ( .A1(carry[6]), .A2(B[6]), .ZN(n45) );
  nd02d2 U29 ( .A1(n21), .A2(A[6]), .ZN(n44) );
  inv0d0 U30 ( .I(n27), .ZN(n24) );
  inv0d1 U31 ( .I(n24), .ZN(n25) );
  nd03d0 U32 ( .A1(n36), .A2(n38), .A3(n11), .ZN(n26) );
  nd02d2 U33 ( .A1(carry[4]), .A2(B[4]), .ZN(n50) );
  nd02d2 U34 ( .A1(carry[4]), .A2(A[4]), .ZN(n49) );
  nd03d2 U35 ( .A1(n31), .A2(n30), .A3(n29), .ZN(n27) );
  nd02d2 U36 ( .A1(carry[2]), .A2(A[2]), .ZN(n33) );
  nd02d2 U37 ( .A1(n27), .A2(B[2]), .ZN(n34) );
  xr02d1 U38 ( .A1(B[1]), .A2(carry[1]), .Z(n28) );
  xr02d1 U39 ( .A1(n28), .A2(n6), .Z(SUM[1]) );
  nd02d2 U40 ( .A1(A[1]), .A2(carry[1]), .ZN(n29) );
  nd02d2 U41 ( .A1(A[1]), .A2(B[1]), .ZN(n30) );
  nd02d1 U42 ( .A1(carry[1]), .A2(B[1]), .ZN(n31) );
  nd03d2 U43 ( .A1(n31), .A2(n29), .A3(n30), .ZN(carry[2]) );
  xn02d7 U44 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
  nd03d2 U45 ( .A1(n32), .A2(n33), .A3(n34), .ZN(carry[3]) );
  xr02d1 U46 ( .A1(A[3]), .A2(B[3]), .Z(n35) );
  xr02d1 U47 ( .A1(n35), .A2(n4), .Z(SUM[3]) );
  nd02d2 U48 ( .A1(carry[3]), .A2(A[3]), .ZN(n37) );
  nd02d2 U49 ( .A1(carry[3]), .A2(B[3]), .ZN(n38) );
  nd03d2 U50 ( .A1(n36), .A2(n37), .A3(n38), .ZN(carry[4]) );
  xr02d1 U51 ( .A1(B[5]), .A2(A[5]), .Z(n39) );
  xr02d1 U52 ( .A1(n39), .A2(n3), .Z(SUM[5]) );
  nd02d2 U53 ( .A1(carry[5]), .A2(A[5]), .ZN(n40) );
  nd02d2 U54 ( .A1(carry[5]), .A2(B[5]), .ZN(n41) );
  nd02d0 U55 ( .A1(A[5]), .A2(B[5]), .ZN(n42) );
  nd03d2 U56 ( .A1(n42), .A2(n40), .A3(n41), .ZN(carry[6]) );
  xr02d1 U57 ( .A1(B[6]), .A2(A[6]), .Z(n43) );
  xr02d1 U58 ( .A1(n43), .A2(n23), .Z(SUM[6]) );
  nd02d1 U59 ( .A1(A[6]), .A2(B[6]), .ZN(n46) );
  nd03d2 U60 ( .A1(n46), .A2(n45), .A3(n44), .ZN(carry[7]) );
  xr02d1 U61 ( .A1(B[7]), .A2(A[7]), .Z(n47) );
  xr02d1 U62 ( .A1(n47), .A2(n5), .Z(SUM[7]) );
  xr02d1 U63 ( .A1(B[4]), .A2(A[4]), .Z(n48) );
  xr02d1 U64 ( .A1(n48), .A2(n26), .Z(SUM[4]) );
  nd02d1 U65 ( .A1(A[4]), .A2(B[4]), .ZN(n51) );
  nd03d2 U66 ( .A1(n51), .A2(n49), .A3(n50), .ZN(carry[5]) );
  or02d0 U67 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
endmodule


module std_calc_0_DW01_add_13_DW01_add_31 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38;
  wire   [7:1] carry;

  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(n15), .CO(carry[4]), .S(SUM[3]) );
  xr03d1 U1_1 ( .A1(carry[1]), .A2(B[1]), .A3(n4), .Z(SUM[1]) );
  inv0d0 U1 ( .I(A[1]), .ZN(n1) );
  inv0d1 U2 ( .I(n1), .ZN(n2) );
  cg01d1 U3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(n3) );
  buffd1 U4 ( .I(n2), .Z(n4) );
  xr03d1 U5 ( .A1(A[2]), .A2(B[2]), .A3(carry[2]), .Z(SUM[2]) );
  nd02d1 U6 ( .A1(A[2]), .A2(carry[2]), .ZN(n5) );
  nd02d2 U7 ( .A1(carry[2]), .A2(B[2]), .ZN(n6) );
  nd02d1 U8 ( .A1(A[2]), .A2(B[2]), .ZN(n7) );
  nd03d2 U9 ( .A1(n7), .A2(n6), .A3(n5), .ZN(carry[3]) );
  cg01d2 U10 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]) );
  nd02d2 U11 ( .A1(carry[7]), .A2(A[7]), .ZN(n28) );
  nd02d1 U12 ( .A1(A[6]), .A2(B[6]), .ZN(n23) );
  nd02d1 U13 ( .A1(carry[7]), .A2(B[7]), .ZN(n29) );
  inv0d0 U14 ( .I(n12), .ZN(n8) );
  nd02d1 U15 ( .A1(carry[5]), .A2(B[5]), .ZN(n13) );
  nr13d1 U16 ( .A1(n33), .A2(n11), .A3(n9), .ZN(n20) );
  inv0d1 U17 ( .I(n13), .ZN(n9) );
  nd04d1 U18 ( .A1(n10), .A2(n29), .A3(n28), .A4(n27), .ZN(CO) );
  inv0d0 U19 ( .I(A[8]), .ZN(n10) );
  inv0d0 U20 ( .I(n31), .ZN(n11) );
  inv0d0 U21 ( .I(n3), .ZN(n12) );
  nd03d0 U22 ( .A1(n37), .A2(n35), .A3(n36), .ZN(carry[5]) );
  cg01d1 U23 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(n14) );
  cg01d1 U24 ( .A(A[2]), .B(B[2]), .CI(n14), .CO(n15) );
  nd03d0 U25 ( .A1(n23), .A2(n25), .A3(n24), .ZN(n21) );
  cg01d1 U26 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(n16) );
  inv0d0 U27 ( .I(carry[5]), .ZN(n17) );
  inv0d1 U28 ( .I(n17), .ZN(n18) );
  nd03d2 U29 ( .A1(n37), .A2(n36), .A3(n35), .ZN(n19) );
  nd02d2 U30 ( .A1(n16), .A2(A[4]), .ZN(n35) );
  nd02d2 U31 ( .A1(n19), .A2(B[5]), .ZN(n32) );
  nd02d2 U32 ( .A1(n19), .A2(A[5]), .ZN(n31) );
  inv0d1 U33 ( .I(n20), .ZN(n22) );
  nd02d2 U34 ( .A1(carry[4]), .A2(B[4]), .ZN(n36) );
  xr03d1 U35 ( .A1(n22), .A2(B[6]), .A3(A[6]), .Z(SUM[6]) );
  nd02d2 U36 ( .A1(carry[6]), .A2(A[6]), .ZN(n24) );
  nd02d2 U37 ( .A1(carry[6]), .A2(B[6]), .ZN(n25) );
  nd03d2 U38 ( .A1(n23), .A2(n24), .A3(n25), .ZN(carry[7]) );
  xr02d1 U39 ( .A1(A[7]), .A2(B[7]), .Z(n26) );
  xr02d1 U40 ( .A1(n26), .A2(n21), .Z(SUM[7]) );
  nd02d0 U41 ( .A1(A[7]), .A2(B[7]), .ZN(n27) );
  xr02d1 U42 ( .A1(B[5]), .A2(A[5]), .Z(n30) );
  xr02d1 U43 ( .A1(n30), .A2(n18), .Z(SUM[5]) );
  nd02d0 U44 ( .A1(A[5]), .A2(B[5]), .ZN(n33) );
  nd03d2 U45 ( .A1(n33), .A2(n32), .A3(n31), .ZN(carry[6]) );
  xr02d1 U46 ( .A1(B[4]), .A2(A[4]), .Z(n34) );
  xr02d1 U47 ( .A1(n34), .A2(n8), .Z(SUM[4]) );
  nd02d0 U48 ( .A1(A[4]), .A2(B[4]), .ZN(n37) );
  nd12d0 U49 ( .A1(B[0]), .A2(n38), .ZN(carry[1]) );
  inv0d0 U50 ( .I(A[0]), .ZN(n38) );
  xn02d1 U51 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module std_calc_0_DW_div_seq_0_DW_div_seq_1 ( clk, rst_n, hold, start, a, b, 
        complete, divide_by_0, quotient, remainder );
  input [27:0] a;
  input [7:0] b;
  output [27:0] quotient;
  output [7:0] remainder;
  input clk, rst_n, hold, start;
  output complete, divide_by_0;
  wire   hold_n, load_tc, first_cyc, pr_9__8_, pr_9__7_, pr_9__6_, pr_9__5_,
         pr_9__4_, pr_9__3_, pr_9__2_, pr_8__8_, pr_8__7_, pr_8__6_, pr_8__5_,
         pr_8__4_, pr_8__3_, pr_8__2_, pr_8__1_, pr_7__8_, pr_7__7_, pr_7__6_,
         pr_7__5_, pr_7__4_, pr_7__3_, pr_7__2_, pr_7__1_, pr_6__8_, pr_6__7_,
         pr_6__6_, pr_6__5_, pr_6__4_, pr_6__3_, pr_6__2_, pr_6__1_, pr_5__8_,
         pr_5__7_, pr_5__6_, pr_5__5_, pr_5__4_, pr_5__3_, pr_5__2_, pr_5__1_,
         pr_4__8_, pr_4__7_, pr_4__6_, pr_4__5_, pr_4__4_, pr_4__3_, pr_4__1_,
         pr_3__8_, pr_3__7_, pr_3__6_, pr_3__5_, pr_3__4_, pr_3__3_, pr_3__2_,
         pr_3__1_, pr_2__8_, pr_2__7_, pr_2__6_, pr_2__5_, pr_2__4_, pr_2__3_,
         pr_2__2_, pr_2__1_, pr_1__8_, pr_1__7_, pr_1__6_, pr_1__5_, pr_1__4_,
         pr_1__3_, pr_1__2_, pr_1__1_, temp_part_rem_9__7_,
         temp_part_rem_9__6_, temp_part_rem_9__5_, temp_part_rem_9__4_,
         temp_part_rem_9__3_, temp_part_rem_9__2_, temp_part_rem_9__1_,
         temp_part_rem_9__0_, temp_part_rem_8__7_, temp_part_rem_8__6_,
         temp_part_rem_8__5_, temp_part_rem_8__4_, temp_part_rem_8__3_,
         temp_part_rem_8__2_, temp_part_rem_8__1_, temp_part_rem_8__0_,
         temp_part_rem_7__7_, temp_part_rem_7__6_, temp_part_rem_7__5_,
         temp_part_rem_7__4_, temp_part_rem_7__3_, temp_part_rem_7__2_,
         temp_part_rem_7__1_, temp_part_rem_7__0_, temp_part_rem_6__7_,
         temp_part_rem_6__6_, temp_part_rem_6__5_, temp_part_rem_6__4_,
         temp_part_rem_6__3_, temp_part_rem_6__2_, temp_part_rem_6__1_,
         temp_part_rem_6__0_, temp_part_rem_5__7_, temp_part_rem_5__6_,
         temp_part_rem_5__5_, temp_part_rem_5__4_, temp_part_rem_5__3_,
         temp_part_rem_5__2_, temp_part_rem_5__1_, temp_part_rem_5__0_,
         temp_part_rem_4__7_, temp_part_rem_4__6_, temp_part_rem_4__5_,
         temp_part_rem_4__4_, temp_part_rem_4__3_, temp_part_rem_4__2_,
         temp_part_rem_4__1_, temp_part_rem_4__0_, temp_part_rem_3__7_,
         temp_part_rem_3__6_, temp_part_rem_3__5_, temp_part_rem_3__4_,
         temp_part_rem_3__3_, temp_part_rem_3__2_, temp_part_rem_3__1_,
         temp_part_rem_3__0_, temp_part_rem_2__7_, temp_part_rem_2__6_,
         temp_part_rem_2__5_, temp_part_rem_2__4_, temp_part_rem_2__3_,
         temp_part_rem_2__2_, temp_part_rem_2__1_, temp_part_rem_2__0_,
         temp_part_rem_1__7_, temp_part_rem_1__6_, temp_part_rem_1__5_,
         temp_part_rem_1__4_, temp_part_rem_1__3_, temp_part_rem_1__2_,
         temp_part_rem_1__1_, temp_part_rem_1__0_, temp_part_rem_0__7_,
         temp_part_rem_0__6_, temp_part_rem_0__5_, temp_part_rem_0__4_,
         temp_part_rem_0__3_, temp_part_rem_0__2_, temp_part_rem_0__1_,
         temp_part_rem_0__0_, start_q, nx_state, N28, N29, N30, N31, N32, N33,
         N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47,
         N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61,
         N62, N63, N64, N65, N66, U_COUNT_tercnt_d, U_COUNT_tercnt_cmp_bus_0_,
         U_COUNT_next_count_2_, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10;
  wire   [9:1] a_in_temp0;
  wire   [7:0] part_rem_0;
  wire   [19:0] final_quotient;
  wire   [7:1] final_remainder;
  wire   [7:0] b_in;
  wire   [9:0] temp_q_rev;
  wire   [2:0] U_COUNT_count_inc;
  wire   [2:0] U_COUNT_count;

  std_calc_0_DW01_add_4_DW01_add_22 U_ADD_0 ( .A({part_rem_0, n57}), .B({1'b1, 
        n183, n184, n185, n186, n187, n188, n189, n190}), .CI(1'b1), .SUM({
        SYNOPSYS_UNCONNECTED_1, temp_part_rem_0__7_, temp_part_rem_0__6_, 
        temp_part_rem_0__5_, temp_part_rem_0__4_, temp_part_rem_0__3_, 
        temp_part_rem_0__2_, temp_part_rem_0__1_, temp_part_rem_0__0_}), .CO(
        temp_q_rev[9]) );
  std_calc_0_DW01_add_5_DW01_add_23 U_ADD_1 ( .A({pr_1__8_, pr_1__7_, pr_1__6_, 
        pr_1__5_, pr_1__4_, pr_1__3_, pr_1__2_, pr_1__1_, a_in_temp0[1]}), .B(
        {1'b1, n183, n184, n185, n186, n187, n188, n189, n190}), .CI(1'b1), 
        .SUM({SYNOPSYS_UNCONNECTED_2, temp_part_rem_1__7_, temp_part_rem_1__6_, 
        temp_part_rem_1__5_, temp_part_rem_1__4_, temp_part_rem_1__3_, 
        temp_part_rem_1__2_, temp_part_rem_1__1_, temp_part_rem_1__0_}), .CO(
        temp_q_rev[8]) );
  std_calc_0_DW01_add_6_DW01_add_24 U_ADD_2 ( .A({pr_2__8_, pr_2__7_, pr_2__6_, 
        pr_2__5_, pr_2__4_, pr_2__3_, pr_2__2_, pr_2__1_, a_in_temp0[2]}), .B(
        {1'b1, n183, n184, n185, n186, n187, n188, n189, n190}), .CI(1'b1), 
        .SUM({SYNOPSYS_UNCONNECTED_3, temp_part_rem_2__7_, temp_part_rem_2__6_, 
        temp_part_rem_2__5_, temp_part_rem_2__4_, temp_part_rem_2__3_, 
        temp_part_rem_2__2_, temp_part_rem_2__1_, temp_part_rem_2__0_}), .CO(
        temp_q_rev[7]) );
  std_calc_0_DW01_add_7_DW01_add_25 U_ADD_3 ( .A({pr_3__8_, pr_3__7_, pr_3__6_, 
        pr_3__5_, pr_3__4_, pr_3__3_, pr_3__2_, pr_3__1_, a_in_temp0[3]}), .B(
        {1'b1, n183, n184, n185, n186, n187, n188, n189, n190}), .CI(1'b1), 
        .SUM({SYNOPSYS_UNCONNECTED_4, temp_part_rem_3__7_, temp_part_rem_3__6_, 
        temp_part_rem_3__5_, temp_part_rem_3__4_, temp_part_rem_3__3_, 
        temp_part_rem_3__2_, temp_part_rem_3__1_, temp_part_rem_3__0_}), .CO(
        temp_q_rev[6]) );
  std_calc_0_DW01_add_8_DW01_add_26 U_ADD_4 ( .A({pr_4__8_, pr_4__7_, pr_4__6_, 
        pr_4__5_, pr_4__4_, pr_4__3_, n25, pr_4__1_, a_in_temp0[4]}), .B({1'b1, 
        n183, n184, n185, n186, n187, n188, n189, n77}), .CI(1'b1), .SUM({
        SYNOPSYS_UNCONNECTED_5, temp_part_rem_4__7_, temp_part_rem_4__6_, 
        temp_part_rem_4__5_, temp_part_rem_4__4_, temp_part_rem_4__3_, 
        temp_part_rem_4__2_, temp_part_rem_4__1_, temp_part_rem_4__0_}), .CO(
        temp_q_rev[5]) );
  std_calc_0_DW01_add_9_DW01_add_27 U_ADD_5 ( .A({pr_5__8_, pr_5__7_, pr_5__6_, 
        pr_5__5_, pr_5__4_, pr_5__3_, pr_5__2_, pr_5__1_, a_in_temp0[5]}), .B(
        {1'b1, n183, n184, n185, n186, n187, n188, n189, n77}), .CI(1'b1), 
        .SUM({SYNOPSYS_UNCONNECTED_6, temp_part_rem_5__7_, temp_part_rem_5__6_, 
        temp_part_rem_5__5_, temp_part_rem_5__4_, temp_part_rem_5__3_, 
        temp_part_rem_5__2_, temp_part_rem_5__1_, temp_part_rem_5__0_}), .CO(
        temp_q_rev[4]) );
  std_calc_0_DW01_add_10_DW01_add_28 U_ADD_6 ( .A({pr_6__8_, pr_6__7_, 
        pr_6__6_, pr_6__5_, pr_6__4_, pr_6__3_, pr_6__2_, pr_6__1_, 
        a_in_temp0[6]}), .B({1'b1, n183, n184, n185, n186, n187, n188, n189, 
        n77}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_7, temp_part_rem_6__7_, 
        temp_part_rem_6__6_, temp_part_rem_6__5_, temp_part_rem_6__4_, 
        temp_part_rem_6__3_, temp_part_rem_6__2_, temp_part_rem_6__1_, 
        temp_part_rem_6__0_}), .CO(temp_q_rev[3]) );
  std_calc_0_DW01_add_11_DW01_add_29 U_ADD_7 ( .A({pr_7__8_, pr_7__7_, 
        pr_7__6_, pr_7__5_, pr_7__4_, pr_7__3_, pr_7__2_, pr_7__1_, 
        a_in_temp0[7]}), .B({1'b1, n183, n184, n185, n186, n187, n188, n189, 
        n77}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_8, temp_part_rem_7__7_, 
        temp_part_rem_7__6_, temp_part_rem_7__5_, temp_part_rem_7__4_, 
        temp_part_rem_7__3_, temp_part_rem_7__2_, temp_part_rem_7__1_, 
        temp_part_rem_7__0_}), .CO(temp_q_rev[2]) );
  std_calc_0_DW01_add_12_DW01_add_30 U_ADD_8 ( .A({pr_8__8_, pr_8__7_, 
        pr_8__6_, pr_8__5_, pr_8__4_, pr_8__3_, pr_8__2_, pr_8__1_, 
        a_in_temp0[8]}), .B({1'b1, n183, n184, n185, n186, n187, n188, n189, 
        n77}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_9, temp_part_rem_8__7_, 
        temp_part_rem_8__6_, temp_part_rem_8__5_, temp_part_rem_8__4_, 
        temp_part_rem_8__3_, temp_part_rem_8__2_, temp_part_rem_8__1_, 
        temp_part_rem_8__0_}), .CO(temp_q_rev[1]) );
  std_calc_0_DW01_add_13_DW01_add_31 U_ADD_9 ( .A({pr_9__8_, pr_9__7_, 
        pr_9__6_, pr_9__5_, pr_9__4_, pr_9__3_, pr_9__2_, n61, a_in_temp0[9]}), 
        .B({1'b1, n183, n184, n185, n186, n187, n188, n189, n77}), .CI(1'b1), 
        .SUM({SYNOPSYS_UNCONNECTED_10, temp_part_rem_9__7_, 
        temp_part_rem_9__6_, temp_part_rem_9__5_, temp_part_rem_9__4_, 
        temp_part_rem_9__3_, temp_part_rem_9__2_, temp_part_rem_9__1_, 
        temp_part_rem_9__0_}), .CO(temp_q_rev[0]) );
  dfcrq1 shf_reg_reg_9__1_ ( .D(N65), .CP(clk), .CDN(n115), .Q(
        final_quotient[10]) );
  dfcrq1 shf_reg_reg_9__0_ ( .D(N64), .CP(clk), .CDN(n115), .Q(a_in_temp0[9])
         );
  dfcrq1 shf_reg_reg_8__2_ ( .D(N63), .CP(clk), .CDN(n115), .Q(
        final_quotient[1]) );
  dfcrq1 shf_reg_reg_8__1_ ( .D(N62), .CP(clk), .CDN(n115), .Q(
        final_quotient[11]) );
  dfcrq1 shf_reg_reg_8__0_ ( .D(N61), .CP(clk), .CDN(n116), .Q(a_in_temp0[8])
         );
  dfcrq1 shf_reg_reg_7__2_ ( .D(N60), .CP(clk), .CDN(n116), .Q(
        final_quotient[2]) );
  dfcrq1 shf_reg_reg_7__1_ ( .D(N59), .CP(clk), .CDN(n116), .Q(
        final_quotient[12]) );
  dfcrq1 shf_reg_reg_7__0_ ( .D(N58), .CP(clk), .CDN(n116), .Q(a_in_temp0[7])
         );
  dfcrq1 shf_reg_reg_6__2_ ( .D(N57), .CP(clk), .CDN(n116), .Q(
        final_quotient[3]) );
  dfcrq1 shf_reg_reg_6__1_ ( .D(N56), .CP(clk), .CDN(n116), .Q(
        final_quotient[13]) );
  dfcrq1 shf_reg_reg_6__0_ ( .D(N55), .CP(clk), .CDN(n116), .Q(a_in_temp0[6])
         );
  dfcrq1 shf_reg_reg_5__2_ ( .D(N54), .CP(clk), .CDN(n116), .Q(
        final_quotient[4]) );
  dfcrq1 shf_reg_reg_5__1_ ( .D(N53), .CP(clk), .CDN(n116), .Q(
        final_quotient[14]) );
  dfcrq1 shf_reg_reg_5__0_ ( .D(N52), .CP(clk), .CDN(n116), .Q(a_in_temp0[5])
         );
  dfcrq1 shf_reg_reg_4__2_ ( .D(N51), .CP(clk), .CDN(n116), .Q(
        final_quotient[5]) );
  dfcrq1 shf_reg_reg_4__1_ ( .D(N50), .CP(clk), .CDN(n117), .Q(
        final_quotient[15]) );
  dfcrq1 shf_reg_reg_4__0_ ( .D(N49), .CP(clk), .CDN(n117), .Q(a_in_temp0[4])
         );
  dfcrq1 shf_reg_reg_3__2_ ( .D(N48), .CP(clk), .CDN(n117), .Q(
        final_quotient[6]) );
  dfcrq1 shf_reg_reg_3__1_ ( .D(N47), .CP(clk), .CDN(n117), .Q(
        final_quotient[16]) );
  dfcrq1 shf_reg_reg_3__0_ ( .D(N46), .CP(clk), .CDN(n117), .Q(a_in_temp0[3])
         );
  dfcrq1 shf_reg_reg_2__2_ ( .D(N45), .CP(clk), .CDN(n117), .Q(
        final_quotient[7]) );
  dfcrq1 shf_reg_reg_2__1_ ( .D(N44), .CP(clk), .CDN(n117), .Q(
        final_quotient[17]) );
  dfcrq1 shf_reg_reg_2__0_ ( .D(N43), .CP(clk), .CDN(n117), .Q(a_in_temp0[2])
         );
  dfcrq1 shf_reg_reg_1__2_ ( .D(N42), .CP(clk), .CDN(n117), .Q(
        final_quotient[8]) );
  dfcrq1 shf_reg_reg_1__1_ ( .D(N41), .CP(clk), .CDN(n117), .Q(
        final_quotient[18]) );
  dfcrq1 shf_reg_reg_1__0_ ( .D(N40), .CP(clk), .CDN(n118), .Q(a_in_temp0[1])
         );
  dfcrq1 shf_reg_reg_0__2_ ( .D(N39), .CP(clk), .CDN(n118), .Q(
        final_quotient[9]) );
  dfcrq1 shf_reg_reg_0__1_ ( .D(N38), .CP(clk), .CDN(n118), .Q(
        final_quotient[19]) );
  dfcrq1 start_q_reg ( .D(n109), .CP(clk), .CDN(n119), .Q(start_q) );
  dfprb1 pr_state_reg ( .D(nx_state), .CP(clk), .SDN(n115), .QN(n34) );
  deprq1 b_reg_reg_7_ ( .D(b[7]), .ENN(n111), .CP(clk), .SDN(n119), .Q(b_in[7]) );
  deprq1 b_reg_reg_6_ ( .D(b[6]), .ENN(n112), .CP(clk), .SDN(n119), .Q(b_in[6]) );
  deprq1 b_reg_reg_5_ ( .D(b[5]), .ENN(n111), .CP(clk), .SDN(n119), .Q(b_in[5]) );
  deprq1 b_reg_reg_4_ ( .D(b[4]), .ENN(n112), .CP(clk), .SDN(n119), .Q(b_in[4]) );
  deprq1 b_reg_reg_3_ ( .D(b[3]), .ENN(n113), .CP(clk), .SDN(n119), .Q(b_in[3]) );
  deprq1 b_reg_reg_2_ ( .D(b[2]), .ENN(n112), .CP(clk), .SDN(n119), .Q(b_in[2]) );
  dfcrn1 U_COUNT_U2_1 ( .D(U_COUNT_tercnt_d), .CP(clk), .CDN(n115), .QN(
        load_tc) );
  dfcrq1 U_COUNT_U1_3_2 ( .D(U_COUNT_next_count_2_), .CP(clk), .CDN(n117), .Q(
        U_COUNT_count[2]) );
  dfcrq1 U_COUNT_U1_3_1 ( .D(n140), .CP(clk), .CDN(n115), .Q(U_COUNT_count[1])
         );
  dfcrq1 U_COUNT_U1_3_0 ( .D(U_COUNT_tercnt_cmp_bus_0_), .CP(clk), .CDN(n115), 
        .Q(U_COUNT_count[0]) );
  dfcrq4 start_reg_reg ( .D(N28), .CP(clk), .CDN(n115), .Q(first_cyc) );
  deprq4 b_reg_reg_0_ ( .D(b[0]), .ENN(n110), .CP(clk), .SDN(n115), .Q(b_in[0]) );
  deprq4 b_reg_reg_1_ ( .D(b[1]), .ENN(n112), .CP(clk), .SDN(n119), .Q(b_in[1]) );
  dfcrb4 part_rem_reg_reg_0_ ( .D(N29), .CP(clk), .CDN(n119), .Q(n59), .QN(n60) );
  dfcrn4 shf_reg_reg_0__0_ ( .D(N37), .CP(clk), .CDN(n118), .QN(n56) );
  dfcrq2 shf_reg_reg_9__2_ ( .D(N66), .CP(clk), .CDN(n115), .Q(
        final_quotient[0]) );
  dfcrq4 part_rem_reg_reg_7_ ( .D(N36), .CP(clk), .CDN(n118), .Q(
        final_remainder[7]) );
  dfcrq4 part_rem_reg_reg_6_ ( .D(N35), .CP(clk), .CDN(n118), .Q(
        final_remainder[6]) );
  dfcrq4 part_rem_reg_reg_1_ ( .D(N30), .CP(clk), .CDN(n118), .Q(
        final_remainder[1]) );
  dfcrq4 part_rem_reg_reg_5_ ( .D(N34), .CP(clk), .CDN(n118), .Q(
        final_remainder[5]) );
  dfcrq4 part_rem_reg_reg_4_ ( .D(N33), .CP(clk), .CDN(n118), .Q(
        final_remainder[4]) );
  dfcrq4 part_rem_reg_reg_2_ ( .D(N31), .CP(clk), .CDN(n118), .Q(
        final_remainder[2]) );
  dfcrq4 part_rem_reg_reg_3_ ( .D(N32), .CP(clk), .CDN(n118), .Q(n23) );
  nd02d1 U3 ( .A1(n31), .A2(n32), .ZN(n14) );
  inv0d1 U4 ( .I(temp_q_rev[6]), .ZN(n15) );
  invbd2 U5 ( .I(temp_q_rev[6]), .ZN(n30) );
  inv0d0 U6 ( .I(n103), .ZN(n16) );
  invbd2 U7 ( .I(temp_q_rev[3]), .ZN(n103) );
  inv0d7 U8 ( .I(n103), .ZN(n104) );
  inv0d0 U9 ( .I(n91), .ZN(n17) );
  inv0d1 U10 ( .I(n17), .ZN(n18) );
  inv0d1 U11 ( .I(n70), .ZN(n19) );
  mx02d1 U12 ( .I0(n68), .I1(temp_part_rem_2__1_), .S(n124), .Z(n20) );
  mx02d1 U13 ( .I0(n68), .I1(temp_part_rem_2__1_), .S(n124), .Z(pr_3__2_) );
  inv0d0 U14 ( .I(pr_3__1_), .ZN(n21) );
  inv0d1 U15 ( .I(n21), .ZN(n22) );
  inv0d2 U16 ( .I(n23), .ZN(n24) );
  mx02d2 U17 ( .I0(temp_part_rem_3__1_), .I1(n22), .S(n30), .Z(n25) );
  inv0d0 U18 ( .I(n25), .ZN(n26) );
  inv0d1 U19 ( .I(n26), .ZN(n27) );
  invbdk U20 ( .I(b_in[1]), .ZN(n189) );
  mx02d0 U21 ( .I0(n41), .I1(temp_part_rem_4__1_), .S(temp_q_rev[5]), .Z(
        pr_5__2_) );
  mx02d0 U22 ( .I0(n67), .I1(temp_part_rem_6__1_), .S(n16), .Z(n28) );
  nd02d2 U23 ( .A1(temp_q_rev[6]), .A2(temp_part_rem_3__0_), .ZN(n32) );
  inv0d2 U24 ( .I(n102), .ZN(n144) );
  mx02d2 U25 ( .I0(pr_7__3_), .I1(temp_part_rem_7__3_), .S(n102), .Z(pr_8__4_)
         );
  inv0d0 U26 ( .I(n14), .ZN(n40) );
  mx02d4 U27 ( .I0(pr_7__4_), .I1(temp_part_rem_7__4_), .S(n102), .Z(pr_8__5_)
         );
  mx02d4 U28 ( .I0(pr_7__5_), .I1(temp_part_rem_7__5_), .S(n102), .Z(pr_8__6_)
         );
  inv0d1 U29 ( .I(temp_q_rev[2]), .ZN(n101) );
  buffd1 U30 ( .I(n18), .Z(n29) );
  inv0d4 U31 ( .I(n45), .ZN(part_rem_0[0]) );
  inv0d2 U32 ( .I(temp_q_rev[1]), .ZN(n89) );
  inv0d4 U33 ( .I(n92), .ZN(n121) );
  inv0d2 U34 ( .I(temp_q_rev[5]), .ZN(n92) );
  mx02d2 U35 ( .I0(a_in_temp0[2]), .I1(temp_part_rem_2__0_), .S(temp_q_rev[7]), 
        .Z(pr_3__1_) );
  inv0d4 U36 ( .I(n15), .ZN(n120) );
  mx02d2 U37 ( .I0(pr_4__3_), .I1(temp_part_rem_4__3_), .S(n121), .Z(pr_5__4_)
         );
  nd02d2 U38 ( .A1(n30), .A2(a_in_temp0[3]), .ZN(n31) );
  nd02d2 U39 ( .A1(n31), .A2(n32), .ZN(pr_4__1_) );
  mx02d2 U40 ( .I0(n75), .I1(temp_part_rem_1__1_), .S(n55), .Z(pr_2__2_) );
  inv0d1 U41 ( .I(n46), .ZN(pr_4__5_) );
  nr02d1 U42 ( .A1(n181), .A2(first_cyc), .ZN(part_rem_0[2]) );
  inv0d1 U43 ( .I(final_remainder[2]), .ZN(n181) );
  mx02d1 U44 ( .I0(n27), .I1(temp_part_rem_4__2_), .S(n121), .Z(pr_5__3_) );
  inv0d0 U45 ( .I(temp_part_rem_8__0_), .ZN(n87) );
  bufbd3 U46 ( .I(n124), .Z(n122) );
  inv0d1 U47 ( .I(temp_part_rem_0__0_), .ZN(n80) );
  invbdf U48 ( .I(temp_part_rem_1__0_), .ZN(n95) );
  inv0d1 U49 ( .I(temp_part_rem_0__1_), .ZN(n82) );
  inv0d0 U50 ( .I(n86), .ZN(n81) );
  inv0d1 U51 ( .I(n136), .ZN(n72) );
  inv0d0 U52 ( .I(n39), .ZN(n33) );
  inv0d0 U53 ( .I(pr_6__2_), .ZN(n35) );
  inv0d1 U54 ( .I(n35), .ZN(n36) );
  inv0d7 U55 ( .I(b_in[2]), .ZN(n188) );
  inv0d0 U56 ( .I(n176), .ZN(n37) );
  inv0d0 U57 ( .I(n37), .ZN(n38) );
  inv0d4 U58 ( .I(first_cyc), .ZN(n176) );
  inv0d0 U59 ( .I(n100), .ZN(n39) );
  bufbd3 U60 ( .I(temp_q_rev[7]), .Z(n124) );
  inv0d0 U61 ( .I(n40), .ZN(n41) );
  mx02d2 U62 ( .I0(a_in_temp0[5]), .I1(temp_part_rem_5__0_), .S(temp_q_rev[4]), 
        .Z(pr_6__1_) );
  mx02d1 U63 ( .I0(a_in_temp0[6]), .I1(temp_part_rem_6__0_), .S(temp_q_rev[3]), 
        .Z(pr_7__1_) );
  mx02d2 U64 ( .I0(n62), .I1(temp_part_rem_8__1_), .S(temp_q_rev[1]), .Z(
        pr_9__2_) );
  nd02d0 U65 ( .A1(n29), .A2(n90), .ZN(n42) );
  inv0d0 U66 ( .I(pr_5__1_), .ZN(n43) );
  inv0d1 U67 ( .I(n43), .ZN(n44) );
  nd02d2 U68 ( .A1(n92), .A2(a_in_temp0[4]), .ZN(n93) );
  mx02d2 U69 ( .I0(part_rem_0[3]), .I1(temp_part_rem_0__4_), .S(n79), .Z(
        pr_1__5_) );
  oaim22d1 U70 ( .A1(n147), .A2(hold_n), .B1(n52), .B2(n129), .ZN(N66) );
  invbd2 U71 ( .I(temp_q_rev[0]), .ZN(n142) );
  nd12d2 U72 ( .A1(n60), .A2(n176), .ZN(n45) );
  mx02d0 U73 ( .I0(pr_2__2_), .I1(temp_part_rem_2__2_), .S(n122), .Z(pr_3__3_)
         );
  mi02d0 U74 ( .I0(pr_3__4_), .I1(temp_part_rem_3__4_), .S(n120), .ZN(n46) );
  inv0d2 U75 ( .I(n101), .ZN(n102) );
  inv0d2 U76 ( .I(n123), .ZN(n47) );
  inv0d2 U77 ( .I(n47), .ZN(n48) );
  inv0d0 U78 ( .I(pr_6__3_), .ZN(n49) );
  inv0d1 U79 ( .I(n49), .ZN(n50) );
  mx02d2 U80 ( .I0(pr_5__2_), .I1(temp_part_rem_5__2_), .S(n123), .Z(pr_6__3_)
         );
  bufbd3 U81 ( .I(temp_q_rev[4]), .Z(n123) );
  mx02d2 U82 ( .I0(pr_8__2_), .I1(temp_part_rem_8__2_), .S(n78), .Z(pr_9__3_)
         );
  mi02d0 U83 ( .I0(a_in_temp0[5]), .I1(temp_part_rem_5__0_), .S(n48), .ZN(n51)
         );
  inv0d0 U84 ( .I(n142), .ZN(n52) );
  inv0d0 U85 ( .I(n85), .ZN(n53) );
  inv0d1 U86 ( .I(n53), .ZN(n54) );
  bufbd3 U87 ( .I(temp_q_rev[8]), .Z(n125) );
  bufbd3 U88 ( .I(temp_q_rev[8]), .Z(n55) );
  inv0d4 U89 ( .I(n56), .ZN(n57) );
  inv0d0 U90 ( .I(n98), .ZN(n58) );
  mx02d0 U91 ( .I0(pr_2__3_), .I1(temp_part_rem_2__3_), .S(n122), .Z(pr_3__4_)
         );
  nd02d2 U92 ( .A1(n91), .A2(n90), .ZN(n61) );
  mx02d2 U93 ( .I0(n44), .I1(temp_part_rem_5__1_), .S(n123), .Z(pr_6__2_) );
  mx02d0 U94 ( .I0(a_in_temp0[7]), .I1(temp_part_rem_7__0_), .S(n102), .Z(n62)
         );
  oaim21d1 U95 ( .B1(n72), .B2(final_remainder[1]), .A(n224), .ZN(N30) );
  invbd2 U96 ( .I(final_remainder[1]), .ZN(n182) );
  oaim21d1 U97 ( .B1(n72), .B2(n23), .A(n222), .ZN(N32) );
  inv0d0 U98 ( .I(n42), .ZN(n63) );
  inv0d1 U99 ( .I(n63), .ZN(n64) );
  inv0d0 U100 ( .I(pr_7__1_), .ZN(n65) );
  inv0d1 U101 ( .I(n65), .ZN(n66) );
  mx02d1 U102 ( .I0(n67), .I1(temp_part_rem_6__1_), .S(n104), .Z(pr_7__2_) );
  inv0d1 U103 ( .I(n83), .ZN(n79) );
  inv0d2 U104 ( .I(n126), .ZN(n105) );
  inv0d0 U105 ( .I(n51), .ZN(n67) );
  nd02d0 U106 ( .A1(n33), .A2(n99), .ZN(n68) );
  nd02d2 U107 ( .A1(n98), .A2(a_in_temp0[1]), .ZN(n99) );
  mx02d2 U108 ( .I0(temp_part_rem_7__2_), .I1(n28), .S(n144), .Z(pr_8__3_) );
  oaim21d1 U109 ( .B1(n72), .B2(n59), .A(n225), .ZN(N29) );
  oaim21d1 U110 ( .B1(n72), .B2(final_remainder[2]), .A(n223), .ZN(N31) );
  oaim21d1 U111 ( .B1(n72), .B2(final_remainder[4]), .A(n221), .ZN(N33) );
  oaim21d1 U112 ( .B1(n72), .B2(final_remainder[5]), .A(n220), .ZN(N34) );
  oaim21d1 U113 ( .B1(n72), .B2(final_remainder[6]), .A(n219), .ZN(N35) );
  inv0d2 U114 ( .I(final_remainder[6]), .ZN(n178) );
  oaim21d1 U115 ( .B1(n72), .B2(final_remainder[7]), .A(n216), .ZN(N36) );
  invbd4 U116 ( .I(n70), .ZN(n217) );
  nr02d2 U117 ( .A1(n142), .A2(n72), .ZN(n69) );
  nd12d2 U118 ( .A1(n72), .A2(n142), .ZN(n70) );
  mx02d2 U119 ( .I0(temp_part_rem_7__1_), .I1(n66), .S(n101), .Z(pr_8__2_) );
  nd02d0 U120 ( .A1(n54), .A2(n84), .ZN(n71) );
  nr02d2 U121 ( .A1(n142), .A2(n72), .ZN(n218) );
  nd02d1 U122 ( .A1(n96), .A2(n97), .ZN(n73) );
  or02d2 U123 ( .A1(n83), .A2(n82), .Z(n97) );
  inv0d0 U124 ( .I(n71), .ZN(n74) );
  inv0d1 U125 ( .I(n74), .ZN(n75) );
  inv0d0 U126 ( .I(n190), .ZN(n76) );
  inv0d2 U127 ( .I(n76), .ZN(n77) );
  mx02d0 U128 ( .I0(n73), .I1(temp_part_rem_1__2_), .S(n55), .Z(pr_2__3_) );
  inv0d2 U129 ( .I(n89), .ZN(n78) );
  mx02d0 U130 ( .I0(pr_4__6_), .I1(temp_part_rem_4__6_), .S(n121), .Z(pr_5__7_) );
  mx02d0 U131 ( .I0(pr_6__4_), .I1(temp_part_rem_6__4_), .S(n104), .Z(pr_7__5_) );
  inv0d2 U132 ( .I(temp_q_rev[9]), .ZN(n83) );
  buffd2 U133 ( .I(temp_q_rev[9]), .Z(n126) );
  nd12d2 U134 ( .A1(n56), .A2(n83), .ZN(n84) );
  nd12d2 U135 ( .A1(n80), .A2(temp_q_rev[9]), .ZN(n85) );
  mx02d0 U136 ( .I0(pr_1__3_), .I1(temp_part_rem_1__3_), .S(n55), .Z(pr_2__4_)
         );
  inv0d0 U137 ( .I(n105), .ZN(n106) );
  nd12d2 U138 ( .A1(n81), .A2(n105), .ZN(n96) );
  mx02d0 U139 ( .I0(pr_2__6_), .I1(temp_part_rem_2__6_), .S(n122), .Z(pr_3__7_) );
  nd02d2 U140 ( .A1(n85), .A2(n84), .ZN(pr_1__1_) );
  mx02d0 U141 ( .I0(pr_5__3_), .I1(temp_part_rem_5__3_), .S(n123), .Z(pr_6__4_) );
  inv0d7 U142 ( .I(b_in[4]), .ZN(n186) );
  buffd1 U143 ( .I(part_rem_0[0]), .Z(n86) );
  mx02d0 U144 ( .I0(pr_1__6_), .I1(temp_part_rem_1__6_), .S(n55), .Z(pr_2__7_)
         );
  mx02d0 U145 ( .I0(pr_1__4_), .I1(temp_part_rem_1__4_), .S(n55), .Z(pr_2__5_)
         );
  mx02d2 U146 ( .I0(a_in_temp0[7]), .I1(temp_part_rem_7__0_), .S(temp_q_rev[2]), .Z(pr_8__1_) );
  mx02d0 U147 ( .I0(temp_part_rem_6__7_), .I1(pr_6__7_), .S(n145), .Z(pr_7__8_) );
  nd12d2 U148 ( .A1(n87), .A2(temp_q_rev[1]), .ZN(n91) );
  nd02d2 U149 ( .A1(n89), .A2(a_in_temp0[8]), .ZN(n90) );
  nd12d2 U150 ( .A1(n88), .A2(temp_q_rev[5]), .ZN(n94) );
  invbdk U151 ( .I(temp_part_rem_4__0_), .ZN(n88) );
  nr02d7 U152 ( .A1(n182), .A2(first_cyc), .ZN(part_rem_0[1]) );
  mx02d2 U153 ( .I0(pr_3__6_), .I1(temp_part_rem_3__6_), .S(n120), .Z(pr_4__7_) );
  inv0da U154 ( .I(b_in[7]), .ZN(n183) );
  inv0d7 U155 ( .I(b_in[5]), .ZN(n185) );
  inv0d7 U156 ( .I(b_in[3]), .ZN(n187) );
  mx02d0 U157 ( .I0(pr_5__6_), .I1(temp_part_rem_5__6_), .S(n123), .Z(pr_6__7_) );
  nd02d2 U158 ( .A1(n94), .A2(n93), .ZN(pr_5__1_) );
  mx02d0 U159 ( .I0(temp_part_rem_7__7_), .I1(pr_7__7_), .S(n144), .Z(pr_8__8_) );
  mx02d0 U160 ( .I0(temp_part_rem_8__7_), .I1(pr_8__7_), .S(n143), .Z(pr_9__8_) );
  nd12d2 U161 ( .A1(n95), .A2(n125), .ZN(n100) );
  inv0d1 U162 ( .I(n125), .ZN(n98) );
  nd02d2 U163 ( .A1(n96), .A2(n97), .ZN(pr_1__2_) );
  nd02d2 U164 ( .A1(n100), .A2(n99), .ZN(pr_2__1_) );
  mx02d0 U165 ( .I0(pr_6__6_), .I1(temp_part_rem_6__6_), .S(n104), .Z(pr_7__7_) );
  mx02d0 U166 ( .I0(pr_5__5_), .I1(temp_part_rem_5__5_), .S(n123), .Z(pr_6__6_) );
  mx02d0 U167 ( .I0(part_rem_0[2]), .I1(temp_part_rem_0__3_), .S(n126), .Z(
        pr_1__4_) );
  nr02d4 U168 ( .A1(n179), .A2(first_cyc), .ZN(part_rem_0[5]) );
  inv0d7 U169 ( .I(b_in[6]), .ZN(n184) );
  mx02d0 U170 ( .I0(part_rem_0[5]), .I1(temp_part_rem_0__6_), .S(n79), .Z(
        pr_1__7_) );
  mx02d0 U171 ( .I0(pr_1__5_), .I1(temp_part_rem_1__5_), .S(n55), .Z(pr_2__6_)
         );
  nr02d4 U172 ( .A1(n178), .A2(first_cyc), .ZN(part_rem_0[6]) );
  mx02d0 U173 ( .I0(part_rem_0[4]), .I1(temp_part_rem_0__5_), .S(n79), .Z(
        pr_1__6_) );
  nr02d2 U174 ( .A1(n24), .A2(first_cyc), .ZN(part_rem_0[3]) );
  nr02d2 U175 ( .A1(n180), .A2(first_cyc), .ZN(part_rem_0[4]) );
  mx02d0 U176 ( .I0(pr_8__6_), .I1(temp_part_rem_8__6_), .S(n78), .Z(pr_9__7_)
         );
  mx02d0 U177 ( .I0(pr_8__4_), .I1(temp_part_rem_8__4_), .S(n78), .Z(pr_9__5_)
         );
  mx02d0 U178 ( .I0(pr_8__3_), .I1(temp_part_rem_8__3_), .S(n78), .Z(pr_9__4_)
         );
  inv0d2 U179 ( .I(final_remainder[5]), .ZN(n179) );
  inv0d2 U180 ( .I(final_remainder[7]), .ZN(n177) );
  buffd1 U181 ( .I(n146), .Z(n128) );
  buffd1 U182 ( .I(n146), .Z(n127) );
  buffd1 U183 ( .I(n146), .Z(n129) );
  inv0d0 U184 ( .I(n112), .ZN(n107) );
  inv0d0 U185 ( .I(n111), .ZN(n108) );
  inv0d0 U186 ( .I(n110), .ZN(n109) );
  inv0d0 U187 ( .I(n191), .ZN(n146) );
  buffd1 U188 ( .I(n114), .Z(n113) );
  buffd1 U189 ( .I(n114), .Z(n111) );
  buffd1 U190 ( .I(n114), .Z(n112) );
  buffd1 U191 ( .I(n114), .Z(n110) );
  buffd1 U192 ( .I(rst_n), .Z(n118) );
  buffd1 U193 ( .I(rst_n), .Z(n117) );
  buffd1 U194 ( .I(rst_n), .Z(n116) );
  buffd1 U195 ( .I(rst_n), .Z(n115) );
  buffd1 U196 ( .I(rst_n), .Z(n119) );
  inv0d0 U197 ( .I(start), .ZN(n114) );
  mx02d1 U198 ( .I0(n36), .I1(temp_part_rem_6__2_), .S(n104), .Z(pr_7__3_) );
  mx02d1 U199 ( .I0(n50), .I1(temp_part_rem_6__3_), .S(n104), .Z(pr_7__4_) );
  buffd1 U200 ( .I(n131), .Z(n136) );
  inv0d0 U201 ( .I(n137), .ZN(n140) );
  buffd1 U202 ( .I(n130), .Z(n132) );
  buffd1 U203 ( .I(n131), .Z(n135) );
  buffd1 U204 ( .I(n130), .Z(n133) );
  buffd1 U205 ( .I(n130), .Z(n134) );
  buffd1 U206 ( .I(hold_n), .Z(n131) );
  buffd1 U207 ( .I(hold_n), .Z(n130) );
  inv0d0 U208 ( .I(final_quotient[0]), .ZN(n147) );
  inv0d2 U209 ( .I(final_remainder[4]), .ZN(n180) );
  inv0d0 U210 ( .I(final_quotient[1]), .ZN(n150) );
  inv0d0 U211 ( .I(final_quotient[2]), .ZN(n153) );
  inv0d0 U212 ( .I(final_quotient[3]), .ZN(n156) );
  inv0d0 U213 ( .I(a_in_temp0[6]), .ZN(n158) );
  inv0d0 U214 ( .I(a_in_temp0[7]), .ZN(n155) );
  inv0d0 U215 ( .I(a_in_temp0[8]), .ZN(n152) );
  inv0d0 U216 ( .I(a_in_temp0[9]), .ZN(n149) );
  inv0d0 U217 ( .I(a_in_temp0[3]), .ZN(n167) );
  inv0d0 U218 ( .I(a_in_temp0[4]), .ZN(n164) );
  inv0d0 U219 ( .I(a_in_temp0[5]), .ZN(n161) );
  inv0d0 U220 ( .I(a_in_temp0[2]), .ZN(n170) );
  inv0d0 U221 ( .I(a_in_temp0[1]), .ZN(n173) );
  inv0d0 U222 ( .I(U_COUNT_count[1]), .ZN(n141) );
  nr02d1 U223 ( .A1(start_q), .A2(n34), .ZN(nx_state) );
  inv0d0 U224 ( .I(final_quotient[9]), .ZN(n174) );
  inv0d0 U225 ( .I(final_quotient[8]), .ZN(n171) );
  inv0d0 U226 ( .I(final_quotient[17]), .ZN(n169) );
  inv0d0 U227 ( .I(final_quotient[7]), .ZN(n168) );
  inv0d0 U228 ( .I(final_quotient[16]), .ZN(n166) );
  inv0d0 U229 ( .I(final_quotient[6]), .ZN(n165) );
  inv0d0 U230 ( .I(final_quotient[15]), .ZN(n163) );
  inv0d0 U231 ( .I(final_quotient[5]), .ZN(n162) );
  inv0d0 U232 ( .I(final_quotient[14]), .ZN(n160) );
  inv0d0 U233 ( .I(final_quotient[4]), .ZN(n159) );
  inv0d0 U234 ( .I(final_quotient[13]), .ZN(n157) );
  inv0d0 U235 ( .I(final_quotient[12]), .ZN(n154) );
  inv0d0 U236 ( .I(final_quotient[11]), .ZN(n151) );
  inv0d0 U237 ( .I(final_quotient[10]), .ZN(n148) );
  inv0d0 U238 ( .I(final_quotient[19]), .ZN(n175) );
  inv0d0 U239 ( .I(final_quotient[18]), .ZN(n172) );
  mx02d0 U240 ( .I0(pr_1__7_), .I1(temp_part_rem_1__7_), .S(n55), .Z(pr_2__8_)
         );
  inv0d0 U241 ( .I(n78), .ZN(n143) );
  inv0d0 U242 ( .I(n104), .ZN(n145) );
  inv0da U243 ( .I(b_in[0]), .ZN(n190) );
  mx02d0 U244 ( .I0(pr_6__5_), .I1(temp_part_rem_6__5_), .S(n104), .Z(pr_7__6_) );
  mx02d0 U245 ( .I0(pr_8__5_), .I1(temp_part_rem_8__5_), .S(n78), .Z(pr_9__6_)
         );
  mx02d0 U246 ( .I0(pr_7__6_), .I1(temp_part_rem_7__6_), .S(n102), .Z(pr_8__7_) );
  an02d0 U247 ( .A1(n110), .A2(U_COUNT_count_inc[2]), .Z(U_COUNT_next_count_2_) );
  an02d0 U248 ( .A1(n110), .A2(U_COUNT_count_inc[0]), .Z(
        U_COUNT_tercnt_cmp_bus_0_) );
  nd02d0 U249 ( .A1(n111), .A2(U_COUNT_count_inc[1]), .ZN(n137) );
  nr13d1 U250 ( .A1(U_COUNT_count_inc[0]), .A2(U_COUNT_count_inc[2]), .A3(n137), .ZN(U_COUNT_tercnt_d) );
  xr02d1 U251 ( .A1(U_COUNT_count[2]), .A2(n138), .Z(U_COUNT_count_inc[2]) );
  nr02d0 U252 ( .A1(n139), .A2(n141), .ZN(n138) );
  xr02d1 U253 ( .A1(n141), .A2(n139), .Z(U_COUNT_count_inc[1]) );
  nd02d0 U254 ( .A1(n136), .A2(U_COUNT_count[0]), .ZN(n139) );
  xr02d1 U255 ( .A1(n132), .A2(U_COUNT_count[0]), .Z(U_COUNT_count_inc[0]) );
  nr02d0 U256 ( .A1(nx_state), .A2(n174), .ZN(quotient[9]) );
  nr02d0 U257 ( .A1(nx_state), .A2(n171), .ZN(quotient[8]) );
  nr02d0 U258 ( .A1(nx_state), .A2(n168), .ZN(quotient[7]) );
  nr02d0 U259 ( .A1(nx_state), .A2(n165), .ZN(quotient[6]) );
  nr02d0 U260 ( .A1(nx_state), .A2(n162), .ZN(quotient[5]) );
  nr02d0 U261 ( .A1(nx_state), .A2(n159), .ZN(quotient[4]) );
  nr02d0 U262 ( .A1(nx_state), .A2(n175), .ZN(quotient[19]) );
  nr02d0 U263 ( .A1(nx_state), .A2(n172), .ZN(quotient[18]) );
  nr02d0 U264 ( .A1(nx_state), .A2(n169), .ZN(quotient[17]) );
  nr02d0 U265 ( .A1(nx_state), .A2(n166), .ZN(quotient[16]) );
  nr02d0 U266 ( .A1(nx_state), .A2(n163), .ZN(quotient[15]) );
  nr02d0 U267 ( .A1(nx_state), .A2(n160), .ZN(quotient[14]) );
  nr02d0 U268 ( .A1(nx_state), .A2(n157), .ZN(quotient[13]) );
  nr02d0 U269 ( .A1(nx_state), .A2(n154), .ZN(quotient[12]) );
  nr02d0 U270 ( .A1(nx_state), .A2(n151), .ZN(quotient[11]) );
  nr02d0 U271 ( .A1(nx_state), .A2(n148), .ZN(quotient[10]) );
  mx02d1 U272 ( .I0(pr_5__7_), .I1(temp_part_rem_5__7_), .S(n48), .Z(pr_6__8_)
         );
  mx02d1 U273 ( .I0(pr_5__4_), .I1(temp_part_rem_5__4_), .S(n123), .Z(pr_6__5_) );
  mx02d1 U274 ( .I0(pr_4__7_), .I1(temp_part_rem_4__7_), .S(n121), .Z(pr_5__8_) );
  mx02d1 U275 ( .I0(pr_4__5_), .I1(temp_part_rem_4__5_), .S(n121), .Z(pr_5__6_) );
  mx02d1 U276 ( .I0(pr_4__4_), .I1(temp_part_rem_4__4_), .S(n121), .Z(pr_5__5_) );
  mx02d1 U277 ( .I0(pr_3__7_), .I1(temp_part_rem_3__7_), .S(n120), .Z(pr_4__8_) );
  mx02d1 U278 ( .I0(pr_3__5_), .I1(temp_part_rem_3__5_), .S(n120), .Z(pr_4__6_) );
  mx02d1 U279 ( .I0(pr_3__3_), .I1(temp_part_rem_3__3_), .S(n120), .Z(pr_4__4_) );
  mx02d1 U280 ( .I0(n20), .I1(temp_part_rem_3__2_), .S(n120), .Z(pr_4__3_) );
  mx02d1 U281 ( .I0(pr_2__7_), .I1(temp_part_rem_2__7_), .S(n122), .Z(pr_3__8_) );
  mx02d1 U282 ( .I0(pr_2__5_), .I1(temp_part_rem_2__5_), .S(n122), .Z(pr_3__6_) );
  mx02d1 U283 ( .I0(pr_2__4_), .I1(temp_part_rem_2__4_), .S(n122), .Z(pr_3__5_) );
  mx02d1 U284 ( .I0(part_rem_0[6]), .I1(temp_part_rem_0__7_), .S(n79), .Z(
        pr_1__8_) );
  mx02d1 U285 ( .I0(part_rem_0[1]), .I1(temp_part_rem_0__2_), .S(n126), .Z(
        pr_1__3_) );
  nr02d0 U286 ( .A1(first_cyc), .A2(n177), .ZN(part_rem_0[7]) );
  nr02d0 U287 ( .A1(load_tc), .A2(first_cyc), .ZN(complete) );
  oai21d1 U288 ( .B1(n135), .B2(n148), .A(n192), .ZN(N65) );
  aoi22d1 U289 ( .A1(a[10]), .A2(n109), .B1(final_quotient[0]), .B2(n127), 
        .ZN(n192) );
  oai21d1 U290 ( .B1(n135), .B2(n149), .A(n193), .ZN(N64) );
  aoi22d1 U291 ( .A1(a[20]), .A2(n109), .B1(n127), .B2(final_quotient[10]), 
        .ZN(n193) );
  oai22d1 U292 ( .A1(n135), .A2(n150), .B1(n143), .B2(n191), .ZN(N63) );
  oai21d1 U293 ( .B1(n135), .B2(n151), .A(n194), .ZN(N62) );
  aoi22d1 U294 ( .A1(a[11]), .A2(n109), .B1(final_quotient[1]), .B2(n127), 
        .ZN(n194) );
  oai21d1 U295 ( .B1(n134), .B2(n152), .A(n195), .ZN(N61) );
  aoi22d1 U296 ( .A1(a[21]), .A2(n109), .B1(n127), .B2(final_quotient[11]), 
        .ZN(n195) );
  oai22d1 U297 ( .A1(n135), .A2(n153), .B1(n144), .B2(n191), .ZN(N60) );
  oai21d1 U298 ( .B1(n135), .B2(n154), .A(n196), .ZN(N59) );
  aoi22d1 U299 ( .A1(a[12]), .A2(n109), .B1(final_quotient[2]), .B2(n127), 
        .ZN(n196) );
  oai21d1 U300 ( .B1(n134), .B2(n155), .A(n197), .ZN(N58) );
  aoi22d1 U301 ( .A1(a[22]), .A2(n109), .B1(n127), .B2(final_quotient[12]), 
        .ZN(n197) );
  oai22d1 U302 ( .A1(n135), .A2(n156), .B1(n145), .B2(n191), .ZN(N57) );
  oai21d1 U303 ( .B1(n134), .B2(n157), .A(n198), .ZN(N56) );
  aoi22d1 U304 ( .A1(a[13]), .A2(n108), .B1(final_quotient[3]), .B2(n127), 
        .ZN(n198) );
  oai21d1 U305 ( .B1(n134), .B2(n158), .A(n199), .ZN(N55) );
  aoi22d1 U306 ( .A1(a[23]), .A2(n108), .B1(n127), .B2(final_quotient[13]), 
        .ZN(n199) );
  oai21d1 U307 ( .B1(n134), .B2(n159), .A(n200), .ZN(N54) );
  aoi22d1 U308 ( .A1(a[4]), .A2(n108), .B1(n127), .B2(n48), .ZN(n200) );
  oai21d1 U309 ( .B1(n134), .B2(n160), .A(n201), .ZN(N53) );
  aoi22d1 U310 ( .A1(a[14]), .A2(n108), .B1(n128), .B2(final_quotient[4]), 
        .ZN(n201) );
  oai21d1 U311 ( .B1(n134), .B2(n161), .A(n202), .ZN(N52) );
  aoi22d1 U312 ( .A1(a[24]), .A2(n108), .B1(n128), .B2(final_quotient[14]), 
        .ZN(n202) );
  oai21d1 U313 ( .B1(n134), .B2(n162), .A(n203), .ZN(N51) );
  aoi22d1 U314 ( .A1(a[5]), .A2(n108), .B1(n128), .B2(n121), .ZN(n203) );
  oai21d1 U315 ( .B1(n134), .B2(n163), .A(n204), .ZN(N50) );
  aoi22d1 U316 ( .A1(a[15]), .A2(n108), .B1(n128), .B2(final_quotient[5]), 
        .ZN(n204) );
  oai21d1 U317 ( .B1(n134), .B2(n164), .A(n205), .ZN(N49) );
  aoi22d1 U318 ( .A1(a[25]), .A2(n108), .B1(n128), .B2(final_quotient[15]), 
        .ZN(n205) );
  oai21d1 U319 ( .B1(n133), .B2(n165), .A(n206), .ZN(N48) );
  aoi22d1 U320 ( .A1(a[6]), .A2(n108), .B1(n128), .B2(n120), .ZN(n206) );
  oai21d1 U321 ( .B1(n133), .B2(n166), .A(n207), .ZN(N47) );
  aoi22d1 U322 ( .A1(a[16]), .A2(n107), .B1(n128), .B2(final_quotient[6]), 
        .ZN(n207) );
  oai21d1 U323 ( .B1(n133), .B2(n167), .A(n208), .ZN(N46) );
  aoi22d1 U324 ( .A1(a[26]), .A2(n107), .B1(n128), .B2(final_quotient[16]), 
        .ZN(n208) );
  oai21d1 U325 ( .B1(n133), .B2(n168), .A(n209), .ZN(N45) );
  aoi22d1 U326 ( .A1(a[7]), .A2(n107), .B1(n128), .B2(n122), .ZN(n209) );
  oai21d1 U327 ( .B1(n133), .B2(n169), .A(n210), .ZN(N44) );
  aoi22d1 U328 ( .A1(a[17]), .A2(n107), .B1(n129), .B2(final_quotient[7]), 
        .ZN(n210) );
  oai21d1 U329 ( .B1(n133), .B2(n170), .A(n211), .ZN(N43) );
  aoi22d1 U330 ( .A1(a[27]), .A2(n107), .B1(n129), .B2(final_quotient[17]), 
        .ZN(n211) );
  oai21d1 U331 ( .B1(n133), .B2(n171), .A(n212), .ZN(N42) );
  aoi22d1 U332 ( .A1(a[8]), .A2(n107), .B1(n129), .B2(n58), .ZN(n212) );
  oai21d1 U333 ( .B1(n133), .B2(n172), .A(n213), .ZN(N41) );
  aoi22d1 U334 ( .A1(a[18]), .A2(n107), .B1(n129), .B2(final_quotient[8]), 
        .ZN(n213) );
  oai22d1 U335 ( .A1(n135), .A2(n173), .B1(n172), .B2(n191), .ZN(N40) );
  oai21d1 U336 ( .B1(n133), .B2(n174), .A(n214), .ZN(N39) );
  aoi22d1 U337 ( .A1(a[9]), .A2(n107), .B1(n127), .B2(n106), .ZN(n214) );
  oai21d1 U338 ( .B1(n132), .B2(n175), .A(n215), .ZN(N38) );
  aoi22d1 U339 ( .A1(a[19]), .A2(n107), .B1(n128), .B2(final_quotient[9]), 
        .ZN(n215) );
  oai22d1 U340 ( .A1(n135), .A2(n56), .B1(n175), .B2(n191), .ZN(N37) );
  nd02d0 U341 ( .A1(n136), .A2(n111), .ZN(n191) );
  aoi22d1 U342 ( .A1(n217), .A2(pr_9__7_), .B1(n218), .B2(temp_part_rem_9__7_), 
        .ZN(n216) );
  aoi22d1 U343 ( .A1(n217), .A2(pr_9__6_), .B1(n218), .B2(temp_part_rem_9__6_), 
        .ZN(n219) );
  aoi22d1 U344 ( .A1(n217), .A2(pr_9__5_), .B1(n69), .B2(temp_part_rem_9__5_), 
        .ZN(n220) );
  aoi22d1 U345 ( .A1(n217), .A2(pr_9__4_), .B1(n218), .B2(temp_part_rem_9__4_), 
        .ZN(n221) );
  aoi22d1 U346 ( .A1(n217), .A2(pr_9__3_), .B1(n69), .B2(temp_part_rem_9__3_), 
        .ZN(n222) );
  aoi22d1 U347 ( .A1(n217), .A2(pr_9__2_), .B1(n218), .B2(temp_part_rem_9__2_), 
        .ZN(n223) );
  aoi22d1 U348 ( .A1(n217), .A2(n64), .B1(n69), .B2(temp_part_rem_9__1_), .ZN(
        n224) );
  aoi22d1 U349 ( .A1(n19), .A2(a_in_temp0[9]), .B1(n69), .B2(
        temp_part_rem_9__0_), .ZN(n225) );
  oai21d1 U350 ( .B1(n133), .B2(n38), .A(n110), .ZN(N28) );
  nd12d0 U351 ( .A1(load_tc), .A2(n113), .ZN(hold_n) );
endmodule


module std_calc_0_DW01_add_14_DW01_add_32 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [24:2] carry;

  ad01d0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ad01d0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ad01d0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ad01d0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ad01d0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ad01d0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ad01d0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ad01d0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ad01d0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ad01d0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ad01d0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ad01d0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ad01d0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ad01d0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n7), .CO(carry[2]), .S(SUM[1]) );
  nd02d1 U1 ( .A1(n6), .A2(A[30]), .ZN(n8) );
  xn02d1 U2 ( .A1(A[31]), .A2(n8), .ZN(SUM[31]) );
  an02d1 U3 ( .A1(carry[24]), .A2(A[24]), .Z(n1) );
  an02d1 U4 ( .A1(n1), .A2(A[25]), .Z(n2) );
  an02d1 U5 ( .A1(n2), .A2(A[26]), .Z(n3) );
  an02d1 U6 ( .A1(n3), .A2(A[27]), .Z(n4) );
  an02d1 U7 ( .A1(n4), .A2(A[28]), .Z(n5) );
  an02d1 U8 ( .A1(n5), .A2(A[29]), .Z(n6) );
  an02d1 U9 ( .A1(B[0]), .A2(A[0]), .Z(n7) );
  xr02d1 U10 ( .A1(A[30]), .A2(n6), .Z(SUM[30]) );
  xr02d1 U11 ( .A1(A[29]), .A2(n5), .Z(SUM[29]) );
  xr02d1 U12 ( .A1(A[28]), .A2(n4), .Z(SUM[28]) );
  xr02d1 U13 ( .A1(A[27]), .A2(n3), .Z(SUM[27]) );
  xr02d1 U14 ( .A1(A[26]), .A2(n2), .Z(SUM[26]) );
  xr02d1 U15 ( .A1(A[25]), .A2(n1), .Z(SUM[25]) );
  xr02d1 U16 ( .A1(A[24]), .A2(carry[24]), .Z(SUM[24]) );
  xr02d1 U17 ( .A1(A[0]), .A2(B[0]), .Z(SUM[0]) );
endmodule


module std_calc_0_DW02_tree_0_DW02_tree_1 ( INPUT, OUT0, OUT1 );
  input [167:0] INPUT;
  output [23:0] OUT0;
  output [23:0] OUT1;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128;
  assign OUT1[0] = INPUT[0];
  assign OUT1[22] = INPUT[142];
  assign OUT0[0] = INPUT[144];
  assign OUT0[1] = INPUT[145];
  assign OUT1[23] = 1'b0;
  assign OUT0[23] = 1'b0;

  ad01d1 U1 ( .A(INPUT[141]), .B(INPUT[117]), .CI(n1), .CO(OUT0[22]), .S(
        OUT0[21]) );
  ad01d1 U2 ( .A(n2), .B(n5), .CI(n3), .CO(OUT1[21]), .S(OUT0[20]) );
  ad01d1 U3 ( .A(INPUT[140]), .B(INPUT[92]), .CI(INPUT[116]), .CO(n1), .S(n2)
         );
  ad01d1 U4 ( .A(n4), .B(n9), .CI(n7), .CO(OUT1[20]), .S(OUT1[19]) );
  ad01d1 U5 ( .A(n11), .B(INPUT[91]), .CI(n6), .CO(n3), .S(n4) );
  ad01d1 U6 ( .A(INPUT[139]), .B(INPUT[67]), .CI(INPUT[115]), .CO(n5), .S(n6)
         );
  ad01d1 U7 ( .A(n13), .B(n10), .CI(n8), .CO(OUT0[19]), .S(OUT1[18]) );
  ad01d1 U8 ( .A(n12), .B(n17), .CI(n15), .CO(n7), .S(n8) );
  ad01d1 U9 ( .A(INPUT[90]), .B(INPUT[66]), .CI(n19), .CO(n9), .S(n10) );
  ad01d1 U10 ( .A(INPUT[138]), .B(INPUT[42]), .CI(INPUT[114]), .CO(n11), .S(
        n12) );
  ad01d1 U11 ( .A(n21), .B(n16), .CI(n14), .CO(OUT0[18]), .S(OUT1[17]) );
  ad01d1 U12 ( .A(n20), .B(n18), .CI(n23), .CO(n13), .S(n14) );
  ad01d1 U13 ( .A(n27), .B(INPUT[41]), .CI(n25), .CO(n15), .S(n16) );
  ad01d1 U14 ( .A(INPUT[89]), .B(INPUT[17]), .CI(INPUT[65]), .CO(n17), .S(n18)
         );
  ad01d1 U15 ( .A(INPUT[161]), .B(INPUT[137]), .CI(INPUT[113]), .CO(n19), .S(
        n20) );
  ad01d1 U16 ( .A(n29), .B(n24), .CI(n22), .CO(OUT0[17]), .S(OUT1[16]) );
  ad01d1 U17 ( .A(n28), .B(n26), .CI(n31), .CO(n21), .S(n22) );
  ad01d1 U18 ( .A(n35), .B(INPUT[40]), .CI(n33), .CO(n23), .S(n24) );
  ad01d1 U19 ( .A(INPUT[88]), .B(INPUT[16]), .CI(INPUT[64]), .CO(n25), .S(n26)
         );
  ad01d1 U20 ( .A(INPUT[160]), .B(INPUT[136]), .CI(INPUT[112]), .CO(n27), .S(
        n28) );
  ad01d1 U21 ( .A(n37), .B(n32), .CI(n30), .CO(OUT0[16]), .S(OUT1[15]) );
  ad01d1 U22 ( .A(n36), .B(n34), .CI(n39), .CO(n29), .S(n30) );
  ad01d1 U23 ( .A(n43), .B(INPUT[39]), .CI(n41), .CO(n31), .S(n32) );
  ad01d1 U24 ( .A(INPUT[87]), .B(INPUT[15]), .CI(INPUT[63]), .CO(n33), .S(n34)
         );
  ad01d1 U25 ( .A(INPUT[159]), .B(INPUT[135]), .CI(INPUT[111]), .CO(n35), .S(
        n36) );
  ad01d1 U26 ( .A(n45), .B(n40), .CI(n38), .CO(OUT0[15]), .S(OUT1[14]) );
  ad01d1 U27 ( .A(n44), .B(n42), .CI(n47), .CO(n37), .S(n38) );
  ad01d1 U28 ( .A(n51), .B(INPUT[38]), .CI(n49), .CO(n39), .S(n40) );
  ad01d1 U29 ( .A(INPUT[86]), .B(INPUT[14]), .CI(INPUT[62]), .CO(n41), .S(n42)
         );
  ad01d1 U30 ( .A(INPUT[158]), .B(INPUT[134]), .CI(INPUT[110]), .CO(n43), .S(
        n44) );
  ad01d1 U31 ( .A(n53), .B(n48), .CI(n46), .CO(OUT0[14]), .S(OUT1[13]) );
  ad01d1 U32 ( .A(n52), .B(n50), .CI(n55), .CO(n45), .S(n46) );
  ad01d1 U33 ( .A(n59), .B(INPUT[37]), .CI(n57), .CO(n47), .S(n48) );
  ad01d1 U34 ( .A(INPUT[85]), .B(INPUT[13]), .CI(INPUT[61]), .CO(n49), .S(n50)
         );
  ad01d1 U35 ( .A(INPUT[157]), .B(INPUT[133]), .CI(INPUT[109]), .CO(n51), .S(
        n52) );
  ad01d1 U36 ( .A(n61), .B(n56), .CI(n54), .CO(OUT0[13]), .S(OUT1[12]) );
  ad01d1 U37 ( .A(n60), .B(n58), .CI(n63), .CO(n53), .S(n54) );
  ad01d1 U38 ( .A(n67), .B(INPUT[36]), .CI(n65), .CO(n55), .S(n56) );
  ad01d1 U39 ( .A(INPUT[84]), .B(INPUT[12]), .CI(INPUT[60]), .CO(n57), .S(n58)
         );
  ad01d1 U40 ( .A(INPUT[156]), .B(INPUT[132]), .CI(INPUT[108]), .CO(n59), .S(
        n60) );
  ad01d1 U41 ( .A(n69), .B(n64), .CI(n62), .CO(OUT0[12]), .S(OUT1[11]) );
  ad01d1 U42 ( .A(n68), .B(n66), .CI(n71), .CO(n61), .S(n62) );
  ad01d1 U43 ( .A(n75), .B(INPUT[35]), .CI(n73), .CO(n63), .S(n64) );
  ad01d1 U44 ( .A(INPUT[83]), .B(INPUT[11]), .CI(INPUT[59]), .CO(n65), .S(n66)
         );
  ad01d1 U45 ( .A(INPUT[155]), .B(INPUT[131]), .CI(INPUT[107]), .CO(n67), .S(
        n68) );
  ad01d1 U46 ( .A(n77), .B(n72), .CI(n70), .CO(OUT0[11]), .S(OUT1[10]) );
  ad01d1 U47 ( .A(n76), .B(n74), .CI(n79), .CO(n69), .S(n70) );
  ad01d1 U48 ( .A(n83), .B(INPUT[34]), .CI(n81), .CO(n71), .S(n72) );
  ad01d1 U49 ( .A(INPUT[82]), .B(INPUT[10]), .CI(INPUT[58]), .CO(n73), .S(n74)
         );
  ad01d1 U50 ( .A(INPUT[154]), .B(INPUT[130]), .CI(INPUT[106]), .CO(n75), .S(
        n76) );
  ad01d1 U51 ( .A(n85), .B(n80), .CI(n78), .CO(OUT0[10]), .S(OUT1[9]) );
  ad01d1 U52 ( .A(n84), .B(n82), .CI(n87), .CO(n77), .S(n78) );
  ad01d1 U53 ( .A(n91), .B(INPUT[33]), .CI(n89), .CO(n79), .S(n80) );
  ad01d1 U54 ( .A(INPUT[81]), .B(INPUT[9]), .CI(INPUT[57]), .CO(n81), .S(n82)
         );
  ad01d1 U55 ( .A(INPUT[153]), .B(INPUT[129]), .CI(INPUT[105]), .CO(n83), .S(
        n84) );
  ad01d1 U56 ( .A(n93), .B(n88), .CI(n86), .CO(OUT0[9]), .S(OUT1[8]) );
  ad01d1 U57 ( .A(n92), .B(n90), .CI(n95), .CO(n85), .S(n86) );
  ad01d1 U58 ( .A(n99), .B(INPUT[32]), .CI(n97), .CO(n87), .S(n88) );
  ad01d1 U59 ( .A(INPUT[80]), .B(INPUT[8]), .CI(INPUT[56]), .CO(n89), .S(n90)
         );
  ad01d1 U60 ( .A(INPUT[152]), .B(INPUT[128]), .CI(INPUT[104]), .CO(n91), .S(
        n92) );
  ad01d1 U61 ( .A(n101), .B(n96), .CI(n94), .CO(OUT0[8]), .S(OUT1[7]) );
  ad01d1 U62 ( .A(n100), .B(n98), .CI(n103), .CO(n93), .S(n94) );
  ad01d1 U63 ( .A(n107), .B(INPUT[31]), .CI(n105), .CO(n95), .S(n96) );
  ad01d1 U64 ( .A(INPUT[79]), .B(INPUT[7]), .CI(INPUT[55]), .CO(n97), .S(n98)
         );
  ad01d1 U65 ( .A(INPUT[151]), .B(INPUT[127]), .CI(INPUT[103]), .CO(n99), .S(
        n100) );
  ad01d1 U66 ( .A(n104), .B(n109), .CI(n102), .CO(OUT0[7]), .S(OUT1[6]) );
  ad01d1 U67 ( .A(n108), .B(n106), .CI(n111), .CO(n101), .S(n102) );
  ad01d1 U68 ( .A(n115), .B(INPUT[30]), .CI(n113), .CO(n103), .S(n104) );
  ad01d1 U69 ( .A(INPUT[78]), .B(INPUT[6]), .CI(INPUT[54]), .CO(n105), .S(n106) );
  ad01d1 U70 ( .A(INPUT[150]), .B(INPUT[126]), .CI(INPUT[102]), .CO(n107), .S(
        n108) );
  ad01d1 U71 ( .A(n117), .B(n112), .CI(n110), .CO(OUT0[6]), .S(OUT1[5]) );
  ad01d1 U72 ( .A(n119), .B(n116), .CI(n114), .CO(n109), .S(n110) );
  ad01d1 U73 ( .A(INPUT[77]), .B(INPUT[53]), .CI(n121), .CO(n111), .S(n112) );
  ad01d1 U74 ( .A(INPUT[101]), .B(INPUT[5]), .CI(INPUT[29]), .CO(n113), .S(
        n114) );
  ah01d1 U75 ( .A(INPUT[149]), .B(INPUT[125]), .CO(n115), .S(n116) );
  ad01d1 U76 ( .A(n120), .B(n123), .CI(n118), .CO(OUT0[5]), .S(OUT1[4]) );
  ad01d1 U77 ( .A(n125), .B(INPUT[28]), .CI(n122), .CO(n117), .S(n118) );
  ad01d1 U78 ( .A(INPUT[76]), .B(INPUT[4]), .CI(INPUT[52]), .CO(n119), .S(n120) );
  ah01d1 U79 ( .A(INPUT[148]), .B(INPUT[100]), .CO(n121), .S(n122) );
  ad01d1 U80 ( .A(n126), .B(n127), .CI(n124), .CO(OUT0[4]), .S(OUT1[3]) );
  ad01d1 U81 ( .A(INPUT[51]), .B(INPUT[3]), .CI(INPUT[27]), .CO(n123), .S(n124) );
  ah01d1 U82 ( .A(INPUT[147]), .B(INPUT[75]), .CO(n125), .S(n126) );
  ad01d1 U83 ( .A(INPUT[26]), .B(INPUT[2]), .CI(n128), .CO(OUT0[3]), .S(
        OUT1[2]) );
  ah01d1 U84 ( .A(INPUT[146]), .B(INPUT[50]), .CO(n127), .S(OUT0[2]) );
  ah01d1 U85 ( .A(INPUT[25]), .B(INPUT[1]), .CO(n128), .S(OUT1[1]) );
endmodule


module std_calc_0_DW01_add_15_DW01_add_33 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [23:2] carry;

  ad01d0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .S(SUM[23]) );
  ad01d0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ad01d0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ad01d0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ad01d0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ad01d0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ad01d0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ad01d0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ad01d0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ad01d0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ad01d0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ad01d0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ad01d0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ad01d0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  an02d1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  xr02d1 U2 ( .A1(A[0]), .A2(B[0]), .Z(SUM[0]) );
endmodule


module std_calc_0_DW_mult_seq_0_DW_mult_seq_1 ( clk, rst_n, hold, start, a, b, 
        complete, product );
  input [17:0] a;
  input [17:0] b;
  output [35:0] product;
  input clk, rst_n, hold, start;
  output complete;
  wire   n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, count_ov_n, first_cyc, shf_in_5__2_, shf_in_4__2_,
         shf_in_3__2_, shf_in_2__2_, shf_in_1__2_, shf_in_0__2_, pp_5__22_,
         pp_5__21_, pp_5__20_, pp_5__19_, pp_5__18_, pp_5__17_, pp_5__16_,
         pp_5__15_, pp_5__14_, pp_5__13_, pp_5__12_, pp_5__11_, pp_5__10_,
         pp_5__9_, pp_5__8_, pp_5__7_, pp_5__6_, pp_5__5_, pp_4__21_,
         pp_4__20_, pp_4__19_, pp_4__18_, pp_4__17_, pp_4__16_, pp_4__15_,
         pp_4__14_, pp_4__13_, pp_4__12_, pp_4__11_, pp_4__10_, pp_4__9_,
         pp_4__8_, pp_4__7_, pp_4__6_, pp_4__5_, pp_4__4_, pp_3__20_,
         pp_3__19_, pp_3__18_, pp_3__17_, pp_3__16_, pp_3__15_, pp_3__14_,
         pp_3__13_, pp_3__12_, pp_3__11_, pp_3__10_, pp_3__9_, pp_3__8_,
         pp_3__7_, pp_3__6_, pp_3__5_, pp_3__4_, pp_3__3_, pp_2__19_,
         pp_2__18_, pp_2__17_, pp_2__16_, pp_2__15_, pp_2__14_, pp_2__13_,
         pp_2__12_, pp_2__11_, pp_2__10_, pp_2__9_, pp_2__8_, pp_2__7_,
         pp_2__6_, pp_2__5_, pp_2__4_, pp_2__3_, pp_2__2_, pp_1__18_,
         pp_1__17_, pp_1__16_, pp_1__15_, pp_1__14_, pp_1__13_, pp_1__12_,
         pp_1__11_, pp_1__10_, pp_1__9_, pp_1__8_, pp_1__7_, pp_1__6_,
         pp_1__5_, pp_1__4_, pp_1__3_, pp_1__2_, pp_1__1_, pp_0__17_,
         pp_0__16_, pp_0__15_, pp_0__14_, pp_0__13_, pp_0__12_, pp_0__11_,
         pp_0__10_, pp_0__9_, pp_0__8_, pp_0__7_, pp_0__6_, pp_0__5_, pp_0__4_,
         pp_0__3_, pp_0__2_, pp_0__1_, pp_0__0_, N8, N9, N10, N11, N12, N13,
         N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27,
         N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41,
         N42, N43, N44, U_COUNT_tercnt_d, U_COUNT_tercnt_cmp_bus_0_,
         U_COUNT_next_count_2_, U_COUNT_load_n, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106;
  wire   [17:0] mac_reg_temp1;
  wire   [17:0] c_in;
  wire   [17:0] b_in;
  wire   [23:0] temp_sum;
  wire   [23:0] temp_car;
  wire   [2:0] U_COUNT_count_inc;
  wire   [2:0] U_COUNT_count;

  std_calc_0_DW02_tree_0_DW02_tree_1 U_TREE ( .INPUT({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, c_in, 1'b0, pp_5__22_, pp_5__21_, pp_5__20_, pp_5__19_, 
        pp_5__18_, pp_5__17_, pp_5__16_, pp_5__15_, pp_5__14_, pp_5__13_, 
        pp_5__12_, pp_5__11_, pp_5__10_, pp_5__9_, pp_5__8_, pp_5__7_, 
        pp_5__6_, pp_5__5_, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        pp_4__21_, pp_4__20_, pp_4__19_, pp_4__18_, pp_4__17_, pp_4__16_, 
        pp_4__15_, pp_4__14_, pp_4__13_, pp_4__12_, pp_4__11_, pp_4__10_, 
        pp_4__9_, pp_4__8_, pp_4__7_, pp_4__6_, pp_4__5_, pp_4__4_, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, pp_3__20_, pp_3__19_, pp_3__18_, 
        pp_3__17_, pp_3__16_, pp_3__15_, pp_3__14_, pp_3__13_, pp_3__12_, 
        pp_3__11_, pp_3__10_, pp_3__9_, pp_3__8_, pp_3__7_, pp_3__6_, pp_3__5_, 
        pp_3__4_, pp_3__3_, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        pp_2__19_, pp_2__18_, pp_2__17_, pp_2__16_, pp_2__15_, pp_2__14_, 
        pp_2__13_, pp_2__12_, pp_2__11_, pp_2__10_, pp_2__9_, pp_2__8_, 
        pp_2__7_, pp_2__6_, pp_2__5_, pp_2__4_, pp_2__3_, pp_2__2_, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, pp_1__18_, pp_1__17_, pp_1__16_, 
        pp_1__15_, pp_1__14_, pp_1__13_, pp_1__12_, pp_1__11_, pp_1__10_, 
        pp_1__9_, pp_1__8_, pp_1__7_, pp_1__6_, pp_1__5_, pp_1__4_, pp_1__3_, 
        pp_1__2_, pp_1__1_, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        pp_0__17_, pp_0__16_, pp_0__15_, pp_0__14_, pp_0__13_, pp_0__12_, 
        pp_0__11_, pp_0__10_, pp_0__9_, pp_0__8_, pp_0__7_, pp_0__6_, pp_0__5_, 
        pp_0__4_, pp_0__3_, pp_0__2_, pp_0__1_, pp_0__0_}), .OUT0(temp_sum), 
        .OUT1(temp_car) );
  std_calc_0_DW01_add_15_DW01_add_33 U_ADD ( .A(temp_sum), .B(temp_car), .CI(
        1'b0), .SUM({mac_reg_temp1, shf_in_5__2_, shf_in_4__2_, shf_in_3__2_, 
        shf_in_2__2_, shf_in_1__2_, shf_in_0__2_}) );
  dfcrq1 shf_reg_reg_5__2_ ( .D(N44), .CP(clk), .CDN(n7), .Q(product[17]) );
  dfcrq1 shf_reg_reg_5__1_ ( .D(N43), .CP(clk), .CDN(n8), .Q(n108) );
  dfcrq1 shf_reg_reg_5__0_ ( .D(N42), .CP(clk), .CDN(n7), .Q(n114) );
  dfcrq1 shf_reg_reg_4__2_ ( .D(N41), .CP(clk), .CDN(n7), .Q(product[16]) );
  dfcrq1 shf_reg_reg_4__1_ ( .D(N40), .CP(clk), .CDN(n7), .Q(n109) );
  dfcrq1 shf_reg_reg_4__0_ ( .D(N39), .CP(clk), .CDN(n7), .Q(n115) );
  dfcrq1 shf_reg_reg_3__2_ ( .D(N38), .CP(clk), .CDN(n7), .Q(product[15]) );
  dfcrq1 shf_reg_reg_3__1_ ( .D(N37), .CP(clk), .CDN(n8), .Q(n110) );
  dfcrq1 shf_reg_reg_3__0_ ( .D(N36), .CP(clk), .CDN(n8), .Q(n116) );
  dfcrq1 shf_reg_reg_2__2_ ( .D(N35), .CP(clk), .CDN(n8), .Q(product[14]) );
  dfcrq1 shf_reg_reg_2__1_ ( .D(N34), .CP(clk), .CDN(n8), .Q(n111) );
  dfcrq1 shf_reg_reg_2__0_ ( .D(N33), .CP(clk), .CDN(n8), .Q(n117) );
  dfcrq1 shf_reg_reg_1__2_ ( .D(N32), .CP(clk), .CDN(n8), .Q(product[13]) );
  dfcrq1 shf_reg_reg_1__1_ ( .D(N31), .CP(clk), .CDN(n9), .Q(n112) );
  dfcrq1 shf_reg_reg_1__0_ ( .D(N30), .CP(clk), .CDN(n8), .Q(n118) );
  dfcrq1 shf_reg_reg_0__2_ ( .D(N29), .CP(clk), .CDN(n8), .Q(product[12]) );
  dfcrq1 shf_reg_reg_0__1_ ( .D(N28), .CP(clk), .CDN(n8), .Q(n113) );
  dfcrq1 shf_reg_reg_0__0_ ( .D(N27), .CP(clk), .CDN(n9), .Q(n119) );
  dfcrq1 mac_reg_reg_17_ ( .D(N26), .CP(clk), .CDN(n9), .Q(product[35]) );
  dfcrq1 mac_reg_reg_16_ ( .D(N25), .CP(clk), .CDN(n9), .Q(product[34]) );
  dfcrq1 mac_reg_reg_15_ ( .D(N24), .CP(clk), .CDN(n9), .Q(product[33]) );
  dfcrq1 mac_reg_reg_14_ ( .D(N23), .CP(clk), .CDN(n9), .Q(product[32]) );
  dfcrq1 mac_reg_reg_13_ ( .D(N22), .CP(clk), .CDN(n9), .Q(product[31]) );
  dfcrq1 mac_reg_reg_12_ ( .D(N21), .CP(clk), .CDN(n9), .Q(product[30]) );
  dfcrq1 mac_reg_reg_11_ ( .D(N20), .CP(clk), .CDN(n9), .Q(product[29]) );
  dfcrq1 mac_reg_reg_10_ ( .D(N19), .CP(clk), .CDN(n10), .Q(product[28]) );
  dfcrq1 mac_reg_reg_9_ ( .D(N18), .CP(clk), .CDN(n10), .Q(product[27]) );
  dfcrq1 mac_reg_reg_8_ ( .D(N17), .CP(clk), .CDN(n10), .Q(product[26]) );
  dfcrq1 mac_reg_reg_7_ ( .D(N16), .CP(clk), .CDN(n10), .Q(product[25]) );
  dfcrq1 mac_reg_reg_6_ ( .D(N15), .CP(clk), .CDN(n10), .Q(product[24]) );
  dfcrq1 mac_reg_reg_5_ ( .D(N14), .CP(clk), .CDN(n10), .Q(product[23]) );
  dfcrq1 mac_reg_reg_4_ ( .D(N13), .CP(clk), .CDN(n10), .Q(product[22]) );
  dfcrq1 mac_reg_reg_3_ ( .D(N12), .CP(clk), .CDN(n10), .Q(product[21]) );
  dfcrq1 mac_reg_reg_2_ ( .D(N11), .CP(clk), .CDN(n10), .Q(product[20]) );
  dfcrq1 mac_reg_reg_1_ ( .D(N10), .CP(clk), .CDN(n10), .Q(product[19]) );
  dfcrq1 mac_reg_reg_0_ ( .D(N9), .CP(clk), .CDN(n11), .Q(product[18]) );
  decrq1 b_reg_reg_17_ ( .D(b[17]), .ENN(n22), .CP(clk), .CDN(n11), .Q(
        b_in[17]) );
  decrq1 b_reg_reg_16_ ( .D(b[16]), .ENN(n22), .CP(clk), .CDN(n11), .Q(
        b_in[16]) );
  decrq1 b_reg_reg_15_ ( .D(b[15]), .ENN(n22), .CP(clk), .CDN(n11), .Q(
        b_in[15]) );
  decrq1 b_reg_reg_14_ ( .D(b[14]), .ENN(n22), .CP(clk), .CDN(n11), .Q(
        b_in[14]) );
  decrq1 b_reg_reg_13_ ( .D(b[13]), .ENN(n23), .CP(clk), .CDN(n11), .Q(
        b_in[13]) );
  decrq1 b_reg_reg_12_ ( .D(b[12]), .ENN(n23), .CP(clk), .CDN(n11), .Q(
        b_in[12]) );
  decrq1 b_reg_reg_11_ ( .D(b[11]), .ENN(n23), .CP(clk), .CDN(n11), .Q(
        b_in[11]) );
  decrq1 b_reg_reg_10_ ( .D(b[10]), .ENN(n23), .CP(clk), .CDN(n11), .Q(
        b_in[10]) );
  decrq1 b_reg_reg_9_ ( .D(b[9]), .ENN(n23), .CP(clk), .CDN(n11), .Q(b_in[9])
         );
  decrq1 b_reg_reg_8_ ( .D(b[8]), .ENN(n23), .CP(clk), .CDN(n11), .Q(b_in[8])
         );
  decrq1 b_reg_reg_7_ ( .D(b[7]), .ENN(n23), .CP(clk), .CDN(n12), .Q(b_in[7])
         );
  decrq1 b_reg_reg_6_ ( .D(b[6]), .ENN(n23), .CP(clk), .CDN(n12), .Q(b_in[6])
         );
  decrq1 b_reg_reg_5_ ( .D(b[5]), .ENN(n22), .CP(clk), .CDN(n12), .Q(b_in[5])
         );
  decrq1 b_reg_reg_4_ ( .D(b[4]), .ENN(n23), .CP(clk), .CDN(n12), .Q(b_in[4])
         );
  decrq1 b_reg_reg_3_ ( .D(b[3]), .ENN(n23), .CP(clk), .CDN(n12), .Q(b_in[3])
         );
  decrq1 b_reg_reg_2_ ( .D(b[2]), .ENN(n24), .CP(clk), .CDN(n12), .Q(b_in[2])
         );
  decrq1 b_reg_reg_1_ ( .D(b[1]), .ENN(n24), .CP(clk), .CDN(n12), .Q(b_in[1])
         );
  decrq1 b_reg_reg_0_ ( .D(b[0]), .ENN(n24), .CP(clk), .CDN(n12), .Q(b_in[0])
         );
  dfcrn1 U_COUNT_U2_1 ( .D(U_COUNT_tercnt_d), .CP(clk), .CDN(n7), .QN(
        count_ov_n) );
  dfcrq1 U_COUNT_U1_3_2 ( .D(U_COUNT_next_count_2_), .CP(clk), .CDN(n9), .Q(
        U_COUNT_count[2]) );
  dfcrq1 U_COUNT_U1_3_1 ( .D(n31), .CP(clk), .CDN(n7), .Q(U_COUNT_count[1]) );
  dfcrq1 U_COUNT_U1_3_0 ( .D(U_COUNT_tercnt_cmp_bus_0_), .CP(clk), .CDN(n7), 
        .Q(U_COUNT_count[0]) );
  dfcrq1 start_reg_reg ( .D(N8), .CP(clk), .CDN(n7), .Q(first_cyc) );
  buffd1 U4 ( .I(n6), .Z(n11) );
  buffd1 U5 ( .I(n5), .Z(n7) );
  buffd1 U6 ( .I(n6), .Z(n10) );
  buffd1 U7 ( .I(n5), .Z(n9) );
  buffd1 U8 ( .I(n5), .Z(n8) );
  buffd1 U9 ( .I(n6), .Z(n12) );
  buffd1 U10 ( .I(n33), .Z(n25) );
  buffd1 U11 ( .I(n33), .Z(n26) );
  buffd1 U12 ( .I(n33), .Z(n27) );
  buffd1 U13 ( .I(rst_n), .Z(n6) );
  buffd1 U14 ( .I(rst_n), .Z(n5) );
  inv0d0 U15 ( .I(n101), .ZN(n33) );
  nd02d1 U16 ( .A1(n15), .A2(n24), .ZN(n101) );
  inv0d0 U17 ( .I(n28), .ZN(n31) );
  buffd1 U18 ( .I(U_COUNT_load_n), .Z(n24) );
  buffd1 U19 ( .I(U_COUNT_load_n), .Z(n21) );
  buffd1 U20 ( .I(U_COUNT_load_n), .Z(n22) );
  buffd1 U21 ( .I(U_COUNT_load_n), .Z(n23) );
  inv0d0 U22 ( .I(n19), .ZN(n20) );
  inv0d0 U23 ( .I(n107), .ZN(n19) );
  inv0d0 U24 ( .I(product[19]), .ZN(n68) );
  inv0d1 U25 ( .I(n119), .ZN(n51) );
  inv0d1 U26 ( .I(n118), .ZN(n48) );
  inv0d1 U27 ( .I(n117), .ZN(n45) );
  inv0d0 U28 ( .I(b_in[1]), .ZN(n86) );
  inv0d0 U29 ( .I(b_in[0]), .ZN(n87) );
  inv0d0 U30 ( .I(b_in[2]), .ZN(n85) );
  inv0d0 U31 ( .I(b_in[3]), .ZN(n84) );
  inv0d0 U32 ( .I(product[22]), .ZN(n65) );
  inv0d1 U33 ( .I(n115), .ZN(n39) );
  inv0d1 U34 ( .I(n116), .ZN(n42) );
  inv0d0 U35 ( .I(product[21]), .ZN(n66) );
  inv0d0 U36 ( .I(product[18]), .ZN(n69) );
  inv0d0 U37 ( .I(product[20]), .ZN(n67) );
  inv0d0 U38 ( .I(b_in[5]), .ZN(n82) );
  inv0d0 U39 ( .I(b_in[4]), .ZN(n83) );
  inv0d1 U40 ( .I(n114), .ZN(n36) );
  inv0d0 U41 ( .I(product[23]), .ZN(n64) );
  inv0d0 U42 ( .I(product[24]), .ZN(n63) );
  inv0d0 U43 ( .I(b_in[6]), .ZN(n81) );
  inv0d0 U44 ( .I(product[25]), .ZN(n62) );
  inv0d0 U45 ( .I(b_in[7]), .ZN(n80) );
  inv0d0 U46 ( .I(product[26]), .ZN(n61) );
  inv0d0 U47 ( .I(b_in[8]), .ZN(n79) );
  inv0d0 U48 ( .I(product[27]), .ZN(n60) );
  inv0d0 U49 ( .I(b_in[9]), .ZN(n78) );
  inv0d0 U50 ( .I(product[28]), .ZN(n59) );
  inv0d0 U51 ( .I(b_in[10]), .ZN(n77) );
  inv0d0 U52 ( .I(product[29]), .ZN(n58) );
  inv0d0 U53 ( .I(b_in[11]), .ZN(n76) );
  inv0d0 U54 ( .I(product[30]), .ZN(n57) );
  inv0d0 U55 ( .I(b_in[12]), .ZN(n75) );
  inv0d0 U56 ( .I(product[31]), .ZN(n56) );
  inv0d0 U57 ( .I(b_in[13]), .ZN(n74) );
  inv0d0 U58 ( .I(product[32]), .ZN(n55) );
  inv0d0 U59 ( .I(b_in[14]), .ZN(n73) );
  inv0d0 U60 ( .I(product[33]), .ZN(n54) );
  inv0d0 U61 ( .I(b_in[15]), .ZN(n72) );
  inv0d0 U62 ( .I(product[34]), .ZN(n53) );
  inv0d0 U63 ( .I(b_in[16]), .ZN(n71) );
  inv0d0 U64 ( .I(product[35]), .ZN(n52) );
  inv0d0 U65 ( .I(b_in[17]), .ZN(n70) );
  nr02d1 U66 ( .A1(start), .A2(count_ov_n), .ZN(n107) );
  inv0d0 U67 ( .I(start), .ZN(U_COUNT_load_n) );
  inv0d0 U68 ( .I(a[0]), .ZN(n99) );
  inv0d0 U69 ( .I(a[6]), .ZN(n93) );
  inv0d0 U70 ( .I(a[1]), .ZN(n98) );
  inv0d0 U71 ( .I(a[7]), .ZN(n92) );
  inv0d0 U72 ( .I(a[2]), .ZN(n97) );
  inv0d0 U73 ( .I(a[8]), .ZN(n91) );
  inv0d0 U74 ( .I(a[3]), .ZN(n96) );
  inv0d0 U75 ( .I(a[9]), .ZN(n90) );
  inv0d0 U76 ( .I(a[4]), .ZN(n95) );
  inv0d0 U77 ( .I(a[10]), .ZN(n89) );
  inv0d0 U78 ( .I(a[5]), .ZN(n94) );
  inv0d0 U79 ( .I(a[11]), .ZN(n88) );
  inv0d0 U80 ( .I(U_COUNT_count[1]), .ZN(n32) );
  inv0d0 U81 ( .I(n17), .ZN(n18) );
  inv0d0 U82 ( .I(n14), .ZN(n17) );
  inv0d0 U83 ( .I(n15), .ZN(complete) );
  inv0d0 U84 ( .I(n13), .ZN(n15) );
  nr02d1 U85 ( .A1(start), .A2(count_ov_n), .ZN(n13) );
  inv0d0 U86 ( .I(n113), .ZN(n50) );
  inv0d0 U87 ( .I(n112), .ZN(n47) );
  inv0d0 U88 ( .I(n111), .ZN(n44) );
  inv0d0 U89 ( .I(n110), .ZN(n41) );
  inv0d0 U90 ( .I(n109), .ZN(n38) );
  inv0d0 U91 ( .I(n108), .ZN(n35) );
  inv0d0 U92 ( .I(product[12]), .ZN(n49) );
  inv0d0 U93 ( .I(product[13]), .ZN(n46) );
  inv0d0 U94 ( .I(product[14]), .ZN(n43) );
  inv0d0 U95 ( .I(product[15]), .ZN(n40) );
  inv0d0 U96 ( .I(product[16]), .ZN(n37) );
  inv0d0 U97 ( .I(product[17]), .ZN(n34) );
  nr02d1 U98 ( .A1(start), .A2(count_ov_n), .ZN(n14) );
  an02d0 U99 ( .A1(n24), .A2(U_COUNT_count_inc[2]), .Z(U_COUNT_next_count_2_)
         );
  an02d0 U100 ( .A1(n24), .A2(U_COUNT_count_inc[0]), .Z(
        U_COUNT_tercnt_cmp_bus_0_) );
  nd02d0 U101 ( .A1(n24), .A2(U_COUNT_count_inc[1]), .ZN(n28) );
  nr13d1 U102 ( .A1(U_COUNT_count_inc[0]), .A2(U_COUNT_count_inc[2]), .A3(n28), 
        .ZN(U_COUNT_tercnt_d) );
  xr02d1 U103 ( .A1(U_COUNT_count[2]), .A2(n29), .Z(U_COUNT_count_inc[2]) );
  nr02d0 U104 ( .A1(n30), .A2(n32), .ZN(n29) );
  xr02d1 U105 ( .A1(n32), .A2(n30), .Z(U_COUNT_count_inc[1]) );
  nd02d0 U106 ( .A1(n17), .A2(U_COUNT_count[0]), .ZN(n30) );
  xr02d1 U107 ( .A1(n19), .A2(U_COUNT_count[0]), .Z(U_COUNT_count_inc[0]) );
  nr02d0 U108 ( .A1(n83), .A2(n36), .ZN(pp_5__9_) );
  nr02d0 U109 ( .A1(n36), .A2(n84), .ZN(pp_5__8_) );
  nr02d0 U110 ( .A1(n36), .A2(n85), .ZN(pp_5__7_) );
  nr02d0 U111 ( .A1(n36), .A2(n86), .ZN(pp_5__6_) );
  nr02d0 U112 ( .A1(n36), .A2(n87), .ZN(pp_5__5_) );
  nr02d0 U113 ( .A1(n36), .A2(n70), .ZN(pp_5__22_) );
  nr02d0 U114 ( .A1(n36), .A2(n71), .ZN(pp_5__21_) );
  nr02d0 U115 ( .A1(n36), .A2(n72), .ZN(pp_5__20_) );
  nr02d0 U116 ( .A1(n36), .A2(n73), .ZN(pp_5__19_) );
  nr02d0 U117 ( .A1(n36), .A2(n74), .ZN(pp_5__18_) );
  nr02d0 U118 ( .A1(n36), .A2(n75), .ZN(pp_5__17_) );
  nr02d0 U119 ( .A1(n36), .A2(n76), .ZN(pp_5__16_) );
  nr02d0 U120 ( .A1(n36), .A2(n77), .ZN(pp_5__15_) );
  nr02d0 U121 ( .A1(n36), .A2(n78), .ZN(pp_5__14_) );
  nr02d0 U122 ( .A1(n36), .A2(n79), .ZN(pp_5__13_) );
  nr02d0 U123 ( .A1(n36), .A2(n80), .ZN(pp_5__12_) );
  nr02d0 U124 ( .A1(n36), .A2(n81), .ZN(pp_5__11_) );
  nr02d0 U125 ( .A1(n36), .A2(n82), .ZN(pp_5__10_) );
  nr02d0 U126 ( .A1(n82), .A2(n39), .ZN(pp_4__9_) );
  nr02d0 U127 ( .A1(n83), .A2(n39), .ZN(pp_4__8_) );
  nr02d0 U128 ( .A1(n84), .A2(n39), .ZN(pp_4__7_) );
  nr02d0 U129 ( .A1(n85), .A2(n39), .ZN(pp_4__6_) );
  nr02d0 U130 ( .A1(n86), .A2(n39), .ZN(pp_4__5_) );
  nr02d0 U131 ( .A1(n87), .A2(n39), .ZN(pp_4__4_) );
  nr02d0 U132 ( .A1(n70), .A2(n39), .ZN(pp_4__21_) );
  nr02d0 U133 ( .A1(n71), .A2(n39), .ZN(pp_4__20_) );
  nr02d0 U134 ( .A1(n72), .A2(n39), .ZN(pp_4__19_) );
  nr02d0 U135 ( .A1(n73), .A2(n39), .ZN(pp_4__18_) );
  nr02d0 U136 ( .A1(n74), .A2(n39), .ZN(pp_4__17_) );
  nr02d0 U137 ( .A1(n75), .A2(n39), .ZN(pp_4__16_) );
  nr02d0 U138 ( .A1(n76), .A2(n39), .ZN(pp_4__15_) );
  nr02d0 U139 ( .A1(n77), .A2(n39), .ZN(pp_4__14_) );
  nr02d0 U140 ( .A1(n78), .A2(n39), .ZN(pp_4__13_) );
  nr02d0 U141 ( .A1(n79), .A2(n39), .ZN(pp_4__12_) );
  nr02d0 U142 ( .A1(n80), .A2(n39), .ZN(pp_4__11_) );
  nr02d0 U143 ( .A1(n81), .A2(n39), .ZN(pp_4__10_) );
  nr02d0 U144 ( .A1(n81), .A2(n42), .ZN(pp_3__9_) );
  nr02d0 U145 ( .A1(n82), .A2(n42), .ZN(pp_3__8_) );
  nr02d0 U146 ( .A1(n83), .A2(n42), .ZN(pp_3__7_) );
  nr02d0 U147 ( .A1(n84), .A2(n42), .ZN(pp_3__6_) );
  nr02d0 U148 ( .A1(n85), .A2(n42), .ZN(pp_3__5_) );
  nr02d0 U149 ( .A1(n86), .A2(n42), .ZN(pp_3__4_) );
  nr02d0 U150 ( .A1(n87), .A2(n42), .ZN(pp_3__3_) );
  nr02d0 U151 ( .A1(n70), .A2(n42), .ZN(pp_3__20_) );
  nr02d0 U152 ( .A1(n71), .A2(n42), .ZN(pp_3__19_) );
  nr02d0 U153 ( .A1(n72), .A2(n42), .ZN(pp_3__18_) );
  nr02d0 U154 ( .A1(n73), .A2(n42), .ZN(pp_3__17_) );
  nr02d0 U155 ( .A1(n74), .A2(n42), .ZN(pp_3__16_) );
  nr02d0 U156 ( .A1(n75), .A2(n42), .ZN(pp_3__15_) );
  nr02d0 U157 ( .A1(n76), .A2(n42), .ZN(pp_3__14_) );
  nr02d0 U158 ( .A1(n77), .A2(n42), .ZN(pp_3__13_) );
  nr02d0 U159 ( .A1(n78), .A2(n42), .ZN(pp_3__12_) );
  nr02d0 U160 ( .A1(n79), .A2(n42), .ZN(pp_3__11_) );
  nr02d0 U161 ( .A1(n80), .A2(n42), .ZN(pp_3__10_) );
  nr02d0 U162 ( .A1(n80), .A2(n45), .ZN(pp_2__9_) );
  nr02d0 U163 ( .A1(n81), .A2(n45), .ZN(pp_2__8_) );
  nr02d0 U164 ( .A1(n82), .A2(n45), .ZN(pp_2__7_) );
  nr02d0 U165 ( .A1(n83), .A2(n45), .ZN(pp_2__6_) );
  nr02d0 U166 ( .A1(n84), .A2(n45), .ZN(pp_2__5_) );
  nr02d0 U167 ( .A1(n85), .A2(n45), .ZN(pp_2__4_) );
  nr02d0 U168 ( .A1(n86), .A2(n45), .ZN(pp_2__3_) );
  nr02d0 U169 ( .A1(n87), .A2(n45), .ZN(pp_2__2_) );
  nr02d0 U170 ( .A1(n70), .A2(n45), .ZN(pp_2__19_) );
  nr02d0 U171 ( .A1(n71), .A2(n45), .ZN(pp_2__18_) );
  nr02d0 U172 ( .A1(n72), .A2(n45), .ZN(pp_2__17_) );
  nr02d0 U173 ( .A1(n73), .A2(n45), .ZN(pp_2__16_) );
  nr02d0 U174 ( .A1(n74), .A2(n45), .ZN(pp_2__15_) );
  nr02d0 U175 ( .A1(n75), .A2(n45), .ZN(pp_2__14_) );
  nr02d0 U176 ( .A1(n76), .A2(n45), .ZN(pp_2__13_) );
  nr02d0 U177 ( .A1(n77), .A2(n45), .ZN(pp_2__12_) );
  nr02d0 U178 ( .A1(n78), .A2(n45), .ZN(pp_2__11_) );
  nr02d0 U179 ( .A1(n79), .A2(n45), .ZN(pp_2__10_) );
  nr02d0 U180 ( .A1(n79), .A2(n48), .ZN(pp_1__9_) );
  nr02d0 U181 ( .A1(n80), .A2(n48), .ZN(pp_1__8_) );
  nr02d0 U182 ( .A1(n81), .A2(n48), .ZN(pp_1__7_) );
  nr02d0 U183 ( .A1(n82), .A2(n48), .ZN(pp_1__6_) );
  nr02d0 U184 ( .A1(n83), .A2(n48), .ZN(pp_1__5_) );
  nr02d0 U185 ( .A1(n84), .A2(n48), .ZN(pp_1__4_) );
  nr02d0 U186 ( .A1(n85), .A2(n48), .ZN(pp_1__3_) );
  nr02d0 U187 ( .A1(n86), .A2(n48), .ZN(pp_1__2_) );
  nr02d0 U188 ( .A1(n87), .A2(n48), .ZN(pp_1__1_) );
  nr02d0 U189 ( .A1(n70), .A2(n48), .ZN(pp_1__18_) );
  nr02d0 U190 ( .A1(n71), .A2(n48), .ZN(pp_1__17_) );
  nr02d0 U191 ( .A1(n72), .A2(n48), .ZN(pp_1__16_) );
  nr02d0 U192 ( .A1(n73), .A2(n48), .ZN(pp_1__15_) );
  nr02d0 U193 ( .A1(n74), .A2(n48), .ZN(pp_1__14_) );
  nr02d0 U194 ( .A1(n75), .A2(n48), .ZN(pp_1__13_) );
  nr02d0 U195 ( .A1(n76), .A2(n48), .ZN(pp_1__12_) );
  nr02d0 U196 ( .A1(n77), .A2(n48), .ZN(pp_1__11_) );
  nr02d0 U197 ( .A1(n78), .A2(n48), .ZN(pp_1__10_) );
  nr02d0 U198 ( .A1(n78), .A2(n51), .ZN(pp_0__9_) );
  nr02d0 U199 ( .A1(n79), .A2(n51), .ZN(pp_0__8_) );
  nr02d0 U200 ( .A1(n80), .A2(n51), .ZN(pp_0__7_) );
  nr02d0 U201 ( .A1(n81), .A2(n51), .ZN(pp_0__6_) );
  nr02d0 U202 ( .A1(n82), .A2(n51), .ZN(pp_0__5_) );
  nr02d0 U203 ( .A1(n83), .A2(n51), .ZN(pp_0__4_) );
  nr02d0 U204 ( .A1(n84), .A2(n51), .ZN(pp_0__3_) );
  nr02d0 U205 ( .A1(n85), .A2(n51), .ZN(pp_0__2_) );
  nr02d0 U206 ( .A1(n86), .A2(n51), .ZN(pp_0__1_) );
  nr02d0 U207 ( .A1(n70), .A2(n51), .ZN(pp_0__17_) );
  nr02d0 U208 ( .A1(n71), .A2(n51), .ZN(pp_0__16_) );
  nr02d0 U209 ( .A1(n72), .A2(n51), .ZN(pp_0__15_) );
  nr02d0 U210 ( .A1(n73), .A2(n51), .ZN(pp_0__14_) );
  nr02d0 U211 ( .A1(n74), .A2(n51), .ZN(pp_0__13_) );
  nr02d0 U212 ( .A1(n75), .A2(n51), .ZN(pp_0__12_) );
  nr02d0 U213 ( .A1(n76), .A2(n51), .ZN(pp_0__11_) );
  nr02d0 U214 ( .A1(n77), .A2(n51), .ZN(pp_0__10_) );
  nr02d0 U215 ( .A1(n87), .A2(n51), .ZN(pp_0__0_) );
  nr02d0 U216 ( .A1(first_cyc), .A2(n60), .ZN(c_in[9]) );
  nr02d0 U217 ( .A1(first_cyc), .A2(n61), .ZN(c_in[8]) );
  nr02d0 U218 ( .A1(first_cyc), .A2(n62), .ZN(c_in[7]) );
  nr02d0 U219 ( .A1(first_cyc), .A2(n63), .ZN(c_in[6]) );
  nr02d0 U220 ( .A1(first_cyc), .A2(n64), .ZN(c_in[5]) );
  nr02d0 U221 ( .A1(first_cyc), .A2(n65), .ZN(c_in[4]) );
  nr02d0 U222 ( .A1(first_cyc), .A2(n66), .ZN(c_in[3]) );
  nr02d0 U223 ( .A1(first_cyc), .A2(n67), .ZN(c_in[2]) );
  nr02d0 U224 ( .A1(first_cyc), .A2(n68), .ZN(c_in[1]) );
  nr02d0 U225 ( .A1(first_cyc), .A2(n52), .ZN(c_in[17]) );
  nr02d0 U226 ( .A1(first_cyc), .A2(n53), .ZN(c_in[16]) );
  nr02d0 U227 ( .A1(first_cyc), .A2(n54), .ZN(c_in[15]) );
  nr02d0 U228 ( .A1(first_cyc), .A2(n55), .ZN(c_in[14]) );
  nr02d0 U229 ( .A1(first_cyc), .A2(n56), .ZN(c_in[13]) );
  nr02d0 U230 ( .A1(first_cyc), .A2(n57), .ZN(c_in[12]) );
  nr02d0 U231 ( .A1(first_cyc), .A2(n58), .ZN(c_in[11]) );
  nr02d0 U232 ( .A1(first_cyc), .A2(n59), .ZN(c_in[10]) );
  nr02d0 U233 ( .A1(first_cyc), .A2(n69), .ZN(c_in[0]) );
  aor22d1 U234 ( .A1(n18), .A2(product[18]), .B1(mac_reg_temp1[0]), .B2(n25), 
        .Z(N9) );
  oaim21d1 U235 ( .B1(n18), .B2(first_cyc), .A(n22), .ZN(N8) );
  oai21d1 U236 ( .B1(n17), .B2(n34), .A(n100), .ZN(N44) );
  aoi22d1 U237 ( .A1(b[17]), .A2(start), .B1(shf_in_5__2_), .B2(n25), .ZN(n100) );
  oai222d1 U238 ( .A1(n101), .A2(n34), .B1(n21), .B2(n88), .C1(n19), .C2(n35), 
        .ZN(N43) );
  oai222d1 U239 ( .A1(n101), .A2(n35), .B1(n21), .B2(n94), .C1(n19), .C2(n36), 
        .ZN(N42) );
  oai21d1 U240 ( .B1(n19), .B2(n37), .A(n102), .ZN(N41) );
  aoi22d1 U241 ( .A1(b[16]), .A2(start), .B1(shf_in_4__2_), .B2(n25), .ZN(n102) );
  oai222d1 U242 ( .A1(n101), .A2(n37), .B1(n21), .B2(n89), .C1(n17), .C2(n38), 
        .ZN(N40) );
  oai222d1 U243 ( .A1(n101), .A2(n38), .B1(n21), .B2(n95), .C1(n19), .C2(n39), 
        .ZN(N39) );
  oai21d1 U244 ( .B1(n17), .B2(n40), .A(n103), .ZN(N38) );
  aoi22d1 U245 ( .A1(b[15]), .A2(start), .B1(shf_in_3__2_), .B2(n25), .ZN(n103) );
  oai222d1 U246 ( .A1(n101), .A2(n40), .B1(n21), .B2(n90), .C1(n19), .C2(n41), 
        .ZN(N37) );
  oai222d1 U247 ( .A1(n101), .A2(n41), .B1(n21), .B2(n96), .C1(n17), .C2(n42), 
        .ZN(N36) );
  oai21d1 U248 ( .B1(n15), .B2(n43), .A(n104), .ZN(N35) );
  aoi22d1 U249 ( .A1(b[14]), .A2(start), .B1(shf_in_2__2_), .B2(n25), .ZN(n104) );
  oai222d1 U250 ( .A1(n101), .A2(n43), .B1(n21), .B2(n91), .C1(n19), .C2(n44), 
        .ZN(N34) );
  oai222d1 U251 ( .A1(n101), .A2(n44), .B1(n21), .B2(n97), .C1(n17), .C2(n45), 
        .ZN(N33) );
  oai21d1 U252 ( .B1(n17), .B2(n46), .A(n105), .ZN(N32) );
  aoi22d1 U253 ( .A1(b[13]), .A2(start), .B1(shf_in_1__2_), .B2(n25), .ZN(n105) );
  oai222d1 U254 ( .A1(n101), .A2(n46), .B1(n21), .B2(n92), .C1(n17), .C2(n47), 
        .ZN(N31) );
  oai222d1 U255 ( .A1(n101), .A2(n47), .B1(n22), .B2(n98), .C1(n17), .C2(n48), 
        .ZN(N30) );
  oai21d1 U256 ( .B1(n15), .B2(n49), .A(n106), .ZN(N29) );
  aoi22d1 U257 ( .A1(b[12]), .A2(start), .B1(shf_in_0__2_), .B2(n25), .ZN(n106) );
  oai222d1 U258 ( .A1(n101), .A2(n49), .B1(n22), .B2(n93), .C1(n19), .C2(n50), 
        .ZN(N28) );
  oai222d1 U259 ( .A1(n101), .A2(n50), .B1(n22), .B2(n99), .C1(n19), .C2(n51), 
        .ZN(N27) );
  aor22d1 U260 ( .A1(complete), .A2(product[35]), .B1(mac_reg_temp1[17]), .B2(
        n25), .Z(N26) );
  aor22d1 U261 ( .A1(n20), .A2(product[34]), .B1(mac_reg_temp1[16]), .B2(n25), 
        .Z(N25) );
  aor22d1 U262 ( .A1(n20), .A2(product[33]), .B1(mac_reg_temp1[15]), .B2(n26), 
        .Z(N24) );
  aor22d1 U263 ( .A1(n18), .A2(product[32]), .B1(mac_reg_temp1[14]), .B2(n26), 
        .Z(N23) );
  aor22d1 U264 ( .A1(complete), .A2(product[31]), .B1(mac_reg_temp1[13]), .B2(
        n26), .Z(N22) );
  aor22d1 U265 ( .A1(complete), .A2(product[30]), .B1(mac_reg_temp1[12]), .B2(
        n26), .Z(N21) );
  aor22d1 U266 ( .A1(n20), .A2(product[29]), .B1(mac_reg_temp1[11]), .B2(n26), 
        .Z(N20) );
  aor22d1 U267 ( .A1(n18), .A2(product[28]), .B1(mac_reg_temp1[10]), .B2(n26), 
        .Z(N19) );
  aor22d1 U268 ( .A1(n18), .A2(product[27]), .B1(mac_reg_temp1[9]), .B2(n26), 
        .Z(N18) );
  aor22d1 U269 ( .A1(complete), .A2(product[26]), .B1(mac_reg_temp1[8]), .B2(
        n26), .Z(N17) );
  aor22d1 U270 ( .A1(n20), .A2(product[25]), .B1(mac_reg_temp1[7]), .B2(n27), 
        .Z(N16) );
  aor22d1 U271 ( .A1(n20), .A2(product[24]), .B1(mac_reg_temp1[6]), .B2(n27), 
        .Z(N15) );
  aor22d1 U272 ( .A1(n18), .A2(product[23]), .B1(mac_reg_temp1[5]), .B2(n27), 
        .Z(N14) );
  aor22d1 U273 ( .A1(complete), .A2(product[22]), .B1(mac_reg_temp1[4]), .B2(
        n27), .Z(N13) );
  aor22d1 U274 ( .A1(complete), .A2(product[21]), .B1(mac_reg_temp1[3]), .B2(
        n27), .Z(N12) );
  aor22d1 U275 ( .A1(n20), .A2(product[20]), .B1(mac_reg_temp1[2]), .B2(n27), 
        .Z(N11) );
  aor22d1 U276 ( .A1(n18), .A2(product[19]), .B1(mac_reg_temp1[1]), .B2(n26), 
        .Z(N10) );
endmodule


module std_calc_0_DW01_sub_0_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [17:1] carry;

  ad01d0 U2_16 ( .A(A[16]), .B(n4), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ad01d0 U2_15 ( .A(A[15]), .B(n5), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ad01d0 U2_14 ( .A(A[14]), .B(n6), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ad01d0 U2_13 ( .A(A[13]), .B(n7), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ad01d0 U2_12 ( .A(A[12]), .B(n8), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ad01d0 U2_11 ( .A(A[11]), .B(n9), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ad01d0 U2_10 ( .A(A[10]), .B(n10), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ad01d0 U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ad01d0 U2_8 ( .A(A[8]), .B(n12), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ad01d0 U2_7 ( .A(A[7]), .B(n13), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ad01d0 U2_6 ( .A(A[6]), .B(n14), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ad01d0 U2_5 ( .A(A[5]), .B(n15), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ad01d0 U2_4 ( .A(A[4]), .B(n16), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ad01d0 U2_3 ( .A(A[3]), .B(n17), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ad01d0 U2_2 ( .A(A[2]), .B(n18), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ad01d0 U2_1 ( .A(A[1]), .B(n19), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  inv0d0 U1 ( .I(n20), .ZN(n1) );
  inv0d0 U2 ( .I(carry[17]), .ZN(DIFF[17]) );
  inv0d0 U3 ( .I(B[15]), .ZN(n5) );
  inv0d0 U4 ( .I(B[12]), .ZN(n8) );
  inv0d0 U5 ( .I(B[13]), .ZN(n7) );
  inv0d0 U6 ( .I(B[14]), .ZN(n6) );
  inv0d0 U7 ( .I(B[4]), .ZN(n16) );
  inv0d0 U8 ( .I(B[8]), .ZN(n12) );
  inv0d0 U9 ( .I(B[9]), .ZN(n11) );
  inv0d0 U10 ( .I(B[3]), .ZN(n17) );
  inv0d0 U11 ( .I(B[2]), .ZN(n18) );
  inv0d0 U12 ( .I(B[5]), .ZN(n15) );
  inv0d0 U13 ( .I(B[7]), .ZN(n13) );
  inv0d0 U14 ( .I(B[11]), .ZN(n9) );
  inv0d0 U15 ( .I(B[6]), .ZN(n14) );
  inv0d0 U16 ( .I(B[10]), .ZN(n10) );
  inv0d0 U17 ( .I(B[16]), .ZN(n4) );
  inv0d0 U18 ( .I(B[1]), .ZN(n19) );
  nd02d1 U19 ( .A1(n1), .A2(n2), .ZN(carry[1]) );
  inv0d0 U20 ( .I(A[0]), .ZN(n2) );
  inv0d0 U21 ( .I(B[0]), .ZN(n20) );
  xn02d1 U22 ( .A1(n20), .A2(A[0]), .ZN(DIFF[0]) );
endmodule


module std_calc_0_DW01_sub_1_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [17:1] carry;

  ad01d0 U2_16 ( .A(A[16]), .B(n17), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ad01d0 U2_15 ( .A(A[15]), .B(n15), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ad01d0 U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ad01d0 U2_13 ( .A(A[13]), .B(n11), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ad01d0 U2_12 ( .A(A[12]), .B(n9), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ad01d0 U2_11 ( .A(A[11]), .B(n7), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ad01d0 U2_10 ( .A(A[10]), .B(n5), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ad01d0 U2_9 ( .A(A[9]), .B(n18), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ad01d0 U2_8 ( .A(A[8]), .B(n16), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ad01d0 U2_7 ( .A(A[7]), .B(n14), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ad01d0 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ad01d0 U2_5 ( .A(A[5]), .B(n10), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ad01d0 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ad01d0 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ad01d0 U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ad01d0 U2_1 ( .A(A[1]), .B(n20), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  inv0d0 U1 ( .I(B[4]), .ZN(n8) );
  inv0d0 U2 ( .I(B[5]), .ZN(n10) );
  inv0d0 U3 ( .I(B[6]), .ZN(n12) );
  inv0d0 U4 ( .I(B[7]), .ZN(n14) );
  inv0d0 U5 ( .I(B[8]), .ZN(n16) );
  inv0d0 U6 ( .I(B[9]), .ZN(n18) );
  inv0d0 U7 ( .I(B[10]), .ZN(n5) );
  inv0d0 U8 ( .I(B[11]), .ZN(n7) );
  inv0d0 U9 ( .I(B[12]), .ZN(n9) );
  inv0d0 U10 ( .I(B[13]), .ZN(n11) );
  inv0d0 U11 ( .I(B[14]), .ZN(n13) );
  inv0d0 U12 ( .I(B[15]), .ZN(n15) );
  inv0d0 U13 ( .I(B[3]), .ZN(n6) );
  inv0d0 U14 ( .I(B[2]), .ZN(n4) );
  inv0d0 U15 ( .I(B[16]), .ZN(n17) );
  inv0d0 U16 ( .I(carry[17]), .ZN(DIFF[17]) );
  inv0d0 U17 ( .I(B[1]), .ZN(n20) );
  nd02d1 U18 ( .A1(n1), .A2(n2), .ZN(carry[1]) );
  inv0d0 U19 ( .I(n19), .ZN(n1) );
  inv0d0 U20 ( .I(A[0]), .ZN(n2) );
  inv0d0 U21 ( .I(B[0]), .ZN(n19) );
  xn02d1 U22 ( .A1(n19), .A2(A[0]), .ZN(DIFF[0]) );
endmodule


module std_calc_0 ( clk, reset_n, start, eeg, mean, count, complete_acc, 
        complete_sqrt, std_dev );
  input [17:0] eeg;
  input [17:0] mean;
  input [7:0] count;
  output [18:0] std_dev;
  input clk, reset_n, start, complete_acc;
  output complete_sqrt;
  wire   start_mult, complete_mult, complete_div, start_sqrt, N6, N8, N9, N10,
         N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24,
         N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, start_acc, complete_mult_pipe, N63, N67, N68,
         N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82,
         N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96,
         N97, N98, complete_div_pipe, N103, n13, n14, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n4, n5, n6, n7, n8, n9, n10, n11, n12, n15, n16, n17,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28,
         SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30,
         SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32;
  wire   [11:0] square_integer;
  wire   [11:0] square_frac;
  wire   [7:0] count_minus_one;
  wire   [11:0] variance_int;
  wire   [3:0] variance_frac;
  wire   [17:0] eeg_minus_mean;
  wire   [27:0] trunck_sum_zeros;
  wire   [19:0] variance_for_sqrt;
  wire   [31:0] sum;
  assign std_dev[0] = 1'b0;
  assign std_dev[1] = 1'b0;
  assign std_dev[2] = 1'b0;
  assign std_dev[3] = 1'b0;
  assign std_dev[4] = 1'b0;
  assign std_dev[5] = 1'b0;
  assign std_dev[6] = 1'b0;
  assign std_dev[7] = 1'b0;
  assign std_dev[18] = 1'b0;

  aor22d1 U3 ( .A1(complete_acc), .A2(sum[31]), .B1(trunck_sum_zeros[27]), 
        .B2(n109), .Z(n18) );
  aor22d1 U4 ( .A1(n17), .A2(sum[31]), .B1(n12), .B2(N98), .Z(n19) );
  aor22d1 U10 ( .A1(complete_acc), .A2(sum[30]), .B1(trunck_sum_zeros[26]), 
        .B2(n109), .Z(n20) );
  aor22d1 U11 ( .A1(n17), .A2(sum[30]), .B1(N97), .B2(n12), .Z(n21) );
  aor22d1 U12 ( .A1(complete_acc), .A2(sum[29]), .B1(trunck_sum_zeros[25]), 
        .B2(n109), .Z(n22) );
  aor22d1 U13 ( .A1(n17), .A2(sum[29]), .B1(N96), .B2(n12), .Z(n23) );
  aor22d1 U14 ( .A1(complete_acc), .A2(sum[28]), .B1(trunck_sum_zeros[24]), 
        .B2(n109), .Z(n24) );
  aor22d1 U15 ( .A1(n17), .A2(sum[28]), .B1(N95), .B2(n12), .Z(n25) );
  aor22d1 U16 ( .A1(complete_acc), .A2(sum[27]), .B1(trunck_sum_zeros[23]), 
        .B2(n109), .Z(n26) );
  aor22d1 U17 ( .A1(n17), .A2(sum[27]), .B1(N94), .B2(n12), .Z(n27) );
  aor22d1 U18 ( .A1(complete_acc), .A2(sum[26]), .B1(trunck_sum_zeros[22]), 
        .B2(n109), .Z(n28) );
  aor22d1 U19 ( .A1(n17), .A2(sum[26]), .B1(N93), .B2(n11), .Z(n29) );
  aor22d1 U20 ( .A1(complete_acc), .A2(sum[25]), .B1(trunck_sum_zeros[21]), 
        .B2(n109), .Z(n30) );
  aor22d1 U21 ( .A1(n17), .A2(sum[25]), .B1(N92), .B2(n11), .Z(n31) );
  aor22d1 U22 ( .A1(complete_acc), .A2(sum[24]), .B1(trunck_sum_zeros[20]), 
        .B2(n109), .Z(n32) );
  aor22d1 U23 ( .A1(n17), .A2(sum[24]), .B1(N91), .B2(n11), .Z(n33) );
  aor22d1 U24 ( .A1(complete_acc), .A2(sum[23]), .B1(trunck_sum_zeros[19]), 
        .B2(n109), .Z(n34) );
  aor22d1 U25 ( .A1(n17), .A2(sum[23]), .B1(N90), .B2(n11), .Z(n35) );
  aor22d1 U26 ( .A1(complete_acc), .A2(sum[22]), .B1(trunck_sum_zeros[18]), 
        .B2(n109), .Z(n36) );
  aor22d1 U27 ( .A1(n17), .A2(sum[22]), .B1(N89), .B2(n11), .Z(n37) );
  aor22d1 U28 ( .A1(n108), .A2(sum[21]), .B1(trunck_sum_zeros[17]), .B2(n4), 
        .Z(n38) );
  aor22d1 U29 ( .A1(n17), .A2(sum[21]), .B1(N88), .B2(n11), .Z(n39) );
  aor22d1 U30 ( .A1(n108), .A2(sum[20]), .B1(trunck_sum_zeros[16]), .B2(n4), 
        .Z(n40) );
  aor22d1 U31 ( .A1(n17), .A2(sum[20]), .B1(N87), .B2(n11), .Z(n41) );
  aor22d1 U32 ( .A1(n108), .A2(sum[19]), .B1(trunck_sum_zeros[15]), .B2(n4), 
        .Z(n42) );
  aor22d1 U33 ( .A1(n17), .A2(sum[19]), .B1(N86), .B2(n11), .Z(n43) );
  aor22d1 U34 ( .A1(n108), .A2(sum[18]), .B1(trunck_sum_zeros[14]), .B2(n4), 
        .Z(n44) );
  aor22d1 U35 ( .A1(n17), .A2(sum[18]), .B1(N85), .B2(n11), .Z(n45) );
  aor22d1 U36 ( .A1(n108), .A2(sum[17]), .B1(trunck_sum_zeros[13]), .B2(n4), 
        .Z(n46) );
  aor22d1 U37 ( .A1(n17), .A2(sum[17]), .B1(N84), .B2(n10), .Z(n47) );
  aor22d1 U38 ( .A1(n108), .A2(sum[16]), .B1(trunck_sum_zeros[12]), .B2(n4), 
        .Z(n48) );
  aor22d1 U39 ( .A1(n16), .A2(sum[16]), .B1(N83), .B2(n10), .Z(n49) );
  aor22d1 U40 ( .A1(complete_acc), .A2(sum[15]), .B1(trunck_sum_zeros[11]), 
        .B2(n4), .Z(n50) );
  aor22d1 U41 ( .A1(n16), .A2(sum[15]), .B1(N82), .B2(n10), .Z(n51) );
  aor22d1 U42 ( .A1(complete_acc), .A2(sum[14]), .B1(trunck_sum_zeros[10]), 
        .B2(n4), .Z(n52) );
  aor22d1 U43 ( .A1(n16), .A2(sum[14]), .B1(N81), .B2(n10), .Z(n53) );
  aor22d1 U44 ( .A1(complete_acc), .A2(sum[13]), .B1(trunck_sum_zeros[9]), 
        .B2(n4), .Z(n54) );
  aor22d1 U45 ( .A1(n16), .A2(sum[13]), .B1(N80), .B2(n10), .Z(n55) );
  aor22d1 U46 ( .A1(complete_acc), .A2(sum[12]), .B1(trunck_sum_zeros[8]), 
        .B2(n4), .Z(n56) );
  aor22d1 U47 ( .A1(n16), .A2(sum[12]), .B1(N79), .B2(n10), .Z(n57) );
  aor22d1 U48 ( .A1(complete_acc), .A2(sum[11]), .B1(trunck_sum_zeros[7]), 
        .B2(n4), .Z(n58) );
  aor22d1 U49 ( .A1(n16), .A2(sum[11]), .B1(N78), .B2(n10), .Z(n59) );
  aor22d1 U50 ( .A1(complete_acc), .A2(sum[10]), .B1(trunck_sum_zeros[6]), 
        .B2(n4), .Z(n60) );
  aor22d1 U51 ( .A1(n16), .A2(sum[10]), .B1(N77), .B2(n10), .Z(n61) );
  aor22d1 U52 ( .A1(complete_acc), .A2(sum[9]), .B1(trunck_sum_zeros[5]), .B2(
        n4), .Z(n62) );
  aor22d1 U53 ( .A1(n16), .A2(sum[9]), .B1(N76), .B2(n10), .Z(n63) );
  aor22d1 U54 ( .A1(complete_acc), .A2(sum[8]), .B1(trunck_sum_zeros[4]), .B2(
        n4), .Z(n64) );
  aor22d1 U56 ( .A1(n16), .A2(sum[8]), .B1(N75), .B2(n12), .Z(n65) );
  aor22d1 U57 ( .A1(sum[7]), .A2(n16), .B1(N74), .B2(n12), .Z(n66) );
  aor22d1 U58 ( .A1(sum[6]), .A2(n16), .B1(N73), .B2(n12), .Z(n67) );
  aor22d1 U59 ( .A1(sum[5]), .A2(n16), .B1(N72), .B2(n12), .Z(n68) );
  aor22d1 U60 ( .A1(sum[4]), .A2(n16), .B1(N71), .B2(start_acc), .Z(n69) );
  aor22d1 U61 ( .A1(sum[3]), .A2(n16), .B1(N70), .B2(start_acc), .Z(n70) );
  aor22d1 U62 ( .A1(sum[2]), .A2(n16), .B1(N69), .B2(start_acc), .Z(n71) );
  aor22d1 U63 ( .A1(sum[0]), .A2(n16), .B1(N67), .B2(start_acc), .Z(n72) );
  aor22d1 U64 ( .A1(sum[1]), .A2(n16), .B1(N68), .B2(start_acc), .Z(n73) );
  aor222d1 U66 ( .A1(N8), .A2(n13), .B1(N26), .B2(n14), .C1(eeg_minus_mean[0]), 
        .C2(n174), .Z(n74) );
  aor222d1 U67 ( .A1(N9), .A2(n13), .B1(N27), .B2(n14), .C1(eeg_minus_mean[1]), 
        .C2(n174), .Z(n75) );
  aor222d1 U68 ( .A1(N10), .A2(n13), .B1(N28), .B2(n14), .C1(eeg_minus_mean[2]), .C2(n174), .Z(n76) );
  aor222d1 U69 ( .A1(N11), .A2(n13), .B1(N29), .B2(n14), .C1(eeg_minus_mean[3]), .C2(n174), .Z(n77) );
  aor222d1 U70 ( .A1(N12), .A2(n13), .B1(N30), .B2(n14), .C1(eeg_minus_mean[4]), .C2(n174), .Z(n78) );
  aor222d1 U71 ( .A1(N13), .A2(n13), .B1(N31), .B2(n14), .C1(eeg_minus_mean[5]), .C2(n174), .Z(n79) );
  aor222d1 U72 ( .A1(N14), .A2(n13), .B1(N32), .B2(n14), .C1(eeg_minus_mean[6]), .C2(n174), .Z(n80) );
  aor222d1 U73 ( .A1(N15), .A2(n13), .B1(N33), .B2(n14), .C1(eeg_minus_mean[7]), .C2(n174), .Z(n81) );
  aor222d1 U74 ( .A1(N16), .A2(n13), .B1(N34), .B2(n14), .C1(eeg_minus_mean[8]), .C2(n174), .Z(n82) );
  aor222d1 U75 ( .A1(N17), .A2(n13), .B1(N35), .B2(n14), .C1(eeg_minus_mean[9]), .C2(n174), .Z(n83) );
  aor222d1 U76 ( .A1(N18), .A2(n13), .B1(N36), .B2(n14), .C1(
        eeg_minus_mean[10]), .C2(n174), .Z(n84) );
  aor222d1 U77 ( .A1(N19), .A2(n13), .B1(N37), .B2(n14), .C1(
        eeg_minus_mean[11]), .C2(n174), .Z(n85) );
  aor222d1 U78 ( .A1(N20), .A2(n13), .B1(N38), .B2(n14), .C1(
        eeg_minus_mean[12]), .C2(n174), .Z(n86) );
  aor222d1 U79 ( .A1(N21), .A2(n13), .B1(N39), .B2(n14), .C1(
        eeg_minus_mean[13]), .C2(n174), .Z(n87) );
  aor222d1 U80 ( .A1(N22), .A2(n13), .B1(N40), .B2(n14), .C1(
        eeg_minus_mean[14]), .C2(n174), .Z(n88) );
  aor222d1 U81 ( .A1(N23), .A2(n13), .B1(N41), .B2(n14), .C1(
        eeg_minus_mean[15]), .C2(n174), .Z(n89) );
  aor222d1 U82 ( .A1(N24), .A2(n13), .B1(N42), .B2(n14), .C1(
        eeg_minus_mean[16]), .C2(n174), .Z(n90) );
  aor222d1 U83 ( .A1(N25), .A2(n13), .B1(N43), .B2(n14), .C1(
        eeg_minus_mean[17]), .C2(n174), .Z(n91) );
  aor22d1 U87 ( .A1(variance_frac[0]), .A2(n9), .B1(variance_for_sqrt[4]), 
        .B2(n5), .Z(n92) );
  aor22d1 U88 ( .A1(variance_frac[1]), .A2(n9), .B1(variance_for_sqrt[5]), 
        .B2(n5), .Z(n93) );
  aor22d1 U89 ( .A1(variance_frac[2]), .A2(n9), .B1(variance_for_sqrt[6]), 
        .B2(n5), .Z(n94) );
  aor22d1 U90 ( .A1(variance_frac[3]), .A2(n9), .B1(variance_for_sqrt[7]), 
        .B2(n5), .Z(n95) );
  aor22d1 U91 ( .A1(variance_int[0]), .A2(n9), .B1(variance_for_sqrt[8]), .B2(
        n5), .Z(n96) );
  aor22d1 U92 ( .A1(variance_int[1]), .A2(n9), .B1(variance_for_sqrt[9]), .B2(
        n5), .Z(n97) );
  aor22d1 U93 ( .A1(variance_int[2]), .A2(n9), .B1(variance_for_sqrt[10]), 
        .B2(n5), .Z(n98) );
  aor22d1 U94 ( .A1(variance_int[3]), .A2(n9), .B1(variance_for_sqrt[11]), 
        .B2(n5), .Z(n99) );
  aor22d1 U95 ( .A1(variance_int[4]), .A2(n9), .B1(variance_for_sqrt[12]), 
        .B2(n5), .Z(n100) );
  aor22d1 U96 ( .A1(variance_int[5]), .A2(n9), .B1(variance_for_sqrt[13]), 
        .B2(n5), .Z(n101) );
  aor22d1 U97 ( .A1(variance_int[6]), .A2(n9), .B1(variance_for_sqrt[14]), 
        .B2(n5), .Z(n102) );
  aor22d1 U98 ( .A1(variance_int[7]), .A2(n9), .B1(variance_for_sqrt[15]), 
        .B2(n5), .Z(n103) );
  aor22d1 U99 ( .A1(variance_int[8]), .A2(n9), .B1(variance_for_sqrt[16]), 
        .B2(n5), .Z(n104) );
  aor22d1 U100 ( .A1(variance_int[9]), .A2(n9), .B1(variance_for_sqrt[17]), 
        .B2(n5), .Z(n105) );
  aor22d1 U101 ( .A1(variance_int[10]), .A2(n9), .B1(variance_for_sqrt[18]), 
        .B2(n5), .Z(n106) );
  aor22d1 U102 ( .A1(variance_int[11]), .A2(n9), .B1(variance_for_sqrt[19]), 
        .B2(n5), .Z(n107) );
  std_calc_0_DW_sqrt_seq_0_DW_sqrt_seq_1 DW_sqrt_seq_std ( .clk(clk), .rst_n(
        n6), .hold(1'b0), .start(start_sqrt), .a({variance_for_sqrt[19:4], 
        1'b0, 1'b0, 1'b0, 1'b0}), .complete(complete_sqrt), .root(
        std_dev[17:8]) );
  std_calc_0_DW_div_seq_0_DW_div_seq_1 DW_div_seq_full ( .clk(clk), .rst_n(n6), 
        .hold(1'b0), .start(n108), .a({trunck_sum_zeros[27:4], 1'b0, 1'b0, 
        1'b0, 1'b0}), .b(count_minus_one), .complete(complete_div), .quotient(
        {SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        variance_int, variance_frac, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12}), .remainder({SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20}) );
  std_calc_0_DW01_add_14_DW01_add_32 add_163 ( .A(sum), .B({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, square_integer, square_frac}), .CI(1'b0), 
        .SUM({N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, 
        N71, N70, N69, N68, N67}) );
  std_calc_0_DW_mult_seq_0_DW_mult_seq_1 DW_mult_seq_full ( .clk(clk), .rst_n(
        n6), .hold(1'b0), .start(start_mult), .a(eeg_minus_mean), .b(
        eeg_minus_mean), .complete(complete_mult), .product({square_integer, 
        square_frac, SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, 
        SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, 
        SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, 
        SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, 
        SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, 
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32}) );
  std_calc_0_DW01_sub_0_DW01_sub_4 sub_140 ( .A({1'b0, mean[16:0]}), .B({1'b0, 
        eeg[16:0]}), .CI(1'b0), .DIFF({N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29, N28, N27, N26}) );
  std_calc_0_DW01_sub_1_DW01_sub_5 sub_138 ( .A({1'b0, eeg[16:0]}), .B({1'b0, 
        mean[16:0]}), .CI(1'b0), .DIFF({N25, N24, N23, N22, N21, N20, N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8}) );
  dfcrq1 complete_mult_pipe_reg ( .D(complete_mult), .CP(clk), .CDN(n6), .Q(
        complete_mult_pipe) );
  dfcrq1 complete_div_pipe_reg ( .D(n9), .CP(clk), .CDN(n7), .Q(
        complete_div_pipe) );
  dfcrq1 variance_for_sqrt_reg_11_ ( .D(n99), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[11]) );
  dfcrq1 variance_for_sqrt_reg_9_ ( .D(n97), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[9]) );
  dfcrq1 variance_for_sqrt_reg_7_ ( .D(n95), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[7]) );
  dfcrq1 variance_for_sqrt_reg_5_ ( .D(n93), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[5]) );
  dfcrq1 trunck_sum_zeros_reg_4_ ( .D(n64), .CP(clk), .CDN(n6), .Q(
        trunck_sum_zeros[4]) );
  dfcrq1 trunck_sum_zeros_reg_5_ ( .D(n62), .CP(clk), .CDN(n6), .Q(
        trunck_sum_zeros[5]) );
  dfcrq1 trunck_sum_zeros_reg_6_ ( .D(n60), .CP(clk), .CDN(n6), .Q(
        trunck_sum_zeros[6]) );
  dfcrq1 trunck_sum_zeros_reg_7_ ( .D(n58), .CP(clk), .CDN(n6), .Q(
        trunck_sum_zeros[7]) );
  dfcrq1 trunck_sum_zeros_reg_8_ ( .D(n56), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[8]) );
  dfcrq1 trunck_sum_zeros_reg_9_ ( .D(n54), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[9]) );
  dfcrq1 trunck_sum_zeros_reg_10_ ( .D(n52), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[10]) );
  dfcrq1 trunck_sum_zeros_reg_11_ ( .D(n50), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[11]) );
  dfcrq1 trunck_sum_zeros_reg_12_ ( .D(n48), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[12]) );
  dfcrq1 trunck_sum_zeros_reg_13_ ( .D(n46), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[13]) );
  dfcrq1 trunck_sum_zeros_reg_14_ ( .D(n44), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[14]) );
  dfcrq1 trunck_sum_zeros_reg_15_ ( .D(n42), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[15]) );
  dfcrq1 trunck_sum_zeros_reg_16_ ( .D(n40), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[16]) );
  dfcrq1 trunck_sum_zeros_reg_17_ ( .D(n38), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[17]) );
  dfcrq1 trunck_sum_zeros_reg_18_ ( .D(n36), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[18]) );
  dfcrq1 trunck_sum_zeros_reg_19_ ( .D(n34), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[19]) );
  dfcrq1 trunck_sum_zeros_reg_20_ ( .D(n32), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[20]) );
  dfcrq1 trunck_sum_zeros_reg_21_ ( .D(n30), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[21]) );
  dfcrq1 trunck_sum_zeros_reg_22_ ( .D(n28), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[22]) );
  dfcrq1 trunck_sum_zeros_reg_23_ ( .D(n26), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[23]) );
  dfcrq1 trunck_sum_zeros_reg_24_ ( .D(n24), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[24]) );
  dfcrq1 trunck_sum_zeros_reg_25_ ( .D(n22), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[25]) );
  dfcrq1 trunck_sum_zeros_reg_26_ ( .D(n20), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[26]) );
  dfcrq1 trunck_sum_zeros_reg_27_ ( .D(n18), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[27]) );
  dfcrq1 variance_for_sqrt_reg_19_ ( .D(n107), .CP(clk), .CDN(n7), .Q(
        variance_for_sqrt[19]) );
  dfcrq1 variance_for_sqrt_reg_18_ ( .D(n106), .CP(clk), .CDN(n7), .Q(
        variance_for_sqrt[18]) );
  dfcrq1 variance_for_sqrt_reg_17_ ( .D(n105), .CP(clk), .CDN(n7), .Q(
        variance_for_sqrt[17]) );
  dfcrq1 variance_for_sqrt_reg_16_ ( .D(n104), .CP(clk), .CDN(n7), .Q(
        variance_for_sqrt[16]) );
  dfcrq1 variance_for_sqrt_reg_15_ ( .D(n103), .CP(clk), .CDN(n7), .Q(
        variance_for_sqrt[15]) );
  dfcrq1 variance_for_sqrt_reg_14_ ( .D(n102), .CP(clk), .CDN(n7), .Q(
        variance_for_sqrt[14]) );
  dfcrq1 variance_for_sqrt_reg_13_ ( .D(n101), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[13]) );
  dfcrq1 variance_for_sqrt_reg_12_ ( .D(n100), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[12]) );
  dfcrq1 variance_for_sqrt_reg_10_ ( .D(n98), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[10]) );
  dfcrq1 variance_for_sqrt_reg_8_ ( .D(n96), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[8]) );
  dfcrq1 variance_for_sqrt_reg_6_ ( .D(n94), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[6]) );
  dfcrq1 variance_for_sqrt_reg_4_ ( .D(n92), .CP(clk), .CDN(n6), .Q(
        variance_for_sqrt[4]) );
  dfcrq1 eeg_minus_mean_reg_17_ ( .D(n91), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[17]) );
  dfcrq1 eeg_minus_mean_reg_16_ ( .D(n90), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[16]) );
  dfcrq1 eeg_minus_mean_reg_15_ ( .D(n89), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[15]) );
  dfcrq1 eeg_minus_mean_reg_14_ ( .D(n88), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[14]) );
  dfcrq1 eeg_minus_mean_reg_13_ ( .D(n87), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[13]) );
  dfcrq1 eeg_minus_mean_reg_12_ ( .D(n86), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[12]) );
  dfcrq1 eeg_minus_mean_reg_11_ ( .D(n85), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[11]) );
  dfcrq1 eeg_minus_mean_reg_10_ ( .D(n84), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[10]) );
  dfcrq1 eeg_minus_mean_reg_9_ ( .D(n83), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[9]) );
  dfcrq1 eeg_minus_mean_reg_8_ ( .D(n82), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[8]) );
  dfcrq1 eeg_minus_mean_reg_7_ ( .D(n81), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[7]) );
  dfcrq1 eeg_minus_mean_reg_6_ ( .D(n80), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[6]) );
  dfcrq1 eeg_minus_mean_reg_5_ ( .D(n79), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[5]) );
  dfcrq1 eeg_minus_mean_reg_4_ ( .D(n78), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[4]) );
  dfcrq1 eeg_minus_mean_reg_3_ ( .D(n77), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[3]) );
  dfcrq1 eeg_minus_mean_reg_2_ ( .D(n76), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[2]) );
  dfcrq1 eeg_minus_mean_reg_1_ ( .D(n75), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[1]) );
  dfcrq1 eeg_minus_mean_reg_0_ ( .D(n74), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[0]) );
  dfcrq1 sum_reg_31_ ( .D(n19), .CP(clk), .CDN(n7), .Q(sum[31]) );
  dfcrq1 start_acc_reg ( .D(N63), .CP(clk), .CDN(n6), .Q(start_acc) );
  dfcrq1 sum_reg_30_ ( .D(n21), .CP(clk), .CDN(n7), .Q(sum[30]) );
  dfcrq1 sum_reg_29_ ( .D(n23), .CP(clk), .CDN(n7), .Q(sum[29]) );
  dfcrq1 sum_reg_28_ ( .D(n25), .CP(clk), .CDN(n7), .Q(sum[28]) );
  dfcrq1 sum_reg_27_ ( .D(n27), .CP(clk), .CDN(n7), .Q(sum[27]) );
  dfcrq1 sum_reg_26_ ( .D(n29), .CP(clk), .CDN(n7), .Q(sum[26]) );
  dfcrq1 sum_reg_25_ ( .D(n31), .CP(clk), .CDN(n7), .Q(sum[25]) );
  dfcrq1 start_mult_reg ( .D(start), .CP(clk), .CDN(n6), .Q(start_mult) );
  dfcrq1 sum_reg_24_ ( .D(n33), .CP(clk), .CDN(n7), .Q(sum[24]) );
  dfcrq1 start_sqrt_reg ( .D(N103), .CP(clk), .CDN(n7), .Q(start_sqrt) );
  dfcrq1 sum_reg_23_ ( .D(n35), .CP(clk), .CDN(n7), .Q(sum[23]) );
  dfcrq1 sum_reg_22_ ( .D(n37), .CP(clk), .CDN(n7), .Q(sum[22]) );
  dfcrq1 sum_reg_21_ ( .D(n39), .CP(clk), .CDN(n7), .Q(sum[21]) );
  dfcrq1 sum_reg_20_ ( .D(n41), .CP(clk), .CDN(n7), .Q(sum[20]) );
  dfcrq1 sum_reg_19_ ( .D(n43), .CP(clk), .CDN(n7), .Q(sum[19]) );
  dfcrq1 sum_reg_18_ ( .D(n45), .CP(clk), .CDN(n7), .Q(sum[18]) );
  dfcrq1 sum_reg_17_ ( .D(n47), .CP(clk), .CDN(n7), .Q(sum[17]) );
  dfcrq1 sum_reg_16_ ( .D(n49), .CP(clk), .CDN(n7), .Q(sum[16]) );
  dfcrq1 sum_reg_15_ ( .D(n51), .CP(clk), .CDN(n7), .Q(sum[15]) );
  dfcrq1 sum_reg_14_ ( .D(n53), .CP(clk), .CDN(n7), .Q(sum[14]) );
  dfcrq1 sum_reg_13_ ( .D(n55), .CP(clk), .CDN(n7), .Q(sum[13]) );
  dfcrq1 sum_reg_12_ ( .D(n57), .CP(clk), .CDN(n7), .Q(sum[12]) );
  dfcrq1 sum_reg_11_ ( .D(n59), .CP(clk), .CDN(n6), .Q(sum[11]) );
  dfcrq1 sum_reg_10_ ( .D(n61), .CP(clk), .CDN(n6), .Q(sum[10]) );
  dfcrq1 sum_reg_9_ ( .D(n63), .CP(clk), .CDN(n6), .Q(sum[9]) );
  dfcrq1 sum_reg_8_ ( .D(n65), .CP(clk), .CDN(n6), .Q(sum[8]) );
  dfcrq1 sum_reg_7_ ( .D(n66), .CP(clk), .CDN(n6), .Q(sum[7]) );
  dfcrq1 sum_reg_6_ ( .D(n67), .CP(clk), .CDN(n6), .Q(sum[6]) );
  dfcrq1 sum_reg_5_ ( .D(n68), .CP(clk), .CDN(n6), .Q(sum[5]) );
  dfcrq1 sum_reg_4_ ( .D(n69), .CP(clk), .CDN(n6), .Q(sum[4]) );
  dfcrq1 sum_reg_3_ ( .D(n70), .CP(clk), .CDN(n6), .Q(sum[3]) );
  dfcrq1 sum_reg_2_ ( .D(n71), .CP(clk), .CDN(n6), .Q(sum[2]) );
  dfcrq1 sum_reg_1_ ( .D(n73), .CP(clk), .CDN(n6), .Q(sum[1]) );
  dfcrq1 sum_reg_0_ ( .D(n72), .CP(clk), .CDN(n6), .Q(sum[0]) );
  inv0d1 U8 ( .I(complete_acc), .ZN(n4) );
  inv0d1 U9 ( .I(n9), .ZN(n5) );
  bufbd4 U55 ( .I(reset_n), .Z(n6) );
  inv0d0 U65 ( .I(start_acc), .ZN(n15) );
  bufbd4 U84 ( .I(reset_n), .Z(n7) );
  buffd1 U85 ( .I(reset_n), .Z(n8) );
  inv0d0 U86 ( .I(mean[13]), .ZN(n166) );
  inv0d0 U103 ( .I(mean[14]), .ZN(n161) );
  inv0d0 U104 ( .I(mean[12]), .ZN(n168) );
  inv0d0 U105 ( .I(mean[10]), .ZN(n170) );
  inv0d0 U106 ( .I(mean[6]), .ZN(n163) );
  inv0d0 U115 ( .I(n4), .ZN(n108) );
  nr02d1 U116 ( .A1(n174), .A2(N6), .ZN(n14) );
  inv0d0 U117 ( .I(n129), .ZN(n167) );
  inv0d0 U118 ( .I(n131), .ZN(n171) );
  inv0d0 U119 ( .I(n140), .ZN(n169) );
  inv0d0 U120 ( .I(n139), .ZN(n164) );
  inv0d0 U121 ( .I(n114), .ZN(n116) );
  inv0d0 U122 ( .I(n15), .ZN(n11) );
  inv0d0 U123 ( .I(n15), .ZN(n10) );
  inv0d0 U124 ( .I(n15), .ZN(n12) );
  buffd1 U125 ( .I(n4), .Z(n109) );
  inv0d0 U126 ( .I(eeg[16]), .ZN(n159) );
  inv0d0 U127 ( .I(n125), .ZN(n162) );
  an02d1 U128 ( .A1(N6), .A2(start), .Z(n13) );
  inv0d0 U129 ( .I(n117), .ZN(n165) );
  inv0d0 U130 ( .I(n126), .ZN(n172) );
  inv0d0 U131 ( .I(mean[1]), .ZN(n160) );
  inv0d0 U132 ( .I(eeg[11]), .ZN(n157) );
  inv0d0 U133 ( .I(eeg[15]), .ZN(n158) );
  inv0d0 U134 ( .I(eeg[7]), .ZN(n154) );
  inv0d0 U135 ( .I(eeg[9]), .ZN(n156) );
  inv0d0 U136 ( .I(eeg[3]), .ZN(n151) );
  inv0d0 U137 ( .I(eeg[5]), .ZN(n153) );
  inv0d0 U138 ( .I(eeg[8]), .ZN(n155) );
  inv0d0 U139 ( .I(eeg[2]), .ZN(n150) );
  inv0d0 U140 ( .I(eeg[4]), .ZN(n152) );
  buffd1 U141 ( .I(complete_div), .Z(n9) );
  nr02d1 U142 ( .A1(complete_div_pipe), .A2(n5), .ZN(N103) );
  inv0d1 U143 ( .I(start), .ZN(n174) );
  inv0d1 U144 ( .I(start_acc), .ZN(n16) );
  nr02d1 U145 ( .A1(complete_mult_pipe), .A2(n173), .ZN(N63) );
  inv0d0 U146 ( .I(complete_mult), .ZN(n173) );
  inv0d1 U147 ( .I(start_acc), .ZN(n17) );
  inv0d0 U148 ( .I(count[0]), .ZN(count_minus_one[0]) );
  nd12d0 U149 ( .A1(count[1]), .A2(count_minus_one[0]), .ZN(n110) );
  oaim21d1 U150 ( .B1(count[0]), .B2(count[1]), .A(n110), .ZN(
        count_minus_one[1]) );
  or02d0 U151 ( .A1(n110), .A2(count[2]), .Z(n111) );
  oaim21d1 U152 ( .B1(n110), .B2(count[2]), .A(n111), .ZN(count_minus_one[2])
         );
  or02d0 U153 ( .A1(n111), .A2(count[3]), .Z(n112) );
  oaim21d1 U154 ( .B1(n111), .B2(count[3]), .A(n112), .ZN(count_minus_one[3])
         );
  or02d0 U155 ( .A1(n112), .A2(count[4]), .Z(n113) );
  oaim21d1 U156 ( .B1(n112), .B2(count[4]), .A(n113), .ZN(count_minus_one[4])
         );
  nr02d0 U157 ( .A1(n113), .A2(count[5]), .ZN(n114) );
  oaim21d1 U158 ( .B1(n113), .B2(count[5]), .A(n116), .ZN(count_minus_one[5])
         );
  xr02d1 U159 ( .A1(count[6]), .A2(n114), .Z(count_minus_one[6]) );
  nr02d0 U160 ( .A1(count[6]), .A2(n116), .ZN(n115) );
  xr02d1 U161 ( .A1(count[7]), .A2(n115), .Z(count_minus_one[7]) );
  nd02d0 U162 ( .A1(mean[7]), .A2(n154), .ZN(n135) );
  oai21d1 U163 ( .B1(eeg[6]), .B2(n163), .A(n135), .ZN(n117) );
  an02d0 U164 ( .A1(mean[3]), .A2(n151), .Z(n119) );
  nr03d0 U165 ( .A1(n119), .A2(mean[2]), .A3(n150), .ZN(n118) );
  aoim21d1 U166 ( .B1(mean[3]), .B2(n151), .A(n118), .ZN(n121) );
  aon211d1 U167 ( .C1(mean[2]), .C2(n150), .B(n119), .A(n121), .ZN(n142) );
  aoim21d1 U168 ( .B1(n160), .B2(eeg[1]), .A(mean[0]), .ZN(n120) );
  aoi22d1 U169 ( .A1(eeg[1]), .A2(n160), .B1(n120), .B2(eeg[0]), .ZN(n122) );
  an02d0 U170 ( .A1(mean[5]), .A2(n153), .Z(n137) );
  aoi221d1 U171 ( .B1(n122), .B2(n121), .C1(mean[4]), .C2(n152), .A(n137), 
        .ZN(n141) );
  nd02d0 U172 ( .A1(mean[15]), .A2(n158), .ZN(n124) );
  nd03d0 U173 ( .A1(n124), .A2(n161), .A3(eeg[14]), .ZN(n123) );
  oai21d1 U174 ( .B1(mean[15]), .B2(n158), .A(n123), .ZN(n125) );
  oai21d1 U175 ( .B1(eeg[14]), .B2(n161), .A(n124), .ZN(n134) );
  nr02d0 U176 ( .A1(eeg[13]), .A2(n166), .ZN(n129) );
  aoi321d1 U177 ( .C1(n167), .C2(n168), .C3(eeg[12]), .B1(eeg[13]), .B2(n166), 
        .A(n125), .ZN(n133) );
  nd02d0 U178 ( .A1(mean[11]), .A2(n157), .ZN(n127) );
  oai21d1 U179 ( .B1(eeg[10]), .B2(n170), .A(n127), .ZN(n126) );
  nd03d0 U180 ( .A1(n127), .A2(n170), .A3(eeg[10]), .ZN(n128) );
  oai21d1 U181 ( .B1(mean[11]), .B2(n157), .A(n128), .ZN(n131) );
  an02d0 U182 ( .A1(mean[9]), .A2(n156), .Z(n144) );
  oai321d1 U183 ( .C1(n155), .C2(mean[8]), .C3(n144), .B1(mean[9]), .B2(n156), 
        .A(n171), .ZN(n130) );
  aoim211d1 U184 ( .C1(eeg[12]), .C2(n168), .A(n129), .B(n134), .ZN(n143) );
  oai211d1 U185 ( .C1(n172), .C2(n131), .A(n130), .B(n143), .ZN(n132) );
  aon211d1 U186 ( .C1(n162), .C2(n134), .B(n133), .A(n132), .ZN(n146) );
  nd03d0 U187 ( .A1(n135), .A2(n163), .A3(eeg[6]), .ZN(n136) );
  oai21d1 U188 ( .B1(mean[7]), .B2(n154), .A(n136), .ZN(n139) );
  oai321d1 U189 ( .C1(n137), .C2(mean[4]), .C3(n152), .B1(n153), .B2(mean[5]), 
        .A(n164), .ZN(n138) );
  oai21d1 U190 ( .B1(n139), .B2(n165), .A(n138), .ZN(n140) );
  aoi311d1 U191 ( .C1(n165), .C2(n142), .C3(n141), .A(n146), .B(n169), .ZN(
        n149) );
  nd02d0 U192 ( .A1(n172), .A2(n143), .ZN(n145) );
  aoi211d1 U193 ( .C1(mean[8]), .C2(n155), .A(n145), .B(n144), .ZN(n147) );
  oaim22d1 U194 ( .A1(n147), .A2(n146), .B1(n159), .B2(mean[16]), .ZN(n148) );
  oai22d1 U195 ( .A1(mean[16]), .A2(n159), .B1(n149), .B2(n148), .ZN(N6) );
endmodule


module std_calc_1_DW01_add_0_DW01_add_2 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   carry_10_, carry_9_, carry_8_, carry_7_, carry_6_, carry_5_, carry_4_,
         carry_3_, carry_2_, n1, n2;

  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry_9_), .CO(carry_10_), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry_8_), .CO(carry_9_), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry_7_), .CO(carry_8_), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry_6_), .CO(carry_7_), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry_5_), .CO(carry_6_), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry_4_), .CO(carry_5_), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry_3_), .CO(carry_4_), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry_2_), .CO(carry_3_), .S(SUM[2])
         );
  inv0d0 U1 ( .I(A[0]), .ZN(SUM[0]) );
  or02d1 U2 ( .A1(A[0]), .A2(A[1]), .Z(carry_2_) );
  xn02d1 U3 ( .A1(A[0]), .A2(A[1]), .ZN(SUM[1]) );
  oaim21d1 U4 ( .B1(n1), .B2(A[11]), .A(n2), .ZN(CO) );
  oai21d1 U5 ( .B1(A[11]), .B2(n1), .A(B[11]), .ZN(n2) );
  cg01d0 U6 ( .A(carry_10_), .B(A[10]), .CI(B[10]), .CO(n1) );
endmodule


module std_calc_1_DW01_add_1_DW01_add_3 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   carry_10_, carry_9_, carry_8_, carry_7_, carry_6_, carry_5_, carry_4_,
         carry_3_, carry_2_, n2, n3;

  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry_9_), .CO(carry_10_), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry_8_), .CO(carry_9_), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry_7_), .CO(carry_8_), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry_6_), .CO(carry_7_), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry_5_), .CO(carry_6_), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry_4_), .CO(carry_5_), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry_3_), .CO(carry_4_), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry_2_), .CO(carry_3_), .S(SUM[2])
         );
  inv0d0 U1 ( .I(A[0]), .ZN(SUM[0]) );
  cg01d1 U2 ( .A(carry_10_), .B(A[10]), .CI(B[10]), .CO(n2) );
  or02d1 U3 ( .A1(A[0]), .A2(A[1]), .Z(carry_2_) );
  xn02d1 U4 ( .A1(A[0]), .A2(A[1]), .ZN(SUM[1]) );
  oaim21d1 U5 ( .B1(n2), .B2(A[11]), .A(n3), .ZN(CO) );
  oai21d1 U6 ( .B1(A[11]), .B2(n2), .A(B[11]), .ZN(n3) );
endmodule


module std_calc_1_DW01_add_2_DW01_add_4 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   carry_10_, carry_9_, carry_8_, carry_7_, carry_6_, carry_5_, carry_4_,
         carry_3_, carry_2_, n2, n3;

  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry_9_), .CO(carry_10_), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry_8_), .CO(carry_9_), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry_7_), .CO(carry_8_), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry_6_), .CO(carry_7_), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry_5_), .CO(carry_6_), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry_4_), .CO(carry_5_), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry_3_), .CO(carry_4_), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry_2_), .CO(carry_3_), .S(SUM[2])
         );
  inv0d0 U1 ( .I(A[0]), .ZN(SUM[0]) );
  or02d0 U2 ( .A1(A[0]), .A2(A[1]), .Z(carry_2_) );
  xn02d1 U3 ( .A1(A[0]), .A2(A[1]), .ZN(SUM[1]) );
  oaim21d1 U4 ( .B1(n2), .B2(A[11]), .A(n3), .ZN(CO) );
  oai21d1 U5 ( .B1(A[11]), .B2(n2), .A(B[11]), .ZN(n3) );
  cg01d0 U6 ( .A(carry_10_), .B(A[10]), .CI(B[10]), .CO(n2) );
endmodule


module std_calc_1_DW01_add_3_DW01_add_5 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   carry_10_, carry_9_, carry_8_, carry_7_, carry_6_, carry_5_, carry_4_,
         carry_3_, carry_2_, n1, n2;

  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry_9_), .CO(carry_10_), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry_8_), .CO(carry_9_), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry_7_), .CO(carry_8_), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry_6_), .CO(carry_7_), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry_5_), .CO(carry_6_), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry_4_), .CO(carry_5_), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry_3_), .CO(carry_4_), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry_2_), .CO(carry_3_), .S(SUM[2])
         );
  or02d0 U1 ( .A1(A[0]), .A2(A[1]), .Z(carry_2_) );
  xn02d1 U2 ( .A1(A[0]), .A2(A[1]), .ZN(SUM[1]) );
  oaim21d1 U3 ( .B1(n1), .B2(A[11]), .A(n2), .ZN(CO) );
  oai21d1 U4 ( .B1(A[11]), .B2(n1), .A(B[11]), .ZN(n2) );
  cg01d0 U5 ( .A(carry_10_), .B(A[10]), .CI(B[10]), .CO(n1) );
endmodule


module std_calc_1_DW_sqrt_seq_0 ( clk, rst_n, hold, start, a, complete, root
 );
  input [19:0] a;
  output [9:0] root;
  input clk, rst_n, hold, start;
  output complete;
  wire   count_ov_n, first_cyc, pr_3__11_, pr_3__10_, pr_3__9_, pr_3__8_,
         pr_3__7_, pr_3__6_, pr_3__5_, pr_3__4_, pr_2__11_, pr_2__10_,
         pr_2__9_, pr_2__8_, pr_2__7_, pr_2__6_, pr_2__5_, pr_2__4_, pr_1__11_,
         pr_1__10_, pr_0__11_, pr_0__10_, b_shf_in_3__0_, b_shf_in_2__0_,
         b_shf_in_1__1_, b_shf_in_1__0_, b_shf_in_0__1_, b_shf_in_0__0_,
         temp_part_rem_3__9_, temp_part_rem_3__8_, temp_part_rem_3__7_,
         temp_part_rem_3__6_, temp_part_rem_3__5_, temp_part_rem_3__4_,
         temp_part_rem_3__3_, temp_part_rem_3__2_, temp_part_rem_3__1_,
         temp_part_rem_2__9_, temp_part_rem_2__8_, temp_part_rem_2__7_,
         temp_part_rem_2__6_, temp_part_rem_2__5_, temp_part_rem_2__4_,
         temp_part_rem_2__3_, temp_part_rem_2__2_, temp_part_rem_2__1_,
         temp_part_rem_2__0_, temp_part_rem_1__9_, temp_part_rem_1__8_,
         temp_part_rem_1__7_, temp_part_rem_1__6_, temp_part_rem_1__5_,
         temp_part_rem_1__4_, temp_part_rem_1__3_, temp_part_rem_1__2_,
         temp_part_rem_1__1_, temp_part_rem_1__0_, temp_part_rem_0__9_,
         temp_part_rem_0__8_, temp_part_rem_0__7_, temp_part_rem_0__6_,
         temp_part_rem_0__5_, temp_part_rem_0__4_, temp_part_rem_0__3_,
         temp_part_rem_0__2_, temp_part_rem_0__1_, temp_part_rem_0__0_, N16,
         N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N29, N30, N31, N32,
         N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46,
         N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N60, N61,
         U_COUNT_tercnt_d, U_COUNT_tercnt_cmp_bus_0_, U_COUNT_next_count_2_,
         U_COUNT_enable, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n130, n131, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9;
  wire   [1:0] a_in_temp0;
  wire   [3:0] b_in_temp0;
  wire   [11:2] part_rt_reg;
  wire   [9:0] part_rem_reg;
  wire   [3:0] temp_rt_rev;
  wire   [11:0] part_rt_inv;
  wire   [2:0] U_COUNT_count_inc;
  wire   [2:0] U_COUNT_count;

  std_calc_1_DW01_add_0_DW01_add_2 U_ADD_0 ( .A({pr_0__11_, pr_0__10_, n31, 
        n30, n29, n28, n27, n26, n25, n21, b_in_temp0[0], a_in_temp0[0]}), .B(
        {part_rt_inv[2], part_rt_inv[3], part_rt_inv[4], part_rt_inv[11:5], 
        1'b1, 1'b1}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, temp_part_rem_0__9_, temp_part_rem_0__8_, 
        temp_part_rem_0__7_, temp_part_rem_0__6_, temp_part_rem_0__5_, 
        temp_part_rem_0__4_, temp_part_rem_0__3_, temp_part_rem_0__2_, 
        temp_part_rem_0__1_, temp_part_rem_0__0_}), .CO(temp_rt_rev[3]) );
  std_calc_1_DW01_add_1_DW01_add_3 U_ADD_1 ( .A({pr_1__11_, pr_1__10_, n17, 
        n16, n15, n14, n13, n12, n23, n18, b_in_temp0[1], a_in_temp0[1]}), .B(
        {part_rt_inv[3], part_rt_inv[4], part_rt_inv[11:5], n95, 1'b1, 1'b1}), 
        .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        temp_part_rem_1__9_, temp_part_rem_1__8_, temp_part_rem_1__7_, 
        temp_part_rem_1__6_, temp_part_rem_1__5_, temp_part_rem_1__4_, 
        temp_part_rem_1__3_, temp_part_rem_1__2_, temp_part_rem_1__1_, 
        temp_part_rem_1__0_}), .CO(temp_rt_rev[2]) );
  std_calc_1_DW01_add_2_DW01_add_4 U_ADD_2 ( .A({pr_2__11_, pr_2__10_, 
        pr_2__9_, pr_2__8_, pr_2__7_, pr_2__6_, pr_2__5_, pr_2__4_, n24, n19, 
        b_in_temp0[2], root[9]}), .B({part_rt_inv[4], part_rt_inv[11:5], n95, 
        n94, 1'b1, 1'b1}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, temp_part_rem_2__9_, temp_part_rem_2__8_, 
        temp_part_rem_2__7_, temp_part_rem_2__6_, temp_part_rem_2__5_, 
        temp_part_rem_2__4_, temp_part_rem_2__3_, temp_part_rem_2__2_, 
        temp_part_rem_2__1_, temp_part_rem_2__0_}), .CO(temp_rt_rev[1]) );
  std_calc_1_DW01_add_3_DW01_add_5 U_ADD_3 ( .A({pr_3__11_, pr_3__10_, 
        pr_3__9_, pr_3__8_, pr_3__7_, pr_3__6_, pr_3__5_, pr_3__4_, n22, n20, 
        b_in_temp0[3], root[8]}), .B({part_rt_inv[11:5], n95, n94, n93, 1'b1, 
        1'b1}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, temp_part_rem_3__9_, temp_part_rem_3__8_, 
        temp_part_rem_3__7_, temp_part_rem_3__6_, temp_part_rem_3__5_, 
        temp_part_rem_3__4_, temp_part_rem_3__3_, temp_part_rem_3__2_, 
        temp_part_rem_3__1_, SYNOPSYS_UNCONNECTED_9}), .CO(temp_rt_rev[0]) );
  dfcrq1 a_shf_reg_reg_3__2_ ( .D(N50), .CP(clk), .CDN(n36), .Q(root[0]) );
  dfcrq1 a_shf_reg_reg_3__1_ ( .D(N49), .CP(clk), .CDN(n36), .Q(root[4]) );
  dfcrq1 a_shf_reg_reg_3__0_ ( .D(N48), .CP(clk), .CDN(n36), .Q(root[8]) );
  dfcrq1 a_shf_reg_reg_2__2_ ( .D(N47), .CP(clk), .CDN(n35), .Q(root[1]) );
  dfcrq1 a_shf_reg_reg_2__1_ ( .D(N46), .CP(clk), .CDN(n35), .Q(root[5]) );
  dfcrq1 a_shf_reg_reg_2__0_ ( .D(N45), .CP(clk), .CDN(n35), .Q(root[9]) );
  dfcrq1 a_shf_reg_reg_1__2_ ( .D(N44), .CP(clk), .CDN(n35), .Q(root[2]) );
  dfcrq1 a_shf_reg_reg_1__1_ ( .D(N43), .CP(clk), .CDN(n35), .Q(root[6]) );
  dfcrq1 a_shf_reg_reg_1__0_ ( .D(N42), .CP(clk), .CDN(n35), .Q(a_in_temp0[1])
         );
  dfcrq1 a_shf_reg_reg_0__2_ ( .D(N41), .CP(clk), .CDN(n35), .Q(root[3]) );
  dfcrq1 a_shf_reg_reg_0__1_ ( .D(N40), .CP(clk), .CDN(n35), .Q(root[7]) );
  dfcrq1 a_shf_reg_reg_0__0_ ( .D(N39), .CP(clk), .CDN(n35), .Q(a_in_temp0[0])
         );
  dfcrq1 start_reg_reg ( .D(N16), .CP(clk), .CDN(n35), .Q(first_cyc) );
  dfcrq1 part_rem_reg_reg_6_ ( .D(N23), .CP(clk), .CDN(n34), .Q(
        part_rem_reg[6]) );
  dfcrq1 part_rem_reg_reg_4_ ( .D(N21), .CP(clk), .CDN(n34), .Q(
        part_rem_reg[4]) );
  dfcrq1 part_rem_reg_reg_2_ ( .D(N19), .CP(clk), .CDN(n34), .Q(
        part_rem_reg[2]) );
  dfcrq1 part_rem_reg_reg_0_ ( .D(N17), .CP(clk), .CDN(n34), .Q(
        part_rem_reg[0]) );
  dfcrq1 part_rem_reg_reg_8_ ( .D(N25), .CP(clk), .CDN(n34), .Q(
        part_rem_reg[8]) );
  dfcrq1 part_rt_reg_reg_5_ ( .D(N32), .CP(clk), .CDN(n34), .Q(part_rt_reg[5])
         );
  dfcrq1 part_rt_reg_reg_9_ ( .D(N36), .CP(clk), .CDN(n34), .Q(part_rt_reg[9])
         );
  dfcrq1 part_rt_reg_reg_4_ ( .D(N31), .CP(clk), .CDN(n34), .Q(part_rt_reg[4])
         );
  dfcrq1 part_rt_reg_reg_8_ ( .D(N35), .CP(clk), .CDN(n34), .Q(part_rt_reg[8])
         );
  dfcrq1 part_rt_reg_reg_3_ ( .D(N30), .CP(clk), .CDN(n34), .Q(part_rt_reg[3])
         );
  dfcrq1 part_rt_reg_reg_7_ ( .D(N34), .CP(clk), .CDN(n33), .Q(part_rt_reg[7])
         );
  dfcrq1 part_rt_reg_reg_11_ ( .D(N38), .CP(clk), .CDN(n33), .Q(
        part_rt_reg[11]) );
  dfcrq1 part_rt_reg_reg_2_ ( .D(N29), .CP(clk), .CDN(n33), .Q(part_rt_reg[2])
         );
  dfcrq1 part_rt_reg_reg_6_ ( .D(N33), .CP(clk), .CDN(n33), .Q(part_rt_reg[6])
         );
  dfcrq1 part_rt_reg_reg_10_ ( .D(N37), .CP(clk), .CDN(n33), .Q(
        part_rt_reg[10]) );
  dfcrq1 b_shf_reg_reg_3__1_ ( .D(N61), .CP(clk), .CDN(n33), .Q(b_shf_in_3__0_) );
  dfcrq1 b_shf_reg_reg_3__0_ ( .D(N60), .CP(clk), .CDN(n33), .Q(b_in_temp0[3])
         );
  dfcrq1 part_rem_reg_reg_1_ ( .D(N18), .CP(clk), .CDN(n33), .Q(
        part_rem_reg[1]) );
  dfcrq1 part_rem_reg_reg_9_ ( .D(N26), .CP(clk), .CDN(n33), .Q(
        part_rem_reg[9]) );
  dfcrq1 b_shf_reg_reg_2__1_ ( .D(N58), .CP(clk), .CDN(n33), .Q(b_shf_in_2__0_) );
  dfcrq1 b_shf_reg_reg_2__0_ ( .D(N57), .CP(clk), .CDN(n32), .Q(b_in_temp0[2])
         );
  dfcrq1 part_rem_reg_reg_3_ ( .D(N20), .CP(clk), .CDN(n32), .Q(
        part_rem_reg[3]) );
  dfcrq1 b_shf_reg_reg_1__2_ ( .D(N56), .CP(clk), .CDN(n32), .Q(b_shf_in_1__1_) );
  dfcrq1 b_shf_reg_reg_1__1_ ( .D(N55), .CP(clk), .CDN(n32), .Q(b_shf_in_1__0_) );
  dfcrq1 b_shf_reg_reg_1__0_ ( .D(N54), .CP(clk), .CDN(n32), .Q(b_in_temp0[1])
         );
  dfcrq1 part_rem_reg_reg_5_ ( .D(N22), .CP(clk), .CDN(n32), .Q(
        part_rem_reg[5]) );
  dfcrq1 b_shf_reg_reg_0__2_ ( .D(N53), .CP(clk), .CDN(n32), .Q(b_shf_in_0__1_) );
  dfcrq1 b_shf_reg_reg_0__1_ ( .D(N52), .CP(clk), .CDN(n32), .Q(b_shf_in_0__0_) );
  dfcrq1 b_shf_reg_reg_0__0_ ( .D(N51), .CP(clk), .CDN(n32), .Q(b_in_temp0[0])
         );
  dfcrq1 part_rem_reg_reg_7_ ( .D(N24), .CP(clk), .CDN(n32), .Q(
        part_rem_reg[7]) );
  dfcrn1 U_COUNT_U2_1 ( .D(U_COUNT_tercnt_d), .CP(clk), .CDN(n36), .QN(
        count_ov_n) );
  dfcrq1 U_COUNT_U1_3_2 ( .D(U_COUNT_next_count_2_), .CP(clk), .CDN(n36), .Q(
        U_COUNT_count[2]) );
  dfcrq1 U_COUNT_U1_3_1 ( .D(n83), .CP(clk), .CDN(n36), .Q(U_COUNT_count[1])
         );
  dfcrq1 U_COUNT_U1_3_0 ( .D(U_COUNT_tercnt_cmp_bus_0_), .CP(clk), .CDN(n36), 
        .Q(U_COUNT_count[0]) );
  invbd2 U4 ( .I(n65), .ZN(n74) );
  bufbd3 U5 ( .I(temp_rt_rev[2]), .Z(n38) );
  inv0d1 U6 ( .I(n39), .ZN(n95) );
  invbd7 U7 ( .I(first_cyc), .ZN(n77) );
  an02d0 U8 ( .A1(part_rem_reg[0]), .A2(n77), .Z(n21) );
  an02d0 U9 ( .A1(part_rem_reg[1]), .A2(n77), .Z(n25) );
  an02d0 U10 ( .A1(part_rem_reg[2]), .A2(n77), .Z(n26) );
  an02d0 U11 ( .A1(part_rem_reg[3]), .A2(n77), .Z(n27) );
  an02d0 U12 ( .A1(part_rem_reg[4]), .A2(n77), .Z(n28) );
  an02d0 U13 ( .A1(part_rem_reg[5]), .A2(n77), .Z(n29) );
  an02d0 U14 ( .A1(part_rem_reg[6]), .A2(n77), .Z(n30) );
  an02d0 U15 ( .A1(part_rem_reg[7]), .A2(n77), .Z(n31) );
  inv0d1 U16 ( .I(part_rem_reg[8]), .ZN(n64) );
  inv0d1 U17 ( .I(part_rem_reg[9]), .ZN(n55) );
  buffd1 U18 ( .I(rst_n), .Z(n32) );
  buffd1 U19 ( .I(rst_n), .Z(n33) );
  buffd1 U20 ( .I(rst_n), .Z(n34) );
  buffd1 U21 ( .I(rst_n), .Z(n35) );
  buffd1 U22 ( .I(rst_n), .Z(n36) );
  inv0d2 U23 ( .I(n66), .ZN(n73) );
  inv0d1 U24 ( .I(temp_rt_rev[0]), .ZN(n78) );
  inv0d0 U25 ( .I(n38), .ZN(n94) );
  inv0d0 U26 ( .I(n37), .ZN(n93) );
  inv0d0 U27 ( .I(n80), .ZN(n83) );
  inv0d0 U28 ( .I(n43), .ZN(n41) );
  inv0d0 U29 ( .I(n45), .ZN(n40) );
  buffd3 U30 ( .I(temp_rt_rev[3]), .Z(n39) );
  buffd3 U31 ( .I(temp_rt_rev[1]), .Z(n37) );
  mx02d1 U32 ( .I0(n21), .I1(temp_part_rem_0__2_), .S(n39), .Z(n12) );
  mx02d1 U33 ( .I0(n25), .I1(temp_part_rem_0__3_), .S(n39), .Z(n13) );
  mx02d1 U34 ( .I0(n26), .I1(temp_part_rem_0__4_), .S(n39), .Z(n14) );
  mx02d1 U35 ( .I0(n27), .I1(temp_part_rem_0__5_), .S(n39), .Z(n15) );
  mx02d1 U36 ( .I0(n28), .I1(temp_part_rem_0__6_), .S(n39), .Z(n16) );
  mx02d1 U37 ( .I0(n29), .I1(temp_part_rem_0__7_), .S(n39), .Z(n17) );
  buffd1 U38 ( .I(n47), .Z(complete) );
  buffd1 U39 ( .I(n47), .Z(n43) );
  nd02d1 U40 ( .A1(n41), .A2(n79), .ZN(n130) );
  buffd1 U41 ( .I(n47), .Z(n45) );
  buffd1 U42 ( .I(n47), .Z(n44) );
  buffd1 U43 ( .I(n47), .Z(n46) );
  inv0d0 U44 ( .I(n109), .ZN(n90) );
  inv0d0 U45 ( .I(n107), .ZN(n86) );
  inv0d0 U46 ( .I(part_rem_reg[7]), .ZN(n49) );
  inv0d0 U47 ( .I(part_rem_reg[5]), .ZN(n51) );
  inv0d0 U48 ( .I(part_rem_reg[3]), .ZN(n53) );
  inv0d0 U49 ( .I(part_rem_reg[1]), .ZN(n57) );
  inv0d0 U50 ( .I(part_rem_reg[2]), .ZN(n70) );
  inv0d0 U51 ( .I(part_rem_reg[4]), .ZN(n72) );
  inv0d0 U52 ( .I(part_rem_reg[6]), .ZN(n76) );
  mx02d1 U53 ( .I0(a_in_temp0[0]), .I1(temp_part_rem_0__0_), .S(n39), .Z(n18)
         );
  mx02d1 U54 ( .I0(a_in_temp0[1]), .I1(temp_part_rem_1__0_), .S(n38), .Z(n19)
         );
  mx02d1 U55 ( .I0(root[9]), .I1(temp_part_rem_2__0_), .S(n37), .Z(n20) );
  inv0d0 U56 ( .I(part_rem_reg[0]), .ZN(n68) );
  mx02d1 U57 ( .I0(b_in_temp0[2]), .I1(temp_part_rem_2__1_), .S(n37), .Z(n22)
         );
  mx02d1 U58 ( .I0(b_in_temp0[0]), .I1(temp_part_rem_0__1_), .S(n39), .Z(n23)
         );
  mx02d1 U59 ( .I0(b_in_temp0[1]), .I1(temp_part_rem_1__1_), .S(n38), .Z(n24)
         );
  inv0d0 U60 ( .I(a[4]), .ZN(n128) );
  inv0d0 U61 ( .I(a[6]), .ZN(n127) );
  nd12d1 U62 ( .A1(complete), .A2(U_COUNT_count[0]), .ZN(n82) );
  inv0d0 U63 ( .I(U_COUNT_enable), .ZN(n47) );
  inv0d1 U64 ( .I(start), .ZN(n79) );
  inv0d0 U65 ( .I(b_shf_in_0__1_), .ZN(n113) );
  inv0d0 U66 ( .I(a[15]), .ZN(n119) );
  inv0d0 U67 ( .I(b_shf_in_1__1_), .ZN(n111) );
  inv0d0 U68 ( .I(a[13]), .ZN(n121) );
  inv0d0 U69 ( .I(a[19]), .ZN(n115) );
  inv0d0 U70 ( .I(b_in_temp0[2]), .ZN(n110) );
  inv0d0 U71 ( .I(a[17]), .ZN(n117) );
  inv0d0 U72 ( .I(b_in_temp0[3]), .ZN(n108) );
  inv0d0 U73 ( .I(a[14]), .ZN(n120) );
  inv0d0 U74 ( .I(a[12]), .ZN(n122) );
  inv0d0 U75 ( .I(a[18]), .ZN(n116) );
  inv0d0 U76 ( .I(root[9]), .ZN(n101) );
  inv0d0 U77 ( .I(a[10]), .ZN(n124) );
  inv0d0 U78 ( .I(a[16]), .ZN(n118) );
  inv0d0 U79 ( .I(root[8]), .ZN(n98) );
  inv0d0 U80 ( .I(a[8]), .ZN(n126) );
  inv0d0 U81 ( .I(part_rt_inv[9]), .ZN(n58) );
  inv0d0 U82 ( .I(part_rt_inv[7]), .ZN(n61) );
  inv0d0 U83 ( .I(part_rt_inv[8]), .ZN(n62) );
  inv0d0 U84 ( .I(part_rt_inv[10]), .ZN(n59) );
  inv0d0 U85 ( .I(part_rt_inv[6]), .ZN(n60) );
  nd02d1 U86 ( .A1(n87), .A2(n88), .ZN(N61) );
  nd02d1 U87 ( .A1(n85), .A2(start), .ZN(n87) );
  nd02d1 U88 ( .A1(n86), .A2(n43), .ZN(n88) );
  inv0d0 U89 ( .I(n125), .ZN(n85) );
  nd02d1 U90 ( .A1(n91), .A2(n92), .ZN(N58) );
  nd02d1 U91 ( .A1(n89), .A2(start), .ZN(n91) );
  nd02d1 U92 ( .A1(n90), .A2(complete), .ZN(n92) );
  inv0d0 U93 ( .I(n123), .ZN(n89) );
  inv0d0 U94 ( .I(U_COUNT_count[1]), .ZN(n84) );
  inv0d0 U95 ( .I(root[7]), .ZN(n105) );
  inv0d0 U96 ( .I(root[6]), .ZN(n103) );
  inv0d0 U97 ( .I(root[5]), .ZN(n100) );
  inv0d0 U98 ( .I(root[4]), .ZN(n97) );
  inv0d0 U99 ( .I(part_rt_reg[2]), .ZN(n106) );
  inv0d0 U100 ( .I(b_shf_in_0__0_), .ZN(n114) );
  inv0d0 U101 ( .I(b_shf_in_1__0_), .ZN(n112) );
  inv0d0 U102 ( .I(root[1]), .ZN(n99) );
  inv0d0 U103 ( .I(b_shf_in_2__0_), .ZN(n109) );
  inv0d0 U104 ( .I(b_shf_in_3__0_), .ZN(n107) );
  inv0d0 U105 ( .I(root[3]), .ZN(n104) );
  inv0d0 U106 ( .I(root[2]), .ZN(n102) );
  inv0d0 U107 ( .I(root[0]), .ZN(n96) );
  inv0d0 U108 ( .I(a[11]), .ZN(n123) );
  inv0d0 U109 ( .I(a[9]), .ZN(n125) );
  nd12d1 U110 ( .A1(count_ov_n), .A2(n79), .ZN(U_COUNT_enable) );
  nr02d1 U111 ( .A1(first_cyc), .A2(n55), .ZN(pr_0__11_) );
  nr02d1 U112 ( .A1(first_cyc), .A2(n64), .ZN(pr_0__10_) );
  nd02d1 U113 ( .A1(part_rt_reg[11]), .A2(n77), .ZN(part_rt_inv[2]) );
  nd02d1 U114 ( .A1(part_rt_reg[10]), .A2(n77), .ZN(part_rt_inv[3]) );
  nd02d1 U115 ( .A1(part_rt_reg[9]), .A2(n77), .ZN(part_rt_inv[4]) );
  nd02d1 U116 ( .A1(part_rt_reg[8]), .A2(n77), .ZN(part_rt_inv[11]) );
  nd02d1 U117 ( .A1(part_rt_reg[7]), .A2(n77), .ZN(part_rt_inv[10]) );
  nd02d1 U118 ( .A1(part_rt_reg[6]), .A2(n77), .ZN(part_rt_inv[9]) );
  nd02d1 U119 ( .A1(part_rt_reg[5]), .A2(n77), .ZN(part_rt_inv[8]) );
  nd02d1 U120 ( .A1(part_rt_reg[4]), .A2(n77), .ZN(part_rt_inv[7]) );
  nd02d1 U121 ( .A1(part_rt_reg[3]), .A2(n77), .ZN(part_rt_inv[6]) );
  nd02d1 U122 ( .A1(part_rt_reg[2]), .A2(n77), .ZN(part_rt_inv[5]) );
  mx02d1 U123 ( .I0(n31), .I1(temp_part_rem_0__9_), .S(n39), .Z(pr_1__11_) );
  mx02d1 U124 ( .I0(n30), .I1(temp_part_rem_0__8_), .S(n39), .Z(pr_1__10_) );
  mx02d1 U125 ( .I0(n15), .I1(temp_part_rem_1__7_), .S(n38), .Z(pr_2__9_) );
  mx02d1 U126 ( .I0(n17), .I1(temp_part_rem_1__9_), .S(n38), .Z(pr_2__11_) );
  mx02d1 U127 ( .I0(n16), .I1(temp_part_rem_1__8_), .S(n38), .Z(pr_2__10_) );
  mx02d1 U128 ( .I0(n14), .I1(temp_part_rem_1__6_), .S(n38), .Z(pr_2__8_) );
  mx02d1 U129 ( .I0(n13), .I1(temp_part_rem_1__5_), .S(n38), .Z(pr_2__7_) );
  mx02d1 U130 ( .I0(n12), .I1(temp_part_rem_1__4_), .S(n38), .Z(pr_2__6_) );
  mx02d1 U131 ( .I0(n23), .I1(temp_part_rem_1__3_), .S(n38), .Z(pr_2__5_) );
  mx02d1 U132 ( .I0(n18), .I1(temp_part_rem_1__2_), .S(n38), .Z(pr_2__4_) );
  mx02d1 U133 ( .I0(pr_2__9_), .I1(temp_part_rem_2__9_), .S(n37), .Z(pr_3__11_) );
  mx02d1 U134 ( .I0(pr_2__8_), .I1(temp_part_rem_2__8_), .S(n37), .Z(pr_3__10_) );
  mx02d1 U135 ( .I0(pr_2__7_), .I1(temp_part_rem_2__7_), .S(n37), .Z(pr_3__9_)
         );
  mx02d1 U136 ( .I0(pr_2__6_), .I1(temp_part_rem_2__6_), .S(n37), .Z(pr_3__8_)
         );
  mx02d1 U137 ( .I0(pr_2__5_), .I1(temp_part_rem_2__5_), .S(n37), .Z(pr_3__7_)
         );
  mx02d1 U138 ( .I0(pr_2__4_), .I1(temp_part_rem_2__4_), .S(n37), .Z(pr_3__6_)
         );
  mx02d1 U139 ( .I0(n24), .I1(temp_part_rem_2__3_), .S(n37), .Z(pr_3__5_) );
  mx02d1 U140 ( .I0(n19), .I1(temp_part_rem_2__2_), .S(n37), .Z(pr_3__4_) );
  nd02d1 U141 ( .A1(n41), .A2(n78), .ZN(n65) );
  nd02d1 U142 ( .A1(temp_rt_rev[0]), .A2(n41), .ZN(n66) );
  aoi22d1 U143 ( .A1(n74), .A2(pr_3__7_), .B1(temp_part_rem_3__7_), .B2(n73), 
        .ZN(n48) );
  oai21d1 U144 ( .B1(n41), .B2(n49), .A(n48), .ZN(N24) );
  aoi22d1 U145 ( .A1(n74), .A2(pr_3__5_), .B1(temp_part_rem_3__5_), .B2(n73), 
        .ZN(n50) );
  oai21d1 U146 ( .B1(n41), .B2(n51), .A(n50), .ZN(N22) );
  aoi22d1 U147 ( .A1(n74), .A2(n22), .B1(temp_part_rem_3__3_), .B2(n73), .ZN(
        n52) );
  oai21d1 U148 ( .B1(n41), .B2(n53), .A(n52), .ZN(N20) );
  aoi22d1 U149 ( .A1(n74), .A2(pr_3__9_), .B1(temp_part_rem_3__9_), .B2(n73), 
        .ZN(n54) );
  oai21d1 U150 ( .B1(n41), .B2(n55), .A(n54), .ZN(N26) );
  aoi22d1 U151 ( .A1(n74), .A2(b_in_temp0[3]), .B1(temp_part_rem_3__1_), .B2(
        n73), .ZN(n56) );
  oai21d1 U152 ( .B1(U_COUNT_enable), .B2(n57), .A(n56), .ZN(N18) );
  mx02d1 U153 ( .I0(n58), .I1(part_rt_reg[10]), .S(n43), .Z(N37) );
  oai21d1 U154 ( .B1(n106), .B2(U_COUNT_enable), .A(n66), .ZN(N29) );
  mx02d1 U155 ( .I0(n59), .I1(part_rt_reg[11]), .S(n45), .Z(N38) );
  mx02d1 U156 ( .I0(n60), .I1(part_rt_reg[7]), .S(n46), .Z(N34) );
  mx02d1 U157 ( .I0(n37), .I1(part_rt_reg[3]), .S(n45), .Z(N30) );
  mx02d1 U158 ( .I0(n61), .I1(part_rt_reg[8]), .S(n45), .Z(N35) );
  mx02d1 U159 ( .I0(n38), .I1(part_rt_reg[4]), .S(n44), .Z(N31) );
  mx02d1 U160 ( .I0(n62), .I1(part_rt_reg[9]), .S(n44), .Z(N36) );
  mx02d1 U161 ( .I0(n39), .I1(part_rt_reg[5]), .S(n44), .Z(N32) );
  aoi22d1 U162 ( .A1(n74), .A2(pr_3__8_), .B1(temp_part_rem_3__8_), .B2(n73), 
        .ZN(n63) );
  oai21d1 U163 ( .B1(U_COUNT_enable), .B2(n64), .A(n63), .ZN(N25) );
  mx02d1 U164 ( .I0(n66), .I1(n65), .S(root[8]), .Z(n67) );
  oai21d1 U165 ( .B1(n41), .B2(n68), .A(n67), .ZN(N17) );
  aoi22d1 U166 ( .A1(n74), .A2(n20), .B1(temp_part_rem_3__2_), .B2(n73), .ZN(
        n69) );
  oai21d1 U167 ( .B1(U_COUNT_enable), .B2(n70), .A(n69), .ZN(N19) );
  aoi22d1 U168 ( .A1(n74), .A2(pr_3__4_), .B1(temp_part_rem_3__4_), .B2(n73), 
        .ZN(n71) );
  oai21d1 U169 ( .B1(U_COUNT_enable), .B2(n72), .A(n71), .ZN(N21) );
  aoi22d1 U170 ( .A1(n74), .A2(pr_3__6_), .B1(temp_part_rem_3__6_), .B2(n73), 
        .ZN(n75) );
  oai21d1 U171 ( .B1(U_COUNT_enable), .B2(n76), .A(n75), .ZN(N23) );
  oai21d1 U172 ( .B1(U_COUNT_enable), .B2(n77), .A(n79), .ZN(N16) );
  oai222d1 U173 ( .A1(n104), .A2(n41), .B1(n130), .B2(n95), .C1(n127), .C2(n79), .ZN(N41) );
  oai222d1 U174 ( .A1(n102), .A2(n41), .B1(n130), .B2(n94), .C1(n128), .C2(n79), .ZN(N44) );
  oai22d1 U175 ( .A1(n130), .A2(n93), .B1(n99), .B2(U_COUNT_enable), .ZN(N47)
         );
  oai22d1 U176 ( .A1(n130), .A2(n78), .B1(n96), .B2(U_COUNT_enable), .ZN(N50)
         );
  an02d0 U177 ( .A1(n79), .A2(U_COUNT_count_inc[2]), .Z(U_COUNT_next_count_2_)
         );
  an02d0 U178 ( .A1(n79), .A2(U_COUNT_count_inc[0]), .Z(
        U_COUNT_tercnt_cmp_bus_0_) );
  nd02d0 U179 ( .A1(n79), .A2(U_COUNT_count_inc[1]), .ZN(n80) );
  nr13d1 U180 ( .A1(U_COUNT_count_inc[0]), .A2(U_COUNT_count_inc[2]), .A3(n80), 
        .ZN(U_COUNT_tercnt_d) );
  xr02d1 U181 ( .A1(U_COUNT_count[2]), .A2(n81), .Z(U_COUNT_count_inc[2]) );
  nr02d0 U182 ( .A1(n82), .A2(n84), .ZN(n81) );
  xr02d1 U183 ( .A1(n84), .A2(n82), .Z(U_COUNT_count_inc[1]) );
  xr02d1 U184 ( .A1(n40), .A2(U_COUNT_count[0]), .Z(U_COUNT_count_inc[0]) );
  oai222d1 U188 ( .A1(n130), .A2(n107), .B1(n79), .B2(n117), .C1(n40), .C2(
        n108), .ZN(N60) );
  oai222d1 U189 ( .A1(n130), .A2(n109), .B1(n79), .B2(n115), .C1(
        U_COUNT_enable), .C2(n110), .ZN(N57) );
  aor22d1 U190 ( .A1(n46), .A2(b_shf_in_1__1_), .B1(a[5]), .B2(start), .Z(N56)
         );
  oai222d1 U191 ( .A1(n130), .A2(n111), .B1(n79), .B2(n121), .C1(n40), .C2(
        n112), .ZN(N55) );
  oaim22d1 U192 ( .A1(n130), .A2(n112), .B1(n46), .B2(b_in_temp0[1]), .ZN(N54)
         );
  aor22d1 U193 ( .A1(n46), .A2(b_shf_in_0__1_), .B1(a[7]), .B2(start), .Z(N53)
         );
  oai222d1 U194 ( .A1(n130), .A2(n113), .B1(n79), .B2(n119), .C1(n40), .C2(
        n114), .ZN(N52) );
  oaim22d1 U195 ( .A1(n130), .A2(n114), .B1(n46), .B2(b_in_temp0[0]), .ZN(N51)
         );
  oai222d1 U196 ( .A1(n130), .A2(n96), .B1(n79), .B2(n126), .C1(n40), .C2(n97), 
        .ZN(N49) );
  oai222d1 U197 ( .A1(n130), .A2(n97), .B1(n79), .B2(n118), .C1(n40), .C2(n98), 
        .ZN(N48) );
  oai222d1 U198 ( .A1(n130), .A2(n99), .B1(n79), .B2(n124), .C1(n40), .C2(n100), .ZN(N46) );
  oai222d1 U199 ( .A1(n130), .A2(n100), .B1(n79), .B2(n116), .C1(n40), .C2(
        n101), .ZN(N45) );
  oai222d1 U200 ( .A1(n130), .A2(n102), .B1(n79), .B2(n122), .C1(n40), .C2(
        n103), .ZN(N43) );
  oaim22d1 U201 ( .A1(n130), .A2(n103), .B1(n46), .B2(a_in_temp0[1]), .ZN(N42)
         );
  oai222d1 U202 ( .A1(n130), .A2(n104), .B1(n79), .B2(n120), .C1(n40), .C2(
        n105), .ZN(N40) );
  oaim22d1 U203 ( .A1(n130), .A2(n105), .B1(n46), .B2(a_in_temp0[0]), .ZN(N39)
         );
  mx02d1 U204 ( .I0(n131), .I1(part_rt_reg[6]), .S(n43), .Z(N33) );
  nr02d0 U205 ( .A1(first_cyc), .A2(n106), .ZN(n131) );
endmodule


module std_calc_1_DW01_add_4_DW01_add_6 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43;
  wire   [6:1] carry;

  ad01d1 U1_1 ( .A(carry[1]), .B(A[1]), .CI(B[1]), .CO(carry[2]), .S(SUM[1])
         );
  nd03d2 U1 ( .A1(n34), .A2(n33), .A3(n32), .ZN(n1) );
  nd03d2 U2 ( .A1(n41), .A2(n39), .A3(n40), .ZN(n2) );
  invbd4 U3 ( .I(B[0]), .ZN(n4) );
  nd04d1 U4 ( .A1(n3), .A2(n37), .A3(n36), .A4(n38), .ZN(CO) );
  inv0d0 U5 ( .I(A[8]), .ZN(n3) );
  nd02d2 U6 ( .A1(n4), .A2(n5), .ZN(carry[1]) );
  inv0d2 U7 ( .I(A[0]), .ZN(n5) );
  inv0d0 U8 ( .I(carry[3]), .ZN(n6) );
  inv0d1 U9 ( .I(n6), .ZN(n7) );
  inv0d0 U10 ( .I(n16), .ZN(n8) );
  inv0d1 U11 ( .I(n8), .ZN(n9) );
  nd03d2 U12 ( .A1(n41), .A2(n39), .A3(n40), .ZN(n10) );
  nd03d2 U13 ( .A1(n26), .A2(n24), .A3(n25), .ZN(n11) );
  nd02d2 U14 ( .A1(n19), .A2(B[2]), .ZN(n21) );
  nd02d2 U15 ( .A1(A[2]), .A2(B[2]), .ZN(n22) );
  inv0d0 U16 ( .I(n1), .ZN(n12) );
  inv0d1 U17 ( .I(n12), .ZN(n13) );
  inv0d0 U18 ( .I(n2), .ZN(n14) );
  inv0d1 U19 ( .I(n14), .ZN(n15) );
  nd03d2 U20 ( .A1(n30), .A2(n28), .A3(n29), .ZN(n16) );
  inv0d0 U21 ( .I(n11), .ZN(n17) );
  inv0d1 U22 ( .I(n17), .ZN(n18) );
  cg01d1 U23 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(n19) );
  nd02d2 U24 ( .A1(carry[6]), .A2(A[6]), .ZN(n39) );
  nd02d2 U25 ( .A1(n1), .A2(B[6]), .ZN(n40) );
  nd02d2 U26 ( .A1(n10), .A2(A[7]), .ZN(n36) );
  nd02d2 U27 ( .A1(n2), .A2(B[7]), .ZN(n37) );
  xr03d1 U28 ( .A1(A[2]), .A2(B[2]), .A3(n19), .Z(SUM[2]) );
  nd02d2 U29 ( .A1(carry[2]), .A2(A[2]), .ZN(n20) );
  nd03d2 U30 ( .A1(n22), .A2(n21), .A3(n20), .ZN(carry[3]) );
  nd02d2 U31 ( .A1(n11), .A2(B[4]), .ZN(n29) );
  nd02d2 U32 ( .A1(carry[4]), .A2(A[4]), .ZN(n28) );
  xr02d1 U33 ( .A1(B[3]), .A2(A[3]), .Z(n23) );
  xr02d1 U34 ( .A1(n23), .A2(n7), .Z(SUM[3]) );
  nd02d2 U35 ( .A1(carry[3]), .A2(A[3]), .ZN(n24) );
  nd02d2 U36 ( .A1(carry[3]), .A2(B[3]), .ZN(n25) );
  nd02d1 U37 ( .A1(A[3]), .A2(B[3]), .ZN(n26) );
  nd03d2 U38 ( .A1(n26), .A2(n24), .A3(n25), .ZN(carry[4]) );
  nd02d2 U39 ( .A1(n16), .A2(A[5]), .ZN(n32) );
  nd02d2 U40 ( .A1(carry[5]), .A2(B[5]), .ZN(n33) );
  xr02d1 U41 ( .A1(B[4]), .A2(A[4]), .Z(n27) );
  xr02d1 U42 ( .A1(n27), .A2(n18), .Z(SUM[4]) );
  nd02d1 U43 ( .A1(A[4]), .A2(B[4]), .ZN(n30) );
  nd03d2 U44 ( .A1(n30), .A2(n28), .A3(n29), .ZN(carry[5]) );
  xr02d1 U45 ( .A1(B[5]), .A2(A[5]), .Z(n31) );
  xr02d1 U46 ( .A1(n31), .A2(n9), .Z(SUM[5]) );
  nd02d0 U47 ( .A1(A[5]), .A2(B[5]), .ZN(n34) );
  nd03d2 U48 ( .A1(n34), .A2(n33), .A3(n32), .ZN(carry[6]) );
  xr02d1 U49 ( .A1(B[7]), .A2(A[7]), .Z(n35) );
  xr02d1 U50 ( .A1(n35), .A2(n15), .Z(SUM[7]) );
  nd02d0 U51 ( .A1(A[7]), .A2(B[7]), .ZN(n38) );
  xr03d1 U52 ( .A1(A[6]), .A2(B[6]), .A3(n13), .Z(SUM[6]) );
  nd02d1 U53 ( .A1(A[6]), .A2(B[6]), .ZN(n41) );
  inv0d0 U54 ( .I(B[0]), .ZN(n42) );
  inv0d1 U55 ( .I(n42), .ZN(n43) );
  xn02d1 U56 ( .A1(n43), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module std_calc_1_DW01_add_5_DW01_add_7 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24;
  wire   [7:1] carry;

  ad01d4 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(n3), .CO(carry[4]), .S(SUM[3]) );
  xr03d1 U1_6 ( .A1(A[6]), .A2(B[6]), .A3(n4), .Z(SUM[6]) );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  buffd1 U1 ( .I(n6), .Z(n1) );
  inv0d1 U2 ( .I(B[0]), .ZN(n22) );
  nd02d2 U3 ( .A1(carry[7]), .A2(A[7]), .ZN(n19) );
  cg01d1 U4 ( .A(A[6]), .B(B[6]), .CI(n4), .CO(carry[7]) );
  inv0d0 U5 ( .I(A[4]), .ZN(n10) );
  inv0d0 U6 ( .I(B[4]), .ZN(n8) );
  nd02d1 U7 ( .A1(A[4]), .A2(B[4]), .ZN(n11) );
  inv0d0 U8 ( .I(n5), .ZN(n2) );
  nd04d1 U9 ( .A1(n24), .A2(n20), .A3(n19), .A4(n21), .ZN(CO) );
  inv0d0 U10 ( .I(A[8]), .ZN(n24) );
  oaim211d1 U11 ( .C1(A[5]), .C2(B[5]), .A(n17), .B(n16), .ZN(carry[6]) );
  cg01d1 U12 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(n3) );
  nd03d2 U13 ( .A1(n15), .A2(n16), .A3(n17), .ZN(n4) );
  inv0d0 U14 ( .I(n9), .ZN(n5) );
  cg01d1 U15 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(n6) );
  cg01d1 U16 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(n7) );
  nd12d2 U17 ( .A1(n8), .A2(n7), .ZN(n13) );
  nd03d2 U18 ( .A1(n11), .A2(n13), .A3(n12), .ZN(n9) );
  xn02d7 U19 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
  nd12d2 U20 ( .A1(n10), .A2(carry[4]), .ZN(n12) );
  xr03d1 U21 ( .A1(A[4]), .A2(B[4]), .A3(n7), .Z(SUM[4]) );
  nd03d2 U22 ( .A1(n11), .A2(n13), .A3(n12), .ZN(carry[5]) );
  xr02d1 U23 ( .A1(A[5]), .A2(B[5]), .Z(n14) );
  xr02d1 U24 ( .A1(n14), .A2(n2), .Z(SUM[5]) );
  nd02d0 U25 ( .A1(A[5]), .A2(B[5]), .ZN(n15) );
  nd02d2 U26 ( .A1(carry[5]), .A2(A[5]), .ZN(n16) );
  nd02d2 U27 ( .A1(n9), .A2(B[5]), .ZN(n17) );
  nd02d2 U28 ( .A1(n6), .A2(B[7]), .ZN(n20) );
  xr02d1 U29 ( .A1(B[7]), .A2(A[7]), .Z(n18) );
  xr02d1 U30 ( .A1(n18), .A2(n1), .Z(SUM[7]) );
  nd02d0 U31 ( .A1(A[7]), .A2(B[7]), .ZN(n21) );
  nd02d2 U32 ( .A1(n22), .A2(n23), .ZN(carry[1]) );
  invbd2 U33 ( .I(A[0]), .ZN(n23) );
endmodule


module std_calc_1_DW01_add_6_DW01_add_8 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [8:1] carry;

  ad01d4 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  ad01d1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  xr03d1 U1_5 ( .A1(n1), .A2(B[5]), .A3(A[5]), .Z(SUM[5]) );
  xr03d2 U1_6 ( .A1(A[6]), .A2(B[6]), .A3(carry[6]), .Z(SUM[6]) );
  or02d4 U1 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  inv0d0 U2 ( .I(A[8]), .ZN(n10) );
  nd03d0 U3 ( .A1(n8), .A2(n6), .A3(n7), .ZN(n1) );
  nd02d1 U4 ( .A1(A[3]), .A2(B[3]), .ZN(n14) );
  cg01d1 U5 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]) );
  cg01d1 U6 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]) );
  buffd3 U7 ( .I(n9), .Z(n2) );
  inv0d0 U8 ( .I(carry[4]), .ZN(n3) );
  inv0d1 U9 ( .I(n3), .ZN(n4) );
  xr02d1 U10 ( .A1(B[4]), .A2(A[4]), .Z(n5) );
  xr02d1 U11 ( .A1(n5), .A2(n4), .Z(SUM[4]) );
  nd02d2 U12 ( .A1(carry[4]), .A2(A[4]), .ZN(n6) );
  nd02d2 U13 ( .A1(carry[4]), .A2(B[4]), .ZN(n7) );
  nd02d0 U14 ( .A1(A[4]), .A2(B[4]), .ZN(n8) );
  nd03d2 U15 ( .A1(n8), .A2(n6), .A3(n7), .ZN(carry[5]) );
  nd02d2 U16 ( .A1(carry[3]), .A2(B[3]), .ZN(n13) );
  cg01d1 U17 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(n9) );
  nd12d2 U18 ( .A1(carry[8]), .A2(n10), .ZN(CO) );
  xr02d1 U19 ( .A1(B[3]), .A2(A[3]), .Z(n11) );
  xr02d1 U20 ( .A1(n11), .A2(n2), .Z(SUM[3]) );
  nd02d1 U21 ( .A1(n9), .A2(A[3]), .ZN(n12) );
  nd03d2 U22 ( .A1(n14), .A2(n12), .A3(n13), .ZN(carry[4]) );
  xn02d1 U23 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module std_calc_1_DW01_add_7_DW01_add_9 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [7:1] carry;

  xr03d1 U1_5 ( .A1(A[5]), .A2(B[5]), .A3(carry[5]), .Z(SUM[5]) );
  xr03d1 U1_6 ( .A1(A[6]), .A2(B[6]), .A3(n2), .Z(SUM[6]) );
  nd03d2 U1 ( .A1(n12), .A2(n10), .A3(n11), .ZN(n1) );
  cg01d1 U2 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(n2) );
  xr03d7 U3 ( .A1(A[1]), .A2(B[1]), .A3(carry[1]), .Z(SUM[1]) );
  or02d4 U4 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  nd02d2 U5 ( .A1(n1), .A2(A[4]), .ZN(n13) );
  buffd1 U6 ( .I(n8), .Z(n3) );
  nd02d0 U7 ( .A1(A[4]), .A2(B[4]), .ZN(n15) );
  cg01d1 U8 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]) );
  xr03d1 U9 ( .A1(n7), .A2(B[4]), .A3(A[4]), .Z(SUM[4]) );
  nd03d0 U10 ( .A1(n21), .A2(n22), .A3(n23), .ZN(n4) );
  nd02d2 U11 ( .A1(A[1]), .A2(B[1]), .ZN(n17) );
  cg01d1 U12 ( .A(A[6]), .B(B[6]), .CI(n2), .CO(carry[7]) );
  nd04d1 U13 ( .A1(n16), .A2(n25), .A3(n26), .A4(n27), .ZN(CO) );
  inv0d0 U14 ( .I(A[8]), .ZN(n16) );
  nd02d2 U15 ( .A1(n8), .A2(A[7]), .ZN(n25) );
  nd02d2 U16 ( .A1(carry[2]), .A2(B[2]), .ZN(n23) );
  nd02d2 U17 ( .A1(A[2]), .A2(B[2]), .ZN(n21) );
  nd02d2 U18 ( .A1(A[2]), .A2(carry[2]), .ZN(n22) );
  buffd1 U19 ( .I(carry[2]), .Z(n5) );
  nd02d2 U20 ( .A1(A[1]), .A2(carry[1]), .ZN(n18) );
  inv0d0 U21 ( .I(n1), .ZN(n6) );
  inv0d1 U22 ( .I(n6), .ZN(n7) );
  nd02d2 U23 ( .A1(carry[4]), .A2(B[4]), .ZN(n14) );
  cg01d1 U24 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(n8) );
  xr02d1 U25 ( .A1(B[3]), .A2(A[3]), .Z(n9) );
  xr02d1 U26 ( .A1(n9), .A2(n4), .Z(SUM[3]) );
  nd02d2 U27 ( .A1(carry[3]), .A2(A[3]), .ZN(n10) );
  nd02d2 U28 ( .A1(carry[3]), .A2(B[3]), .ZN(n11) );
  nd02d0 U29 ( .A1(A[3]), .A2(B[3]), .ZN(n12) );
  nd03d2 U30 ( .A1(n12), .A2(n10), .A3(n11), .ZN(carry[4]) );
  nd03d2 U31 ( .A1(n15), .A2(n14), .A3(n13), .ZN(carry[5]) );
  nd02d0 U32 ( .A1(B[1]), .A2(carry[1]), .ZN(n19) );
  nd03d2 U33 ( .A1(n19), .A2(n17), .A3(n18), .ZN(carry[2]) );
  xr02d1 U34 ( .A1(A[2]), .A2(B[2]), .Z(n20) );
  xr02d1 U35 ( .A1(n20), .A2(n5), .Z(SUM[2]) );
  nd03d2 U36 ( .A1(n21), .A2(n22), .A3(n23), .ZN(carry[3]) );
  nd02d2 U37 ( .A1(carry[7]), .A2(B[7]), .ZN(n26) );
  xr02d1 U38 ( .A1(B[7]), .A2(A[7]), .Z(n24) );
  xr02d1 U39 ( .A1(n24), .A2(n3), .Z(SUM[7]) );
  nd02d0 U40 ( .A1(A[7]), .A2(B[7]), .ZN(n27) );
  xn02d1 U41 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
endmodule


module std_calc_1_DW01_add_8_DW01_add_10 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [8:1] carry;

  nd03d2 U1 ( .A1(n30), .A2(n31), .A3(n32), .ZN(n1) );
  nd02d4 U2 ( .A1(A[6]), .A2(B[6]), .ZN(n40) );
  cg01d1 U3 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(n2) );
  an03d1 U4 ( .A1(n21), .A2(n23), .A3(n22), .Z(n3) );
  nd02d2 U5 ( .A1(A[2]), .A2(n2), .ZN(n22) );
  nd02d2 U6 ( .A1(carry[2]), .A2(B[2]), .ZN(n23) );
  buffd3 U7 ( .I(A[2]), .Z(n4) );
  or02d4 U8 ( .A1(B[0]), .A2(A[0]), .Z(carry[1]) );
  xr03d1 U9 ( .A1(n4), .A2(B[2]), .A3(n2), .Z(SUM[2]) );
  inv0d0 U10 ( .I(A[5]), .ZN(n29) );
  inv0d0 U11 ( .I(A[4]), .ZN(n9) );
  inv0d0 U12 ( .I(A[8]), .ZN(n20) );
  inv0d0 U13 ( .I(n10), .ZN(n5) );
  inv0d0 U14 ( .I(n7), .ZN(n6) );
  inv0d0 U15 ( .I(A[1]), .ZN(n7) );
  cg01d1 U16 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]) );
  nd12d2 U17 ( .A1(n8), .A2(n1), .ZN(n36) );
  inv0d0 U18 ( .I(B[5]), .ZN(n8) );
  cg01d0 U19 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]) );
  nd12d2 U20 ( .A1(n9), .A2(carry[4]), .ZN(n31) );
  inv0d0 U21 ( .I(carry[4]), .ZN(n10) );
  inv0d1 U22 ( .I(n3), .ZN(n11) );
  inv0d0 U23 ( .I(carry[7]), .ZN(n12) );
  inv0d1 U24 ( .I(n12), .ZN(n13) );
  inv0d0 U25 ( .I(n16), .ZN(n14) );
  inv0d1 U26 ( .I(n14), .ZN(n15) );
  nd03d2 U27 ( .A1(n34), .A2(n35), .A3(n36), .ZN(n16) );
  nd02d2 U28 ( .A1(n16), .A2(A[6]), .ZN(n38) );
  nd02d2 U29 ( .A1(carry[6]), .A2(B[6]), .ZN(n39) );
  inv0d0 U30 ( .I(n1), .ZN(n17) );
  inv0d1 U31 ( .I(n17), .ZN(n18) );
  nd02d2 U32 ( .A1(A[2]), .A2(B[2]), .ZN(n21) );
  nd03d2 U33 ( .A1(n30), .A2(n31), .A3(n32), .ZN(n19) );
  nd12d2 U34 ( .A1(carry[8]), .A2(n20), .ZN(CO) );
  nd03d2 U35 ( .A1(n21), .A2(n23), .A3(n22), .ZN(carry[3]) );
  xr02d1 U36 ( .A1(A[3]), .A2(B[3]), .Z(n24) );
  xr02d1 U37 ( .A1(n11), .A2(n24), .Z(SUM[3]) );
  nd02d0 U38 ( .A1(A[3]), .A2(B[3]), .ZN(n25) );
  nd02d2 U39 ( .A1(carry[3]), .A2(A[3]), .ZN(n26) );
  nd02d2 U40 ( .A1(carry[3]), .A2(B[3]), .ZN(n27) );
  nd03d2 U41 ( .A1(n25), .A2(n26), .A3(n27), .ZN(carry[4]) );
  xr02d1 U42 ( .A1(B[1]), .A2(carry[1]), .Z(n28) );
  xr02d1 U43 ( .A1(n28), .A2(n6), .Z(SUM[1]) );
  xn02d7 U44 ( .A1(B[0]), .A2(A[0]), .ZN(SUM[0]) );
  nd12d2 U45 ( .A1(n29), .A2(n19), .ZN(n35) );
  xr03d1 U46 ( .A1(A[4]), .A2(B[4]), .A3(n5), .Z(SUM[4]) );
  nd02d0 U47 ( .A1(A[4]), .A2(B[4]), .ZN(n30) );
  nd02d2 U48 ( .A1(carry[4]), .A2(B[4]), .ZN(n32) );
  xr02d1 U49 ( .A1(A[5]), .A2(B[5]), .Z(n33) );
  xr02d1 U50 ( .A1(n33), .A2(n18), .Z(SUM[5]) );
  nd02d0 U51 ( .A1(A[5]), .A2(B[5]), .ZN(n34) );
  nd03d2 U52 ( .A1(n34), .A2(n36), .A3(n35), .ZN(carry[6]) );
  xr02d1 U53 ( .A1(B[6]), .A2(A[6]), .Z(n37) );
  xr02d1 U54 ( .A1(n37), .A2(n15), .Z(SUM[6]) );
  nd03d2 U55 ( .A1(n40), .A2(n39), .A3(n38), .ZN(carry[7]) );
  xr02d1 U56 ( .A1(B[7]), .A2(A[7]), .Z(n41) );
  xr02d1 U57 ( .A1(n41), .A2(n13), .Z(SUM[7]) );
endmodule


module std_calc_1_DW01_add_9_DW01_add_11 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31;
  wire   [8:1] carry;

  ad01d1 U1_4 ( .A(A[4]), .B(B[4]), .CI(n7), .CO(carry[5]), .S(SUM[4]) );
  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(n6), .CO(carry[4]), .S(SUM[3]) );
  ad01d1 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  ad01d4 U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b1), .CO(carry[1]), .S(SUM[0]) );
  cg01d1 U1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(n1) );
  nd03d1 U2 ( .A1(n31), .A2(n30), .A3(n29), .ZN(n15) );
  nd02d0 U3 ( .A1(A[5]), .A2(B[5]), .ZN(n23) );
  inv0d0 U4 ( .I(n8), .ZN(n2) );
  nd02d2 U5 ( .A1(n3), .A2(n16), .ZN(CO) );
  invbd2 U6 ( .I(carry[8]), .ZN(n3) );
  inv0d0 U7 ( .I(A[8]), .ZN(n16) );
  oaim211d1 U8 ( .C1(A[5]), .C2(B[5]), .A(n21), .B(n22), .ZN(n14) );
  inv0d0 U9 ( .I(n11), .ZN(n4) );
  inv0d1 U10 ( .I(n4), .ZN(n5) );
  nd03d2 U11 ( .A1(n19), .A2(n18), .A3(n17), .ZN(n6) );
  nd02d1 U12 ( .A1(A[2]), .A2(B[2]), .ZN(n19) );
  nd03d1 U13 ( .A1(n18), .A2(n19), .A3(n17), .ZN(carry[3]) );
  cg01d1 U14 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(n7) );
  inv0d0 U15 ( .I(n1), .ZN(n8) );
  inv0d0 U16 ( .I(carry[6]), .ZN(n9) );
  inv0d1 U17 ( .I(n9), .ZN(n10) );
  cg01d1 U18 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(n11) );
  inv0d0 U19 ( .I(carry[7]), .ZN(n12) );
  inv0d1 U20 ( .I(n12), .ZN(n13) );
  nd02d2 U21 ( .A1(carry[2]), .A2(A[2]), .ZN(n17) );
  xr03d2 U22 ( .A1(A[2]), .A2(B[2]), .A3(n2), .Z(SUM[2]) );
  nd02d2 U23 ( .A1(n1), .A2(B[2]), .ZN(n18) );
  xr02d1 U24 ( .A1(B[5]), .A2(A[5]), .Z(n20) );
  xr02d1 U25 ( .A1(n20), .A2(n5), .Z(SUM[5]) );
  nd02d2 U26 ( .A1(carry[5]), .A2(A[5]), .ZN(n21) );
  nd02d2 U27 ( .A1(n11), .A2(B[5]), .ZN(n22) );
  nd03d2 U28 ( .A1(n23), .A2(n22), .A3(n21), .ZN(carry[6]) );
  xr02d1 U29 ( .A1(B[7]), .A2(A[7]), .Z(n24) );
  xr02d1 U30 ( .A1(n24), .A2(n13), .Z(SUM[7]) );
  nd02d2 U31 ( .A1(n15), .A2(A[7]), .ZN(n25) );
  nd02d2 U32 ( .A1(carry[7]), .A2(B[7]), .ZN(n26) );
  nd02d0 U33 ( .A1(A[7]), .A2(B[7]), .ZN(n27) );
  nd03d2 U34 ( .A1(n27), .A2(n26), .A3(n25), .ZN(carry[8]) );
  xr02d1 U35 ( .A1(B[6]), .A2(A[6]), .Z(n28) );
  xr02d1 U36 ( .A1(n28), .A2(n10), .Z(SUM[6]) );
  nd02d2 U37 ( .A1(n14), .A2(A[6]), .ZN(n29) );
  nd02d2 U38 ( .A1(carry[6]), .A2(B[6]), .ZN(n30) );
  nd02d0 U39 ( .A1(A[6]), .A2(B[6]), .ZN(n31) );
  nd03d2 U40 ( .A1(n31), .A2(n29), .A3(n30), .ZN(carry[7]) );
endmodule


module std_calc_1_DW01_add_10_DW01_add_12 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;
  wire   [8:1] carry;

  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(n8), .CO(carry[7]), .S(SUM[6]) );
  xr03d1 U1_3 ( .A1(A[3]), .A2(B[3]), .A3(n1), .Z(SUM[3]) );
  xr03d1 U1_2 ( .A1(n5), .A2(B[2]), .A3(n2), .Z(SUM[2]) );
  ad01d1 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  xr03d1 U1_5 ( .A1(A[5]), .A2(B[5]), .A3(n6), .Z(SUM[5]) );
  ad01d4 U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b1), .CO(carry[1]), .S(SUM[0]) );
  cg01d1 U1 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(n1) );
  cg01d0 U2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]) );
  inv0d0 U3 ( .I(A[8]), .ZN(n14) );
  nd02d1 U4 ( .A1(A[4]), .A2(B[4]), .ZN(n13) );
  cg01d1 U5 ( .A(A[5]), .B(B[5]), .CI(n6), .CO(carry[6]) );
  nd02d1 U6 ( .A1(A[7]), .A2(B[7]), .ZN(n18) );
  inv0d0 U7 ( .I(n3), .ZN(n2) );
  inv0d0 U8 ( .I(carry[2]), .ZN(n3) );
  inv0d0 U9 ( .I(A[2]), .ZN(n4) );
  inv0d1 U10 ( .I(n4), .ZN(n5) );
  cg01d1 U11 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]) );
  oaim211d1 U12 ( .C1(carry[4]), .C2(B[4]), .A(n11), .B(n13), .ZN(carry[5]) );
  nd03d2 U13 ( .A1(n13), .A2(n12), .A3(n11), .ZN(n6) );
  buffd1 U14 ( .I(n10), .Z(n7) );
  cg01d1 U15 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(n8) );
  cg01d1 U16 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(n9) );
  cg01d1 U17 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(n10) );
  xr03d1 U18 ( .A1(A[4]), .A2(B[4]), .A3(n9), .Z(SUM[4]) );
  nd02d2 U19 ( .A1(carry[4]), .A2(A[4]), .ZN(n11) );
  nd02d2 U20 ( .A1(n9), .A2(B[4]), .ZN(n12) );
  nd12d2 U21 ( .A1(carry[8]), .A2(n14), .ZN(CO) );
  xr02d1 U22 ( .A1(B[7]), .A2(A[7]), .Z(n15) );
  xr02d1 U23 ( .A1(n15), .A2(n7), .Z(SUM[7]) );
  nd02d2 U24 ( .A1(carry[7]), .A2(A[7]), .ZN(n16) );
  nd02d2 U25 ( .A1(n10), .A2(B[7]), .ZN(n17) );
  nd03d2 U26 ( .A1(n18), .A2(n17), .A3(n16), .ZN(carry[8]) );
endmodule


module std_calc_1_DW01_add_11_DW01_add_13 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;
  wire   [8:1] carry;

  xr03d2 U1_5 ( .A1(A[5]), .A2(B[5]), .A3(n1), .Z(SUM[5]) );
  xr03d1 U1_2 ( .A1(A[2]), .A2(B[2]), .A3(n2), .Z(SUM[2]) );
  ad01d0 U1_1 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]), .S(SUM[1])
         );
  ad01d4 U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b1), .CO(carry[1]), .S(SUM[0]) );
  nd03d2 U1 ( .A1(n19), .A2(n20), .A3(n21), .ZN(n1) );
  cg01d1 U2 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(n2) );
  inv0d1 U3 ( .I(A[8]), .ZN(n12) );
  nd12d2 U4 ( .A1(n3), .A2(n11), .ZN(n20) );
  inv0d0 U5 ( .I(A[4]), .ZN(n3) );
  cg01d1 U6 ( .A(A[5]), .B(B[5]), .CI(n1), .CO(carry[6]) );
  nd12d2 U7 ( .A1(n4), .A2(n14), .ZN(n17) );
  inv0d0 U8 ( .I(B[3]), .ZN(n4) );
  cg01d1 U9 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]) );
  cg01d0 U10 ( .A(A[7]), .B(B[7]), .CI(n7), .CO(carry[8]) );
  cg01d1 U11 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(n8) );
  inv0d0 U12 ( .I(n11), .ZN(n5) );
  inv0d1 U13 ( .I(n5), .ZN(n6) );
  nd03d2 U14 ( .A1(n25), .A2(n24), .A3(n23), .ZN(n7) );
  nd02d2 U15 ( .A1(n8), .A2(A[6]), .ZN(n23) );
  inv0d0 U16 ( .I(n7), .ZN(n9) );
  inv0d1 U17 ( .I(n9), .ZN(n10) );
  nd03d2 U18 ( .A1(n15), .A2(n17), .A3(n16), .ZN(n11) );
  nd12d2 U19 ( .A1(carry[8]), .A2(n12), .ZN(CO) );
  xr02d1 U20 ( .A1(B[7]), .A2(A[7]), .Z(n13) );
  xr02d1 U21 ( .A1(n13), .A2(n10), .Z(SUM[7]) );
  cg01d1 U22 ( .A(A[2]), .B(B[2]), .CI(n2), .CO(n14) );
  xr03d1 U23 ( .A1(A[3]), .A2(B[3]), .A3(carry[3]), .Z(SUM[3]) );
  nd02d4 U24 ( .A1(A[3]), .A2(B[3]), .ZN(n15) );
  nd02d2 U25 ( .A1(carry[3]), .A2(A[3]), .ZN(n16) );
  xr02d1 U26 ( .A1(A[4]), .A2(B[4]), .Z(n18) );
  xr02d1 U27 ( .A1(n18), .A2(n6), .Z(SUM[4]) );
  nd02d0 U28 ( .A1(A[4]), .A2(B[4]), .ZN(n19) );
  nd02d2 U29 ( .A1(n11), .A2(B[4]), .ZN(n21) );
  nd03d2 U30 ( .A1(n19), .A2(n20), .A3(n21), .ZN(carry[5]) );
  nd02d2 U31 ( .A1(carry[6]), .A2(B[6]), .ZN(n24) );
  xr02d1 U32 ( .A1(B[6]), .A2(A[6]), .Z(n22) );
  xr02d1 U33 ( .A1(n22), .A2(n8), .Z(SUM[6]) );
  nd02d0 U34 ( .A1(A[6]), .A2(B[6]), .ZN(n25) );
endmodule


module std_calc_1_DW01_add_12_DW01_add_14 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35;
  wire   [7:1] carry;

  xr03d1 U1_3 ( .A1(A[3]), .A2(B[3]), .A3(carry[3]), .Z(SUM[3]) );
  xr03d1 U1_1 ( .A1(carry[1]), .A2(B[1]), .A3(n3), .Z(SUM[1]) );
  ad01d4 U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b1), .CO(carry[1]), .S(SUM[0]) );
  nd02d2 U1 ( .A1(A[2]), .A2(B[2]), .ZN(n27) );
  inv0d2 U2 ( .I(n4), .ZN(n24) );
  buffd1 U3 ( .I(n11), .Z(n1) );
  inv0d0 U4 ( .I(A[1]), .ZN(n2) );
  inv0d1 U5 ( .I(n2), .ZN(n3) );
  nd02d2 U6 ( .A1(A[2]), .A2(carry[2]), .ZN(n25) );
  nd02d4 U7 ( .A1(A[4]), .A2(B[4]), .ZN(n17) );
  cg01d1 U8 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(n11) );
  cg01d1 U9 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]) );
  cg01d1 U10 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(n8) );
  nd02d2 U11 ( .A1(n8), .A2(B[2]), .ZN(n26) );
  nd03d2 U12 ( .A1(n35), .A2(n34), .A3(n33), .ZN(n4) );
  cg01d1 U13 ( .A(carry[1]), .B(B[1]), .CI(A[1]), .CO(carry[2]) );
  nd12d2 U14 ( .A1(n9), .A2(n11), .ZN(n19) );
  inv0d0 U15 ( .I(B[4]), .ZN(n9) );
  nd13d2 U16 ( .A1(n5), .A2(n30), .A3(n29), .ZN(carry[7]) );
  inv0d0 U17 ( .I(n31), .ZN(n5) );
  nd02d2 U18 ( .A1(carry[6]), .A2(B[6]), .ZN(n6) );
  nd03d2 U19 ( .A1(n31), .A2(n6), .A3(n29), .ZN(n7) );
  nd02d2 U20 ( .A1(n7), .A2(A[7]), .ZN(n33) );
  nd02d2 U21 ( .A1(carry[7]), .A2(B[7]), .ZN(n34) );
  nd03d2 U22 ( .A1(n21), .A2(n22), .A3(n23), .ZN(n10) );
  inv0d0 U23 ( .I(n10), .ZN(n12) );
  inv0d1 U24 ( .I(n12), .ZN(n13) );
  nd03d0 U25 ( .A1(n17), .A2(n18), .A3(n19), .ZN(carry[5]) );
  inv0d0 U26 ( .I(n7), .ZN(n14) );
  inv0d1 U27 ( .I(n14), .ZN(n15) );
  nd03d2 U28 ( .A1(n17), .A2(n18), .A3(n19), .ZN(n16) );
  xr03d1 U29 ( .A1(A[4]), .A2(B[4]), .A3(n1), .Z(SUM[4]) );
  nd02d2 U30 ( .A1(carry[4]), .A2(A[4]), .ZN(n18) );
  xr02d1 U31 ( .A1(A[5]), .A2(B[5]), .Z(n20) );
  xr02d1 U32 ( .A1(n20), .A2(carry[5]), .Z(SUM[5]) );
  nd02d0 U33 ( .A1(A[5]), .A2(B[5]), .ZN(n21) );
  nd02d2 U34 ( .A1(n16), .A2(A[5]), .ZN(n22) );
  nd02d2 U35 ( .A1(n16), .A2(B[5]), .ZN(n23) );
  nd03d2 U36 ( .A1(n21), .A2(n23), .A3(n22), .ZN(carry[6]) );
  nd12d2 U37 ( .A1(A[8]), .A2(n24), .ZN(CO) );
  xr03d1 U38 ( .A1(A[2]), .A2(B[2]), .A3(n8), .Z(SUM[2]) );
  nd03d2 U39 ( .A1(n27), .A2(n25), .A3(n26), .ZN(carry[3]) );
  xr02d1 U40 ( .A1(B[6]), .A2(A[6]), .Z(n28) );
  xr02d1 U41 ( .A1(n13), .A2(n28), .Z(SUM[6]) );
  nd02d2 U42 ( .A1(n10), .A2(A[6]), .ZN(n29) );
  nd02d2 U43 ( .A1(carry[6]), .A2(B[6]), .ZN(n30) );
  nd02d0 U44 ( .A1(A[6]), .A2(B[6]), .ZN(n31) );
  xr02d1 U45 ( .A1(B[7]), .A2(A[7]), .Z(n32) );
  xr02d1 U46 ( .A1(n32), .A2(n15), .Z(SUM[7]) );
  nd02d0 U47 ( .A1(A[7]), .A2(B[7]), .ZN(n35) );
endmodule


module std_calc_1_DW01_add_13_DW01_add_15 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37;
  wire   [8:1] carry;

  ad01d1 U1_3 ( .A(B[3]), .B(A[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  xr03d1 U1_6 ( .A1(A[6]), .A2(B[6]), .A3(carry[6]), .Z(SUM[6]) );
  ad01d4 U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b1), .CO(carry[1]), .S(SUM[0]) );
  buffd1 U1 ( .I(carry[7]), .Z(n1) );
  nd03d2 U2 ( .A1(n2), .A2(n31), .A3(n32), .ZN(n19) );
  invbdk U3 ( .I(n3), .ZN(n2) );
  invbdk U4 ( .I(n33), .ZN(n3) );
  cg01d1 U5 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]) );
  inv0d0 U6 ( .I(n17), .ZN(n4) );
  inv0d1 U7 ( .I(n4), .ZN(n5) );
  cg01d2 U8 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(n17) );
  nd13d2 U9 ( .A1(n6), .A2(n32), .A3(n31), .ZN(carry[2]) );
  invbdk U10 ( .I(n33), .ZN(n6) );
  xr02d1 U11 ( .A1(B[7]), .A2(A[7]), .Z(n7) );
  xr02d1 U12 ( .A1(n7), .A2(n1), .Z(SUM[7]) );
  nd02d2 U13 ( .A1(carry[7]), .A2(A[7]), .ZN(n8) );
  nd02d2 U14 ( .A1(carry[7]), .A2(B[7]), .ZN(n9) );
  nd02d0 U15 ( .A1(A[7]), .A2(B[7]), .ZN(n10) );
  nd03d2 U16 ( .A1(n10), .A2(n9), .A3(n8), .ZN(carry[8]) );
  inv0d1 U17 ( .I(A[8]), .ZN(n18) );
  inv0d0 U18 ( .I(n12), .ZN(n11) );
  nd02d1 U19 ( .A1(A[4]), .A2(B[4]), .ZN(n26) );
  inv0d0 U20 ( .I(n19), .ZN(n12) );
  nd02d2 U21 ( .A1(carry[2]), .A2(B[2]), .ZN(n37) );
  xr03d2 U22 ( .A1(n16), .A2(B[1]), .A3(carry[1]), .Z(SUM[1]) );
  inv0d0 U23 ( .I(A[2]), .ZN(n13) );
  inv0d1 U24 ( .I(n13), .ZN(n14) );
  inv0d0 U25 ( .I(A[1]), .ZN(n15) );
  inv0d1 U26 ( .I(n15), .ZN(n16) );
  nd12d2 U27 ( .A1(carry[8]), .A2(n18), .ZN(CO) );
  inv0d0 U28 ( .I(n22), .ZN(n20) );
  inv0d1 U29 ( .I(n20), .ZN(n21) );
  nd03d2 U30 ( .A1(n26), .A2(n25), .A3(n24), .ZN(n22) );
  nd02d2 U31 ( .A1(n22), .A2(A[5]), .ZN(n28) );
  nd02d2 U32 ( .A1(carry[5]), .A2(B[5]), .ZN(n29) );
  nd02d2 U33 ( .A1(n19), .A2(A[2]), .ZN(n36) );
  nd02d2 U34 ( .A1(A[2]), .A2(B[2]), .ZN(n35) );
  xr02d1 U35 ( .A1(B[4]), .A2(A[4]), .Z(n23) );
  xr02d1 U36 ( .A1(n23), .A2(n5), .Z(SUM[4]) );
  nd02d2 U37 ( .A1(carry[4]), .A2(A[4]), .ZN(n24) );
  nd02d2 U38 ( .A1(n17), .A2(B[4]), .ZN(n25) );
  nd03d2 U39 ( .A1(n26), .A2(n25), .A3(n24), .ZN(carry[5]) );
  xr02d1 U40 ( .A1(B[5]), .A2(A[5]), .Z(n27) );
  xr02d1 U41 ( .A1(n27), .A2(n21), .Z(SUM[5]) );
  nd02d0 U42 ( .A1(A[5]), .A2(B[5]), .ZN(n30) );
  nd03d2 U43 ( .A1(n30), .A2(n29), .A3(n28), .ZN(carry[6]) );
  nd02d2 U44 ( .A1(A[1]), .A2(B[1]), .ZN(n31) );
  nd02d2 U45 ( .A1(A[1]), .A2(carry[1]), .ZN(n32) );
  nd02d1 U46 ( .A1(B[1]), .A2(carry[1]), .ZN(n33) );
  xr02d1 U47 ( .A1(n14), .A2(B[2]), .Z(n34) );
  xr02d1 U48 ( .A1(n34), .A2(n11), .Z(SUM[2]) );
  nd03d2 U49 ( .A1(n35), .A2(n37), .A3(n36), .ZN(carry[3]) );
endmodule


module std_calc_1_DW_div_seq_0 ( clk, rst_n, hold, start, a, b, complete, 
        divide_by_0, quotient, remainder );
  input [27:0] a;
  input [7:0] b;
  output [27:0] quotient;
  output [7:0] remainder;
  input clk, rst_n, hold, start;
  output complete, divide_by_0;
  wire   hold_n, load_tc, first_cyc, pr_9__8_, pr_9__7_, pr_9__6_, pr_9__5_,
         pr_9__4_, pr_9__3_, pr_9__2_, pr_9__1_, pr_8__8_, pr_8__7_, pr_8__6_,
         pr_8__5_, pr_8__4_, pr_8__3_, pr_8__2_, pr_8__1_, pr_7__8_, pr_7__7_,
         pr_7__6_, pr_7__5_, pr_7__4_, pr_7__3_, pr_7__2_, pr_7__1_, pr_6__8_,
         pr_6__7_, pr_6__6_, pr_6__5_, pr_6__4_, pr_6__3_, pr_6__2_, pr_6__1_,
         pr_5__8_, pr_5__7_, pr_5__6_, pr_5__5_, pr_5__4_, pr_5__3_, pr_5__2_,
         pr_5__1_, pr_4__8_, pr_4__7_, pr_4__6_, pr_4__5_, pr_4__4_, pr_4__3_,
         pr_4__2_, pr_4__1_, pr_3__8_, pr_3__7_, pr_3__6_, pr_3__5_, pr_3__4_,
         pr_3__3_, pr_3__2_, pr_3__1_, pr_2__8_, pr_2__7_, pr_2__6_, pr_2__5_,
         pr_2__4_, pr_2__3_, pr_2__2_, pr_2__1_, pr_1__8_, pr_1__7_, pr_1__6_,
         pr_1__5_, pr_1__4_, pr_1__3_, pr_1__2_, pr_1__1_, temp_part_rem_9__7_,
         temp_part_rem_9__6_, temp_part_rem_9__5_, temp_part_rem_9__4_,
         temp_part_rem_9__3_, temp_part_rem_9__2_, temp_part_rem_9__1_,
         temp_part_rem_9__0_, temp_part_rem_8__7_, temp_part_rem_8__6_,
         temp_part_rem_8__5_, temp_part_rem_8__4_, temp_part_rem_8__3_,
         temp_part_rem_8__2_, temp_part_rem_8__1_, temp_part_rem_8__0_,
         temp_part_rem_7__7_, temp_part_rem_7__6_, temp_part_rem_7__5_,
         temp_part_rem_7__4_, temp_part_rem_7__3_, temp_part_rem_7__2_,
         temp_part_rem_7__1_, temp_part_rem_7__0_, temp_part_rem_6__7_,
         temp_part_rem_6__6_, temp_part_rem_6__5_, temp_part_rem_6__4_,
         temp_part_rem_6__3_, temp_part_rem_6__2_, temp_part_rem_6__1_,
         temp_part_rem_6__0_, temp_part_rem_5__7_, temp_part_rem_5__6_,
         temp_part_rem_5__5_, temp_part_rem_5__4_, temp_part_rem_5__3_,
         temp_part_rem_5__2_, temp_part_rem_5__1_, temp_part_rem_5__0_,
         temp_part_rem_4__7_, temp_part_rem_4__6_, temp_part_rem_4__5_,
         temp_part_rem_4__4_, temp_part_rem_4__3_, temp_part_rem_4__2_,
         temp_part_rem_4__1_, temp_part_rem_4__0_, temp_part_rem_3__7_,
         temp_part_rem_3__6_, temp_part_rem_3__5_, temp_part_rem_3__4_,
         temp_part_rem_3__3_, temp_part_rem_3__2_, temp_part_rem_3__1_,
         temp_part_rem_3__0_, temp_part_rem_2__7_, temp_part_rem_2__6_,
         temp_part_rem_2__5_, temp_part_rem_2__4_, temp_part_rem_2__3_,
         temp_part_rem_2__2_, temp_part_rem_2__1_, temp_part_rem_2__0_,
         temp_part_rem_1__7_, temp_part_rem_1__6_, temp_part_rem_1__5_,
         temp_part_rem_1__4_, temp_part_rem_1__3_, temp_part_rem_1__2_,
         temp_part_rem_1__1_, temp_part_rem_1__0_, temp_part_rem_0__7_,
         temp_part_rem_0__6_, temp_part_rem_0__5_, temp_part_rem_0__4_,
         temp_part_rem_0__3_, temp_part_rem_0__2_, temp_part_rem_0__1_,
         temp_part_rem_0__0_, start_q, nx_state, N28, N29, N30, N31, N32, N33,
         N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47,
         N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61,
         N62, N63, N64, N65, N66, U_COUNT_tercnt_d, U_COUNT_tercnt_cmp_bus_0_,
         U_COUNT_next_count_2_, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10;
  wire   [9:1] a_in_temp0;
  wire   [7:0] part_rem_0;
  wire   [19:0] final_quotient;
  wire   [7:0] b_in;
  wire   [9:0] temp_q_rev;
  wire   [2:0] U_COUNT_count_inc;
  wire   [2:0] U_COUNT_count;

  std_calc_1_DW01_add_4_DW01_add_6 U_ADD_0 ( .A({part_rem_0, n97}), .B({1'b1, 
        n177, n178, n179, n180, n181, n182, n183, n83}), .CI(1'b1), .SUM({
        SYNOPSYS_UNCONNECTED_1, temp_part_rem_0__7_, temp_part_rem_0__6_, 
        temp_part_rem_0__5_, temp_part_rem_0__4_, temp_part_rem_0__3_, 
        temp_part_rem_0__2_, temp_part_rem_0__1_, temp_part_rem_0__0_}), .CO(
        temp_q_rev[9]) );
  std_calc_1_DW01_add_5_DW01_add_7 U_ADD_1 ( .A({pr_1__8_, pr_1__7_, pr_1__6_, 
        pr_1__5_, pr_1__4_, pr_1__3_, pr_1__2_, pr_1__1_, a_in_temp0[1]}), .B(
        {1'b1, n177, n178, n179, n180, n181, n182, n183, n108}), .CI(1'b1), 
        .SUM({SYNOPSYS_UNCONNECTED_2, temp_part_rem_1__7_, temp_part_rem_1__6_, 
        temp_part_rem_1__5_, temp_part_rem_1__4_, temp_part_rem_1__3_, 
        temp_part_rem_1__2_, temp_part_rem_1__1_, temp_part_rem_1__0_}), .CO(
        temp_q_rev[8]) );
  std_calc_1_DW01_add_6_DW01_add_8 U_ADD_2 ( .A({pr_2__8_, pr_2__7_, pr_2__6_, 
        pr_2__5_, pr_2__4_, pr_2__3_, pr_2__2_, pr_2__1_, a_in_temp0[2]}), .B(
        {1'b1, n177, n178, n179, n180, n181, n182, n183, n108}), .CI(1'b1), 
        .SUM({SYNOPSYS_UNCONNECTED_3, temp_part_rem_2__7_, temp_part_rem_2__6_, 
        temp_part_rem_2__5_, temp_part_rem_2__4_, temp_part_rem_2__3_, 
        temp_part_rem_2__2_, temp_part_rem_2__1_, temp_part_rem_2__0_}), .CO(
        temp_q_rev[7]) );
  std_calc_1_DW01_add_7_DW01_add_9 U_ADD_3 ( .A({pr_3__8_, pr_3__7_, pr_3__6_, 
        pr_3__5_, pr_3__4_, pr_3__3_, pr_3__2_, pr_3__1_, a_in_temp0[3]}), .B(
        {1'b1, n177, n178, n179, n180, n181, n182, n183, n108}), .CI(1'b1), 
        .SUM({SYNOPSYS_UNCONNECTED_4, temp_part_rem_3__7_, temp_part_rem_3__6_, 
        temp_part_rem_3__5_, temp_part_rem_3__4_, temp_part_rem_3__3_, 
        temp_part_rem_3__2_, temp_part_rem_3__1_, temp_part_rem_3__0_}), .CO(
        temp_q_rev[6]) );
  std_calc_1_DW01_add_8_DW01_add_10 U_ADD_4 ( .A({pr_4__8_, pr_4__7_, pr_4__6_, 
        pr_4__5_, pr_4__4_, pr_4__3_, pr_4__2_, pr_4__1_, a_in_temp0[4]}), .B(
        {1'b1, n177, n178, n179, n180, n181, n182, n183, n108}), .CI(1'b1), 
        .SUM({SYNOPSYS_UNCONNECTED_5, temp_part_rem_4__7_, temp_part_rem_4__6_, 
        temp_part_rem_4__5_, temp_part_rem_4__4_, temp_part_rem_4__3_, 
        temp_part_rem_4__2_, temp_part_rem_4__1_, temp_part_rem_4__0_}), .CO(
        temp_q_rev[5]) );
  std_calc_1_DW01_add_9_DW01_add_11 U_ADD_5 ( .A({pr_5__8_, pr_5__7_, pr_5__6_, 
        pr_5__5_, pr_5__4_, pr_5__3_, pr_5__2_, pr_5__1_, a_in_temp0[5]}), .B(
        {1'b1, n177, n178, n179, n180, n181, n182, n183, n108}), .CI(1'b1), 
        .SUM({SYNOPSYS_UNCONNECTED_6, temp_part_rem_5__7_, temp_part_rem_5__6_, 
        temp_part_rem_5__5_, temp_part_rem_5__4_, temp_part_rem_5__3_, 
        temp_part_rem_5__2_, temp_part_rem_5__1_, temp_part_rem_5__0_}), .CO(
        temp_q_rev[4]) );
  std_calc_1_DW01_add_10_DW01_add_12 U_ADD_6 ( .A({pr_6__8_, pr_6__7_, 
        pr_6__6_, pr_6__5_, pr_6__4_, pr_6__3_, pr_6__2_, pr_6__1_, 
        a_in_temp0[6]}), .B({1'b1, n177, n178, n179, n180, n181, n182, n183, 
        n108}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_7, temp_part_rem_6__7_, 
        temp_part_rem_6__6_, temp_part_rem_6__5_, temp_part_rem_6__4_, 
        temp_part_rem_6__3_, temp_part_rem_6__2_, temp_part_rem_6__1_, 
        temp_part_rem_6__0_}), .CO(temp_q_rev[3]) );
  std_calc_1_DW01_add_11_DW01_add_13 U_ADD_7 ( .A({pr_7__8_, pr_7__7_, 
        pr_7__6_, pr_7__5_, pr_7__4_, pr_7__3_, pr_7__2_, pr_7__1_, 
        a_in_temp0[7]}), .B({1'b1, n177, n178, n179, n180, n181, n182, n183, 
        n108}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_8, temp_part_rem_7__7_, 
        temp_part_rem_7__6_, temp_part_rem_7__5_, temp_part_rem_7__4_, 
        temp_part_rem_7__3_, temp_part_rem_7__2_, temp_part_rem_7__1_, 
        temp_part_rem_7__0_}), .CO(temp_q_rev[2]) );
  std_calc_1_DW01_add_12_DW01_add_14 U_ADD_8 ( .A({pr_8__8_, pr_8__7_, 
        pr_8__6_, pr_8__5_, pr_8__4_, pr_8__3_, pr_8__2_, pr_8__1_, 
        a_in_temp0[8]}), .B({1'b1, n177, n178, n179, n180, n181, n182, n95, 
        n108}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_9, temp_part_rem_8__7_, 
        temp_part_rem_8__6_, temp_part_rem_8__5_, temp_part_rem_8__4_, 
        temp_part_rem_8__3_, temp_part_rem_8__2_, temp_part_rem_8__1_, 
        temp_part_rem_8__0_}), .CO(temp_q_rev[1]) );
  std_calc_1_DW01_add_13_DW01_add_15 U_ADD_9 ( .A({pr_9__8_, pr_9__7_, 
        pr_9__6_, pr_9__5_, pr_9__4_, pr_9__3_, pr_9__2_, pr_9__1_, 
        a_in_temp0[9]}), .B({1'b1, n177, n178, n179, n180, n181, n182, n95, 
        n108}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_10, temp_part_rem_9__7_, 
        temp_part_rem_9__6_, temp_part_rem_9__5_, temp_part_rem_9__4_, 
        temp_part_rem_9__3_, temp_part_rem_9__2_, temp_part_rem_9__1_, 
        temp_part_rem_9__0_}), .CO(temp_q_rev[0]) );
  dfcrq1 shf_reg_reg_9__2_ ( .D(N66), .CP(clk), .CDN(n117), .Q(
        final_quotient[0]) );
  dfcrq1 shf_reg_reg_9__1_ ( .D(N65), .CP(clk), .CDN(n117), .Q(
        final_quotient[10]) );
  dfcrq1 shf_reg_reg_9__0_ ( .D(N64), .CP(clk), .CDN(n117), .Q(a_in_temp0[9])
         );
  dfcrq1 shf_reg_reg_8__2_ ( .D(N63), .CP(clk), .CDN(n118), .Q(
        final_quotient[1]) );
  dfcrq1 shf_reg_reg_8__1_ ( .D(N62), .CP(clk), .CDN(n117), .Q(
        final_quotient[11]) );
  dfcrq1 shf_reg_reg_8__0_ ( .D(N61), .CP(clk), .CDN(n118), .Q(a_in_temp0[8])
         );
  dfcrq1 shf_reg_reg_7__2_ ( .D(N60), .CP(clk), .CDN(n118), .Q(
        final_quotient[2]) );
  dfcrq1 shf_reg_reg_7__1_ ( .D(N59), .CP(clk), .CDN(n118), .Q(
        final_quotient[12]) );
  dfcrq1 shf_reg_reg_7__0_ ( .D(N58), .CP(clk), .CDN(n118), .Q(a_in_temp0[7])
         );
  dfcrq1 shf_reg_reg_6__2_ ( .D(N57), .CP(clk), .CDN(n118), .Q(
        final_quotient[3]) );
  dfcrq1 shf_reg_reg_6__1_ ( .D(N56), .CP(clk), .CDN(n118), .Q(
        final_quotient[13]) );
  dfcrq1 shf_reg_reg_6__0_ ( .D(N55), .CP(clk), .CDN(n118), .Q(a_in_temp0[6])
         );
  dfcrq1 shf_reg_reg_5__2_ ( .D(N54), .CP(clk), .CDN(n118), .Q(
        final_quotient[4]) );
  dfcrq1 shf_reg_reg_5__1_ ( .D(N53), .CP(clk), .CDN(n118), .Q(
        final_quotient[14]) );
  dfcrq1 shf_reg_reg_5__0_ ( .D(N52), .CP(clk), .CDN(n118), .Q(a_in_temp0[5])
         );
  dfcrq1 shf_reg_reg_4__2_ ( .D(N51), .CP(clk), .CDN(n119), .Q(
        final_quotient[5]) );
  dfcrq1 shf_reg_reg_4__1_ ( .D(N50), .CP(clk), .CDN(n119), .Q(
        final_quotient[15]) );
  dfcrq1 shf_reg_reg_4__0_ ( .D(N49), .CP(clk), .CDN(n119), .Q(a_in_temp0[4])
         );
  dfcrq1 shf_reg_reg_3__2_ ( .D(N48), .CP(clk), .CDN(n119), .Q(
        final_quotient[6]) );
  dfcrq1 shf_reg_reg_3__1_ ( .D(N47), .CP(clk), .CDN(n119), .Q(
        final_quotient[16]) );
  dfcrq1 shf_reg_reg_2__2_ ( .D(N45), .CP(clk), .CDN(n119), .Q(
        final_quotient[7]) );
  dfcrq1 shf_reg_reg_2__1_ ( .D(N44), .CP(clk), .CDN(n119), .Q(
        final_quotient[17]) );
  dfcrq1 shf_reg_reg_2__0_ ( .D(N43), .CP(clk), .CDN(n119), .Q(a_in_temp0[2])
         );
  dfcrq1 shf_reg_reg_1__2_ ( .D(N42), .CP(clk), .CDN(n119), .Q(
        final_quotient[8]) );
  dfcrq1 shf_reg_reg_1__1_ ( .D(N41), .CP(clk), .CDN(n120), .Q(
        final_quotient[18]) );
  dfcrq1 shf_reg_reg_1__0_ ( .D(N40), .CP(clk), .CDN(n120), .Q(a_in_temp0[1])
         );
  dfcrq1 shf_reg_reg_0__2_ ( .D(N39), .CP(clk), .CDN(n120), .Q(
        final_quotient[9]) );
  dfcrq1 shf_reg_reg_0__1_ ( .D(N38), .CP(clk), .CDN(n120), .Q(
        final_quotient[19]) );
  dfcrq1 start_q_reg ( .D(n111), .CP(clk), .CDN(n120), .Q(start_q) );
  dfprb1 pr_state_reg ( .D(nx_state), .CP(clk), .SDN(n117), .QN(n38) );
  deprq1 b_reg_reg_7_ ( .D(b[7]), .ENN(n113), .CP(clk), .SDN(n121), .Q(b_in[7]) );
  deprq1 b_reg_reg_6_ ( .D(b[6]), .ENN(n114), .CP(clk), .SDN(n121), .Q(b_in[6]) );
  deprq1 b_reg_reg_5_ ( .D(b[5]), .ENN(n113), .CP(clk), .SDN(n121), .Q(b_in[5]) );
  deprq1 b_reg_reg_4_ ( .D(b[4]), .ENN(n114), .CP(clk), .SDN(n121), .Q(b_in[4]) );
  deprq1 b_reg_reg_3_ ( .D(b[3]), .ENN(n115), .CP(clk), .SDN(n121), .Q(b_in[3]) );
  deprq1 b_reg_reg_2_ ( .D(b[2]), .ENN(n114), .CP(clk), .SDN(n121), .Q(b_in[2]) );
  dfcrn1 U_COUNT_U2_1 ( .D(U_COUNT_tercnt_d), .CP(clk), .CDN(n117), .QN(
        load_tc) );
  dfcrq1 U_COUNT_U1_3_2 ( .D(U_COUNT_next_count_2_), .CP(clk), .CDN(n119), .Q(
        U_COUNT_count[2]) );
  dfcrq1 U_COUNT_U1_3_1 ( .D(n140), .CP(clk), .CDN(n117), .Q(U_COUNT_count[1])
         );
  dfcrq1 U_COUNT_U1_3_0 ( .D(U_COUNT_tercnt_cmp_bus_0_), .CP(clk), .CDN(n117), 
        .Q(U_COUNT_count[0]) );
  dfcrq4 start_reg_reg ( .D(N28), .CP(clk), .CDN(n117), .Q(first_cyc) );
  deprq4 b_reg_reg_0_ ( .D(b[0]), .ENN(n112), .CP(clk), .SDN(n117), .Q(b_in[0]) );
  dfcrn4 shf_reg_reg_0__0_ ( .D(N37), .CP(clk), .CDN(n120), .QN(n96) );
  dfcrq4 shf_reg_reg_3__0_ ( .D(N46), .CP(clk), .CDN(n119), .Q(a_in_temp0[3])
         );
  dfcrb4 part_rem_reg_reg_0_ ( .D(N29), .CP(clk), .CDN(n120), .Q(n74), .QN(n75) );
  deprq4 b_reg_reg_1_ ( .D(b[1]), .ENN(n114), .CP(clk), .SDN(n121), .Q(b_in[1]) );
  dfcrn4 part_rem_reg_reg_7_ ( .D(N36), .CP(clk), .CDN(n120), .QN(n34) );
  dfcrb4 part_rem_reg_reg_3_ ( .D(N32), .CP(clk), .CDN(n121), .Q(n33), .QN(n31) );
  dfcrb4 part_rem_reg_reg_6_ ( .D(N35), .CP(clk), .CDN(n120), .Q(n30), .QN(n28) );
  dfcrb4 part_rem_reg_reg_4_ ( .D(N33), .CP(clk), .CDN(n120), .Q(n27), .QN(n25) );
  dfcrb4 part_rem_reg_reg_5_ ( .D(N34), .CP(clk), .CDN(n120), .Q(n24), .QN(n22) );
  dfcrq1 part_rem_reg_reg_1_ ( .D(N30), .CP(clk), .CDN(n117), .Q(n48) );
  dfcrn1 part_rem_reg_reg_2_ ( .D(N31), .CP(clk), .CDN(n121), .QN(n76) );
  bufbd3 U3 ( .I(n124), .Z(n14) );
  mx02d0 U4 ( .I0(pr_3__3_), .I1(temp_part_rem_3__3_), .S(n124), .Z(pr_4__4_)
         );
  mx02d1 U5 ( .I0(n57), .I1(temp_part_rem_3__2_), .S(n124), .Z(pr_4__3_) );
  mx02d0 U6 ( .I0(pr_3__4_), .I1(temp_part_rem_3__4_), .S(n124), .Z(pr_4__5_)
         );
  mx02d2 U7 ( .I0(pr_4__4_), .I1(temp_part_rem_4__4_), .S(n123), .Z(pr_5__5_)
         );
  nd12d1 U8 ( .A1(n81), .A2(n84), .ZN(n85) );
  inv0d1 U9 ( .I(n101), .ZN(n15) );
  buffd1 U10 ( .I(pr_9__3_), .Z(n16) );
  mx02d2 U11 ( .I0(n54), .I1(temp_part_rem_5__1_), .S(n122), .Z(pr_6__2_) );
  inv0d0 U12 ( .I(part_rem_0[0]), .ZN(n17) );
  inv0d1 U13 ( .I(n17), .ZN(n18) );
  mx02d0 U14 ( .I0(pr_5__4_), .I1(temp_part_rem_5__4_), .S(n122), .Z(pr_6__5_)
         );
  nd02d1 U15 ( .A1(n71), .A2(a_in_temp0[6]), .ZN(n72) );
  nd02d1 U16 ( .A1(n93), .A2(n92), .ZN(n21) );
  mx02d4 U17 ( .I0(pr_6__4_), .I1(temp_part_rem_6__4_), .S(n107), .Z(pr_7__5_)
         );
  mx02d4 U18 ( .I0(pr_6__5_), .I1(temp_part_rem_6__5_), .S(n107), .Z(pr_7__6_)
         );
  mx02d2 U19 ( .I0(n55), .I1(temp_part_rem_4__1_), .S(n123), .Z(pr_5__2_) );
  nd12d2 U20 ( .A1(n91), .A2(temp_q_rev[2]), .ZN(n93) );
  mx02d4 U21 ( .I0(pr_3__5_), .I1(temp_part_rem_3__5_), .S(n124), .Z(pr_4__6_)
         );
  buffd3 U22 ( .I(temp_q_rev[9]), .Z(n126) );
  mx02d2 U23 ( .I0(n56), .I1(temp_part_rem_3__1_), .S(n124), .Z(pr_4__2_) );
  bufbd3 U24 ( .I(temp_q_rev[6]), .Z(n124) );
  invbd2 U25 ( .I(temp_q_rev[7]), .ZN(n101) );
  inv0d0 U26 ( .I(n89), .ZN(n19) );
  inv0d0 U27 ( .I(n19), .ZN(n20) );
  mx02d0 U28 ( .I0(part_rem_0[6]), .I1(temp_part_rem_0__7_), .S(n126), .Z(
        pr_1__8_) );
  mx02d4 U29 ( .I0(pr_7__2_), .I1(temp_part_rem_7__2_), .S(n105), .Z(pr_8__3_)
         );
  inv0d2 U30 ( .I(n104), .ZN(n105) );
  mx02d2 U31 ( .I0(temp_part_rem_7__1_), .I1(n63), .S(n104), .Z(pr_8__2_) );
  inv0d2 U32 ( .I(n106), .ZN(n60) );
  invbd2 U33 ( .I(n22), .ZN(n23) );
  invbd2 U34 ( .I(n25), .ZN(n26) );
  invbd2 U35 ( .I(n28), .ZN(n29) );
  invbd2 U36 ( .I(n31), .ZN(n32) );
  inv0d0 U37 ( .I(n34), .ZN(n35) );
  mx02d0 U38 ( .I0(n63), .I1(temp_part_rem_7__1_), .S(n105), .Z(n41) );
  inv0d0 U39 ( .I(n176), .ZN(n36) );
  inv0d4 U40 ( .I(b_in[0]), .ZN(n83) );
  mx02d2 U41 ( .I0(temp_part_rem_2__1_), .I1(n59), .S(n101), .Z(pr_3__2_) );
  nd02d1 U42 ( .A1(n142), .A2(n133), .ZN(n42) );
  inv0da U43 ( .I(b_in[1]), .ZN(n183) );
  invbd2 U44 ( .I(temp_q_rev[3]), .ZN(n71) );
  inv0d1 U45 ( .I(temp_part_rem_2__0_), .ZN(n100) );
  inv0d0 U46 ( .I(temp_part_rem_7__0_), .ZN(n91) );
  inv0d0 U47 ( .I(temp_part_rem_8__0_), .ZN(n82) );
  inv0d0 U48 ( .I(n52), .ZN(n37) );
  inv0d0 U49 ( .I(a_in_temp0[4]), .ZN(n81) );
  inv0d2 U50 ( .I(temp_q_rev[1]), .ZN(n106) );
  invbd4 U51 ( .I(n60), .ZN(n143) );
  mx02d1 U52 ( .I0(n54), .I1(temp_part_rem_5__1_), .S(n122), .Z(n39) );
  inv0d1 U53 ( .I(n42), .ZN(n40) );
  nd12d2 U54 ( .A1(n155), .A2(n104), .ZN(n92) );
  inv0d4 U55 ( .I(temp_q_rev[2]), .ZN(n104) );
  bufbd3 U56 ( .I(temp_q_rev[4]), .Z(n122) );
  mx02d2 U57 ( .I0(temp_part_rem_8__2_), .I1(n41), .S(n143), .Z(pr_9__3_) );
  mx02d1 U58 ( .I0(a_in_temp0[3]), .I1(temp_part_rem_3__0_), .S(temp_q_rev[6]), 
        .Z(pr_4__1_) );
  nd02d2 U59 ( .A1(n101), .A2(a_in_temp0[2]), .ZN(n102) );
  nd02d2 U60 ( .A1(n43), .A2(a_in_temp0[5]), .ZN(n66) );
  inv0d1 U61 ( .I(temp_q_rev[4]), .ZN(n43) );
  aoi22d1 U62 ( .A1(n210), .A2(temp_part_rem_9__3_), .B1(n80), .B2(n16), .ZN(
        n214) );
  aoi22d1 U63 ( .A1(n210), .A2(temp_part_rem_9__4_), .B1(n80), .B2(pr_9__4_), 
        .ZN(n213) );
  aoi22d1 U64 ( .A1(n210), .A2(temp_part_rem_9__5_), .B1(n80), .B2(pr_9__5_), 
        .ZN(n212) );
  aoi22d1 U65 ( .A1(n210), .A2(temp_part_rem_9__6_), .B1(n80), .B2(pr_9__6_), 
        .ZN(n211) );
  aoi22d1 U66 ( .A1(n210), .A2(temp_part_rem_9__7_), .B1(n80), .B2(pr_9__7_), 
        .ZN(n209) );
  invbd4 U67 ( .I(n49), .ZN(n80) );
  oaim21d1 U68 ( .B1(n74), .B2(n78), .A(n216), .ZN(N29) );
  inv0d0 U69 ( .I(n132), .ZN(n78) );
  oai222d1 U70 ( .A1(n42), .A2(n61), .B1(n45), .B2(n46), .C1(n44), .C2(hold_n), 
        .ZN(N30) );
  inv0d0 U71 ( .I(n48), .ZN(n44) );
  inv0d1 U72 ( .I(n79), .ZN(n45) );
  nd02d2 U73 ( .A1(n106), .A2(a_in_temp0[8]), .ZN(n88) );
  mx02d0 U74 ( .I0(pr_2__3_), .I1(temp_part_rem_2__3_), .S(n15), .Z(pr_3__4_)
         );
  mx02d0 U75 ( .I0(n47), .I1(temp_part_rem_5__2_), .S(n122), .Z(pr_6__3_) );
  inv0d0 U76 ( .I(temp_part_rem_9__1_), .ZN(n46) );
  mx02d1 U77 ( .I0(n55), .I1(temp_part_rem_4__1_), .S(n123), .Z(n47) );
  mx02d2 U78 ( .I0(n18), .I1(temp_part_rem_0__1_), .S(n126), .Z(pr_1__2_) );
  mx02d1 U79 ( .I0(n21), .I1(temp_part_rem_8__1_), .S(temp_q_rev[1]), .Z(
        pr_9__2_) );
  buffd1 U80 ( .I(n15), .Z(n87) );
  nd02d2 U81 ( .A1(n142), .A2(n135), .ZN(n49) );
  invbd4 U82 ( .I(temp_q_rev[0]), .ZN(n142) );
  inv0d0 U83 ( .I(pr_9__2_), .ZN(n50) );
  inv0d0 U84 ( .I(n50), .ZN(n51) );
  mx02d0 U85 ( .I0(part_rem_0[4]), .I1(temp_part_rem_0__5_), .S(n126), .Z(
        pr_1__6_) );
  mx02d0 U86 ( .I0(part_rem_0[3]), .I1(temp_part_rem_0__4_), .S(n126), .Z(
        pr_1__5_) );
  nd02d0 U87 ( .A1(n103), .A2(n102), .ZN(n56) );
  mx02d2 U88 ( .I0(temp_part_rem_1__1_), .I1(n65), .S(n68), .Z(pr_2__2_) );
  nd02d1 U89 ( .A1(a_in_temp0[1]), .A2(n68), .ZN(n69) );
  mx02d0 U90 ( .I0(pr_1__4_), .I1(temp_part_rem_1__4_), .S(n125), .Z(pr_2__5_)
         );
  mx02d0 U91 ( .I0(pr_1__5_), .I1(temp_part_rem_1__5_), .S(n125), .Z(pr_2__6_)
         );
  mx02d0 U92 ( .I0(pr_1__6_), .I1(temp_part_rem_1__6_), .S(n125), .Z(pr_2__7_)
         );
  inv0d0 U93 ( .I(pr_6__1_), .ZN(n52) );
  inv0d0 U94 ( .I(pr_5__1_), .ZN(n53) );
  inv0d1 U95 ( .I(n53), .ZN(n54) );
  mx02d0 U96 ( .I0(pr_4__7_), .I1(temp_part_rem_4__7_), .S(n123), .Z(pr_5__8_)
         );
  mx02d0 U97 ( .I0(a_in_temp0[3]), .I1(temp_part_rem_3__0_), .S(n14), .Z(n55)
         );
  mx02d2 U98 ( .I0(temp_part_rem_2__2_), .I1(pr_2__2_), .S(n101), .Z(pr_3__3_)
         );
  mx02d0 U99 ( .I0(n59), .I1(temp_part_rem_2__1_), .S(n87), .Z(n57) );
  inv0d0 U100 ( .I(pr_2__1_), .ZN(n58) );
  inv0d1 U101 ( .I(n58), .ZN(n59) );
  nd02d2 U102 ( .A1(temp_q_rev[3]), .A2(temp_part_rem_6__0_), .ZN(n73) );
  buffd1 U103 ( .I(temp_q_rev[8]), .Z(n125) );
  nd02d2 U104 ( .A1(temp_q_rev[8]), .A2(temp_part_rem_1__0_), .ZN(n70) );
  an02d2 U105 ( .A1(n20), .A2(n88), .Z(n61) );
  inv0d0 U106 ( .I(pr_7__1_), .ZN(n62) );
  inv0d1 U107 ( .I(n62), .ZN(n63) );
  inv0d7 U108 ( .I(b_in[2]), .ZN(n182) );
  inv0d0 U109 ( .I(pr_1__1_), .ZN(n64) );
  inv0d0 U110 ( .I(n64), .ZN(n65) );
  inv0d1 U111 ( .I(temp_q_rev[5]), .ZN(n84) );
  mx02d4 U112 ( .I0(n39), .I1(temp_part_rem_6__2_), .S(n107), .Z(pr_7__3_) );
  inv0d1 U113 ( .I(temp_q_rev[8]), .ZN(n68) );
  nd02d2 U114 ( .A1(temp_q_rev[4]), .A2(temp_part_rem_5__0_), .ZN(n67) );
  nd02d2 U115 ( .A1(n67), .A2(n66), .ZN(pr_6__1_) );
  nd02d2 U116 ( .A1(n70), .A2(n69), .ZN(pr_2__1_) );
  nd02d2 U117 ( .A1(n73), .A2(n72), .ZN(pr_7__1_) );
  mx02d0 U118 ( .I0(pr_5__3_), .I1(temp_part_rem_5__3_), .S(n122), .Z(pr_6__4_) );
  mx02d0 U119 ( .I0(pr_1__3_), .I1(temp_part_rem_1__3_), .S(n125), .Z(pr_2__4_) );
  mx02d2 U120 ( .I0(n37), .I1(temp_part_rem_6__1_), .S(n107), .Z(pr_7__2_) );
  inv0d2 U121 ( .I(n76), .ZN(n77) );
  nr02d2 U122 ( .A1(n142), .A2(n78), .ZN(n79) );
  inv0d7 U123 ( .I(b_in[5]), .ZN(n179) );
  nd12d2 U124 ( .A1(n82), .A2(temp_q_rev[1]), .ZN(n89) );
  mx02d0 U125 ( .I0(pr_4__2_), .I1(temp_part_rem_4__2_), .S(n123), .Z(pr_5__3_) );
  bufbd7 U126 ( .I(temp_q_rev[5]), .Z(n123) );
  nd02d1 U127 ( .A1(temp_q_rev[5]), .A2(temp_part_rem_4__0_), .ZN(n86) );
  nd02d2 U128 ( .A1(n86), .A2(n85), .ZN(pr_5__1_) );
  inv0d7 U129 ( .I(b_in[4]), .ZN(n180) );
  mx02d1 U130 ( .I0(n94), .I1(temp_part_rem_0__0_), .S(temp_q_rev[9]), .Z(
        pr_1__1_) );
  nd02d2 U131 ( .A1(n88), .A2(n89), .ZN(pr_9__1_) );
  nr02d2 U132 ( .A1(n142), .A2(n78), .ZN(n210) );
  inv0d0 U133 ( .I(n83), .ZN(n90) );
  mx02d0 U134 ( .I0(pr_1__2_), .I1(temp_part_rem_1__2_), .S(n125), .Z(pr_2__3_) );
  mx02d0 U135 ( .I0(pr_5__6_), .I1(temp_part_rem_5__6_), .S(n122), .Z(pr_6__7_) );
  an12d4 U136 ( .A2(n48), .A1(first_cyc), .Z(part_rem_0[1]) );
  mx02d0 U137 ( .I0(pr_4__6_), .I1(temp_part_rem_4__6_), .S(n123), .Z(pr_5__7_) );
  inv0d7 U138 ( .I(b_in[7]), .ZN(n177) );
  mx02d0 U139 ( .I0(pr_4__5_), .I1(temp_part_rem_4__5_), .S(n123), .Z(pr_5__6_) );
  inv0d7 U140 ( .I(b_in[6]), .ZN(n178) );
  mx02d2 U141 ( .I0(part_rem_0[5]), .I1(temp_part_rem_0__6_), .S(n126), .Z(
        pr_1__7_) );
  mx02d0 U142 ( .I0(pr_2__7_), .I1(temp_part_rem_2__7_), .S(n87), .Z(pr_3__8_)
         );
  mx02d0 U143 ( .I0(pr_2__5_), .I1(temp_part_rem_2__5_), .S(n87), .Z(pr_3__6_)
         );
  mx02d0 U144 ( .I0(pr_2__4_), .I1(temp_part_rem_2__4_), .S(n87), .Z(pr_3__5_)
         );
  nd02d2 U145 ( .A1(n93), .A2(n92), .ZN(pr_8__1_) );
  mx02d0 U146 ( .I0(pr_2__6_), .I1(temp_part_rem_2__6_), .S(n87), .Z(pr_3__7_)
         );
  nr02d4 U147 ( .A1(load_tc), .A2(n36), .ZN(complete) );
  nr02d2 U148 ( .A1(n75), .A2(first_cyc), .ZN(part_rem_0[0]) );
  inv0d0 U149 ( .I(n96), .ZN(n94) );
  inv0d2 U150 ( .I(n96), .ZN(n97) );
  buffd1 U151 ( .I(n183), .Z(n95) );
  mx02d0 U152 ( .I0(temp_part_rem_6__7_), .I1(pr_6__7_), .S(n145), .Z(pr_7__8_) );
  mx02d0 U153 ( .I0(pr_7__5_), .I1(temp_part_rem_7__5_), .S(n105), .Z(pr_8__6_) );
  mx02d0 U154 ( .I0(pr_7__4_), .I1(temp_part_rem_7__4_), .S(n105), .Z(pr_8__5_) );
  mx02d0 U155 ( .I0(pr_7__3_), .I1(temp_part_rem_7__3_), .S(n105), .Z(pr_8__4_) );
  mx02d0 U156 ( .I0(temp_part_rem_8__7_), .I1(pr_8__7_), .S(n143), .Z(pr_9__8_) );
  mx02d0 U157 ( .I0(temp_part_rem_7__7_), .I1(pr_7__7_), .S(n144), .Z(pr_8__8_) );
  inv0d0 U158 ( .I(n142), .ZN(n98) );
  inv0d1 U159 ( .I(n98), .ZN(n99) );
  nd12d2 U160 ( .A1(n100), .A2(temp_q_rev[7]), .ZN(n103) );
  nd02d2 U161 ( .A1(n103), .A2(n102), .ZN(pr_3__1_) );
  clk2d2 U162 ( .CLK(n90), .CN(n108) );
  buffd1 U163 ( .I(n146), .Z(n127) );
  buffd1 U164 ( .I(n146), .Z(n128) );
  buffd1 U165 ( .I(n146), .Z(n129) );
  inv0d0 U166 ( .I(n114), .ZN(n109) );
  inv0d0 U167 ( .I(n113), .ZN(n110) );
  inv0d0 U168 ( .I(n112), .ZN(n111) );
  inv0d0 U169 ( .I(n184), .ZN(n146) );
  buffd1 U170 ( .I(n116), .Z(n115) );
  buffd1 U171 ( .I(n116), .Z(n113) );
  buffd1 U172 ( .I(n116), .Z(n114) );
  buffd1 U173 ( .I(n116), .Z(n112) );
  buffd1 U174 ( .I(rst_n), .Z(n119) );
  buffd1 U175 ( .I(rst_n), .Z(n118) );
  buffd1 U176 ( .I(rst_n), .Z(n117) );
  buffd1 U177 ( .I(rst_n), .Z(n120) );
  buffd1 U178 ( .I(rst_n), .Z(n121) );
  inv0d0 U179 ( .I(start), .ZN(n116) );
  buffd1 U180 ( .I(n131), .Z(n136) );
  inv0d0 U181 ( .I(n137), .ZN(n140) );
  buffd1 U182 ( .I(n130), .Z(n132) );
  buffd1 U183 ( .I(n131), .Z(n135) );
  buffd1 U184 ( .I(n130), .Z(n133) );
  buffd1 U185 ( .I(n130), .Z(n134) );
  buffd1 U186 ( .I(hold_n), .Z(n131) );
  buffd1 U187 ( .I(hold_n), .Z(n130) );
  inv0d0 U188 ( .I(final_quotient[0]), .ZN(n147) );
  an12d1 U189 ( .A2(n77), .A1(first_cyc), .Z(part_rem_0[2]) );
  inv0d4 U190 ( .I(b_in[3]), .ZN(n181) );
  an12d1 U191 ( .A2(n32), .A1(first_cyc), .Z(part_rem_0[3]) );
  an12d1 U192 ( .A2(n26), .A1(first_cyc), .Z(part_rem_0[4]) );
  an12d1 U193 ( .A2(n23), .A1(first_cyc), .Z(part_rem_0[5]) );
  an12d1 U194 ( .A2(n29), .A1(first_cyc), .Z(part_rem_0[6]) );
  inv0d0 U195 ( .I(final_quotient[1]), .ZN(n150) );
  inv0d0 U196 ( .I(final_quotient[2]), .ZN(n153) );
  inv0d0 U197 ( .I(final_quotient[3]), .ZN(n156) );
  inv0d0 U198 ( .I(a_in_temp0[6]), .ZN(n158) );
  inv0d0 U199 ( .I(a_in_temp0[7]), .ZN(n155) );
  inv0d0 U200 ( .I(a_in_temp0[8]), .ZN(n152) );
  inv0d0 U201 ( .I(a_in_temp0[9]), .ZN(n149) );
  inv0d0 U202 ( .I(a_in_temp0[5]), .ZN(n161) );
  inv0d0 U203 ( .I(a_in_temp0[3]), .ZN(n166) );
  inv0d0 U204 ( .I(a_in_temp0[2]), .ZN(n169) );
  inv0d0 U205 ( .I(n94), .ZN(n175) );
  inv0d0 U206 ( .I(a_in_temp0[1]), .ZN(n172) );
  inv0d0 U207 ( .I(first_cyc), .ZN(n176) );
  inv0d0 U208 ( .I(U_COUNT_count[1]), .ZN(n141) );
  nr02d1 U209 ( .A1(start_q), .A2(n38), .ZN(nx_state) );
  inv0d0 U210 ( .I(final_quotient[9]), .ZN(n173) );
  inv0d0 U211 ( .I(final_quotient[8]), .ZN(n170) );
  inv0d0 U212 ( .I(final_quotient[17]), .ZN(n168) );
  inv0d0 U213 ( .I(final_quotient[7]), .ZN(n167) );
  inv0d0 U214 ( .I(final_quotient[16]), .ZN(n165) );
  inv0d0 U215 ( .I(final_quotient[6]), .ZN(n164) );
  inv0d0 U216 ( .I(final_quotient[15]), .ZN(n163) );
  inv0d0 U217 ( .I(final_quotient[5]), .ZN(n162) );
  inv0d0 U218 ( .I(final_quotient[14]), .ZN(n160) );
  inv0d0 U219 ( .I(final_quotient[4]), .ZN(n159) );
  inv0d0 U220 ( .I(final_quotient[13]), .ZN(n157) );
  inv0d0 U221 ( .I(final_quotient[12]), .ZN(n154) );
  inv0d0 U222 ( .I(final_quotient[11]), .ZN(n151) );
  inv0d0 U223 ( .I(final_quotient[10]), .ZN(n148) );
  inv0d0 U224 ( .I(final_quotient[19]), .ZN(n174) );
  inv0d0 U225 ( .I(final_quotient[18]), .ZN(n171) );
  inv0d0 U226 ( .I(n107), .ZN(n145) );
  inv0d4 U227 ( .I(n71), .ZN(n107) );
  inv0d0 U228 ( .I(n105), .ZN(n144) );
  oaim21d1 U229 ( .B1(n78), .B2(n35), .A(n209), .ZN(N36) );
  oaim21d1 U230 ( .B1(n78), .B2(n30), .A(n211), .ZN(N35) );
  oaim21d1 U231 ( .B1(n78), .B2(n24), .A(n212), .ZN(N34) );
  oaim21d1 U232 ( .B1(n78), .B2(n27), .A(n213), .ZN(N33) );
  oaim21d1 U233 ( .B1(n78), .B2(n33), .A(n214), .ZN(N32) );
  oaim21d1 U234 ( .B1(n78), .B2(n77), .A(n215), .ZN(N31) );
  mx02d0 U235 ( .I0(pr_8__6_), .I1(temp_part_rem_8__6_), .S(n60), .Z(pr_9__7_)
         );
  mx02d0 U236 ( .I0(pr_8__5_), .I1(temp_part_rem_8__5_), .S(n60), .Z(pr_9__6_)
         );
  mx02d0 U237 ( .I0(pr_8__4_), .I1(temp_part_rem_8__4_), .S(n60), .Z(pr_9__5_)
         );
  mx02d0 U238 ( .I0(pr_8__3_), .I1(temp_part_rem_8__3_), .S(n60), .Z(pr_9__4_)
         );
  mx02d0 U239 ( .I0(pr_7__6_), .I1(temp_part_rem_7__6_), .S(n105), .Z(pr_8__7_) );
  mx02d0 U240 ( .I0(pr_6__6_), .I1(temp_part_rem_6__6_), .S(n107), .Z(pr_7__7_) );
  mx02d0 U241 ( .I0(pr_6__3_), .I1(temp_part_rem_6__3_), .S(n107), .Z(pr_7__4_) );
  mx02d0 U242 ( .I0(pr_3__7_), .I1(temp_part_rem_3__7_), .S(n14), .Z(pr_4__8_)
         );
  mx02d0 U243 ( .I0(pr_3__6_), .I1(temp_part_rem_3__6_), .S(n124), .Z(pr_4__7_) );
  an02d0 U244 ( .A1(n112), .A2(U_COUNT_count_inc[2]), .Z(U_COUNT_next_count_2_) );
  an02d0 U245 ( .A1(n112), .A2(U_COUNT_count_inc[0]), .Z(
        U_COUNT_tercnt_cmp_bus_0_) );
  nd02d0 U246 ( .A1(n113), .A2(U_COUNT_count_inc[1]), .ZN(n137) );
  nr13d1 U247 ( .A1(U_COUNT_count_inc[0]), .A2(U_COUNT_count_inc[2]), .A3(n137), .ZN(U_COUNT_tercnt_d) );
  xr02d1 U248 ( .A1(U_COUNT_count[2]), .A2(n138), .Z(U_COUNT_count_inc[2]) );
  nr02d0 U249 ( .A1(n139), .A2(n141), .ZN(n138) );
  xr02d1 U250 ( .A1(n141), .A2(n139), .Z(U_COUNT_count_inc[1]) );
  nd02d0 U251 ( .A1(n136), .A2(U_COUNT_count[0]), .ZN(n139) );
  xr02d1 U252 ( .A1(n132), .A2(U_COUNT_count[0]), .Z(U_COUNT_count_inc[0]) );
  nr02d0 U253 ( .A1(nx_state), .A2(n173), .ZN(quotient[9]) );
  nr02d0 U254 ( .A1(nx_state), .A2(n170), .ZN(quotient[8]) );
  nr02d0 U255 ( .A1(nx_state), .A2(n167), .ZN(quotient[7]) );
  nr02d0 U256 ( .A1(nx_state), .A2(n164), .ZN(quotient[6]) );
  nr02d0 U257 ( .A1(nx_state), .A2(n162), .ZN(quotient[5]) );
  nr02d0 U258 ( .A1(nx_state), .A2(n159), .ZN(quotient[4]) );
  nr02d0 U259 ( .A1(nx_state), .A2(n174), .ZN(quotient[19]) );
  nr02d0 U260 ( .A1(nx_state), .A2(n171), .ZN(quotient[18]) );
  nr02d0 U261 ( .A1(nx_state), .A2(n168), .ZN(quotient[17]) );
  nr02d0 U262 ( .A1(nx_state), .A2(n165), .ZN(quotient[16]) );
  nr02d0 U263 ( .A1(nx_state), .A2(n163), .ZN(quotient[15]) );
  nr02d0 U264 ( .A1(nx_state), .A2(n160), .ZN(quotient[14]) );
  nr02d0 U265 ( .A1(nx_state), .A2(n157), .ZN(quotient[13]) );
  nr02d0 U266 ( .A1(nx_state), .A2(n154), .ZN(quotient[12]) );
  nr02d0 U267 ( .A1(nx_state), .A2(n151), .ZN(quotient[11]) );
  nr02d0 U268 ( .A1(nx_state), .A2(n148), .ZN(quotient[10]) );
  mx02d1 U269 ( .I0(pr_5__7_), .I1(temp_part_rem_5__7_), .S(n122), .Z(pr_6__8_) );
  mx02d1 U270 ( .I0(pr_5__5_), .I1(temp_part_rem_5__5_), .S(n122), .Z(pr_6__6_) );
  mx02d1 U271 ( .I0(pr_4__3_), .I1(temp_part_rem_4__3_), .S(n123), .Z(pr_5__4_) );
  mx02d1 U272 ( .I0(pr_1__7_), .I1(temp_part_rem_1__7_), .S(n125), .Z(pr_2__8_) );
  mx02d1 U273 ( .I0(part_rem_0[2]), .I1(temp_part_rem_0__3_), .S(n126), .Z(
        pr_1__4_) );
  mx02d1 U274 ( .I0(part_rem_0[1]), .I1(temp_part_rem_0__2_), .S(n126), .Z(
        pr_1__3_) );
  nr02d0 U275 ( .A1(first_cyc), .A2(n34), .ZN(part_rem_0[7]) );
  oai22d1 U276 ( .A1(n135), .A2(n147), .B1(n99), .B2(n184), .ZN(N66) );
  oai21d1 U277 ( .B1(n135), .B2(n148), .A(n185), .ZN(N65) );
  aoi22d1 U278 ( .A1(a[10]), .A2(n111), .B1(final_quotient[0]), .B2(n127), 
        .ZN(n185) );
  oai21d1 U279 ( .B1(n135), .B2(n149), .A(n186), .ZN(N64) );
  aoi22d1 U280 ( .A1(a[20]), .A2(n111), .B1(n127), .B2(final_quotient[10]), 
        .ZN(n186) );
  oai22d1 U281 ( .A1(n135), .A2(n150), .B1(n143), .B2(n184), .ZN(N63) );
  oai21d1 U282 ( .B1(n135), .B2(n151), .A(n187), .ZN(N62) );
  aoi22d1 U283 ( .A1(a[11]), .A2(n111), .B1(final_quotient[1]), .B2(n127), 
        .ZN(n187) );
  oai21d1 U284 ( .B1(n134), .B2(n152), .A(n188), .ZN(N61) );
  aoi22d1 U285 ( .A1(a[21]), .A2(n111), .B1(n127), .B2(final_quotient[11]), 
        .ZN(n188) );
  oai22d1 U286 ( .A1(n135), .A2(n153), .B1(n144), .B2(n184), .ZN(N60) );
  oai21d1 U287 ( .B1(n135), .B2(n154), .A(n189), .ZN(N59) );
  aoi22d1 U288 ( .A1(a[12]), .A2(n111), .B1(final_quotient[2]), .B2(n127), 
        .ZN(n189) );
  oai21d1 U289 ( .B1(n134), .B2(n155), .A(n190), .ZN(N58) );
  aoi22d1 U290 ( .A1(a[22]), .A2(n111), .B1(n127), .B2(final_quotient[12]), 
        .ZN(n190) );
  oai22d1 U291 ( .A1(n135), .A2(n156), .B1(n145), .B2(n184), .ZN(N57) );
  oai21d1 U292 ( .B1(n134), .B2(n157), .A(n191), .ZN(N56) );
  aoi22d1 U293 ( .A1(a[13]), .A2(n110), .B1(final_quotient[3]), .B2(n127), 
        .ZN(n191) );
  oai21d1 U294 ( .B1(n134), .B2(n158), .A(n192), .ZN(N55) );
  aoi22d1 U295 ( .A1(a[23]), .A2(n110), .B1(n127), .B2(final_quotient[13]), 
        .ZN(n192) );
  oai21d1 U296 ( .B1(n134), .B2(n159), .A(n193), .ZN(N54) );
  aoi22d1 U297 ( .A1(a[4]), .A2(n110), .B1(n127), .B2(n122), .ZN(n193) );
  oai21d1 U298 ( .B1(n134), .B2(n160), .A(n194), .ZN(N53) );
  aoi22d1 U299 ( .A1(a[14]), .A2(n110), .B1(n128), .B2(final_quotient[4]), 
        .ZN(n194) );
  oai21d1 U300 ( .B1(n134), .B2(n161), .A(n195), .ZN(N52) );
  aoi22d1 U301 ( .A1(a[24]), .A2(n110), .B1(n128), .B2(final_quotient[14]), 
        .ZN(n195) );
  oai21d1 U302 ( .B1(n134), .B2(n162), .A(n196), .ZN(N51) );
  aoi22d1 U303 ( .A1(a[5]), .A2(n110), .B1(n128), .B2(n123), .ZN(n196) );
  oai21d1 U304 ( .B1(n134), .B2(n163), .A(n197), .ZN(N50) );
  aoi22d1 U305 ( .A1(a[15]), .A2(n110), .B1(n128), .B2(final_quotient[5]), 
        .ZN(n197) );
  oai21d1 U306 ( .B1(n134), .B2(n81), .A(n198), .ZN(N49) );
  aoi22d1 U307 ( .A1(a[25]), .A2(n110), .B1(n128), .B2(final_quotient[15]), 
        .ZN(n198) );
  oai21d1 U308 ( .B1(n133), .B2(n164), .A(n199), .ZN(N48) );
  aoi22d1 U309 ( .A1(a[6]), .A2(n110), .B1(n128), .B2(n14), .ZN(n199) );
  oai21d1 U310 ( .B1(n133), .B2(n165), .A(n200), .ZN(N47) );
  aoi22d1 U311 ( .A1(a[16]), .A2(n109), .B1(n128), .B2(final_quotient[6]), 
        .ZN(n200) );
  oai21d1 U312 ( .B1(n133), .B2(n166), .A(n201), .ZN(N46) );
  aoi22d1 U313 ( .A1(a[26]), .A2(n109), .B1(n128), .B2(final_quotient[16]), 
        .ZN(n201) );
  oai21d1 U314 ( .B1(n133), .B2(n167), .A(n202), .ZN(N45) );
  aoi22d1 U315 ( .A1(a[7]), .A2(n109), .B1(n128), .B2(n87), .ZN(n202) );
  oai21d1 U316 ( .B1(n133), .B2(n168), .A(n203), .ZN(N44) );
  aoi22d1 U317 ( .A1(a[17]), .A2(n109), .B1(n129), .B2(final_quotient[7]), 
        .ZN(n203) );
  oai21d1 U318 ( .B1(n133), .B2(n169), .A(n204), .ZN(N43) );
  aoi22d1 U319 ( .A1(a[27]), .A2(n109), .B1(n129), .B2(final_quotient[17]), 
        .ZN(n204) );
  oai21d1 U320 ( .B1(n133), .B2(n170), .A(n205), .ZN(N42) );
  aoi22d1 U321 ( .A1(a[8]), .A2(n109), .B1(n129), .B2(n125), .ZN(n205) );
  oai21d1 U322 ( .B1(n133), .B2(n171), .A(n206), .ZN(N41) );
  aoi22d1 U323 ( .A1(a[18]), .A2(n109), .B1(n129), .B2(final_quotient[8]), 
        .ZN(n206) );
  oai22d1 U324 ( .A1(n135), .A2(n172), .B1(n171), .B2(n184), .ZN(N40) );
  oai21d1 U325 ( .B1(n133), .B2(n173), .A(n207), .ZN(N39) );
  aoi22d1 U326 ( .A1(a[9]), .A2(n109), .B1(n127), .B2(n126), .ZN(n207) );
  oai21d1 U327 ( .B1(n132), .B2(n174), .A(n208), .ZN(N38) );
  aoi22d1 U328 ( .A1(a[19]), .A2(n109), .B1(n128), .B2(final_quotient[9]), 
        .ZN(n208) );
  oai22d1 U329 ( .A1(n135), .A2(n175), .B1(n174), .B2(n184), .ZN(N37) );
  nd02d0 U330 ( .A1(n136), .A2(n113), .ZN(n184) );
  aoi22d1 U331 ( .A1(n40), .A2(n51), .B1(n79), .B2(temp_part_rem_9__2_), .ZN(
        n215) );
  aoi22d1 U332 ( .A1(n80), .A2(a_in_temp0[9]), .B1(n79), .B2(
        temp_part_rem_9__0_), .ZN(n216) );
  oai21d1 U333 ( .B1(n133), .B2(n176), .A(n112), .ZN(N28) );
  nd12d0 U334 ( .A1(load_tc), .A2(n115), .ZN(hold_n) );
endmodule


module std_calc_1_DW01_add_14_DW01_add_16 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [24:2] carry;

  ad01d0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ad01d0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ad01d0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ad01d0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ad01d0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ad01d0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ad01d0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ad01d0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ad01d0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ad01d0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ad01d0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ad01d0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ad01d0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ad01d0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n7), .CO(carry[2]), .S(SUM[1]) );
  nd02d1 U1 ( .A1(n6), .A2(A[30]), .ZN(n8) );
  xn02d1 U2 ( .A1(A[31]), .A2(n8), .ZN(SUM[31]) );
  an02d1 U3 ( .A1(carry[24]), .A2(A[24]), .Z(n1) );
  an02d1 U4 ( .A1(n1), .A2(A[25]), .Z(n2) );
  an02d1 U5 ( .A1(n2), .A2(A[26]), .Z(n3) );
  an02d1 U6 ( .A1(n3), .A2(A[27]), .Z(n4) );
  an02d1 U7 ( .A1(n4), .A2(A[28]), .Z(n5) );
  an02d1 U8 ( .A1(n5), .A2(A[29]), .Z(n6) );
  an02d1 U9 ( .A1(B[0]), .A2(A[0]), .Z(n7) );
  xr02d1 U10 ( .A1(A[30]), .A2(n6), .Z(SUM[30]) );
  xr02d1 U11 ( .A1(A[29]), .A2(n5), .Z(SUM[29]) );
  xr02d1 U12 ( .A1(A[28]), .A2(n4), .Z(SUM[28]) );
  xr02d1 U13 ( .A1(A[27]), .A2(n3), .Z(SUM[27]) );
  xr02d1 U14 ( .A1(A[26]), .A2(n2), .Z(SUM[26]) );
  xr02d1 U15 ( .A1(A[25]), .A2(n1), .Z(SUM[25]) );
  xr02d1 U16 ( .A1(A[24]), .A2(carry[24]), .Z(SUM[24]) );
  xr02d1 U17 ( .A1(A[0]), .A2(B[0]), .Z(SUM[0]) );
endmodule


module std_calc_1_DW02_tree_0 ( INPUT, OUT0, OUT1 );
  input [167:0] INPUT;
  output [23:0] OUT0;
  output [23:0] OUT1;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128;
  assign OUT1[0] = INPUT[0];
  assign OUT1[22] = INPUT[142];
  assign OUT0[0] = INPUT[144];
  assign OUT0[1] = INPUT[145];
  assign OUT1[23] = 1'b0;
  assign OUT0[23] = 1'b0;

  ad01d1 U1 ( .A(INPUT[141]), .B(INPUT[117]), .CI(n1), .CO(OUT0[22]), .S(
        OUT0[21]) );
  ad01d1 U2 ( .A(n2), .B(n5), .CI(n3), .CO(OUT1[21]), .S(OUT0[20]) );
  ad01d1 U3 ( .A(INPUT[140]), .B(INPUT[92]), .CI(INPUT[116]), .CO(n1), .S(n2)
         );
  ad01d1 U4 ( .A(n4), .B(n9), .CI(n7), .CO(OUT1[20]), .S(OUT1[19]) );
  ad01d1 U5 ( .A(n11), .B(INPUT[91]), .CI(n6), .CO(n3), .S(n4) );
  ad01d1 U6 ( .A(INPUT[139]), .B(INPUT[67]), .CI(INPUT[115]), .CO(n5), .S(n6)
         );
  ad01d1 U7 ( .A(n13), .B(n10), .CI(n8), .CO(OUT0[19]), .S(OUT1[18]) );
  ad01d1 U8 ( .A(n12), .B(n17), .CI(n15), .CO(n7), .S(n8) );
  ad01d1 U9 ( .A(INPUT[90]), .B(INPUT[66]), .CI(n19), .CO(n9), .S(n10) );
  ad01d1 U10 ( .A(INPUT[138]), .B(INPUT[42]), .CI(INPUT[114]), .CO(n11), .S(
        n12) );
  ad01d1 U11 ( .A(n21), .B(n16), .CI(n14), .CO(OUT0[18]), .S(OUT1[17]) );
  ad01d1 U12 ( .A(n20), .B(n18), .CI(n23), .CO(n13), .S(n14) );
  ad01d1 U13 ( .A(n27), .B(INPUT[41]), .CI(n25), .CO(n15), .S(n16) );
  ad01d1 U14 ( .A(INPUT[89]), .B(INPUT[17]), .CI(INPUT[65]), .CO(n17), .S(n18)
         );
  ad01d1 U15 ( .A(INPUT[161]), .B(INPUT[137]), .CI(INPUT[113]), .CO(n19), .S(
        n20) );
  ad01d1 U16 ( .A(n29), .B(n24), .CI(n22), .CO(OUT0[17]), .S(OUT1[16]) );
  ad01d1 U17 ( .A(n28), .B(n26), .CI(n31), .CO(n21), .S(n22) );
  ad01d1 U18 ( .A(n35), .B(INPUT[40]), .CI(n33), .CO(n23), .S(n24) );
  ad01d1 U19 ( .A(INPUT[88]), .B(INPUT[16]), .CI(INPUT[64]), .CO(n25), .S(n26)
         );
  ad01d1 U20 ( .A(INPUT[160]), .B(INPUT[136]), .CI(INPUT[112]), .CO(n27), .S(
        n28) );
  ad01d1 U21 ( .A(n37), .B(n32), .CI(n30), .CO(OUT0[16]), .S(OUT1[15]) );
  ad01d1 U22 ( .A(n36), .B(n34), .CI(n39), .CO(n29), .S(n30) );
  ad01d1 U23 ( .A(n43), .B(INPUT[39]), .CI(n41), .CO(n31), .S(n32) );
  ad01d1 U24 ( .A(INPUT[87]), .B(INPUT[15]), .CI(INPUT[63]), .CO(n33), .S(n34)
         );
  ad01d1 U25 ( .A(INPUT[159]), .B(INPUT[135]), .CI(INPUT[111]), .CO(n35), .S(
        n36) );
  ad01d1 U26 ( .A(n45), .B(n40), .CI(n38), .CO(OUT0[15]), .S(OUT1[14]) );
  ad01d1 U27 ( .A(n44), .B(n42), .CI(n47), .CO(n37), .S(n38) );
  ad01d1 U28 ( .A(n51), .B(INPUT[38]), .CI(n49), .CO(n39), .S(n40) );
  ad01d1 U29 ( .A(INPUT[86]), .B(INPUT[14]), .CI(INPUT[62]), .CO(n41), .S(n42)
         );
  ad01d1 U30 ( .A(INPUT[158]), .B(INPUT[134]), .CI(INPUT[110]), .CO(n43), .S(
        n44) );
  ad01d1 U31 ( .A(n53), .B(n48), .CI(n46), .CO(OUT0[14]), .S(OUT1[13]) );
  ad01d1 U32 ( .A(n52), .B(n50), .CI(n55), .CO(n45), .S(n46) );
  ad01d1 U33 ( .A(n59), .B(INPUT[37]), .CI(n57), .CO(n47), .S(n48) );
  ad01d1 U34 ( .A(INPUT[85]), .B(INPUT[13]), .CI(INPUT[61]), .CO(n49), .S(n50)
         );
  ad01d1 U35 ( .A(INPUT[157]), .B(INPUT[133]), .CI(INPUT[109]), .CO(n51), .S(
        n52) );
  ad01d1 U36 ( .A(n61), .B(n56), .CI(n54), .CO(OUT0[13]), .S(OUT1[12]) );
  ad01d1 U37 ( .A(n60), .B(n58), .CI(n63), .CO(n53), .S(n54) );
  ad01d1 U38 ( .A(n67), .B(INPUT[36]), .CI(n65), .CO(n55), .S(n56) );
  ad01d1 U39 ( .A(INPUT[84]), .B(INPUT[12]), .CI(INPUT[60]), .CO(n57), .S(n58)
         );
  ad01d1 U40 ( .A(INPUT[156]), .B(INPUT[132]), .CI(INPUT[108]), .CO(n59), .S(
        n60) );
  ad01d1 U41 ( .A(n69), .B(n64), .CI(n62), .CO(OUT0[12]), .S(OUT1[11]) );
  ad01d1 U42 ( .A(n68), .B(n66), .CI(n71), .CO(n61), .S(n62) );
  ad01d1 U43 ( .A(n75), .B(INPUT[35]), .CI(n73), .CO(n63), .S(n64) );
  ad01d1 U44 ( .A(INPUT[83]), .B(INPUT[11]), .CI(INPUT[59]), .CO(n65), .S(n66)
         );
  ad01d1 U45 ( .A(INPUT[155]), .B(INPUT[131]), .CI(INPUT[107]), .CO(n67), .S(
        n68) );
  ad01d1 U46 ( .A(n77), .B(n72), .CI(n70), .CO(OUT0[11]), .S(OUT1[10]) );
  ad01d1 U47 ( .A(n76), .B(n74), .CI(n79), .CO(n69), .S(n70) );
  ad01d1 U48 ( .A(n83), .B(INPUT[34]), .CI(n81), .CO(n71), .S(n72) );
  ad01d1 U49 ( .A(INPUT[82]), .B(INPUT[10]), .CI(INPUT[58]), .CO(n73), .S(n74)
         );
  ad01d1 U50 ( .A(INPUT[154]), .B(INPUT[130]), .CI(INPUT[106]), .CO(n75), .S(
        n76) );
  ad01d1 U51 ( .A(n85), .B(n80), .CI(n78), .CO(OUT0[10]), .S(OUT1[9]) );
  ad01d1 U52 ( .A(n84), .B(n82), .CI(n87), .CO(n77), .S(n78) );
  ad01d1 U53 ( .A(n91), .B(INPUT[33]), .CI(n89), .CO(n79), .S(n80) );
  ad01d1 U54 ( .A(INPUT[81]), .B(INPUT[9]), .CI(INPUT[57]), .CO(n81), .S(n82)
         );
  ad01d1 U55 ( .A(INPUT[153]), .B(INPUT[129]), .CI(INPUT[105]), .CO(n83), .S(
        n84) );
  ad01d1 U56 ( .A(n93), .B(n88), .CI(n86), .CO(OUT0[9]), .S(OUT1[8]) );
  ad01d1 U57 ( .A(n92), .B(n90), .CI(n95), .CO(n85), .S(n86) );
  ad01d1 U58 ( .A(n99), .B(INPUT[32]), .CI(n97), .CO(n87), .S(n88) );
  ad01d1 U59 ( .A(INPUT[80]), .B(INPUT[8]), .CI(INPUT[56]), .CO(n89), .S(n90)
         );
  ad01d1 U60 ( .A(INPUT[152]), .B(INPUT[128]), .CI(INPUT[104]), .CO(n91), .S(
        n92) );
  ad01d1 U61 ( .A(n101), .B(n96), .CI(n94), .CO(OUT0[8]), .S(OUT1[7]) );
  ad01d1 U62 ( .A(n100), .B(n98), .CI(n103), .CO(n93), .S(n94) );
  ad01d1 U63 ( .A(n107), .B(INPUT[31]), .CI(n105), .CO(n95), .S(n96) );
  ad01d1 U64 ( .A(INPUT[79]), .B(INPUT[7]), .CI(INPUT[55]), .CO(n97), .S(n98)
         );
  ad01d1 U65 ( .A(INPUT[151]), .B(INPUT[127]), .CI(INPUT[103]), .CO(n99), .S(
        n100) );
  ad01d1 U66 ( .A(n104), .B(n109), .CI(n102), .CO(OUT0[7]), .S(OUT1[6]) );
  ad01d1 U67 ( .A(n108), .B(n106), .CI(n111), .CO(n101), .S(n102) );
  ad01d1 U68 ( .A(n115), .B(INPUT[30]), .CI(n113), .CO(n103), .S(n104) );
  ad01d1 U69 ( .A(INPUT[78]), .B(INPUT[6]), .CI(INPUT[54]), .CO(n105), .S(n106) );
  ad01d1 U70 ( .A(INPUT[150]), .B(INPUT[126]), .CI(INPUT[102]), .CO(n107), .S(
        n108) );
  ad01d1 U71 ( .A(n117), .B(n112), .CI(n110), .CO(OUT0[6]), .S(OUT1[5]) );
  ad01d1 U72 ( .A(n119), .B(n116), .CI(n114), .CO(n109), .S(n110) );
  ad01d1 U73 ( .A(INPUT[77]), .B(INPUT[53]), .CI(n121), .CO(n111), .S(n112) );
  ad01d1 U74 ( .A(INPUT[101]), .B(INPUT[5]), .CI(INPUT[29]), .CO(n113), .S(
        n114) );
  ah01d1 U75 ( .A(INPUT[149]), .B(INPUT[125]), .CO(n115), .S(n116) );
  ad01d1 U76 ( .A(n120), .B(n123), .CI(n118), .CO(OUT0[5]), .S(OUT1[4]) );
  ad01d1 U77 ( .A(n125), .B(INPUT[28]), .CI(n122), .CO(n117), .S(n118) );
  ad01d1 U78 ( .A(INPUT[76]), .B(INPUT[4]), .CI(INPUT[52]), .CO(n119), .S(n120) );
  ah01d1 U79 ( .A(INPUT[148]), .B(INPUT[100]), .CO(n121), .S(n122) );
  ad01d1 U80 ( .A(n126), .B(n127), .CI(n124), .CO(OUT0[4]), .S(OUT1[3]) );
  ad01d1 U81 ( .A(INPUT[51]), .B(INPUT[3]), .CI(INPUT[27]), .CO(n123), .S(n124) );
  ah01d1 U82 ( .A(INPUT[147]), .B(INPUT[75]), .CO(n125), .S(n126) );
  ad01d1 U83 ( .A(INPUT[26]), .B(INPUT[2]), .CI(n128), .CO(OUT0[3]), .S(
        OUT1[2]) );
  ah01d1 U84 ( .A(INPUT[146]), .B(INPUT[50]), .CO(n127), .S(OUT0[2]) );
  ah01d1 U85 ( .A(INPUT[25]), .B(INPUT[1]), .CO(n128), .S(OUT1[1]) );
endmodule


module std_calc_1_DW01_add_15_DW01_add_17 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [23:2] carry;

  ad01d0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .S(SUM[23]) );
  ad01d0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ad01d0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ad01d0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ad01d0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ad01d0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ad01d0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ad01d0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ad01d0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ad01d0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ad01d0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ad01d0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ad01d0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ad01d0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  an02d1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  xr02d1 U2 ( .A1(A[0]), .A2(B[0]), .Z(SUM[0]) );
endmodule


module std_calc_1_DW_mult_seq_0 ( clk, rst_n, hold, start, a, b, complete, 
        product );
  input [17:0] a;
  input [17:0] b;
  output [35:0] product;
  input clk, rst_n, hold, start;
  output complete;
  wire   n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, count_ov_n, first_cyc, shf_in_5__2_, shf_in_4__2_,
         shf_in_3__2_, shf_in_2__2_, shf_in_1__2_, shf_in_0__2_, pp_5__22_,
         pp_5__21_, pp_5__20_, pp_5__19_, pp_5__18_, pp_5__17_, pp_5__16_,
         pp_5__15_, pp_5__14_, pp_5__13_, pp_5__12_, pp_5__11_, pp_5__10_,
         pp_5__9_, pp_5__8_, pp_5__7_, pp_5__6_, pp_5__5_, pp_4__21_,
         pp_4__20_, pp_4__19_, pp_4__18_, pp_4__17_, pp_4__16_, pp_4__15_,
         pp_4__14_, pp_4__13_, pp_4__12_, pp_4__11_, pp_4__10_, pp_4__9_,
         pp_4__8_, pp_4__7_, pp_4__6_, pp_4__5_, pp_4__4_, pp_3__20_,
         pp_3__19_, pp_3__18_, pp_3__17_, pp_3__16_, pp_3__15_, pp_3__14_,
         pp_3__13_, pp_3__12_, pp_3__11_, pp_3__10_, pp_3__9_, pp_3__8_,
         pp_3__7_, pp_3__6_, pp_3__5_, pp_3__4_, pp_3__3_, pp_2__19_,
         pp_2__18_, pp_2__17_, pp_2__16_, pp_2__15_, pp_2__14_, pp_2__13_,
         pp_2__12_, pp_2__11_, pp_2__10_, pp_2__9_, pp_2__8_, pp_2__7_,
         pp_2__6_, pp_2__5_, pp_2__4_, pp_2__3_, pp_2__2_, pp_1__18_,
         pp_1__17_, pp_1__16_, pp_1__15_, pp_1__14_, pp_1__13_, pp_1__12_,
         pp_1__11_, pp_1__10_, pp_1__9_, pp_1__8_, pp_1__7_, pp_1__6_,
         pp_1__5_, pp_1__4_, pp_1__3_, pp_1__2_, pp_1__1_, pp_0__17_,
         pp_0__16_, pp_0__15_, pp_0__14_, pp_0__13_, pp_0__12_, pp_0__11_,
         pp_0__10_, pp_0__9_, pp_0__8_, pp_0__7_, pp_0__6_, pp_0__5_, pp_0__4_,
         pp_0__3_, pp_0__2_, pp_0__1_, pp_0__0_, N8, N9, N10, N11, N12, N13,
         N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27,
         N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41,
         N42, N43, N44, U_COUNT_tercnt_d, U_COUNT_tercnt_cmp_bus_0_,
         U_COUNT_next_count_2_, U_COUNT_load_n, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106;
  wire   [17:0] mac_reg_temp1;
  wire   [17:0] c_in;
  wire   [17:0] b_in;
  wire   [23:0] temp_sum;
  wire   [23:0] temp_car;
  wire   [2:0] U_COUNT_count_inc;
  wire   [2:0] U_COUNT_count;

  std_calc_1_DW02_tree_0 U_TREE ( .INPUT({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        c_in, 1'b0, pp_5__22_, pp_5__21_, pp_5__20_, pp_5__19_, pp_5__18_, 
        pp_5__17_, pp_5__16_, pp_5__15_, pp_5__14_, pp_5__13_, pp_5__12_, 
        pp_5__11_, pp_5__10_, pp_5__9_, pp_5__8_, pp_5__7_, pp_5__6_, pp_5__5_, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, pp_4__21_, pp_4__20_, 
        pp_4__19_, pp_4__18_, pp_4__17_, pp_4__16_, pp_4__15_, pp_4__14_, 
        pp_4__13_, pp_4__12_, pp_4__11_, pp_4__10_, pp_4__9_, pp_4__8_, 
        pp_4__7_, pp_4__6_, pp_4__5_, pp_4__4_, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, pp_3__20_, pp_3__19_, pp_3__18_, pp_3__17_, pp_3__16_, 
        pp_3__15_, pp_3__14_, pp_3__13_, pp_3__12_, pp_3__11_, pp_3__10_, 
        pp_3__9_, pp_3__8_, pp_3__7_, pp_3__6_, pp_3__5_, pp_3__4_, pp_3__3_, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, pp_2__19_, pp_2__18_, 
        pp_2__17_, pp_2__16_, pp_2__15_, pp_2__14_, pp_2__13_, pp_2__12_, 
        pp_2__11_, pp_2__10_, pp_2__9_, pp_2__8_, pp_2__7_, pp_2__6_, pp_2__5_, 
        pp_2__4_, pp_2__3_, pp_2__2_, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        pp_1__18_, pp_1__17_, pp_1__16_, pp_1__15_, pp_1__14_, pp_1__13_, 
        pp_1__12_, pp_1__11_, pp_1__10_, pp_1__9_, pp_1__8_, pp_1__7_, 
        pp_1__6_, pp_1__5_, pp_1__4_, pp_1__3_, pp_1__2_, pp_1__1_, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, pp_0__17_, pp_0__16_, pp_0__15_, 
        pp_0__14_, pp_0__13_, pp_0__12_, pp_0__11_, pp_0__10_, pp_0__9_, 
        pp_0__8_, pp_0__7_, pp_0__6_, pp_0__5_, pp_0__4_, pp_0__3_, pp_0__2_, 
        pp_0__1_, pp_0__0_}), .OUT0(temp_sum), .OUT1(temp_car) );
  std_calc_1_DW01_add_15_DW01_add_17 U_ADD ( .A(temp_sum), .B(temp_car), .CI(
        1'b0), .SUM({mac_reg_temp1, shf_in_5__2_, shf_in_4__2_, shf_in_3__2_, 
        shf_in_2__2_, shf_in_1__2_, shf_in_0__2_}) );
  dfcrq1 shf_reg_reg_5__2_ ( .D(N44), .CP(clk), .CDN(n7), .Q(product[17]) );
  dfcrq1 shf_reg_reg_5__1_ ( .D(N43), .CP(clk), .CDN(n8), .Q(n108) );
  dfcrq1 shf_reg_reg_5__0_ ( .D(N42), .CP(clk), .CDN(n7), .Q(n114) );
  dfcrq1 shf_reg_reg_4__2_ ( .D(N41), .CP(clk), .CDN(n7), .Q(product[16]) );
  dfcrq1 shf_reg_reg_4__1_ ( .D(N40), .CP(clk), .CDN(n7), .Q(n109) );
  dfcrq1 shf_reg_reg_4__0_ ( .D(N39), .CP(clk), .CDN(n7), .Q(n115) );
  dfcrq1 shf_reg_reg_3__2_ ( .D(N38), .CP(clk), .CDN(n7), .Q(product[15]) );
  dfcrq1 shf_reg_reg_3__1_ ( .D(N37), .CP(clk), .CDN(n8), .Q(n110) );
  dfcrq1 shf_reg_reg_3__0_ ( .D(N36), .CP(clk), .CDN(n8), .Q(n116) );
  dfcrq1 shf_reg_reg_2__2_ ( .D(N35), .CP(clk), .CDN(n8), .Q(product[14]) );
  dfcrq1 shf_reg_reg_2__1_ ( .D(N34), .CP(clk), .CDN(n8), .Q(n111) );
  dfcrq1 shf_reg_reg_2__0_ ( .D(N33), .CP(clk), .CDN(n8), .Q(n117) );
  dfcrq1 shf_reg_reg_1__2_ ( .D(N32), .CP(clk), .CDN(n8), .Q(product[13]) );
  dfcrq1 shf_reg_reg_1__1_ ( .D(N31), .CP(clk), .CDN(n9), .Q(n112) );
  dfcrq1 shf_reg_reg_1__0_ ( .D(N30), .CP(clk), .CDN(n8), .Q(n118) );
  dfcrq1 shf_reg_reg_0__2_ ( .D(N29), .CP(clk), .CDN(n8), .Q(product[12]) );
  dfcrq1 shf_reg_reg_0__1_ ( .D(N28), .CP(clk), .CDN(n8), .Q(n113) );
  dfcrq1 shf_reg_reg_0__0_ ( .D(N27), .CP(clk), .CDN(n9), .Q(n119) );
  dfcrq1 mac_reg_reg_17_ ( .D(N26), .CP(clk), .CDN(n9), .Q(product[35]) );
  dfcrq1 mac_reg_reg_16_ ( .D(N25), .CP(clk), .CDN(n9), .Q(product[34]) );
  dfcrq1 mac_reg_reg_15_ ( .D(N24), .CP(clk), .CDN(n9), .Q(product[33]) );
  dfcrq1 mac_reg_reg_14_ ( .D(N23), .CP(clk), .CDN(n9), .Q(product[32]) );
  dfcrq1 mac_reg_reg_13_ ( .D(N22), .CP(clk), .CDN(n9), .Q(product[31]) );
  dfcrq1 mac_reg_reg_12_ ( .D(N21), .CP(clk), .CDN(n9), .Q(product[30]) );
  dfcrq1 mac_reg_reg_11_ ( .D(N20), .CP(clk), .CDN(n9), .Q(product[29]) );
  dfcrq1 mac_reg_reg_10_ ( .D(N19), .CP(clk), .CDN(n10), .Q(product[28]) );
  dfcrq1 mac_reg_reg_9_ ( .D(N18), .CP(clk), .CDN(n10), .Q(product[27]) );
  dfcrq1 mac_reg_reg_8_ ( .D(N17), .CP(clk), .CDN(n10), .Q(product[26]) );
  dfcrq1 mac_reg_reg_7_ ( .D(N16), .CP(clk), .CDN(n10), .Q(product[25]) );
  dfcrq1 mac_reg_reg_6_ ( .D(N15), .CP(clk), .CDN(n10), .Q(product[24]) );
  dfcrq1 mac_reg_reg_5_ ( .D(N14), .CP(clk), .CDN(n10), .Q(product[23]) );
  dfcrq1 mac_reg_reg_4_ ( .D(N13), .CP(clk), .CDN(n10), .Q(product[22]) );
  dfcrq1 mac_reg_reg_3_ ( .D(N12), .CP(clk), .CDN(n10), .Q(product[21]) );
  dfcrq1 mac_reg_reg_2_ ( .D(N11), .CP(clk), .CDN(n10), .Q(product[20]) );
  dfcrq1 mac_reg_reg_1_ ( .D(N10), .CP(clk), .CDN(n10), .Q(product[19]) );
  dfcrq1 mac_reg_reg_0_ ( .D(N9), .CP(clk), .CDN(n11), .Q(product[18]) );
  decrq1 b_reg_reg_17_ ( .D(b[17]), .ENN(n22), .CP(clk), .CDN(n11), .Q(
        b_in[17]) );
  decrq1 b_reg_reg_16_ ( .D(b[16]), .ENN(n22), .CP(clk), .CDN(n11), .Q(
        b_in[16]) );
  decrq1 b_reg_reg_15_ ( .D(b[15]), .ENN(n22), .CP(clk), .CDN(n11), .Q(
        b_in[15]) );
  decrq1 b_reg_reg_14_ ( .D(b[14]), .ENN(n22), .CP(clk), .CDN(n11), .Q(
        b_in[14]) );
  decrq1 b_reg_reg_13_ ( .D(b[13]), .ENN(n23), .CP(clk), .CDN(n11), .Q(
        b_in[13]) );
  decrq1 b_reg_reg_12_ ( .D(b[12]), .ENN(n23), .CP(clk), .CDN(n11), .Q(
        b_in[12]) );
  decrq1 b_reg_reg_11_ ( .D(b[11]), .ENN(n23), .CP(clk), .CDN(n11), .Q(
        b_in[11]) );
  decrq1 b_reg_reg_10_ ( .D(b[10]), .ENN(n23), .CP(clk), .CDN(n11), .Q(
        b_in[10]) );
  decrq1 b_reg_reg_9_ ( .D(b[9]), .ENN(n23), .CP(clk), .CDN(n11), .Q(b_in[9])
         );
  decrq1 b_reg_reg_8_ ( .D(b[8]), .ENN(n23), .CP(clk), .CDN(n11), .Q(b_in[8])
         );
  decrq1 b_reg_reg_7_ ( .D(b[7]), .ENN(n23), .CP(clk), .CDN(n12), .Q(b_in[7])
         );
  decrq1 b_reg_reg_6_ ( .D(b[6]), .ENN(n23), .CP(clk), .CDN(n12), .Q(b_in[6])
         );
  decrq1 b_reg_reg_5_ ( .D(b[5]), .ENN(n22), .CP(clk), .CDN(n12), .Q(b_in[5])
         );
  decrq1 b_reg_reg_4_ ( .D(b[4]), .ENN(n23), .CP(clk), .CDN(n12), .Q(b_in[4])
         );
  decrq1 b_reg_reg_3_ ( .D(b[3]), .ENN(n23), .CP(clk), .CDN(n12), .Q(b_in[3])
         );
  decrq1 b_reg_reg_2_ ( .D(b[2]), .ENN(n24), .CP(clk), .CDN(n12), .Q(b_in[2])
         );
  decrq1 b_reg_reg_1_ ( .D(b[1]), .ENN(n24), .CP(clk), .CDN(n12), .Q(b_in[1])
         );
  decrq1 b_reg_reg_0_ ( .D(b[0]), .ENN(n24), .CP(clk), .CDN(n12), .Q(b_in[0])
         );
  dfcrn1 U_COUNT_U2_1 ( .D(U_COUNT_tercnt_d), .CP(clk), .CDN(n7), .QN(
        count_ov_n) );
  dfcrq1 U_COUNT_U1_3_2 ( .D(U_COUNT_next_count_2_), .CP(clk), .CDN(n9), .Q(
        U_COUNT_count[2]) );
  dfcrq1 U_COUNT_U1_3_1 ( .D(n31), .CP(clk), .CDN(n7), .Q(U_COUNT_count[1]) );
  dfcrq1 U_COUNT_U1_3_0 ( .D(U_COUNT_tercnt_cmp_bus_0_), .CP(clk), .CDN(n7), 
        .Q(U_COUNT_count[0]) );
  dfcrq1 start_reg_reg ( .D(N8), .CP(clk), .CDN(n7), .Q(first_cyc) );
  buffd1 U4 ( .I(n6), .Z(n11) );
  buffd1 U5 ( .I(n5), .Z(n7) );
  buffd1 U6 ( .I(n6), .Z(n10) );
  buffd1 U7 ( .I(n5), .Z(n9) );
  buffd1 U8 ( .I(n5), .Z(n8) );
  buffd1 U9 ( .I(n6), .Z(n12) );
  buffd1 U10 ( .I(n33), .Z(n25) );
  buffd1 U11 ( .I(n33), .Z(n26) );
  buffd1 U12 ( .I(n33), .Z(n27) );
  buffd1 U13 ( .I(rst_n), .Z(n6) );
  buffd1 U14 ( .I(rst_n), .Z(n5) );
  inv0d0 U15 ( .I(n101), .ZN(n33) );
  nd02d1 U16 ( .A1(n15), .A2(n24), .ZN(n101) );
  inv0d0 U17 ( .I(n28), .ZN(n31) );
  buffd1 U18 ( .I(U_COUNT_load_n), .Z(n24) );
  buffd1 U19 ( .I(U_COUNT_load_n), .Z(n21) );
  buffd1 U20 ( .I(U_COUNT_load_n), .Z(n22) );
  buffd1 U21 ( .I(U_COUNT_load_n), .Z(n23) );
  inv0d0 U22 ( .I(n19), .ZN(n20) );
  inv0d0 U23 ( .I(n107), .ZN(n19) );
  inv0d0 U24 ( .I(product[19]), .ZN(n68) );
  inv0d1 U25 ( .I(n119), .ZN(n51) );
  inv0d1 U26 ( .I(n118), .ZN(n48) );
  inv0d1 U27 ( .I(n117), .ZN(n45) );
  inv0d0 U28 ( .I(b_in[1]), .ZN(n86) );
  inv0d0 U29 ( .I(b_in[0]), .ZN(n87) );
  inv0d0 U30 ( .I(b_in[2]), .ZN(n85) );
  inv0d0 U31 ( .I(b_in[3]), .ZN(n84) );
  inv0d0 U32 ( .I(product[22]), .ZN(n65) );
  inv0d1 U33 ( .I(n115), .ZN(n39) );
  inv0d1 U34 ( .I(n116), .ZN(n42) );
  inv0d0 U35 ( .I(product[21]), .ZN(n66) );
  inv0d0 U36 ( .I(product[18]), .ZN(n69) );
  inv0d0 U37 ( .I(product[20]), .ZN(n67) );
  inv0d0 U38 ( .I(b_in[5]), .ZN(n82) );
  inv0d0 U39 ( .I(b_in[4]), .ZN(n83) );
  inv0d1 U40 ( .I(n114), .ZN(n36) );
  inv0d0 U41 ( .I(product[23]), .ZN(n64) );
  inv0d0 U42 ( .I(product[24]), .ZN(n63) );
  inv0d0 U43 ( .I(b_in[6]), .ZN(n81) );
  inv0d0 U44 ( .I(product[25]), .ZN(n62) );
  inv0d0 U45 ( .I(b_in[7]), .ZN(n80) );
  inv0d0 U46 ( .I(product[26]), .ZN(n61) );
  inv0d0 U47 ( .I(b_in[8]), .ZN(n79) );
  inv0d0 U48 ( .I(product[27]), .ZN(n60) );
  inv0d0 U49 ( .I(b_in[9]), .ZN(n78) );
  inv0d0 U50 ( .I(product[28]), .ZN(n59) );
  inv0d0 U51 ( .I(b_in[10]), .ZN(n77) );
  inv0d0 U52 ( .I(product[29]), .ZN(n58) );
  inv0d0 U53 ( .I(b_in[11]), .ZN(n76) );
  inv0d0 U54 ( .I(product[30]), .ZN(n57) );
  inv0d0 U55 ( .I(b_in[12]), .ZN(n75) );
  inv0d0 U56 ( .I(product[31]), .ZN(n56) );
  inv0d0 U57 ( .I(b_in[13]), .ZN(n74) );
  inv0d0 U58 ( .I(product[32]), .ZN(n55) );
  inv0d0 U59 ( .I(b_in[14]), .ZN(n73) );
  inv0d0 U60 ( .I(product[33]), .ZN(n54) );
  inv0d0 U61 ( .I(b_in[15]), .ZN(n72) );
  inv0d0 U62 ( .I(product[34]), .ZN(n53) );
  inv0d0 U63 ( .I(b_in[16]), .ZN(n71) );
  inv0d0 U64 ( .I(product[35]), .ZN(n52) );
  inv0d0 U65 ( .I(b_in[17]), .ZN(n70) );
  nr02d1 U66 ( .A1(start), .A2(count_ov_n), .ZN(n107) );
  inv0d0 U67 ( .I(start), .ZN(U_COUNT_load_n) );
  inv0d0 U68 ( .I(a[0]), .ZN(n99) );
  inv0d0 U69 ( .I(a[6]), .ZN(n93) );
  inv0d0 U70 ( .I(a[1]), .ZN(n98) );
  inv0d0 U71 ( .I(a[7]), .ZN(n92) );
  inv0d0 U72 ( .I(a[2]), .ZN(n97) );
  inv0d0 U73 ( .I(a[8]), .ZN(n91) );
  inv0d0 U74 ( .I(a[3]), .ZN(n96) );
  inv0d0 U75 ( .I(a[9]), .ZN(n90) );
  inv0d0 U76 ( .I(a[4]), .ZN(n95) );
  inv0d0 U77 ( .I(a[10]), .ZN(n89) );
  inv0d0 U78 ( .I(a[5]), .ZN(n94) );
  inv0d0 U79 ( .I(a[11]), .ZN(n88) );
  inv0d0 U80 ( .I(U_COUNT_count[1]), .ZN(n32) );
  inv0d0 U81 ( .I(n17), .ZN(n18) );
  inv0d0 U82 ( .I(n14), .ZN(n17) );
  inv0d0 U83 ( .I(n15), .ZN(complete) );
  inv0d0 U84 ( .I(n13), .ZN(n15) );
  nr02d1 U85 ( .A1(start), .A2(count_ov_n), .ZN(n13) );
  inv0d0 U86 ( .I(n113), .ZN(n50) );
  inv0d0 U87 ( .I(n112), .ZN(n47) );
  inv0d0 U88 ( .I(n111), .ZN(n44) );
  inv0d0 U89 ( .I(n110), .ZN(n41) );
  inv0d0 U90 ( .I(n109), .ZN(n38) );
  inv0d0 U91 ( .I(n108), .ZN(n35) );
  inv0d0 U92 ( .I(product[12]), .ZN(n49) );
  inv0d0 U93 ( .I(product[13]), .ZN(n46) );
  inv0d0 U94 ( .I(product[14]), .ZN(n43) );
  inv0d0 U95 ( .I(product[15]), .ZN(n40) );
  inv0d0 U96 ( .I(product[16]), .ZN(n37) );
  inv0d0 U97 ( .I(product[17]), .ZN(n34) );
  nr02d1 U98 ( .A1(start), .A2(count_ov_n), .ZN(n14) );
  an02d0 U99 ( .A1(n24), .A2(U_COUNT_count_inc[2]), .Z(U_COUNT_next_count_2_)
         );
  an02d0 U100 ( .A1(n24), .A2(U_COUNT_count_inc[0]), .Z(
        U_COUNT_tercnt_cmp_bus_0_) );
  nd02d0 U101 ( .A1(n24), .A2(U_COUNT_count_inc[1]), .ZN(n28) );
  nr13d1 U102 ( .A1(U_COUNT_count_inc[0]), .A2(U_COUNT_count_inc[2]), .A3(n28), 
        .ZN(U_COUNT_tercnt_d) );
  xr02d1 U103 ( .A1(U_COUNT_count[2]), .A2(n29), .Z(U_COUNT_count_inc[2]) );
  nr02d0 U104 ( .A1(n30), .A2(n32), .ZN(n29) );
  xr02d1 U105 ( .A1(n32), .A2(n30), .Z(U_COUNT_count_inc[1]) );
  nd02d0 U106 ( .A1(n17), .A2(U_COUNT_count[0]), .ZN(n30) );
  xr02d1 U107 ( .A1(n19), .A2(U_COUNT_count[0]), .Z(U_COUNT_count_inc[0]) );
  nr02d0 U108 ( .A1(n83), .A2(n36), .ZN(pp_5__9_) );
  nr02d0 U109 ( .A1(n36), .A2(n84), .ZN(pp_5__8_) );
  nr02d0 U110 ( .A1(n36), .A2(n85), .ZN(pp_5__7_) );
  nr02d0 U111 ( .A1(n36), .A2(n86), .ZN(pp_5__6_) );
  nr02d0 U112 ( .A1(n36), .A2(n87), .ZN(pp_5__5_) );
  nr02d0 U113 ( .A1(n36), .A2(n70), .ZN(pp_5__22_) );
  nr02d0 U114 ( .A1(n36), .A2(n71), .ZN(pp_5__21_) );
  nr02d0 U115 ( .A1(n36), .A2(n72), .ZN(pp_5__20_) );
  nr02d0 U116 ( .A1(n36), .A2(n73), .ZN(pp_5__19_) );
  nr02d0 U117 ( .A1(n36), .A2(n74), .ZN(pp_5__18_) );
  nr02d0 U118 ( .A1(n36), .A2(n75), .ZN(pp_5__17_) );
  nr02d0 U119 ( .A1(n36), .A2(n76), .ZN(pp_5__16_) );
  nr02d0 U120 ( .A1(n36), .A2(n77), .ZN(pp_5__15_) );
  nr02d0 U121 ( .A1(n36), .A2(n78), .ZN(pp_5__14_) );
  nr02d0 U122 ( .A1(n36), .A2(n79), .ZN(pp_5__13_) );
  nr02d0 U123 ( .A1(n36), .A2(n80), .ZN(pp_5__12_) );
  nr02d0 U124 ( .A1(n36), .A2(n81), .ZN(pp_5__11_) );
  nr02d0 U125 ( .A1(n36), .A2(n82), .ZN(pp_5__10_) );
  nr02d0 U126 ( .A1(n82), .A2(n39), .ZN(pp_4__9_) );
  nr02d0 U127 ( .A1(n83), .A2(n39), .ZN(pp_4__8_) );
  nr02d0 U128 ( .A1(n84), .A2(n39), .ZN(pp_4__7_) );
  nr02d0 U129 ( .A1(n85), .A2(n39), .ZN(pp_4__6_) );
  nr02d0 U130 ( .A1(n86), .A2(n39), .ZN(pp_4__5_) );
  nr02d0 U131 ( .A1(n87), .A2(n39), .ZN(pp_4__4_) );
  nr02d0 U132 ( .A1(n70), .A2(n39), .ZN(pp_4__21_) );
  nr02d0 U133 ( .A1(n71), .A2(n39), .ZN(pp_4__20_) );
  nr02d0 U134 ( .A1(n72), .A2(n39), .ZN(pp_4__19_) );
  nr02d0 U135 ( .A1(n73), .A2(n39), .ZN(pp_4__18_) );
  nr02d0 U136 ( .A1(n74), .A2(n39), .ZN(pp_4__17_) );
  nr02d0 U137 ( .A1(n75), .A2(n39), .ZN(pp_4__16_) );
  nr02d0 U138 ( .A1(n76), .A2(n39), .ZN(pp_4__15_) );
  nr02d0 U139 ( .A1(n77), .A2(n39), .ZN(pp_4__14_) );
  nr02d0 U140 ( .A1(n78), .A2(n39), .ZN(pp_4__13_) );
  nr02d0 U141 ( .A1(n79), .A2(n39), .ZN(pp_4__12_) );
  nr02d0 U142 ( .A1(n80), .A2(n39), .ZN(pp_4__11_) );
  nr02d0 U143 ( .A1(n81), .A2(n39), .ZN(pp_4__10_) );
  nr02d0 U144 ( .A1(n81), .A2(n42), .ZN(pp_3__9_) );
  nr02d0 U145 ( .A1(n82), .A2(n42), .ZN(pp_3__8_) );
  nr02d0 U146 ( .A1(n83), .A2(n42), .ZN(pp_3__7_) );
  nr02d0 U147 ( .A1(n84), .A2(n42), .ZN(pp_3__6_) );
  nr02d0 U148 ( .A1(n85), .A2(n42), .ZN(pp_3__5_) );
  nr02d0 U149 ( .A1(n86), .A2(n42), .ZN(pp_3__4_) );
  nr02d0 U150 ( .A1(n87), .A2(n42), .ZN(pp_3__3_) );
  nr02d0 U151 ( .A1(n70), .A2(n42), .ZN(pp_3__20_) );
  nr02d0 U152 ( .A1(n71), .A2(n42), .ZN(pp_3__19_) );
  nr02d0 U153 ( .A1(n72), .A2(n42), .ZN(pp_3__18_) );
  nr02d0 U154 ( .A1(n73), .A2(n42), .ZN(pp_3__17_) );
  nr02d0 U155 ( .A1(n74), .A2(n42), .ZN(pp_3__16_) );
  nr02d0 U156 ( .A1(n75), .A2(n42), .ZN(pp_3__15_) );
  nr02d0 U157 ( .A1(n76), .A2(n42), .ZN(pp_3__14_) );
  nr02d0 U158 ( .A1(n77), .A2(n42), .ZN(pp_3__13_) );
  nr02d0 U159 ( .A1(n78), .A2(n42), .ZN(pp_3__12_) );
  nr02d0 U160 ( .A1(n79), .A2(n42), .ZN(pp_3__11_) );
  nr02d0 U161 ( .A1(n80), .A2(n42), .ZN(pp_3__10_) );
  nr02d0 U162 ( .A1(n80), .A2(n45), .ZN(pp_2__9_) );
  nr02d0 U163 ( .A1(n81), .A2(n45), .ZN(pp_2__8_) );
  nr02d0 U164 ( .A1(n82), .A2(n45), .ZN(pp_2__7_) );
  nr02d0 U165 ( .A1(n83), .A2(n45), .ZN(pp_2__6_) );
  nr02d0 U166 ( .A1(n84), .A2(n45), .ZN(pp_2__5_) );
  nr02d0 U167 ( .A1(n85), .A2(n45), .ZN(pp_2__4_) );
  nr02d0 U168 ( .A1(n86), .A2(n45), .ZN(pp_2__3_) );
  nr02d0 U169 ( .A1(n87), .A2(n45), .ZN(pp_2__2_) );
  nr02d0 U170 ( .A1(n70), .A2(n45), .ZN(pp_2__19_) );
  nr02d0 U171 ( .A1(n71), .A2(n45), .ZN(pp_2__18_) );
  nr02d0 U172 ( .A1(n72), .A2(n45), .ZN(pp_2__17_) );
  nr02d0 U173 ( .A1(n73), .A2(n45), .ZN(pp_2__16_) );
  nr02d0 U174 ( .A1(n74), .A2(n45), .ZN(pp_2__15_) );
  nr02d0 U175 ( .A1(n75), .A2(n45), .ZN(pp_2__14_) );
  nr02d0 U176 ( .A1(n76), .A2(n45), .ZN(pp_2__13_) );
  nr02d0 U177 ( .A1(n77), .A2(n45), .ZN(pp_2__12_) );
  nr02d0 U178 ( .A1(n78), .A2(n45), .ZN(pp_2__11_) );
  nr02d0 U179 ( .A1(n79), .A2(n45), .ZN(pp_2__10_) );
  nr02d0 U180 ( .A1(n79), .A2(n48), .ZN(pp_1__9_) );
  nr02d0 U181 ( .A1(n80), .A2(n48), .ZN(pp_1__8_) );
  nr02d0 U182 ( .A1(n81), .A2(n48), .ZN(pp_1__7_) );
  nr02d0 U183 ( .A1(n82), .A2(n48), .ZN(pp_1__6_) );
  nr02d0 U184 ( .A1(n83), .A2(n48), .ZN(pp_1__5_) );
  nr02d0 U185 ( .A1(n84), .A2(n48), .ZN(pp_1__4_) );
  nr02d0 U186 ( .A1(n85), .A2(n48), .ZN(pp_1__3_) );
  nr02d0 U187 ( .A1(n86), .A2(n48), .ZN(pp_1__2_) );
  nr02d0 U188 ( .A1(n87), .A2(n48), .ZN(pp_1__1_) );
  nr02d0 U189 ( .A1(n70), .A2(n48), .ZN(pp_1__18_) );
  nr02d0 U190 ( .A1(n71), .A2(n48), .ZN(pp_1__17_) );
  nr02d0 U191 ( .A1(n72), .A2(n48), .ZN(pp_1__16_) );
  nr02d0 U192 ( .A1(n73), .A2(n48), .ZN(pp_1__15_) );
  nr02d0 U193 ( .A1(n74), .A2(n48), .ZN(pp_1__14_) );
  nr02d0 U194 ( .A1(n75), .A2(n48), .ZN(pp_1__13_) );
  nr02d0 U195 ( .A1(n76), .A2(n48), .ZN(pp_1__12_) );
  nr02d0 U196 ( .A1(n77), .A2(n48), .ZN(pp_1__11_) );
  nr02d0 U197 ( .A1(n78), .A2(n48), .ZN(pp_1__10_) );
  nr02d0 U198 ( .A1(n78), .A2(n51), .ZN(pp_0__9_) );
  nr02d0 U199 ( .A1(n79), .A2(n51), .ZN(pp_0__8_) );
  nr02d0 U200 ( .A1(n80), .A2(n51), .ZN(pp_0__7_) );
  nr02d0 U201 ( .A1(n81), .A2(n51), .ZN(pp_0__6_) );
  nr02d0 U202 ( .A1(n82), .A2(n51), .ZN(pp_0__5_) );
  nr02d0 U203 ( .A1(n83), .A2(n51), .ZN(pp_0__4_) );
  nr02d0 U204 ( .A1(n84), .A2(n51), .ZN(pp_0__3_) );
  nr02d0 U205 ( .A1(n85), .A2(n51), .ZN(pp_0__2_) );
  nr02d0 U206 ( .A1(n86), .A2(n51), .ZN(pp_0__1_) );
  nr02d0 U207 ( .A1(n70), .A2(n51), .ZN(pp_0__17_) );
  nr02d0 U208 ( .A1(n71), .A2(n51), .ZN(pp_0__16_) );
  nr02d0 U209 ( .A1(n72), .A2(n51), .ZN(pp_0__15_) );
  nr02d0 U210 ( .A1(n73), .A2(n51), .ZN(pp_0__14_) );
  nr02d0 U211 ( .A1(n74), .A2(n51), .ZN(pp_0__13_) );
  nr02d0 U212 ( .A1(n75), .A2(n51), .ZN(pp_0__12_) );
  nr02d0 U213 ( .A1(n76), .A2(n51), .ZN(pp_0__11_) );
  nr02d0 U214 ( .A1(n77), .A2(n51), .ZN(pp_0__10_) );
  nr02d0 U215 ( .A1(n87), .A2(n51), .ZN(pp_0__0_) );
  nr02d0 U216 ( .A1(first_cyc), .A2(n60), .ZN(c_in[9]) );
  nr02d0 U217 ( .A1(first_cyc), .A2(n61), .ZN(c_in[8]) );
  nr02d0 U218 ( .A1(first_cyc), .A2(n62), .ZN(c_in[7]) );
  nr02d0 U219 ( .A1(first_cyc), .A2(n63), .ZN(c_in[6]) );
  nr02d0 U220 ( .A1(first_cyc), .A2(n64), .ZN(c_in[5]) );
  nr02d0 U221 ( .A1(first_cyc), .A2(n65), .ZN(c_in[4]) );
  nr02d0 U222 ( .A1(first_cyc), .A2(n66), .ZN(c_in[3]) );
  nr02d0 U223 ( .A1(first_cyc), .A2(n67), .ZN(c_in[2]) );
  nr02d0 U224 ( .A1(first_cyc), .A2(n68), .ZN(c_in[1]) );
  nr02d0 U225 ( .A1(first_cyc), .A2(n52), .ZN(c_in[17]) );
  nr02d0 U226 ( .A1(first_cyc), .A2(n53), .ZN(c_in[16]) );
  nr02d0 U227 ( .A1(first_cyc), .A2(n54), .ZN(c_in[15]) );
  nr02d0 U228 ( .A1(first_cyc), .A2(n55), .ZN(c_in[14]) );
  nr02d0 U229 ( .A1(first_cyc), .A2(n56), .ZN(c_in[13]) );
  nr02d0 U230 ( .A1(first_cyc), .A2(n57), .ZN(c_in[12]) );
  nr02d0 U231 ( .A1(first_cyc), .A2(n58), .ZN(c_in[11]) );
  nr02d0 U232 ( .A1(first_cyc), .A2(n59), .ZN(c_in[10]) );
  nr02d0 U233 ( .A1(first_cyc), .A2(n69), .ZN(c_in[0]) );
  aor22d1 U234 ( .A1(n18), .A2(product[18]), .B1(mac_reg_temp1[0]), .B2(n25), 
        .Z(N9) );
  oaim21d1 U235 ( .B1(n18), .B2(first_cyc), .A(n22), .ZN(N8) );
  oai21d1 U236 ( .B1(n17), .B2(n34), .A(n100), .ZN(N44) );
  aoi22d1 U237 ( .A1(b[17]), .A2(start), .B1(shf_in_5__2_), .B2(n25), .ZN(n100) );
  oai222d1 U238 ( .A1(n101), .A2(n34), .B1(n21), .B2(n88), .C1(n19), .C2(n35), 
        .ZN(N43) );
  oai222d1 U239 ( .A1(n101), .A2(n35), .B1(n21), .B2(n94), .C1(n19), .C2(n36), 
        .ZN(N42) );
  oai21d1 U240 ( .B1(n19), .B2(n37), .A(n102), .ZN(N41) );
  aoi22d1 U241 ( .A1(b[16]), .A2(start), .B1(shf_in_4__2_), .B2(n25), .ZN(n102) );
  oai222d1 U242 ( .A1(n101), .A2(n37), .B1(n21), .B2(n89), .C1(n17), .C2(n38), 
        .ZN(N40) );
  oai222d1 U243 ( .A1(n101), .A2(n38), .B1(n21), .B2(n95), .C1(n19), .C2(n39), 
        .ZN(N39) );
  oai21d1 U244 ( .B1(n17), .B2(n40), .A(n103), .ZN(N38) );
  aoi22d1 U245 ( .A1(b[15]), .A2(start), .B1(shf_in_3__2_), .B2(n25), .ZN(n103) );
  oai222d1 U246 ( .A1(n101), .A2(n40), .B1(n21), .B2(n90), .C1(n19), .C2(n41), 
        .ZN(N37) );
  oai222d1 U247 ( .A1(n101), .A2(n41), .B1(n21), .B2(n96), .C1(n17), .C2(n42), 
        .ZN(N36) );
  oai21d1 U248 ( .B1(n15), .B2(n43), .A(n104), .ZN(N35) );
  aoi22d1 U249 ( .A1(b[14]), .A2(start), .B1(shf_in_2__2_), .B2(n25), .ZN(n104) );
  oai222d1 U250 ( .A1(n101), .A2(n43), .B1(n21), .B2(n91), .C1(n19), .C2(n44), 
        .ZN(N34) );
  oai222d1 U251 ( .A1(n101), .A2(n44), .B1(n21), .B2(n97), .C1(n17), .C2(n45), 
        .ZN(N33) );
  oai21d1 U252 ( .B1(n17), .B2(n46), .A(n105), .ZN(N32) );
  aoi22d1 U253 ( .A1(b[13]), .A2(start), .B1(shf_in_1__2_), .B2(n25), .ZN(n105) );
  oai222d1 U254 ( .A1(n101), .A2(n46), .B1(n21), .B2(n92), .C1(n17), .C2(n47), 
        .ZN(N31) );
  oai222d1 U255 ( .A1(n101), .A2(n47), .B1(n22), .B2(n98), .C1(n17), .C2(n48), 
        .ZN(N30) );
  oai21d1 U256 ( .B1(n15), .B2(n49), .A(n106), .ZN(N29) );
  aoi22d1 U257 ( .A1(b[12]), .A2(start), .B1(shf_in_0__2_), .B2(n25), .ZN(n106) );
  oai222d1 U258 ( .A1(n101), .A2(n49), .B1(n22), .B2(n93), .C1(n19), .C2(n50), 
        .ZN(N28) );
  oai222d1 U259 ( .A1(n101), .A2(n50), .B1(n22), .B2(n99), .C1(n19), .C2(n51), 
        .ZN(N27) );
  aor22d1 U260 ( .A1(complete), .A2(product[35]), .B1(mac_reg_temp1[17]), .B2(
        n25), .Z(N26) );
  aor22d1 U261 ( .A1(n20), .A2(product[34]), .B1(mac_reg_temp1[16]), .B2(n25), 
        .Z(N25) );
  aor22d1 U262 ( .A1(n20), .A2(product[33]), .B1(mac_reg_temp1[15]), .B2(n26), 
        .Z(N24) );
  aor22d1 U263 ( .A1(n18), .A2(product[32]), .B1(mac_reg_temp1[14]), .B2(n26), 
        .Z(N23) );
  aor22d1 U264 ( .A1(complete), .A2(product[31]), .B1(mac_reg_temp1[13]), .B2(
        n26), .Z(N22) );
  aor22d1 U265 ( .A1(complete), .A2(product[30]), .B1(mac_reg_temp1[12]), .B2(
        n26), .Z(N21) );
  aor22d1 U266 ( .A1(n20), .A2(product[29]), .B1(mac_reg_temp1[11]), .B2(n26), 
        .Z(N20) );
  aor22d1 U267 ( .A1(n18), .A2(product[28]), .B1(mac_reg_temp1[10]), .B2(n26), 
        .Z(N19) );
  aor22d1 U268 ( .A1(n18), .A2(product[27]), .B1(mac_reg_temp1[9]), .B2(n26), 
        .Z(N18) );
  aor22d1 U269 ( .A1(complete), .A2(product[26]), .B1(mac_reg_temp1[8]), .B2(
        n26), .Z(N17) );
  aor22d1 U270 ( .A1(n20), .A2(product[25]), .B1(mac_reg_temp1[7]), .B2(n27), 
        .Z(N16) );
  aor22d1 U271 ( .A1(n20), .A2(product[24]), .B1(mac_reg_temp1[6]), .B2(n27), 
        .Z(N15) );
  aor22d1 U272 ( .A1(n18), .A2(product[23]), .B1(mac_reg_temp1[5]), .B2(n27), 
        .Z(N14) );
  aor22d1 U273 ( .A1(complete), .A2(product[22]), .B1(mac_reg_temp1[4]), .B2(
        n27), .Z(N13) );
  aor22d1 U274 ( .A1(complete), .A2(product[21]), .B1(mac_reg_temp1[3]), .B2(
        n27), .Z(N12) );
  aor22d1 U275 ( .A1(n20), .A2(product[20]), .B1(mac_reg_temp1[2]), .B2(n27), 
        .Z(N11) );
  aor22d1 U276 ( .A1(n18), .A2(product[19]), .B1(mac_reg_temp1[1]), .B2(n26), 
        .Z(N10) );
endmodule


module std_calc_1_DW01_sub_0_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [17:1] carry;

  ad01d0 U2_16 ( .A(A[16]), .B(n4), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ad01d0 U2_15 ( .A(A[15]), .B(n5), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ad01d0 U2_14 ( .A(A[14]), .B(n6), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ad01d0 U2_13 ( .A(A[13]), .B(n7), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ad01d0 U2_12 ( .A(A[12]), .B(n8), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ad01d0 U2_11 ( .A(A[11]), .B(n9), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ad01d0 U2_10 ( .A(A[10]), .B(n10), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ad01d0 U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ad01d0 U2_8 ( .A(A[8]), .B(n12), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ad01d0 U2_7 ( .A(A[7]), .B(n13), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ad01d0 U2_6 ( .A(A[6]), .B(n14), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ad01d0 U2_5 ( .A(A[5]), .B(n15), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ad01d0 U2_4 ( .A(A[4]), .B(n16), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ad01d0 U2_3 ( .A(A[3]), .B(n17), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ad01d0 U2_2 ( .A(A[2]), .B(n18), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ad01d0 U2_1 ( .A(A[1]), .B(n19), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  inv0d0 U1 ( .I(n20), .ZN(n1) );
  inv0d0 U2 ( .I(carry[17]), .ZN(DIFF[17]) );
  inv0d0 U3 ( .I(B[12]), .ZN(n8) );
  inv0d0 U4 ( .I(B[13]), .ZN(n7) );
  inv0d0 U5 ( .I(B[14]), .ZN(n6) );
  inv0d0 U6 ( .I(B[15]), .ZN(n5) );
  inv0d0 U7 ( .I(B[4]), .ZN(n16) );
  inv0d0 U8 ( .I(B[8]), .ZN(n12) );
  inv0d0 U9 ( .I(B[9]), .ZN(n11) );
  inv0d0 U10 ( .I(B[3]), .ZN(n17) );
  inv0d0 U11 ( .I(B[2]), .ZN(n18) );
  inv0d0 U12 ( .I(B[5]), .ZN(n15) );
  inv0d0 U13 ( .I(B[7]), .ZN(n13) );
  inv0d0 U14 ( .I(B[11]), .ZN(n9) );
  inv0d0 U15 ( .I(B[6]), .ZN(n14) );
  inv0d0 U16 ( .I(B[10]), .ZN(n10) );
  inv0d0 U17 ( .I(B[16]), .ZN(n4) );
  inv0d0 U18 ( .I(B[1]), .ZN(n19) );
  nd02d1 U19 ( .A1(n1), .A2(n2), .ZN(carry[1]) );
  inv0d0 U20 ( .I(A[0]), .ZN(n2) );
  inv0d0 U21 ( .I(B[0]), .ZN(n20) );
  xn02d1 U22 ( .A1(n20), .A2(A[0]), .ZN(DIFF[0]) );
endmodule


module std_calc_1_DW01_sub_1_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [17:1] carry;

  ad01d0 U2_16 ( .A(A[16]), .B(n17), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ad01d0 U2_15 ( .A(A[15]), .B(n15), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ad01d0 U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ad01d0 U2_13 ( .A(A[13]), .B(n11), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ad01d0 U2_12 ( .A(A[12]), .B(n9), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ad01d0 U2_11 ( .A(A[11]), .B(n7), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ad01d0 U2_10 ( .A(A[10]), .B(n5), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ad01d0 U2_9 ( .A(A[9]), .B(n18), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ad01d0 U2_8 ( .A(A[8]), .B(n16), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ad01d0 U2_7 ( .A(A[7]), .B(n14), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ad01d0 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ad01d0 U2_5 ( .A(A[5]), .B(n10), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ad01d0 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ad01d0 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ad01d0 U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ad01d0 U2_1 ( .A(A[1]), .B(n20), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  inv0d0 U1 ( .I(B[4]), .ZN(n8) );
  inv0d0 U2 ( .I(B[5]), .ZN(n10) );
  inv0d0 U3 ( .I(B[6]), .ZN(n12) );
  inv0d0 U4 ( .I(B[7]), .ZN(n14) );
  inv0d0 U5 ( .I(B[8]), .ZN(n16) );
  inv0d0 U6 ( .I(B[9]), .ZN(n18) );
  inv0d0 U7 ( .I(B[10]), .ZN(n5) );
  inv0d0 U8 ( .I(B[11]), .ZN(n7) );
  inv0d0 U9 ( .I(B[12]), .ZN(n9) );
  inv0d0 U10 ( .I(B[13]), .ZN(n11) );
  inv0d0 U11 ( .I(B[14]), .ZN(n13) );
  inv0d0 U12 ( .I(B[15]), .ZN(n15) );
  inv0d0 U13 ( .I(B[3]), .ZN(n6) );
  inv0d0 U14 ( .I(B[2]), .ZN(n4) );
  inv0d0 U15 ( .I(B[16]), .ZN(n17) );
  inv0d0 U16 ( .I(carry[17]), .ZN(DIFF[17]) );
  inv0d0 U17 ( .I(B[1]), .ZN(n20) );
  nd02d1 U18 ( .A1(n1), .A2(n2), .ZN(carry[1]) );
  inv0d0 U19 ( .I(n19), .ZN(n1) );
  inv0d0 U20 ( .I(A[0]), .ZN(n2) );
  inv0d0 U21 ( .I(B[0]), .ZN(n19) );
  xn02d1 U22 ( .A1(n19), .A2(A[0]), .ZN(DIFF[0]) );
endmodule


module std_calc_1 ( clk, reset_n, start, eeg, mean, count, complete_acc, 
        complete_sqrt, std_dev );
  input [17:0] eeg;
  input [17:0] mean;
  input [7:0] count;
  output [18:0] std_dev;
  input clk, reset_n, start, complete_acc;
  output complete_sqrt;
  wire   start_mult, complete_mult, complete_div, start_sqrt, N6, N8, N9, N10,
         N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24,
         N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, start_acc, complete_mult_pipe, N63, N67, N68,
         N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82,
         N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96,
         N97, N98, complete_div_pipe, N103, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n15, n16, n17, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17,
         SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19,
         SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21,
         SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23,
         SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25,
         SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27,
         SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29,
         SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31,
         SYNOPSYS_UNCONNECTED_32;
  wire   [11:0] square_integer;
  wire   [11:0] square_frac;
  wire   [7:0] count_minus_one;
  wire   [11:0] variance_int;
  wire   [3:0] variance_frac;
  wire   [17:0] eeg_minus_mean;
  wire   [27:0] trunck_sum_zeros;
  wire   [19:0] variance_for_sqrt;
  wire   [31:0] sum;
  assign std_dev[0] = 1'b0;
  assign std_dev[1] = 1'b0;
  assign std_dev[2] = 1'b0;
  assign std_dev[3] = 1'b0;
  assign std_dev[4] = 1'b0;
  assign std_dev[5] = 1'b0;
  assign std_dev[6] = 1'b0;
  assign std_dev[7] = 1'b0;
  assign std_dev[18] = 1'b0;

  aor22d1 U3 ( .A1(complete_acc), .A2(sum[31]), .B1(trunck_sum_zeros[27]), 
        .B2(n108), .Z(n263) );
  aor22d1 U4 ( .A1(n16), .A2(sum[31]), .B1(n11), .B2(N98), .Z(n262) );
  aor22d1 U10 ( .A1(complete_acc), .A2(sum[30]), .B1(trunck_sum_zeros[26]), 
        .B2(n108), .Z(n261) );
  aor22d1 U11 ( .A1(n16), .A2(sum[30]), .B1(N97), .B2(n11), .Z(n260) );
  aor22d1 U12 ( .A1(complete_acc), .A2(sum[29]), .B1(trunck_sum_zeros[25]), 
        .B2(n108), .Z(n259) );
  aor22d1 U13 ( .A1(n16), .A2(sum[29]), .B1(N96), .B2(n11), .Z(n258) );
  aor22d1 U14 ( .A1(complete_acc), .A2(sum[28]), .B1(trunck_sum_zeros[24]), 
        .B2(n108), .Z(n257) );
  aor22d1 U15 ( .A1(n16), .A2(sum[28]), .B1(N95), .B2(n11), .Z(n256) );
  aor22d1 U16 ( .A1(complete_acc), .A2(sum[27]), .B1(trunck_sum_zeros[23]), 
        .B2(n108), .Z(n255) );
  aor22d1 U17 ( .A1(n16), .A2(sum[27]), .B1(N94), .B2(n11), .Z(n254) );
  aor22d1 U18 ( .A1(complete_acc), .A2(sum[26]), .B1(trunck_sum_zeros[22]), 
        .B2(n108), .Z(n253) );
  aor22d1 U19 ( .A1(n16), .A2(sum[26]), .B1(N93), .B2(n10), .Z(n252) );
  aor22d1 U20 ( .A1(complete_acc), .A2(sum[25]), .B1(trunck_sum_zeros[21]), 
        .B2(n108), .Z(n251) );
  aor22d1 U21 ( .A1(n16), .A2(sum[25]), .B1(N92), .B2(n10), .Z(n250) );
  aor22d1 U22 ( .A1(complete_acc), .A2(sum[24]), .B1(trunck_sum_zeros[20]), 
        .B2(n108), .Z(n249) );
  aor22d1 U23 ( .A1(n16), .A2(sum[24]), .B1(N91), .B2(n10), .Z(n248) );
  aor22d1 U24 ( .A1(complete_acc), .A2(sum[23]), .B1(trunck_sum_zeros[19]), 
        .B2(n108), .Z(n247) );
  aor22d1 U25 ( .A1(n16), .A2(sum[23]), .B1(N90), .B2(n10), .Z(n246) );
  aor22d1 U26 ( .A1(complete_acc), .A2(sum[22]), .B1(trunck_sum_zeros[18]), 
        .B2(n108), .Z(n245) );
  aor22d1 U27 ( .A1(n16), .A2(sum[22]), .B1(N89), .B2(n10), .Z(n244) );
  aor22d1 U28 ( .A1(n17), .A2(sum[21]), .B1(trunck_sum_zeros[17]), .B2(n4), 
        .Z(n243) );
  aor22d1 U29 ( .A1(n16), .A2(sum[21]), .B1(N88), .B2(n10), .Z(n242) );
  aor22d1 U30 ( .A1(n17), .A2(sum[20]), .B1(trunck_sum_zeros[16]), .B2(n4), 
        .Z(n241) );
  aor22d1 U31 ( .A1(n16), .A2(sum[20]), .B1(N87), .B2(n10), .Z(n240) );
  aor22d1 U32 ( .A1(n17), .A2(sum[19]), .B1(trunck_sum_zeros[15]), .B2(n4), 
        .Z(n239) );
  aor22d1 U33 ( .A1(n16), .A2(sum[19]), .B1(N86), .B2(n10), .Z(n238) );
  aor22d1 U34 ( .A1(n17), .A2(sum[18]), .B1(trunck_sum_zeros[14]), .B2(n4), 
        .Z(n237) );
  aor22d1 U35 ( .A1(n16), .A2(sum[18]), .B1(N85), .B2(n10), .Z(n236) );
  aor22d1 U36 ( .A1(n17), .A2(sum[17]), .B1(trunck_sum_zeros[13]), .B2(n4), 
        .Z(n235) );
  aor22d1 U37 ( .A1(n16), .A2(sum[17]), .B1(N84), .B2(n9), .Z(n234) );
  aor22d1 U38 ( .A1(n17), .A2(sum[16]), .B1(trunck_sum_zeros[12]), .B2(n4), 
        .Z(n233) );
  aor22d1 U39 ( .A1(n15), .A2(sum[16]), .B1(N83), .B2(n9), .Z(n232) );
  aor22d1 U40 ( .A1(complete_acc), .A2(sum[15]), .B1(trunck_sum_zeros[11]), 
        .B2(n4), .Z(n231) );
  aor22d1 U41 ( .A1(n15), .A2(sum[15]), .B1(N82), .B2(n9), .Z(n230) );
  aor22d1 U42 ( .A1(complete_acc), .A2(sum[14]), .B1(trunck_sum_zeros[10]), 
        .B2(n4), .Z(n229) );
  aor22d1 U43 ( .A1(n15), .A2(sum[14]), .B1(N81), .B2(n9), .Z(n228) );
  aor22d1 U44 ( .A1(complete_acc), .A2(sum[13]), .B1(trunck_sum_zeros[9]), 
        .B2(n4), .Z(n227) );
  aor22d1 U45 ( .A1(n15), .A2(sum[13]), .B1(N80), .B2(n9), .Z(n226) );
  aor22d1 U46 ( .A1(complete_acc), .A2(sum[12]), .B1(trunck_sum_zeros[8]), 
        .B2(n4), .Z(n225) );
  aor22d1 U47 ( .A1(n15), .A2(sum[12]), .B1(N79), .B2(n9), .Z(n224) );
  aor22d1 U48 ( .A1(complete_acc), .A2(sum[11]), .B1(trunck_sum_zeros[7]), 
        .B2(n4), .Z(n223) );
  aor22d1 U49 ( .A1(n15), .A2(sum[11]), .B1(N78), .B2(n9), .Z(n222) );
  aor22d1 U50 ( .A1(complete_acc), .A2(sum[10]), .B1(trunck_sum_zeros[6]), 
        .B2(n4), .Z(n221) );
  aor22d1 U51 ( .A1(n15), .A2(sum[10]), .B1(N77), .B2(n9), .Z(n220) );
  aor22d1 U52 ( .A1(complete_acc), .A2(sum[9]), .B1(trunck_sum_zeros[5]), .B2(
        n4), .Z(n219) );
  aor22d1 U53 ( .A1(n15), .A2(sum[9]), .B1(N76), .B2(n9), .Z(n218) );
  aor22d1 U54 ( .A1(complete_acc), .A2(sum[8]), .B1(trunck_sum_zeros[4]), .B2(
        n4), .Z(n217) );
  aor22d1 U56 ( .A1(n15), .A2(sum[8]), .B1(N75), .B2(n11), .Z(n216) );
  aor22d1 U57 ( .A1(sum[7]), .A2(n15), .B1(N74), .B2(n11), .Z(n215) );
  aor22d1 U58 ( .A1(sum[6]), .A2(n15), .B1(N73), .B2(n11), .Z(n214) );
  aor22d1 U59 ( .A1(sum[5]), .A2(n15), .B1(N72), .B2(n11), .Z(n213) );
  aor22d1 U60 ( .A1(sum[4]), .A2(n15), .B1(N71), .B2(start_acc), .Z(n212) );
  aor22d1 U61 ( .A1(sum[3]), .A2(n15), .B1(N70), .B2(start_acc), .Z(n211) );
  aor22d1 U62 ( .A1(sum[2]), .A2(n15), .B1(N69), .B2(start_acc), .Z(n210) );
  aor22d1 U63 ( .A1(sum[0]), .A2(n15), .B1(N67), .B2(start_acc), .Z(n209) );
  aor22d1 U64 ( .A1(sum[1]), .A2(n15), .B1(N68), .B2(start_acc), .Z(n208) );
  aor222d1 U66 ( .A1(N8), .A2(n265), .B1(N26), .B2(n264), .C1(
        eeg_minus_mean[0]), .C2(n173), .Z(n207) );
  aor222d1 U67 ( .A1(N9), .A2(n265), .B1(N27), .B2(n264), .C1(
        eeg_minus_mean[1]), .C2(n173), .Z(n206) );
  aor222d1 U68 ( .A1(N10), .A2(n265), .B1(N28), .B2(n264), .C1(
        eeg_minus_mean[2]), .C2(n173), .Z(n205) );
  aor222d1 U69 ( .A1(N11), .A2(n265), .B1(N29), .B2(n264), .C1(
        eeg_minus_mean[3]), .C2(n173), .Z(n204) );
  aor222d1 U70 ( .A1(N12), .A2(n265), .B1(N30), .B2(n264), .C1(
        eeg_minus_mean[4]), .C2(n173), .Z(n203) );
  aor222d1 U71 ( .A1(N13), .A2(n265), .B1(N31), .B2(n264), .C1(
        eeg_minus_mean[5]), .C2(n173), .Z(n202) );
  aor222d1 U72 ( .A1(N14), .A2(n265), .B1(N32), .B2(n264), .C1(
        eeg_minus_mean[6]), .C2(n173), .Z(n201) );
  aor222d1 U73 ( .A1(N15), .A2(n265), .B1(N33), .B2(n264), .C1(
        eeg_minus_mean[7]), .C2(n173), .Z(n200) );
  aor222d1 U74 ( .A1(N16), .A2(n265), .B1(N34), .B2(n264), .C1(
        eeg_minus_mean[8]), .C2(n173), .Z(n199) );
  aor222d1 U75 ( .A1(N17), .A2(n265), .B1(N35), .B2(n264), .C1(
        eeg_minus_mean[9]), .C2(n173), .Z(n198) );
  aor222d1 U76 ( .A1(N18), .A2(n265), .B1(N36), .B2(n264), .C1(
        eeg_minus_mean[10]), .C2(n173), .Z(n197) );
  aor222d1 U77 ( .A1(N19), .A2(n265), .B1(N37), .B2(n264), .C1(
        eeg_minus_mean[11]), .C2(n173), .Z(n196) );
  aor222d1 U78 ( .A1(N20), .A2(n265), .B1(N38), .B2(n264), .C1(
        eeg_minus_mean[12]), .C2(n173), .Z(n195) );
  aor222d1 U79 ( .A1(N21), .A2(n265), .B1(N39), .B2(n264), .C1(
        eeg_minus_mean[13]), .C2(n173), .Z(n194) );
  aor222d1 U80 ( .A1(N22), .A2(n265), .B1(N40), .B2(n264), .C1(
        eeg_minus_mean[14]), .C2(n173), .Z(n193) );
  aor222d1 U81 ( .A1(N23), .A2(n265), .B1(N41), .B2(n264), .C1(
        eeg_minus_mean[15]), .C2(n173), .Z(n192) );
  aor222d1 U82 ( .A1(N24), .A2(n265), .B1(N42), .B2(n264), .C1(
        eeg_minus_mean[16]), .C2(n173), .Z(n191) );
  aor222d1 U83 ( .A1(N25), .A2(n265), .B1(N43), .B2(n264), .C1(
        eeg_minus_mean[17]), .C2(n173), .Z(n190) );
  aor22d1 U87 ( .A1(variance_frac[0]), .A2(complete_div), .B1(
        variance_for_sqrt[4]), .B2(n5), .Z(n189) );
  aor22d1 U88 ( .A1(variance_frac[1]), .A2(complete_div), .B1(
        variance_for_sqrt[5]), .B2(n5), .Z(n188) );
  aor22d1 U89 ( .A1(variance_frac[2]), .A2(complete_div), .B1(
        variance_for_sqrt[6]), .B2(n5), .Z(n187) );
  aor22d1 U90 ( .A1(variance_frac[3]), .A2(complete_div), .B1(
        variance_for_sqrt[7]), .B2(n5), .Z(n186) );
  aor22d1 U91 ( .A1(variance_int[0]), .A2(complete_div), .B1(
        variance_for_sqrt[8]), .B2(n5), .Z(n185) );
  aor22d1 U92 ( .A1(variance_int[1]), .A2(complete_div), .B1(
        variance_for_sqrt[9]), .B2(n5), .Z(n184) );
  aor22d1 U93 ( .A1(variance_int[2]), .A2(complete_div), .B1(
        variance_for_sqrt[10]), .B2(n5), .Z(n183) );
  aor22d1 U94 ( .A1(variance_int[3]), .A2(complete_div), .B1(
        variance_for_sqrt[11]), .B2(n5), .Z(n182) );
  aor22d1 U95 ( .A1(variance_int[4]), .A2(complete_div), .B1(
        variance_for_sqrt[12]), .B2(n5), .Z(n181) );
  aor22d1 U96 ( .A1(variance_int[5]), .A2(complete_div), .B1(
        variance_for_sqrt[13]), .B2(n5), .Z(n180) );
  aor22d1 U97 ( .A1(variance_int[6]), .A2(complete_div), .B1(
        variance_for_sqrt[14]), .B2(n5), .Z(n179) );
  aor22d1 U98 ( .A1(variance_int[7]), .A2(complete_div), .B1(
        variance_for_sqrt[15]), .B2(n5), .Z(n178) );
  aor22d1 U99 ( .A1(variance_int[8]), .A2(complete_div), .B1(
        variance_for_sqrt[16]), .B2(n5), .Z(n177) );
  aor22d1 U100 ( .A1(variance_int[9]), .A2(complete_div), .B1(
        variance_for_sqrt[17]), .B2(n5), .Z(n176) );
  aor22d1 U101 ( .A1(variance_int[10]), .A2(complete_div), .B1(
        variance_for_sqrt[18]), .B2(n5), .Z(n175) );
  aor22d1 U102 ( .A1(variance_int[11]), .A2(complete_div), .B1(
        variance_for_sqrt[19]), .B2(n5), .Z(n174) );
  std_calc_1_DW_sqrt_seq_0 DW_sqrt_seq_std ( .clk(clk), .rst_n(n6), .hold(1'b0), .start(start_sqrt), .a({variance_for_sqrt[19:4], 1'b0, 1'b0, 1'b0, 1'b0}), 
        .complete(complete_sqrt), .root(std_dev[17:8]) );
  std_calc_1_DW_div_seq_0 DW_div_seq_full ( .clk(clk), .rst_n(n6), .hold(1'b0), 
        .start(n17), .a({trunck_sum_zeros[27:4], 1'b0, 1'b0, 1'b0, 1'b0}), .b(
        count_minus_one), .complete(complete_div), .quotient({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, variance_int, 
        variance_frac, SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12}), .remainder({
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20}) );
  std_calc_1_DW01_add_14_DW01_add_16 add_163 ( .A(sum), .B({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, square_integer, square_frac}), .CI(1'b0), 
        .SUM({N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, 
        N71, N70, N69, N68, N67}) );
  std_calc_1_DW_mult_seq_0 DW_mult_seq_full ( .clk(clk), .rst_n(n6), .hold(
        1'b0), .start(start_mult), .a(eeg_minus_mean), .b(eeg_minus_mean), 
        .complete(complete_mult), .product({square_integer, square_frac, 
        SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, 
        SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, 
        SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, 
        SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, 
        SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, 
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32}) );
  std_calc_1_DW01_sub_0_DW01_sub_2 sub_140 ( .A({1'b0, mean[16:0]}), .B({1'b0, 
        eeg[16:0]}), .CI(1'b0), .DIFF({N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29, N28, N27, N26}) );
  std_calc_1_DW01_sub_1_DW01_sub_3 sub_138 ( .A({1'b0, eeg[16:0]}), .B({1'b0, 
        mean[16:0]}), .CI(1'b0), .DIFF({N25, N24, N23, N22, N21, N20, N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8}) );
  dfcrq1 complete_mult_pipe_reg ( .D(complete_mult), .CP(clk), .CDN(n6), .Q(
        complete_mult_pipe) );
  dfcrq1 complete_div_pipe_reg ( .D(complete_div), .CP(clk), .CDN(n7), .Q(
        complete_div_pipe) );
  dfcrq1 variance_for_sqrt_reg_11_ ( .D(n182), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[11]) );
  dfcrq1 variance_for_sqrt_reg_9_ ( .D(n184), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[9]) );
  dfcrq1 variance_for_sqrt_reg_7_ ( .D(n186), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[7]) );
  dfcrq1 variance_for_sqrt_reg_5_ ( .D(n188), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[5]) );
  dfcrq1 trunck_sum_zeros_reg_5_ ( .D(n219), .CP(clk), .CDN(n6), .Q(
        trunck_sum_zeros[5]) );
  dfcrq1 trunck_sum_zeros_reg_6_ ( .D(n221), .CP(clk), .CDN(n6), .Q(
        trunck_sum_zeros[6]) );
  dfcrq1 trunck_sum_zeros_reg_7_ ( .D(n223), .CP(clk), .CDN(n6), .Q(
        trunck_sum_zeros[7]) );
  dfcrq1 trunck_sum_zeros_reg_8_ ( .D(n225), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[8]) );
  dfcrq1 trunck_sum_zeros_reg_9_ ( .D(n227), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[9]) );
  dfcrq1 trunck_sum_zeros_reg_10_ ( .D(n229), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[10]) );
  dfcrq1 trunck_sum_zeros_reg_11_ ( .D(n231), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[11]) );
  dfcrq1 trunck_sum_zeros_reg_12_ ( .D(n233), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[12]) );
  dfcrq1 trunck_sum_zeros_reg_13_ ( .D(n235), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[13]) );
  dfcrq1 trunck_sum_zeros_reg_14_ ( .D(n237), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[14]) );
  dfcrq1 trunck_sum_zeros_reg_15_ ( .D(n239), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[15]) );
  dfcrq1 trunck_sum_zeros_reg_16_ ( .D(n241), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[16]) );
  dfcrq1 trunck_sum_zeros_reg_17_ ( .D(n243), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[17]) );
  dfcrq1 trunck_sum_zeros_reg_18_ ( .D(n245), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[18]) );
  dfcrq1 trunck_sum_zeros_reg_19_ ( .D(n247), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[19]) );
  dfcrq1 trunck_sum_zeros_reg_20_ ( .D(n249), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[20]) );
  dfcrq1 trunck_sum_zeros_reg_21_ ( .D(n251), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[21]) );
  dfcrq1 trunck_sum_zeros_reg_22_ ( .D(n253), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[22]) );
  dfcrq1 trunck_sum_zeros_reg_23_ ( .D(n255), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[23]) );
  dfcrq1 trunck_sum_zeros_reg_24_ ( .D(n257), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[24]) );
  dfcrq1 trunck_sum_zeros_reg_25_ ( .D(n259), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[25]) );
  dfcrq1 trunck_sum_zeros_reg_26_ ( .D(n261), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[26]) );
  dfcrq1 trunck_sum_zeros_reg_27_ ( .D(n263), .CP(clk), .CDN(n7), .Q(
        trunck_sum_zeros[27]) );
  dfcrq1 trunck_sum_zeros_reg_4_ ( .D(n217), .CP(clk), .CDN(n6), .Q(
        trunck_sum_zeros[4]) );
  dfcrq1 variance_for_sqrt_reg_19_ ( .D(n174), .CP(clk), .CDN(n7), .Q(
        variance_for_sqrt[19]) );
  dfcrq1 variance_for_sqrt_reg_18_ ( .D(n175), .CP(clk), .CDN(n7), .Q(
        variance_for_sqrt[18]) );
  dfcrq1 variance_for_sqrt_reg_17_ ( .D(n176), .CP(clk), .CDN(n7), .Q(
        variance_for_sqrt[17]) );
  dfcrq1 variance_for_sqrt_reg_16_ ( .D(n177), .CP(clk), .CDN(n7), .Q(
        variance_for_sqrt[16]) );
  dfcrq1 variance_for_sqrt_reg_15_ ( .D(n178), .CP(clk), .CDN(n7), .Q(
        variance_for_sqrt[15]) );
  dfcrq1 variance_for_sqrt_reg_14_ ( .D(n179), .CP(clk), .CDN(n7), .Q(
        variance_for_sqrt[14]) );
  dfcrq1 variance_for_sqrt_reg_13_ ( .D(n180), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[13]) );
  dfcrq1 variance_for_sqrt_reg_12_ ( .D(n181), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[12]) );
  dfcrq1 variance_for_sqrt_reg_10_ ( .D(n183), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[10]) );
  dfcrq1 variance_for_sqrt_reg_8_ ( .D(n185), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[8]) );
  dfcrq1 variance_for_sqrt_reg_6_ ( .D(n187), .CP(clk), .CDN(n8), .Q(
        variance_for_sqrt[6]) );
  dfcrq1 variance_for_sqrt_reg_4_ ( .D(n189), .CP(clk), .CDN(n6), .Q(
        variance_for_sqrt[4]) );
  dfcrq1 eeg_minus_mean_reg_17_ ( .D(n190), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[17]) );
  dfcrq1 eeg_minus_mean_reg_16_ ( .D(n191), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[16]) );
  dfcrq1 eeg_minus_mean_reg_15_ ( .D(n192), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[15]) );
  dfcrq1 eeg_minus_mean_reg_14_ ( .D(n193), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[14]) );
  dfcrq1 eeg_minus_mean_reg_13_ ( .D(n194), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[13]) );
  dfcrq1 eeg_minus_mean_reg_12_ ( .D(n195), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[12]) );
  dfcrq1 eeg_minus_mean_reg_11_ ( .D(n196), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[11]) );
  dfcrq1 eeg_minus_mean_reg_10_ ( .D(n197), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[10]) );
  dfcrq1 eeg_minus_mean_reg_9_ ( .D(n198), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[9]) );
  dfcrq1 eeg_minus_mean_reg_8_ ( .D(n199), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[8]) );
  dfcrq1 eeg_minus_mean_reg_7_ ( .D(n200), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[7]) );
  dfcrq1 eeg_minus_mean_reg_6_ ( .D(n201), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[6]) );
  dfcrq1 eeg_minus_mean_reg_5_ ( .D(n202), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[5]) );
  dfcrq1 eeg_minus_mean_reg_4_ ( .D(n203), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[4]) );
  dfcrq1 eeg_minus_mean_reg_3_ ( .D(n204), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[3]) );
  dfcrq1 eeg_minus_mean_reg_2_ ( .D(n205), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[2]) );
  dfcrq1 eeg_minus_mean_reg_1_ ( .D(n206), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[1]) );
  dfcrq1 eeg_minus_mean_reg_0_ ( .D(n207), .CP(clk), .CDN(n6), .Q(
        eeg_minus_mean[0]) );
  dfcrq1 sum_reg_31_ ( .D(n262), .CP(clk), .CDN(n7), .Q(sum[31]) );
  dfcrq1 start_acc_reg ( .D(N63), .CP(clk), .CDN(n6), .Q(start_acc) );
  dfcrq1 sum_reg_30_ ( .D(n260), .CP(clk), .CDN(n7), .Q(sum[30]) );
  dfcrq1 sum_reg_29_ ( .D(n258), .CP(clk), .CDN(n7), .Q(sum[29]) );
  dfcrq1 sum_reg_28_ ( .D(n256), .CP(clk), .CDN(n7), .Q(sum[28]) );
  dfcrq1 sum_reg_27_ ( .D(n254), .CP(clk), .CDN(n7), .Q(sum[27]) );
  dfcrq1 sum_reg_26_ ( .D(n252), .CP(clk), .CDN(n7), .Q(sum[26]) );
  dfcrq1 sum_reg_25_ ( .D(n250), .CP(clk), .CDN(n7), .Q(sum[25]) );
  dfcrq1 start_mult_reg ( .D(start), .CP(clk), .CDN(n6), .Q(start_mult) );
  dfcrq1 sum_reg_24_ ( .D(n248), .CP(clk), .CDN(n7), .Q(sum[24]) );
  dfcrq1 start_sqrt_reg ( .D(N103), .CP(clk), .CDN(n7), .Q(start_sqrt) );
  dfcrq1 sum_reg_23_ ( .D(n246), .CP(clk), .CDN(n7), .Q(sum[23]) );
  dfcrq1 sum_reg_22_ ( .D(n244), .CP(clk), .CDN(n7), .Q(sum[22]) );
  dfcrq1 sum_reg_21_ ( .D(n242), .CP(clk), .CDN(n7), .Q(sum[21]) );
  dfcrq1 sum_reg_20_ ( .D(n240), .CP(clk), .CDN(n7), .Q(sum[20]) );
  dfcrq1 sum_reg_19_ ( .D(n238), .CP(clk), .CDN(n7), .Q(sum[19]) );
  dfcrq1 sum_reg_18_ ( .D(n236), .CP(clk), .CDN(n7), .Q(sum[18]) );
  dfcrq1 sum_reg_17_ ( .D(n234), .CP(clk), .CDN(n7), .Q(sum[17]) );
  dfcrq1 sum_reg_16_ ( .D(n232), .CP(clk), .CDN(n7), .Q(sum[16]) );
  dfcrq1 sum_reg_15_ ( .D(n230), .CP(clk), .CDN(n7), .Q(sum[15]) );
  dfcrq1 sum_reg_14_ ( .D(n228), .CP(clk), .CDN(n7), .Q(sum[14]) );
  dfcrq1 sum_reg_13_ ( .D(n226), .CP(clk), .CDN(n7), .Q(sum[13]) );
  dfcrq1 sum_reg_12_ ( .D(n224), .CP(clk), .CDN(n7), .Q(sum[12]) );
  dfcrq1 sum_reg_11_ ( .D(n222), .CP(clk), .CDN(n6), .Q(sum[11]) );
  dfcrq1 sum_reg_10_ ( .D(n220), .CP(clk), .CDN(n6), .Q(sum[10]) );
  dfcrq1 sum_reg_9_ ( .D(n218), .CP(clk), .CDN(n6), .Q(sum[9]) );
  dfcrq1 sum_reg_8_ ( .D(n216), .CP(clk), .CDN(n6), .Q(sum[8]) );
  dfcrq1 sum_reg_7_ ( .D(n215), .CP(clk), .CDN(n6), .Q(sum[7]) );
  dfcrq1 sum_reg_6_ ( .D(n214), .CP(clk), .CDN(n6), .Q(sum[6]) );
  dfcrq1 sum_reg_5_ ( .D(n213), .CP(clk), .CDN(n6), .Q(sum[5]) );
  dfcrq1 sum_reg_4_ ( .D(n212), .CP(clk), .CDN(n6), .Q(sum[4]) );
  dfcrq1 sum_reg_3_ ( .D(n211), .CP(clk), .CDN(n6), .Q(sum[3]) );
  dfcrq1 sum_reg_2_ ( .D(n210), .CP(clk), .CDN(n6), .Q(sum[2]) );
  dfcrq1 sum_reg_1_ ( .D(n208), .CP(clk), .CDN(n6), .Q(sum[1]) );
  dfcrq1 sum_reg_0_ ( .D(n209), .CP(clk), .CDN(n6), .Q(sum[0]) );
  inv0d1 U8 ( .I(complete_acc), .ZN(n4) );
  inv0d1 U9 ( .I(complete_div), .ZN(n5) );
  bufbd4 U55 ( .I(reset_n), .Z(n6) );
  inv0d0 U65 ( .I(start_acc), .ZN(n12) );
  bufbd4 U84 ( .I(reset_n), .Z(n7) );
  buffd1 U85 ( .I(reset_n), .Z(n8) );
  inv0d0 U86 ( .I(mean[13]), .ZN(n165) );
  inv0d0 U103 ( .I(mean[14]), .ZN(n160) );
  inv0d0 U104 ( .I(mean[10]), .ZN(n169) );
  inv0d0 U105 ( .I(mean[6]), .ZN(n162) );
  inv0d0 U106 ( .I(mean[12]), .ZN(n167) );
  inv0d0 U115 ( .I(n4), .ZN(n17) );
  nr02d1 U116 ( .A1(n173), .A2(N6), .ZN(n264) );
  inv0d0 U117 ( .I(n128), .ZN(n166) );
  inv0d0 U118 ( .I(n130), .ZN(n170) );
  inv0d0 U119 ( .I(n139), .ZN(n168) );
  inv0d0 U120 ( .I(n138), .ZN(n163) );
  inv0d0 U121 ( .I(n113), .ZN(n115) );
  inv0d0 U122 ( .I(n12), .ZN(n10) );
  inv0d0 U123 ( .I(n12), .ZN(n9) );
  inv0d0 U124 ( .I(n12), .ZN(n11) );
  buffd1 U125 ( .I(n4), .Z(n108) );
  inv0d0 U126 ( .I(n124), .ZN(n161) );
  inv0d0 U127 ( .I(eeg[16]), .ZN(n158) );
  an02d1 U128 ( .A1(N6), .A2(start), .Z(n265) );
  inv0d0 U129 ( .I(n116), .ZN(n164) );
  inv0d0 U130 ( .I(n125), .ZN(n171) );
  inv0d0 U131 ( .I(mean[1]), .ZN(n159) );
  inv0d0 U132 ( .I(eeg[11]), .ZN(n156) );
  inv0d0 U133 ( .I(eeg[15]), .ZN(n157) );
  inv0d0 U134 ( .I(eeg[7]), .ZN(n153) );
  inv0d0 U135 ( .I(count[0]), .ZN(count_minus_one[0]) );
  inv0d0 U136 ( .I(eeg[9]), .ZN(n155) );
  inv0d0 U137 ( .I(eeg[3]), .ZN(n150) );
  inv0d0 U138 ( .I(eeg[5]), .ZN(n152) );
  inv0d0 U139 ( .I(eeg[8]), .ZN(n154) );
  inv0d0 U140 ( .I(eeg[2]), .ZN(n149) );
  inv0d0 U141 ( .I(eeg[4]), .ZN(n151) );
  nr02d1 U142 ( .A1(complete_div_pipe), .A2(n5), .ZN(N103) );
  inv0d1 U143 ( .I(start), .ZN(n173) );
  inv0d1 U144 ( .I(start_acc), .ZN(n15) );
  nr02d1 U145 ( .A1(complete_mult_pipe), .A2(n172), .ZN(N63) );
  inv0d0 U146 ( .I(complete_mult), .ZN(n172) );
  inv0d1 U147 ( .I(start_acc), .ZN(n16) );
  nd12d0 U148 ( .A1(count[1]), .A2(count_minus_one[0]), .ZN(n109) );
  oaim21d1 U149 ( .B1(count[0]), .B2(count[1]), .A(n109), .ZN(
        count_minus_one[1]) );
  or02d0 U150 ( .A1(n109), .A2(count[2]), .Z(n110) );
  oaim21d1 U151 ( .B1(n109), .B2(count[2]), .A(n110), .ZN(count_minus_one[2])
         );
  or02d0 U152 ( .A1(n110), .A2(count[3]), .Z(n111) );
  oaim21d1 U153 ( .B1(n110), .B2(count[3]), .A(n111), .ZN(count_minus_one[3])
         );
  or02d0 U154 ( .A1(n111), .A2(count[4]), .Z(n112) );
  oaim21d1 U155 ( .B1(n111), .B2(count[4]), .A(n112), .ZN(count_minus_one[4])
         );
  nr02d0 U156 ( .A1(n112), .A2(count[5]), .ZN(n113) );
  oaim21d1 U157 ( .B1(n112), .B2(count[5]), .A(n115), .ZN(count_minus_one[5])
         );
  xr02d1 U158 ( .A1(count[6]), .A2(n113), .Z(count_minus_one[6]) );
  nr02d0 U159 ( .A1(count[6]), .A2(n115), .ZN(n114) );
  xr02d1 U160 ( .A1(count[7]), .A2(n114), .Z(count_minus_one[7]) );
  nd02d0 U161 ( .A1(mean[7]), .A2(n153), .ZN(n134) );
  oai21d1 U162 ( .B1(eeg[6]), .B2(n162), .A(n134), .ZN(n116) );
  an02d0 U163 ( .A1(mean[3]), .A2(n150), .Z(n118) );
  nr03d0 U164 ( .A1(n118), .A2(mean[2]), .A3(n149), .ZN(n117) );
  aoim21d1 U165 ( .B1(mean[3]), .B2(n150), .A(n117), .ZN(n120) );
  aon211d1 U166 ( .C1(mean[2]), .C2(n149), .B(n118), .A(n120), .ZN(n141) );
  aoim21d1 U167 ( .B1(n159), .B2(eeg[1]), .A(mean[0]), .ZN(n119) );
  aoi22d1 U168 ( .A1(eeg[1]), .A2(n159), .B1(n119), .B2(eeg[0]), .ZN(n121) );
  an02d0 U169 ( .A1(mean[5]), .A2(n152), .Z(n136) );
  aoi221d1 U170 ( .B1(n121), .B2(n120), .C1(mean[4]), .C2(n151), .A(n136), 
        .ZN(n140) );
  nd02d0 U171 ( .A1(mean[15]), .A2(n157), .ZN(n123) );
  nd03d0 U172 ( .A1(n123), .A2(n160), .A3(eeg[14]), .ZN(n122) );
  oai21d1 U173 ( .B1(mean[15]), .B2(n157), .A(n122), .ZN(n124) );
  oai21d1 U174 ( .B1(eeg[14]), .B2(n160), .A(n123), .ZN(n133) );
  nr02d0 U175 ( .A1(eeg[13]), .A2(n165), .ZN(n128) );
  aoi321d1 U176 ( .C1(n166), .C2(n167), .C3(eeg[12]), .B1(eeg[13]), .B2(n165), 
        .A(n124), .ZN(n132) );
  nd02d0 U177 ( .A1(mean[11]), .A2(n156), .ZN(n126) );
  oai21d1 U178 ( .B1(eeg[10]), .B2(n169), .A(n126), .ZN(n125) );
  nd03d0 U179 ( .A1(n126), .A2(n169), .A3(eeg[10]), .ZN(n127) );
  oai21d1 U180 ( .B1(mean[11]), .B2(n156), .A(n127), .ZN(n130) );
  an02d0 U181 ( .A1(mean[9]), .A2(n155), .Z(n143) );
  oai321d1 U182 ( .C1(n154), .C2(mean[8]), .C3(n143), .B1(mean[9]), .B2(n155), 
        .A(n170), .ZN(n129) );
  aoim211d1 U183 ( .C1(eeg[12]), .C2(n167), .A(n128), .B(n133), .ZN(n142) );
  oai211d1 U184 ( .C1(n171), .C2(n130), .A(n129), .B(n142), .ZN(n131) );
  aon211d1 U185 ( .C1(n161), .C2(n133), .B(n132), .A(n131), .ZN(n145) );
  nd03d0 U186 ( .A1(n134), .A2(n162), .A3(eeg[6]), .ZN(n135) );
  oai21d1 U187 ( .B1(mean[7]), .B2(n153), .A(n135), .ZN(n138) );
  oai321d1 U188 ( .C1(n136), .C2(mean[4]), .C3(n151), .B1(n152), .B2(mean[5]), 
        .A(n163), .ZN(n137) );
  oai21d1 U189 ( .B1(n138), .B2(n164), .A(n137), .ZN(n139) );
  aoi311d1 U190 ( .C1(n164), .C2(n141), .C3(n140), .A(n145), .B(n168), .ZN(
        n148) );
  nd02d0 U191 ( .A1(n171), .A2(n142), .ZN(n144) );
  aoi211d1 U192 ( .C1(mean[8]), .C2(n154), .A(n144), .B(n143), .ZN(n146) );
  oaim22d1 U193 ( .A1(n146), .A2(n145), .B1(n158), .B2(mean[16]), .ZN(n147) );
  oai22d1 U194 ( .A1(mean[16]), .A2(n158), .B1(n148), .B2(n147), .ZN(N6) );
endmodule


module param_calc_DW01_add_0_DW01_add_1 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:2] carry;

  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  an02d1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  xr02d1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module param_calc_DW01_inc_0_DW01_inc_3 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ah01d1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ah01d1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ah01d1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ah01d1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ah01d1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ah01d1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  inv0d0 U1 ( .I(A[0]), .ZN(SUM[0]) );
  xr02d1 U2 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
endmodule


module param_calc_DW01_inc_1_DW01_inc_4 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ah01d1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ah01d1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ah01d1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ah01d1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ah01d1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ah01d1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  inv0d0 U1 ( .I(A[0]), .ZN(SUM[0]) );
  xr02d1 U2 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
endmodule


module param_calc_DW01_inc_2_DW01_inc_5 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ah01d1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ah01d1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ah01d1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ah01d1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ah01d1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ah01d1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  inv0d0 U1 ( .I(A[0]), .ZN(SUM[0]) );
  xr02d1 U2 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
endmodule


module param_calc ( clk, reset_n, start, pc_fifo_data, pc_fifo_addr, 
        pc_fifo_read, mean_pos, std_pos, mean_neg, std_neg, param_calc_finish
 );
  input [17:0] pc_fifo_data;
  output [7:0] pc_fifo_addr;
  output [17:0] mean_pos;
  output [18:0] std_pos;
  output [17:0] mean_neg;
  output [18:0] std_neg;
  input clk, reset_n, start;
  output pc_fifo_read, param_calc_finish;
  wire   N32, complete_div_pos, complete_div_neg, start_mean_pos, start_div,
         start_mean_neg, start_std_pos_rise, complete_acc_pos7_pulse,
         complete_std_sqrt_pos, start_std_neg_rise, complete_acc_neg7_pulse,
         complete_std_sqrt_neg, enter_std_finish_d, complete_std_pos,
         complete_std_neg, complete_std_sqrt_pos_d, complete_std_sqrt_neg_d,
         N118, N119, N120, N121, N122, N123, N124, N125, N126, N127, N128,
         N129, N130, N131, N132, N133, N134, N135, N139, N144, N145, N146,
         N147, N148, N149, N150, N151, N170, N174, N176, N183, N184, N185,
         N186, N187, N188, N189, N190, N195, N196, N197, N198, N199, N200,
         N201, N202, complete_acc_pos, complete_acc_neg, complete_acc_pos_d1,
         complete_acc_neg_d1, complete_acc_pos_d2, complete_acc_neg_d2,
         complete_acc_pos_d3, complete_acc_neg_d3, complete_acc_pos_d4,
         complete_acc_neg_d4, complete_acc_pos_d5, complete_acc_neg_d5,
         complete_acc_pos_d6, complete_acc_neg_d6, complete_acc_pos_d7,
         complete_acc_neg_d7, complete_acc_pos_d8, complete_acc_neg_d8,
         complete_acc_pos_d9, complete_acc_neg_d9, N224, N226, N239, N245,
         enter_mean_div, N248, N249, N250, N251, N252, N253, N254, N255, N256,
         enter_std_finish, n19, n20, n24, n25, n26, n29, n37, n38, n48, n49,
         n50, n51, n52, n54, n55, n56, n57, n58, n59, n61, n62, n63, n64, n67,
         n68, n69, n70, n71, n73, n74, n75, n76, n77, n79, n81, n82, n88, n89,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n1, n2, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n21, n22, n23, n27,
         n28, n30, n31, n32, n33, n34, n35, n36, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n53, n60, n65, n66, n72, n78, n80, n83, n84, n85, n86,
         n87, n90, n167, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17,
         SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19,
         SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21,
         SYNOPSYS_UNCONNECTED_22;
  wire   [1:0] clk_addr_cnt;
  wire   [17:0] eeg_pos;
  wire   [7:0] count_pos;
  wire   [17:0] eeg_neg;
  wire   [7:0] count_neg;
  wire   [17:0] eeg_data_d4_pos;
  wire   [17:0] eeg_data_d4_neg;
  wire   [3:0] state;
  wire   [3:1] next_state;
  wire   [17:0] eeg_data;
  wire   [7:0] count_std_pos;
  wire   [7:0] count_std_neg;
  wire   [17:0] eeg_data_d;
  wire   [17:0] eeg_data_d2;
  wire   [17:0] eeg_data_d3;
  assign mean_pos[1] = 1'b0;
  assign mean_pos[0] = 1'b0;
  assign std_pos[18] = 1'b0;
  assign std_pos[7] = 1'b0;
  assign std_pos[6] = 1'b0;
  assign std_pos[5] = 1'b0;
  assign std_pos[4] = 1'b0;
  assign std_pos[3] = 1'b0;
  assign std_pos[2] = 1'b0;
  assign std_pos[1] = 1'b0;
  assign std_pos[0] = 1'b0;
  assign mean_neg[1] = 1'b0;
  assign mean_neg[0] = 1'b0;
  assign std_neg[18] = 1'b0;
  assign std_neg[7] = 1'b0;
  assign std_neg[6] = 1'b0;
  assign std_neg[5] = 1'b0;
  assign std_neg[4] = 1'b0;
  assign std_neg[3] = 1'b0;
  assign std_neg[2] = 1'b0;
  assign std_neg[1] = 1'b0;
  assign std_neg[0] = 1'b0;

  dfcrn1 complete_div_pos_d_reg ( .D(complete_div_pos), .CP(clk), .CDN(n65), 
        .QN(n169) );
  dfcrn1 enter_mean_div_d_reg ( .D(enter_mean_div), .CP(clk), .CDN(n72), .QN(
        n164) );
  dfcrn1 eeg_data_d4_reg_17_ ( .D(n28), .CP(clk), .CDN(n60), .QN(n163) );
  dfcrn1 count_std_pos_reg_3_ ( .D(n183), .CP(clk), .CDN(n53), .QN(n94) );
  dfcrn1 count_std_neg_reg_3_ ( .D(n175), .CP(clk), .CDN(n65), .QN(n93) );
  dfcrn1 complete_div_neg_d_reg ( .D(complete_div_neg), .CP(clk), .CDN(n66), 
        .QN(n170) );
  aor31d1 U4 ( .B1(n20), .B2(complete_std_neg), .B3(complete_std_pos), .A(n197), .Z(next_state[3]) );
  aor31d1 U5 ( .B1(complete_std_sqrt_neg), .B2(n236), .B3(n20), .A(
        complete_std_neg), .Z(n91) );
  aor21d1 U8 ( .B1(complete_acc_pos), .B2(complete_acc_neg), .A(
        enter_std_finish), .Z(n92) );
  aor22d1 U9 ( .A1(n43), .A2(eeg_data[0]), .B1(eeg_pos[0]), .B2(n41), .Z(n95)
         );
  aor22d1 U12 ( .A1(eeg_neg[0]), .A2(n47), .B1(eeg_data[0]), .B2(n41), .Z(n96)
         );
  aor22d1 U13 ( .A1(n36), .A2(eeg_data_d3[0]), .B1(eeg_data_d4_pos[0]), .B2(
        n22), .Z(n97) );
  aor22d1 U14 ( .A1(eeg_data_d4_neg[0]), .A2(n34), .B1(n28), .B2(
        eeg_data_d3[0]), .Z(n98) );
  aor22d1 U15 ( .A1(n45), .A2(eeg_data[1]), .B1(eeg_pos[1]), .B2(n41), .Z(n99)
         );
  aor22d1 U16 ( .A1(n42), .A2(eeg_data[1]), .B1(eeg_neg[1]), .B2(n43), .Z(n100) );
  aor22d1 U17 ( .A1(n36), .A2(eeg_data_d3[1]), .B1(eeg_data_d4_pos[1]), .B2(
        n27), .Z(n101) );
  aor22d1 U18 ( .A1(n28), .A2(eeg_data_d3[1]), .B1(eeg_data_d4_neg[1]), .B2(
        n30), .Z(n102) );
  aor22d1 U19 ( .A1(n46), .A2(eeg_data[2]), .B1(eeg_pos[2]), .B2(n41), .Z(n103) );
  aor22d1 U20 ( .A1(n42), .A2(eeg_data[2]), .B1(eeg_neg[2]), .B2(n44), .Z(n104) );
  aor22d1 U21 ( .A1(n36), .A2(eeg_data_d3[2]), .B1(eeg_data_d4_pos[2]), .B2(
        n27), .Z(n105) );
  aor22d1 U22 ( .A1(n28), .A2(eeg_data_d3[2]), .B1(eeg_data_d4_neg[2]), .B2(
        n30), .Z(n106) );
  aor22d1 U23 ( .A1(n45), .A2(eeg_data[3]), .B1(eeg_pos[3]), .B2(n40), .Z(n107) );
  aor22d1 U24 ( .A1(n42), .A2(eeg_data[3]), .B1(eeg_neg[3]), .B2(n44), .Z(n108) );
  aor22d1 U25 ( .A1(n36), .A2(eeg_data_d3[3]), .B1(eeg_data_d4_pos[3]), .B2(
        n27), .Z(n109) );
  aor22d1 U26 ( .A1(n28), .A2(eeg_data_d3[3]), .B1(eeg_data_d4_neg[3]), .B2(
        n31), .Z(n110) );
  aor22d1 U27 ( .A1(n43), .A2(eeg_data[4]), .B1(eeg_pos[4]), .B2(n41), .Z(n111) );
  aor22d1 U28 ( .A1(n42), .A2(eeg_data[4]), .B1(eeg_neg[4]), .B2(n43), .Z(n112) );
  aor22d1 U29 ( .A1(n36), .A2(eeg_data_d3[4]), .B1(eeg_data_d4_pos[4]), .B2(
        n27), .Z(n113) );
  aor22d1 U30 ( .A1(n28), .A2(eeg_data_d3[4]), .B1(eeg_data_d4_neg[4]), .B2(
        n31), .Z(n114) );
  aor22d1 U31 ( .A1(n45), .A2(eeg_data[5]), .B1(eeg_pos[5]), .B2(n41), .Z(n115) );
  aor22d1 U32 ( .A1(n42), .A2(eeg_data[5]), .B1(eeg_neg[5]), .B2(n45), .Z(n116) );
  aor22d1 U33 ( .A1(n35), .A2(eeg_data_d3[5]), .B1(eeg_data_d4_pos[5]), .B2(
        n27), .Z(n117) );
  aor22d1 U34 ( .A1(n28), .A2(eeg_data_d3[5]), .B1(eeg_data_d4_neg[5]), .B2(
        n32), .Z(n118) );
  aor22d1 U35 ( .A1(n46), .A2(eeg_data[6]), .B1(eeg_pos[6]), .B2(n41), .Z(n119) );
  aor22d1 U36 ( .A1(n42), .A2(eeg_data[6]), .B1(eeg_neg[6]), .B2(n46), .Z(n120) );
  aor22d1 U37 ( .A1(n35), .A2(eeg_data_d3[6]), .B1(eeg_data_d4_pos[6]), .B2(
        n23), .Z(n121) );
  aor22d1 U38 ( .A1(n27), .A2(eeg_data_d3[6]), .B1(eeg_data_d4_neg[6]), .B2(
        n32), .Z(n122) );
  aor22d1 U39 ( .A1(n46), .A2(eeg_data[7]), .B1(eeg_pos[7]), .B2(n40), .Z(n123) );
  aor22d1 U40 ( .A1(n42), .A2(eeg_data[7]), .B1(eeg_neg[7]), .B2(n45), .Z(n124) );
  aor22d1 U41 ( .A1(n35), .A2(eeg_data_d3[7]), .B1(eeg_data_d4_pos[7]), .B2(
        n27), .Z(n125) );
  aor22d1 U42 ( .A1(n27), .A2(eeg_data_d3[7]), .B1(eeg_data_d4_neg[7]), .B2(
        n33), .Z(n126) );
  aor22d1 U43 ( .A1(n45), .A2(eeg_data[8]), .B1(eeg_pos[8]), .B2(n40), .Z(n127) );
  aor22d1 U44 ( .A1(n42), .A2(eeg_data[8]), .B1(eeg_neg[8]), .B2(n46), .Z(n128) );
  aor22d1 U45 ( .A1(n35), .A2(eeg_data_d3[8]), .B1(eeg_data_d4_pos[8]), .B2(
        n23), .Z(n129) );
  aor22d1 U46 ( .A1(n27), .A2(eeg_data_d3[8]), .B1(eeg_data_d4_neg[8]), .B2(
        n33), .Z(n130) );
  aor22d1 U47 ( .A1(n43), .A2(eeg_data[9]), .B1(eeg_pos[9]), .B2(n40), .Z(n131) );
  aor22d1 U48 ( .A1(n42), .A2(eeg_data[9]), .B1(eeg_neg[9]), .B2(n47), .Z(n132) );
  aor22d1 U49 ( .A1(n35), .A2(eeg_data_d3[9]), .B1(eeg_data_d4_pos[9]), .B2(
        n23), .Z(n133) );
  aor22d1 U50 ( .A1(n28), .A2(eeg_data_d3[9]), .B1(eeg_data_d4_neg[9]), .B2(
        n34), .Z(n134) );
  aor22d1 U51 ( .A1(n43), .A2(eeg_data[10]), .B1(eeg_pos[10]), .B2(n40), .Z(
        n135) );
  aor22d1 U52 ( .A1(eeg_neg[10]), .A2(n47), .B1(eeg_data[10]), .B2(n40), .Z(
        n136) );
  aor22d1 U53 ( .A1(n35), .A2(eeg_data_d3[10]), .B1(eeg_data_d4_pos[10]), .B2(
        n23), .Z(n137) );
  aor22d1 U54 ( .A1(eeg_data_d4_neg[10]), .A2(n34), .B1(eeg_data_d3[10]), .B2(
        n23), .Z(n138) );
  aor22d1 U55 ( .A1(n46), .A2(eeg_data[11]), .B1(eeg_pos[11]), .B2(n40), .Z(
        n139) );
  aor22d1 U56 ( .A1(eeg_neg[11]), .A2(n47), .B1(eeg_data[11]), .B2(n40), .Z(
        n140) );
  aor22d1 U57 ( .A1(n35), .A2(eeg_data_d3[11]), .B1(eeg_data_d4_pos[11]), .B2(
        n23), .Z(n141) );
  aor22d1 U58 ( .A1(eeg_data_d4_neg[11]), .A2(n34), .B1(eeg_data_d3[11]), .B2(
        n23), .Z(n142) );
  aor22d1 U59 ( .A1(n43), .A2(eeg_data[12]), .B1(eeg_pos[12]), .B2(n39), .Z(
        n143) );
  aor22d1 U60 ( .A1(eeg_neg[12]), .A2(n47), .B1(eeg_data[12]), .B2(n39), .Z(
        n144) );
  aor22d1 U61 ( .A1(n35), .A2(eeg_data_d3[12]), .B1(eeg_data_d4_pos[12]), .B2(
        n23), .Z(n145) );
  aor22d1 U62 ( .A1(eeg_data_d4_neg[12]), .A2(n34), .B1(eeg_data_d3[12]), .B2(
        n22), .Z(n146) );
  aor22d1 U63 ( .A1(n45), .A2(eeg_data[13]), .B1(eeg_pos[13]), .B2(n40), .Z(
        n147) );
  aor22d1 U64 ( .A1(eeg_neg[13]), .A2(n47), .B1(eeg_data[13]), .B2(n39), .Z(
        n148) );
  aor22d1 U65 ( .A1(n35), .A2(eeg_data_d3[13]), .B1(eeg_data_d4_pos[13]), .B2(
        n23), .Z(n149) );
  aor22d1 U66 ( .A1(eeg_data_d4_neg[13]), .A2(n34), .B1(eeg_data_d3[13]), .B2(
        n22), .Z(n150) );
  aor22d1 U67 ( .A1(n46), .A2(eeg_data[14]), .B1(eeg_pos[14]), .B2(n39), .Z(
        n151) );
  aor22d1 U68 ( .A1(eeg_neg[14]), .A2(n47), .B1(eeg_data[14]), .B2(n39), .Z(
        n152) );
  aor22d1 U69 ( .A1(n35), .A2(eeg_data_d3[14]), .B1(eeg_data_d4_pos[14]), .B2(
        n22), .Z(n153) );
  aor22d1 U70 ( .A1(eeg_data_d4_neg[14]), .A2(n34), .B1(eeg_data_d3[14]), .B2(
        n22), .Z(n154) );
  aor22d1 U71 ( .A1(n46), .A2(eeg_data[15]), .B1(eeg_pos[15]), .B2(n39), .Z(
        n155) );
  aor22d1 U72 ( .A1(eeg_neg[15]), .A2(n43), .B1(eeg_data[15]), .B2(n39), .Z(
        n156) );
  aor22d1 U73 ( .A1(n36), .A2(eeg_data_d3[15]), .B1(eeg_data_d4_pos[15]), .B2(
        n22), .Z(n157) );
  aor22d1 U74 ( .A1(eeg_data_d4_neg[15]), .A2(n34), .B1(eeg_data_d3[15]), .B2(
        n22), .Z(n158) );
  aor22d1 U75 ( .A1(n45), .A2(eeg_data[16]), .B1(eeg_pos[16]), .B2(n39), .Z(
        n159) );
  aor22d1 U76 ( .A1(eeg_neg[16]), .A2(n47), .B1(eeg_data[16]), .B2(n39), .Z(
        n160) );
  aor22d1 U77 ( .A1(n36), .A2(eeg_data_d3[16]), .B1(eeg_data_d4_pos[16]), .B2(
        n22), .Z(n161) );
  aor22d1 U78 ( .A1(eeg_data_d4_neg[16]), .A2(n34), .B1(eeg_data_d3[16]), .B2(
        n22), .Z(n162) );
  aor31d1 U79 ( .B1(n24), .B2(n25), .B3(n26), .A(enter_mean_div), .Z(n165) );
  aor31d1 U84 ( .B1(complete_std_sqrt_pos), .B2(n213), .B3(n20), .A(
        complete_std_pos), .Z(n166) );
  oaim22d1 U87 ( .A1(n29), .A2(n227), .B1(N202), .B2(n29), .ZN(n171) );
  oaim22d1 U88 ( .A1(n29), .A2(n234), .B1(N201), .B2(n29), .ZN(n172) );
  oaim22d1 U89 ( .A1(n29), .A2(n233), .B1(N200), .B2(n29), .ZN(n173) );
  oaim22d1 U90 ( .A1(n29), .A2(n232), .B1(N199), .B2(n29), .ZN(n174) );
  oaim22d1 U91 ( .A1(n93), .A2(n29), .B1(N198), .B2(n29), .ZN(n175) );
  oaim22d1 U92 ( .A1(n29), .A2(n230), .B1(N197), .B2(n29), .ZN(n176) );
  oaim22d1 U93 ( .A1(n29), .A2(n228), .B1(N195), .B2(n29), .ZN(n177) );
  oaim22d1 U94 ( .A1(n29), .A2(n229), .B1(N196), .B2(n29), .ZN(n178) );
  oaim22d1 U96 ( .A1(n38), .A2(n218), .B1(N190), .B2(n38), .ZN(n179) );
  oaim22d1 U97 ( .A1(n38), .A2(n225), .B1(N189), .B2(n38), .ZN(n180) );
  oaim22d1 U98 ( .A1(n38), .A2(n224), .B1(N188), .B2(n38), .ZN(n181) );
  oaim22d1 U99 ( .A1(n38), .A2(n223), .B1(N187), .B2(n38), .ZN(n182) );
  oaim22d1 U100 ( .A1(n94), .A2(n38), .B1(N186), .B2(n38), .ZN(n183) );
  oaim22d1 U101 ( .A1(n38), .A2(n221), .B1(N185), .B2(n38), .ZN(n184) );
  oaim22d1 U102 ( .A1(n38), .A2(n219), .B1(N183), .B2(n38), .ZN(n185) );
  oaim22d1 U103 ( .A1(n38), .A2(n220), .B1(N184), .B2(n38), .ZN(n186) );
  aor22d1 U105 ( .A1(pc_fifo_addr[7]), .A2(n205), .B1(N151), .B2(n48), .Z(n187) );
  aor22d1 U106 ( .A1(pc_fifo_addr[5]), .A2(n205), .B1(N149), .B2(n48), .Z(n188) );
  aor22d1 U107 ( .A1(pc_fifo_addr[4]), .A2(n205), .B1(N148), .B2(n48), .Z(n189) );
  aor22d1 U108 ( .A1(pc_fifo_addr[3]), .A2(n205), .B1(N147), .B2(n48), .Z(n190) );
  aor22d1 U109 ( .A1(pc_fifo_addr[2]), .A2(n205), .B1(N146), .B2(n48), .Z(n191) );
  aor22d1 U110 ( .A1(pc_fifo_addr[1]), .A2(n205), .B1(N145), .B2(n48), .Z(n192) );
  aor22d1 U111 ( .A1(pc_fifo_addr[0]), .A2(n205), .B1(N144), .B2(n48), .Z(n193) );
  aor22d1 U112 ( .A1(pc_fifo_addr[6]), .A2(n205), .B1(N150), .B2(n48), .Z(n194) );
  xr02d1 U142 ( .A1(clk_addr_cnt[1]), .A2(clk_addr_cnt[0]), .Z(N32) );
  aoi31d1 U144 ( .B1(n59), .B2(n200), .B3(state[2]), .A(n61), .ZN(n58) );
  oaim31d1 U145 ( .B1(n62), .B2(n200), .B3(n163), .A(n63), .ZN(N239) );
  oai321d1 U155 ( .C1(n47), .C2(n64), .C3(n69), .B1(n163), .B2(n70), .A(n71), 
        .ZN(next_state[1]) );
  aoi321d1 U160 ( .C1(n52), .C2(n59), .C3(start), .B1(n41), .B2(n73), .A(n76), 
        .ZN(n75) );
  aoi22d1 U162 ( .A1(n169), .A2(complete_div_pos), .B1(n170), .B2(
        complete_div_neg), .ZN(n64) );
  oai22d1 U163 ( .A1(n77), .A2(n216), .B1(state[2]), .B2(n79), .ZN(n73) );
  aoi21d1 U166 ( .B1(enter_std_finish_d), .B2(n208), .A(n81), .ZN(n74) );
  oai211d1 U168 ( .C1(n164), .C2(n77), .A(n70), .B(n82), .ZN(next_state[2]) );
  aoi21d1 U170 ( .B1(complete_std_neg), .B2(complete_std_pos), .A(n207), .ZN(
        n81) );
  oai31d1 U179 ( .B1(n49), .B2(clk_addr_cnt[1]), .B3(clk_addr_cnt[0]), .A(n51), 
        .ZN(N170) );
  aon211d1 U181 ( .C1(state[2]), .C2(state[0]), .B(n209), .A(n211), .ZN(n88)
         );
  aoim21d1 U184 ( .B1(state[2]), .B2(n79), .A(n212), .ZN(n49) );
  an04d1 U3 ( .A1(n202), .A2(n201), .A3(next_state[2]), .A4(n19), .Z(start_div) );
  nr04d1 U80 ( .A1(N250), .A2(N249), .A3(N248), .A4(n203), .ZN(n26) );
  nr03d1 U82 ( .A1(N254), .A2(N256), .A3(N255), .ZN(n25) );
  an02d1 U113 ( .A1(n49), .A2(n50), .Z(n48) );
  nd12d1 U116 ( .A1(eeg_neg[17]), .A2(n47), .ZN(n195) );
  nd12d1 U117 ( .A1(eeg_data_d4_neg[17]), .A2(n34), .ZN(n196) );
  an03d1 U119 ( .A1(n52), .A2(n210), .A3(state[3]), .Z(n197) );
  nd04d1 U121 ( .A1(n219), .A2(n220), .A3(n221), .A4(n223), .ZN(n55) );
  nd04d1 U126 ( .A1(n224), .A2(n225), .A3(n218), .A4(n222), .ZN(n54) );
  nd04d1 U131 ( .A1(n228), .A2(n229), .A3(n230), .A4(n232), .ZN(n57) );
  nd04d1 U136 ( .A1(n233), .A2(n234), .A3(n227), .A4(n231), .ZN(n56) );
  nr04d1 U151 ( .A1(next_state[2]), .A2(n67), .A3(n201), .A4(n202), .ZN(N176)
         );
  nr04d1 U153 ( .A1(next_state[2]), .A2(n168), .A3(n68), .A4(n202), .ZN(N174)
         );
  nr03d1 U161 ( .A1(n69), .A2(n41), .A3(n64), .ZN(n76) );
  nr03d1 U172 ( .A1(n215), .A2(n217), .A3(n209), .ZN(n20) );
  nr03d1 U174 ( .A1(n215), .A2(state[0]), .A3(n209), .ZN(n37) );
  nr03d1 U176 ( .A1(n217), .A2(state[2]), .A3(n209), .ZN(n67) );
  an02d1 U177 ( .A1(n52), .A2(n19), .Z(n68) );
  nd04d1 U180 ( .A1(clk_addr_cnt[1]), .A2(N139), .A3(n88), .A4(clk_addr_cnt[0]), .ZN(n51) );
  an02d1 U188 ( .A1(pc_fifo_data[17]), .A2(n89), .Z(N135) );
  an02d1 U189 ( .A1(pc_fifo_data[16]), .A2(n89), .Z(N134) );
  an02d1 U190 ( .A1(pc_fifo_data[15]), .A2(n89), .Z(N133) );
  an02d1 U191 ( .A1(pc_fifo_data[14]), .A2(n89), .Z(N132) );
  an02d1 U192 ( .A1(pc_fifo_data[13]), .A2(n89), .Z(N131) );
  an02d1 U193 ( .A1(pc_fifo_data[12]), .A2(n89), .Z(N130) );
  an02d1 U194 ( .A1(pc_fifo_data[11]), .A2(n89), .Z(N129) );
  an02d1 U195 ( .A1(pc_fifo_data[10]), .A2(n89), .Z(N128) );
  an02d1 U196 ( .A1(pc_fifo_data[9]), .A2(n89), .Z(N127) );
  an02d1 U197 ( .A1(pc_fifo_data[8]), .A2(n89), .Z(N126) );
  an02d1 U198 ( .A1(pc_fifo_data[7]), .A2(n89), .Z(N125) );
  an02d1 U199 ( .A1(pc_fifo_data[6]), .A2(n89), .Z(N124) );
  an02d1 U200 ( .A1(pc_fifo_data[5]), .A2(n89), .Z(N123) );
  an02d1 U201 ( .A1(pc_fifo_data[4]), .A2(n89), .Z(N122) );
  an02d1 U202 ( .A1(pc_fifo_data[3]), .A2(n89), .Z(N121) );
  an02d1 U203 ( .A1(pc_fifo_data[2]), .A2(n89), .Z(N120) );
  an02d1 U204 ( .A1(pc_fifo_data[1]), .A2(n89), .Z(N119) );
  an02d1 U205 ( .A1(pc_fifo_data[0]), .A2(n89), .Z(N118) );
  nr03d1 U208 ( .A1(state[0]), .A2(state[3]), .A3(n215), .ZN(n62) );
  mean_calc_0 mean_calc_pos ( .clk(clk), .reset_n(n84), .start(start_mean_pos), 
        .eeg({1'b0, eeg_pos[16:0]}), .start_div(start_div), .complete_div(
        complete_div_pos), .mean({mean_pos[17:2], SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2}), .count(count_pos) );
  mean_calc_1 mean_calc_neg ( .clk(clk), .reset_n(n66), .start(start_mean_neg), 
        .eeg(eeg_neg), .start_div(start_div), .complete_div(complete_div_neg), 
        .mean({mean_neg[17:2], SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4}), .count(count_neg) );
  std_calc_0 std_calc_pos ( .clk(clk), .reset_n(n72), .start(
        start_std_pos_rise), .eeg({1'b0, eeg_data_d4_pos[16:0]}), .mean({
        mean_pos[17:2], 1'b0, 1'b0}), .count(count_pos), .complete_acc(
        complete_acc_pos7_pulse), .complete_sqrt(complete_std_sqrt_pos), 
        .std_dev({SYNOPSYS_UNCONNECTED_5, std_pos[17:8], 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13}) );
  std_calc_1 std_calc_neg ( .clk(clk), .reset_n(n53), .start(
        start_std_neg_rise), .eeg(eeg_data_d4_neg), .mean({mean_neg[17:2], 
        1'b0, 1'b0}), .count(count_neg), .complete_acc(complete_acc_neg7_pulse), .complete_sqrt(complete_std_sqrt_neg), .std_dev({SYNOPSYS_UNCONNECTED_14, 
        std_neg[17:8], SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22}) );
  param_calc_DW01_add_0_DW01_add_1 add_547 ( .A({1'b0, count_pos}), .B({1'b0, 
        count_neg}), .CI(1'b0), .SUM({N256, N255, N254, N253, N252, N251, N250, 
        N249, N248}) );
  param_calc_DW01_inc_0_DW01_inc_3 add_339_S2 ( .A({count_std_neg[7:4], n231, 
        count_std_neg[2:0]}), .SUM({N202, N201, N200, N199, N198, N197, N196, 
        N195}) );
  param_calc_DW01_inc_1_DW01_inc_4 add_334_S2 ( .A({count_std_pos[7:4], n222, 
        count_std_pos[2:0]}), .SUM({N190, N189, N188, N187, N186, N185, N184, 
        N183}) );
  param_calc_DW01_inc_2_DW01_inc_5 add_296_S2 ( .A(pc_fifo_addr), .SUM({N151, 
        N150, N149, N148, N147, N146, N145, N144}) );
  dfcrq1 complete_acc_pos_d9_reg ( .D(complete_acc_pos_d8), .CP(clk), .CDN(n7), 
        .Q(complete_acc_pos_d9) );
  dfcrq1 complete_acc_neg_d9_reg ( .D(complete_acc_neg_d8), .CP(clk), .CDN(n10), .Q(complete_acc_neg_d9) );
  dfcrq1 eeg_data_d4_neg_reg_17_ ( .D(n196), .CP(clk), .CDN(n12), .Q(
        eeg_data_d4_neg[17]) );
  dfcrq1 eeg_neg_reg_17_ ( .D(n195), .CP(clk), .CDN(n12), .Q(eeg_neg[17]) );
  dfcrq1 complete_acc_pos_d7_reg ( .D(complete_acc_pos_d6), .CP(clk), .CDN(n6), 
        .Q(complete_acc_pos_d7) );
  dfcrq1 complete_acc_neg_d7_reg ( .D(complete_acc_neg_d6), .CP(clk), .CDN(n9), 
        .Q(complete_acc_neg_d7) );
  dfcrq1 enter_std_finish_reg ( .D(n92), .CP(clk), .CDN(n10), .Q(
        enter_std_finish) );
  dfcrq1 complete_acc_pos_reg ( .D(n198), .CP(clk), .CDN(n6), .Q(
        complete_acc_pos) );
  dfcrq1 eeg_data_d3_reg_9_ ( .D(eeg_data_d2[9]), .CP(clk), .CDN(n21), .Q(
        eeg_data_d3[9]) );
  dfcrq1 eeg_data_d3_reg_8_ ( .D(eeg_data_d2[8]), .CP(clk), .CDN(n84), .Q(
        eeg_data_d3[8]) );
  dfcrq1 eeg_data_d3_reg_7_ ( .D(eeg_data_d2[7]), .CP(clk), .CDN(n83), .Q(
        eeg_data_d3[7]) );
  dfcrq1 eeg_data_d3_reg_6_ ( .D(eeg_data_d2[6]), .CP(clk), .CDN(n78), .Q(
        eeg_data_d3[6]) );
  dfcrq1 eeg_data_d3_reg_5_ ( .D(eeg_data_d2[5]), .CP(clk), .CDN(n83), .Q(
        eeg_data_d3[5]) );
  dfcrq1 eeg_data_d3_reg_4_ ( .D(eeg_data_d2[4]), .CP(clk), .CDN(n78), .Q(
        eeg_data_d3[4]) );
  dfcrq1 eeg_data_d3_reg_3_ ( .D(eeg_data_d2[3]), .CP(clk), .CDN(n1), .Q(
        eeg_data_d3[3]) );
  dfcrq1 eeg_data_d3_reg_2_ ( .D(eeg_data_d2[2]), .CP(clk), .CDN(n2), .Q(
        eeg_data_d3[2]) );
  dfcrq1 eeg_data_d3_reg_1_ ( .D(eeg_data_d2[1]), .CP(clk), .CDN(n2), .Q(
        eeg_data_d3[1]) );
  dfcrq1 eeg_data_reg_9_ ( .D(N127), .CP(clk), .CDN(n18), .Q(eeg_data[9]) );
  dfcrq1 eeg_data_reg_8_ ( .D(N126), .CP(clk), .CDN(n21), .Q(eeg_data[8]) );
  dfcrq1 eeg_data_reg_7_ ( .D(N125), .CP(clk), .CDN(n80), .Q(eeg_data[7]) );
  dfcrq1 eeg_data_reg_6_ ( .D(N124), .CP(clk), .CDN(n60), .Q(eeg_data[6]) );
  dfcrq1 eeg_data_reg_5_ ( .D(N123), .CP(clk), .CDN(n80), .Q(eeg_data[5]) );
  dfcrq1 eeg_data_reg_4_ ( .D(N122), .CP(clk), .CDN(n60), .Q(eeg_data[4]) );
  dfcrq1 eeg_data_reg_3_ ( .D(N121), .CP(clk), .CDN(n1), .Q(eeg_data[3]) );
  dfcrq1 eeg_data_reg_2_ ( .D(N120), .CP(clk), .CDN(n1), .Q(eeg_data[2]) );
  dfcrq1 eeg_data_reg_1_ ( .D(N119), .CP(clk), .CDN(n2), .Q(eeg_data[1]) );
  dfcrq1 eeg_data_d3_reg_16_ ( .D(eeg_data_d2[16]), .CP(clk), .CDN(n12), .Q(
        eeg_data_d3[16]) );
  dfcrq1 eeg_data_d3_reg_15_ ( .D(eeg_data_d2[15]), .CP(clk), .CDN(n13), .Q(
        eeg_data_d3[15]) );
  dfcrq1 eeg_data_d3_reg_14_ ( .D(eeg_data_d2[14]), .CP(clk), .CDN(n14), .Q(
        eeg_data_d3[14]) );
  dfcrq1 eeg_data_d3_reg_13_ ( .D(eeg_data_d2[13]), .CP(clk), .CDN(n15), .Q(
        eeg_data_d3[13]) );
  dfcrq1 eeg_data_d3_reg_12_ ( .D(eeg_data_d2[12]), .CP(clk), .CDN(n16), .Q(
        eeg_data_d3[12]) );
  dfcrq1 eeg_data_d3_reg_11_ ( .D(eeg_data_d2[11]), .CP(clk), .CDN(n17), .Q(
        eeg_data_d3[11]) );
  dfcrq1 eeg_data_d3_reg_10_ ( .D(eeg_data_d2[10]), .CP(clk), .CDN(n18), .Q(
        eeg_data_d3[10]) );
  dfcrq1 complete_acc_neg_reg ( .D(n199), .CP(clk), .CDN(n9), .Q(
        complete_acc_neg) );
  dfcrq1 eeg_data_reg_16_ ( .D(N134), .CP(clk), .CDN(n12), .Q(eeg_data[16]) );
  dfcrq1 eeg_data_reg_15_ ( .D(N133), .CP(clk), .CDN(n13), .Q(eeg_data[15]) );
  dfcrq1 eeg_data_reg_14_ ( .D(N132), .CP(clk), .CDN(n14), .Q(eeg_data[14]) );
  dfcrq1 eeg_data_reg_13_ ( .D(N131), .CP(clk), .CDN(n15), .Q(eeg_data[13]) );
  dfcrq1 eeg_data_reg_12_ ( .D(N130), .CP(clk), .CDN(n16), .Q(eeg_data[12]) );
  dfcrq1 eeg_data_reg_11_ ( .D(N129), .CP(clk), .CDN(n17), .Q(eeg_data[11]) );
  dfcrq1 eeg_data_reg_10_ ( .D(N128), .CP(clk), .CDN(n17), .Q(eeg_data[10]) );
  dfcrq1 eeg_data_reg_0_ ( .D(N118), .CP(clk), .CDN(n4), .Q(eeg_data[0]) );
  dfcrq1 enter_mean_div_reg ( .D(n165), .CP(clk), .CDN(n11), .Q(enter_mean_div) );
  dfcrq1 eeg_data_d3_reg_0_ ( .D(eeg_data_d2[0]), .CP(clk), .CDN(n4), .Q(
        eeg_data_d3[0]) );
  dfcrq1 complete_std_sqrt_pos_d_reg ( .D(complete_std_sqrt_pos), .CP(clk), 
        .CDN(n11), .Q(complete_std_sqrt_pos_d) );
  dfcrq1 complete_std_sqrt_neg_d_reg ( .D(complete_std_sqrt_neg), .CP(clk), 
        .CDN(n10), .Q(complete_std_sqrt_neg_d) );
  dfcrq1 count_std_pos_reg_7_ ( .D(n179), .CP(clk), .CDN(n5), .Q(
        count_std_pos[7]) );
  dfcrq1 count_std_neg_reg_7_ ( .D(n171), .CP(clk), .CDN(n8), .Q(
        count_std_neg[7]) );
  dfcrq1 param_calc_finish_reg ( .D(n197), .CP(clk), .CDN(n11), .Q(
        param_calc_finish) );
  dfcrq1 start_mean_pos_reg ( .D(N174), .CP(clk), .CDN(n11), .Q(start_mean_pos) );
  dfcrq1 start_mean_neg_reg ( .D(N176), .CP(clk), .CDN(n10), .Q(start_mean_neg) );
  dfcrq1 count_std_pos_reg_6_ ( .D(n180), .CP(clk), .CDN(n6), .Q(
        count_std_pos[6]) );
  dfcrq1 count_std_neg_reg_6_ ( .D(n172), .CP(clk), .CDN(n9), .Q(
        count_std_neg[6]) );
  dfcrq1 start_std_pos_rise_reg ( .D(N239), .CP(clk), .CDN(n11), .Q(
        start_std_pos_rise) );
  dfcrq1 start_std_neg_rise_reg ( .D(N245), .CP(clk), .CDN(n5), .Q(
        start_std_neg_rise) );
  dfcrq1 count_std_pos_reg_5_ ( .D(n181), .CP(clk), .CDN(n6), .Q(
        count_std_pos[5]) );
  dfcrq1 count_std_neg_reg_5_ ( .D(n173), .CP(clk), .CDN(n8), .Q(
        count_std_neg[5]) );
  dfcrq1 clk_addr_cnt_reg_1_ ( .D(N32), .CP(clk), .CDN(n16), .Q(
        clk_addr_cnt[1]) );
  dfcrq1 clk_addr_cnt_reg_0_ ( .D(n204), .CP(clk), .CDN(n65), .Q(
        clk_addr_cnt[0]) );
  dfcrq1 pc_fifo_read_reg ( .D(N170), .CP(clk), .CDN(n8), .Q(pc_fifo_read) );
  dfcrq1 count_std_pos_reg_4_ ( .D(n182), .CP(clk), .CDN(n5), .Q(
        count_std_pos[4]) );
  dfcrq1 count_std_neg_reg_4_ ( .D(n174), .CP(clk), .CDN(n8), .Q(
        count_std_neg[4]) );
  dfcrq1 pc_fifo_addr_reg_4_ ( .D(n189), .CP(clk), .CDN(n8), .Q(
        pc_fifo_addr[4]) );
  dfcrq1 eeg_data_d4_neg_reg_16_ ( .D(n162), .CP(clk), .CDN(n13), .Q(
        eeg_data_d4_neg[16]) );
  dfcrq1 eeg_data_d4_pos_reg_16_ ( .D(n161), .CP(clk), .CDN(n13), .Q(
        eeg_data_d4_pos[16]) );
  dfcrq1 pc_fifo_addr_reg_3_ ( .D(n190), .CP(clk), .CDN(n7), .Q(
        pc_fifo_addr[3]) );
  dfcrq1 pc_fifo_addr_reg_5_ ( .D(n188), .CP(clk), .CDN(n8), .Q(
        pc_fifo_addr[5]) );
  dfcrq1 pc_fifo_addr_reg_7_ ( .D(n187), .CP(clk), .CDN(n8), .Q(
        pc_fifo_addr[7]) );
  dfcrq1 pc_fifo_addr_reg_6_ ( .D(n194), .CP(clk), .CDN(n7), .Q(
        pc_fifo_addr[6]) );
  dfcrq1 pc_fifo_addr_reg_2_ ( .D(n191), .CP(clk), .CDN(n7), .Q(
        pc_fifo_addr[2]) );
  dfcrq1 count_std_pos_reg_2_ ( .D(n184), .CP(clk), .CDN(n5), .Q(
        count_std_pos[2]) );
  dfcrq1 count_std_neg_reg_2_ ( .D(n176), .CP(clk), .CDN(n8), .Q(
        count_std_neg[2]) );
  dfcrq1 pc_fifo_addr_reg_1_ ( .D(n192), .CP(clk), .CDN(n7), .Q(
        pc_fifo_addr[1]) );
  dfcrq1 count_std_pos_reg_1_ ( .D(n186), .CP(clk), .CDN(n10), .Q(
        count_std_pos[1]) );
  dfcrq1 count_std_neg_reg_1_ ( .D(n178), .CP(clk), .CDN(n8), .Q(
        count_std_neg[1]) );
  dfcrq1 pc_fifo_addr_reg_0_ ( .D(n193), .CP(clk), .CDN(n7), .Q(
        pc_fifo_addr[0]) );
  dfcrq1 count_std_pos_reg_0_ ( .D(n185), .CP(clk), .CDN(n5), .Q(
        count_std_pos[0]) );
  dfcrq1 count_std_neg_reg_0_ ( .D(n177), .CP(clk), .CDN(n8), .Q(
        count_std_neg[0]) );
  dfcrq1 eeg_data_d4_neg_reg_14_ ( .D(n154), .CP(clk), .CDN(n14), .Q(
        eeg_data_d4_neg[14]) );
  dfcrq1 eeg_data_d4_pos_reg_14_ ( .D(n153), .CP(clk), .CDN(n14), .Q(
        eeg_data_d4_pos[14]) );
  dfcrq1 eeg_pos_reg_16_ ( .D(n159), .CP(clk), .CDN(n13), .Q(eeg_pos[16]) );
  dfcrq1 eeg_neg_reg_16_ ( .D(n160), .CP(clk), .CDN(n13), .Q(eeg_neg[16]) );
  dfcrq1 eeg_data_d4_neg_reg_13_ ( .D(n150), .CP(clk), .CDN(n15), .Q(
        eeg_data_d4_neg[13]) );
  dfcrq1 eeg_data_d4_pos_reg_13_ ( .D(n149), .CP(clk), .CDN(n15), .Q(
        eeg_data_d4_pos[13]) );
  dfcrq1 enter_std_finish_d_reg ( .D(enter_std_finish), .CP(clk), .CDN(n10), 
        .Q(enter_std_finish_d) );
  dfcrq1 eeg_data_d4_neg_reg_12_ ( .D(n146), .CP(clk), .CDN(n16), .Q(
        eeg_data_d4_neg[12]) );
  dfcrq1 eeg_data_d4_pos_reg_12_ ( .D(n145), .CP(clk), .CDN(n16), .Q(
        eeg_data_d4_pos[12]) );
  dfcrq1 eeg_data_d4_neg_reg_15_ ( .D(n158), .CP(clk), .CDN(n14), .Q(
        eeg_data_d4_neg[15]) );
  dfcrq1 eeg_data_d4_pos_reg_15_ ( .D(n157), .CP(clk), .CDN(n14), .Q(
        eeg_data_d4_pos[15]) );
  dfcrq1 complete_std_neg_reg ( .D(n91), .CP(clk), .CDN(n10), .Q(
        complete_std_neg) );
  dfcrq1 complete_std_pos_reg ( .D(n166), .CP(clk), .CDN(n11), .Q(
        complete_std_pos) );
  dfcrq1 eeg_pos_reg_15_ ( .D(n155), .CP(clk), .CDN(n14), .Q(eeg_pos[15]) );
  dfcrq1 eeg_neg_reg_15_ ( .D(n156), .CP(clk), .CDN(n14), .Q(eeg_neg[15]) );
  dfcrq1 eeg_data_d4_neg_reg_11_ ( .D(n142), .CP(clk), .CDN(n17), .Q(
        eeg_data_d4_neg[11]) );
  dfcrq1 eeg_data_d4_pos_reg_11_ ( .D(n141), .CP(clk), .CDN(n17), .Q(
        eeg_data_d4_pos[11]) );
  dfcrq1 eeg_pos_reg_14_ ( .D(n151), .CP(clk), .CDN(n15), .Q(eeg_pos[14]) );
  dfcrq1 eeg_neg_reg_14_ ( .D(n152), .CP(clk), .CDN(n15), .Q(eeg_neg[14]) );
  dfcrq1 complete_acc_pos7_pulse_reg ( .D(N224), .CP(clk), .CDN(n7), .Q(
        complete_acc_pos7_pulse) );
  dfcrq1 complete_acc_neg7_pulse_reg ( .D(N226), .CP(clk), .CDN(n10), .Q(
        complete_acc_neg7_pulse) );
  dfcrq1 state_reg_0_ ( .D(n168), .CP(clk), .CDN(n11), .Q(state[0]) );
  dfcrq1 eeg_data_d4_neg_reg_10_ ( .D(n138), .CP(clk), .CDN(n18), .Q(
        eeg_data_d4_neg[10]) );
  dfcrq1 eeg_data_d4_pos_reg_10_ ( .D(n137), .CP(clk), .CDN(n18), .Q(
        eeg_data_d4_pos[10]) );
  dfcrq1 state_reg_2_ ( .D(next_state[2]), .CP(clk), .CDN(n11), .Q(state[2])
         );
  dfcrq1 state_reg_3_ ( .D(next_state[3]), .CP(clk), .CDN(n11), .Q(state[3])
         );
  dfcrq1 state_reg_1_ ( .D(next_state[1]), .CP(clk), .CDN(n11), .Q(state[1])
         );
  dfcrq1 eeg_pos_reg_13_ ( .D(n147), .CP(clk), .CDN(n15), .Q(eeg_pos[13]) );
  dfcrq1 eeg_neg_reg_13_ ( .D(n148), .CP(clk), .CDN(n15), .Q(eeg_neg[13]) );
  dfcrq1 eeg_data_d4_neg_reg_9_ ( .D(n134), .CP(clk), .CDN(n21), .Q(
        eeg_data_d4_neg[9]) );
  dfcrq1 eeg_data_d4_pos_reg_9_ ( .D(n133), .CP(clk), .CDN(n21), .Q(
        eeg_data_d4_pos[9]) );
  dfcrq1 eeg_pos_reg_12_ ( .D(n143), .CP(clk), .CDN(n17), .Q(eeg_pos[12]) );
  dfcrq1 eeg_neg_reg_12_ ( .D(n144), .CP(clk), .CDN(n16), .Q(eeg_neg[12]) );
  dfcrq1 eeg_data_d4_neg_reg_8_ ( .D(n130), .CP(clk), .CDN(n72), .Q(
        eeg_data_d4_neg[8]) );
  dfcrq1 eeg_data_d4_pos_reg_8_ ( .D(n129), .CP(clk), .CDN(n66), .Q(
        eeg_data_d4_pos[8]) );
  dfcrq1 eeg_pos_reg_11_ ( .D(n139), .CP(clk), .CDN(n17), .Q(eeg_pos[11]) );
  dfcrq1 eeg_neg_reg_11_ ( .D(n140), .CP(clk), .CDN(n17), .Q(eeg_neg[11]) );
  dfcrq1 eeg_data_d4_neg_reg_7_ ( .D(n126), .CP(clk), .CDN(n53), .Q(
        eeg_data_d4_neg[7]) );
  dfcrq1 eeg_data_d4_pos_reg_7_ ( .D(n125), .CP(clk), .CDN(n84), .Q(
        eeg_data_d4_pos[7]) );
  dfcrq1 eeg_pos_reg_10_ ( .D(n135), .CP(clk), .CDN(n18), .Q(eeg_pos[10]) );
  dfcrq1 eeg_neg_reg_10_ ( .D(n136), .CP(clk), .CDN(n18), .Q(eeg_neg[10]) );
  dfcrq1 eeg_data_d4_neg_reg_6_ ( .D(n122), .CP(clk), .CDN(n5), .Q(
        eeg_data_d4_neg[6]) );
  dfcrq1 eeg_data_d4_pos_reg_6_ ( .D(n121), .CP(clk), .CDN(n53), .Q(
        eeg_data_d4_pos[6]) );
  dfcrq1 eeg_neg_reg_9_ ( .D(n132), .CP(clk), .CDN(n21), .Q(eeg_neg[9]) );
  dfcrq1 eeg_pos_reg_9_ ( .D(n131), .CP(clk), .CDN(n21), .Q(eeg_pos[9]) );
  dfcrq1 eeg_data_d4_neg_reg_5_ ( .D(n118), .CP(clk), .CDN(n65), .Q(
        eeg_data_d4_neg[5]) );
  dfcrq1 eeg_data_d4_pos_reg_5_ ( .D(n117), .CP(clk), .CDN(n72), .Q(
        eeg_data_d4_pos[5]) );
  dfcrq1 eeg_neg_reg_8_ ( .D(n128), .CP(clk), .CDN(n83), .Q(eeg_neg[8]) );
  dfcrq1 eeg_pos_reg_8_ ( .D(n127), .CP(clk), .CDN(n78), .Q(eeg_pos[8]) );
  dfcrq1 eeg_data_d4_neg_reg_4_ ( .D(n114), .CP(clk), .CDN(n66), .Q(
        eeg_data_d4_neg[4]) );
  dfcrq1 eeg_data_d4_pos_reg_4_ ( .D(n113), .CP(clk), .CDN(n84), .Q(
        eeg_data_d4_pos[4]) );
  dfcrq1 eeg_neg_reg_7_ ( .D(n124), .CP(clk), .CDN(n80), .Q(eeg_neg[7]) );
  dfcrq1 eeg_pos_reg_7_ ( .D(n123), .CP(clk), .CDN(n60), .Q(eeg_pos[7]) );
  dfcrq1 eeg_data_d4_neg_reg_3_ ( .D(n110), .CP(clk), .CDN(n1), .Q(
        eeg_data_d4_neg[3]) );
  dfcrq1 eeg_data_d4_pos_reg_3_ ( .D(n109), .CP(clk), .CDN(n1), .Q(
        eeg_data_d4_pos[3]) );
  dfcrq1 eeg_neg_reg_6_ ( .D(n120), .CP(clk), .CDN(n83), .Q(eeg_neg[6]) );
  dfcrq1 eeg_pos_reg_6_ ( .D(n119), .CP(clk), .CDN(n78), .Q(eeg_pos[6]) );
  dfcrq1 eeg_data_d4_neg_reg_2_ ( .D(n106), .CP(clk), .CDN(n2), .Q(
        eeg_data_d4_neg[2]) );
  dfcrq1 eeg_data_d4_pos_reg_2_ ( .D(n105), .CP(clk), .CDN(n2), .Q(
        eeg_data_d4_pos[2]) );
  dfcrq1 eeg_neg_reg_5_ ( .D(n116), .CP(clk), .CDN(n80), .Q(eeg_neg[5]) );
  dfcrq1 eeg_pos_reg_5_ ( .D(n115), .CP(clk), .CDN(n60), .Q(eeg_pos[5]) );
  dfcrq1 eeg_data_d4_neg_reg_1_ ( .D(n102), .CP(clk), .CDN(n4), .Q(
        eeg_data_d4_neg[1]) );
  dfcrq1 eeg_data_d4_pos_reg_1_ ( .D(n101), .CP(clk), .CDN(n4), .Q(
        eeg_data_d4_pos[1]) );
  dfcrq1 eeg_data_d4_neg_reg_0_ ( .D(n98), .CP(clk), .CDN(n5), .Q(
        eeg_data_d4_neg[0]) );
  dfcrq1 eeg_data_d4_pos_reg_0_ ( .D(n97), .CP(clk), .CDN(n5), .Q(
        eeg_data_d4_pos[0]) );
  dfcrq1 eeg_neg_reg_4_ ( .D(n112), .CP(clk), .CDN(n53), .Q(eeg_neg[4]) );
  dfcrq1 eeg_pos_reg_4_ ( .D(n111), .CP(clk), .CDN(n84), .Q(eeg_pos[4]) );
  dfcrq1 eeg_neg_reg_3_ ( .D(n108), .CP(clk), .CDN(n1), .Q(eeg_neg[3]) );
  dfcrq1 eeg_pos_reg_3_ ( .D(n107), .CP(clk), .CDN(n1), .Q(eeg_pos[3]) );
  dfcrq1 eeg_neg_reg_2_ ( .D(n104), .CP(clk), .CDN(n2), .Q(eeg_neg[2]) );
  dfcrq1 eeg_pos_reg_2_ ( .D(n103), .CP(clk), .CDN(n2), .Q(eeg_pos[2]) );
  dfcrq1 eeg_neg_reg_1_ ( .D(n100), .CP(clk), .CDN(n4), .Q(eeg_neg[1]) );
  dfcrq1 eeg_pos_reg_1_ ( .D(n99), .CP(clk), .CDN(n4), .Q(eeg_pos[1]) );
  dfcrq1 eeg_pos_reg_0_ ( .D(n95), .CP(clk), .CDN(n5), .Q(eeg_pos[0]) );
  dfcrq1 eeg_neg_reg_0_ ( .D(n96), .CP(clk), .CDN(n5), .Q(eeg_neg[0]) );
  dfcrq1 eeg_data_reg_17_ ( .D(N135), .CP(clk), .CDN(n12), .Q(eeg_data[17]) );
  dfcrq1 eeg_data_d_reg_17_ ( .D(n42), .CP(clk), .CDN(n12), .Q(eeg_data_d[17])
         );
  dfcrq1 eeg_data_d_reg_7_ ( .D(eeg_data[7]), .CP(clk), .CDN(n72), .Q(
        eeg_data_d[7]) );
  dfcrq1 eeg_data_d2_reg_7_ ( .D(eeg_data_d[7]), .CP(clk), .CDN(n66), .Q(
        eeg_data_d2[7]) );
  dfcrq1 eeg_data_d_reg_6_ ( .D(eeg_data[6]), .CP(clk), .CDN(n65), .Q(
        eeg_data_d[6]) );
  dfcrq1 eeg_data_d2_reg_6_ ( .D(eeg_data_d[6]), .CP(clk), .CDN(n65), .Q(
        eeg_data_d2[6]) );
  dfcrq1 eeg_data_d_reg_5_ ( .D(eeg_data[5]), .CP(clk), .CDN(n83), .Q(
        eeg_data_d[5]) );
  dfcrq1 eeg_data_d2_reg_5_ ( .D(eeg_data_d[5]), .CP(clk), .CDN(n78), .Q(
        eeg_data_d2[5]) );
  dfcrq1 eeg_data_d_reg_4_ ( .D(eeg_data[4]), .CP(clk), .CDN(n80), .Q(
        eeg_data_d[4]) );
  dfcrq1 eeg_data_d2_reg_4_ ( .D(eeg_data_d[4]), .CP(clk), .CDN(n53), .Q(
        eeg_data_d2[4]) );
  dfcrq1 eeg_data_d2_reg_17_ ( .D(eeg_data_d[17]), .CP(clk), .CDN(n12), .Q(
        eeg_data_d2[17]) );
  dfcrq1 eeg_data_d_reg_16_ ( .D(eeg_data[16]), .CP(clk), .CDN(n12), .Q(
        eeg_data_d[16]) );
  dfcrq1 eeg_data_d2_reg_16_ ( .D(eeg_data_d[16]), .CP(clk), .CDN(n12), .Q(
        eeg_data_d2[16]) );
  dfcrq1 eeg_data_d_reg_15_ ( .D(eeg_data[15]), .CP(clk), .CDN(n13), .Q(
        eeg_data_d[15]) );
  dfcrq1 eeg_data_d2_reg_15_ ( .D(eeg_data_d[15]), .CP(clk), .CDN(n13), .Q(
        eeg_data_d2[15]) );
  dfcrq1 eeg_data_d_reg_14_ ( .D(eeg_data[14]), .CP(clk), .CDN(n14), .Q(
        eeg_data_d[14]) );
  dfcrq1 eeg_data_d2_reg_14_ ( .D(eeg_data_d[14]), .CP(clk), .CDN(n14), .Q(
        eeg_data_d2[14]) );
  dfcrq1 eeg_data_d_reg_13_ ( .D(eeg_data[13]), .CP(clk), .CDN(n15), .Q(
        eeg_data_d[13]) );
  dfcrq1 eeg_data_d2_reg_13_ ( .D(eeg_data_d[13]), .CP(clk), .CDN(n15), .Q(
        eeg_data_d2[13]) );
  dfcrq1 eeg_data_d_reg_12_ ( .D(eeg_data[12]), .CP(clk), .CDN(n16), .Q(
        eeg_data_d[12]) );
  dfcrq1 eeg_data_d2_reg_12_ ( .D(eeg_data_d[12]), .CP(clk), .CDN(n16), .Q(
        eeg_data_d2[12]) );
  dfcrq1 eeg_data_d_reg_11_ ( .D(eeg_data[11]), .CP(clk), .CDN(n17), .Q(
        eeg_data_d[11]) );
  dfcrq1 eeg_data_d2_reg_11_ ( .D(eeg_data_d[11]), .CP(clk), .CDN(n17), .Q(
        eeg_data_d2[11]) );
  dfcrq1 eeg_data_d_reg_10_ ( .D(eeg_data[10]), .CP(clk), .CDN(n18), .Q(
        eeg_data_d[10]) );
  dfcrq1 eeg_data_d2_reg_10_ ( .D(eeg_data_d[10]), .CP(clk), .CDN(n18), .Q(
        eeg_data_d2[10]) );
  dfcrq1 eeg_data_d_reg_9_ ( .D(eeg_data[9]), .CP(clk), .CDN(n18), .Q(
        eeg_data_d[9]) );
  dfcrq1 eeg_data_d2_reg_9_ ( .D(eeg_data_d[9]), .CP(clk), .CDN(n18), .Q(
        eeg_data_d2[9]) );
  dfcrq1 eeg_data_d_reg_8_ ( .D(eeg_data[8]), .CP(clk), .CDN(n21), .Q(
        eeg_data_d[8]) );
  dfcrq1 eeg_data_d2_reg_8_ ( .D(eeg_data_d[8]), .CP(clk), .CDN(n21), .Q(
        eeg_data_d2[8]) );
  dfcrq1 eeg_data_d_reg_3_ ( .D(eeg_data[3]), .CP(clk), .CDN(n1), .Q(
        eeg_data_d[3]) );
  dfcrq1 eeg_data_d2_reg_3_ ( .D(eeg_data_d[3]), .CP(clk), .CDN(n1), .Q(
        eeg_data_d2[3]) );
  dfcrq1 eeg_data_d_reg_2_ ( .D(eeg_data[2]), .CP(clk), .CDN(n1), .Q(
        eeg_data_d[2]) );
  dfcrq1 eeg_data_d2_reg_2_ ( .D(eeg_data_d[2]), .CP(clk), .CDN(n2), .Q(
        eeg_data_d2[2]) );
  dfcrq1 eeg_data_d_reg_1_ ( .D(eeg_data[1]), .CP(clk), .CDN(n2), .Q(
        eeg_data_d[1]) );
  dfcrq1 eeg_data_d2_reg_1_ ( .D(eeg_data_d[1]), .CP(clk), .CDN(n2), .Q(
        eeg_data_d2[1]) );
  dfcrq1 eeg_data_d_reg_0_ ( .D(eeg_data[0]), .CP(clk), .CDN(n4), .Q(
        eeg_data_d[0]) );
  dfcrq1 eeg_data_d2_reg_0_ ( .D(eeg_data_d[0]), .CP(clk), .CDN(n4), .Q(
        eeg_data_d2[0]) );
  dfcrq1 complete_acc_pos_d1_reg ( .D(complete_acc_pos), .CP(clk), .CDN(n6), 
        .Q(complete_acc_pos_d1) );
  dfcrq1 complete_acc_pos_d2_reg ( .D(complete_acc_pos_d1), .CP(clk), .CDN(n6), 
        .Q(complete_acc_pos_d2) );
  dfcrq1 complete_acc_pos_d3_reg ( .D(complete_acc_pos_d2), .CP(clk), .CDN(n6), 
        .Q(complete_acc_pos_d3) );
  dfcrq1 complete_acc_pos_d4_reg ( .D(complete_acc_pos_d3), .CP(clk), .CDN(n6), 
        .Q(complete_acc_pos_d4) );
  dfcrq1 complete_acc_pos_d5_reg ( .D(complete_acc_pos_d4), .CP(clk), .CDN(n6), 
        .Q(complete_acc_pos_d5) );
  dfcrq1 complete_acc_pos_d6_reg ( .D(complete_acc_pos_d5), .CP(clk), .CDN(n6), 
        .Q(complete_acc_pos_d6) );
  dfcrq1 complete_acc_pos_d8_reg ( .D(complete_acc_pos_d7), .CP(clk), .CDN(n7), 
        .Q(complete_acc_pos_d8) );
  dfcrq1 complete_acc_neg_d1_reg ( .D(complete_acc_neg), .CP(clk), .CDN(n9), 
        .Q(complete_acc_neg_d1) );
  dfcrq1 complete_acc_neg_d2_reg ( .D(complete_acc_neg_d1), .CP(clk), .CDN(n9), 
        .Q(complete_acc_neg_d2) );
  dfcrq1 complete_acc_neg_d3_reg ( .D(complete_acc_neg_d2), .CP(clk), .CDN(n9), 
        .Q(complete_acc_neg_d3) );
  dfcrq1 complete_acc_neg_d4_reg ( .D(complete_acc_neg_d3), .CP(clk), .CDN(n9), 
        .Q(complete_acc_neg_d4) );
  dfcrq1 complete_acc_neg_d5_reg ( .D(complete_acc_neg_d4), .CP(clk), .CDN(n9), 
        .Q(complete_acc_neg_d5) );
  dfcrq1 complete_acc_neg_d6_reg ( .D(complete_acc_neg_d5), .CP(clk), .CDN(n9), 
        .Q(complete_acc_neg_d6) );
  dfcrq1 complete_acc_neg_d8_reg ( .D(complete_acc_neg_d7), .CP(clk), .CDN(n9), 
        .Q(complete_acc_neg_d8) );
  dfcrq1 eeg_data_d3_reg_17_ ( .D(eeg_data_d2[17]), .CP(clk), .CDN(n12), .Q(
        eeg_data_d3[17]) );
  buffd1 U6 ( .I(n78), .Z(n9) );
  buffd1 U10 ( .I(n78), .Z(n8) );
  buffd1 U11 ( .I(n72), .Z(n6) );
  buffd1 U81 ( .I(n66), .Z(n2) );
  buffd1 U83 ( .I(n66), .Z(n1) );
  buffd1 U85 ( .I(n72), .Z(n5) );
  buffd1 U86 ( .I(n84), .Z(n18) );
  buffd1 U95 ( .I(n84), .Z(n17) );
  buffd1 U104 ( .I(n83), .Z(n15) );
  buffd1 U114 ( .I(n83), .Z(n14) );
  buffd1 U115 ( .I(n80), .Z(n12) );
  buffd1 U118 ( .I(n80), .Z(n11) );
  buffd1 U120 ( .I(n72), .Z(n7) );
  buffd1 U122 ( .I(n66), .Z(n4) );
  buffd1 U123 ( .I(n84), .Z(n21) );
  buffd1 U124 ( .I(n80), .Z(n13) );
  buffd1 U125 ( .I(n78), .Z(n10) );
  buffd1 U127 ( .I(n83), .Z(n16) );
  inv0d0 U128 ( .I(n70), .ZN(n208) );
  nr02d1 U129 ( .A1(n211), .A2(n202), .ZN(n38) );
  inv0d0 U130 ( .I(n61), .ZN(n211) );
  inv0d0 U132 ( .I(n50), .ZN(n205) );
  buffd1 U133 ( .I(n53), .Z(n66) );
  buffd1 U134 ( .I(n53), .Z(n72) );
  buffd1 U135 ( .I(n65), .Z(n84) );
  buffd1 U137 ( .I(n60), .Z(n80) );
  buffd1 U138 ( .I(n60), .Z(n78) );
  buffd1 U139 ( .I(n60), .Z(n83) );
  inv0d0 U140 ( .I(n19), .ZN(n209) );
  nr02d1 U141 ( .A1(n215), .A2(n79), .ZN(n61) );
  nr02d1 U143 ( .A1(n37), .A2(n61), .ZN(n70) );
  inv0d0 U146 ( .I(next_state[1]), .ZN(n202) );
  inv0d0 U147 ( .I(n168), .ZN(n201) );
  nr02d1 U148 ( .A1(n68), .A2(n67), .ZN(n77) );
  inv0d0 U149 ( .I(n44), .ZN(n41) );
  inv0d0 U150 ( .I(N252), .ZN(n203) );
  an02d1 U152 ( .A1(n37), .A2(n168), .Z(n29) );
  inv0d0 U154 ( .I(n69), .ZN(n212) );
  nd02d1 U156 ( .A1(n49), .A2(n51), .ZN(n50) );
  inv0d0 U157 ( .I(n64), .ZN(n200) );
  inv0d0 U158 ( .I(n45), .ZN(n40) );
  inv0d0 U159 ( .I(n32), .ZN(n23) );
  inv0d0 U164 ( .I(n46), .ZN(n39) );
  inv0d0 U165 ( .I(n33), .ZN(n22) );
  inv0d0 U167 ( .I(n31), .ZN(n27) );
  inv0d0 U169 ( .I(n30), .ZN(n28) );
  inv0d0 U171 ( .I(n43), .ZN(n42) );
  nr02d1 U173 ( .A1(n56), .A2(n57), .ZN(n199) );
  nr02d1 U175 ( .A1(n54), .A2(n55), .ZN(n198) );
  buffd1 U178 ( .I(reset_n), .Z(n53) );
  buffd1 U182 ( .I(reset_n), .Z(n60) );
  buffd1 U183 ( .I(reset_n), .Z(n65) );
  nr02d1 U185 ( .A1(N253), .A2(N251), .ZN(n24) );
  inv0d0 U186 ( .I(n20), .ZN(n207) );
  nr02d1 U187 ( .A1(n212), .A2(n81), .ZN(n82) );
  nr02d1 U206 ( .A1(n210), .A2(state[3]), .ZN(n19) );
  inv0d0 U207 ( .I(state[1]), .ZN(n210) );
  inv0d0 U209 ( .I(state[2]), .ZN(n215) );
  inv0d0 U210 ( .I(state[0]), .ZN(n217) );
  nr02d1 U211 ( .A1(n206), .A2(n73), .ZN(n71) );
  inv0d0 U212 ( .I(n74), .ZN(n206) );
  nr02d1 U213 ( .A1(state[1]), .A2(state[3]), .ZN(n59) );
  nd02d1 U214 ( .A1(state[0]), .A2(n59), .ZN(n79) );
  nd03d1 U217 ( .A1(n74), .A2(n63), .A3(n75), .ZN(n168) );
  inv0d0 U218 ( .I(n164), .ZN(n216) );
  nr02d1 U219 ( .A1(state[0]), .A2(state[2]), .ZN(n52) );
  inv0d0 U220 ( .I(eeg_data[17]), .ZN(n44) );
  nd02d1 U221 ( .A1(n163), .A2(n208), .ZN(n63) );
  nd03d1 U222 ( .A1(n59), .A2(n217), .A3(state[2]), .ZN(n69) );
  inv0d0 U223 ( .I(eeg_data[17]), .ZN(n47) );
  inv0d0 U224 ( .I(n86), .ZN(n167) );
  inv0d0 U225 ( .I(n93), .ZN(n231) );
  inv0d0 U226 ( .I(n94), .ZN(n222) );
  oai211d1 U227 ( .C1(state[2]), .C2(n209), .A(n79), .B(n214), .ZN(n89) );
  inv0d0 U228 ( .I(n62), .ZN(n214) );
  inv0d0 U229 ( .I(complete_std_sqrt_neg_d), .ZN(n236) );
  inv0d0 U230 ( .I(complete_std_sqrt_pos_d), .ZN(n213) );
  nr02d1 U231 ( .A1(n163), .A2(n58), .ZN(N245) );
  inv0d0 U232 ( .I(eeg_data_d3[17]), .ZN(n32) );
  inv0d0 U233 ( .I(eeg_data[17]), .ZN(n45) );
  inv0d0 U234 ( .I(eeg_data[17]), .ZN(n46) );
  inv0d0 U235 ( .I(eeg_data_d3[17]), .ZN(n33) );
  inv0d0 U236 ( .I(eeg_data_d3[17]), .ZN(n31) );
  inv0d0 U237 ( .I(eeg_data_d3[17]), .ZN(n30) );
  inv0d0 U238 ( .I(eeg_data[17]), .ZN(n43) );
  inv0d0 U239 ( .I(eeg_data_d3[17]), .ZN(n34) );
  inv0d0 U240 ( .I(eeg_data_d3[17]), .ZN(n35) );
  inv0d0 U241 ( .I(eeg_data_d3[17]), .ZN(n36) );
  inv0d0 U242 ( .I(count_std_neg[0]), .ZN(n228) );
  inv0d0 U243 ( .I(count_std_pos[0]), .ZN(n219) );
  inv0d0 U244 ( .I(count_std_neg[4]), .ZN(n232) );
  inv0d0 U245 ( .I(count_std_pos[4]), .ZN(n223) );
  inv0d0 U246 ( .I(count_std_neg[2]), .ZN(n230) );
  inv0d0 U247 ( .I(count_std_pos[2]), .ZN(n221) );
  inv0d0 U248 ( .I(count_std_neg[5]), .ZN(n233) );
  inv0d0 U249 ( .I(count_std_pos[5]), .ZN(n224) );
  inv0d0 U250 ( .I(count_std_neg[7]), .ZN(n227) );
  inv0d0 U251 ( .I(count_std_pos[7]), .ZN(n218) );
  inv0d0 U252 ( .I(count_std_neg[1]), .ZN(n229) );
  inv0d0 U253 ( .I(count_std_pos[1]), .ZN(n220) );
  inv0d0 U254 ( .I(count_std_neg[6]), .ZN(n234) );
  inv0d0 U255 ( .I(count_std_pos[6]), .ZN(n225) );
  nr02d1 U256 ( .A1(complete_acc_neg_d9), .A2(n235), .ZN(N226) );
  inv0d0 U257 ( .I(complete_acc_neg_d7), .ZN(n235) );
  nr02d1 U258 ( .A1(complete_acc_pos_d9), .A2(n226), .ZN(N224) );
  inv0d0 U259 ( .I(complete_acc_pos_d7), .ZN(n226) );
  inv0d0 U260 ( .I(clk_addr_cnt[0]), .ZN(n204) );
  nr02d0 U261 ( .A1(pc_fifo_addr[7]), .A2(pc_fifo_addr[6]), .ZN(n86) );
  nr02d0 U262 ( .A1(pc_fifo_addr[1]), .A2(pc_fifo_addr[0]), .ZN(n87) );
  nr03d0 U263 ( .A1(pc_fifo_addr[2]), .A2(pc_fifo_addr[5]), .A3(
        pc_fifo_addr[3]), .ZN(n85) );
  nd03d0 U264 ( .A1(n87), .A2(n86), .A3(n85), .ZN(n90) );
  oai31d1 U265 ( .B1(n167), .B2(pc_fifo_addr[5]), .B3(pc_fifo_addr[4]), .A(n90), .ZN(N139) );
endmodule


module mcmc ( clk, reset_n, start, mcmc_lut_data, mcmc_lut_addr, mcmc_lut_read, 
        mean_pos, std_pos, mean_neg, std_neg, sample_one_pos, sample_two_pos, 
        sample_three_pos, sample_four_pos, sample_one_neg, sample_two_neg, 
        sample_three_neg, sample_four_neg, mcmc_finish );
  input [71:0] mcmc_lut_data;
  output [10:0] mcmc_lut_addr;
  input [17:0] mean_pos;
  input [18:0] std_pos;
  input [17:0] mean_neg;
  input [18:0] std_neg;
  output [17:0] sample_one_pos;
  output [17:0] sample_two_pos;
  output [17:0] sample_three_pos;
  output [17:0] sample_four_pos;
  output [17:0] sample_one_neg;
  output [17:0] sample_two_neg;
  output [17:0] sample_three_neg;
  output [17:0] sample_four_neg;
  input clk, reset_n, start;
  output mcmc_lut_read, mcmc_finish;
  wire   const_start, pos_read, N48, N49, N53, N54, N55, N56, N57, N58, N59,
         N60, N61, N62, N63, N64, n5, n8, n12, n14, n15, n16, n17, n18, n19,
         n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n1, n2, n3, n4, n6, n7, n9, n10, n11, n13,
         n20, n22, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296;
  wire   [3:1] clk_count;
  wire   [1:0] count;
  wire   [16:0] sample_one_pos_s;
  wire   [16:0] sample_two_pos_s;
  wire   [16:0] sample_three_pos_s;
  wire   [16:0] sample_four_pos_s;
  wire   [17:0] sample_one_neg_s;
  wire   [17:0] sample_two_neg_s;
  wire   [17:0] sample_three_neg_s;
  wire   [17:0] sample_four_neg_s;

  aor22d1 U3 ( .A1(n248), .A2(sample_two_pos[9]), .B1(n266), .B2(
        sample_two_pos_s[9]), .Z(sample_two_pos[9]) );
  aor22d1 U4 ( .A1(n248), .A2(sample_two_pos[8]), .B1(n266), .B2(
        sample_two_pos_s[8]), .Z(sample_two_pos[8]) );
  aor22d1 U5 ( .A1(n248), .A2(sample_two_pos[7]), .B1(n266), .B2(
        sample_two_pos_s[7]), .Z(sample_two_pos[7]) );
  aor22d1 U6 ( .A1(n248), .A2(sample_two_pos[6]), .B1(n266), .B2(
        sample_two_pos_s[6]), .Z(sample_two_pos[6]) );
  aor22d1 U7 ( .A1(n248), .A2(sample_two_pos[5]), .B1(n266), .B2(
        sample_two_pos_s[5]), .Z(sample_two_pos[5]) );
  aor22d1 U8 ( .A1(n248), .A2(sample_two_pos[4]), .B1(n266), .B2(
        sample_two_pos_s[4]), .Z(sample_two_pos[4]) );
  aor22d1 U9 ( .A1(n248), .A2(sample_two_pos[3]), .B1(n266), .B2(
        sample_two_pos_s[3]), .Z(sample_two_pos[3]) );
  aor22d1 U10 ( .A1(n248), .A2(sample_two_pos[2]), .B1(n266), .B2(
        sample_two_pos_s[2]), .Z(sample_two_pos[2]) );
  aor22d1 U11 ( .A1(n248), .A2(sample_two_pos[1]), .B1(n266), .B2(
        sample_two_pos_s[1]), .Z(sample_two_pos[1]) );
  aor22d1 U13 ( .A1(n249), .A2(sample_two_pos[16]), .B1(n266), .B2(
        sample_two_pos_s[16]), .Z(sample_two_pos[16]) );
  aor22d1 U14 ( .A1(n249), .A2(sample_two_pos[15]), .B1(n266), .B2(
        sample_two_pos_s[15]), .Z(sample_two_pos[15]) );
  aor22d1 U15 ( .A1(n249), .A2(sample_two_pos[14]), .B1(n266), .B2(
        sample_two_pos_s[14]), .Z(sample_two_pos[14]) );
  aor22d1 U16 ( .A1(n249), .A2(sample_two_pos[13]), .B1(n265), .B2(
        sample_two_pos_s[13]), .Z(sample_two_pos[13]) );
  aor22d1 U17 ( .A1(n249), .A2(sample_two_pos[12]), .B1(n265), .B2(
        sample_two_pos_s[12]), .Z(sample_two_pos[12]) );
  aor22d1 U18 ( .A1(n249), .A2(sample_two_pos[11]), .B1(n265), .B2(
        sample_two_pos_s[11]), .Z(sample_two_pos[11]) );
  aor22d1 U19 ( .A1(n249), .A2(sample_two_pos[10]), .B1(n265), .B2(
        sample_two_pos_s[10]), .Z(sample_two_pos[10]) );
  aor22d1 U20 ( .A1(n249), .A2(sample_two_pos[0]), .B1(n265), .B2(
        sample_two_pos_s[0]), .Z(sample_two_pos[0]) );
  aor22d1 U21 ( .A1(n226), .A2(sample_two_neg_s[9]), .B1(n247), .B2(
        sample_two_neg[9]), .Z(sample_two_neg[9]) );
  aor22d1 U22 ( .A1(n226), .A2(sample_two_neg_s[8]), .B1(n247), .B2(
        sample_two_neg[8]), .Z(sample_two_neg[8]) );
  aor22d1 U23 ( .A1(n226), .A2(sample_two_neg_s[7]), .B1(n246), .B2(
        sample_two_neg[7]), .Z(sample_two_neg[7]) );
  aor22d1 U24 ( .A1(n226), .A2(sample_two_neg_s[6]), .B1(n246), .B2(
        sample_two_neg[6]), .Z(sample_two_neg[6]) );
  aor22d1 U25 ( .A1(n226), .A2(sample_two_neg_s[5]), .B1(n246), .B2(
        sample_two_neg[5]), .Z(sample_two_neg[5]) );
  aor22d1 U26 ( .A1(n226), .A2(sample_two_neg_s[4]), .B1(n246), .B2(
        sample_two_neg[4]), .Z(sample_two_neg[4]) );
  aor22d1 U27 ( .A1(n226), .A2(sample_two_neg_s[3]), .B1(n246), .B2(
        sample_two_neg[3]), .Z(sample_two_neg[3]) );
  aor22d1 U28 ( .A1(n226), .A2(sample_two_neg_s[2]), .B1(n246), .B2(
        sample_two_neg[2]), .Z(sample_two_neg[2]) );
  aor22d1 U29 ( .A1(n226), .A2(sample_two_neg_s[1]), .B1(n246), .B2(
        sample_two_neg[1]), .Z(sample_two_neg[1]) );
  aor22d1 U30 ( .A1(n227), .A2(sample_two_neg_s[17]), .B1(n246), .B2(
        sample_two_neg[17]), .Z(sample_two_neg[17]) );
  aor22d1 U31 ( .A1(n227), .A2(sample_two_neg_s[16]), .B1(n246), .B2(
        sample_two_neg[16]), .Z(sample_two_neg[16]) );
  aor22d1 U32 ( .A1(n227), .A2(sample_two_neg_s[15]), .B1(n246), .B2(
        sample_two_neg[15]), .Z(sample_two_neg[15]) );
  aor22d1 U33 ( .A1(n227), .A2(sample_two_neg_s[14]), .B1(n246), .B2(
        sample_two_neg[14]), .Z(sample_two_neg[14]) );
  aor22d1 U34 ( .A1(n227), .A2(sample_two_neg_s[13]), .B1(n246), .B2(
        sample_two_neg[13]), .Z(sample_two_neg[13]) );
  aor22d1 U35 ( .A1(n227), .A2(sample_two_neg_s[12]), .B1(n245), .B2(
        sample_two_neg[12]), .Z(sample_two_neg[12]) );
  aor22d1 U36 ( .A1(n227), .A2(sample_two_neg_s[11]), .B1(n245), .B2(
        sample_two_neg[11]), .Z(sample_two_neg[11]) );
  aor22d1 U37 ( .A1(n227), .A2(sample_two_neg_s[10]), .B1(n245), .B2(
        sample_two_neg[10]), .Z(sample_two_neg[10]) );
  aor22d1 U38 ( .A1(n227), .A2(sample_two_neg_s[0]), .B1(n245), .B2(
        sample_two_neg[0]), .Z(sample_two_neg[0]) );
  aor22d1 U39 ( .A1(n249), .A2(sample_three_pos[9]), .B1(n265), .B2(
        sample_three_pos_s[9]), .Z(sample_three_pos[9]) );
  aor22d1 U40 ( .A1(n250), .A2(sample_three_pos[8]), .B1(n265), .B2(
        sample_three_pos_s[8]), .Z(sample_three_pos[8]) );
  aor22d1 U41 ( .A1(n250), .A2(sample_three_pos[7]), .B1(n265), .B2(
        sample_three_pos_s[7]), .Z(sample_three_pos[7]) );
  aor22d1 U42 ( .A1(n250), .A2(sample_three_pos[6]), .B1(n265), .B2(
        sample_three_pos_s[6]), .Z(sample_three_pos[6]) );
  aor22d1 U43 ( .A1(n250), .A2(sample_three_pos[5]), .B1(n265), .B2(
        sample_three_pos_s[5]), .Z(sample_three_pos[5]) );
  aor22d1 U44 ( .A1(n250), .A2(sample_three_pos[4]), .B1(n265), .B2(
        sample_three_pos_s[4]), .Z(sample_three_pos[4]) );
  aor22d1 U45 ( .A1(n250), .A2(sample_three_pos[3]), .B1(n265), .B2(
        sample_three_pos_s[3]), .Z(sample_three_pos[3]) );
  aor22d1 U46 ( .A1(n250), .A2(sample_three_pos[2]), .B1(n264), .B2(
        sample_three_pos_s[2]), .Z(sample_three_pos[2]) );
  aor22d1 U47 ( .A1(n250), .A2(sample_three_pos[1]), .B1(n264), .B2(
        sample_three_pos_s[1]), .Z(sample_three_pos[1]) );
  aor22d1 U49 ( .A1(n250), .A2(sample_three_pos[16]), .B1(n264), .B2(
        sample_three_pos_s[16]), .Z(sample_three_pos[16]) );
  aor22d1 U50 ( .A1(n251), .A2(sample_three_pos[15]), .B1(n264), .B2(
        sample_three_pos_s[15]), .Z(sample_three_pos[15]) );
  aor22d1 U51 ( .A1(n251), .A2(sample_three_pos[14]), .B1(n264), .B2(
        sample_three_pos_s[14]), .Z(sample_three_pos[14]) );
  aor22d1 U52 ( .A1(n251), .A2(sample_three_pos[13]), .B1(n264), .B2(
        sample_three_pos_s[13]), .Z(sample_three_pos[13]) );
  aor22d1 U53 ( .A1(n251), .A2(sample_three_pos[12]), .B1(n264), .B2(
        sample_three_pos_s[12]), .Z(sample_three_pos[12]) );
  aor22d1 U54 ( .A1(n251), .A2(sample_three_pos[11]), .B1(n264), .B2(
        sample_three_pos_s[11]), .Z(sample_three_pos[11]) );
  aor22d1 U55 ( .A1(n251), .A2(sample_three_pos[10]), .B1(n264), .B2(
        sample_three_pos_s[10]), .Z(sample_three_pos[10]) );
  aor22d1 U56 ( .A1(n251), .A2(sample_three_pos[0]), .B1(n264), .B2(
        sample_three_pos_s[0]), .Z(sample_three_pos[0]) );
  aor22d1 U57 ( .A1(n228), .A2(sample_three_neg_s[9]), .B1(n245), .B2(
        sample_three_neg[9]), .Z(sample_three_neg[9]) );
  aor22d1 U58 ( .A1(n228), .A2(sample_three_neg_s[8]), .B1(n245), .B2(
        sample_three_neg[8]), .Z(sample_three_neg[8]) );
  aor22d1 U59 ( .A1(n228), .A2(sample_three_neg_s[7]), .B1(n245), .B2(
        sample_three_neg[7]), .Z(sample_three_neg[7]) );
  aor22d1 U60 ( .A1(n228), .A2(sample_three_neg_s[6]), .B1(n245), .B2(
        sample_three_neg[6]), .Z(sample_three_neg[6]) );
  aor22d1 U61 ( .A1(n228), .A2(sample_three_neg_s[5]), .B1(n245), .B2(
        sample_three_neg[5]), .Z(sample_three_neg[5]) );
  aor22d1 U62 ( .A1(n228), .A2(sample_three_neg_s[4]), .B1(n245), .B2(
        sample_three_neg[4]), .Z(sample_three_neg[4]) );
  aor22d1 U63 ( .A1(n228), .A2(sample_three_neg_s[3]), .B1(n245), .B2(
        sample_three_neg[3]), .Z(sample_three_neg[3]) );
  aor22d1 U64 ( .A1(n228), .A2(sample_three_neg_s[2]), .B1(n245), .B2(
        sample_three_neg[2]), .Z(sample_three_neg[2]) );
  aor22d1 U65 ( .A1(n228), .A2(sample_three_neg_s[1]), .B1(n244), .B2(
        sample_three_neg[1]), .Z(sample_three_neg[1]) );
  aor22d1 U66 ( .A1(n229), .A2(sample_three_neg_s[17]), .B1(n244), .B2(
        sample_three_neg[17]), .Z(sample_three_neg[17]) );
  aor22d1 U67 ( .A1(n229), .A2(sample_three_neg_s[16]), .B1(n244), .B2(
        sample_three_neg[16]), .Z(sample_three_neg[16]) );
  aor22d1 U68 ( .A1(n229), .A2(sample_three_neg_s[15]), .B1(n244), .B2(
        sample_three_neg[15]), .Z(sample_three_neg[15]) );
  aor22d1 U69 ( .A1(n229), .A2(sample_three_neg_s[14]), .B1(n244), .B2(
        sample_three_neg[14]), .Z(sample_three_neg[14]) );
  aor22d1 U70 ( .A1(n229), .A2(sample_three_neg_s[13]), .B1(n244), .B2(
        sample_three_neg[13]), .Z(sample_three_neg[13]) );
  aor22d1 U71 ( .A1(n229), .A2(sample_three_neg_s[12]), .B1(n244), .B2(
        sample_three_neg[12]), .Z(sample_three_neg[12]) );
  aor22d1 U72 ( .A1(n229), .A2(sample_three_neg_s[11]), .B1(n244), .B2(
        sample_three_neg[11]), .Z(sample_three_neg[11]) );
  aor22d1 U73 ( .A1(n229), .A2(sample_three_neg_s[10]), .B1(n244), .B2(
        sample_three_neg[10]), .Z(sample_three_neg[10]) );
  aor22d1 U74 ( .A1(n229), .A2(sample_three_neg_s[0]), .B1(n244), .B2(
        sample_three_neg[0]), .Z(sample_three_neg[0]) );
  aor22d1 U75 ( .A1(n251), .A2(sample_one_pos[9]), .B1(n264), .B2(
        sample_one_pos_s[9]), .Z(sample_one_pos[9]) );
  aor22d1 U76 ( .A1(n251), .A2(sample_one_pos[8]), .B1(n264), .B2(
        sample_one_pos_s[8]), .Z(sample_one_pos[8]) );
  aor22d1 U77 ( .A1(n252), .A2(sample_one_pos[7]), .B1(n263), .B2(
        sample_one_pos_s[7]), .Z(sample_one_pos[7]) );
  aor22d1 U78 ( .A1(n252), .A2(sample_one_pos[6]), .B1(n263), .B2(
        sample_one_pos_s[6]), .Z(sample_one_pos[6]) );
  aor22d1 U79 ( .A1(n252), .A2(sample_one_pos[5]), .B1(n263), .B2(
        sample_one_pos_s[5]), .Z(sample_one_pos[5]) );
  aor22d1 U80 ( .A1(n252), .A2(sample_one_pos[4]), .B1(n263), .B2(
        sample_one_pos_s[4]), .Z(sample_one_pos[4]) );
  aor22d1 U81 ( .A1(n252), .A2(sample_one_pos[3]), .B1(n262), .B2(
        sample_one_pos_s[3]), .Z(sample_one_pos[3]) );
  aor22d1 U82 ( .A1(n252), .A2(sample_one_pos[2]), .B1(n262), .B2(
        sample_one_pos_s[2]), .Z(sample_one_pos[2]) );
  aor22d1 U83 ( .A1(n252), .A2(sample_one_pos[1]), .B1(n262), .B2(
        sample_one_pos_s[1]), .Z(sample_one_pos[1]) );
  aor22d1 U85 ( .A1(n252), .A2(sample_one_pos[16]), .B1(n262), .B2(
        sample_one_pos_s[16]), .Z(sample_one_pos[16]) );
  aor22d1 U86 ( .A1(n252), .A2(sample_one_pos[15]), .B1(n261), .B2(
        sample_one_pos_s[15]), .Z(sample_one_pos[15]) );
  aor22d1 U87 ( .A1(n253), .A2(sample_one_pos[14]), .B1(n261), .B2(
        sample_one_pos_s[14]), .Z(sample_one_pos[14]) );
  aor22d1 U88 ( .A1(n253), .A2(sample_one_pos[13]), .B1(n261), .B2(
        sample_one_pos_s[13]), .Z(sample_one_pos[13]) );
  aor22d1 U89 ( .A1(n253), .A2(sample_one_pos[12]), .B1(n261), .B2(
        sample_one_pos_s[12]), .Z(sample_one_pos[12]) );
  aor22d1 U90 ( .A1(n253), .A2(sample_one_pos[11]), .B1(n260), .B2(
        sample_one_pos_s[11]), .Z(sample_one_pos[11]) );
  aor22d1 U91 ( .A1(n253), .A2(sample_one_pos[10]), .B1(n260), .B2(
        sample_one_pos_s[10]), .Z(sample_one_pos[10]) );
  aor22d1 U92 ( .A1(n253), .A2(sample_one_pos[0]), .B1(n260), .B2(
        sample_one_pos_s[0]), .Z(sample_one_pos[0]) );
  aor22d1 U93 ( .A1(n230), .A2(sample_one_neg_s[9]), .B1(n244), .B2(
        sample_one_neg[9]), .Z(sample_one_neg[9]) );
  aor22d1 U94 ( .A1(n230), .A2(sample_one_neg_s[8]), .B1(n244), .B2(
        sample_one_neg[8]), .Z(sample_one_neg[8]) );
  aor22d1 U95 ( .A1(n230), .A2(sample_one_neg_s[7]), .B1(n243), .B2(
        sample_one_neg[7]), .Z(sample_one_neg[7]) );
  aor22d1 U96 ( .A1(n230), .A2(sample_one_neg_s[6]), .B1(n243), .B2(
        sample_one_neg[6]), .Z(sample_one_neg[6]) );
  aor22d1 U97 ( .A1(n230), .A2(sample_one_neg_s[5]), .B1(n243), .B2(
        sample_one_neg[5]), .Z(sample_one_neg[5]) );
  aor22d1 U98 ( .A1(n230), .A2(sample_one_neg_s[4]), .B1(n243), .B2(
        sample_one_neg[4]), .Z(sample_one_neg[4]) );
  aor22d1 U99 ( .A1(n230), .A2(sample_one_neg_s[3]), .B1(n242), .B2(
        sample_one_neg[3]), .Z(sample_one_neg[3]) );
  aor22d1 U100 ( .A1(n230), .A2(sample_one_neg_s[2]), .B1(n242), .B2(
        sample_one_neg[2]), .Z(sample_one_neg[2]) );
  aor22d1 U101 ( .A1(n230), .A2(sample_one_neg_s[1]), .B1(n242), .B2(
        sample_one_neg[1]), .Z(sample_one_neg[1]) );
  aor22d1 U102 ( .A1(n231), .A2(sample_one_neg_s[17]), .B1(n242), .B2(
        sample_one_neg[17]), .Z(sample_one_neg[17]) );
  aor22d1 U103 ( .A1(n231), .A2(sample_one_neg_s[16]), .B1(n241), .B2(
        sample_one_neg[16]), .Z(sample_one_neg[16]) );
  aor22d1 U104 ( .A1(n231), .A2(sample_one_neg_s[15]), .B1(n241), .B2(
        sample_one_neg[15]), .Z(sample_one_neg[15]) );
  aor22d1 U105 ( .A1(n231), .A2(sample_one_neg_s[14]), .B1(n241), .B2(
        sample_one_neg[14]), .Z(sample_one_neg[14]) );
  aor22d1 U106 ( .A1(n231), .A2(sample_one_neg_s[13]), .B1(n241), .B2(
        sample_one_neg[13]), .Z(sample_one_neg[13]) );
  aor22d1 U107 ( .A1(n231), .A2(sample_one_neg_s[12]), .B1(n240), .B2(
        sample_one_neg[12]), .Z(sample_one_neg[12]) );
  aor22d1 U108 ( .A1(n231), .A2(sample_one_neg_s[11]), .B1(n240), .B2(
        sample_one_neg[11]), .Z(sample_one_neg[11]) );
  aor22d1 U109 ( .A1(n231), .A2(sample_one_neg_s[10]), .B1(n240), .B2(
        sample_one_neg[10]), .Z(sample_one_neg[10]) );
  aor22d1 U110 ( .A1(n231), .A2(sample_one_neg_s[0]), .B1(n240), .B2(
        sample_one_neg[0]), .Z(sample_one_neg[0]) );
  aor22d1 U111 ( .A1(n253), .A2(sample_four_pos[9]), .B1(n260), .B2(
        sample_four_pos_s[9]), .Z(sample_four_pos[9]) );
  aor22d1 U112 ( .A1(n253), .A2(sample_four_pos[8]), .B1(n259), .B2(
        sample_four_pos_s[8]), .Z(sample_four_pos[8]) );
  aor22d1 U113 ( .A1(n253), .A2(sample_four_pos[7]), .B1(n259), .B2(
        sample_four_pos_s[7]), .Z(sample_four_pos[7]) );
  aor22d1 U114 ( .A1(n254), .A2(sample_four_pos[6]), .B1(n259), .B2(
        sample_four_pos_s[6]), .Z(sample_four_pos[6]) );
  aor22d1 U115 ( .A1(n254), .A2(sample_four_pos[5]), .B1(n259), .B2(
        sample_four_pos_s[5]), .Z(sample_four_pos[5]) );
  aor22d1 U116 ( .A1(n254), .A2(sample_four_pos[4]), .B1(n258), .B2(
        sample_four_pos_s[4]), .Z(sample_four_pos[4]) );
  aor22d1 U117 ( .A1(n254), .A2(sample_four_pos[3]), .B1(n258), .B2(
        sample_four_pos_s[3]), .Z(sample_four_pos[3]) );
  aor22d1 U118 ( .A1(n254), .A2(sample_four_pos[2]), .B1(n258), .B2(
        sample_four_pos_s[2]), .Z(sample_four_pos[2]) );
  aor22d1 U119 ( .A1(n254), .A2(sample_four_pos[1]), .B1(n258), .B2(
        sample_four_pos_s[1]), .Z(sample_four_pos[1]) );
  aor22d1 U121 ( .A1(n254), .A2(sample_four_pos[16]), .B1(n257), .B2(
        sample_four_pos_s[16]), .Z(sample_four_pos[16]) );
  aor22d1 U122 ( .A1(n254), .A2(sample_four_pos[15]), .B1(n257), .B2(
        sample_four_pos_s[15]), .Z(sample_four_pos[15]) );
  aor22d1 U123 ( .A1(n254), .A2(sample_four_pos[14]), .B1(n257), .B2(
        sample_four_pos_s[14]), .Z(sample_four_pos[14]) );
  aor22d1 U124 ( .A1(n255), .A2(sample_four_pos[13]), .B1(n257), .B2(
        sample_four_pos_s[13]), .Z(sample_four_pos[13]) );
  aor22d1 U125 ( .A1(n255), .A2(sample_four_pos[12]), .B1(n256), .B2(
        sample_four_pos_s[12]), .Z(sample_four_pos[12]) );
  aor22d1 U126 ( .A1(n255), .A2(sample_four_pos[11]), .B1(n256), .B2(
        sample_four_pos_s[11]), .Z(sample_four_pos[11]) );
  aor22d1 U127 ( .A1(n255), .A2(sample_four_pos[10]), .B1(n256), .B2(
        sample_four_pos_s[10]), .Z(sample_four_pos[10]) );
  aor22d1 U128 ( .A1(n255), .A2(sample_four_pos[0]), .B1(n256), .B2(
        sample_four_pos_s[0]), .Z(sample_four_pos[0]) );
  aor22d1 U131 ( .A1(n232), .A2(sample_four_neg_s[9]), .B1(n239), .B2(
        sample_four_neg[9]), .Z(sample_four_neg[9]) );
  aor22d1 U132 ( .A1(n232), .A2(sample_four_neg_s[8]), .B1(n239), .B2(
        sample_four_neg[8]), .Z(sample_four_neg[8]) );
  aor22d1 U133 ( .A1(n232), .A2(sample_four_neg_s[7]), .B1(n239), .B2(
        sample_four_neg[7]), .Z(sample_four_neg[7]) );
  aor22d1 U134 ( .A1(n232), .A2(sample_four_neg_s[6]), .B1(n239), .B2(
        sample_four_neg[6]), .Z(sample_four_neg[6]) );
  aor22d1 U135 ( .A1(n232), .A2(sample_four_neg_s[5]), .B1(n238), .B2(
        sample_four_neg[5]), .Z(sample_four_neg[5]) );
  aor22d1 U136 ( .A1(n232), .A2(sample_four_neg_s[4]), .B1(n238), .B2(
        sample_four_neg[4]), .Z(sample_four_neg[4]) );
  aor22d1 U137 ( .A1(n232), .A2(sample_four_neg_s[3]), .B1(n238), .B2(
        sample_four_neg[3]), .Z(sample_four_neg[3]) );
  aor22d1 U138 ( .A1(n232), .A2(sample_four_neg_s[2]), .B1(n238), .B2(
        sample_four_neg[2]), .Z(sample_four_neg[2]) );
  aor22d1 U139 ( .A1(n232), .A2(sample_four_neg_s[1]), .B1(n237), .B2(
        sample_four_neg[1]), .Z(sample_four_neg[1]) );
  aor22d1 U140 ( .A1(n233), .A2(sample_four_neg_s[17]), .B1(n237), .B2(
        sample_four_neg[17]), .Z(sample_four_neg[17]) );
  aor22d1 U141 ( .A1(n233), .A2(sample_four_neg_s[16]), .B1(n237), .B2(
        sample_four_neg[16]), .Z(sample_four_neg[16]) );
  aor22d1 U142 ( .A1(n233), .A2(sample_four_neg_s[15]), .B1(n237), .B2(
        sample_four_neg[15]), .Z(sample_four_neg[15]) );
  aor22d1 U143 ( .A1(n233), .A2(sample_four_neg_s[14]), .B1(n236), .B2(
        sample_four_neg[14]), .Z(sample_four_neg[14]) );
  aor22d1 U144 ( .A1(n233), .A2(sample_four_neg_s[13]), .B1(n236), .B2(
        sample_four_neg[13]), .Z(sample_four_neg[13]) );
  aor22d1 U145 ( .A1(n233), .A2(sample_four_neg_s[12]), .B1(n236), .B2(
        sample_four_neg[12]), .Z(sample_four_neg[12]) );
  aor22d1 U146 ( .A1(n233), .A2(sample_four_neg_s[11]), .B1(n236), .B2(
        sample_four_neg[11]), .Z(sample_four_neg[11]) );
  aor22d1 U147 ( .A1(n233), .A2(sample_four_neg_s[10]), .B1(n235), .B2(
        sample_four_neg[10]), .Z(sample_four_neg[10]) );
  aor22d1 U148 ( .A1(n233), .A2(sample_four_neg_s[0]), .B1(n235), .B2(
        sample_four_neg[0]), .Z(sample_four_neg[0]) );
  aor22d1 U149 ( .A1(n201), .A2(mcmc_lut_data[17]), .B1(n216), .B2(
        sample_three_neg_s[0]), .Z(n38) );
  or02d0 U150 ( .A1(sample_three_neg_s[17]), .A2(n205), .Z(n39) );
  aor22d1 U151 ( .A1(n198), .A2(mcmc_lut_data[33]), .B1(n216), .B2(
        sample_three_neg_s[16]), .Z(n40) );
  aor22d1 U152 ( .A1(n198), .A2(mcmc_lut_data[32]), .B1(n216), .B2(
        sample_three_neg_s[15]), .Z(n41) );
  aor22d1 U153 ( .A1(n198), .A2(mcmc_lut_data[31]), .B1(n216), .B2(
        sample_three_neg_s[14]), .Z(n42) );
  aor22d1 U154 ( .A1(n198), .A2(mcmc_lut_data[30]), .B1(n216), .B2(
        sample_three_neg_s[13]), .Z(n43) );
  aor22d1 U155 ( .A1(n198), .A2(mcmc_lut_data[29]), .B1(n216), .B2(
        sample_three_neg_s[12]), .Z(n44) );
  aor22d1 U156 ( .A1(n198), .A2(mcmc_lut_data[28]), .B1(n216), .B2(
        sample_three_neg_s[11]), .Z(n45) );
  aor22d1 U157 ( .A1(n198), .A2(mcmc_lut_data[27]), .B1(n216), .B2(
        sample_three_neg_s[10]), .Z(n46) );
  aor22d1 U158 ( .A1(n198), .A2(mcmc_lut_data[26]), .B1(n216), .B2(
        sample_three_neg_s[9]), .Z(n47) );
  aor22d1 U159 ( .A1(n199), .A2(mcmc_lut_data[25]), .B1(n216), .B2(
        sample_three_neg_s[8]), .Z(n48) );
  aor22d1 U160 ( .A1(n199), .A2(mcmc_lut_data[24]), .B1(n216), .B2(
        sample_three_neg_s[7]), .Z(n49) );
  aor22d1 U161 ( .A1(n199), .A2(mcmc_lut_data[23]), .B1(n216), .B2(
        sample_three_neg_s[6]), .Z(n50) );
  aor22d1 U162 ( .A1(n199), .A2(mcmc_lut_data[22]), .B1(n215), .B2(
        sample_three_neg_s[5]), .Z(n51) );
  aor22d1 U163 ( .A1(n199), .A2(mcmc_lut_data[21]), .B1(n215), .B2(
        sample_three_neg_s[4]), .Z(n52) );
  aor22d1 U164 ( .A1(n199), .A2(mcmc_lut_data[20]), .B1(n215), .B2(
        sample_three_neg_s[3]), .Z(n53) );
  aor22d1 U165 ( .A1(n199), .A2(mcmc_lut_data[19]), .B1(n215), .B2(
        sample_three_neg_s[2]), .Z(n54) );
  aor22d1 U166 ( .A1(n199), .A2(mcmc_lut_data[18]), .B1(n215), .B2(
        sample_three_neg_s[1]), .Z(n55) );
  aor22d1 U167 ( .A1(n199), .A2(mcmc_lut_data[51]), .B1(n215), .B2(
        sample_one_neg_s[0]), .Z(n56) );
  or02d0 U168 ( .A1(sample_one_neg_s[17]), .A2(n205), .Z(n57) );
  aor22d1 U169 ( .A1(n200), .A2(mcmc_lut_data[67]), .B1(n215), .B2(
        sample_one_neg_s[16]), .Z(n58) );
  aor22d1 U170 ( .A1(n200), .A2(mcmc_lut_data[66]), .B1(n215), .B2(
        sample_one_neg_s[15]), .Z(n59) );
  aor22d1 U171 ( .A1(n200), .A2(mcmc_lut_data[65]), .B1(n215), .B2(
        sample_one_neg_s[14]), .Z(n60) );
  aor22d1 U172 ( .A1(n200), .A2(mcmc_lut_data[64]), .B1(n215), .B2(
        sample_one_neg_s[13]), .Z(n61) );
  aor22d1 U173 ( .A1(n200), .A2(mcmc_lut_data[63]), .B1(n215), .B2(
        sample_one_neg_s[12]), .Z(n62) );
  aor22d1 U174 ( .A1(n200), .A2(mcmc_lut_data[62]), .B1(n215), .B2(
        sample_one_neg_s[11]), .Z(n63) );
  aor22d1 U175 ( .A1(n200), .A2(mcmc_lut_data[61]), .B1(n214), .B2(
        sample_one_neg_s[10]), .Z(n64) );
  aor22d1 U176 ( .A1(n200), .A2(mcmc_lut_data[60]), .B1(n214), .B2(
        sample_one_neg_s[9]), .Z(n65) );
  aor22d1 U177 ( .A1(n200), .A2(mcmc_lut_data[59]), .B1(n214), .B2(
        sample_one_neg_s[8]), .Z(n66) );
  aor22d1 U178 ( .A1(n201), .A2(mcmc_lut_data[58]), .B1(n214), .B2(
        sample_one_neg_s[7]), .Z(n67) );
  aor22d1 U179 ( .A1(n201), .A2(mcmc_lut_data[57]), .B1(n214), .B2(
        sample_one_neg_s[6]), .Z(n68) );
  aor22d1 U180 ( .A1(n201), .A2(mcmc_lut_data[56]), .B1(n214), .B2(
        sample_one_neg_s[5]), .Z(n69) );
  aor22d1 U181 ( .A1(n201), .A2(mcmc_lut_data[55]), .B1(n214), .B2(
        sample_one_neg_s[4]), .Z(n70) );
  aor22d1 U182 ( .A1(n201), .A2(mcmc_lut_data[54]), .B1(n214), .B2(
        sample_one_neg_s[3]), .Z(n71) );
  aor22d1 U183 ( .A1(n201), .A2(mcmc_lut_data[53]), .B1(n214), .B2(
        sample_one_neg_s[2]), .Z(n72) );
  aor22d1 U184 ( .A1(n201), .A2(mcmc_lut_data[52]), .B1(n214), .B2(
        sample_one_neg_s[1]), .Z(n73) );
  aor22d1 U185 ( .A1(n201), .A2(mcmc_lut_data[35]), .B1(n214), .B2(
        sample_two_neg_s[1]), .Z(n74) );
  aor22d1 U186 ( .A1(n202), .A2(mcmc_lut_data[36]), .B1(n214), .B2(
        sample_two_neg_s[2]), .Z(n75) );
  aor22d1 U187 ( .A1(n202), .A2(mcmc_lut_data[37]), .B1(n213), .B2(
        sample_two_neg_s[3]), .Z(n76) );
  aor22d1 U188 ( .A1(n202), .A2(mcmc_lut_data[38]), .B1(n213), .B2(
        sample_two_neg_s[4]), .Z(n77) );
  aor22d1 U189 ( .A1(n202), .A2(mcmc_lut_data[39]), .B1(n213), .B2(
        sample_two_neg_s[5]), .Z(n78) );
  aor22d1 U190 ( .A1(n202), .A2(mcmc_lut_data[40]), .B1(n213), .B2(
        sample_two_neg_s[6]), .Z(n79) );
  aor22d1 U191 ( .A1(n202), .A2(mcmc_lut_data[41]), .B1(n212), .B2(
        sample_two_neg_s[7]), .Z(n80) );
  aor22d1 U192 ( .A1(n202), .A2(mcmc_lut_data[42]), .B1(n212), .B2(
        sample_two_neg_s[8]), .Z(n81) );
  aor22d1 U193 ( .A1(n202), .A2(mcmc_lut_data[43]), .B1(n212), .B2(
        sample_two_neg_s[9]), .Z(n82) );
  aor22d1 U194 ( .A1(n202), .A2(mcmc_lut_data[44]), .B1(n212), .B2(
        sample_two_neg_s[10]), .Z(n83) );
  aor22d1 U195 ( .A1(n203), .A2(mcmc_lut_data[45]), .B1(n211), .B2(
        sample_two_neg_s[11]), .Z(n84) );
  aor22d1 U196 ( .A1(n203), .A2(mcmc_lut_data[46]), .B1(n211), .B2(
        sample_two_neg_s[12]), .Z(n85) );
  aor22d1 U197 ( .A1(n203), .A2(mcmc_lut_data[47]), .B1(n211), .B2(
        sample_two_neg_s[13]), .Z(n86) );
  aor22d1 U198 ( .A1(n203), .A2(mcmc_lut_data[48]), .B1(n211), .B2(
        sample_two_neg_s[14]), .Z(n87) );
  aor22d1 U199 ( .A1(n203), .A2(mcmc_lut_data[49]), .B1(n210), .B2(
        sample_two_neg_s[15]), .Z(n88) );
  aor22d1 U200 ( .A1(n203), .A2(mcmc_lut_data[50]), .B1(n210), .B2(
        sample_two_neg_s[16]), .Z(n89) );
  or02d0 U201 ( .A1(sample_two_neg_s[17]), .A2(n205), .Z(n90) );
  aor22d1 U202 ( .A1(n203), .A2(mcmc_lut_data[34]), .B1(n210), .B2(
        sample_two_neg_s[0]), .Z(n91) );
  aor22d1 U203 ( .A1(n203), .A2(mcmc_lut_data[1]), .B1(n210), .B2(
        sample_four_neg_s[1]), .Z(n92) );
  aor22d1 U204 ( .A1(n203), .A2(mcmc_lut_data[2]), .B1(n209), .B2(
        sample_four_neg_s[2]), .Z(n93) );
  aor22d1 U205 ( .A1(n204), .A2(mcmc_lut_data[3]), .B1(n209), .B2(
        sample_four_neg_s[3]), .Z(n94) );
  aor22d1 U206 ( .A1(n204), .A2(mcmc_lut_data[4]), .B1(n209), .B2(
        sample_four_neg_s[4]), .Z(n95) );
  aor22d1 U207 ( .A1(n204), .A2(mcmc_lut_data[5]), .B1(n209), .B2(
        sample_four_neg_s[5]), .Z(n96) );
  aor22d1 U208 ( .A1(n204), .A2(mcmc_lut_data[6]), .B1(n208), .B2(
        sample_four_neg_s[6]), .Z(n97) );
  aor22d1 U209 ( .A1(n204), .A2(mcmc_lut_data[7]), .B1(n208), .B2(
        sample_four_neg_s[7]), .Z(n98) );
  aor22d1 U210 ( .A1(n204), .A2(mcmc_lut_data[8]), .B1(n208), .B2(
        sample_four_neg_s[8]), .Z(n99) );
  aor22d1 U211 ( .A1(n204), .A2(mcmc_lut_data[9]), .B1(n208), .B2(
        sample_four_neg_s[9]), .Z(n100) );
  aor22d1 U212 ( .A1(n204), .A2(mcmc_lut_data[10]), .B1(n207), .B2(
        sample_four_neg_s[10]), .Z(n101) );
  aor22d1 U213 ( .A1(n204), .A2(mcmc_lut_data[11]), .B1(n207), .B2(
        sample_four_neg_s[11]), .Z(n102) );
  aor22d1 U214 ( .A1(n205), .A2(mcmc_lut_data[12]), .B1(n207), .B2(
        sample_four_neg_s[12]), .Z(n103) );
  aor22d1 U215 ( .A1(n205), .A2(mcmc_lut_data[13]), .B1(n207), .B2(
        sample_four_neg_s[13]), .Z(n104) );
  aor22d1 U216 ( .A1(n205), .A2(mcmc_lut_data[14]), .B1(n206), .B2(
        sample_four_neg_s[14]), .Z(n105) );
  aor22d1 U217 ( .A1(n205), .A2(mcmc_lut_data[15]), .B1(n206), .B2(
        sample_four_neg_s[15]), .Z(n106) );
  aor22d1 U218 ( .A1(n205), .A2(mcmc_lut_data[16]), .B1(n206), .B2(
        sample_four_neg_s[16]), .Z(n107) );
  or02d0 U219 ( .A1(sample_four_neg_s[17]), .A2(n205), .Z(n108) );
  aor22d1 U220 ( .A1(n198), .A2(mcmc_lut_data[0]), .B1(n206), .B2(
        sample_four_neg_s[0]), .Z(n109) );
  aor22d1 U223 ( .A1(mcmc_lut_data[17]), .A2(n186), .B1(n197), .B2(
        sample_three_pos_s[0]), .Z(n110) );
  aor22d1 U224 ( .A1(mcmc_lut_data[33]), .A2(n186), .B1(n197), .B2(
        sample_three_pos_s[16]), .Z(n111) );
  aor22d1 U225 ( .A1(mcmc_lut_data[32]), .A2(n186), .B1(n197), .B2(
        sample_three_pos_s[15]), .Z(n112) );
  aor22d1 U226 ( .A1(mcmc_lut_data[31]), .A2(n186), .B1(n197), .B2(
        sample_three_pos_s[14]), .Z(n113) );
  aor22d1 U227 ( .A1(mcmc_lut_data[30]), .A2(n186), .B1(n197), .B2(
        sample_three_pos_s[13]), .Z(n114) );
  aor22d1 U228 ( .A1(mcmc_lut_data[29]), .A2(n22), .B1(n197), .B2(
        sample_three_pos_s[12]), .Z(n115) );
  aor22d1 U229 ( .A1(mcmc_lut_data[28]), .A2(n22), .B1(n197), .B2(
        sample_three_pos_s[11]), .Z(n116) );
  aor22d1 U230 ( .A1(mcmc_lut_data[27]), .A2(n22), .B1(n197), .B2(
        sample_three_pos_s[10]), .Z(n117) );
  aor22d1 U231 ( .A1(mcmc_lut_data[26]), .A2(n22), .B1(n197), .B2(
        sample_three_pos_s[9]), .Z(n118) );
  aor22d1 U232 ( .A1(mcmc_lut_data[25]), .A2(n22), .B1(n197), .B2(
        sample_three_pos_s[8]), .Z(n119) );
  aor22d1 U233 ( .A1(mcmc_lut_data[24]), .A2(n22), .B1(n197), .B2(
        sample_three_pos_s[7]), .Z(n120) );
  aor22d1 U234 ( .A1(mcmc_lut_data[23]), .A2(n22), .B1(n197), .B2(
        sample_three_pos_s[6]), .Z(n121) );
  aor22d1 U235 ( .A1(mcmc_lut_data[22]), .A2(n22), .B1(n196), .B2(
        sample_three_pos_s[5]), .Z(n122) );
  aor22d1 U236 ( .A1(mcmc_lut_data[21]), .A2(n22), .B1(n196), .B2(
        sample_three_pos_s[4]), .Z(n123) );
  aor22d1 U237 ( .A1(mcmc_lut_data[20]), .A2(n20), .B1(n196), .B2(
        sample_three_pos_s[3]), .Z(n124) );
  aor22d1 U238 ( .A1(mcmc_lut_data[19]), .A2(n20), .B1(n196), .B2(
        sample_three_pos_s[2]), .Z(n125) );
  aor22d1 U239 ( .A1(mcmc_lut_data[18]), .A2(n20), .B1(n196), .B2(
        sample_three_pos_s[1]), .Z(n126) );
  aor22d1 U240 ( .A1(mcmc_lut_data[51]), .A2(n20), .B1(n196), .B2(
        sample_one_pos_s[0]), .Z(n127) );
  aor22d1 U241 ( .A1(mcmc_lut_data[67]), .A2(n20), .B1(n196), .B2(
        sample_one_pos_s[16]), .Z(n128) );
  aor22d1 U242 ( .A1(mcmc_lut_data[66]), .A2(n20), .B1(n196), .B2(
        sample_one_pos_s[15]), .Z(n129) );
  aor22d1 U243 ( .A1(mcmc_lut_data[65]), .A2(n20), .B1(n196), .B2(
        sample_one_pos_s[14]), .Z(n130) );
  aor22d1 U244 ( .A1(mcmc_lut_data[64]), .A2(n20), .B1(n196), .B2(
        sample_one_pos_s[13]), .Z(n131) );
  aor22d1 U245 ( .A1(mcmc_lut_data[63]), .A2(n20), .B1(n196), .B2(
        sample_one_pos_s[12]), .Z(n132) );
  aor22d1 U246 ( .A1(mcmc_lut_data[62]), .A2(n13), .B1(n196), .B2(
        sample_one_pos_s[11]), .Z(n133) );
  aor22d1 U247 ( .A1(mcmc_lut_data[61]), .A2(n13), .B1(n195), .B2(
        sample_one_pos_s[10]), .Z(n134) );
  aor22d1 U248 ( .A1(mcmc_lut_data[60]), .A2(n13), .B1(n195), .B2(
        sample_one_pos_s[9]), .Z(n135) );
  aor22d1 U249 ( .A1(mcmc_lut_data[59]), .A2(n13), .B1(n195), .B2(
        sample_one_pos_s[8]), .Z(n136) );
  aor22d1 U250 ( .A1(mcmc_lut_data[58]), .A2(n13), .B1(n195), .B2(
        sample_one_pos_s[7]), .Z(n137) );
  aor22d1 U251 ( .A1(mcmc_lut_data[57]), .A2(n13), .B1(n195), .B2(
        sample_one_pos_s[6]), .Z(n138) );
  aor22d1 U252 ( .A1(mcmc_lut_data[56]), .A2(n13), .B1(n195), .B2(
        sample_one_pos_s[5]), .Z(n139) );
  aor22d1 U253 ( .A1(mcmc_lut_data[55]), .A2(n13), .B1(n195), .B2(
        sample_one_pos_s[4]), .Z(n140) );
  aor22d1 U254 ( .A1(mcmc_lut_data[54]), .A2(n13), .B1(n195), .B2(
        sample_one_pos_s[3]), .Z(n141) );
  aor22d1 U255 ( .A1(mcmc_lut_data[53]), .A2(n11), .B1(n195), .B2(
        sample_one_pos_s[2]), .Z(n142) );
  aor22d1 U256 ( .A1(mcmc_lut_data[52]), .A2(n11), .B1(n195), .B2(
        sample_one_pos_s[1]), .Z(n143) );
  aor22d1 U257 ( .A1(mcmc_lut_data[35]), .A2(n11), .B1(n195), .B2(
        sample_two_pos_s[1]), .Z(n144) );
  aor22d1 U258 ( .A1(mcmc_lut_data[36]), .A2(n11), .B1(n195), .B2(
        sample_two_pos_s[2]), .Z(n145) );
  aor22d1 U259 ( .A1(mcmc_lut_data[37]), .A2(n11), .B1(n194), .B2(
        sample_two_pos_s[3]), .Z(n146) );
  aor22d1 U260 ( .A1(mcmc_lut_data[38]), .A2(n11), .B1(n194), .B2(
        sample_two_pos_s[4]), .Z(n147) );
  aor22d1 U261 ( .A1(mcmc_lut_data[39]), .A2(n11), .B1(n194), .B2(
        sample_two_pos_s[5]), .Z(n148) );
  aor22d1 U262 ( .A1(mcmc_lut_data[40]), .A2(n11), .B1(n194), .B2(
        sample_two_pos_s[6]), .Z(n149) );
  aor22d1 U263 ( .A1(mcmc_lut_data[41]), .A2(n11), .B1(n193), .B2(
        sample_two_pos_s[7]), .Z(n150) );
  aor22d1 U264 ( .A1(mcmc_lut_data[42]), .A2(n10), .B1(n193), .B2(
        sample_two_pos_s[8]), .Z(n151) );
  aor22d1 U265 ( .A1(mcmc_lut_data[43]), .A2(n10), .B1(n193), .B2(
        sample_two_pos_s[9]), .Z(n152) );
  aor22d1 U266 ( .A1(mcmc_lut_data[44]), .A2(n10), .B1(n193), .B2(
        sample_two_pos_s[10]), .Z(n153) );
  aor22d1 U267 ( .A1(mcmc_lut_data[45]), .A2(n10), .B1(n192), .B2(
        sample_two_pos_s[11]), .Z(n154) );
  aor22d1 U268 ( .A1(mcmc_lut_data[46]), .A2(n10), .B1(n192), .B2(
        sample_two_pos_s[12]), .Z(n155) );
  aor22d1 U269 ( .A1(mcmc_lut_data[47]), .A2(n10), .B1(n192), .B2(
        sample_two_pos_s[13]), .Z(n156) );
  aor22d1 U270 ( .A1(mcmc_lut_data[48]), .A2(n10), .B1(n192), .B2(
        sample_two_pos_s[14]), .Z(n157) );
  aor22d1 U271 ( .A1(mcmc_lut_data[49]), .A2(n10), .B1(n191), .B2(
        sample_two_pos_s[15]), .Z(n158) );
  aor22d1 U272 ( .A1(mcmc_lut_data[50]), .A2(n10), .B1(n191), .B2(
        sample_two_pos_s[16]), .Z(n159) );
  aor22d1 U273 ( .A1(mcmc_lut_data[34]), .A2(n9), .B1(n191), .B2(
        sample_two_pos_s[0]), .Z(n160) );
  aor22d1 U274 ( .A1(mcmc_lut_data[1]), .A2(n9), .B1(n191), .B2(
        sample_four_pos_s[1]), .Z(n161) );
  aor22d1 U275 ( .A1(mcmc_lut_data[2]), .A2(n9), .B1(n190), .B2(
        sample_four_pos_s[2]), .Z(n162) );
  aor22d1 U276 ( .A1(mcmc_lut_data[3]), .A2(n9), .B1(n190), .B2(
        sample_four_pos_s[3]), .Z(n163) );
  aor22d1 U277 ( .A1(mcmc_lut_data[4]), .A2(n9), .B1(n190), .B2(
        sample_four_pos_s[4]), .Z(n164) );
  aor22d1 U278 ( .A1(mcmc_lut_data[5]), .A2(n9), .B1(n190), .B2(
        sample_four_pos_s[5]), .Z(n165) );
  aor22d1 U279 ( .A1(mcmc_lut_data[6]), .A2(n9), .B1(n189), .B2(
        sample_four_pos_s[6]), .Z(n166) );
  aor22d1 U280 ( .A1(mcmc_lut_data[7]), .A2(n9), .B1(n189), .B2(
        sample_four_pos_s[7]), .Z(n167) );
  aor22d1 U281 ( .A1(mcmc_lut_data[8]), .A2(n9), .B1(n189), .B2(
        sample_four_pos_s[8]), .Z(n168) );
  aor22d1 U282 ( .A1(mcmc_lut_data[9]), .A2(n7), .B1(n189), .B2(
        sample_four_pos_s[9]), .Z(n169) );
  aor22d1 U283 ( .A1(mcmc_lut_data[10]), .A2(n7), .B1(n188), .B2(
        sample_four_pos_s[10]), .Z(n170) );
  aor22d1 U284 ( .A1(mcmc_lut_data[11]), .A2(n7), .B1(n188), .B2(
        sample_four_pos_s[11]), .Z(n171) );
  aor22d1 U285 ( .A1(mcmc_lut_data[12]), .A2(n7), .B1(n188), .B2(
        sample_four_pos_s[12]), .Z(n172) );
  aor22d1 U286 ( .A1(mcmc_lut_data[13]), .A2(n7), .B1(n188), .B2(
        sample_four_pos_s[13]), .Z(n173) );
  aor22d1 U287 ( .A1(mcmc_lut_data[14]), .A2(n7), .B1(n187), .B2(
        sample_four_pos_s[14]), .Z(n174) );
  aor22d1 U288 ( .A1(mcmc_lut_data[15]), .A2(n7), .B1(n187), .B2(
        sample_four_pos_s[15]), .Z(n175) );
  aor22d1 U289 ( .A1(mcmc_lut_data[16]), .A2(n7), .B1(n187), .B2(
        sample_four_pos_s[16]), .Z(n176) );
  aor22d1 U290 ( .A1(mcmc_lut_data[0]), .A2(n7), .B1(n187), .B2(
        sample_four_pos_s[0]), .Z(n177) );
  xr02d1 U293 ( .A1(pos_read), .A2(n15), .Z(n178) );
  or02d0 U295 ( .A1(mcmc_finish), .A2(n234), .Z(n179) );
  or02d0 U297 ( .A1(start), .A2(const_start), .Z(n180) );
  xr02d1 U298 ( .A1(clk_count[3]), .A2(n16), .Z(n181) );
  xr02d1 U300 ( .A1(n296), .A2(n17), .Z(n183) );
  xr02d1 U303 ( .A1(n19), .A2(n182), .Z(n184) );
  xr02d1 U304 ( .A1(clk_count[1]), .A2(n18), .Z(n185) );
  aor22d1 U311 ( .A1(n21), .A2(mean_pos[16]), .B1(mean_neg[16]), .B2(n294), 
        .Z(N63) );
  aor22d1 U312 ( .A1(n21), .A2(mean_pos[15]), .B1(mean_neg[15]), .B2(n294), 
        .Z(N62) );
  aor22d1 U313 ( .A1(n21), .A2(mean_pos[14]), .B1(mean_neg[14]), .B2(n294), 
        .Z(N61) );
  aor22d1 U314 ( .A1(n21), .A2(mean_pos[13]), .B1(mean_neg[13]), .B2(n294), 
        .Z(N60) );
  aor22d1 U315 ( .A1(n21), .A2(mean_pos[12]), .B1(mean_neg[12]), .B2(n294), 
        .Z(N59) );
  aor22d1 U316 ( .A1(n21), .A2(std_pos[17]), .B1(std_neg[17]), .B2(n294), .Z(
        N58) );
  aor22d1 U317 ( .A1(n21), .A2(std_pos[16]), .B1(std_neg[16]), .B2(n294), .Z(
        N57) );
  aor22d1 U318 ( .A1(n21), .A2(std_pos[15]), .B1(std_neg[15]), .B2(n294), .Z(
        N56) );
  aor22d1 U319 ( .A1(n21), .A2(std_pos[14]), .B1(std_neg[14]), .B2(n294), .Z(
        N55) );
  aor22d1 U320 ( .A1(n21), .A2(std_pos[13]), .B1(std_neg[13]), .B2(n294), .Z(
        N54) );
  aor22d1 U321 ( .A1(n21), .A2(std_pos[12]), .B1(std_neg[12]), .B2(n294), .Z(
        N53) );
  xr02d1 U325 ( .A1(mean_pos[15]), .A2(mcmc_lut_addr[9]), .Z(n28) );
  xr02d1 U326 ( .A1(mean_pos[14]), .A2(mcmc_lut_addr[8]), .Z(n27) );
  xr02d1 U328 ( .A1(std_pos[14]), .A2(mcmc_lut_addr[2]), .Z(n31) );
  xr02d1 U329 ( .A1(std_pos[15]), .A2(mcmc_lut_addr[3]), .Z(n30) );
  xr02d1 U330 ( .A1(mean_pos[16]), .A2(mcmc_lut_addr[10]), .Z(n29) );
  xr02d1 U332 ( .A1(std_pos[17]), .A2(mcmc_lut_addr[5]), .Z(n34) );
  xr02d1 U333 ( .A1(mean_pos[13]), .A2(mcmc_lut_addr[7]), .Z(n33) );
  xr02d1 U334 ( .A1(std_pos[16]), .A2(mcmc_lut_addr[4]), .Z(n32) );
  xr02d1 U336 ( .A1(std_pos[13]), .A2(mcmc_lut_addr[1]), .Z(n37) );
  xr02d1 U337 ( .A1(std_pos[12]), .A2(mcmc_lut_addr[0]), .Z(n36) );
  xr02d1 U338 ( .A1(mean_pos[12]), .A2(mcmc_lut_addr[6]), .Z(n35) );
  an02d1 U12 ( .A1(n255), .A2(sample_two_pos[17]), .Z(sample_two_pos[17]) );
  an02d1 U48 ( .A1(n255), .A2(sample_three_pos[17]), .Z(sample_three_pos[17])
         );
  an02d1 U84 ( .A1(n255), .A2(sample_one_pos[17]), .Z(sample_one_pos[17]) );
  an02d1 U120 ( .A1(n255), .A2(sample_four_pos[17]), .Z(sample_four_pos[17])
         );
  nd04d1 U130 ( .A1(n182), .A2(clk_count[3]), .A3(clk_count[1]), .A4(n296), 
        .ZN(n5) );
  nd12d1 U292 ( .A1(n12), .A2(pos_read), .ZN(n14) );
  an02d1 U294 ( .A1(const_start), .A2(N49), .Z(n15) );
  nd04d1 U307 ( .A1(clk_count[2]), .A2(n182), .A3(clk_count[3]), .A4(n295), 
        .ZN(n8) );
  nd12d1 U310 ( .A1(mcmc_finish), .A2(const_start), .ZN(n12) );
  nr03d1 U324 ( .A1(n27), .A2(mcmc_finish), .A3(n28), .ZN(n26) );
  nr03d1 U327 ( .A1(n29), .A2(n30), .A3(n31), .ZN(n25) );
  nr03d1 U331 ( .A1(n32), .A2(n33), .A3(n34), .ZN(n24) );
  nr03d1 U335 ( .A1(n35), .A2(n36), .A3(n37), .ZN(n23) );
  nr03d1 U340 ( .A1(count[0]), .A2(mcmc_finish), .A3(count[1]), .ZN(N48) );
  dfcrq1 sample_four_neg_s_reg_17_ ( .D(n108), .CP(clk), .CDN(n285), .Q(
        sample_four_neg_s[17]) );
  dfcrq1 sample_two_neg_s_reg_17_ ( .D(n90), .CP(clk), .CDN(n287), .Q(
        sample_two_neg_s[17]) );
  dfcrq1 sample_one_neg_s_reg_17_ ( .D(n57), .CP(clk), .CDN(n290), .Q(
        sample_one_neg_s[17]) );
  dfcrq1 sample_three_neg_s_reg_17_ ( .D(n39), .CP(clk), .CDN(n292), .Q(
        sample_three_neg_s[17]) );
  dfcrq1 count_reg_0_ ( .D(N48), .CP(clk), .CDN(n278), .Q(count[0]) );
  dfcrq1 count_reg_1_ ( .D(N49), .CP(clk), .CDN(n278), .Q(count[1]) );
  dfcrq1 pos_read_reg ( .D(n178), .CP(clk), .CDN(n278), .Q(pos_read) );
  dfcrq1 mcmc_lut_addr_reg_5_ ( .D(N58), .CP(clk), .CDN(n293), .Q(
        mcmc_lut_addr[5]) );
  dfcrq1 mcmc_lut_addr_reg_2_ ( .D(N55), .CP(clk), .CDN(n293), .Q(
        mcmc_lut_addr[2]) );
  dfcrq1 mcmc_lut_addr_reg_1_ ( .D(N54), .CP(clk), .CDN(n292), .Q(
        mcmc_lut_addr[1]) );
  dfcrq1 mcmc_lut_addr_reg_9_ ( .D(N62), .CP(clk), .CDN(n293), .Q(
        mcmc_lut_addr[9]) );
  dfcrq1 mcmc_lut_addr_reg_7_ ( .D(N60), .CP(clk), .CDN(n293), .Q(
        mcmc_lut_addr[7]) );
  dfcrq1 mcmc_lut_addr_reg_3_ ( .D(N56), .CP(clk), .CDN(n293), .Q(
        mcmc_lut_addr[3]) );
  dfcrq1 mcmc_lut_addr_reg_0_ ( .D(N53), .CP(clk), .CDN(n292), .Q(
        mcmc_lut_addr[0]) );
  dfcrq1 mcmc_lut_addr_reg_4_ ( .D(N57), .CP(clk), .CDN(n293), .Q(
        mcmc_lut_addr[4]) );
  dfcrq1 mcmc_lut_addr_reg_10_ ( .D(N63), .CP(clk), .CDN(n293), .Q(
        mcmc_lut_addr[10]) );
  dfcrq1 mcmc_lut_addr_reg_6_ ( .D(N59), .CP(clk), .CDN(n293), .Q(
        mcmc_lut_addr[6]) );
  dfcrq1 mcmc_lut_addr_reg_8_ ( .D(N61), .CP(clk), .CDN(n293), .Q(
        mcmc_lut_addr[8]) );
  dfcrq1 const_start_reg ( .D(n180), .CP(clk), .CDN(n278), .Q(const_start) );
  dfcrq1 mcmc_finish_s_reg ( .D(n179), .CP(clk), .CDN(n278), .Q(mcmc_finish)
         );
  dfcrq1 mcmc_lut_read_reg ( .D(N64), .CP(clk), .CDN(n293), .Q(mcmc_lut_read)
         );
  dfcrq1 sample_three_neg_s_reg_16_ ( .D(n40), .CP(clk), .CDN(n292), .Q(
        sample_three_neg_s[16]) );
  dfcrq1 sample_one_neg_s_reg_16_ ( .D(n58), .CP(clk), .CDN(n290), .Q(
        sample_one_neg_s[16]) );
  dfcrq1 sample_four_neg_s_reg_16_ ( .D(n107), .CP(clk), .CDN(n285), .Q(
        sample_four_neg_s[16]) );
  dfcrq1 sample_two_neg_s_reg_16_ ( .D(n89), .CP(clk), .CDN(n287), .Q(
        sample_two_neg_s[16]) );
  dfcrq1 sample_one_pos_s_reg_16_ ( .D(n128), .CP(clk), .CDN(n283), .Q(
        sample_one_pos_s[16]) );
  dfcrq1 sample_three_pos_s_reg_16_ ( .D(n111), .CP(clk), .CDN(n285), .Q(
        sample_three_pos_s[16]) );
  dfcrq1 sample_four_pos_s_reg_16_ ( .D(n176), .CP(clk), .CDN(n278), .Q(
        sample_four_pos_s[16]) );
  dfcrq1 sample_two_pos_s_reg_16_ ( .D(n159), .CP(clk), .CDN(n280), .Q(
        sample_two_pos_s[16]) );
  dfcrq1 sample_three_neg_s_reg_15_ ( .D(n41), .CP(clk), .CDN(n292), .Q(
        sample_three_neg_s[15]) );
  dfcrq1 sample_one_neg_s_reg_15_ ( .D(n59), .CP(clk), .CDN(n290), .Q(
        sample_one_neg_s[15]) );
  dfcrq1 sample_four_neg_s_reg_15_ ( .D(n106), .CP(clk), .CDN(n285), .Q(
        sample_four_neg_s[15]) );
  dfcrq1 sample_two_neg_s_reg_15_ ( .D(n88), .CP(clk), .CDN(n287), .Q(
        sample_two_neg_s[15]) );
  dfcrq1 sample_one_pos_s_reg_15_ ( .D(n129), .CP(clk), .CDN(n283), .Q(
        sample_one_pos_s[15]) );
  dfcrq1 sample_three_pos_s_reg_15_ ( .D(n112), .CP(clk), .CDN(n285), .Q(
        sample_three_pos_s[15]) );
  dfcrq1 sample_four_pos_s_reg_15_ ( .D(n175), .CP(clk), .CDN(n279), .Q(
        sample_four_pos_s[15]) );
  dfcrq1 sample_two_pos_s_reg_15_ ( .D(n158), .CP(clk), .CDN(n280), .Q(
        sample_two_pos_s[15]) );
  dfcrq1 sample_three_neg_s_reg_14_ ( .D(n42), .CP(clk), .CDN(n292), .Q(
        sample_three_neg_s[14]) );
  dfcrq1 sample_one_neg_s_reg_14_ ( .D(n60), .CP(clk), .CDN(n290), .Q(
        sample_one_neg_s[14]) );
  dfcrq1 sample_four_neg_s_reg_14_ ( .D(n105), .CP(clk), .CDN(n286), .Q(
        sample_four_neg_s[14]) );
  dfcrq1 sample_two_neg_s_reg_14_ ( .D(n87), .CP(clk), .CDN(n287), .Q(
        sample_two_neg_s[14]) );
  dfcrq1 sample_one_pos_s_reg_14_ ( .D(n130), .CP(clk), .CDN(n283), .Q(
        sample_one_pos_s[14]) );
  dfcrq1 sample_three_pos_s_reg_14_ ( .D(n113), .CP(clk), .CDN(n285), .Q(
        sample_three_pos_s[14]) );
  dfcrq1 sample_four_pos_s_reg_14_ ( .D(n174), .CP(clk), .CDN(n279), .Q(
        sample_four_pos_s[14]) );
  dfcrq1 sample_two_pos_s_reg_14_ ( .D(n157), .CP(clk), .CDN(n280), .Q(
        sample_two_pos_s[14]) );
  dfcrq1 sample_three_neg_s_reg_13_ ( .D(n43), .CP(clk), .CDN(n292), .Q(
        sample_three_neg_s[13]) );
  dfcrq1 sample_one_neg_s_reg_13_ ( .D(n61), .CP(clk), .CDN(n290), .Q(
        sample_one_neg_s[13]) );
  dfcrq1 sample_four_neg_s_reg_13_ ( .D(n104), .CP(clk), .CDN(n286), .Q(
        sample_four_neg_s[13]) );
  dfcrq1 sample_two_neg_s_reg_13_ ( .D(n86), .CP(clk), .CDN(n287), .Q(
        sample_two_neg_s[13]) );
  dfcrq1 sample_one_pos_s_reg_13_ ( .D(n131), .CP(clk), .CDN(n283), .Q(
        sample_one_pos_s[13]) );
  dfcrq1 sample_three_pos_s_reg_13_ ( .D(n114), .CP(clk), .CDN(n285), .Q(
        sample_three_pos_s[13]) );
  dfcrq1 sample_four_pos_s_reg_13_ ( .D(n173), .CP(clk), .CDN(n279), .Q(
        sample_four_pos_s[13]) );
  dfcrq1 sample_two_pos_s_reg_13_ ( .D(n156), .CP(clk), .CDN(n280), .Q(
        sample_two_pos_s[13]) );
  dfcrq1 sample_three_neg_s_reg_12_ ( .D(n44), .CP(clk), .CDN(n292), .Q(
        sample_three_neg_s[12]) );
  dfcrq1 sample_one_neg_s_reg_12_ ( .D(n62), .CP(clk), .CDN(n290), .Q(
        sample_one_neg_s[12]) );
  dfcrq1 sample_four_neg_s_reg_12_ ( .D(n103), .CP(clk), .CDN(n286), .Q(
        sample_four_neg_s[12]) );
  dfcrq1 sample_two_neg_s_reg_12_ ( .D(n85), .CP(clk), .CDN(n288), .Q(
        sample_two_neg_s[12]) );
  dfcrq1 sample_one_pos_s_reg_12_ ( .D(n132), .CP(clk), .CDN(n283), .Q(
        sample_one_pos_s[12]) );
  dfcrq1 sample_three_pos_s_reg_12_ ( .D(n115), .CP(clk), .CDN(n285), .Q(
        sample_three_pos_s[12]) );
  dfcrq1 sample_four_pos_s_reg_12_ ( .D(n172), .CP(clk), .CDN(n279), .Q(
        sample_four_pos_s[12]) );
  dfcrq1 sample_two_pos_s_reg_12_ ( .D(n155), .CP(clk), .CDN(n281), .Q(
        sample_two_pos_s[12]) );
  dfcrq1 sample_three_neg_s_reg_11_ ( .D(n45), .CP(clk), .CDN(n292), .Q(
        sample_three_neg_s[11]) );
  dfcrq1 sample_one_neg_s_reg_11_ ( .D(n63), .CP(clk), .CDN(n290), .Q(
        sample_one_neg_s[11]) );
  dfcrq1 sample_four_neg_s_reg_11_ ( .D(n102), .CP(clk), .CDN(n286), .Q(
        sample_four_neg_s[11]) );
  dfcrq1 sample_two_neg_s_reg_11_ ( .D(n84), .CP(clk), .CDN(n288), .Q(
        sample_two_neg_s[11]) );
  dfcrq1 sample_one_pos_s_reg_11_ ( .D(n133), .CP(clk), .CDN(n283), .Q(
        sample_one_pos_s[11]) );
  dfcrq1 sample_three_pos_s_reg_11_ ( .D(n116), .CP(clk), .CDN(n284), .Q(
        sample_three_pos_s[11]) );
  dfcrq1 sample_four_pos_s_reg_11_ ( .D(n171), .CP(clk), .CDN(n279), .Q(
        sample_four_pos_s[11]) );
  dfcrq1 sample_two_pos_s_reg_11_ ( .D(n154), .CP(clk), .CDN(n281), .Q(
        sample_two_pos_s[11]) );
  dfcrq1 sample_three_neg_s_reg_10_ ( .D(n46), .CP(clk), .CDN(n291), .Q(
        sample_three_neg_s[10]) );
  dfcrq1 sample_one_neg_s_reg_10_ ( .D(n64), .CP(clk), .CDN(n290), .Q(
        sample_one_neg_s[10]) );
  dfcrq1 sample_four_neg_s_reg_10_ ( .D(n101), .CP(clk), .CDN(n286), .Q(
        sample_four_neg_s[10]) );
  dfcrq1 sample_two_neg_s_reg_10_ ( .D(n83), .CP(clk), .CDN(n288), .Q(
        sample_two_neg_s[10]) );
  dfcrq1 sample_one_pos_s_reg_10_ ( .D(n134), .CP(clk), .CDN(n283), .Q(
        sample_one_pos_s[10]) );
  dfcrq1 sample_three_pos_s_reg_10_ ( .D(n117), .CP(clk), .CDN(n284), .Q(
        sample_three_pos_s[10]) );
  dfcrq1 sample_four_pos_s_reg_10_ ( .D(n170), .CP(clk), .CDN(n279), .Q(
        sample_four_pos_s[10]) );
  dfcrq1 sample_two_pos_s_reg_10_ ( .D(n153), .CP(clk), .CDN(n281), .Q(
        sample_two_pos_s[10]) );
  dfcrq1 sample_three_neg_s_reg_9_ ( .D(n47), .CP(clk), .CDN(n291), .Q(
        sample_three_neg_s[9]) );
  dfcrq1 sample_one_neg_s_reg_9_ ( .D(n65), .CP(clk), .CDN(n290), .Q(
        sample_one_neg_s[9]) );
  dfcrq1 sample_four_neg_s_reg_9_ ( .D(n100), .CP(clk), .CDN(n286), .Q(
        sample_four_neg_s[9]) );
  dfcrq1 sample_two_neg_s_reg_9_ ( .D(n82), .CP(clk), .CDN(n288), .Q(
        sample_two_neg_s[9]) );
  dfcrq1 sample_one_pos_s_reg_9_ ( .D(n135), .CP(clk), .CDN(n283), .Q(
        sample_one_pos_s[9]) );
  dfcrq1 sample_three_pos_s_reg_9_ ( .D(n118), .CP(clk), .CDN(n284), .Q(
        sample_three_pos_s[9]) );
  dfcrq1 sample_four_pos_s_reg_9_ ( .D(n169), .CP(clk), .CDN(n279), .Q(
        sample_four_pos_s[9]) );
  dfcrq1 sample_two_pos_s_reg_9_ ( .D(n152), .CP(clk), .CDN(n281), .Q(
        sample_two_pos_s[9]) );
  dfcrq1 sample_three_neg_s_reg_8_ ( .D(n48), .CP(clk), .CDN(n291), .Q(
        sample_three_neg_s[8]) );
  dfcrq1 sample_one_neg_s_reg_8_ ( .D(n66), .CP(clk), .CDN(n289), .Q(
        sample_one_neg_s[8]) );
  dfcrq1 sample_four_neg_s_reg_8_ ( .D(n99), .CP(clk), .CDN(n286), .Q(
        sample_four_neg_s[8]) );
  dfcrq1 sample_two_neg_s_reg_8_ ( .D(n81), .CP(clk), .CDN(n288), .Q(
        sample_two_neg_s[8]) );
  dfcrq1 sample_one_pos_s_reg_8_ ( .D(n136), .CP(clk), .CDN(n282), .Q(
        sample_one_pos_s[8]) );
  dfcrq1 sample_three_pos_s_reg_8_ ( .D(n119), .CP(clk), .CDN(n284), .Q(
        sample_three_pos_s[8]) );
  dfcrq1 sample_four_pos_s_reg_8_ ( .D(n168), .CP(clk), .CDN(n279), .Q(
        sample_four_pos_s[8]) );
  dfcrq1 sample_two_pos_s_reg_8_ ( .D(n151), .CP(clk), .CDN(n281), .Q(
        sample_two_pos_s[8]) );
  dfcrq1 sample_three_neg_s_reg_7_ ( .D(n49), .CP(clk), .CDN(n291), .Q(
        sample_three_neg_s[7]) );
  dfcrq1 sample_one_neg_s_reg_7_ ( .D(n67), .CP(clk), .CDN(n289), .Q(
        sample_one_neg_s[7]) );
  dfcrq1 sample_four_neg_s_reg_7_ ( .D(n98), .CP(clk), .CDN(n286), .Q(
        sample_four_neg_s[7]) );
  dfcrq1 sample_two_neg_s_reg_7_ ( .D(n80), .CP(clk), .CDN(n288), .Q(
        sample_two_neg_s[7]) );
  dfcrq1 sample_one_pos_s_reg_7_ ( .D(n137), .CP(clk), .CDN(n282), .Q(
        sample_one_pos_s[7]) );
  dfcrq1 sample_three_pos_s_reg_7_ ( .D(n120), .CP(clk), .CDN(n284), .Q(
        sample_three_pos_s[7]) );
  dfcrq1 sample_four_pos_s_reg_7_ ( .D(n167), .CP(clk), .CDN(n279), .Q(
        sample_four_pos_s[7]) );
  dfcrq1 sample_two_pos_s_reg_7_ ( .D(n150), .CP(clk), .CDN(n281), .Q(
        sample_two_pos_s[7]) );
  dfcrq1 sample_three_neg_s_reg_6_ ( .D(n50), .CP(clk), .CDN(n291), .Q(
        sample_three_neg_s[6]) );
  dfcrq1 sample_one_neg_s_reg_6_ ( .D(n68), .CP(clk), .CDN(n289), .Q(
        sample_one_neg_s[6]) );
  dfcrq1 sample_four_neg_s_reg_6_ ( .D(n97), .CP(clk), .CDN(n286), .Q(
        sample_four_neg_s[6]) );
  dfcrq1 sample_two_neg_s_reg_6_ ( .D(n79), .CP(clk), .CDN(n288), .Q(
        sample_two_neg_s[6]) );
  dfcrq1 sample_one_pos_s_reg_6_ ( .D(n138), .CP(clk), .CDN(n282), .Q(
        sample_one_pos_s[6]) );
  dfcrq1 sample_three_pos_s_reg_6_ ( .D(n121), .CP(clk), .CDN(n284), .Q(
        sample_three_pos_s[6]) );
  dfcrq1 sample_four_pos_s_reg_6_ ( .D(n166), .CP(clk), .CDN(n279), .Q(
        sample_four_pos_s[6]) );
  dfcrq1 sample_two_pos_s_reg_6_ ( .D(n149), .CP(clk), .CDN(n281), .Q(
        sample_two_pos_s[6]) );
  dfcrq1 sample_three_neg_s_reg_5_ ( .D(n51), .CP(clk), .CDN(n291), .Q(
        sample_three_neg_s[5]) );
  dfcrq1 sample_one_neg_s_reg_5_ ( .D(n69), .CP(clk), .CDN(n289), .Q(
        sample_one_neg_s[5]) );
  dfcrq1 sample_four_neg_s_reg_5_ ( .D(n96), .CP(clk), .CDN(n286), .Q(
        sample_four_neg_s[5]) );
  dfcrq1 sample_two_neg_s_reg_5_ ( .D(n78), .CP(clk), .CDN(n288), .Q(
        sample_two_neg_s[5]) );
  dfcrq1 sample_one_pos_s_reg_5_ ( .D(n139), .CP(clk), .CDN(n282), .Q(
        sample_one_pos_s[5]) );
  dfcrq1 sample_three_pos_s_reg_5_ ( .D(n122), .CP(clk), .CDN(n284), .Q(
        sample_three_pos_s[5]) );
  dfcrq1 sample_four_pos_s_reg_5_ ( .D(n165), .CP(clk), .CDN(n280), .Q(
        sample_four_pos_s[5]) );
  dfcrq1 sample_two_pos_s_reg_5_ ( .D(n148), .CP(clk), .CDN(n281), .Q(
        sample_two_pos_s[5]) );
  dfcrq1 sample_three_neg_s_reg_4_ ( .D(n52), .CP(clk), .CDN(n291), .Q(
        sample_three_neg_s[4]) );
  dfcrq1 sample_one_neg_s_reg_4_ ( .D(n70), .CP(clk), .CDN(n289), .Q(
        sample_one_neg_s[4]) );
  dfcrq1 sample_four_neg_s_reg_4_ ( .D(n95), .CP(clk), .CDN(n287), .Q(
        sample_four_neg_s[4]) );
  dfcrq1 sample_two_neg_s_reg_4_ ( .D(n77), .CP(clk), .CDN(n288), .Q(
        sample_two_neg_s[4]) );
  dfcrq1 sample_one_pos_s_reg_4_ ( .D(n140), .CP(clk), .CDN(n282), .Q(
        sample_one_pos_s[4]) );
  dfcrq1 sample_three_pos_s_reg_4_ ( .D(n123), .CP(clk), .CDN(n284), .Q(
        sample_three_pos_s[4]) );
  dfcrq1 sample_four_pos_s_reg_4_ ( .D(n164), .CP(clk), .CDN(n280), .Q(
        sample_four_pos_s[4]) );
  dfcrq1 sample_two_pos_s_reg_4_ ( .D(n147), .CP(clk), .CDN(n281), .Q(
        sample_two_pos_s[4]) );
  dfcrq1 sample_three_neg_s_reg_3_ ( .D(n53), .CP(clk), .CDN(n291), .Q(
        sample_three_neg_s[3]) );
  dfcrq1 sample_one_neg_s_reg_3_ ( .D(n71), .CP(clk), .CDN(n289), .Q(
        sample_one_neg_s[3]) );
  dfcrq1 sample_four_neg_s_reg_3_ ( .D(n94), .CP(clk), .CDN(n287), .Q(
        sample_four_neg_s[3]) );
  dfcrq1 sample_two_neg_s_reg_3_ ( .D(n76), .CP(clk), .CDN(n288), .Q(
        sample_two_neg_s[3]) );
  dfcrq1 sample_one_pos_s_reg_3_ ( .D(n141), .CP(clk), .CDN(n282), .Q(
        sample_one_pos_s[3]) );
  dfcrq1 sample_three_pos_s_reg_3_ ( .D(n124), .CP(clk), .CDN(n284), .Q(
        sample_three_pos_s[3]) );
  dfcrq1 sample_four_pos_s_reg_3_ ( .D(n163), .CP(clk), .CDN(n280), .Q(
        sample_four_pos_s[3]) );
  dfcrq1 sample_two_pos_s_reg_3_ ( .D(n146), .CP(clk), .CDN(n281), .Q(
        sample_two_pos_s[3]) );
  dfcrq1 sample_three_neg_s_reg_2_ ( .D(n54), .CP(clk), .CDN(n291), .Q(
        sample_three_neg_s[2]) );
  dfcrq1 sample_one_neg_s_reg_2_ ( .D(n72), .CP(clk), .CDN(n289), .Q(
        sample_one_neg_s[2]) );
  dfcrq1 sample_four_neg_s_reg_2_ ( .D(n93), .CP(clk), .CDN(n287), .Q(
        sample_four_neg_s[2]) );
  dfcrq1 sample_two_neg_s_reg_2_ ( .D(n75), .CP(clk), .CDN(n289), .Q(
        sample_two_neg_s[2]) );
  dfcrq1 sample_one_pos_s_reg_2_ ( .D(n142), .CP(clk), .CDN(n282), .Q(
        sample_one_pos_s[2]) );
  dfcrq1 sample_three_pos_s_reg_2_ ( .D(n125), .CP(clk), .CDN(n284), .Q(
        sample_three_pos_s[2]) );
  dfcrq1 sample_four_pos_s_reg_2_ ( .D(n162), .CP(clk), .CDN(n280), .Q(
        sample_four_pos_s[2]) );
  dfcrq1 sample_two_pos_s_reg_2_ ( .D(n145), .CP(clk), .CDN(n282), .Q(
        sample_two_pos_s[2]) );
  dfcrq1 sample_three_neg_s_reg_1_ ( .D(n55), .CP(clk), .CDN(n291), .Q(
        sample_three_neg_s[1]) );
  dfcrq1 sample_one_neg_s_reg_1_ ( .D(n73), .CP(clk), .CDN(n289), .Q(
        sample_one_neg_s[1]) );
  dfcrq1 sample_four_neg_s_reg_1_ ( .D(n92), .CP(clk), .CDN(n287), .Q(
        sample_four_neg_s[1]) );
  dfcrq1 sample_two_neg_s_reg_1_ ( .D(n74), .CP(clk), .CDN(n289), .Q(
        sample_two_neg_s[1]) );
  dfcrq1 sample_one_pos_s_reg_1_ ( .D(n143), .CP(clk), .CDN(n282), .Q(
        sample_one_pos_s[1]) );
  dfcrq1 sample_three_pos_s_reg_1_ ( .D(n126), .CP(clk), .CDN(n283), .Q(
        sample_three_pos_s[1]) );
  dfcrq1 sample_four_pos_s_reg_1_ ( .D(n161), .CP(clk), .CDN(n280), .Q(
        sample_four_pos_s[1]) );
  dfcrq1 sample_two_pos_s_reg_1_ ( .D(n144), .CP(clk), .CDN(n282), .Q(
        sample_two_pos_s[1]) );
  dfcrq1 sample_three_neg_s_reg_0_ ( .D(n38), .CP(clk), .CDN(n292), .Q(
        sample_three_neg_s[0]) );
  dfcrq1 sample_one_neg_s_reg_0_ ( .D(n56), .CP(clk), .CDN(n290), .Q(
        sample_one_neg_s[0]) );
  dfcrq1 sample_four_neg_s_reg_0_ ( .D(n109), .CP(clk), .CDN(n285), .Q(
        sample_four_neg_s[0]) );
  dfcrq1 sample_two_neg_s_reg_0_ ( .D(n91), .CP(clk), .CDN(n287), .Q(
        sample_two_neg_s[0]) );
  dfcrq1 sample_one_pos_s_reg_0_ ( .D(n127), .CP(clk), .CDN(n283), .Q(
        sample_one_pos_s[0]) );
  dfcrq1 sample_three_pos_s_reg_0_ ( .D(n110), .CP(clk), .CDN(n285), .Q(
        sample_three_pos_s[0]) );
  dfcrq1 sample_four_pos_s_reg_0_ ( .D(n177), .CP(clk), .CDN(n278), .Q(
        sample_four_pos_s[0]) );
  dfcrq1 sample_two_pos_s_reg_0_ ( .D(n160), .CP(clk), .CDN(n280), .Q(
        sample_two_pos_s[0]) );
  dfcrq4 clk_count_reg_1_ ( .D(n185), .CP(clk), .CDN(n278), .Q(clk_count[1])
         );
  dfcrq2 clk_count_reg_2_ ( .D(n183), .CP(clk), .CDN(n278), .Q(clk_count[2])
         );
  dfcrq2 clk_count_reg_3_ ( .D(n181), .CP(clk), .CDN(n278), .Q(clk_count[3])
         );
  dfcrn1 clk_count_reg_0_ ( .D(n184), .CP(clk), .CDN(n275), .QN(n182) );
  buffd3 U129 ( .I(n269), .Z(n256) );
  nr02d1 U221 ( .A1(n12), .A2(pos_read), .ZN(n1) );
  buffd1 U222 ( .I(n220), .Z(n240) );
  inv0d2 U291 ( .I(clk_count[2]), .ZN(n296) );
  inv0d0 U296 ( .I(n238), .ZN(n231) );
  inv0d0 U299 ( .I(n243), .ZN(n226) );
  inv0d0 U301 ( .I(n237), .ZN(n232) );
  inv0d0 U302 ( .I(n241), .ZN(n228) );
  inv0d0 U305 ( .I(n239), .ZN(n230) );
  inv0d0 U306 ( .I(n260), .ZN(n251) );
  inv0d0 U308 ( .I(n258), .ZN(n253) );
  inv0d0 U309 ( .I(n263), .ZN(n248) );
  inv0d0 U322 ( .I(n261), .ZN(n250) );
  inv0d0 U323 ( .I(n259), .ZN(n252) );
  inv0d0 U339 ( .I(n257), .ZN(n254) );
  buffd1 U341 ( .I(n8), .Z(n224) );
  invbd2 U342 ( .I(clk_count[1]), .ZN(n295) );
  bufbd3 U343 ( .I(n221), .Z(n242) );
  bufbd3 U344 ( .I(n219), .Z(n236) );
  bufbd3 U345 ( .I(n267), .Z(n262) );
  nr02d0 U346 ( .A1(n19), .A2(n182), .ZN(n18) );
  nd02d0 U347 ( .A1(const_start), .A2(n235), .ZN(n19) );
  nd02d0 U348 ( .A1(n18), .A2(clk_count[1]), .ZN(n17) );
  nr02d0 U349 ( .A1(n296), .A2(n17), .ZN(n16) );
  inv0d0 U350 ( .I(n242), .ZN(n227) );
  inv0d0 U351 ( .I(n236), .ZN(n233) );
  inv0d0 U352 ( .I(n240), .ZN(n229) );
  buffd1 U353 ( .I(n220), .Z(n238) );
  inv0d0 U354 ( .I(n262), .ZN(n249) );
  inv0d0 U355 ( .I(n256), .ZN(n255) );
  buffd1 U356 ( .I(n221), .Z(n243) );
  buffd1 U357 ( .I(n222), .Z(n245) );
  buffd1 U358 ( .I(n219), .Z(n237) );
  buffd1 U359 ( .I(n219), .Z(n235) );
  buffd1 U360 ( .I(n221), .Z(n241) );
  buffd1 U361 ( .I(n220), .Z(n239) );
  buffd1 U362 ( .I(n222), .Z(n244) );
  buffd1 U363 ( .I(n222), .Z(n246) );
  inv0d0 U364 ( .I(n188), .ZN(n22) );
  inv0d0 U365 ( .I(n189), .ZN(n20) );
  inv0d0 U366 ( .I(n190), .ZN(n13) );
  inv0d0 U367 ( .I(n191), .ZN(n11) );
  inv0d0 U368 ( .I(n192), .ZN(n10) );
  inv0d0 U369 ( .I(n193), .ZN(n9) );
  inv0d0 U370 ( .I(n194), .ZN(n7) );
  inv0d0 U371 ( .I(n187), .ZN(n186) );
  inv0d0 U372 ( .I(n206), .ZN(n205) );
  inv0d0 U373 ( .I(n212), .ZN(n199) );
  inv0d0 U374 ( .I(n211), .ZN(n200) );
  inv0d0 U375 ( .I(n210), .ZN(n201) );
  inv0d0 U376 ( .I(n209), .ZN(n202) );
  inv0d0 U377 ( .I(n208), .ZN(n203) );
  inv0d0 U378 ( .I(n213), .ZN(n198) );
  inv0d0 U379 ( .I(n207), .ZN(n204) );
  buffd1 U380 ( .I(n275), .Z(n293) );
  buffd1 U381 ( .I(n274), .Z(n292) );
  buffd1 U382 ( .I(n274), .Z(n291) );
  buffd1 U383 ( .I(n274), .Z(n290) );
  buffd1 U384 ( .I(n273), .Z(n289) );
  buffd1 U385 ( .I(n273), .Z(n288) );
  buffd1 U386 ( .I(n273), .Z(n287) );
  buffd1 U387 ( .I(n272), .Z(n286) );
  buffd1 U388 ( .I(n272), .Z(n285) );
  buffd1 U389 ( .I(n272), .Z(n284) );
  buffd1 U390 ( .I(n271), .Z(n283) );
  buffd1 U391 ( .I(n271), .Z(n282) );
  buffd1 U392 ( .I(n271), .Z(n281) );
  buffd1 U393 ( .I(n270), .Z(n280) );
  buffd1 U394 ( .I(n270), .Z(n279) );
  buffd1 U395 ( .I(n270), .Z(n278) );
  buffd1 U396 ( .I(n256), .Z(n265) );
  buffd1 U397 ( .I(n224), .Z(n221) );
  buffd1 U398 ( .I(n256), .Z(n264) );
  buffd1 U399 ( .I(n225), .Z(n219) );
  buffd1 U400 ( .I(n268), .Z(n260) );
  buffd1 U401 ( .I(n225), .Z(n220) );
  buffd1 U402 ( .I(n268), .Z(n258) );
  buffd1 U403 ( .I(n257), .Z(n266) );
  buffd1 U404 ( .I(n224), .Z(n222) );
  buffd1 U405 ( .I(n267), .Z(n263) );
  buffd1 U406 ( .I(n267), .Z(n261) );
  buffd1 U407 ( .I(n269), .Z(n257) );
  buffd1 U408 ( .I(n268), .Z(n259) );
  buffd1 U409 ( .I(n223), .Z(n247) );
  buffd1 U410 ( .I(n224), .Z(n223) );
  buffd1 U411 ( .I(n4), .Z(n194) );
  buffd1 U412 ( .I(n4), .Z(n193) );
  buffd1 U413 ( .I(n3), .Z(n192) );
  buffd1 U414 ( .I(n3), .Z(n191) );
  buffd1 U415 ( .I(n3), .Z(n190) );
  buffd1 U416 ( .I(n2), .Z(n189) );
  buffd1 U417 ( .I(n2), .Z(n188) );
  buffd1 U418 ( .I(n2), .Z(n187) );
  buffd1 U419 ( .I(n4), .Z(n195) );
  buffd1 U420 ( .I(n6), .Z(n197) );
  buffd1 U421 ( .I(n6), .Z(n196) );
  buffd1 U422 ( .I(n217), .Z(n216) );
  buffd1 U423 ( .I(n217), .Z(n215) );
  buffd1 U424 ( .I(n217), .Z(n214) );
  buffd1 U425 ( .I(n218), .Z(n213) );
  buffd1 U426 ( .I(n217), .Z(n212) );
  buffd1 U427 ( .I(n218), .Z(n211) );
  buffd1 U428 ( .I(n218), .Z(n210) );
  buffd1 U429 ( .I(n217), .Z(n209) );
  buffd1 U430 ( .I(n218), .Z(n208) );
  buffd1 U431 ( .I(n218), .Z(n207) );
  buffd1 U432 ( .I(n218), .Z(n206) );
  buffd1 U433 ( .I(n276), .Z(n274) );
  buffd1 U434 ( .I(n276), .Z(n273) );
  buffd1 U435 ( .I(n277), .Z(n272) );
  buffd1 U436 ( .I(n277), .Z(n271) );
  buffd1 U437 ( .I(n277), .Z(n270) );
  buffd1 U438 ( .I(n276), .Z(n275) );
  inv0d0 U439 ( .I(n5), .ZN(n269) );
  buffd1 U440 ( .I(n8), .Z(n225) );
  inv0d0 U441 ( .I(n5), .ZN(n268) );
  inv0d0 U442 ( .I(n5), .ZN(n267) );
  inv0d1 U443 ( .I(n21), .ZN(n294) );
  buffd1 U444 ( .I(n14), .Z(n4) );
  buffd1 U445 ( .I(n14), .Z(n3) );
  buffd1 U446 ( .I(n14), .Z(n2) );
  buffd1 U447 ( .I(n14), .Z(n6) );
  inv0d0 U448 ( .I(n1), .ZN(n217) );
  inv0d0 U449 ( .I(n1), .ZN(n218) );
  buffd1 U450 ( .I(reset_n), .Z(n277) );
  buffd1 U451 ( .I(reset_n), .Z(n276) );
  nd04d1 U452 ( .A1(n23), .A2(n24), .A3(n25), .A4(n26), .ZN(n21) );
  inv0d0 U453 ( .I(n235), .ZN(n234) );
  nr13d1 U454 ( .A1(count[0]), .A2(count[1]), .A3(mcmc_finish), .ZN(N49) );
  nr02d1 U455 ( .A1(count[0]), .A2(n12), .ZN(N64) );
endmodule


module dctc_DW01_inc_0_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ah01d1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ah01d1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ah01d1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ah01d1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ah01d1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ah01d1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  inv0d0 U1 ( .I(A[0]), .ZN(SUM[0]) );
  xr02d1 U2 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
endmodule


module dctc_DW01_add_0 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [17:2] carry;

  ad01d0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ad01d0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ad01d0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ad01d0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ad01d0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ad01d0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ad01d0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n2), .CO(carry[2]), .S(SUM[1]) );
  nd02d1 U1 ( .A1(n1), .A2(A[18]), .ZN(n3) );
  xn02d1 U2 ( .A1(A[19]), .A2(n3), .ZN(SUM[19]) );
  an02d1 U3 ( .A1(carry[17]), .A2(A[17]), .Z(n1) );
  an02d1 U4 ( .A1(B[0]), .A2(A[0]), .Z(n2) );
  xr02d1 U5 ( .A1(n1), .A2(A[18]), .Z(SUM[18]) );
  xr02d1 U6 ( .A1(carry[17]), .A2(A[17]), .Z(SUM[17]) );
  xr02d1 U7 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module dctc_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22;
  wire   [19:1] carry;

  ad01d0 U2_18 ( .A(A[18]), .B(n21), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ad01d0 U2_17 ( .A(A[17]), .B(n20), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ad01d0 U2_16 ( .A(A[16]), .B(n19), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ad01d0 U2_15 ( .A(A[15]), .B(n18), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ad01d0 U2_14 ( .A(A[14]), .B(n17), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ad01d0 U2_13 ( .A(A[13]), .B(n16), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ad01d0 U2_12 ( .A(A[12]), .B(n15), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ad01d0 U2_11 ( .A(A[11]), .B(n14), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ad01d0 U2_10 ( .A(A[10]), .B(n13), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ad01d0 U2_9 ( .A(A[9]), .B(n12), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ad01d0 U2_8 ( .A(A[8]), .B(n11), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ad01d0 U2_7 ( .A(A[7]), .B(n10), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ad01d0 U2_6 ( .A(A[6]), .B(n9), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ad01d0 U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ad01d0 U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ad01d0 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ad01d0 U2_2 ( .A(A[2]), .B(n5), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ad01d0 U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  xr03d1 U2_19 ( .A1(A[19]), .A2(n22), .A3(carry[19]), .Z(DIFF[19]) );
  inv0d0 U1 ( .I(A[0]), .ZN(n2) );
  inv0d0 U2 ( .I(B[19]), .ZN(n22) );
  inv0d0 U3 ( .I(B[18]), .ZN(n21) );
  inv0d0 U4 ( .I(B[14]), .ZN(n17) );
  inv0d0 U5 ( .I(B[15]), .ZN(n18) );
  inv0d0 U6 ( .I(B[16]), .ZN(n19) );
  inv0d0 U7 ( .I(B[17]), .ZN(n20) );
  inv0d0 U8 ( .I(B[10]), .ZN(n13) );
  inv0d0 U9 ( .I(B[11]), .ZN(n14) );
  inv0d0 U10 ( .I(B[12]), .ZN(n15) );
  inv0d0 U11 ( .I(B[13]), .ZN(n16) );
  inv0d0 U12 ( .I(B[6]), .ZN(n9) );
  inv0d0 U13 ( .I(B[7]), .ZN(n10) );
  inv0d0 U14 ( .I(B[8]), .ZN(n11) );
  inv0d0 U15 ( .I(B[9]), .ZN(n12) );
  inv0d0 U16 ( .I(B[1]), .ZN(n3) );
  nd02d1 U17 ( .A1(n1), .A2(n2), .ZN(carry[1]) );
  inv0d0 U18 ( .I(n4), .ZN(n1) );
  inv0d0 U19 ( .I(B[2]), .ZN(n5) );
  inv0d0 U20 ( .I(B[3]), .ZN(n6) );
  inv0d0 U21 ( .I(B[4]), .ZN(n7) );
  inv0d0 U22 ( .I(B[5]), .ZN(n8) );
  inv0d0 U23 ( .I(B[0]), .ZN(n4) );
  xn02d1 U24 ( .A1(n4), .A2(A[0]), .ZN(DIFF[0]) );
endmodule


module dctc_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [19:1] carry;
  wire   [19:0] B_not;

  ad01d0 U2_18 ( .A(A[18]), .B(B_not[18]), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ad01d0 U2_17 ( .A(A[17]), .B(B_not[17]), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ad01d0 U2_16 ( .A(A[16]), .B(B_not[16]), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ad01d0 U2_15 ( .A(A[15]), .B(B_not[15]), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ad01d0 U2_14 ( .A(A[14]), .B(B_not[14]), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ad01d0 U2_13 ( .A(A[13]), .B(B_not[13]), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ad01d0 U2_12 ( .A(A[12]), .B(B_not[12]), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ad01d0 U2_11 ( .A(A[11]), .B(B_not[11]), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ad01d0 U2_10 ( .A(A[10]), .B(B_not[10]), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ad01d0 U2_9 ( .A(A[9]), .B(B_not[9]), .CI(carry[9]), .CO(carry[10]), .S(
        DIFF[9]) );
  ad01d0 U2_8 ( .A(A[8]), .B(B_not[8]), .CI(carry[8]), .CO(carry[9]), .S(
        DIFF[8]) );
  ad01d0 U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .CO(carry[8]), .S(
        DIFF[7]) );
  ad01d0 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(carry[7]), .S(
        DIFF[6]) );
  ad01d0 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(carry[6]), .S(
        DIFF[5]) );
  ad01d0 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(carry[5]), .S(
        DIFF[4]) );
  ad01d0 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(carry[4]), .S(
        DIFF[3]) );
  ad01d0 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(carry[3]), .S(
        DIFF[2]) );
  ad01d0 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(carry[2]), .S(
        DIFF[1]) );
  xr03d1 U2_19 ( .A1(A[19]), .A2(B_not[19]), .A3(carry[19]), .Z(DIFF[19]) );
  inv0d0 U1 ( .I(B_not[0]), .ZN(n1) );
  nd02d1 U2 ( .A1(n1), .A2(n2), .ZN(carry[1]) );
  inv0d0 U3 ( .I(A[0]), .ZN(n2) );
  xn02d1 U4 ( .A1(B_not[0]), .A2(A[0]), .ZN(DIFF[0]) );
  inv0d0 U5 ( .I(B[9]), .ZN(B_not[9]) );
  inv0d0 U6 ( .I(B[8]), .ZN(B_not[8]) );
  inv0d0 U7 ( .I(B[7]), .ZN(B_not[7]) );
  inv0d0 U8 ( .I(B[6]), .ZN(B_not[6]) );
  inv0d0 U9 ( .I(B[5]), .ZN(B_not[5]) );
  inv0d0 U10 ( .I(B[4]), .ZN(B_not[4]) );
  inv0d0 U11 ( .I(B[3]), .ZN(B_not[3]) );
  inv0d0 U12 ( .I(B[2]), .ZN(B_not[2]) );
  inv0d0 U13 ( .I(B[1]), .ZN(B_not[1]) );
  inv0d0 U14 ( .I(B[19]), .ZN(B_not[19]) );
  inv0d0 U15 ( .I(B[18]), .ZN(B_not[18]) );
  inv0d0 U16 ( .I(B[17]), .ZN(B_not[17]) );
  inv0d0 U17 ( .I(B[16]), .ZN(B_not[16]) );
  inv0d0 U18 ( .I(B[15]), .ZN(B_not[15]) );
  inv0d0 U19 ( .I(B[14]), .ZN(B_not[14]) );
  inv0d0 U20 ( .I(B[13]), .ZN(B_not[13]) );
  inv0d0 U21 ( .I(B[12]), .ZN(B_not[12]) );
  inv0d0 U22 ( .I(B[11]), .ZN(B_not[11]) );
  inv0d0 U23 ( .I(B[10]), .ZN(B_not[10]) );
  inv0d0 U24 ( .I(B[0]), .ZN(B_not[0]) );
endmodule


module dctc_DW01_cmp6_0 ( A, B, TC, LT, GT, EQ, LE, GE, NE );
  input [19:0] A;
  input [19:0] B;
  input TC;
  output LT, GT, EQ, LE, GE, NE;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96;

  inv0d0 U1 ( .I(B[17]), .ZN(n69) );
  inv0d0 U2 ( .I(B[15]), .ZN(n72) );
  inv0d0 U3 ( .I(n6), .ZN(n64) );
  oaim3m11d1 U4 ( .C1(n67), .C2(n68), .C3(n10), .B(n7), .A(n11), .ZN(n62) );
  nd12d1 U5 ( .A1(n8), .A2(n68), .ZN(n15) );
  nr02d1 U6 ( .A1(n2), .A2(B[19]), .ZN(n5) );
  nd02d1 U7 ( .A1(n70), .A2(n13), .ZN(n24) );
  nd02d1 U8 ( .A1(A[17]), .A2(n69), .ZN(n10) );
  nd12d1 U9 ( .A1(B[14]), .A2(A[14]), .ZN(n70) );
  inv0d0 U10 ( .I(A[1]), .ZN(n1) );
  inv0d0 U11 ( .I(A[19]), .ZN(n2) );
  aon211d1 U12 ( .C1(n3), .C2(n4), .B(n5), .A(n6), .ZN(LT) );
  nd12d0 U13 ( .A1(A[18]), .A2(B[18]), .ZN(n4) );
  oai311d1 U14 ( .C1(n7), .C2(n8), .C3(n9), .A(n10), .B(n11), .ZN(n3) );
  aoi311d1 U15 ( .C1(n12), .C2(n13), .C3(n14), .A(n15), .B(n16), .ZN(n9) );
  inv0d0 U16 ( .I(n17), .ZN(n16) );
  inv0d0 U17 ( .I(n18), .ZN(n14) );
  oai311d1 U18 ( .C1(n19), .C2(n20), .C3(n21), .A(n22), .B(n23), .ZN(n12) );
  inv0d0 U19 ( .I(n24), .ZN(n23) );
  aoi311d1 U20 ( .C1(n25), .C2(n26), .C3(n27), .A(n28), .B(n29), .ZN(n21) );
  inv0d0 U21 ( .I(n30), .ZN(n29) );
  inv0d0 U22 ( .I(n31), .ZN(n27) );
  oai311d1 U23 ( .C1(n32), .C2(n33), .C3(n34), .A(n35), .B(n36), .ZN(n25) );
  inv0d0 U24 ( .I(n37), .ZN(n36) );
  aoi311d1 U25 ( .C1(n38), .C2(n39), .C3(n40), .A(n41), .B(n42), .ZN(n34) );
  inv0d0 U26 ( .I(n43), .ZN(n42) );
  inv0d0 U27 ( .I(n44), .ZN(n40) );
  oai311d1 U28 ( .C1(n45), .C2(n46), .C3(n47), .A(n48), .B(n49), .ZN(n38) );
  inv0d0 U29 ( .I(n50), .ZN(n49) );
  aoi311d1 U30 ( .C1(n51), .C2(n52), .C3(n53), .A(n54), .B(n55), .ZN(n47) );
  inv0d0 U31 ( .I(n56), .ZN(n55) );
  inv0d0 U32 ( .I(n57), .ZN(n53) );
  oai211d1 U33 ( .C1(n58), .C2(n1), .A(n59), .B(n60), .ZN(n51) );
  aor21d1 U34 ( .B1(n1), .B2(n58), .A(B[1]), .Z(n59) );
  nr02d0 U35 ( .A1(n61), .A2(A[0]), .ZN(n58) );
  aon211d1 U36 ( .C1(n62), .C2(n63), .B(n64), .A(n65), .ZN(GT) );
  inv0d0 U37 ( .I(n5), .ZN(n65) );
  nd02d0 U38 ( .A1(B[19]), .A2(n2), .ZN(n6) );
  nd02d0 U39 ( .A1(A[18]), .A2(n66), .ZN(n63) );
  xr02d1 U40 ( .A1(A[18]), .A2(n66), .Z(n11) );
  inv0d0 U41 ( .I(B[18]), .ZN(n66) );
  nr02d0 U42 ( .A1(n69), .A2(A[17]), .ZN(n7) );
  aor311d1 U43 ( .C1(n17), .C2(n70), .C3(n71), .A(n15), .B(n18), .Z(n67) );
  nr02d0 U44 ( .A1(n72), .A2(A[15]), .ZN(n18) );
  nd02d0 U45 ( .A1(A[16]), .A2(n73), .ZN(n68) );
  nr02d0 U46 ( .A1(n73), .A2(A[16]), .ZN(n8) );
  inv0d0 U47 ( .I(B[16]), .ZN(n73) );
  aor311d1 U48 ( .C1(n74), .C2(n75), .C3(n22), .A(n19), .B(n24), .Z(n71) );
  nd12d0 U49 ( .A1(A[14]), .A2(B[14]), .ZN(n13) );
  nr02d0 U50 ( .A1(n76), .A2(A[13]), .ZN(n19) );
  nd02d0 U51 ( .A1(A[13]), .A2(n76), .ZN(n22) );
  inv0d0 U52 ( .I(B[13]), .ZN(n76) );
  aor311d1 U53 ( .C1(n30), .C2(n77), .C3(n78), .A(n28), .B(n31), .Z(n74) );
  nr02d0 U54 ( .A1(n79), .A2(A[11]), .ZN(n31) );
  nd12d0 U55 ( .A1(n20), .A2(n75), .ZN(n28) );
  nd02d0 U56 ( .A1(A[12]), .A2(n80), .ZN(n75) );
  nr02d0 U57 ( .A1(n80), .A2(A[12]), .ZN(n20) );
  inv0d0 U58 ( .I(B[12]), .ZN(n80) );
  aor311d1 U59 ( .C1(n81), .C2(n82), .C3(n35), .A(n32), .B(n37), .Z(n78) );
  nd02d0 U60 ( .A1(n77), .A2(n26), .ZN(n37) );
  nd12d0 U61 ( .A1(A[10]), .A2(B[10]), .ZN(n26) );
  nr02d0 U62 ( .A1(n83), .A2(A[9]), .ZN(n32) );
  nd02d0 U63 ( .A1(A[9]), .A2(n83), .ZN(n35) );
  inv0d0 U64 ( .I(B[9]), .ZN(n83) );
  aor311d1 U65 ( .C1(n43), .C2(n84), .C3(n85), .A(n41), .B(n44), .Z(n81) );
  nr02d0 U66 ( .A1(n86), .A2(A[7]), .ZN(n44) );
  nd12d0 U67 ( .A1(n33), .A2(n82), .ZN(n41) );
  nd02d0 U68 ( .A1(A[8]), .A2(n87), .ZN(n82) );
  nr02d0 U69 ( .A1(n87), .A2(A[8]), .ZN(n33) );
  inv0d0 U70 ( .I(B[8]), .ZN(n87) );
  aor311d1 U71 ( .C1(n88), .C2(n89), .C3(n48), .A(n45), .B(n50), .Z(n85) );
  nd02d0 U72 ( .A1(n84), .A2(n39), .ZN(n50) );
  nd12d0 U73 ( .A1(A[6]), .A2(B[6]), .ZN(n39) );
  nr02d0 U74 ( .A1(n90), .A2(A[5]), .ZN(n45) );
  nd02d0 U75 ( .A1(A[5]), .A2(n90), .ZN(n48) );
  inv0d0 U76 ( .I(B[5]), .ZN(n90) );
  aor311d1 U77 ( .C1(n56), .C2(n91), .C3(n92), .A(n54), .B(n57), .Z(n88) );
  nr02d0 U78 ( .A1(n93), .A2(A[3]), .ZN(n57) );
  nd12d0 U79 ( .A1(n46), .A2(n89), .ZN(n54) );
  nd02d0 U80 ( .A1(A[4]), .A2(n94), .ZN(n89) );
  nr02d0 U81 ( .A1(n94), .A2(A[4]), .ZN(n46) );
  inv0d0 U82 ( .I(B[4]), .ZN(n94) );
  oaim211d1 U83 ( .C1(n1), .C2(n95), .A(n96), .B(n60), .ZN(n92) );
  an02d0 U84 ( .A1(n91), .A2(n52), .Z(n60) );
  nd12d0 U85 ( .A1(A[2]), .A2(B[2]), .ZN(n52) );
  oai21d1 U86 ( .B1(n1), .B2(n95), .A(B[1]), .ZN(n96) );
  nd02d0 U87 ( .A1(A[0]), .A2(n61), .ZN(n95) );
  inv0d0 U88 ( .I(B[0]), .ZN(n61) );
  nd12d0 U89 ( .A1(B[2]), .A2(A[2]), .ZN(n91) );
  nd02d0 U90 ( .A1(A[3]), .A2(n93), .ZN(n56) );
  inv0d0 U91 ( .I(B[3]), .ZN(n93) );
  nd12d0 U92 ( .A1(B[6]), .A2(A[6]), .ZN(n84) );
  nd02d0 U93 ( .A1(A[7]), .A2(n86), .ZN(n43) );
  inv0d0 U94 ( .I(B[7]), .ZN(n86) );
  nd12d0 U95 ( .A1(B[10]), .A2(A[10]), .ZN(n77) );
  nd02d0 U96 ( .A1(A[11]), .A2(n79), .ZN(n30) );
  inv0d0 U97 ( .I(B[11]), .ZN(n79) );
  nd02d0 U98 ( .A1(A[15]), .A2(n72), .ZN(n17) );
endmodule


module dctc_DW01_add_7_DW01_add_58 ( A, B, CI, SUM, CO );
  input [18:0] A;
  input [18:0] B;
  output [18:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ad01d1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ad01d1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ad01d1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ad01d1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ad01d1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ad01d1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ad01d1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ad01d1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ad01d1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(SUM[17]), .S(
        SUM[16]) );
  an02d1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  xr02d1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module dctc_DW01_add_6_DW01_add_57 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ad01d1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ad01d1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ad01d1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ad01d1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ad01d1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ad01d1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ad01d1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ad01d1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(SUM[17]), .S(
        SUM[16]) );
  an02d1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  xr02d1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module dctc_DW01_add_5_DW01_add_56 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [17:2] carry;

  ad01d0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ad01d0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ad01d0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ad01d1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ad01d1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ad01d1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ad01d1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ad01d1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ad01d1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ad01d1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(SUM[18]), .S(
        SUM[17]) );
  an02d1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  xr02d1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module dctc_DW01_add_4_DW01_add_55 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ad01d1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ad01d1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ad01d1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ad01d1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ad01d1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ad01d1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ad01d1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ad01d1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(SUM[17]), .S(
        SUM[16]) );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  an02d1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  xr02d1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module dctc_DW01_add_3_DW01_add_54 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ad01d1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ad01d1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ad01d1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ad01d1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ad01d1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ad01d1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ad01d1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ad01d1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ad01d1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(SUM[17]), .S(
        SUM[16]) );
  an02d1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  xr02d1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module dctc_DW01_add_2_DW01_add_53 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [17:2] carry;

  ad01d0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ad01d0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ad01d0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ad01d1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ad01d1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ad01d1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ad01d1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ad01d1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ad01d1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ad01d1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(SUM[18]), .S(
        SUM[17]) );
  ad01d1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  an02d1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  xr02d1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module dctc_DW01_add_1_DW01_add_52 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [18:2] carry;

  ad01d0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ad01d0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ad01d0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ad01d0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ad01d1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ad01d1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ad01d1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ad01d1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ad01d1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ad01d1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(SUM[19]), .S(
        SUM[18]) );
  an02d1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  xr02d1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module dctc ( clk, reset_n, start, sample_one_pos, sample_two_pos, 
        sample_three_pos, sample_four_pos, sample_one_neg, sample_two_neg, 
        sample_three_neg, sample_four_neg, fifo_addr, fifo_read, fifo_sample, 
        dctc_finish, seizure_prediction );
  input [17:0] sample_one_pos;
  input [17:0] sample_two_pos;
  input [17:0] sample_three_pos;
  input [17:0] sample_four_pos;
  input [17:0] sample_one_neg;
  input [17:0] sample_two_neg;
  input [17:0] sample_three_neg;
  input [17:0] sample_four_neg;
  output [7:0] fifo_addr;
  input [17:0] fifo_sample;
  input clk, reset_n, start;
  output fifo_read, dctc_finish, seizure_prediction;
  wire   N6, N8, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23,
         N24, N25, N26, N27, N28, N29, N30, N31, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52,
         N77, N78, start_d, N199, N200, N201, N202, N203, N204, N205, N206,
         N207, N208, N209, N210, N211, N212, N213, N214, N215, N216, N217,
         N218, N225, N226, N232, N233, N234, N235, N236, N237, N238, N239,
         N253, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, N99, N98, N97, N193, N192, N191, N190, N189, N188,
         N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177,
         N176, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165,
         N164, N163, N162, N161, N160, N159, N158, N157, N156, N153, N152,
         N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141,
         N140, N139, N138, N137, N136, N133, N132, N131, N130, N129, N128,
         N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117,
         N116, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105,
         N104, N103, N102, N101, N100, n1, n2, n4, n5, n6, n7, n10, n11, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9;
  wire   [19:0] distance;
  wire   [19:0] sum;
  wire   [19:0] mcmc_sum;
  wire   [1:0] count;

  dfcrn1 fifo_addr_reg_1_ ( .D(n132), .CP(clk), .CDN(n18), .QN(n102) );
  dctc_DW01_inc_0_DW01_inc_2 add_87_S2 ( .A(fifo_addr), .SUM({N239, N238, N237, 
        N236, N235, N234, N233, N232}) );
  dctc_DW01_add_0 add_67_S2 ( .A(sum), .B({1'b0, 1'b0, 1'b0, fifo_sample[16:0]}), .CI(1'b0), .SUM({N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, N200, N199}) );
  dctc_DW01_sub_0 sub_50_S2 ( .A(mcmc_sum), .B(sum), .CI(1'b0), .DIFF({N52, 
        N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, 
        N37, N36, N35, N34, N33}) );
  dctc_DW01_sub_1 sub_49_S2 ( .A(sum), .B(mcmc_sum), .CI(1'b0), .DIFF({N31, 
        N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, 
        N16, N15, N14, N13, N12}) );
  dctc_DW01_cmp6_0 r430 ( .A(sum), .B(mcmc_sum), .TC(1'b0), .LT(N8), .GT(N6)
         );
  dctc_DW01_add_7_DW01_add_58 add_3_root_add_0_root_add_60_7 ( .A({1'b0, 1'b0, 
        sample_one_neg[16:0]}), .B({1'b0, 1'b0, sample_three_neg[16:0]}), .CI(
        1'b0), .SUM({SYNOPSYS_UNCONNECTED_1, N114, N113, N112, N111, N110, 
        N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, 
        N97}) );
  dctc_DW01_add_6_DW01_add_57 add_6_root_add_0_root_add_60_7 ( .A({1'b0, 1'b0, 
        1'b0, sample_two_pos[16:0]}), .B({1'b0, 1'b0, 1'b0, 
        sample_four_pos[16:0]}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, N153, N152, N151, N150, N149, N148, N147, N146, 
        N145, N144, N143, N142, N141, N140, N139, N138, N137, N136}) );
  dctc_DW01_add_5_DW01_add_56 add_2_root_add_0_root_add_60_7 ( .A({1'b0, 1'b0, 
        N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, 
        N102, N101, N100, N99, N98, N97}), .B({1'b0, 1'b0, N153, N152, N151, 
        N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, 
        N138, N137, N136}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED_4, n70, n69, 
        n68, n67, n66, n65, n64, n63, n62, n61, n60, n59, n58, n57, n56, n55, 
        n54, n53, n52}) );
  dctc_DW01_add_4_DW01_add_55 add_5_root_add_0_root_add_60_7 ( .A({1'b0, 1'b0, 
        1'b0, sample_three_pos[16:0]}), .B({1'b0, 1'b0, 1'b0, 
        sample_one_pos[16:0]}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, N133, N132, N131, N130, N129, N128, N127, N126, 
        N125, N124, N123, N122, N121, N120, N119, N118, N117, N116}) );
  dctc_DW01_add_3_DW01_add_54 add_4_root_add_0_root_add_60_7 ( .A({1'b0, 1'b0, 
        1'b0, sample_two_neg[16:0]}), .B({1'b0, 1'b0, 1'b0, 
        sample_four_neg[16:0]}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, N193, N192, N191, N190, N189, N188, N187, N186, 
        N185, N184, N183, N182, N181, N180, N179, N178, N177, N176}) );
  dctc_DW01_add_2_DW01_add_53 add_1_root_add_0_root_add_60_7 ( .A({1'b0, 1'b0, 
        N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, 
        N121, N120, N119, N118, N117, N116}), .B({1'b0, 1'b0, N193, N192, N191, 
        N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, 
        N178, N177, N176}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED_9, N174, 
        N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, 
        N161, N160, N159, N158, N157, N156}) );
  dctc_DW01_add_1_DW01_add_52 add_0_root_add_0_root_add_60_7 ( .A({1'b0, N174, 
        N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, 
        N161, N160, N159, N158, N157, N156}), .B({1'b0, n70, n69, n68, n67, 
        n66, n65, n64, n63, n62, n61, n60, n59, n58, n57, n56, n55, n54, n53, 
        n52}), .CI(1'b0), .SUM(mcmc_sum) );
  dfcrq1 distance_reg_5_ ( .D(n109), .CP(clk), .CDN(n16), .Q(distance[5]) );
  dfcrq1 distance_reg_0_ ( .D(n124), .CP(clk), .CDN(n18), .Q(distance[0]) );
  dfcrq1 distance_reg_14_ ( .D(n118), .CP(clk), .CDN(n17), .Q(distance[14]) );
  dfcrq1 distance_reg_19_ ( .D(n123), .CP(clk), .CDN(n18), .Q(distance[19]) );
  dfcrq1 distance_reg_6_ ( .D(n110), .CP(clk), .CDN(n16), .Q(distance[6]) );
  dfcrq1 distance_reg_10_ ( .D(n114), .CP(clk), .CDN(n17), .Q(distance[10]) );
  dfcrq1 distance_reg_15_ ( .D(n119), .CP(clk), .CDN(n17), .Q(distance[15]) );
  dfcrq1 distance_reg_1_ ( .D(n105), .CP(clk), .CDN(n16), .Q(distance[1]) );
  dfcrq1 distance_reg_7_ ( .D(n111), .CP(clk), .CDN(n16), .Q(distance[7]) );
  dfcrq1 distance_reg_11_ ( .D(n115), .CP(clk), .CDN(n17), .Q(distance[11]) );
  dfcrq1 distance_reg_16_ ( .D(n120), .CP(clk), .CDN(n17), .Q(distance[16]) );
  dfcrq1 distance_reg_2_ ( .D(n106), .CP(clk), .CDN(n16), .Q(distance[2]) );
  dfcrq1 distance_reg_9_ ( .D(n113), .CP(clk), .CDN(n17), .Q(distance[9]) );
  dfcrq1 distance_reg_13_ ( .D(n117), .CP(clk), .CDN(n17), .Q(distance[13]) );
  dfcrq1 distance_reg_18_ ( .D(n122), .CP(clk), .CDN(n17), .Q(distance[18]) );
  dfcrq1 distance_reg_4_ ( .D(n108), .CP(clk), .CDN(n16), .Q(distance[4]) );
  dfcrq1 distance_reg_8_ ( .D(n112), .CP(clk), .CDN(n16), .Q(distance[8]) );
  dfcrq1 distance_reg_12_ ( .D(n116), .CP(clk), .CDN(n17), .Q(distance[12]) );
  dfcrq1 distance_reg_17_ ( .D(n121), .CP(clk), .CDN(n17), .Q(distance[17]) );
  dfcrq1 distance_reg_3_ ( .D(n107), .CP(clk), .CDN(n16), .Q(distance[3]) );
  dfcrq1 fifo_read_reg ( .D(N253), .CP(clk), .CDN(n16), .Q(fifo_read) );
  dfcrq1 count_reg_1_ ( .D(N226), .CP(clk), .CDN(n13), .Q(count[1]) );
  dfcrq1 sum_reg_19_ ( .D(n82), .CP(clk), .CDN(n16), .Q(sum[19]) );
  dfcrq1 sum_reg_17_ ( .D(n84), .CP(clk), .CDN(n15), .Q(sum[17]) );
  dfcrq1 count_reg_0_ ( .D(N225), .CP(clk), .CDN(n13), .Q(count[0]) );
  dfcrq1 fifo_addr_reg_3_ ( .D(n129), .CP(clk), .CDN(n13), .Q(fifo_addr[3]) );
  dfcrq1 dctc_finish_reg ( .D(n103), .CP(clk), .CDN(n13), .Q(dctc_finish) );
  dfcrq1 fifo_addr_reg_4_ ( .D(n128), .CP(clk), .CDN(n13), .Q(fifo_addr[4]) );
  dfcrq1 fifo_addr_reg_2_ ( .D(n130), .CP(clk), .CDN(n13), .Q(fifo_addr[2]) );
  dfcrq1 fifo_addr_reg_0_ ( .D(n131), .CP(clk), .CDN(n13), .Q(fifo_addr[0]) );
  dfcrq1 sum_reg_18_ ( .D(n83), .CP(clk), .CDN(n15), .Q(sum[18]) );
  dfcrq1 fifo_addr_reg_5_ ( .D(n127), .CP(clk), .CDN(n13), .Q(fifo_addr[5]) );
  dfcrq1 sum_reg_15_ ( .D(n86), .CP(clk), .CDN(n15), .Q(sum[15]) );
  dfcrq1 fifo_addr_reg_7_ ( .D(n125), .CP(clk), .CDN(n14), .Q(fifo_addr[7]) );
  dfcrq1 fifo_addr_reg_6_ ( .D(n126), .CP(clk), .CDN(n13), .Q(fifo_addr[6]) );
  dfcrq1 start_d_reg ( .D(n49), .CP(clk), .CDN(n13), .Q(start_d) );
  dfcrq1 sum_reg_16_ ( .D(n85), .CP(clk), .CDN(n15), .Q(sum[16]) );
  dfcrq1 sum_reg_14_ ( .D(n87), .CP(clk), .CDN(n15), .Q(sum[14]) );
  dfcrq1 sum_reg_13_ ( .D(n88), .CP(clk), .CDN(n15), .Q(sum[13]) );
  dfcrq1 sum_reg_12_ ( .D(n89), .CP(clk), .CDN(n15), .Q(sum[12]) );
  dfcrq1 sum_reg_11_ ( .D(n90), .CP(clk), .CDN(n15), .Q(sum[11]) );
  dfcrq1 sum_reg_10_ ( .D(n91), .CP(clk), .CDN(n15), .Q(sum[10]) );
  dfcrq1 sum_reg_9_ ( .D(n92), .CP(clk), .CDN(n15), .Q(sum[9]) );
  dfcrq1 sum_reg_8_ ( .D(n93), .CP(clk), .CDN(n14), .Q(sum[8]) );
  dfcrq1 sum_reg_7_ ( .D(n94), .CP(clk), .CDN(n14), .Q(sum[7]) );
  dfcrq1 sum_reg_6_ ( .D(n95), .CP(clk), .CDN(n14), .Q(sum[6]) );
  dfcrq1 sum_reg_5_ ( .D(n96), .CP(clk), .CDN(n14), .Q(sum[5]) );
  dfcrq1 sum_reg_4_ ( .D(n97), .CP(clk), .CDN(n14), .Q(sum[4]) );
  dfcrq1 sum_reg_3_ ( .D(n98), .CP(clk), .CDN(n14), .Q(sum[3]) );
  dfcrq1 sum_reg_2_ ( .D(n99), .CP(clk), .CDN(n14), .Q(sum[2]) );
  dfcrq1 sum_reg_1_ ( .D(n101), .CP(clk), .CDN(n14), .Q(sum[1]) );
  dfcrq1 sum_reg_0_ ( .D(n100), .CP(clk), .CDN(n14), .Q(sum[0]) );
  dfcrq1 seizure_prediction_reg ( .D(N78), .CP(clk), .CDN(n18), .Q(
        seizure_prediction) );
  nd02d2 U3 ( .A1(N6), .A2(n39), .ZN(n37) );
  nd03d1 U4 ( .A1(n39), .A2(n37), .A3(N8), .ZN(n38) );
  inv0d1 U5 ( .I(n37), .ZN(n36) );
  buffd1 U6 ( .I(n11), .Z(n17) );
  buffd1 U7 ( .I(n11), .Z(n16) );
  buffd1 U9 ( .I(n10), .Z(n15) );
  buffd1 U10 ( .I(n10), .Z(n14) );
  buffd1 U11 ( .I(n10), .Z(n13) );
  buffd1 U12 ( .I(n11), .Z(n18) );
  buffd1 U15 ( .I(n34), .Z(n4) );
  inv0d0 U16 ( .I(n38), .ZN(n34) );
  an02d1 U18 ( .A1(n37), .A2(n38), .Z(n35) );
  inv0d0 U19 ( .I(n1), .ZN(n5) );
  inv0d0 U20 ( .I(n1), .ZN(n6) );
  inv0d0 U21 ( .I(n1), .ZN(n7) );
  buffd1 U22 ( .I(reset_n), .Z(n10) );
  buffd1 U23 ( .I(reset_n), .Z(n11) );
  nr04d1 U24 ( .A1(n32), .A2(n33), .A3(count[1]), .A4(start), .ZN(n28) );
  or03d0 U25 ( .A1(n2), .A2(n33), .A3(n42), .Z(n1) );
  or03d1 U26 ( .A1(n43), .A2(count[1]), .A3(count[0]), .Z(n2) );
  or02d0 U27 ( .A1(distance[13]), .A2(distance[12]), .Z(n19) );
  nr04d0 U28 ( .A1(distance[11]), .A2(n19), .A3(distance[10]), .A4(distance[0]), .ZN(n26) );
  or02d0 U29 ( .A1(distance[18]), .A2(distance[17]), .Z(n20) );
  nr04d0 U30 ( .A1(distance[16]), .A2(n20), .A3(distance[15]), .A4(
        distance[14]), .ZN(n25) );
  or02d0 U31 ( .A1(distance[4]), .A2(distance[3]), .Z(n21) );
  nr04d0 U32 ( .A1(distance[2]), .A2(n21), .A3(distance[1]), .A4(distance[19]), 
        .ZN(n24) );
  or02d0 U33 ( .A1(distance[9]), .A2(distance[8]), .Z(n22) );
  nr04d0 U34 ( .A1(distance[7]), .A2(n22), .A3(distance[6]), .A4(distance[5]), 
        .ZN(n23) );
  nd04d0 U35 ( .A1(n26), .A2(n25), .A3(n24), .A4(n23), .ZN(N77) );
  mx02d1 U36 ( .I0(sum[2]), .I1(N201), .S(n6), .Z(n99) );
  mx02d1 U37 ( .I0(sum[3]), .I1(N202), .S(n5), .Z(n98) );
  mx02d1 U38 ( .I0(sum[4]), .I1(N203), .S(n6), .Z(n97) );
  mx02d1 U39 ( .I0(sum[5]), .I1(N204), .S(n7), .Z(n96) );
  mx02d1 U40 ( .I0(sum[6]), .I1(N205), .S(n6), .Z(n95) );
  mx02d1 U41 ( .I0(sum[7]), .I1(N206), .S(n5), .Z(n94) );
  mx02d1 U42 ( .I0(sum[8]), .I1(N207), .S(n5), .Z(n93) );
  mx02d1 U43 ( .I0(sum[9]), .I1(N208), .S(n7), .Z(n92) );
  mx02d1 U44 ( .I0(sum[10]), .I1(N209), .S(n7), .Z(n91) );
  mx02d1 U45 ( .I0(sum[11]), .I1(N210), .S(n6), .Z(n90) );
  mx02d1 U46 ( .I0(sum[12]), .I1(N211), .S(n5), .Z(n89) );
  mx02d1 U47 ( .I0(sum[13]), .I1(N212), .S(n6), .Z(n88) );
  mx02d1 U48 ( .I0(sum[14]), .I1(N213), .S(n7), .Z(n87) );
  mx02d1 U49 ( .I0(sum[15]), .I1(N214), .S(n6), .Z(n86) );
  mx02d1 U50 ( .I0(sum[16]), .I1(N215), .S(n5), .Z(n85) );
  mx02d1 U51 ( .I0(sum[17]), .I1(N216), .S(n5), .Z(n84) );
  mx02d1 U52 ( .I0(sum[18]), .I1(N217), .S(n7), .Z(n83) );
  mx02d1 U53 ( .I0(sum[19]), .I1(N218), .S(n7), .Z(n82) );
  aor221d1 U54 ( .B1(n27), .B2(fifo_addr[1]), .C1(N233), .C2(n28), .A(start), 
        .Z(n132) );
  aor22d1 U55 ( .A1(n27), .A2(fifo_addr[0]), .B1(N232), .B2(n28), .Z(n131) );
  oaim22d1 U56 ( .A1(n29), .A2(n30), .B1(N234), .B2(n28), .ZN(n130) );
  oaim22d1 U57 ( .A1(n31), .A2(n29), .B1(N235), .B2(n28), .ZN(n129) );
  inv0d0 U58 ( .I(n27), .ZN(n29) );
  aor221d1 U59 ( .B1(n27), .B2(fifo_addr[4]), .C1(N236), .C2(n28), .A(start), 
        .Z(n128) );
  aor22d1 U60 ( .A1(n27), .A2(fifo_addr[5]), .B1(N237), .B2(n28), .Z(n127) );
  aor22d1 U61 ( .A1(n27), .A2(fifo_addr[6]), .B1(N238), .B2(n28), .Z(n126) );
  aor22d1 U62 ( .A1(n27), .A2(fifo_addr[7]), .B1(N239), .B2(n28), .Z(n125) );
  nr02d0 U63 ( .A1(n28), .A2(start), .ZN(n27) );
  aor222d1 U64 ( .A1(N33), .A2(n4), .B1(distance[0]), .B2(n35), .C1(N12), .C2(
        n36), .Z(n124) );
  aor222d1 U65 ( .A1(N52), .A2(n4), .B1(distance[19]), .B2(n35), .C1(N31), 
        .C2(n36), .Z(n123) );
  aor222d1 U66 ( .A1(N51), .A2(n4), .B1(distance[18]), .B2(n35), .C1(N30), 
        .C2(n36), .Z(n122) );
  aor222d1 U67 ( .A1(N50), .A2(n4), .B1(distance[17]), .B2(n35), .C1(N29), 
        .C2(n36), .Z(n121) );
  aor222d1 U68 ( .A1(N49), .A2(n4), .B1(distance[16]), .B2(n35), .C1(N28), 
        .C2(n36), .Z(n120) );
  aor222d1 U69 ( .A1(N48), .A2(n4), .B1(distance[15]), .B2(n35), .C1(N27), 
        .C2(n36), .Z(n119) );
  aor222d1 U70 ( .A1(N47), .A2(n4), .B1(distance[14]), .B2(n35), .C1(N26), 
        .C2(n36), .Z(n118) );
  aor222d1 U71 ( .A1(N46), .A2(n4), .B1(distance[13]), .B2(n35), .C1(N25), 
        .C2(n36), .Z(n117) );
  aor222d1 U72 ( .A1(N45), .A2(n4), .B1(distance[12]), .B2(n35), .C1(N24), 
        .C2(n36), .Z(n116) );
  aor222d1 U73 ( .A1(N44), .A2(n4), .B1(distance[11]), .B2(n35), .C1(N23), 
        .C2(n36), .Z(n115) );
  aor222d1 U74 ( .A1(N43), .A2(n4), .B1(distance[10]), .B2(n35), .C1(N22), 
        .C2(n36), .Z(n114) );
  aor222d1 U75 ( .A1(N42), .A2(n4), .B1(distance[9]), .B2(n35), .C1(N21), .C2(
        n36), .Z(n113) );
  aor222d1 U76 ( .A1(N41), .A2(n4), .B1(distance[8]), .B2(n35), .C1(N20), .C2(
        n36), .Z(n112) );
  aor222d1 U77 ( .A1(N40), .A2(n4), .B1(distance[7]), .B2(n35), .C1(N19), .C2(
        n36), .Z(n111) );
  aor222d1 U78 ( .A1(N39), .A2(n4), .B1(distance[6]), .B2(n35), .C1(N18), .C2(
        n36), .Z(n110) );
  aor222d1 U79 ( .A1(N38), .A2(n4), .B1(distance[5]), .B2(n35), .C1(N17), .C2(
        n36), .Z(n109) );
  aor222d1 U80 ( .A1(N37), .A2(n4), .B1(distance[4]), .B2(n35), .C1(N16), .C2(
        n36), .Z(n108) );
  aor222d1 U81 ( .A1(N36), .A2(n4), .B1(distance[3]), .B2(n35), .C1(N15), .C2(
        n36), .Z(n107) );
  aor222d1 U82 ( .A1(N35), .A2(n4), .B1(distance[2]), .B2(n35), .C1(N14), .C2(
        n36), .Z(n106) );
  aor222d1 U83 ( .A1(N34), .A2(n4), .B1(distance[1]), .B2(n35), .C1(N13), .C2(
        n36), .Z(n105) );
  nd02d0 U84 ( .A1(n40), .A2(n41), .ZN(n103) );
  mx02d1 U85 ( .I0(sum[1]), .I1(N200), .S(n6), .Z(n101) );
  mx02d1 U86 ( .I0(sum[0]), .I1(N199), .S(n5), .Z(n100) );
  an02d0 U87 ( .A1(N77), .A2(n39), .Z(N78) );
  inv0d0 U88 ( .I(n41), .ZN(n39) );
  nd04d0 U89 ( .A1(fifo_addr[4]), .A2(fifo_addr[3]), .A3(n44), .A4(n45), .ZN(
        n41) );
  nr03d0 U90 ( .A1(fifo_addr[0]), .A2(n102), .A3(fifo_addr[2]), .ZN(n45) );
  nr03d0 U91 ( .A1(n46), .A2(n42), .A3(n33), .ZN(N253) );
  nd02d0 U92 ( .A1(n44), .A2(n47), .ZN(n33) );
  oai211d1 U93 ( .C1(fifo_addr[2]), .C2(fifo_addr[1]), .A(fifo_addr[3]), .B(
        fifo_addr[4]), .ZN(n47) );
  inv0d0 U94 ( .I(n102), .ZN(fifo_addr[1]) );
  nr03d0 U95 ( .A1(fifo_addr[6]), .A2(fifo_addr[7]), .A3(fifo_addr[5]), .ZN(
        n44) );
  oaim31d1 U96 ( .B1(n30), .B2(n31), .B3(n102), .A(fifo_addr[4]), .ZN(n42) );
  inv0d0 U97 ( .I(fifo_addr[3]), .ZN(n31) );
  inv0d0 U98 ( .I(fifo_addr[2]), .ZN(n30) );
  oai21d1 U99 ( .B1(n32), .B2(n48), .A(n46), .ZN(N226) );
  nd04d0 U100 ( .A1(count[0]), .A2(n49), .A3(n48), .A4(n40), .ZN(n46) );
  inv0d0 U101 ( .I(dctc_finish), .ZN(n40) );
  inv0d0 U102 ( .I(n43), .ZN(n49) );
  inv0d0 U103 ( .I(count[1]), .ZN(n48) );
  inv0d0 U104 ( .I(N225), .ZN(n32) );
  nr03d0 U105 ( .A1(count[0]), .A2(dctc_finish), .A3(n43), .ZN(N225) );
  nr02d0 U106 ( .A1(start_d), .A2(start), .ZN(n43) );
endmodule


module seizure_core ( clk, reset_n, start, pc_fifo_data, pc_fifo_addr, 
        mcmc_lut_data, mcmc_lut_addr, mcmc_lut_read, pc_fifo_read, 
        dctc_fifo_data, dctc_fifo_addr, dctc_fifo_read, seizure_prediction );
  input [17:0] pc_fifo_data;
  output [7:0] pc_fifo_addr;
  input [71:0] mcmc_lut_data;
  output [10:0] mcmc_lut_addr;
  input [17:0] dctc_fifo_data;
  output [7:0] dctc_fifo_addr;
  input clk, reset_n, start;
  output mcmc_lut_read, pc_fifo_read, dctc_fifo_read, seizure_prediction;
  wire   param_calc_finish, mcmc_finish, dctc_finish, start_pc_rise,
         start_mcmc_rise, start_dctc_rise, start_pc_d, N2, start_mcmc,
         start_mcmc_d, N7, start_dctc, start_dctc_d, N12, n1, n4, n5, n2, n6,
         n7, n8, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22;
  wire   [1:0] fsm_state;
  wire   [17:2] mean_pos;
  wire   [17:8] std_pos;
  wire   [17:2] mean_neg;
  wire   [17:8] std_neg;
  wire   [17:0] mcmc_sample_one_pos;
  wire   [17:0] mcmc_sample_two_pos;
  wire   [17:0] mcmc_sample_three_pos;
  wire   [17:0] mcmc_sample_four_pos;
  wire   [17:0] mcmc_sample_one_neg;
  wire   [17:0] mcmc_sample_two_neg;
  wire   [17:0] mcmc_sample_three_neg;
  wire   [17:0] mcmc_sample_four_neg;

  or02d0 U3 ( .A1(mcmc_finish), .A2(start_dctc), .Z(n4) );
  or02d0 U4 ( .A1(param_calc_finish), .A2(start_mcmc), .Z(n5) );
  nd12d1 U9 ( .A1(fsm_state[1]), .A2(fsm_state[0]), .ZN(n1) );
  global_fsm fsm_inst ( .clk(clk), .reset_n(n2), .start_core(start), 
        .param_calc_finish(param_calc_finish), .mcmc_finish(mcmc_finish), 
        .dctc_finish(dctc_finish), .state(fsm_state) );
  param_calc pc ( .clk(clk), .reset_n(n2), .start(start_pc_rise), 
        .pc_fifo_data(pc_fifo_data), .pc_fifo_addr(pc_fifo_addr), 
        .pc_fifo_read(pc_fifo_read), .mean_pos({mean_pos, 
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2}), .std_pos({
        SYNOPSYS_UNCONNECTED_3, std_pos, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11}), .mean_neg({
        mean_neg, SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13}), 
        .std_neg({SYNOPSYS_UNCONNECTED_14, std_neg, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22}), .param_calc_finish(param_calc_finish) );
  mcmc mcmc ( .clk(clk), .reset_n(n2), .start(start_mcmc_rise), 
        .mcmc_lut_data(mcmc_lut_data), .mcmc_lut_addr(mcmc_lut_addr), 
        .mcmc_lut_read(mcmc_lut_read), .mean_pos({mean_pos, 1'b0, 1'b0}), 
        .std_pos({1'b0, std_pos, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .mean_neg({mean_neg, 1'b0, 1'b0}), .std_neg({1'b0, std_neg, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sample_one_pos(
        mcmc_sample_one_pos), .sample_two_pos(mcmc_sample_two_pos), 
        .sample_three_pos(mcmc_sample_three_pos), .sample_four_pos(
        mcmc_sample_four_pos), .sample_one_neg(mcmc_sample_one_neg), 
        .sample_two_neg(mcmc_sample_two_neg), .sample_three_neg(
        mcmc_sample_three_neg), .sample_four_neg(mcmc_sample_four_neg), 
        .mcmc_finish(mcmc_finish) );
  dctc dctc ( .clk(clk), .reset_n(n2), .start(start_dctc_rise), 
        .sample_one_pos(mcmc_sample_one_pos), .sample_two_pos(
        mcmc_sample_two_pos), .sample_three_pos(mcmc_sample_three_pos), 
        .sample_four_pos(mcmc_sample_four_pos), .sample_one_neg(
        mcmc_sample_one_neg), .sample_two_neg(mcmc_sample_two_neg), 
        .sample_three_neg(mcmc_sample_three_neg), .sample_four_neg(
        mcmc_sample_four_neg), .fifo_addr(dctc_fifo_addr), .fifo_read(
        dctc_fifo_read), .fifo_sample(dctc_fifo_data), .dctc_finish(
        dctc_finish), .seizure_prediction(seizure_prediction) );
  dfcrq1 start_mcmc_d_reg ( .D(start_mcmc), .CP(clk), .CDN(n2), .Q(
        start_mcmc_d) );
  dfcrq1 start_dctc_d_reg ( .D(start_dctc), .CP(clk), .CDN(n2), .Q(
        start_dctc_d) );
  dfcrq1 start_pc_d_reg ( .D(n6), .CP(clk), .CDN(n2), .Q(start_pc_d) );
  dfcrq1 start_mcmc_rise_reg ( .D(N7), .CP(clk), .CDN(n2), .Q(start_mcmc_rise)
         );
  dfcrq1 start_mcmc_reg ( .D(n5), .CP(clk), .CDN(n2), .Q(start_mcmc) );
  dfcrq1 start_dctc_reg ( .D(n4), .CP(clk), .CDN(n2), .Q(start_dctc) );
  dfcrq1 start_pc_rise_reg ( .D(N2), .CP(clk), .CDN(n2), .Q(start_pc_rise) );
  dfcrq1 start_dctc_rise_reg ( .D(N12), .CP(clk), .CDN(n2), .Q(start_dctc_rise) );
  buffd1 U5 ( .I(reset_n), .Z(n2) );
  inv0d0 U6 ( .I(n1), .ZN(n6) );
  nr02d1 U7 ( .A1(start_pc_d), .A2(n1), .ZN(N2) );
  nr02d1 U8 ( .A1(start_mcmc_d), .A2(n7), .ZN(N7) );
  inv0d0 U10 ( .I(start_mcmc), .ZN(n7) );
  nr02d1 U11 ( .A1(start_dctc_d), .A2(n8), .ZN(N12) );
  inv0d0 U12 ( .I(start_dctc), .ZN(n8) );
endmodule


module seizure_top ( apb_clk, reset_n, apb_addr, apb_pwrite, apb_psel, 
        apb_penable, apb_pwdata, apb_prdata, apb_ready, seizure_prediction );
  input [9:0] apb_addr;
  input [31:0] apb_pwdata;
  output [31:0] apb_prdata;
  input apb_clk, reset_n, apb_pwrite, apb_psel, apb_penable;
  output apb_ready, seizure_prediction;
  wire   pc_fifo_read, mcmc_lut_read, dctc_fifo_read, start_core;
  wire   [7:0] pc_fifo_addr;
  wire   [71:0] mcmc_lut_data;
  wire   [10:0] mcmc_lut_addr;
  wire   [7:0] dctc_fifo_addr;
  wire   [17:0] pc_fifo_data;
  wire   [17:0] dctc_fifo_data;

  seizure_regfile_DATA_WIDTH18_ADDR_WIDTH8_MCMC_DATA_WIDTH72_MCMC_ADDR_WIDTH2048 seizure_regfile ( 
        .apb_clk(apb_clk), .reset_n(reset_n), .apb_addr(apb_addr), 
        .apb_pwrite(apb_pwrite), .apb_psel(apb_psel), .apb_penable(apb_penable), .apb_pwdata(apb_pwdata), .pc_fifo_addr(pc_fifo_addr), .pc_fifo_read(
        pc_fifo_read), .mcmc_lut_data(mcmc_lut_data), .mcmc_lut_addr(
        mcmc_lut_addr), .mcmc_lut_read(mcmc_lut_read), .dctc_fifo_addr(
        dctc_fifo_addr), .dctc_fifo_read(dctc_fifo_read), .apb_prdata(
        apb_prdata), .apb_ready(apb_ready), .pc_fifo_data(pc_fifo_data), 
        .dctc_fifo_data(dctc_fifo_data), .start_core(start_core) );
  seizure_core seizure_core ( .clk(apb_clk), .reset_n(reset_n), .start(
        start_core), .pc_fifo_data(pc_fifo_data), .pc_fifo_addr(pc_fifo_addr), 
        .mcmc_lut_data(mcmc_lut_data), .mcmc_lut_addr(mcmc_lut_addr), 
        .mcmc_lut_read(mcmc_lut_read), .pc_fifo_read(pc_fifo_read), 
        .dctc_fifo_data(dctc_fifo_data), .dctc_fifo_addr(dctc_fifo_addr), 
        .dctc_fifo_read(dctc_fifo_read), .seizure_prediction(
        seizure_prediction) );
endmodule

module dpram256x18_cb ( A1, A2, CEB1, CEB2, WEB1, WEB2, OEB1, OEB2, CSB1, CSB2, 
        I1, I2, O1, O2 );
  input [7:0] A1;
  input [7:0] A2;
  input [17:0] I1;
  input [17:0] I2;
  output [17:0] O1;
  output [17:0] O2;
  input CEB1, CEB2, WEB1, WEB2, OEB1, OEB2, CSB1, CSB2;


endmodule


module spram2048x72_cb ( A, CEB, WEB, OEB, CSB, IO );
  input [10:0] A;
  inout [71:0] IO;
  input CEB, WEB, OEB, CSB;


endmodule

