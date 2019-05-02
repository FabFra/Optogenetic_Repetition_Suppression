"Continuous" contains data for the units excited during continuous photostimulation
"Pulse" contains data for the units excited during 50 Hz photostimulation

In each Matlab structure:

- "Rep" contains data for the repetition condition, "NonRep" for the non repetition condition;
- "bs" contains the values of the baseline firing rate for each unit;


- "PopFR" is the average firing rate of the corresponding population for the whole length of the trial;
- "FR" contains the firing rate of each unit of the corresponding population for the whole length of the trial;
- "MeanS2" contains the mean firing rate values for S2 of each unit;
- "PulsePopFR" is the average firing rate aligned at pulse onset, averaged across pulses, of the corresponding population, computed for 30 ms (pulse onset at 10ms);
- "PulseFR" contains the firing rate of each unit of the corresponding population, aligned at pulse onset and averageed across pulses.

Plotdata is the Matlab code for plotting the data as in Figure4 of the text.