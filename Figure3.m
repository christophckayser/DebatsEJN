
% creates figure 3 of Debats et al
% "Different time scales of common-cause evidence shape multisensory
% integration, recalibration and motor adaptation "


% Figure 3 Recalibration


clear;
close all
load('DataPlots');

tFactors = icdf('T',[.025 .975],nvp-1);
nvp=28;
LW = 2.5;
p1 = 10.5;
p2 = 11.5;
% sequence of blocks
seq = [1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2];  % position of Lin
nvp_first=length(ARLin(ARLin(:)==1)); nvp_second=length(ARLin(ARLin(:)==-1));

figure(2);clf;
%--------------------------------------------------------------------------------
% group results for recalibration, explicit judgments, unimodal trials
% Vor -und Nachtest aufteilen je nach Richtung der Adaptation wie in
%                       ARLin(ivp)  und ARCur(ivp) mit +1 oder -1 angegeben;
% straight, judgement errors hand
clear x1a x1b x2a x2b
nvp_first=length(ARLin(ARLin(:)==1)); nvp_second=length(ARLin(ARLin(:)==-1));
M1a = mean(outcome.PreLinUniH(ARLin(:)==1,2)); SE1a = std(outcome.PreLinUniH(ARLin(:)==1,2))/sqrt(nvp_first);
CI1alow = M1a+tFactors(1)*SE1a; CI1ahigh = M1a+tFactors(2)*SE1a;
M2a = mean(outcome.PostLinUniH(ARLin(:)==1,2)); SE2a = std(outcome.PostLinUniH(ARLin(:)==1,2))/sqrt(nvp_first);
CI2alow = M2a+tFactors(1)*SE2a; CI2ahigh = M2a+tFactors(2)*SE2a;
M1b = mean(outcome.PreLinUniH(ARLin(:)==-1,2)); SE1b = std(outcome.PreLinUniH(ARLin(:)==-1,2))/sqrt(nvp_second);
CI1blow = M1b+tFactors(1)*SE1b; CI1bhigh = M1b+tFactors(2)*SE1b;
M2b = mean(outcome.PostLinUniH(ARLin(:)==-1,2)); SE2b = std(outcome.PostLinUniH(ARLin(:)==-1,2))/sqrt(nvp_second);
CI2blow = M2b+tFactors(1)*SE2b; CI2bhigh = M2b+tFactors(2)*SE2b;
subplot (2,3,1)
x1a(1:nvp_first) = -10; y1a=outcome.PreLinUniH(ARLin(:)==1,2);
hold on
x2a(1:nvp_first) = 10; y2a=outcome.PostLinUniH(ARLin(:)==1,2);
for ivp=1:nvp_first
    plot([x1a(ivp) x2a(ivp)],[y1a(ivp) y2a(ivp)],'--k','color',[.7 .7 .7])
end    
x1b(1:nvp_second) = -9; y1b=outcome.PreLinUniH(ARLin(:)==-1,2);
x2b(1:nvp_second) = 11; y2b=outcome.PostLinUniH(ARLin(:)==-1,2);
for ivp=1:nvp_second
    plot([x1b(ivp) x2b(ivp)],[y1b(ivp) y2b(ivp)],':k','color',[.7 .7 .7])
end    
plot([-p1 -p1],[CI1alow CI1ahigh],'-k','LineWidth',LW)
plot([+p1 +p1],[CI2alow CI2ahigh],'-k','LineWidth',LW)
scatter([-p1 p1],[M1a M2a],35,'k','filled');

plot([-p2 -p2],[CI1blow CI1bhigh],'-k','LineWidth',LW)
plot([+p2 +p2],[CI2blow CI2bhigh],'-k','LineWidth',LW)
scatter([-p2 p2],[M1b M2b],35,'k','MarkerFaceColor','w');

plot([-15 15],[0 0],'-k')
ylabel('hand judgment error [deg]')
xticks([-10 10])
xticklabels({'pre-test','post-test'})
axis([-15 15 -20 20])
set(gca,'FontSize',11)
text(-5,24,'Constant','FontSize',14,'FontWeight','Bold');


% ---------------------------------------------------
% curved, judgement errors hand
clear x1a x1b x2a x2b
nvp_first=length(ARCur(ARCur(:)==1)); nvp_second=length(ARCur(ARCur(:)==-1));
M1a = mean(outcome.PreCurUniH(ARCur(:)==1,2)); SE1a = std(outcome.PreCurUniH(ARCur(:)==1,2))/sqrt(nvp_first);
CI1alow = M1a+tFactors(1)*SE1a; CI1ahigh = M1a+tFactors(2)*SE1a;
M2a = mean(outcome.PostCurUniH(ARCur(:)==1,2)); SE2a = std(outcome.PostCurUniH(ARCur(:)==1,2))/sqrt(nvp_first);
CI2alow = M2a+tFactors(1)*SE2a; CI2ahigh = M2a+tFactors(2)*SE2a;
M1b = mean(outcome.PreCurUniH(ARCur(:)==-1,2)); SE1b = std(outcome.PreCurUniH(ARCur(:)==-1,2))/sqrt(nvp_second);
CI1blow = M1b+tFactors(1)*SE1b; CI1bhigh = M1b+tFactors(2)*SE1b;
M2b = mean(outcome.PostCurUniH(ARCur(:)==-1,2)); SE2b = std(outcome.PostCurUniH(ARCur(:)==-1,2))/sqrt(nvp_second);
CI2blow = M2b+tFactors(1)*SE2b; CI2bhigh = M2b+tFactors(2)*SE2b;
subplot (2,3,2)
x1a(1:nvp_first) = -10; y1a=outcome.PreCurUniH(ARCur(:)==1,2);
hold on
x2a(1:nvp_first) = 10; y2a=outcome.PostCurUniH(ARCur(:)==1,2);
for ivp=1:nvp_first
    plot([x1a(ivp) x2a(ivp)],[y1a(ivp) y2a(ivp)],'--k','color',[.7 .7 .7])
end    
x1b(1:nvp_second) = -9; y1b=outcome.PreCurUniH(ARCur(:)==-1,2);
x2b(1:nvp_second) = 11; y2b=outcome.PostCurUniH(ARCur(:)==-1,2);
for ivp=1:nvp_second
    plot([x1b(ivp) x2b(ivp)],[y1b(ivp) y2b(ivp)],':k','color',[.7 .7 .7])
end

plot([-p1 -p1],[CI1alow CI1ahigh],'-k','LineWidth',LW)
plot([+p1 +p1],[CI2alow CI2ahigh],'-k','LineWidth',LW)
scatter([-p1 p1],[M1a M2a],35,'k','filled');

plot([-p2 -p2],[CI1blow CI1bhigh],'-k','LineWidth',LW)
plot([+p2 +p2],[CI2blow CI2bhigh],'-k','LineWidth',LW)
scatter([-p2 p2],[M1b M2b],35,'k','MarkerFaceColor','w');

plot([-15 15],[0 0],'-k')
ylabel('visual judgment error [deg]')
xticks([-10 10])
xticklabels({'pre-test','post-test'})
axis([-15 15 -20 20])
set(gca,'FontSize',11)
text(-5,24,'Variable','FontSize',14,'FontWeight','Bold');


% ---------------------------------------------------

% straight and curved, recalibration as proportional bias
M1 = mean(outcome.AELin(:,2)/30); SE1 = std(outcome.AELin(:,2)/30)/sqrt(nvp);
CI1low = M1+tFactors(1)*SE1; CI1high = M1+tFactors(2)*SE1;
M2 = mean(outcome.AECur(:,2)/30); SE2 = std(outcome.AECur(:,2)/30)/sqrt(nvp);
CI2low = M2+tFactors(1)*SE2; CI2high = M2+tFactors(2)*SE2;
subplot (2,3,3)
x1(1:nvp) = -10; y1=outcome.AELin(:,2)/30;
hold on
x2(1:nvp) = 10; y2=outcome.AECur(:,2)/30;
for ivp=1:nvp
    plot([x1(ivp) x2(ivp)],[y1(ivp) y2(ivp)],'-k','color',[.7 .7 .7])
end    
scatter([-10.5 10.5],[M1 M2],35,'k','filled');
plot([-10.5 -10.5],[CI1low CI1high],'-k','LineWidth',LW)
plot([+10.5 +10.5],[CI2low CI2high],'-k','LineWidth',LW)
plot([-15 15],[0 0],'-k')
ylabel('hand recalibration')
xticks([-10 10])
xticklabels({'constant','variable'})
axis([-15 15 -.5 1])
set(gca,'FontSize',11)
text(-10,1.15,'Proportional bias','FontSize',14,'FontWeight','Bold');

% ---------------------------------------------------
% straight, judgement errors cursor
clear x1a x1b x2a x2b
nvp_first=length(ARLin(ARLin(:)==1)); nvp_second=length(ARLin(ARLin(:)==-1));
M1a = mean(outcome.PreLinUniC(ARLin(:)==1,2)); SE1a = std(outcome.PreLinUniC(ARLin(:)==1,2))/sqrt(nvp_first);
CI1alow = M1a+tFactors(1)*SE1a; CI1ahigh = M1a+tFactors(2)*SE1a;
M2a = mean(outcome.PostLinUniC(ARLin(:)==1,2)); SE2a = std(outcome.PostLinUniC(ARLin(:)==1,2))/sqrt(nvp_first);
CI2alow = M2a+tFactors(1)*SE2a; CI2ahigh = M2a+tFactors(2)*SE2a;
M1b = mean(outcome.PreLinUniC(ARLin(:)==-1,2)); SE1b = std(outcome.PreLinUniC(ARLin(:)==-1,2))/sqrt(nvp_second);
CI1blow = M1b+tFactors(1)*SE1b; CI1bhigh = M1b+tFactors(2)*SE1b;
M2b = mean(outcome.PostLinUniC(ARLin(:)==-1,2)); SE2b = std(outcome.PostLinUniC(ARLin(:)==-1,2))/sqrt(nvp_second);
CI2blow = M2b+tFactors(1)*SE2b; CI2bhigh = M2b+tFactors(2)*SE2b;
subplot (2,3,4)
x1a(1:nvp_first) = -10; y1a=outcome.PreLinUniC(ARLin(:)==1,2);
hold on
x2a(1:nvp_first) = 10; y2a=outcome.PostLinUniC(ARLin(:)==1,2);
for ivp=1:nvp_first
    plot([x1a(ivp) x2a(ivp)],[y1a(ivp) y2a(ivp)],'--k','color',[.7 .7 .7])
end    
x1b(1:nvp_second) = -9; y1b=outcome.PreLinUniC(ARLin(:)==-1,2);
x2b(1:nvp_second) = 11; y2b=outcome.PostLinUniC(ARLin(:)==-1,2);
for ivp=1:nvp_second
    plot([x1b(ivp) x2b(ivp)],[y1b(ivp) y2b(ivp)],':k','color',[.7 .7 .7])
end

plot([-p1 -p1],[CI1alow CI1ahigh],'-k','LineWidth',LW)
plot([+p1 +p1],[CI2alow CI2ahigh],'-k','LineWidth',LW)
scatter([-p1 p1],[M1a M2a],35,'k','filled');
plot([-p2 -p2],[CI1blow CI1bhigh],'-k','LineWidth',LW)
plot([+p2 +p2],[CI2blow CI2bhigh],'-k','LineWidth',LW)
scatter([-p2 p2],[M1b M2b],35,'k','MarkerFaceColor','w');
plot([-15 15],[0 0],'-k')

plot([-15 15],[0 0],'-k')
ylabel('visual judgement error [deg]')
xticks([-10 10])
xticklabels({'pre-test','post-test'})
axis([-15 15 -20 20])
set(gca,'FontSize',11)




% ---------------------------------------------------

% curved, judgement errors cursor
clear x1a x1b x2a x2b
nvp_first=length(ARCur(ARCur(:)==1)); nvp_second=length(ARCur(ARCur(:)==-1));
M1a = mean(outcome.PreCurUniC(ARCur(:)==1,2)); SE1a = std(outcome.PreCurUniC(ARCur(:)==1,2))/sqrt(nvp_first);
CI1alow = M1a+tFactors(1)*SE1a; CI1ahigh = M1a+tFactors(2)*SE1a;
M2a = mean(outcome.PostCurUniC(ARCur(:)==1,2)); SE2a = std(outcome.PostCurUniC(ARCur(:)==1,2))/sqrt(nvp_first);
CI2alow = M2a+tFactors(1)*SE2a; CI2ahigh = M2a+tFactors(2)*SE2a;
M1b = mean(outcome.PreCurUniC(ARCur(:)==-1,2)); SE1b = std(outcome.PreCurUniC(ARCur(:)==-1,2))/sqrt(nvp_second);
CI1blow = M1b+tFactors(1)*SE1b; CI1bhigh = M1b+tFactors(2)*SE1b;
M2b = mean(outcome.PostCurUniC(ARCur(:)==-1,2)); SE2b = std(outcome.PostCurUniC(ARCur(:)==-1,2))/sqrt(nvp_second);
CI2blow = M2b+tFactors(1)*SE2b; CI2bhigh = M2b+tFactors(2)*SE2b;
subplot (2,3,5)
x1a(1:nvp_first) = -10; y1a=outcome.PreCurUniC(ARCur(:)==1,2);
hold on
x2a(1:nvp_first) = 10; y2a=outcome.PostCurUniC(ARCur(:)==1,2);
for ivp=1:nvp_first
    plot([x1a(ivp) x2a(ivp)],[y1a(ivp) y2a(ivp)],'--k','color',[.7 .7 .7])
end    
x1b(1:nvp_second) = -9; y1b=outcome.PreCurUniC(ARCur(:)==-1,2);
x2b(1:nvp_second) = 11; y2b=outcome.PostCurUniC(ARCur(:)==-1,2);
for ivp=1:nvp_second
    plot([x1b(ivp) x2b(ivp)],[y1b(ivp) y2b(ivp)],':k','color',[.7 .7 .7])
end    
plot([-p1 -p1],[CI1alow CI1ahigh],'-k','LineWidth',LW)
plot([+p1 +p1],[CI2alow CI2ahigh],'-k','LineWidth',LW)
scatter([-p1 p1],[M1a M2a],35,'k','filled');

plot([-p2 -p2],[CI1blow CI1bhigh],'-k','LineWidth',LW)
plot([+p2 +p2],[CI2blow CI2bhigh],'-k','LineWidth',LW)
scatter([-p2 p2],[M1b M2b],35,'k','MarkerFaceColor','w');
plot([-15 15],[0 0],'-k')
ylabel('visual judgment error [deg]')
xticks([-10 10])
xticklabels({'pre-test','post-test'})
axis([-15 15 -20 20])
set(gca,'FontSize',11)


% ---------------------------------------------------

% straight and curved, recalibration
M1 = mean(outcome.AELin(:,8)/30); SE1 = std(outcome.AELin(:,8)/30)/sqrt(nvp);
CI1low = M1+tFactors(1)*SE1; CI1high = M1+tFactors(2)*SE1;
M2 = mean(outcome.AECur(:,8)/30); SE2 = std(outcome.AECur(:,8)/30)/sqrt(nvp);
CI2low = M2+tFactors(1)*SE2; CI2high = M2+tFactors(2)*SE2;
subplot (2,3,6)
x1(1:nvp) = -10; y1=outcome.AELin(:,8)/30;
hold on
x2(1:nvp) = 10; y2=outcome.AECur(:,8)/30;
scatter(x2,y2,1,'k','filled')
for ivp=1:nvp
    plot([x1(ivp) x2(ivp)],[y1(ivp) y2(ivp)],'-k','color',[.7 .7 .7])
end    
scatter([-10.5 10.5],[M1 M2],35,'k','filled');
plot([-10.5 -10.5],[CI1low CI1high],'-k','LineWidth',LW)
plot([+10.5 +10.5],[CI2low CI2high],'-k','LineWidth',LW)
plot([-15 15],[0 0],'-k')
ylabel('visual recalibration')
xticks([-10 10])
xticklabels({'constant','variable'})
axis([-15 15 -0.5 1])
set(gca,'FontSize',11)


ckfigure_setall(gcf,'TickLength',[0.02 0.02]);
ckfigure_setall(gcf,'Box','Off');

set(gcf,'Position',[      50         206        1160         625])


FigureDir= 'F:/CKDATA/Projects/projects/Multisensory_decoding/Debats.EJN/data';
snamef = sprintf('%s/Figure3.png',  FigureDir);
print('-dpng',snamef,'-r600');
snamef = sprintf('%s/Figure3.tiff',  FigureDir);
print('-dtiff',snamef,'-r600');
% snamef = sprintf('%s/Figure2.pdf',  FigureDir);
% print('-dpdf',snamef,'-r600');
