# CMOS-INVERTER-SCALING
Design and simulate the netlist of the CMOS inverter at different technology nodes .
<br>

Author-RAVI SHANKAR TIWARI
<br>

PROJECT OVERVIEW
<br>

The CMOS inverter is the most fundamental building block of digital integrated circuits. It is used in almost every logic gate, flip-flop, memory cell, and large-scale digital system. The performance of the inverter directly reflects the performance of the overall circuit, making it an ideal candidate for studying the effects of CMOS technology scaling.
<br>
This project focuses on a detailed analysis of a CMOS inverter when the technology node is scaled from 180 nm down to 10 nm. At each node, both static and dynamic characteristics are studied, including voltage transfer characteristics (VTC), propagation delay, rise and fall times, and average power dissipation. The results demonstrate how scaling leads to faster switching and lower dynamic power, but also introduces significant challenges such as increased leakage currents and reduced noise margins.
<br>
The project was carried out using HSPICE simulations. Inverters were designed using appropriate transistor sizing for each technology node, and standard technology model files were employed to reflect realistic device behavior. Voltage transfer curves were obtained for all nodes, allowing direct comparison of switching thresholds and slopes. Transient simulations were used to calculate delay, rise time, fall time, and power metrics.
<br>
Through this systematic scaling study, the project highlights not only the advantages of moving to advanced technology nodes but also the associated limitations.The analysis provides complete picture of the trade-offs that designers face when moving from older, stable nodes like 180 nm and 130 nm to aggressively scaled nodes such as 32 nm and 10 nm.

<br>

MOTIVATION
<br>

The scaling of CMOS technology has been the driving force behind Moore’s Law, enabling exponential growth in the speed and complexity of integrated circuits. Every new technology node promises faster operation, lower area, and reduced energy per operation. However, as the feature sizes shrink below 100 nm, new challenges emerge: leakage currents increase rapidly, short-channel effects become dominant, and noise margins degrade.
<br>
The CMOS inverter, due to its simplicity, serves as the perfect test vehicle to study these scaling effects. By analyzing the inverter at multiple technology nodes, one can clearly see the fundamental trends that affect every larger digital system. For instance:
1.Delay and speed improvements can be directly measured through propagation delay analysis.
2.Energy efficiency can be assessed through dynamic and leakage power measurements.
3.Circuit robustness can be evaluated by examining the inverter’s voltage transfer characteristics and noise margins.
<br>
This project was motivated by the desire to build a clear and quantitative understanding of how scaling impacts circuit behavior. Before extending such studies to more complex circuits like SRAM cells or processors, it is essential to study the inverter thoroughly, as it provides a baseline reference for all other digital designs. The results from this project not only help explain past and current scaling trends but also provide valuable insights into the limitations that appear in nanometer-scale devices, which are critical for future VLSI research and design.

<br>

METHODOLOGY

<br>
1.Implemented a standard CMOS inverter schematic and netlist in HSPICE.
<br>
2.Simulations performed at the following technology nodes:
    180 nm, 130 nm, 90 nm, 65 nm, 45 nm, 32 nm, 10 nm
    <br>
3.Voltage Transfer Characteristics (VTC) plotted to analyze switching threshold and slope.
<br>
4.Transient analysis carried out to measure:
a>low-to-high propogation delay 
<br>
b>high-to-low propogation delay 
<br>
c>rise time(10% to 90%)
<br>
d>fall time (90% to 10%)
<br>
5.Average power dissipiation is calculated for each node
<br>
<br>

RESULT SUMMARY
<br>

1.PROPOGATION DELAYS
<br>
a>Low to High Delay decreases significantly with scaling, from ~23 ps at 180 nm to ~1.7 ps at 10 nm.
<br>
b>High to Low Delay generally decreases with scaling but shows a higher value at 10 nm due to short-channel effects and leakage variations.

<br>
2.RISE AND FALL TIMES 
<br>
a>Rise time stays within the range of 3–4.5 × 10⁻¹¹ s across nodes, with minor variation.
<br>
b>Fall time decreases with scaling but increases again at smaller nodes (≤45 nm), indicating waveform distortion due to reduced noise margins.

<br>

3.POWER DISSIPATION
<br>
a>Average power remains in the 4–7 × 10⁻⁸ W range for nodes down to 32 nm.
<br>
b>At 10 nm, power consumption jumps to ~2.3 × 10⁻⁶ W, showing the penalty of aggressive scaling on leakage power.

<br>

4.VOLTAGE TRANSFER CHARACTERISTICS
<br>
a>Larger technology nodes (e.g., 180 nm, 130 nm) show steeper slopes near the switching threshold, close to 90°.
<br>
b>At advanced nodes (≤45 nm), the slope reduces slightly, indicating reduced noise margins and higher susceptibility to noise.
<br>
<br>

KEY OBSERVATION
<br>
1.Scaling improves switching speed and reduces delay.
<br>
2.Leakage power becomes a dominant issue at advanced nodes.
<br>
3.Noise margins decrease with scaling, reducing inverter robustness.
<br>
4.There exists a trade-off between speed, power, and stability.
<br>


APPLICATIONS
<br>
1.Provides a baseline understanding of CMOS scaling effects.
<br>
2.Useful for teaching and research in VLSI design.
<br>
3.Delay and power data obtained from scaling analysis help in optimizing datapath circuits (ALUs, multipliers, registers) in CPUs and ASICs.


































