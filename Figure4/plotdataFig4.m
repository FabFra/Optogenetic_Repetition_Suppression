%%%%Figure 4C_E_F

Continuous.Rep.PopFR10ms=mean(reshape(Continuous.Rep.PopFR,[10 160]));%%averaging the FR in 10ms bins 
Continuous.NonRep.PopFR10ms=mean(reshape(Continuous.NonRep.PopFR,[10 160]));%%averaging the FR in 10ms bins 

%%%%Computation of ACIs
for m=1:size(Continuous.NonRep.MeanS2,2)
Continuous.ACI(m)=(Continuous.NonRep.MeanS2(m)-Continuous.Rep.MeanS2(m))/(Continuous.NonRep.MeanS2(m)+Continuous.Rep.MeanS2(m));
end
edges=-0.2:0.05:0.4;
histogram(Continuous.ACI,edges);

%%%%computation of the correlations between SI and ACI
for un=1:size(Continuous.Rep.FR,1)
    time=1;
    for win=1:16  
        ISIfr_Cont(un,win)=mean(Continuous.Rep.FR(un,time+600:time+699));
        SI_Cont(un,win)=(Continuous.bs(un)-ISIfr_Cont(un,win))/(Continuous.bs(un)+ISIfr_Cont(un,win));
    time=time+20 ;   
end
end

 for tw=1:size(SI_Cont,2)
          [r_Cont(tw),p_Cont(tw)]=corr(SI_Cont(:,tw),Continuous.ACI','type','Spearman');

 end


%%%%plot of the mean firing rate in the two conditions with dots
%%%%representing correlations in the ISI between SI and ACI
plot(Continuous.NonRep.PopFR10ms,'g');hold on
plot(Continuous.Rep.PopFR10ms,'m');
yyaxis right
plot(65:2:95,r_Cont,'r.','MarkerSize',20); hold on


Continuous.Difference=Continuous.NonRep.PopFR-Continuous.Rep.PopFR;%%%Computation of the difference between non repetition and repetition conditions

%%%Plot of the difference in firing rate for S2 (from 20 ms before to 20 ms after stimulation onset)
plot(mean(reshape(Continuous.Difference(981:1320),[10 34])),'Color','m');

%%%%Plot of the FR in 1 ms bin aligned at pulse onset
bar(Continuous.NonRep.PulsePopFR(8:end),'FaceColor','g','FaceAlpha',.5); hold on
bar(Continuous.Rep.PulsePopFR(8:end),'FaceColor','m','FaceAlpha',.5);
line([2.5 2.5] ,[0 120],'color','k');


%%
%%%%Figure 4D_G_H

Pulse.Rep.PopFR10ms=mean(reshape(Pulse.Rep.PopFR,[10 160]));%%averaging the FR in 10ms bins 
Pulse.NonRep.PopFR10ms=mean(reshape(Pulse.NonRep.PopFR,[10 160]));%%averaging the FR in 10ms bins 

%%%%Computation of ACIs
for m=1:size(Pulse.NonRep.MeanS2,2)
Pulse.ACI(m)=(Pulse.NonRep.MeanS2(m)-Pulse.Rep.MeanS2(m))/(Pulse.NonRep.MeanS2(m)+Pulse.Rep.MeanS2(m));
end
edges=-0.2:0.05:0.5;
histogram(Pulse.ACI,edges);

%%%%computation of the correlations between SI and ACI
for un=1:size(Pulse.Rep.FR,1)
    time=1;
    for win=1:16  
        ISIfr_Pulse(un,win)=mean(Pulse.Rep.FR(un,time+600:time+699));
        SI_Pulse(un,win)=(Pulse.bs(un)-ISIfr_Pulse(un,win))/(Pulse.bs(un)+ISIfr_Pulse(un,win));
    time=time+20 ;   
end
end

 for tw=1:size(SI_Pulse,2)
          [r_Pulse(tw),p_Pulse(tw)]=corr(SI_Pulse(:,tw),Pulse.ACI','type','Spearman');

 end


%%%%plot of the mean firing rate in the two conditions with dots
%%%%representing correlations in the ISI between SI and ACI
plot(Pulse.NonRep.PopFR10ms,'g');hold on
plot(Pulse.Rep.PopFR10ms,'m');
yyaxis right
plot(65:2:95,r_Pulse,'r.','MarkerSize',20); hold on


Pulse.Difference=Pulse.NonRep.PopFR-Pulse.Rep.PopFR;%%%Computation of the difference between non repetition and repetition conditions

%%%Plot of the difference in firing rate for S2 (from 20 ms before to 20 ms after stimulation onset)
plot(mean(reshape(Pulse.Difference(981:1320),[10 34])),'Color','m');

%%%%Plot of the FR in 1 ms bin aligned at pulse onset
bar(Pulse.NonRep.PulsePopFR(8:end),'FaceColor','g','FaceAlpha',.5); hold on
bar(Pulse.Rep.PulsePopFR(8:end),'FaceColor','m','FaceAlpha',.5);
line([2.5 2.5] ,[0 120],'color','k');