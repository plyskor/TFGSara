%chk=HCl2PO4-h2o.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

0 1
 P                  1.87651337    0.35108958    0.00000000
 O                  0.99471537   -0.67448842   -0.92889500
 O                  2.72993337    1.00790058   -1.17354400
 H                  2.24774637    1.65092058   -1.70757800
 O                  2.96780737   -0.55103742    0.78800900
 O                  1.14648737    1.19682658    0.94369100
 Cl                 3.94133837   -1.69313142   -0.09849700
 Cl                -0.20119563   -1.62927742   -0.11042000
 O                  2.53100686    2.28177292   -3.16560650
 H                  3.49100686    2.28177292   -3.16560650
 H                  2.21055227    3.18670875   -3.16560650

 1 2 1.0 3 1.5 5 1.0 6 2.0
 2 8 1.0
 3 4 1.0
 4
 5 7 1.0
 6
 7
 8
 9 10 1.0 11 1.0
 10
 11

--link1--
%chk=HCl2PO4-h2o.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

0 1

--link1--
%chk=HCl2PO4-h2o.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

0 1

$nbo bndidx $end

--link1--
%chk=HCl2PO4-h2o.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

0 1

HCl2PO4-h2o.wfx




