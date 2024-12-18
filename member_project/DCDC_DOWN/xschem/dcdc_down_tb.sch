v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -210 -60 -210 -20 {
lab=GND}
N -210 -150 -210 -120 {
lab=vin}
N 30 -280 100 -280 {lab=vin}
N 160 -280 430 -280 {lab=#net1}
N 290 -280 290 -180 {lab=#net1}
N 490 -280 630 -280 {lab=vout}
N 630 -280 630 -180 {lab=vout}
N 290 -120 290 -0 {lab=GND}
N 130 -40 130 -10 {lab=GND}
N 630 -280 720 -280 {lab=vout}
N 630 -120 630 0 {lab=GND}
N 290 0 630 0 {lab=GND}
N 130 -240 130 -100 {lab=#net2}
N 130 -300 130 -280 {lab=GND}
N 130 -300 190 -300 {lab=GND}
N 80 -370 100 -370 {lab=vin}
N 80 -370 80 -280 {lab=vin}
N 160 -370 200 -370 {lab=#net1}
N 200 -370 200 -280 {lab=#net1}
N 190 -300 190 0 {lab=GND}
N 190 0 290 0 {lab=GND}
N -140 -60 -140 -20 {lab=GND}
N -140 -150 -140 -120 {lab=VDD}
N 130 -400 130 -370 {lab=GND}
N 130 -400 180 -400 {lab=GND}
N 180 -400 180 -300 {lab=GND}
N 290 -150 320 -150 {lab=GND}
N 320 -150 320 -100 {lab=GND}
N 290 -100 320 -100 {lab=GND}
N 130 -330 130 -300 {lab=GND}
N 250 -150 250 -0 {lab=GND}
C {devices/code.sym} -250 -350 0 0 {name=TR10_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/gnd.sym} 130 -10 0 0 {name=l2}
C {devices/vsource.sym} -210 -90 0 0 {name=vin value=12.0 savecurrent=false}
C {devices/gnd.sym} -210 -20 0 0 {name=l4}
C {devices/lab_pin.sym} 720 -280 0 1 {name=p2 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} 800 -320 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* Tran analysis
tran 1n 100u
plot vout
wrdata ~/dcdc_down_tb.txt v(vout)
write dcdc_down_tb.raw
.endc"}
C {devices/gnd.sym} 290 0 0 0 {name=l6}
C {primitives/nfet.sym} 130 -260 3 0 {name=M1 
model=nchor1ex
W=40.0u
L=1.0u
m=1
}
C {devices/ind.sym} 460 -280 3 1 {name=L1
m=1
value=100n
footprint=1206
device=inductor}
C {devices/sqwsource.sym} 130 -70 0 0 {name=V1 vhi=5 freq=90e3}
C {devices/lab_pin.sym} 30 -280 2 1 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -210 -150 2 1 {name=p3 sig_type=std_logic lab=vin}
C {devices/vsource.sym} -140 -90 0 0 {name=vdd value=5.0 savecurrent=false}
C {devices/gnd.sym} -140 -20 0 0 {name=l3}
C {devices/vdd.sym} -140 -150 0 0 {name=l5 lab=VDD}
C {devices/capa.sym} 630 -150 0 0 {name=C1
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
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
