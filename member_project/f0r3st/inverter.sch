v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -160 -100 -120 -100 {lab=VIN}
N -160 -100 -160 30 {lab=VIN}
N -160 30 -120 30 {lab=VIN}
N -80 -170 -80 -130 {lab=VDD}
N -80 -70 -20 -70 {lab=VOUT}
N -20 -70 -20 -10 {lab=VOUT}
N -20 -10 -20 -0 {lab=VOUT}
N -80 -0 -20 -0 {lab=VOUT}
N -20 -40 130 -40 {lab=VOUT}
N -300 -40 -160 -40 {lab=VIN}
N -80 60 -80 100 {lab=VSS}
N -80 30 -40 30 {lab=VSS}
N -40 30 -40 80 {lab=VSS}
N -80 80 -40 80 {lab=VSS}
N -80 -100 -60 -100 {lab=VDD}
N -60 -140 -60 -100 {lab=VDD}
N -60 -150 -60 -140 {lab=VDD}
N -80 -150 -60 -150 {lab=VDD}
C {primitives/pfet.sym} -100 -100 0 0 {name=M1 
model=pchor1ex
W=10u
L=1u
m=1
}
C {primitives/nfet.sym} -100 30 0 0 {name=M2 
model=nchor1ex
W=5u
L=1u
m=1
}
C {devices/iopin.sym} 130 -40 0 0 {name=p1 lab=VOUT}
C {devices/iopin.sym} -300 -40 2 0 {name=p2 lab=VIN}
C {devices/iopin.sym} -80 -170 3 0 {name=p3 lab=VDD}
C {devices/iopin.sym} -80 100 1 0 {name=p4 lab=VSS
}
