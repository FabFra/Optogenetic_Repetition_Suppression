%%%%%%%%%Figure6B and F, and S6C

Exc.Pulse.Compound.MeanFR10ms=mean(reshape(Exc.Pulse.Compound.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Exc.Pulse.Vis.MeanFR10ms=mean(reshape(Exc.Pulse.Vis.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Exc.Pulse.Opto.MeanFR10ms=mean(reshape(Exc.Pulse.Opto.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Exc.Pulse.SumMeanFR10ms=mean(reshape(Exc.Pulse.Sum,[10 160]));%%averaging the FR in 10ms bins 

plot(Exc.Pulse.Vis.MeanFR10ms,'b');hold on 
plot(Exc.Pulse.Compound.MeanFR10ms,'r');hold on 
plot(Exc.Pulse.Opto.MeanFR10ms,'g');hold on 
plot(Exc.Pulse.SumMeanFR10ms(1:61),'k','LineStyle','--')

%%%%computation of SCIs
for m=1:size(Exc.Pulse.Vis.MeanS2,2)
SCI.Pulse_exc(m)=(Exc.Pulse.Compound.MeanS2(m)-Exc.Pulse.Vis.MeanS2(m))/(Exc.Pulse.Compound.MeanS2(m)+Exc.Pulse.Vis.MeanS2(m));
end

edges=-0.4:0.05:0.4;
histogram(SCI.Pulse_exc,edges);hold on


%%%%%%%%%Figure6C and G, and S6B

Exc.Continuous.Compound.MeanFR10ms=mean(reshape(Exc.Continuous.Compound.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Exc.Continuous.Vis.MeanFR10ms=mean(reshape(Exc.Continuous.Vis.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Exc.Continuous.Opto.MeanFR10ms=mean(reshape(Exc.Continuous.Opto.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Exc.Continuous.SumMeanFR10ms=mean(reshape(Exc.Continuous.Sum,[10 160]));%%averaging the FR in 10ms bins 

plot(Exc.Continuous.Vis.MeanFR10ms,'b');hold on 
plot(Exc.Continuous.Compound.MeanFR10ms,'r');hold on 
plot(Exc.Continuous.Opto.MeanFR10ms,'g');hold on 
plot(Exc.Continuous.SumMeanFR10ms(1:61),'k','LineStyle','--')

%%%%computation of SCIs
for m=1:size(Exc.Continuous.Vis.MeanS2,2)
SCI.Cont_exc(m)=(Exc.Continuous.Compound.MeanS2(m)-Exc.Continuous.Vis.MeanS2(m))/(Exc.Continuous.Compound.MeanS2(m)+Exc.Continuous.Vis.MeanS2(m));
end

edges=-0.4:0.05:0.4;
histogram(SCI.Cont_exc,edges);hold on


%%%%%%%%%Figure6D and H

Suppr.Pulse.Compound.MeanFR10ms=mean(reshape(Suppr.Pulse.Compound.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Suppr.Pulse.Vis.MeanFR10ms=mean(reshape(Suppr.Pulse.Vis.MeanFR,[10 160]));%%averaging the FR in 10ms bins 

plot(Suppr.Pulse.Vis.MeanFR10ms,'b');hold on 
plot(Suppr.Pulse.Compound.MeanFR10ms,'r');

%%%%computation of SCIs
for m=1:size(Suppr.Pulse.Vis.MeanS2,2)
SCI.Pulse_suppr(m)=(Suppr.Pulse.Compound.MeanS2(m)-Suppr.Pulse.Vis.MeanS2(m))/(Suppr.Pulse.Compound.MeanS2(m)+Suppr.Pulse.Vis.MeanS2(m));
end

edges=-0.6:0.05:0.6;
histogram(SCI.Pulse_suppr,edges);hold on


%%%%%%%%%FigureS5E

Suppr.Pulse.S5.Compound.MeanFR10ms=mean(reshape(Suppr.Pulse.S5.Compound.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Suppr.Pulse.S5.Vis.MeanFR10ms=mean(reshape(Suppr.Pulse.S5.Vis.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Suppr.Pulse.S5.Opto.MeanFR10ms=mean(reshape(Suppr.Pulse.S5.Opto.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Suppr.Pulse.S5.NoS1.MeanFR10ms=mean(reshape(Suppr.Pulse.S5.NoS1.MeanFR,[10 160]));%%averaging the FR in 10ms bins 

plot(Suppr.Pulse.S5.Vis.MeanFR10ms,'b');hold on 
plot(Suppr.Pulse.S5.Compound.MeanFR10ms,'r');hold on
plot(Suppr.Pulse.S5.Opto.MeanFR10ms,'g');hold on 
plot(Suppr.Pulse.S5.NoS1.MeanFR10ms,'k');


%%%%%%%%%Figure6E and I

Suppr.Continuous.Compound.MeanFR10ms=mean(reshape(Suppr.Continuous.Compound.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Suppr.Continuous.Vis.MeanFR10ms=mean(reshape(Suppr.Continuous.Vis.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Suppr.Continuous.Opto.MeanFR10ms=mean(reshape(Suppr.Continuous.Opto.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Suppr.Continuous.NoS1.MeanFR10ms=mean(reshape(Suppr.Continuous.NoS1.MeanFR,[10 160]));%%averaging the FR in 10ms bins 

plot(Suppr.Continuous.Vis.MeanFR10ms,'b');hold on 
plot(Suppr.Continuous.Compound.MeanFR10ms,'r');hold on 
plot(Suppr.Continuous.Opto.MeanFR10ms,'g');hold on 
plot(Suppr.Continuous.NoS1.MeanFR10ms,'k');

%%%%computation of SCIs
for m=1:size(Suppr.Continuous.Vis.MeanS2,2)
SCI.Cont_suppr(m)=(Suppr.Continuous.Compound.MeanS2(m)-Suppr.Continuous.Vis.MeanS2(m))/(Suppr.Continuous.Compound.MeanS2(m)+Suppr.Continuous.Vis.MeanS2(m));
end

edges=-0.4:0.05:0.4;
histogram(SCI.Cont_suppr,edges);hold on