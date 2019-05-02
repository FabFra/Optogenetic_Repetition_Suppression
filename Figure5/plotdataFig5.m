%%
%%%%Figure 5C and D/E

HighContr.S2Vis.PopFR10ms=mean(reshape(HighContr.S2Vis.PopFR(201:800),[10 60])); %%%%averaging the FR in 10ms bins (from 100 ms pre- to 200 ms post-stimultaion onset)
HighContr.S2Opto.PopFR10ms=mean(reshape(HighContr.S2Opto.PopFR(201:800),[10 60]));
HighContr.S2noS1.PopFR10ms=mean(reshape(HighContr.S2noS1.PopFR(201:800),[10 60]));

plot(HighContr.S2Vis.PopFR10ms,'b','LineWidth',1); hold on
plot(HighContr.S2Opto.PopFR10ms,'m','LineWidth',1); hold on
plot(HighContr.S2noS1.PopFR10ms,'g','LineWidth',1); hold on

%%%%%%Computation of ACIs
for m=1:size(HighContr.S2Opto.Mean,2)
ACI.HC(m)=(HighContr.S2noS1.Mean(m)-HighContr.S2Opto.Mean(m))/(HighContr.S2noS1.Mean(m)+HighContr.S2Opto.Mean(m));
end

edges=-0.6:0.05:0.6;
histogram(ACI.HC,edges);


%%
%%%%Figure 5F and G/H

LowContr.Mua.S2.Vis.PopFR10ms=mean(reshape(LowContr.Mua.S2.Vis.PopFR(201:800),[10 60])); %%%%averaging the FR in 10ms bins (from 100 ms pre- to 200 ms post-stimultaion onset)
LowContr.Mua.S2.Opto.PopFR10ms=mean(reshape(LowContr.Mua.S2.Opto.PopFR(201:800),[10 60]));
LowContr.Mua.S2.noS1.PopFR10ms=mean(reshape(LowContr.Mua.S2.noS1.PopFR(201:800),[10 60]));

plot(LowContr.Mua.S2.Vis.PopFR10ms,'b','LineWidth',1); hold on
plot(LowContr.Mua.S2.Opto.PopFR10ms,'m','LineWidth',1); hold on
plot(LowContr.Mua.S2.noS1.PopFR10ms,'g','LineWidth',1); hold on

%%%%%%Computation of ACIs
for m=1:size(LowContr.Mua.S2.Opto.Mean,2)
ACI.LC_Mua(m)=(LowContr.Mua.S2.noS1.Mean(m)-LowContr.Mua.S2.Opto.Mean(m))/(LowContr.Mua.S2.noS1.Mean(m)+LowContr.Mua.S2.Opto.Mean(m));
end

edges=-0.6:0.05:0.8;
histogram(ACI.LC_Mua,edges);

%%
%%%%%FigureI

%%%%computation of the correlations between SI and ACI
for un=1:size(LowContr.Mua.Global.Opto.FR,1)
    time=1;
    for win=1:16
        ISIfr_Mua(un,win)=mean(LowContr.Mua.Global.Opto.FR(un,time+600:time+699));
        SI_Mua(un,win)=(LowContr.Mua.bs(un)-ISIfr_Mua(un,win))/(LowContr.Mua.bs(un)+ISIfr_Mua(un,win));
    time=time+20 ;   
end
end

 for tw=1:size(SI_Mua,2)
     [r_Mua(tw),p_Mua(tw)]=corr(SI_Mua(:,tw),ACI.LC_Mua','type','Spearman');
 end

LowContr.Mua.Global.Opto.PopFR10ms=mean(reshape(LowContr.Mua.Global.Opto.PopFR,[10 160])); hold on%%%%averaging the FR in 10ms bins 
LowContr.Mua.Global.noS1.PopFR10ms=mean(reshape(LowContr.Mua.Global.noS1.PopFR,[10 160])); hold on

%%%%plot of the mean firing rate in the two conditions with dots
%%%%representing correlations in the ISI between SI and ACI
plot(LowContr.Mua.Global.Opto.PopFR10ms,'Color','m'); hold on
plot(LowContr.Mua.Global.noS1.PopFR10ms,'Color','g'); hold on
yyaxis right
plot(65:2:95,r_Mua,'r.','MarkerSize',20);


%%
%%%%%FigureJ
%%%%%%Computation of ACIs
for m=1:size(LowContr.Su.S2.Opto.Mean,2)
ACI.LC_Su(m)=(LowContr.Su.S2.noS1.Mean(m)-LowContr.Su.S2.Opto.Mean(m))/(LowContr.Su.S2.noS1.Mean(m)+LowContr.Su.S2.Opto.Mean(m));
end
edges=-0.6:0.05:0.8;
histogram(ACI.LC_Su,edges);

%%%%computation of the correlations between SI and ACI
for un=1:size(LowContr.Su.Global.Opto.FR,1)
    time=1;
    for win=1:16
        ISIfr_Su(un,win)=mean(LowContr.Su.Global.Opto.FR(un,time+600:time+699));
        SI_Su(un,win)=(LowContr.Su.bs(un)-ISIfr_Su(un,win))/(LowContr.Su.bs(un)+ISIfr_Su(un,win));
    time=time+20 ;   
end
end

 for tw=1:size(SI_Su,2)
     [r(tw),p(tw)]=corr(SI_Su(:,tw),ACI.LC_Su','type','Spearman');
 end

LowContr.Su.Global.Opto.PopFR10ms=mean(reshape(LowContr.Su.Global.Opto.PopFR,[10 160])); hold on%%%%averaging the FR in 10ms bins 
LowContr.Su.Global.noS1.PopFR10ms=mean(reshape(LowContr.Su.Global.noS1.PopFR,[10 160])); hold on

%%%%plot of the mean firing rate in the two conditions with dots
%%%%representing correlations in the ISI between SI and ACI
plot(LowContr.Su.Global.Opto.PopFR10ms,'Color','m'); hold on
plot(LowContr.Su.Global.noS1.PopFR10ms,'Color','g'); hold on
yyaxis right
plot(65:2:95,r,'r.','MarkerSize',20);


