v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -60 130 -10 {lab=vss}
N 100 -60 130 -60 {lab=vss}
N 100 -160 100 -100 {lab=vdd}
N -220 -100 -200 -100 {lab=vctrl}
N 130 -10 500 -10 {lab=vss}
N 100 -80 130 -80 {lab=clk_out}
N 130 -160 130 -80 {lab=clk_out}
N 300 -160 300 -80 {lab=clk_in}
N 300 -80 350 -80 {lab=clk_in}
N 350 -160 350 -100 {lab=vin}
N 650 -170 650 -100 {lab=vout}
N 650 -80 650 -10 {lab=vss}
N 500 -10 650 -10 {lab=vss}
C {vco.sym} -50 -80 0 0 {name=x1}
C {dcdc_base.sym} 500 -90 0 0 {name=x2}
C {devices/ipin.sym} 350 -160 0 0 {name=p4 lab=vin}
C {devices/opin.sym} 650 -170 0 0 {name=p6 lab=vout}
C {devices/iopin.sym} 650 -10 0 0 {name=p1 lab=vss}
C {devices/iopin.sym} 100 -160 0 1 {name=p2 lab=vdd}
C {devices/ipin.sym} -220 -100 0 0 {name=p3 lab=vctrl}
C {devices/ipin.sym} 300 -160 0 0 {name=p5 lab=clk_in}
C {devices/opin.sym} 130 -160 0 0 {name=p7 lab=clk_out}
