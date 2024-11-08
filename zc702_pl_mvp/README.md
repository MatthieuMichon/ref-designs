The place and route steps of the implementation process can be invoked using the `debug_log` argument. Doing so adds (quite a lot) information which contents can easily be meaningful for improving designs affected by long build times.

## Lint

Since version 2022.1, the Vivado synthesizer can be run in lint mode by adding the `-lint` argument.

## Synthesis

### Module Synthesis

```diff
INFO: [Synth 8-6157] synthesizing module 'PLLE2_BASE' [/opt/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v:114829]
-	Parameter CLKFBOUT_MULT bound to: 8 - type: integer 
-	Parameter CLKIN1_PERIOD bound to: 5.000000 - type: double 
-	Parameter CLKOUT0_DIVIDE bound to: 8 - type: integer 
+	Module PLLE2_BASE : Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
+	Module PLLE2_BASE : Parameter CLKFBOUT_MULT bound to: 8 - type: integer 
+	Module PLLE2_BASE : Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
+	Module PLLE2_BASE : Parameter CLKIN1_PERIOD bound to: 5.000000 - type: double 
+	Module PLLE2_BASE : Parameter CLKOUT0_DIVIDE bound to: 8 - type: integer 
+	Module PLLE2_BASE : Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: double 
+	Module PLLE2_BASE : Parameter CLKOUT0_PHASE bound to: 0.000000 - type: double 
+	Module PLLE2_BASE : Parameter CLKOUT1_DIVIDE bound to: 1 - type: integer 
+	Module PLLE2_BASE : Parameter CLKOUT1_DUTY_CYCLE bound to: 0.500000 - type: double 
+	Module PLLE2_BASE : Parameter CLKOUT1_PHASE bound to: 0.000000 - type: double 
+	Module PLLE2_BASE : Parameter CLKOUT2_DIVIDE bound to: 1 - type: integer 
+	Module PLLE2_BASE : Parameter CLKOUT2_DUTY_CYCLE bound to: 0.500000 - type: double 
+	Module PLLE2_BASE : Parameter CLKOUT2_PHASE bound to: 0.000000 - type: double 
+	Module PLLE2_BASE : Parameter CLKOUT3_DIVIDE bound to: 1 - type: integer 
+	Module PLLE2_BASE : Parameter CLKOUT3_DUTY_CYCLE bound to: 0.500000 - type: double 
+	Module PLLE2_BASE : Parameter CLKOUT3_PHASE bound to: 0.000000 - type: double 
+	Module PLLE2_BASE : Parameter CLKOUT4_DIVIDE bound to: 1 - type: integer 
+	Module PLLE2_BASE : Parameter CLKOUT4_DUTY_CYCLE bound to: 0.500000 - type: double 
+	Module PLLE2_BASE : Parameter CLKOUT4_PHASE bound to: 0.000000 - type: double 
+	Module PLLE2_BASE : Parameter CLKOUT5_DIVIDE bound to: 1 - type: integer 
+	Module PLLE2_BASE : Parameter CLKOUT5_DUTY_CYCLE bound to: 0.500000 - type: double 
+	Module PLLE2_BASE : Parameter CLKOUT5_PHASE bound to: 0.000000 - type: double 
+	Module PLLE2_BASE : Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
+	Module PLLE2_BASE : Parameter REF_JITTER1 bound to: 0.010000 - type: double 
+	Module PLLE2_BASE : Parameter STARTUP_WAIT bound to: FALSE - type: string 
```

```
Module IBUFDS : Parameter CAPACITANCE bound to: DONT_CARE - type: string
```

```
^\tModule (?P<module>\S+) : Parameter (?P<parameter>\w+) bound to: (?P<value>\S+) - type: (?P<type>\w+) $
```