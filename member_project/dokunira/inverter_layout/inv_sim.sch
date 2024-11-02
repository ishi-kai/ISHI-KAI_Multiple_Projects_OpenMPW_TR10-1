v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 30 10 80 {
lab=vout}
N 10 50 80 50 {
lab=vout}
N 10 140 10 160 {
lab=GND}
N 10 -40 30 -40 {
lab=#net1}
N 10 110 30 110 {
lab=GND}
N 30 110 30 150 {
lab=GND}
N 10 150 30 150 {
lab=GND}
N 30 -40 30 -0 {
lab=#net1}
N 10 0 30 -0 {
lab=#net1}
N 80 50 130 50 {
lab=vout}
N 110 50 110 80 {
lab=vout}
N 110 140 110 160 {
lab=GND}
N -280 70 -280 90 {
lab=VDD}
N -280 150 -280 160 {
lab=GND}
N -190 70 -190 90 {
lab=vin}
N -190 150 -190 160 {
lab=GND}
N 10 -50 10 -30 {
lab=#net1}
N 10 -130 10 -120 {
lab=VDD}
N -80 50 -30 50 {
lab=vin}
N -30 70 -30 110 {
lab=vin}
N -30 0 -30 70 {
lab=vin}
N 10 -130 10 -110 {
lab=VDD}
C {devices/vdd.sym} 10 -130 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 10 160 0 0 {name=l2 lab=GND}
C {devices/capa.sym} 110 110 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 110 160 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -280 120 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/vdd.sym} -280 70 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -280 160 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -190 120 0 0 {name=vin value=5 savecurrent=false}
C {devices/gnd.sym} -190 160 0 0 {name=l7 lab=GND}
C {devices/code.sym} -380 -190 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/code_shown.sym} 220 -190 0 0 {name=spice
only_toplevel=false 
value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
dc vin 0 5.0 0.01
plot vout vin
plot i(vd)
.endc
"}
C {devices/ammeter.sym} 10 -80 0 0 {name=Vd savecurrent=true}
C {devices/code_shown.sym} 230 30 0 0 {name=masure
only_toplevel=false 
value=".measure dc Vin when v(vout)=2.5
"}
C {devices/lab_pin.sym} 130 50 2 0 {name=p4 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} -190 70 1 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -80 50 0 0 {name=p2 sig_type=std_logic lab=vin}
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
