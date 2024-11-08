# DIP switches

set_property PACKAGE_PIN W6 [get_ports GPIO_DIP_SW[0]]
set_property PACKAGE_PIN W7 [get_ports GPIO_DIP_SW[1]]

set_property IOSTANDARD LVCMOS25 [get_ports GPIO_DIP_SW*]

# push-buttons

set_property PACKAGE_PIN G19 [get_ports GPIO_SW_N]
set_property PACKAGE_PIN F19 [get_ports GPIO_SW_S]

set_property IOSTANDARD LVCMOS25 [get_ports GPIO_SW_*]

# user LEDs

set_property PACKAGE_PIN E15 [get_ports PMOD1[0]]
set_property PACKAGE_PIN D15 [get_ports PMOD1[1]]
set_property PACKAGE_PIN W17 [get_ports PMOD1[2]]
set_property PACKAGE_PIN W5 [get_ports PMOD1[3]]

set_property PACKAGE_PIN V7 [get_ports PMOD2[0]]
set_property PACKAGE_PIN W10 [get_ports PMOD2[1]]
set_property PACKAGE_PIN P18 [get_ports PMOD2[2]]
set_property PACKAGE_PIN P17 [get_ports PMOD2[3]]

set_property IOSTANDARD LVCMOS25 [get_ports PMOD*]
