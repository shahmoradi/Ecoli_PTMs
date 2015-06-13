close all
clear all
clc
% 
load Msrs_data_mean_A;% MsrA_data_mean;
load Msrs_data_std_A;% MsrA_data_std;
load Msrs_data_mean_B;% MsrB_data_mean;
load Msrs_data_std_B;% MsrB_data_std;

% load pgl2_data_mean_A;% MsrA_data_mean;
% load pgl2_data_std_A;% MsrA_data_std;
% load pgl2_data_mean_B;% MsrB_data_mean;
% load pgl2_data_std_B;% MsrB_data_std;

protFile=dlmread('C:\Users\VSridhara\Documents\DesktopCopyAug17_2014\prot_data_glucose_tc.csv','\t',1,1);
mRNAFile=csvread('C:\Users\VSridhara\Documents\DesktopCopyAug17_2014\glucose_raw_rna_count.csv',1,2);

time_replicates_hrs=[3 4 5 6 8 24 48 168 336];% 3 4 5 6 8 24 48 168 336 3 4 5 6 8 24 48 168 336];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sizeFactors = [1.2384992 1.2666503 1.2131509 1.1913604 1.1804724 1.2052634 1.2007805 1.1885798 1.1452313 1.2065408 1.2974431 1.2465825 1.3462249 1.3006318 1.3186968 1.3268914 1.2594943 1.1763489 0.6455125 0.6803465 0.6449752 0.7677642 0.7944501 0.7727679 0.6336055 0.7203405 0.6289386];

columnSums = sizeFactors;
for i = 1:numel(columnSums)
  normmRNAFile(:,i) = mRNAFile(:,i)./columnSums(i);
end
%meansNormmRNAFile=normmRNAFile;
%mR=reshape(normmRNAFile,4445,9,3);
mR=reshape(normmRNAFile,4486,9,3);
mR_data_mean=squeeze(mean(mR, 3));
mR_data_std=squeeze(std(mR, [], 3));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% sizeFactors=[1.39015154 1.68427709 0.39115574 1.17907599 0.62722769 0.17373366 0.10484587 0.49268837 1.08295813 2.17204357 2.98268350 2.79024861 2.14163186 2.71008055 0.53128899 0.12587469 3.39318826 2.13752471 4.93748506 5.91520349 4.28693513 2.05958791 0.37574153 0.11939792 0.07501766 1.27286429 1.84314507];
% columnSums = sizeFactors;
% for i = 1:numel(columnSums)
%   normmRNAFile(:,i) = mRNAFile(:,i)./columnSums(i);
% end
% 
% meansNormmRNAFile=(normmRNAFile(:,1:9)+normmRNAFile(:,10:18)+normmRNAFile(:,19:27))/3;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear columnSums
% clear sizeFactors
% 
% sizeFactors=[1.2384992 1.2666503 1.2131509 1.1913604 1.1804724 1.2052634 1.2007805 1.1885798 1.1452313 1.2065408 1.2974431 1.2465825 1.3462249 1.3006318 1.3186968 1.3268914 1.2594943 1.1763489 0.6455125 0.6803465 0.6449752 0.7677642 0.7944501 0.7727679 0.6336055 0.7203405 0.6289386];
% 
% columnSums = sizeFactors;
% for i = 1:numel(columnSums)
%   normprotFile(:,i) = protFile(:,i)./columnSums(i);
% end
% 
% meansNormProtFile=(normprotFile(:,1:9)+normprotFile(:,10:18)+normprotFile(:,19:27))/3;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear columnSums
clear sizeFactors

normprotFile=1000*normc(protFile);
%meansNormProtFile=normprotFile;
%normprotFile=protFile;
meansNormProtFile=(normprotFile(:,1:9)+normprotFile(:,10:18)+normprotFile(:,19:27))/3;
pR=reshape(normprotFile,3702,9,3);
protein_data_mean=squeeze(mean(pR, 3));
protein_data_std=squeeze(std(pR, [], 3));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TimeSnaps=[3 4 5 6 8 24 48 168 336];

% figure(9)
% %subplot(1,2,2)
% h=errorbar([TimeSnaps], zwf_data_mean/491,zwf_data_std/491,'ro-');
% ylim([0 0.06]); set(gca, 'XScale', 'log');set(gca,'fontsize',15);
% set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
%     'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
% hold on
% h=errorbar([TimeSnaps], ybhE_data_mean/331,ybhE_data_std/331,'bo-');
%  set(gca, 'XScale', 'log');set(gca,'fontsize',15);
% set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
%     'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
% 
% xlabel('Time (hrs)','FontSize',15);
% ylabel('Protein Frequency','FontSize',15);
% title('MODa (this work)','FontSize',15);
% legend('zwf','ybhE','Location','SouthEast');
% saveas(gcf, 'Ecoli_zwf_ybhE_protein_Figure51', 'emf') %Save figure
% saveas(gcf, 'Ecoli_zwf_ybhE_protein_Figure51', 'pdf') %Save figure


% figure(6)
% %subplot(1,2,2)
% h=errorbar([TimeSnaps], protein_data_mean(1549,:)/491,protein_data_std(1549,:)/491,'ro-');
%  set(gca, 'XScale', 'log');set(gca,'fontsize',15);
% set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
%     'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
% hold on
% h=errorbar([TimeSnaps], protein_data_mean(1642,:)/468,protein_data_std(1642,:)/468,'bo-');
%  set(gca, 'XScale', 'log');set(gca,'fontsize',15);
% set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
%     'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
% 
% xlabel('Time (hrs)','FontSize',15);
% ylabel('Protein Frequency','FontSize',15);
% title('zwf and zwf','FontSize',15);
% legend('zwf','zwf');
% saveas(gcf, 'Ecoli_zwf_zwf_protein_Figure51', 'emf') %Save figure
% saveas(gcf, 'Ecoli_zwf_zwf_protein_Figure51', 'pdf') %Save figure

% 
% figure(6)
% %subplot(1,2,2)
% h=errorbar([TimeSnaps], protein_data_mean(1549,:)/491,protein_data_std(1549,:)/491,'ro-');
%  set(gca, 'XScale', 'log');set(gca,'fontsize',15);
% set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
%     'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
% hold on
% h=errorbar([TimeSnaps], protein_data_mean(1642,:)/468,protein_data_std(1642,:)/468,'bo-');
%  set(gca, 'XScale', 'log');set(gca,'fontsize',15);
% set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
%     'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
% 
% xlabel('Time (hrs)','FontSize',15);
% ylabel('Protein Frequency','FontSize',15);
% title('zwf and zwf','FontSize',15);
% legend('zwf','zwf');
% saveas(gcf, 'Ecoli_zwf_zwf_protein_Figure51', 'emf') %Save figure
% saveas(gcf, 'Ecoli_zwf_zwf_protein_Figure51', 'pdf') %Save figure
% 
% figure(6)
% %subplot(1,2,2)
% h=errorbar([TimeSnaps], protein_data_mean(1549,:)/491,protein_data_std(1549,:)/491,'ro-');
% ylim([0 0.06]); set(gca, 'XScale', 'log');set(gca,'fontsize',15);
% set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
%     'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
% hold on
% h=errorbar([TimeSnaps], protein_data_mean(610,:)/331,protein_data_std(610,:)/331,'bo-');
%  set(gca, 'XScale', 'log');set(gca,'fontsize',15);
% set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
%     'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
% 
% xlabel('Time (hrs)','FontSize',15);
% ylabel('Protein Frequency','FontSize',15);
% title('SEQUEST (Dan/John)','FontSize',15);
% legend('zwf','ybhE','Location','SouthEast');
% saveas(gcf, 'Ecoli_zwf_ybhE_protein_Figure54', 'emf') %Save figure
% saveas(gcf, 'Ecoli_zwf_ybhE_protein_Figure54', 'pdf') %Save figure
% % 
% figure(9)
% %subplot(1,2,2)
% h=errorbar([TimeSnaps], protein_data_mean(3552,:)/212,protein_data_std(3552,:)/212,'o-');
%  set(gca, 'XScale', 'log');set(gca,'fontsize',15);
% set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
%     'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
% xlabel('Time (hrs)','FontSize',15);
% ylabel('Protein Frequency','FontSize',15);
% title('MsrA','FontSize',15);
% saveas(gcf, 'Ecoli__protein_Figure51', 'emf') %Save figure
% saveas(gcf, 'Ecoli_pgi_protein_Figure51', 'pdf') %Save figure
% 
figure(1)
subplot(2,2,1)
h=errorbar([TimeSnaps], mR_data_mean(4090,:)/155,mR_data_std(4090,:)/155/sqrt(3),'o-');
 set(gca, 'XScale', 'log');set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Time (hrs)','FontSize',24);
ylabel('mRNA Frequency','FontSize',24);
%title('MsrA','FontSize',15);
%saveas(gcf, 'embl_Ecoli_msrA_mRNA_Figure41', 'emf') %Save figure
%saveas(gcf, 'Ecoli_msrA_mRNA_Figure41', 'pdf') %Save figure
%figure(2)
subplot(2,2,2)
h=errorbar([TimeSnaps], protein_data_mean(3552,:)/212,protein_data_std(3552,:)/212/sqrt(3),'ro-');
hold on
h=errorbar([TimeSnaps],MsrA_data_mean,MsrA_data_std,'bo-');
 set(gca, 'XScale', 'log');set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Time (hrs)','FontSize',24);
ylabel('Protein Frequency','FontSize',24);
%title('MsrA','FontSize',18);
legend('SEQUEST','MODa',18)%
%saveas(gcf, 'embl_Ecoli_msrA_protein_Figure42', 'emf') %Save figure
% saveas(gcf, 'Ecoli_msrA_protein_Figure42', 'pdf') %Save figure

%figure(3)
subplot(2,2,3)
h=errorbar([TimeSnaps], mR_data_mean(1747,:)/480,mR_data_std(1747,:)/480/sqrt(3),'o-');

 set(gca, 'XScale', 'log');set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Time (hrs)','FontSize',24);
ylabel('mRNA Frequency','FontSize',24);
%title('MsrB','FontSize',15);
%saveas(gcf, 'embl_Ecoli_msrB_mRNA_Figure53', 'emf') %Save figure
%saveas(gcf, 'Ecoli_msrB_mRNA_Figure53', 'pdf') %Save figure
%figure(4)
subplot(2,2,4)
h=errorbar([TimeSnaps], protein_data_mean(1483,:)/137,protein_data_std(1483,:)/137/sqrt(3),'ro-');
hold on
h=errorbar([TimeSnaps],MsrB_data_mean,MsrB_data_std,'bo-');

 set(gca, 'XScale', 'log');set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Time (hrs)','FontSize',24);
ylabel('Protein Frequency','FontSize',24);
legend('SEQUEST','MODa',18)
%title('MsrB','FontSize',24);
%saveas(gcf, 'embl_Ecoli_msrB_protein_Figure54', 'emf') %Save figure
set(gcf, 'PaperSize', [17 11]); 
saveas(gcf, 'Ecoli_msrAB_mRNA_protein', 'pdf') %Save figure

figure(2)
subplot(1,2,1)
h=errorbar([TimeSnaps],MsrA_data_mean,MsrA_data_std,'bo-');
 set(gca, 'XScale', 'log');set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Time (hrs)','FontSize',24);
ylabel('Protein Frequency','FontSize',24);
%title('MsrA','FontSize',18);
%legend('SEQUEST','MODa',18)%

subplot(1,2,2)
h=errorbar([TimeSnaps],MsrB_data_mean,MsrB_data_std,'bo-');

 set(gca, 'XScale', 'log');set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Time (hrs)','FontSize',24);
ylabel('Protein Frequency','FontSize',24);
%legend('SEQUEST','MODa',18)
%title('MsrB','FontSize',24);
%saveas(gcf, 'embl_Ecoli_msrB_protein_Figure54', 'emf') %Save figure
set(gcf, 'PaperSize', [8.5 11]); 
%saveas(gcf, 'Ecoli_MsrAB_MODa', 'pdf') %Save figure
figure(3)
subplot(1,2,1)
h=errorbar([TimeSnaps], protein_data_mean(3552,:)/212,protein_data_std(3552,:)/212/sqrt(3),'ro-');
hold on
h=errorbar([TimeSnaps],MsrA_data_mean,MsrA_data_std,'bo-');
 set(gca, 'XScale', 'log');set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Time (hrs)','FontSize',24);
ylabel('Protein Frequency','FontSize',24);
%title('MsrA','FontSize',18);
legend('SEQUEST','MODa',18)%
subplot(1,2,2)
h=errorbar([TimeSnaps], protein_data_mean(1483,:)/137,protein_data_std(1483,:)/137/sqrt(3),'ro-');
hold on
h=errorbar([TimeSnaps],MsrB_data_mean,MsrB_data_std,'bo-');

 set(gca, 'XScale', 'log');set(gca,'fontsize',18);
set(h, 'MarkerSize', 9, 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor', [0 .5 0], 'LineWidth',2);set(gca,'box','off');
xlabel('Time (hrs)','FontSize',24);
ylabel('Protein Frequency','FontSize',24);
legend('SEQUEST','MODa',18)
%title('MsrB','FontSize',24);
%saveas(gcf, 'embl_Ecoli_msrB_protein_Figure54', 'emf') %Save figure
set(gcf, 'PaperSize', [8.5 11]); 
%saveas(gcf, 'Ecoli_MsrAB_MODa_Sequest', 'pdf') %Save figure

% figure(1)
% subplot(1,3,1)
% plot(mRNAFile(1740,1:27));
% title('gene counts WITHOUT normalization (tktA gene)');
% subplot(1,3,2)
% plot(normmRNAFile(1740,1:27));
% title('NORMALIZED gene counts (tktA gene)');
% subplot(1,3,3)
% semilogx(time_replicates_hrs,meansNormmRNAFile(1740,:));
% axis([0 400 0 1000]);
% title('MEAN NORMALIZED gene counts (tktA gene)');
% 
% figure(2)
% subplot(1,3,1)
% plot(protFile(1642,1:27));
% title('protein counts WITHOUT normalization (zwf gene)');
% subplot(1,3,2)
% plot(normprotFile(1642,1:27));
% title('NORMALIZED protein counts (zwf gene)');
% subplot(1,3,3)
% semilogx(time_replicates_hrs,meansNormProtFile(1642,:));
% axis([0 400 0 300]);
% title('MEAN NORMALIZED protein counts (zwf gene)');



