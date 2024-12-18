v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 -40 -10 40 {lab=vin}
N 30 -80 30 -70 {lab=#net1}
N 30 70 30 80 {lab=#net2}
N 30 140 30 160 {lab=gnd}
N 30 150 40 150 {lab=gnd}
N 40 40 40 150 {lab=gnd}
N 30 40 40 40 {lab=gnd}
N 30 110 40 110 {lab=gnd}
N 30 -160 30 -140 {lab=vdd}
N 30 -150 40 -150 {lab=vdd}
N 40 -150 40 -40 {lab=vdd}
N 30 -40 40 -40 {lab=vdd}
N 30 -110 40 -110 {lab=vdd}
N -40 0 -10 0 {lab=vin}
N -40 110 -10 110 {lab=vctrl}
N -40 -110 -10 -110 {lab=vvctrl}
N 30 -10 30 10 {lab=vout}
N 30 0 160 -0 {lab=vout}
N 140 0 140 50 {lab=vout}
N 40 150 140 150 {lab=gnd}
N 140 110 140 150 {lab=gnd}
C {primitives/pfet.sym} 10 -40 0 0 {name=M1 
model=pchor1ex
W=3u
L=1u
m=1
}
C {primitives/nfet.sym} 10 40 0 0 {name=M2 
model=nchor1ex
W=1u
L=1u
m=1
}
C {primitives/nfet.sym} 10 110 0 0 {name=M3 
model=nchor1ex
W=2u
L=20u
m=1
}
C {primitives/pfet.sym} 10 -110 0 0 {name=M4 
model=pchor1ex
W=6u
L=20u
m=1
}
C {devices/ipin.sym} -40 0 0 0 {name=p1 lab=vin}
C {devices/opin.sym} 160 0 0 0 {name=p2 lab=vout}
C {devices/iopin.sym} 30 -160 3 0 {name=p3 lab=vdd}
C {devices/iopin.sym} 30 160 3 1 {name=p4 lab=gnd}
C {devices/ipin.sym} -40 110 0 0 {name=p5 lab=vctrl}
C {devices/ipin.sym} -40 -110 0 0 {name=p6 lab=vvctrl}
C {primitives/Poly_cap.sym} 140 80 0 0 {name=C2 model=poly_cap W=20 L=20}
