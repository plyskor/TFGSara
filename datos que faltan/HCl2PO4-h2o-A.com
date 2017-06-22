%chk=HCl2PO4-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 P                  0.23002422   -0.47215496    0.00000000
 O                 -0.65177378   -1.49773296   -0.92889500
 O                  1.08344422    0.18465604   -1.17354400
 O                  1.32131822   -1.37428196    0.78800900
 O                 -0.50000178    0.37358204    0.94369100
 Cl                 2.29484922   -2.51637596   -0.09849700
 Cl                -1.84768478   -2.45252196   -0.11042000
 O                  0.88451771    1.45852838   -3.16560650
 H                  1.84451771    1.45852838   -3.16560650
 H                  0.56406312    2.36346421   -3.16560650

 1 2 1.0 3 1.5 4 1.0 5 2.0
 2 7 1.0
 3
 4 6 1.0
 5
 6
 7
 8 9 1.0 10 1.0
 9
 10

--link1--
%chk=HCl2PO4-h2o-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=HCl2PO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=HCl2PO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

HCl2PO4-h2o-A.wfx



