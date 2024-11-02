v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -90 160 -40 {lab=vdd}
N 160 130 160 140 {lab=vss}
N 160 140 160 200 {lab=vss}
N 50 40 80 40 {lab=A}
N 80 -10 120 -10 {lab=A}
N 80 -10 80 100 {lab=A}
N 80 100 120 100 {lab=A}
N 160 20 200 20 {lab=#net1}
N 200 20 200 70 {lab=#net1}
N 160 70 200 70 {lab=#net1}
N 200 50 250 50 {lab=#net1}
N 160 -10 190 -10 {lab=vdd}
N 190 -50 190 -10 {lab=vdd}
N 160 -50 190 -50 {lab=vdd}
N 160 140 180 140 {lab=vss}
N 180 100 180 140 {lab=vss}
N 160 100 180 100 {lab=vss}
C {xschem/symbols/OR1/primitives/pfet.sym} 140 -10 0 0 {name=M1 
model=pchor1ex
W=3.3u
L=1.0u
m=1
}
C {xschem/symbols/OR1/primitives/nfet.sym} 140 100 0 0 {name=M2 
model=nchor1ex
W=2.0u
L=1u
m=1
}
C {devices/iopin.sym} 160 200 0 0 {name=p1 lab=vss}
C {devices/iopin.sym} 160 -90 2 0 {name=p2 lab=vdd}
C {devices/ipin.sym} 50 40 0 0 {name=p3 lab=A}
C {devices/opin.sym} 250 50 0 0 {name=p4 lab=Q}
