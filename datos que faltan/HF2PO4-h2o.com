%chk=HF2PO4-h2o.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

0 1
 P                  0.27845037    0.23002421    0.00000000
 O                 -1.98957163    0.44729621   -0.12169600
 O                  1.00492337   -0.85806779   -0.90776100
 H                  1.91159837   -0.61124779   -1.13499800
 F                  1.39643837    1.36888321   -0.27176400
 O                 -0.87211063    1.36220521   -0.32528600
 O                 -1.13255763   -0.70657579    0.08627300
 F                  0.69607737    0.06275021    1.50941700
 O                  3.06295408    0.35108958   -0.00218002
 H                  4.02295408    0.35108958   -0.00218002
 H                  2.74249950    1.25602541   -0.00218002

 1 3 1.5 5 1.0 6 1.0 7 1.0 8 1.0
 2
 3 4 1.0
 4
 5
 6
 7
 8
 9 10 1.0 11 1.0
 10
 11

--link1--
%chk=HF2PO4-h2o.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

0 1

--link1--
%chk=HF2PO4-h2o.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

0 1

$nbo bndidx $end

--link1--
%chk=HF2PO4-h2o.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

0 1

HF2PO4-h2o.wfx



