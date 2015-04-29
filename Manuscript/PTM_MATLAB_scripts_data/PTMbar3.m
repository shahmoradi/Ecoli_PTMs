% Load previously stored data i.e., mean and standard deviations of 401 by
% 24 matrix i.e., 401 different delta masses and 24 site-locations,
% including AA's, N-term, sum and actual delta M

close all
clear all
clc

% % %
% % %


load Glucose_Normalized_Control_Mean    %Glucose_data_mean
load Glucose_Normalized_Control_Std     %Glucose_data_std

TimeSnaps=[3 4 5 6 8 24 48 168 336];

[b1,i1]=sort(Glucose_data_mean(:,24,1),1,'descend');
[b2,i2]=sort(Glucose_data_mean(:,24,2),1,'descend');
[b3,i3]=sort(Glucose_data_mean(:,24,3),1,'descend');
[b4,i4]=sort(Glucose_data_mean(:,24,4),1,'descend');
[b5,i5]=sort(Glucose_data_mean(:,24,5),1,'descend');
[b6,i6]=sort(Glucose_data_mean(:,24,6),1,'descend');
[b7,i7]=sort(Glucose_data_mean(:,24,7),1,'descend');
[b8,i8]=sort(Glucose_data_mean(:,24,8),1,'descend');
[b9,i9]=sort(Glucose_data_mean(:,24,9),1,'descend');

dt=[i1(1:25)';i2(1:25)';i3(1:25)';i4(1:25)';i5(1:25)';i6(1:25)';i7(1:25)';i8(1:25)';i9(1:25)']-201;
export(dt,'massShifts.txt')



figure(1000)
bar((175-201:275-201),Glucose_data_mean(175:275,11,1)*100,0.5,'r');
%hold on
%h=errorbar([1:22],Glucose_data_mean(1:401,11,1)*100,Glucose_data_std(1:401,11,1)*100/sqrt(3),'.');
%xlab={'A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','Nt','Ct'};
%set(gca,'XTickLabel',xlab); set(gca,'XTick',1:22);
%ylim([0 3]); set(gca,'fontsize',18);
%set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
%    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Amino Acids','FontSize',24);
ylabel('Percent Modified','FontSize',24);
%title('Deamidation  3 hrs(Is it real?) Or C13 peak picking','FontSize',15);
%saveas(gcf, '1DaProfile', 'pdf') %Save figure

figure(1)
hb = bar(1:22,Glucose_data_mean(200,2:23,1)*100,0.5,'r');
hold on
h=errorbar([1:22],Glucose_data_mean(200,2:23,1)*100,Glucose_data_std(200,2:23,1)*100/sqrt(3),'.');
xlab={'A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','Nt','Ct'};
set(gca,'XTickLabel',xlab); set(gca,'XTick',1:22);
ylim([0 3]); set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Amino Acids','FontSize',24);
ylabel('Percent Modified','FontSize',24);
%title('Deamidation  3 hrs(Is it real?) Or C13 peak picking','FontSize',15);
%saveas(gcf, '1DaProfile', 'pdf') %Save figure
% 

figure(2)
hb = bar(1:22,Glucose_data_mean(199,2:23,1)*100,0.5,'r');
hold on
h=errorbar([1:22],Glucose_data_mean(199,2:23,1)*100,Glucose_data_std(199,2:23,1)*100/sqrt(3),'.');
xlab={'A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','Nt','Ct'};
set(gca,'XTickLabel',xlab); set(gca,'XTick',1:22);
ylim([0 3]); set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Amino Acids','FontSize',24);
ylabel('Percent Modified','FontSize',24);
%title('Deamidation  3 hrs(Is it real?) Or C13 peak picking','FontSize',15);
%saveas(gcf, '1DaProfile', 'pdf') %Save figure

figure(3)
hb = bar(1:22,Glucose_data_mean(224,2:23,1)*100,0.5,'r');
hold on
h=errorbar([1:22],Glucose_data_mean(224,2:23,1)*100,Glucose_data_std(224,2:23,1)*100/sqrt(3),'.');
xlab={'A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','Nt','Ct'};
set(gca,'XTickLabel',xlab); set(gca,'XTick',1:22);
ylim([0 3]); set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Amino Acids','FontSize',24);
ylabel('Percent Modified','FontSize',24);
%title('Deamidation  3 hrs(Is it real?) Or C13 peak picking','FontSize',15);
%saveas(gcf, '1DaProfile', 'pdf') %Save figure


figure(4)
hb = bar(1:22,Glucose_data_mean(274,2:23,1)*100,0.5,'r');
hold on
h=errorbar([1:22],Glucose_data_mean(274,2:23,1)*100,Glucose_data_std(274,2:23,1)*100/sqrt(3),'.');
xlab={'A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','Nt','Ct'};
set(gca,'XTickLabel',xlab); set(gca,'XTick',1:22);
ylim([0 3]); set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Amino Acids','FontSize',24);
ylabel('Percent Modified','FontSize',24);
%title('Deamidation  3 hrs(Is it real?) Or C13 peak picking','FontSize',15);
%saveas(gcf, '1DaProfile', 'pdf') %Save figure
% 

figure(5)
hb = bar(1:22,Glucose_data_mean(280,2:23,1)*100,0.5,'r');
hold on
h=errorbar([1:22],Glucose_data_mean(280,2:23,1)*100,Glucose_data_std(280,2:23,1)*100/sqrt(3),'.');
xlab={'A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','Nt','Ct'};
set(gca,'XTickLabel',xlab); set(gca,'XTick',1:22);
ylim([0 3]); set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Amino Acids','FontSize',24);
ylabel('Percent Modified','FontSize',24);
%title('Deamidation  3 hrs(Is it real?) Or C13 peak picking','FontSize',15);
%saveas(gcf, '1DaProfile', 'pdf') %Save figure

figure(6)
hb = bar(1:22,Glucose_data_mean(357,2:23,1)*100,0.5,'r');
hold on
h=errorbar([1:22],Glucose_data_mean(357,2:23,1)*100,Glucose_data_std(357,2:23,1)*100/sqrt(3),'.');
xlab={'A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','Nt','Ct'};
set(gca,'XTickLabel',xlab); set(gca,'XTick',1:22);
ylim([0 3]); set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Amino Acids','FontSize',24);
ylabel('Percent Modified','FontSize',24);
%title('Deamidation  3 hrs(Is it real?) Or C13 peak picking','FontSize',15);
%saveas(gcf, '1DaProfile', 'pdf') %Save figure

figure(7)
hb = bar(1:22,Glucose_data_mean(241,2:23,1)*100,0.5,'r');
hold on
h=errorbar([1:22],Glucose_data_mean(241,2:23,1)*100,Glucose_data_std(241,2:23,1)*100/sqrt(3),'.');
xlab={'A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','Nt','Ct'};
set(gca,'XTickLabel',xlab); set(gca,'XTick',1:22);
ylim([0 3]); set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Amino Acids','FontSize',24);
ylabel('Percent Modified','FontSize',24);
%title('Deamidation  3 hrs(Is it real?) Or C13 peak picking','FontSize',15);
%saveas(gcf, '1DaProfile', 'pdf') %Save figure

figure(8)
hb = bar(1:22,Glucose_data_mean(225,2:23,1)*100,0.5,'r');
hold on
h=errorbar([1:22],Glucose_data_mean(225,2:23,1)*100,Glucose_data_std(225,2:23,1)*100/sqrt(3),'.');
xlab={'A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','Nt','Ct'};
set(gca,'XTickLabel',xlab); set(gca,'XTick',1:22);
ylim([0 3]); set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Amino Acids','FontSize',24);
ylabel('Percent Modified','FontSize',24);
%title('Deamidation  3 hrs(Is it real?) Or C13 peak picking','FontSize',15);
%saveas(gcf, '1DaProfile', 'pdf') %Save figure

figure(9)
hb = bar(1:22,Glucose_data_mean(256,2:23,1)*100,0.5,'r');
hold on
h=errorbar([1:22],Glucose_data_mean(256,2:23,1)*100,Glucose_data_std(256,2:23,1)*100/sqrt(3),'.');
xlab={'A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','Nt','Ct'};
set(gca,'XTickLabel',xlab); set(gca,'XTick',1:22);
ylim([0 3]); set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Amino Acids','FontSize',24);
ylabel('Percent Modified','FontSize',24);
%title('Deamidation  3 hrs(Is it real?) Or C13 peak picking','FontSize',15);
%saveas(gcf, '1DaProfile', 'pdf') %Save figure

% figure(1)
% h=errorbar([1:23],Glucose_data_mean(258,2:24,1)*100,Glucose_data_std(258,2:24,1)*100,'o-');
% xlab={'A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','Nt','Ct','ALL'};
% set(gca,'XTickLabel',xlab); set(gca,'XTick',1:22);
% ylim([0 10]); set(gca,'fontsize',12);
% set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
%     'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
% xlabel('Amino Acids','FontSize',15);
% ylabel('Percent Modified','FontSize',15);
% title('Carbamidomethylation of Cysteines (3 hrs)','FontSize',15);
% saveas(gcf, 'Ecoli_Cys_3hrs', 'pdf') %Save figure
% 
% figure(2)
% h=errorbar([1:23],Glucose_data_mean(258,2:24,9)*100,Glucose_data_std(258,2:24,9)*100,'o-');
% xlab={'A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','Nt','Ct','ALL'};
% set(gca,'XTickLabel',xlab); set(gca,'XTick',1:22);
% ylim([0 10]); set(gca,'fontsize',12);
% set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
%     'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
% xlabel('Amino Acids','FontSize',15);
% ylabel('Percent Modified','FontSize',15);
% title('Carbamidomethylation of Cysteines (2 weeks)','FontSize',15);
% saveas(gcf, 'Ecoli_Cys_2weeks', 'pdf') %Save figure
% 
% figure(3)
% h=errorbar([TimeSnaps],Glucose_data_mean(258,3,:)*100,Glucose_data_std(258,3,:)*100,'o-');
% set(gca, 'XScale', 'log');
% ylim([0 8]); set(gca,'fontsize',15);
% set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
%     'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
% xlabel('Time (hrs) ','FontSize',15);
% ylabel('Percent Modified','FontSize',15);
% title('Carbamidomethylation of Cysteines','FontSize',15);
% saveas(gcf, 'Ecoli_Cys_Profile', 'pdf') %Save figure
% 


figure(1)
%h=errorbar([TimeSnaps], [sum(Glucose_data_mean(:,24,1)), sum(Glucose_data_mean(:,24,2)), sum(Glucose_data_mean(:,24,3)), sum(Glucose_data_mean(:,24,4)), sum(Glucose_data_mean(:,24,5)), sum(Glucose_data_mean(:,24,6)), sum(Glucose_data_mean(:,24,7)), sum(Glucose_data_mean(:,24,8)), sum(Glucose_data_mean(:,24,9))]*100, [sqrt(sum(Glucose_data_std(:,24,1).^2)), sqrt(sum(Glucose_data_std(:,24,2).^2)), sqrt(sum(Glucose_data_std(:,24,3).^2)), sqrt(sum(Glucose_data_std(:,24,4).^2)), sqrt(sum(Glucose_data_std(:,24,5).^2)), sqrt(sum(Glucose_data_std(:,24,6).^2)), sqrt(sum(Glucose_data_std(:,24,7).^2)), sqrt(sum(Glucose_data_std(:,24,8).^2)), sqrt(sum(Glucose_data_std(:,24,9).^2))]*100,'o-');
h=errorbar([TimeSnaps], [sum(Glucose_data_mean(:,24,1)), sum(Glucose_data_mean(:,24,2)), sum(Glucose_data_mean(:,24,3)), sum(Glucose_data_mean(:,24,4)), sum(Glucose_data_mean(:,24,5)), sum(Glucose_data_mean(:,24,6)), sum(Glucose_data_mean(:,24,7)), sum(Glucose_data_mean(:,24,8)), sum(Glucose_data_mean(:,24,9))]*100, [sqrt(sum(Glucose_data_std(:,24,1).^2)/3), sqrt(sum(Glucose_data_std(:,24,2).^2)/3), sqrt(sum(Glucose_data_std(:,24,3).^2)/3), sqrt(sum(Glucose_data_std(:,24,4).^2)/3), sqrt(sum(Glucose_data_std(:,24,5).^2)/3), sqrt(sum(Glucose_data_std(:,24,6).^2)/3), sqrt(sum(Glucose_data_std(:,24,7).^2)/3), sqrt(sum(Glucose_data_std(:,24,8).^2)/3), sqrt(sum(Glucose_data_std(:,24,9).^2)/3)]*100,'o-');
ylim([0 40]); set(gca, 'XScale', 'log');set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Time (hrs)','FontSize',24);
ylabel('Percent Modified','FontSize',24);
%title('PTMome','FontSize',15);
%saveas(gcf, 'embl_Ecoli_PTM_Modified_Figure1', 'emf') %Save figure
%saveas(gcf, 'Paper_Ecoli_PTM_Modified_Figure1', 'pdf') %Save figure
% 
% figure(2)
% bar(Glucose_data_mean(:,1,1),Glucose_data_mean(:,24,1)*100)
% ylim([0 10]);set(gca,'fontsize',15);
% xlabel('delta MOD (Dalton)','FontSize',15);
% ylabel('Percent Modified','FontSize',15);
% title('PTMs (3 hrs)','FontSize',15);
% set(gca,'box','off');
% saveas(gcf, 'Ecoli_PTMs_Figure2', 'emf') %Save figure
% 
