v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 30 -70 30 70 {
lab=#net1}
N -30 -70 -30 70 {
lab=D}
N 120 -50 120 50 {
lab=#net1}
N 260 -50 260 50 {
lab=#net2}
N 30 -0 120 -0 {
lab=#net1}
N 160 -20 160 20 {
lab=#net2}
N 160 -0 260 0 {
lab=#net2}
N 300 -20 300 20 {
lab=Q}
N 300 0 390 0 {
lab=Q}
N 390 0 390 250 {
lab=Q}
N 150 260 390 260 {
lab=Q}
N 150 190 150 250 {
lab=Q}
N 150 260 150 330 {
lab=Q}
N 150 250 150 260 {
lab=Q}
N 390 250 390 260 {
lab=Q}
N 90 190 90 330 {
lab=#net1}
N 70 260 90 260 {
lab=#net1}
N 60 0 60 260 {
lab=#net1}
N 60 260 70 260 {
lab=#net1}
N -230 200 -230 240 {
lab=#net3}
N -270 170 -270 270 {
lab=CK}
N -350 220 -270 220 {
lab=CK}
N -230 120 -230 140 {
lab=VDD}
N -230 300 -230 320 {
lab=VSS}
N 160 -100 160 -80 {
lab=VDD}
N 160 80 160 100 {
lab=VSS}
N 300 -100 300 -80 {
lab=VDD}
N 300 80 300 100 {
lab=VSS}
N -230 170 -210 170 {
lab=VDD}
N -210 130 -210 170 {
lab=VDD}
N -230 130 -210 130 {
lab=VDD}
N -230 270 -210 270 {
lab=VSS}
N -210 270 -210 310 {
lab=VSS}
N -230 310 -210 310 {
lab=VSS}
N 160 50 180 50 {
lab=VSS}
N 180 50 180 90 {
lab=VSS}
N 160 90 180 90 {
lab=VSS}
N 160 -50 180 -50 {
lab=VDD}
N 180 -90 180 -50 {
lab=VDD}
N 160 -90 180 -90 {
lab=VDD}
N 300 -50 320 -50 {
lab=VDD}
N 320 -90 320 -50 {
lab=VDD}
N 300 -90 320 -90 {
lab=VDD}
N 300 50 320 50 {
lab=VSS}
N 320 50 320 90 {
lab=VSS}
N 300 90 320 90 {
lab=VSS}
N -0 -70 -0 -50 {
lab=VDD}
N 0 50 0 70 {
lab=VSS}
N 120 190 120 210 {
lab=VDD}
N 120 310 120 330 {
lab=VSS}
N -330 80 -330 220 {
lab=CK}
N -330 80 -120 80 {
lab=CK}
N -120 80 -120 110 {
lab=CK}
N -120 150 0 150 {
lab=CK}
N 0 150 120 150 {
lab=CK}
N 0 110 0 150 {
lab=CK}
N -90 -0 -30 -0 {
lab=D}
N -0 -140 -0 -110 {
lab=#net3}
N -140 -140 -0 -140 {
lab=#net3}
N -140 -140 -140 220 {
lab=#net3}
N -230 220 -140 220 {
lab=#net3}
N -140 220 -140 380 {
lab=#net3}
N -140 380 120 380 {
lab=#net3}
N 120 370 120 380 {
lab=#net3}
N -120 110 -120 150 {
lab=CK}
C {primitives/pfet.sym} 0 -90 1 0 {name=M1 
model=pchor1ex
W=4u
L=1u
m=1
}
C {primitives/nfet.sym} 0 90 3 0 {name=M2 
model=nchor1ex
W=2u
L=1u
m=1
}
C {primitives/pfet.sym} 120 170 1 0 {name=M3 
model=pchor1ex
W=4u
L=1u
m=1
}
C {primitives/nfet.sym} 120 350 3 0 {name=M4 
model=nchor1ex
W=2u
L=1u
m=1
}
C {primitives/pfet.sym} 140 -50 0 0 {name=M5 
model=pchor1ex
W=4u
L=1u
m=1
}
C {primitives/nfet.sym} 140 50 0 0 {name=M6 
model=nchor1ex
W=2u
L=1u
m=1
}
C {primitives/pfet.sym} 280 -50 0 0 {name=M7 
model=pchor1ex
W=4u
L=1u
m=1
}
C {primitives/nfet.sym} 280 50 0 0 {name=M8 
model=nchor1ex
W=2u
L=1u
m=1
}
C {primitives/pfet.sym} -250 170 0 0 {name=M9 
model=pchor1ex
W=4u
L=1u
m=1
}
C {devices/iopin.sym} -350 220 2 0 {name=p1 lab=CK}
C {devices/iopin.sym} -90 0 2 0 {name=p2 lab=D}
C {devices/iopin.sym} -230 120 2 0 {name=p3 lab=VDD}
C {devices/iopin.sym} -230 320 2 0 {name=p4 lab=VSS}
C {devices/iopin.sym} 160 -100 2 0 {name=p5 lab=VDD}
C {devices/iopin.sym} 160 100 2 0 {name=p6 lab=VSS}
C {devices/iopin.sym} 300 -100 2 0 {name=p7 lab=VDD}
C {devices/iopin.sym} 300 100 2 0 {name=p8 lab=VSS}
C {devices/iopin.sym} 390 0 0 0 {name=p9 lab=Q}
C {devices/iopin.sym} 0 -50 2 0 {name=p10 lab=VDD}
C {devices/iopin.sym} 0 50 2 0 {name=p11 lab=VSS}
C {devices/iopin.sym} 120 210 2 0 {name=p12 lab=VDD}
C {devices/iopin.sym} 120 310 2 0 {name=p13 lab=VSS}
C {primitives/nfet.sym} -250 270 0 0 {name=M10 
model=nchor1ex
W=2u
L=1u
m=1
}
