quit -sim

vlib work
vmap work work
vdel -all -lib work
vlib work
vmap work work

vlog -work work tb/board_tb.v

vsim -novopt work.board_tb -L xilinxcorelib_ver -L xilinxcorelib -L unisims_ver -L unisim -pli TlpWr.dll -pli TlpRd.dll
do wave.do
log -r *
log -r *
log -r *
log -r *