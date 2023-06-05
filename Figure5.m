
% creates figure 5 of Debats et al
% "Different time scales of common-cause evidence shape multisensory
% integration, recalibration and motor adaptation "



% figure 5 individual differences

clear;
close all
load('DataPlots');

figure(5);clf;

%--------------------------------------------------------------------------------

% Integration: pre-post Vergleiche

IpreLin = outcome.PreLinBiH(:,5)-outcome.PreLinBiC(:,5);
IpostLin = outcome.PostLinBiH(:,5)-outcome.PostLinBiC(:,5);
IpreCur = outcome.PreCurBiH(:,5)-outcome.PreCurBiC(:,5);
IpostCur  = outcome.PostCurBiH(:,5)-outcome.PostCurBiC(:,5);
Ipre = 0.5*(IpreLin+IpreCur);
Ipost = 0.5 * (IpostLin+IpostCur);
RaeLin = (outcome.AELin(:,2)-outcome.AELin(:,8))/30;
RaeCur = (outcome.AECur(:,2)-outcome.AECur(:,8))/30;
MaeLin = outcome.AELin(:,6)/30;
MaeCur = outcome.AECur(:,6)/30;
IpreDiff = IpreLin-IpreCur;
RaeDiff = RaeLin-RaeCur;

subplot(2,3,1)
[R,P]=corrcoef(IpreLin,IpreCur);
T=['r = ' num2str(R(1,2),3) ', p = ' num2str(P(1,2),2)];
scatter (IpreLin, IpreCur, 25,'k','filled');
hold on
plot([-1 1.5],[-1 1.5],':k')
plot([-1 2],[0 0],'-k')
plot([0 0],[-1 1],'-k')
axis equal
axis([-1 2 -1 1.5])
xlabel('constant' )
ylabel('variable' )
text(-0.8,1.2,T )
set(gca,'FontSize',11)
title('integration strength','FontSize',14,'FontWeight','Bold'   )
text(-1.7,1.8,'A','FontSize',16,'FontWeight','Bold');



subplot(2,3,2)
[R,P]=corrcoef(RaeLin,RaeCur);
T=['r = ' num2str(R(1,2),1) ', p = ' num2str(P(1,2),3)];
scatter (RaeLin, RaeCur, 25,'k','filled');
hold on
plot([-1 2],[-1 2],':k')
plot([-1 2],[0 0],'-k')
plot([0 0],[-1 1],'-k')
axis equal
axis([-1 2 -1 1.5])
xlabel('constant' )
ylabel('variable' )
text(-.8,1.2,T )
set(gca,'FontSize',11)
title('total recalibration','FontSize',14,'FontWeight','Bold'   )
text(-1.7,1.8,'B','FontSize',16,'FontWeight','Bold');

subplot(2,3,3)
[R,P]=corrcoef(MaeLin,MaeCur);
T=['r = ' num2str(R(1,2),3) ', p = ' num2str(P(1,2),2)];
scatter (MaeLin, MaeCur, 25,'k','filled');
hold on
plot([-1 2],[-1 2],':k')
plot([-1 2],[0 0],'-k')
plot([0 0],[-1 1],'-k')
axis equal
axis([-1 2 -1 1.5])
xlabel('constant' )
ylabel('variable' )
text(-.8,1.2,T )
set(gca,'FontSize',11)
title('motor adaptation','FontSize',14,'FontWeight','Bold'  )
text(-1.7,1.8,'C','FontSize',16,'FontWeight','Bold');

subplot(2,3,4)
[R,P]=corrcoef(Ipre,Ipost);
T=['r = ' num2str(R(1,2),3) ', p = ' num2str(P(1,2),2)];
scatter (Ipre, Ipost, 25,'k','filled');
%scatter(IpreLin, IpostLin,25,'k','filled')
hold on
%scatter(IpreCur, IpostCur,25,'k')
plot([-1 1.5],[-1 1.5],':k')
plot([-1 2],[0 0],'-k')
plot([0 0],[-1 1],'-k')
axis equal
axis([-1 2 -1 1.5])
xlabel('pre-test')
ylabel('post-test')
text(-.8,1.3,T )
set(gca,'FontSize',11)
title('integration strength','FontSize',14,'FontWeight','Bold'  )
text(-1.7,1.8,'D','FontSize',16,'FontWeight','Bold');



subplot(2,3,5)
[R,P]=corrcoef(IpreLin,RaeLin);
%P
T=['r = ' num2str(R(1,2),2) ', p = ' num2str(P(1,2),3)];
scatter (IpreLin, RaeLin, 25,'k','filled');
hold on
plot([-1 1.5],[-1 1.5],':k')
plot([-1 2],[0 0],'-k')
plot([0 0],[-1 1],'-k')
axis equal
axis([-1 2 -1 1.5])
xlabel('integration' )
ylabel('recalibration' )
text(-.8,1.3,T )
set(gca,'FontSize',11)
title('Constant','FontSize',14,'FontWeight','Bold' )
text(-1.7,1.8,'E','FontSize',16,'FontWeight','Bold');

subplot(2,3,6)
[R,P]=corrcoef(IpreDiff,RaeDiff);
T=['r = ' num2str(R(1,2),2) ', p = ' num2str(P(1,2),3)];
scatter (IpreDiff, RaeDiff, 25,'k','filled');
hold on
plot([-1 1.5],[-1 1.5],':k')
plot([-1 2],[0 0],'-k')
plot([0 0],[-1 1],'-k')
axis equal
axis([-1 2 -1 1.5])
xlabel('integration' )
ylabel('recalibration' )
text(-.8,1.3,T )
set(gca,'FontSize',11)
title('Constant-Variable','FontSize',14,'FontWeight','Bold'  )
text(-1.7,1.8,'F','FontSize',16,'FontWeight','Bold');


ckfigure_setall(gcf,'TickLength',[0.02 0.02]);
ckfigure_setall(gcf,'Box','Off');

set(gcf,'Position',[       50         206        1153         685])


FigureDir= 'F:/CKDATA/Projects/projects/Multisensory_decoding/Debats.EJN/data';
snamef = sprintf('%s/Figure5.png',  FigureDir);
print('-dpng',snamef,'-r600');
snamef = sprintf('%s/Figure5.tiff',  FigureDir);
print('-dtiff',snamef,'-r600');
