%chk=HCl2PO4-h2o.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

0 1
 P                 -0.07407408    0.08641975    0.00000000
 O                 -0.95587208   -0.93915825   -0.92889500
 O                  0.77934592    0.74323075   -1.17354400
 H                  0.29715892    1.38625075   -1.70757800
 O                  1.01721992   -0.81570725    0.78800900
 O                 -0.80410008    0.93215675    0.94369100
 Cl                 1.99075092   -1.95780125   -0.09849700
 Cl                -2.15178308   -1.89394725   -0.11042000
 O                  0.19155241    3.01134894   -1.29697697
 H                  1.15155241    3.01134894   -1.29697697
 H                 -0.12890218    3.91628477   -1.29697697

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



