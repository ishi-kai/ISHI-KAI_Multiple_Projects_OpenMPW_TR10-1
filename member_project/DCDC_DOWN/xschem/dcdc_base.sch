v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 30 -280 100 -280 {lab=vin}
N 160 -280 430 -280 {lab=vout}
N 290 -280 290 -180 {lab=vout}
N 490 -280 630 -280 {lab=vout}
N 290 -120 290 -0 {lab=xxx}
N 630 -280 720 -280 {lab=vout}
N 130 -240 130 -100 {lab=clk_in}
N 130 -300 130 -280 {lab=xxx}
N 130 -300 190 -300 {lab=xxx}
N 80 -370 100 -370 {lab=vin}
N 80 -370 80 -280 {lab=vin}
N 160 -370 200 -370 {lab=vout}
N 200 -370 200 -280 {lab=vout}
N 190 -300 190 0 {lab=xxx}
N 190 0 290 0 {lab=xxx}
N 130 -400 130 -370 {lab=xxx}
N 130 -400 180 -400 {lab=xxx}
N 180 -400 180 -300 {lab=xxx}
N 290 -150 320 -150 {lab=xxx}
N 320 -150 320 -100 {lab=xxx}
N 290 -100 320 -100 {lab=xxx}
N 130 -330 130 -300 {lab=xxx}
N 250 -150 250 -0 {lab=xxx}
N 430 -280 490 -280 {lab=vout}
C {primitives/nfet.sym} 130 -260 3 0 {name=M1 
model=nchor1ex
W=40.0u
L=1.0u
m=1
}
C {primitives/nfet.sym} 130 -350 3 0 {name=M2 
model=nchor1ex
W=40.0u
L=3.0u
m=1
}
C {primitives/nfet.sym} 270 -150 0 0 {name=M3 
model=nchor1ex
W=40.0u
L=3.0u
m=1
}
C {devices/ipin.sym} 130 -100 0 0 {name=p3 lab=clk_in}
C {devices/ipin.sym} 30 -280 0 0 {name=p4 lab=vin}
C {devices/iopin.sym} 290 0 0 0 {name=p5 lab=vss}
C {devices/opin.sym} 720 -280 0 0 {name=p6 lab=vout}
