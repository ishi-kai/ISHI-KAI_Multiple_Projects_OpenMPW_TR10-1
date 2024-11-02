v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -120 70 -30 {lab=In}
N 110 -120 120 -120 {lab=Vdd}
N 110 -150 120 -150 {lab=Vdd}
N 120 -150 120 -120 {lab=Vdd}
N 110 -90 140 -90 {lab=Out}
N 140 -90 140 -60 {lab=Out}
N 110 -60 140 -60 {lab=Out}
N 110 -30 120 -30 {lab=Vss}
N 120 -30 120 -0 {lab=Vss}
N 110 0 120 0 {lab=Vss}
N 120 0 120 30 {lab=Vss}
N 140 -70 210 -70 {lab=Out}
N 0 -70 70 -70 {lab=In}
N 120 -190 120 -150 {lab=Vdd}
C {primitives/pfet.sym} 90 -120 0 0 {name=M1 
model=pchor1ex
W=2u
L=2u
m=1
lab=Vss}
C {primitives/nfet.sym} 90 -30 0 0 {name=M2 
model=nchor1ex
W=2u
L=2u
m=1
lab=Vss}
C {devices/ipin.sym} 0 -70 0 0 {name=p1 lab=In}
C {devices/iopin.sym} 120 -190 0 0 {name=p2 lab=Vdd}
C {devices/iopin.sym} 120 30 0 0 {name=p3 lab=Vss}
C {devices/opin.sym} 210 -70 0 0 {name=p4 lab=Out}
