%%%%%%%%Figure 3A

Continuous.Mua.Stderror = std( Continuous.Mua.FR) / sqrt( size( Continuous.Mua.FR,1));%%%%%computation of SE

Continuous.Mua.MeanFR10ms=mean(reshape(Continuous.Mua.MeanFR(201:900),[10 70])); %%%%averaging the FR in 10ms bins (without first 200 ms of baseline for the figure)
Continuous.Mua.Stderror10ms=mean(reshape(Continuous.Mua.Stderror(201:900),[10 70])); %%%%same for SE

plot(Continuous.Mua.MeanFR10ms,'-','Color',[0 0 0]); hold on
plot(Continuous.Mua.MeanFR10ms+Continuous.Mua.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on
plot(Continuous.Mua.MeanFR10ms-Continuous.Mua.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on


%%%%%%%%Figure 3B

Continuous.Su.Stderror = std( Continuous.Su.FR) / sqrt( size( Continuous.Su.FR,1));%%%%%computation of SE

Continuous.Su.MeanFR10ms=mean(reshape(Continuous.Su.MeanFR(201:900),[10 70])); %%%%averaging the FR in 10ms bins (without first 200 ms of baseline for the figure)
Continuous.Su.Stderror10ms=mean(reshape(Continuous.Su.Stderror(201:900),[10 70])); %%%%same for SE

plot(Continuous.Su.MeanFR10ms,'-','Color',[0 0 0]); hold on
plot(Continuous.Su.MeanFR10ms+Continuous.Su.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on
plot(Continuous.Su.MeanFR10ms-Continuous.Su.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on


%%%%%%%%Figure 3C

Pulse.Mua.Stderror = std( Pulse.Mua.FR) / sqrt( size( Pulse.Mua.FR,1));%%%%%computation of SE

Pulse.Mua.MeanFR10ms=mean(reshape(Pulse.Mua.MeanFR(201:900),[10 70])); %%%%averaging the FR in 10ms bins (without first 200 ms of baseline for the figure)
Pulse.Mua.Stderror10ms=mean(reshape(Pulse.Mua.Stderror(201:900),[10 70])); %%%%same for SE

plot(Pulse.Mua.MeanFR10ms,'-','Color',[0 0 0]); hold on
plot(Pulse.Mua.MeanFR10ms+Pulse.Mua.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on
plot(Pulse.Mua.MeanFR10ms-Pulse.Mua.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on


%%%%%%%%Figure 3D

Pulse.Su.Stderror = std( Pulse.Su.FR) / sqrt( size( Pulse.Su.FR,1));%%%%%computation of SE

Pulse.Su.MeanFR10ms=mean(reshape(Pulse.Su.MeanFR(201:900),[10 70])); %%%%averaging the FR in 10ms bins (without first 200 ms of baseline for the figure)
Pulse.Su.Stderror10ms=mean(reshape(Pulse.Su.Stderror(201:900),[10 70])); %%%%same for SE

plot(Pulse.Su.MeanFR10ms,'-','Color',[0 0 0]); hold on
plot(Pulse.Su.MeanFR10ms+Pulse.Su.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on
plot(Pulse.Su.MeanFR10ms-Pulse.Su.Stderror10ms,'-','Color',[0.5 0.5 0.5]);hold on
