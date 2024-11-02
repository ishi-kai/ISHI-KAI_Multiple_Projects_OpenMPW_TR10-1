v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -120 60 -80 {lab=VDD}
N -20 -50 20 -50 {lab=A}
N -20 -50 -20 50 {lab=A}
N -20 50 20 50 {lab=A}
N -110 0 -20 -0 {lab=A}
N 60 -50 70 -50 {lab=VDD}
N 70 -90 70 -50 {lab=VDD}
N 60 -90 70 -90 {lab=VDD}
N 60 -20 90 -20 {lab=Q}
N 90 -20 90 20 {lab=Q}
N 60 20 90 20 {lab=Q}
N 90 -0 160 0 {lab=Q}
N 60 80 60 120 {lab=VSS}
N 60 50 70 50 {lab=VSS}
N 70 50 70 90 {lab=VSS}
N 60 90 70 90 {lab=VSS}
C {.xschem/symbols/OR1/primitives/pfet.sym} 40 -50 0 0 {name=M1 
model=pchor1ex
W=60u
L=10u
m=1
}
C {.xschem/symbols/OR1/primitives/nfet.sym} 40 50 0 0 {name=M2 
model=nchor1ex
W=20u
L=10u
m=1
}
C {devices/ipin.sym} -110 0 0 0 {name=p1 lab=A}
C {devices/opin.sym} 160 0 0 0 {name=p2 lab=Q}
C {devices/iopin.sym} 60 -120 0 1 {name=p3 lab=VDD}
C {devices/iopin.sym} 60 120 0 0 {name=p4 lab=VSS}
