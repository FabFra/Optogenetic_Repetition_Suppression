%%%%%Figure1
%%
%%%%single unit excited during photostimulation
%%%rasterplot 
for e=1:size(Exc.Array,1)
    plot(Exc.Array{e,1},repmat(e,1,length( Exc.Array{e,1})),'b.','MarkerSize',10);hold on
    xlim([-200 600])
    ylim([-1 size(Exc.Array,1)]+1)

end

%%%%Psth averaged across trials
bar(Exc.AverageFr);

%%%%Psth aligned at pulse onset,averaged across trials and pulses
bar(Exc.FrPulse(8:end),'FaceColor','b'); hold on
line([2.5 2.5] ,[0 200],'color','k');

%%%%%Waveform comparison
%%%during stimulation
plot(Exc.WfStim(1,:),'r'); hold on
plot(Exc.WfStim(2,:),'r'); hold on
plot(Exc.WfStim(3,:),'r'); hold on

%%%during baseline
plot(Exc.WfBs(1,:),'k'); hold on
plot(Exc.WfBs(2,:),'k'); hold on
plot(Exc.WfBs(3,:),'k'); hold on


%%
%%%%single unit suppressed during photostimulation
%%%rasterplot 
for e=1:size(Suppr.Array,1)
    plot(Suppr.Array{e,1},repmat(e,1,length(Suppr.Array{e,1})),'b.','MarkerSize',10);hold on
    xlim([-200 600])
    ylim([-1 size(Suppr.Array,1)]+1)
end

%%%%Psth averaged across trials
bar(Suppr.AverageFr);
