
% creates figure 2 of Debats et al
% "Different time scales of common-cause evidence shape multisensory
% integration, recalibration and motor adaptation "



% Figure 2 integration
clear; close all
load('DataPlots');
tFactors = icdf('T',[.025 .975],nvp-1);
nvp=28;
LW = 2.5;
p1 = 10.5;
p2 = 11.5;

% sequence of blocks
seq = [1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2];  % position of Lin
nvp_first=length(seq(seq(:)==1)); nvp_second=length(seq(seq(:)==2));

%--------------------------------------------------------------------------------
figure(1);clf

% group results for integration, explicit judgments, pretests
% pretest, straight, judgement errors hand
% pretest, straight, judgement errors hand
clear x1a x1b x2a x2b
M1a = mean(outcome.PreLinBiH(seq(:)==1,2)); SE1a = std(outcome.PreLinBiH(seq(:)==1,2))/sqrt(nvp_first);
CI1alow = M1a+tFactors(1)*SE1a; CI1ahigh = M1a+tFactors(2)*SE1a;
M2a = mean(outcome.PreLinBiH(seq(:)==1,3)); SE2a = std(outcome.PreLinBiH(seq(:)==1,3))/sqrt(nvp_first);
CI2alow = M2a+tFactors(1)*SE2a; CI2ahigh = M2a+tFactors(2)*SE2a;
M1b = mean(outcome.PreLinBiH(seq(:)==2,2)); SE1b = std(outcome.PreLinBiH(seq(:)==2,2))/sqrt(nvp_second);
CI1blow = M1b+tFactors(1)*SE1b; CI1bhigh = M1b+tFactors(2)*SE1b;
M2b = mean(outcome.PreLinBiH(seq(:)==2,3)); SE2b = std(outcome.PreLinBiH(seq(:)==2,3))/sqrt(nvp_second);
CI2blow = M2b+tFactors(1)*SE2b; CI2bhigh = M2b+tFactors(2)*SE2b;
subplot (2,3,1)
x1a(1:nvp_first) = -10; y1a=outcome.PreLinBiH(ARLin(:)==1,2);
hold on
x2a(1:nvp_first) = 10; y2a=outcome.PreLinBiH(ARLin(:)==1,3);
for ivp=1:nvp_first
    plot([x1a(ivp) x2a(ivp)],[y1a(ivp) y2a(ivp)],'--k','color',[.7 .7 .7])
end    
x1b(1:nvp_second) = -10; y1b=outcome.PreLinBiH(ARLin(:)==-1,2);
x2b(1:nvp_second) = 10; y2b=outcome.PreLinBiH(ARLin(:)==-1,3);
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
xlabel('visuo-motor discrepancy [deg]'); ylabel('hand judgement error [deg]')
axis([-15 15 -15 15])
set(gca,'FontSize',11)
set(gca,'XTick',[-10,0,10]);
text(-5,18,'Constant','FontSize',14,'FontWeight','Bold');


% ---------------------------------------------------
% pretest, curved, judgement errors hand
clear x1a x1b x2a x2b
nvp_first=length(seq(seq(:)==1)); nvp_second=length(seq(seq(:)==2));
M1a = mean(outcome.PreCurBiH(seq(:)==1,2)); SE1a = std(outcome.PreCurBiH(seq(:)==1,2))/sqrt(nvp_first);
CI1alow = M1a+tFactors(1)*SE1a; CI1ahigh = M1a+tFactors(2)*SE1a;
M2a = mean(outcome.PreCurBiH(seq(:)==1,3)); SE2a = std(outcome.PreCurBiH(seq(:)==1,3))/sqrt(nvp_first);
CI2alow = M2a+tFactors(1)*SE2a; CI2ahigh = M2a+tFactors(2)*SE2a;
M1b = mean(outcome.PreCurBiH(seq(:)==2,2)); SE1b = std(outcome.PreCurBiH(seq(:)==2,2))/sqrt(nvp_second);
CI1blow = M1b+tFactors(1)*SE1b; CI1bhigh = M1b+tFactors(2)*SE1b;
M2b = mean(outcome.PreCurBiH(seq(:)==2,3)); SE2b = std(outcome.PreCurBiH(seq(:)==2,3))/sqrt(nvp_second);
CI2blow = M2b+tFactors(1)*SE2b; CI2bhigh = M2b+tFactors(2)*SE2b;
subplot (2,3,2)
x1a(1:nvp_first) = -10; y1a=outcome.PreCurBiH(ARCur(:)==1,2);
hold on
x2a(1:nvp_first) = 10; y2a=outcome.PreCurBiH(ARCur(:)==1,3);
for ivp=1:nvp_first
    plot([x1a(ivp) x2a(ivp)],[y1a(ivp) y2a(ivp)],'--k','color',[.7 .7 .7])
end    
x1b(1:nvp_second) = -10; y1b=outcome.PreCurBiH(ARCur(:)==-1,2);
x2b(1:nvp_second) = 10; y2b=outcome.PreCurBiH(ARCur(:)==-1,3);
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
xlabel('visuo-motor discrepancy [deg]'); ylabel('hand judgement error [deg]')
axis([-15 15 -15 15])
set(gca,'FontSize',11)
set(gca,'XTick',[-10,0,10]);
text(-5,18,'Variable','FontSize',14,'FontWeight','Bold');


% ---------------------------------------------------

% pretest, straight and curved, proportional errors hand
clear x1a x1b x2a x2b
M1 = mean(outcome.PreLinBiH(:,5)); SE1 = std(outcome.PreLinBiH(:,5))/sqrt(nvp);
CI1low = M1+tFactors(1)*SE1; CI1high = M1+tFactors(2)*SE1;
M2 = mean(outcome.PreCurBiH(:,5)); SE2 = std(outcome.PreCurBiH(:,5))/sqrt(nvp);
CI2low = M2+tFactors(1)*SE2; CI2high = M2+tFactors(2)*SE2;
subplot (2,3,3)
x1(1:nvp) = -10; y1=outcome.PreLinBiH(:,5);
hold on
x2(1:nvp) = 10; y2=outcome.PreCurBiH(:,5);
for ivp=1:nvp
    plot([x1(ivp) x2(ivp)],[y1(ivp) y2(ivp)],'color',ones(1,3)*0.7)
end    
scatter([-10.5 10.5],[M1 M2],35,'k','filled');
plot([-10.5 -10.5],[CI1low CI1high],'-k','LineWidth',LW)
plot([+10.5 +10.5],[CI2low CI2high],'-k','LineWidth',LW)
plot([-15 15],[0 0],'-k')
ylabel('hand bias')
xticks([-10 10])
xticklabels({'constant','variable'})
axis([-15 15 -.5 1.5])
set(gca,'FontSize',11)
text(-10,1.7,'Proportional bias','FontSize',14,'FontWeight','Bold');

% ---------------------------------------------------

% pretest, straight, judgement errors cursor
clear x1a x1b x2a x2b
nvp_first=length(seq(seq(:)==1)); nvp_second=length(seq(seq(:)==2));
M1a = mean(outcome.PreLinBiC(seq(:)==1,2)); SE1a = std(outcome.PreLinBiC(seq(:)==1,2))/sqrt(nvp_first);
CI1alow = M1a+tFactors(1)*SE1a; CI1ahigh = M1a+tFactors(2)*SE1a;
M2a = mean(outcome.PreLinBiC(seq(:)==1,3)); SE2a = std(outcome.PreLinBiC(seq(:)==1,3))/sqrt(nvp_first);
CI2alow = M2a+tFactors(1)*SE2a; CI2ahigh = M2a+tFactors(2)*SE2a;
M1b = mean(outcome.PreLinBiC(seq(:)==2,2)); SE1b = std(outcome.PreLinBiC(seq(:)==2,2))/sqrt(nvp_second);
CI1blow = M1b+tFactors(1)*SE1b; CI1bhigh = M1b+tFactors(2)*SE1b;
M2b = mean(outcome.PreLinBiC(seq(:)==2,3)); SE2b = std(outcome.PreLinBiC(seq(:)==2,3))/sqrt(nvp_second);
CI2blow = M2b+tFactors(1)*SE2b; CI2bhigh = M2b+tFactors(2)*SE2b;
subplot (2,3,4)
hold on
x1a(1:nvp_first) = -10; y1a=outcome.PreLinBiC(ARLin(:)==1,2);
x2a(1:nvp_first) = 10; y2a=outcome.PreLinBiC(ARLin(:)==1,3);
for ivp=1:nvp_first
    plot([x1a(ivp) x2a(ivp)],[y1a(ivp) y2a(ivp)],'--k','color',[.7 .7 .7])
end    
x1b(1:nvp_second) = -10; y1b=outcome.PreLinBiC(ARLin(:)==-1,2);
x2b(1:nvp_second) = 10; y2b=outcome.PreLinBiC(ARLin(:)==-1,3);
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

xlabel('visuo-motor discrepancy [deg]'); ylabel('visual judgement error [deg]')
axis([-15 15 -15 15])
set(gca,'FontSize',11)
set(gca,'XTick',[-10,0,10]);

% ---------------------------------------------------

% pretest, curved, judgement errors cursor
clear x1a x1b x2a x2b
nvp_first=length(seq(seq(:)==1)); nvp_second=length(seq(seq(:)==2));
M1a = mean(outcome.PreCurBiC(seq(:)==1,2)); SE1a = std(outcome.PreCurBiC(seq(:)==1,2))/sqrt(nvp_first);
CI1alow = M1a+tFactors(1)*SE1a; CI1ahigh = M1a+tFactors(2)*SE1a;
M2a = mean(outcome.PreCurBiC(seq(:)==1,3)); SE2a = std(outcome.PreCurBiC(seq(:)==1,3))/sqrt(nvp_first);
CI2alow = M2a+tFactors(1)*SE2a; CI2ahigh = M2a+tFactors(2)*SE2a;
M1b = mean(outcome.PreCurBiC(seq(:)==2,2)); SE1b = std(outcome.PreCurBiC(seq(:)==2,2))/sqrt(nvp_second);
CI1blow = M1b+tFactors(1)*SE1b; CI1bhigh = M1b+tFactors(2)*SE1b;
M2b = mean(outcome.PreCurBiC(seq(:)==2,3)); SE2b = std(outcome.PreCurBiC(seq(:)==1,3))/sqrt(nvp_second);
CI2blow = M2b+tFactors(1)*SE2b; CI2bhigh = M2b+tFactors(2)*SE2b;
subplot (2,3,5)
x1a(1:nvp_first) = -10; y1a=outcome.PreCurBiC(ARCur(:)==1,2);
hold on
x2a(1:nvp_first) = 10; y2a=outcome.PreCurBiC(ARCur(:)==1,3);
for ivp=1:nvp_first
    plot([x1a(ivp) x2a(ivp)],[y1a(ivp) y2a(ivp)],'--k','color',[.7 .7 .7])
end    
x1b(1:nvp_second) = -10; y1b=outcome.PreCurBiC(ARCur(:)==-1,2);
x2b(1:nvp_second) = 10; y2b=outcome.PreCurBiC(ARCur(:)==-1,3);
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
xlabel('visuo-motor discrepancy [deg]'); ylabel('visual judgement error [deg]')
axis([-15 15 -15 15])
set(gca,'FontSize',11)
set(gca,'XTick',[-10,0,10]);

% ---------------------------------------------------

% pretest, straight and curved, proportional errors cursor
clear x1a x1b x2a x2b
M1 = mean(outcome.PreLinBiC(:,5)); SE1 = std(outcome.PreLinBiC(:,5))/sqrt(nvp);
CI1low = M1+tFactors(1)*SE1; CI1high = M1+tFactors(2)*SE1;
M2 = mean(outcome.PreCurBiC(:,5)); SE2 = std(outcome.PreCurBiC(:,5))/sqrt(nvp);
CI2low = M2+tFactors(1)*SE2; CI2high = M2+tFactors(2)*SE2;
subplot (2,3,6)
x1(1:nvp) = -10; y1=outcome.PreLinBiC(:,5);
hold on
x2(1:nvp) = 10; y2=outcome.PreCurBiC(:,5);
for ivp=1:nvp
    plot([x1(ivp) x2(ivp)],[y1(ivp) y2(ivp)],'color',ones(1,3)*0.7)
end    
scatter([-10.5 10.5],[M1 M2],35,'k','filled');
plot([-10.5 -10.5],[CI1low CI1high],'-k','LineWidth',LW)
plot([+10.5 +10.5],[CI2low CI2high],'-k','LineWidth',LW)
plot([-15 15],[0 0],'-k')
ylabel('visual bias')
xticks([-10 10])
xticklabels({'constant','variable'})

axis([-15 15 -1 1])
set(gca,'FontSize',11)


ckfigure_setall(gcf,'TickLength',[0.02 0.02]);
ckfigure_setall(gcf,'Box','Off');

set(gcf,'Position',[      50         206        1160         625])



FigureDir= 'F:/CKDATA/Projects/projects/Multisensory_decoding/Debats.EJN/data';
snamef = sprintf('%s/Figure2.png',  FigureDir);
print('-dpng',snamef,'-r600');
snamef = sprintf('%s/Figure2.tiff',  FigureDir);
print('-dtiff',snamef,'-r600');
% snamef = sprintf('%s/Figure2.pdf',  FigureDir);
% print('-dpdf',snamef,'-r600');
