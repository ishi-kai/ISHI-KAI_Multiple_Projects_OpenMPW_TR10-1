v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -20 -150 -20 -50 {lab=VDD}
N -20 -20 10 -20 {lab=VDD}
N 10 -90 10 -20 {lab=VDD}
N -20 -90 10 -90 {lab=VDD}
N -20 130 -20 220 {lab=VSS}
N -20 100 10 100 {lab=VSS}
N 10 100 10 160 {lab=VSS}
N -20 160 10 160 {lab=VSS}
N -20 10 30 10 {lab=Q}
N 30 10 30 40 {lab=Q}
N 30 40 140 40 {lab=Q}
N -20 70 30 70 {lab=Q}
N 30 40 30 70 {lab=Q}
N -120 40 -90 40 {lab=A}
N -90 -20 -90 40 {lab=A}
N -90 -20 -60 -20 {lab=A}
N -90 100 -60 100 {lab=A}
N -90 40 -90 100 {lab=A}
C {primitives/pfet.sym} -40 -20 0 0 {name=M2
model=pchor1ex
W=2u
L=1u
m=1
}
C {primitives/nfet.sym} -40 100 0 0 {name=M3
model=nchor1ex
W=2.0u
L=1.0u
m=1
}
C {devices/opin.sym} 140 40 0 0 {name=p1 lab=Q}
C {devices/ipin.sym} -120 40 0 0 {name=p2 lab=A}
C {devices/iopin.sym} -20 220 0 0 {name=p3 lab=VSS}
C {devices/iopin.sym} -20 -150 2 0 {name=p4 lab=VDD}
