"Exc" contains data for units excited during compound stimulation
"Suppr" contains data for units suppressed during compound stimulation

In each Matlab structure:

- "Pulse" contains data for the units tested with 50 Hz stimulation, "Continuous" for the units tested with continuous stimulation;

In each of these structures:

- "Compound" contains dat for the condition with S1 consisting of compound stimulation, "Vis" with S1 consisting of a visual stimulus alone, "Opto" with S1 consisting of photo-stimulation.    

Only for the "Exc" structure, "Sum" is the sum of the firing rate for the conditions "Vis" and "Opto", as shown in Figure S6B and S6C


In each of these structures:

- "MeanFR" is the average firing rate of the corresponding population for the whole length of the trial;
- "FR" contains the firing rate of each unit of the corresponding population for the whole length of the trial;
- "MeanS2" contains the mean firing rate values for S2 of each unit;


Plotdata is the Matlab code for plotting the data as in Figure6 of the text.