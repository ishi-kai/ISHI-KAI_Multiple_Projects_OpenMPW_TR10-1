v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 100 50 120 {lab=VSS}
N 50 -90 50 -70 {lab=VDD}
N -40 -40 10 -40 {lab=A}
N -40 -40 -40 70 {lab=A}
N -40 70 10 70 {lab=A}
N -50 10 -40 10 {lab=A}
N 50 -40 70 -40 {lab=VDD}
N 70 -70 70 -40 {lab=VDD}
N 50 -70 70 -70 {lab=VDD}
N 50 70 70 70 {lab=VSS}
N 70 70 70 100 {lab=VSS}
N 50 100 70 100 {lab=VSS}
N -100 10 -90 10 {lab=A}
N -90 10 -50 10 {lab=A}
N 50 -0 50 40 {lab=Q}
N 50 -10 50 0 {lab=Q}
N 70 10 80 10 {lab=Q}
N 50 10 70 10 {lab=Q}
N 50 -110 50 -90 {lab=VDD}
N 50 120 50 130 {lab=VSS}
C {devices/ipin.sym} -100 10 0 0 {name=p1 lab=A}
C {devices/code_shown.sym} 180 -130 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false
}
C {primitives/pfet.sym} 30 -40 0 0 {name=M1 
model=pchor1ex
W=6u
L=1u
m=1
}
C {primitives/nfet.sym} 30 70 0 0 {name=M2 
model=nchor1ex
W=2u
L=1u
m=1
}
C {devices/opin.sym} 80 10 0 0 {name=p2 lab=Q}
C {devices/iopin.sym} 50 -110 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 50 130 0 0 {name=p4 lab=VSS}
