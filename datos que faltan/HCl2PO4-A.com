%chk=HCl2PO4-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 P                 -1.39225186   -0.54479418    0.00000000
 O                 -2.27404986   -1.57037218   -0.92889500
 O                 -0.53883186    0.11201682   -1.17354400
 O                 -0.30095786   -1.44692118    0.78800900
 O                 -2.12227786    0.30094282    0.94369100
 Cl                 0.67257314   -2.58901518   -0.09849700
 Cl                -3.46996086   -2.52516118   -0.11042000

 1 2 1.0 3 1.5 4 1.0 5 2.0
 2 7 1.0
 3
 4 6 1.0
 5
 6
 7

--link1--
%chk=HCl2PO4-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=HCl2PO4-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=HCl2PO4-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

HCl2PO4-A.wfx




