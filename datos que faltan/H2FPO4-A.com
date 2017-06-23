%chk=H2FPO4-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 P                 -0.18292684    0.00000000    0.00000000
 F                  0.81599916   -1.18287300   -0.26153300
 O                 -1.52247784   -0.86254500   -0.35238300
 O                  0.05310116    0.92927500   -1.27079300
 O                 -0.10173884    0.64155700    1.31186700
 O                 -2.64944484    0.05662600   -0.24993200
 H                 -3.02108184   -0.22322100    0.60105600

 1 2 1.0 3 1.0 4 1.5 5 2.0
 2
 3
 4
 5
 6 7 1.0
 7


--link1--
%chk=H2FPO4-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=H2FPO4-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=H2FPO4-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

H2FPO4-A.wfx



