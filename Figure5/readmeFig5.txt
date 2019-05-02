"HighContr" contains data for the units tested with normal contrast visual stimuli
"LowContr" contains data for the units tested with low contrast visual stiuli

In the "HighContr" structure:

- "S2Vis" contains data for the condition with S1 consisting of a visual stimulus;
- "S2Opto" contains data for the condition with S1 consisting of photostimulation;
- "S2noS1" contains data for the condition without S1;

In each of these structures:

- "PopFR" is the average firing rate during S2 presentation;
- "FR" contains the firing rate of each unit during S2 presentation;
- "Mean" contains the mean firing rate values for S2 of each unit;


In the "LowContr" structure:
- "Su" contains data for single units;
- "Mua" contains data for single units and multi-units combined;

In each of these structures:

- "bs" contains the values of the baseline firing rate for each unit;
- "Global" contains data for the whole length of the trial, "S2" during S2 presentaiton;
   - "Opto" contains data for the condition with S1 consisting of photostimulation, "noS1" for the condition without S1;
        - "PopFR" is the average firing rate of the corresponding population, "FR" contains the firing rate of each unit of the corresponding population;
   Each structure "S2" contains in addition:
        - "Vis", containing data for the condition with S1 consisting of a visual stimulus;
        - "Mean" containing the mean firing rate values for S2 of each unit for each condition;       

Plotdata is the Matlab code for plotting the data as in Figure5 of the text.