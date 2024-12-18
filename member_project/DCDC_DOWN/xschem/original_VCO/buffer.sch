v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -10 90 10 {lab=#net1}
N 220 -10 220 10 {lab=vout}
N 180 -40 180 40 {lab=#net1}
N 90 0 180 0 {lab=#net1}
N 90 70 90 100 {lab=gnd}
N 90 100 220 100 {lab=gnd}
N 220 70 220 100 {lab=gnd}
N 90 80 100 80 {lab=gnd}
N 100 40 100 80 {lab=gnd}
N 90 40 100 40 {lab=gnd}
N 220 80 230 80 {lab=gnd}
N 230 40 230 80 {lab=gnd}
N 220 40 230 40 {lab=gnd}
N 90 -100 90 -70 {lab=vdd}
N 90 -100 220 -100 {lab=vdd}
N 220 -100 220 -70 {lab=vdd}
N 90 -80 100 -80 {lab=vdd}
N 100 -80 100 -40 {lab=vdd}
N 90 -40 100 -40 {lab=vdd}
N 220 -80 230 -80 {lab=vdd}
N 230 -80 230 -40 {lab=vdd}
N 220 -40 230 -40 {lab=vdd}
N 50 -40 50 40 {lab=vin}
N 20 0 50 -0 {lab=vin}
N 220 0 300 0 {lab=vout}
N 160 -120 160 -100 {lab=vdd}
N 160 100 160 120 {lab=gnd}
C {primitives/nfet.sym} 70 40 0 0 {name=M1 
model=nchor1ex
W=1u
L=1u
m=1
}
C {primitives/pfet.sym} 70 -40 0 0 {name=M2 
model=pchor1ex
W=3u
L=1u
m=1
}
C {primitives/nfet.sym} 200 40 0 0 {name=M3 
model=nchor1ex
W=1u
L=1u
m=1
}
C {primitives/pfet.sym} 200 -40 0 0 {name=M4 
model=pchor1ex
W=3u
L=1u
m=1
}
C {devices/iopin.sym} 160 -120 3 0 {name=p1 lab=vdd}
C {devices/ipin.sym} 20 0 0 0 {name=p2 lab=vin}
C {devices/opin.sym} 300 0 0 0 {name=p4 lab=vout}
C {devices/iopin.sym} 160 120 1 0 {name=p3 lab=gnd}
