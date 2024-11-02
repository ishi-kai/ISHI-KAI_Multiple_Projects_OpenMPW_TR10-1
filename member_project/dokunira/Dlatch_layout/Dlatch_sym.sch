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
N -110 -0 -30 0 {
lab=D}
N -240 130 -240 170 {
lab=#net3}
N -280 100 -280 200 {
lab=CK}
N -360 150 -280 150 {
lab=CK}
N -240 50 -240 70 {
lab=VDD}
N 160 -100 160 -80 {
lab=VDD}
N 300 -100 300 -80 {
lab=VDD}
N -170 -110 0 -110 {
lab=#net3}
N -170 -110 -170 150 {
lab=#net3}
N -240 150 -170 150 {
lab=#net3}
N -170 370 120 370 {
lab=#net3}
N -170 150 -170 370 {
lab=#net3}
N -330 150 -330 270 {
lab=CK}
N -330 270 -0 270 {
lab=CK}
N -0 110 -0 270 {
lab=CK}
N 0 150 120 150 {
lab=CK}
N -240 100 -220 100 {
lab=VDD}
N -220 60 -220 100 {
lab=VDD}
N -240 60 -220 60 {
lab=VDD}
N -240 200 -210 200 {
lab=GND}
N -210 200 -210 230 {
lab=GND}
N -240 230 -210 230 {
lab=GND}
N 160 -50 180 -50 {
lab=VDD}
N 180 -90 180 -50 {
lab=VDD}
N 160 -90 180 -90 {
lab=VDD}
N 160 50 180 50 {
lab=GND}
N 180 50 180 80 {
lab=GND}
N 160 80 180 80 {
lab=GND}
N 300 50 320 50 {
lab=GND}
N 320 50 320 80 {
lab=GND}
N 300 80 320 80 {
lab=GND}
N 300 -50 320 -50 {
lab=VDD}
N 320 -90 320 -50 {
lab=VDD}
N 300 -90 320 -90 {
lab=VDD}
N 0 -70 0 -50 {
lab=VDD}
N -0 50 0 70 {
lab=GND}
N 120 190 120 210 {
lab=VDD}
N 120 310 120 330 {
lab=GND}
C {xschem/symbols/OR1/primitives/pfet.sym} 0 -90 1 0 {name=M1 
model=pchor1ex
W=4u
L=1u
m=1
}
C {xschem/symbols/OR1/primitives/nfet.sym} 0 90 3 0 {name=M2 
model=nchor1ex
W=2u
L=1u
m=1
}
C {xschem/symbols/OR1/primitives/pfet.sym} 120 170 1 0 {name=M3 
model=pchor1ex
W=4u
L=1u
m=1
}
C {xschem/symbols/OR1/primitives/nfet.sym} 120 350 3 0 {name=M4 
model=nchor1ex
W=2u
L=1u
m=1
}
C {xschem/symbols/OR1/primitives/pfet.sym} 140 -50 0 0 {name=M5 
model=pchor1ex
W=4u
L=1u
m=1
}
C {xschem/symbols/OR1/primitives/nfet.sym} 140 50 0 0 {name=M6 
model=nchor1ex
W=2u
L=1u
m=1
}
C {xschem/symbols/OR1/primitives/pfet.sym} 280 -50 0 0 {name=M7 
model=pchor1ex
W=4u
L=1u
m=1
}
C {xschem/symbols/OR1/primitives/nfet.sym} 280 50 0 0 {name=M8 
model=nchor1ex
W=2u
L=1u
m=1
}
C {xschem/symbols/OR1/primitives/pfet.sym} -260 100 0 0 {name=M9 
model=pchor1ex
W=4u
L=1u
m=1
}
C {xschem/symbols/OR1/primitives/nfet.sym} -260 200 0 0 {name=M10 
model=nchor1ex
W=2u
L=1u
m=1
}
C {devices/iopin.sym} -360 150 2 0 {name=p1 lab=CK}
C {devices/iopin.sym} -110 0 2 0 {name=p2 lab=D}
C {devices/iopin.sym} -240 50 2 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 160 -100 2 0 {name=p5 lab=VDD}
C {devices/iopin.sym} 300 -100 2 0 {name=p7 lab=VDD}
C {devices/iopin.sym} 390 0 0 0 {name=p9 lab=Q}
C {devices/gnd.sym} -240 230 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 160 80 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 300 80 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -720 330 0 0 {name=V1 value=5 savecurrent=false}
C {devices/gnd.sym} -720 360 0 0 {name=l4 lab=GND}
C {devices/iopin.sym} -720 300 2 0 {name=p4 lab=VDD}
C {devices/vsource.sym} -610 330 0 0 {name=V2 value="pwl 0 0 10n 0 20n 5.0 60n 5.0 70n 0.0 130n 0.0 140n 5.0" savecurrent=false}
C {devices/gnd.sym} -610 360 0 0 {name=l5 lab=GND}
C {devices/iopin.sym} -610 300 2 0 {name=p6 lab=D}
C {devices/vsource.sym} -610 450 0 0 {name=V3 value="pwl 0 0 20n 0 30n 5.0 50n 5.0 60n 0 80n 0 90n 5.0 100n 5.0 120n 5.0 130n 0.0" savecurrent=false}
C {devices/capa.sym} 390 290 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 390 320 0 0 {name=l7 lab=GND}
C {devices/code.sym} -620 -130 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/code_shown.sym} 520 -50 0 0 {name=spice
only_toplevel=false 
value=".option savecurrent
.control
save all

* Tran analysis
tran 0.1n 150n
plot D CK Q
.endc
"}
C {devices/gnd.sym} -610 480 0 0 {name=l8 lab=GND}
C {devices/iopin.sym} -610 420 2 0 {name=p10 lab=CK}
C {devices/iopin.sym} 0 -50 2 0 {name=p8 lab=VDD}
C {devices/gnd.sym} 0 50 2 0 {name=l6 lab=GND}
C {devices/iopin.sym} 120 210 2 0 {name=p11 lab=VDD}
C {devices/gnd.sym} 120 310 2 0 {name=l9 lab=GND}
