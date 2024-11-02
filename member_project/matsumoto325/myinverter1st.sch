v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 30 0 30 30 {lab=Q}
N 30 10 190 10 {lab=Q}
N -30 -30 -30 60 {lab=A}
N -70 10 -30 10 {lab=A}
N 30 -90 30 -60 {lab=VDD}
N -30 -30 -10 -30 {lab=A}
N -30 60 -10 60 {lab=A}
N 30 -30 50 -30 {lab=VDD}
N 50 -70 50 -30 {lab=VDD}
N 30 -70 50 -70 {lab=VDD}
N 30 60 50 60 {lab=VSS}
N 50 60 50 110 {lab=VSS}
N 30 110 50 110 {lab=VSS}
N 30 90 30 130 {lab=VSS}
C {primitives/pfet.sym} 10 -30 0 0 {name=M1 
model=pchor1ex
W=15u
L=2u
m=1
}
C {primitives/nfet.sym} 10 60 0 0 {name=M2 
model=nchor1ex
W=10u
L=2u
m=1
}
C {devices/ipin.sym} -70 10 0 0 {name=p1 lab=A}
C {devices/opin.sym} 190 10 0 0 {name=p2 lab=Q}
C {devices/iopin.sym} 30 -90 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 30 130 0 0 {name=p4 lab=VSS}
