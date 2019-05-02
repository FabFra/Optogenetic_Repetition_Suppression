"Exc" contains data of the example single unit excited during photostimulation.
"Suppr" contains data of the example single unit suppressed during photostimulation.

In each Matlab structure:

- "Array" is the timestamp of the corresponding unit in each trial, aligned at stimulation onset;
- "AverageFr" is the firing rate averaged across trials, computed for 900 ms (stimulation onset after 300ms);

In addition, the structure Exc contains:

- "FrPulse", the firing rate averaged across pulses and trilas, computed for 30 ms (pulse onset at 10ms);
- "WfStim" and "WfBs", median and quartiles values of the action potential waveforms during photostimulation and baseline, respectively;

"Plotdata" is the Matlab code to plot the data as in Figure1 of the main text.