v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 30 10 80 {
lab=Q}
N -30 0 -30 110 {
lab=A}
N -80 50 -30 50 {
lab=A}
N 10 50 80 50 {
lab=Q}
N 10 140 10 160 {
lab=VSS}
N 10 -40 30 -40 {
lab=VDD}
N 10 110 30 110 {
lab=VSS}
N 30 110 30 150 {
lab=VSS}
N 10 150 30 150 {
lab=VSS}
N 30 -40 30 -0 {
lab=VDD}
N 10 0 30 -0 {
lab=VDD}
N 80 50 130 50 {
lab=Q}
N 10 -50 10 -30 {
lab=VDD}
C {primitives/pfet.sym} -10 0 0 0 {name=M1 
model=pchor1ex
W=4u
L=1u
m=1
}
C {primitives/nfet.sym} -10 110 0 0 {name=M2 
model=nchor1ex
W=2u
L=1u
m=1
}
C {devices/iopin.sym} -80 50 2 0 {name=p2 lab=A
}
C {devices/iopin.sym} 10 -50 2 0 {name=p3 lab=VDD
}
C {devices/iopin.sym} 10 160 2 0 {name=p4 lab=VSS}
C {devices/iopin.sym} 130 50 0 0 {name=p1 lab=Q
}
