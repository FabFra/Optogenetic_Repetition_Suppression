%%%%%%%%%Figure6B and F

Exc.Pulse.Compound.MeanFR10ms=mean(reshape(Exc.Pulse.Compound.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Exc.Pulse.Vis.MeanFR10ms=mean(reshape(Exc.Pulse.Vis.MeanFR,[10 160]));%%averaging the FR in 10ms bins 

plot(Exc.Pulse.Vis.MeanFR10ms,'b');hold on 
plot(Exc.Pulse.Compound.MeanFR10ms,'r');

%%%%computation of SCIs
for m=1:size(Exc.Pulse.Vis.MeanS2,2)
SCI.Pulse_exc(m)=(Exc.Pulse.Compound.MeanS2(m)-Exc.Pulse.Vis.MeanS2(m))/(Exc.Pulse.Compound.MeanS2(m)+Exc.Pulse.Vis.MeanS2(m));
end

edges=-0.4:0.05:0.4;
histogram(SCI.Pulse_exc,edges);hold on


%%%%%%%%%Figure6C and G

Exc.Continuous.Compound.MeanFR10ms=mean(reshape(Exc.Continuous.Compound.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Exc.Continuous.Vis.MeanFR10ms=mean(reshape(Exc.Continuous.Vis.MeanFR,[10 160]));%%averaging the FR in 10ms bins 

plot(Exc.Continuous.Vis.MeanFR10ms,'b');hold on 
plot(Exc.Continuous.Compound.MeanFR10ms,'r');

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

edges=-0.4:0.05:0.4;
hist(SCI.Pulse_suppr,edges);hold on


%%%%%%%%%Figure6E and I

Suppr.Continuous.Compound.MeanFR10ms=mean(reshape(Suppr.Continuous.Compound.MeanFR,[10 160]));%%averaging the FR in 10ms bins 
Suppr.Continuous.Vis.MeanFR10ms=mean(reshape(Suppr.Continuous.Vis.MeanFR,[10 160]));%%averaging the FR in 10ms bins 

plot(Suppr.Continuous.Vis.MeanFR10ms,'b');hold on 
plot(Suppr.Continuous.Compound.MeanFR10ms,'r');

%%%%computation of SCIs
for m=1:size(Suppr.Continuous.Vis.MeanS2,2)
SCI.Cont_suppr(m)=(Suppr.Continuous.Compound.MeanS2(m)-Suppr.Continuous.Vis.MeanS2(m))/(Suppr.Continuous.Compound.MeanS2(m)+Suppr.Continuous.Vis.MeanS2(m));
end

edges=-0.4:0.05:0.4;
histogram(SCI.Cont_suppr,edges);hold on