v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -570 800 -570 820 {lab=#net1}
N -580 730 -570 730 {lab=vdd}
N -580 730 -580 770 {lab=vdd}
N -580 770 -570 770 {lab=vdd}
N -570 880 -570 900 {lab=#net2}
N 160 810 190 810 {lab=#net3}
N 490 810 520 810 {lab=#net4}
N 480 890 510 890 {lab=#net5}
N 820 810 830 810 {lab=#net6}
N 830 810 830 890 {lab=#net6}
N 810 890 830 890 {lab=#net6}
N 830 850 850 850 {lab=#net6}
N 1150 870 1170 870 {lab=vout}
N -140 770 -140 790 {lab=#net1}
N -140 770 190 770 {lab=#net1}
N 190 770 190 790 {lab=#net1}
N 520 770 520 790 {lab=#net1}
N 190 770 520 770 {lab=#net1}
N -570 730 -570 740 {lab=vdd}
N 810 910 810 940 {lab=#net1}
N 480 910 480 940 {lab=#net1}
N 520 830 520 850 {lab=vctrl}
N 190 830 190 850 {lab=vctrl}
N -140 830 -140 850 {lab=vctrl}
N 480 850 480 870 {lab=vctrl}
N 810 850 810 870 {lab=vctrl}
N -570 960 -570 970 {lab=gnd}
N 1150 890 1150 970 {lab=gnd}
N 1150 730 1150 850 {lab=vdd}
N 820 730 820 790 {lab=vdd}
N 490 730 490 790 {lab=vdd}
N 820 830 820 970 {lab=gnd}
N 160 730 160 790 {lab=vdd}
N 160 870 180 870 {lab=gnd}
N 160 870 160 970 {lab=gnd}
N 490 870 510 870 {lab=gnd}
N 490 870 490 970 {lab=gnd}
N 500 910 510 910 {lab=vdd}
N 500 730 500 910 {lab=vdd}
N 170 910 180 910 {lab=vdd}
N 170 730 170 910 {lab=vdd}
N 160 830 160 870 {lab=gnd}
N 490 830 490 870 {lab=gnd}
N -570 930 -560 930 {lab=gnd}
N -560 930 -560 970 {lab=gnd}
N -570 730 1160 730 {lab=vdd}
N -570 970 1160 970 {lab=gnd}
N 150 890 180 890 {lab=#net7}
N 150 910 150 940 {lab=#net1}
N -490 810 -140 810 {lab=#net8}
N -490 810 -490 890 {lab=#net8}
N -490 890 -480 890 {lab=#net8}
N -180 890 -150 890 {lab=#net9}
N -160 910 -150 910 {lab=vdd}
N -160 730 -160 910 {lab=vdd}
N -500 910 -480 910 {lab=vdd}
N -500 730 -500 910 {lab=vdd}
N -530 770 -140 770 {lab=#net1}
N -570 810 -510 810 {lab=#net1}
N -510 770 -510 810 {lab=#net1}
N -180 850 -180 870 {lab=vctrl}
N 150 850 150 870 {lab=vctrl}
N -170 870 -150 870 {lab=gnd}
N -170 870 -170 970 {lab=gnd}
N -180 910 -180 940 {lab=#net1}
N -510 870 -480 870 {lab=gnd}
N -510 870 -510 970 {lab=gnd}
N -530 940 810 940 {lab=#net1}
N -540 850 -540 890 {lab=vctrl}
N -540 850 810 850 {lab=vctrl}
N -530 810 -530 940 {lab=#net1}
N -680 930 -610 930 {lab=vctrl}
N -650 850 -610 850 {lab=#net1}
N -650 810 -650 850 {lab=#net1}
N -650 810 -570 810 {lab=#net1}
N -610 890 -540 890 {lab=vctrl}
N -640 890 -610 890 {lab=vctrl}
N -640 890 -640 930 {lab=vctrl}
N -570 850 -560 850 {lab=gnd}
N -560 850 -560 930 {lab=gnd}
C {primitives/pfet.sym} -550 770 2 0 {name=M4 
model=pchor1ex
W=12u
L=10u
m=1
}
C {primitives/nfet.sym} -590 930 0 0 {name=M6 
model=nchor1ex
W=4u
L=10u
m=1
}
C {devices/iopin.sym} 1160 730 0 0 {name=p6 lab=vdd}
C {devices/opin.sym} 1170 870 0 0 {name=p7 lab=vout}
C {devices/iopin.sym} 1160 970 0 0 {name=p8 lab=gnd}
C {inverter.sym} 10 810 0 0 {name=x2}
C {inverter.sym} 340 810 0 0 {name=x3}
C {inverter.sym} 670 810 0 0 {name=x4}
C {inverter.sym} 660 890 2 0 {name=x5}
C {buffer.sym} 1000 870 0 0 {name=x1}
C {inverter.sym} 330 890 2 0 {name=x9}
C {inverter.sym} 0 890 2 0 {name=x6}
C {inverter.sym} -330 890 2 0 {name=x7}
C {primitives/nfet.sym} -590 850 0 0 {name=M1 
model=nchor1ex
W=4u
L=10u
m=1
}
C {devices/ipin.sym} -680 930 0 0 {name=p1 lab=vctrl}
