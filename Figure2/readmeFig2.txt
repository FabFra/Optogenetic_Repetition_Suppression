"Continuous" contains data for the units excited during continuous photostimulation
"Pulse" contains data for the units excited during 50 Hz photostimulation

In each Matlab structure:

- cell "Mua" contains data for multi unit activity, cell "Su" for single units;

- "MeanFR" is the mean firing rate of the corresponding population, computed for 900 ms (stimulation onset after 300ms);
- "FR" contains the firing rate of each unit of the corresponding population;

In addition, the structure "Pulse" contains (in both Mua and Su cells):
- "MeanFRpulse", the mean firing rate aligned at pulse onset, averaged across pulses, of the corresponding population, computed for 30 ms (pulse onset at 10ms);
- "FRpulse", containing the firing rate of each unit of the corresponding population, aligned at pulse onset and averageed across pulses.

Plotdata is the Matlab code for plotting the data as in Figure2 of the text
