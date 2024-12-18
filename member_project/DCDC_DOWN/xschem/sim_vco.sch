v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 20 210 20 {lab=GND}
N 190 -20 210 -20 {lab=vdd}
N 190 0 210 0 {lab=vout}
N -270 -70 -270 -40 {lab=vcntl}
N -270 20 -270 30 {lab=GND}
N -330 -70 -330 -40 {lab=VDD}
N -330 20 -330 30 {lab=GND}
N -150 -20 -110 -20 {lab=#net1}
C {devices/gnd.sym} 210 20 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 210 0 2 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 210 -20 2 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/code.sym} -320 -270 0 0 {name=TR10_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/vsource.sym} -270 -10 0 0 {name=vcntl value=5.0 savecurrent=false}
C {devices/lab_pin.sym} -270 -70 1 0 {name=p4 sig_type=std_logic lab=vcntl}
C {devices/gnd.sym} -270 30 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -330 -10 0 0 {name=vdd value=5.0 savecurrent=false}
C {devices/gnd.sym} -330 30 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -330 -70 0 0 {name=l4 lab=VDD}
C {devices/code_shown.sym} 320 -60 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
tran  1n 100000n
write sim_vco.raw
.endc"}
C {vco.sym} 40 0 0 0 {name=x1}
C {devices/lab_pin.sym} -150 -20 2 1 {name=p3 sig_type=std_logic lab=vcntl}
