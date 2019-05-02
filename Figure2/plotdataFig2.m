%%%%%%%%Figure 2A

Continuous.Mua.Stderror = std( Continuous.Mua.FR) / sqrt( size( Continuous.Mua.FR,1));%%%%%computation of SE

Continuous.Mua.MeanFR10ms=mean(reshape(Continuous.Mua.MeanFR(201:900),[10 70])); %%%%averaging the FR in 10ms bins (without first 200 ms of baseline for the figure)
Continuous.Mua.Stderror10ms=mean(reshape(Continuous.Mua.Stderror(201:900),[10 70])); %%%%same for SE

plot(Continuous.Mua.MeanFR10ms,'-','Color',[0 0 0]); hold on
plot(Continuous.Mua.MeanFR10ms+Continuous.Mua.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on
plot(Continuous.Mua.MeanFR10ms-Continuous.Mua.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on


%%%%%%%%Figure 2B

Continuous.Su.Stderror = std( Continuous.Su.FR) / sqrt( size( Continuous.Su.FR,1));%%%%%computation of SE

Continuous.Su.MeanFR10ms=mean(reshape(Continuous.Su.MeanFR(201:900),[10 70])); %%%%averaging the FR in 10ms bins (without first 200 ms of baseline for the figure)
Continuous.Su.Stderror10ms=mean(reshape(Continuous.Su.Stderror(201:900),[10 70])); %%%%same for SE

plot(Continuous.Su.MeanFR10ms,'-','Color',[0 0 0]); hold on
plot(Continuous.Su.MeanFR10ms+Continuous.Su.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on
plot(Continuous.Su.MeanFR10ms-Continuous.Su.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on


%%%%%%%%Figure 2C

Pulse.Mua.Stderror = std( Pulse.Mua.FR) / sqrt( size( Pulse.Mua.FR,1));%%%%%computation of SE

Pulse.Mua.MeanFR10ms=mean(reshape(Pulse.Mua.MeanFR(201:900),[10 70])); %%%%averaging the FR in 10ms bins (without first 200 ms of baseline for the figure)
Pulse.Mua.Stderror10ms=mean(reshape(Pulse.Mua.Stderror(201:900),[10 70])); %%%%same for SE

plot(Pulse.Mua.MeanFR10ms,'-','Color',[0 0 0]); hold on
plot(Pulse.Mua.MeanFR10ms+Pulse.Mua.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on
plot(Pulse.Mua.MeanFR10ms-Pulse.Mua.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on


%%%%%%%%Figure 2D

Pulse.Su.Stderror = std( Pulse.Su.FR) / sqrt( size( Pulse.Su.FR,1));%%%%%computation of SE

Pulse.Su.MeanFR10ms=mean(reshape(Pulse.Su.MeanFR(201:900),[10 70])); %%%%averaging the FR in 10ms bins (without first 200 ms of baseline for the figure)
Pulse.Su.Stderror10ms=mean(reshape(Pulse.Su.Stderror(201:900),[10 70])); %%%%same for SE

plot(Pulse.Su.MeanFR10ms,'-','Color',[0 0 0]); hold on
plot(Pulse.Su.MeanFR10ms+Pulse.Su.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on
plot(Pulse.Su.MeanFR10ms-Pulse.Su.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on


%%%%%%%%Figure 2E

bar(Pulse.Mua.MeanFRpulse(8:end),'FaceColor','k');hold on
line([2.5 2.5] ,[0 8],'color','k');hold on

%%%inset

for cell=1:size(Pulse.Mua.FRpulse,1)  %%%% peak firing rate latency from pulse onset
     [maxS2(cell), posMaxS2(cell)]=max(Pulse.Mua.FRpulse(cell,10:30));
end

edges=0:1:20;
histogram(posMaxS2,edges,'FaceColor','r');hold on
set(gca,'Fontsize',30)


%%%%%%%%Figure 2F

bar(Pulse.Su.MeanFRpulse(8:end),'FaceColor','k');hold on
line([2.5 2.5] ,[0 8],'color','k');hold on

%%%inset

for cell=1:size(Pulse.Su.FRpulse,1)  %%%% peak firing rate latency from pulse onset
     [maxS2(cell), posMaxS2(cell)]=max(Pulse.Su.FRpulse(cell,10:30));
end

edges=0:1:20;
histogram(posMaxS2,edges,'FaceColor','r');hold on
set(gca,'Fontsize',30)

