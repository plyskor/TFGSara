%chk=HFCO3-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 C                 -0.76719576   -0.04409171    0.00000000
 O                 -1.79465876   -0.65122971    0.00017600
 O                  0.38661924   -0.77786471    0.00000800
 O                 -0.57247876    1.26766829    0.00008800
 F                  1.55145024    0.06757729    0.00016000
 O                 -1.09739548    3.09468563   -0.37584152
 H                 -0.13739548    3.09468563   -0.37584152
 H                 -1.41785007    3.99962146   -0.37584152

 1 2 2.0 3 1.0 4 1.5
 2
 3
 4
 5
 6 7 1.0 8 1.0
 7
 8


--link1--
%chk=HFCO3-h2o-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=HFCO3-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=HFCO3-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

HFCO3-h2o-A.wfx



