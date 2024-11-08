# fixed 200 MHz LVDS clock from a SiT9102 oscillator

set_property PACKAGE_PIN D18 [get_ports SYSCLK_P]
set_property PACKAGE_PIN C19 [get_ports SYSCLK_N]
set_property IOSTANDARD LVDS_25 [get_ports SYSCLK*]
create_clock -period 5.0 [get_ports SYSCLK_P]
