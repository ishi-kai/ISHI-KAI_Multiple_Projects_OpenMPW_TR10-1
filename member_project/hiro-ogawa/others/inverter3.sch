v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -120 60 -80 {lab=#net1}
N -20 -50 20 -50 {lab=vin}
N -20 -50 -20 50 {lab=vin}
N -20 50 20 50 {lab=vin}
N 60 -50 70 -50 {lab=#net1}
N 70 -90 70 -50 {lab=#net1}
N 60 -90 70 -90 {lab=#net1}
N 60 -20 90 -20 {lab=vout}
N 90 -20 90 20 {lab=vout}
N 60 20 90 20 {lab=vout}
N 60 80 60 120 {lab=GND}
N 60 50 70 50 {lab=GND}
N 70 50 70 90 {lab=GND}
N 60 90 70 90 {lab=GND}
N -190 130 -190 160 {lab=GND}
N -120 130 -120 160 {lab=GND}
N 60 -210 60 -180 {lab=VDD}
N 90 0 220 0 {lab=vout}
N -190 50 -190 70 {lab=VDD}
N -50 0 -20 0 {lab=vin}
N -120 30 -120 70 {lab=vin}
N 220 90 220 120 {lab=GND}
N 220 -0 220 30 {lab=vout}
C {devices/vdd.sym} 60 -210 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 60 120 0 0 {name=l2 lab=GND}
C {devices/code.sym} -210 -150 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/code_shown.sym} 310 -210 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* Tran analysis
tran 0.1n 100n
plot vout vin
plot i(Vd)
wrdata ~/inverter3.txt v(vout)
write ~/inverter3.raw
.endc
"}
C {devices/vsource.sym} -190 100 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/vsource.sym} -120 100 0 0 {name=vin value="pwl 0 0 10n 0 20n 5 60n 5 70n 0" savecurrent=false}
C {devices/gnd.sym} -120 160 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -190 160 0 0 {name=l4 lab=GND}
C {devices/ammeter.sym} 60 -150 0 0 {name=Vd savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 220 0 0 1 {name=p3 sig_type=std_logic lab=vout}
C {devices/capa.sym} 220 60 0 0 {name=C1
m=1
value=10
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} -190 50 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} -50 0 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -120 30 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/gnd.sym} 220 120 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 310 70 0 0 {name=measure only_toplevel=false
value="
.measure tran td_r trig v(vin) val=2.5 fall=1 targ v(vout) val=2.5 rise=1
.measure tran td_F trig v(vin) val=2.5 rise=1 targ v(vout) val=2.5 fall=1
.measure tran trise trig v(vout) val=0.83 targ v(vout) val=4.17 rise=1
.measure tran tfall trig v(vout) val=4.17 targ v(vout) val=0.83 fall=1
"}
C {.xschem/symbols/OR1/primitives/pfet.sym} 40 -50 0 0 {name=M1 
model=pchor1ex
W=3.3u
L=1u
m=1
}
C {.xschem/symbols/OR1/primitives/nfet.sym} 40 50 0 0 {name=M2 
model=nchor1ex
W=2u
L=1u
m=1
}
