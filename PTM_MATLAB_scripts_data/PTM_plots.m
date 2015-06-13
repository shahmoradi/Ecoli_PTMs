% This script reads in the ptm files to find out interesting patterns.
close all
clear all
clc

%     Glucose_ptms_3a1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(7),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_4a1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(8),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_5a1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(9),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_6a1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(10),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_8a1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(11),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_24a1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(12),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_48a1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(13),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_168a1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(14),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_336a1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(15),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_3b1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(7),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_4b1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(8),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_5b1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(9),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_6b1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(10),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_8b1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(11),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_24b1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(12),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_48b1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(13),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_168b1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(14),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_336b1=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(15),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
% 
%     Glucose_ptms_3a2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(16),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_4a2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(17),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_5a2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(18),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_6a2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(19),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_8a2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(20),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_24a2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(21),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_48a2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(22),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_168a2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(23),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_336a2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(24),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_3b2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(16),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_4b2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(17),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_5b2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(18),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_6b2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(19),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_8b2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(20),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_24b2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(21),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_48b2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(22),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_168b2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(23),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_336b2=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(24),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
% 
%     Glucose_ptms_3a3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(25),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_4a3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(26),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_5a3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(27),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_6a3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(28),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_8a3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(29),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_24a3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(30),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_48a3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(31),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_168a3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(32),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_336a3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(33),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_3b3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(25),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_4b3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(26),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_5b3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(27),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_6b3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(28),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_8b3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(29),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_24b3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(30),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_48b3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(31),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_168b3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(32),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_336b3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(33),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);

    fileID=fopen('C:\Users\VSridhara\Desktop\PTMDataGL\Control\ControlHits.txt');
    C=textscan(fileID,'%f %s');
    fclose(fileID);
    
    % Since different files have different PTMs, we are adjusting for this
    % for easy post-processing.
    AG3Cfilename=[7:33];
    realtime=[3 4 5 6 8 24 48 168 336];
    replicates=['a','b'];
    Glucose_data_mean=zeros(401,24,9);
    Glucose_data_std=zeros(401,24,9);
    for time=1:9
        addRep=zeros(401,24,3);
        for rep=1:3
            addSplit=zeros(401,24,2);
            for split=1:2
                result=zeros(401,24);
                for k=1:401
                    data=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\Control\MURI_',num2str(AG3Cfilename((rep-1)*9+time)),num2str(replicates(split)),'_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
                    eval(sprintf('%s_%d%s%d=data','Glucose_ptms',realtime(time),replicates(split),rep));
                    filename=sprintf('%s_%d%s%d','Glucose_ptms',realtime(time),replicates(split),rep);
%                     filename_mod=sprintf('%s_%s',filename,'mod');
                    
                    if(find(data(:,1)==k-201))
                        result(k,:)=[k-201, data(find(data(:,1)==k-201),2:24)];
                        else
                        result(k,:)=[k-201, zeros(1,23)];
                    end
                end
                
                clear data
                clear filename
%                 filename_mod=result;
                %pepHits=C{2}(find(ismember(C{1},sprintf('%s_%d%s%d','Glucose_ptms',realtime(time),replicates(split),rep))))
                pepHits=C{1}(find(ismember(C{2},sprintf('%s','MURI_',num2str(AG3Cfilename((rep-1)*9+time)),num2str(replicates(split)),'_MODa_PSMs.id.txt'))))
                addSplit(:,2:24,split)=result(:,2:24)/pepHits;
                addSplit(:,1,split)=result(:,1);
               
            end
            addRep(:,2:24,rep)=(addSplit(:,2:24,1)+addSplit(:,2:24,2))/2;
            addRep(:,1,rep)=addSplit(:,1,1);

        end
        Glucose_data_mean(:,:,time)=squeeze(mean(addRep, 3));
        Glucose_data_std(:,:,time)=squeeze(std(addRep, [], 3));
%         Glucose_data_mean(:,:,time)=(addRep(:,:,1)+addRep(:,:,2)+addRep(:,:,3))/3;
%         Glucose_data_std(:,:,time)=std(addRep(:,:,1)+addRep(:,:,2)+addRep(:,:,3));
    end
    
    save Glucose_Normalized_Control_Mean Glucose_data_mean
    save Glucose_Normalized_Control_Std Glucose_data_std
    
    
%     ga1=zeros(401,24);
%     for k=1:401
%         if(find(Glucose_ptms_3a1(:,1)==k-201))
%         ga1(k,:)=Glucose_ptms_3a1(find(Glucose_ptms_3a1(:,1)==k-201),:);
%         else
%             ga1(k,:)=[k-201, zeros(1,23)];
%         end
%     end

%     Glucose_ptms_3=zeros(400,24);
% for k=-200:200
%     if(k!=0)
%         
%     Glucose_ptms_3=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(7),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_8=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(11),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_48=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(13),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
%     Glucose_ptms_336=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(15),'a_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
% %     Glucose_ptms_3b=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(7),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
% %     Glucose_ptms_8b=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(11),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
% %     Glucose_ptms_48b=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(13),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
% %     Glucose_ptms_336b=textread(['C:\Users\VSridhara\Desktop\PTMDataGL\MURI_',num2str(15),'b_MODa_PSMs.ptm.txt'],'','delimiter','\t','headerlines',1);
% %    
%     
%     figure(1)
%     subplot(2,2,1)
%     bar([Glucose_ptms_3(:,1)],[Glucose_ptms_3(:,24)]);
%     xlabel('delta M (Da)','FontSize',15);
%     ylabel('PTM Frequency','FontSize',15);
%     axis([-50 50 0 6000]);
%     title('3-hour','FontSize',15);
%     subplot(2,2,2)
%     bar(Glucose_ptms_8(:,1),Glucose_ptms_8(:,24));
%     xlabel('delta M (Da)','FontSize',15);
%     ylabel('PTM Frequency','FontSize',15);
%     axis([-50 50 0 6000]);
%     title('8-hour','FontSize',15);
%     subplot(2,2,3)
%     bar(Glucose_ptms_48(:,1),Glucose_ptms_48(:,24));
%     xlabel('delta M (Da)','FontSize',15);
%     ylabel('PTM Frequency','FontSize',15);
%     axis([-50 50 0 6000]);
%     title('24-hour','FontSize',15);
%     subplot(2,2,4)
%     bar(Glucose_ptms_336(:,1),Glucose_ptms_336(:,24));
%     xlabel('delta M (Da)','FontSize',15);
%     ylabel('PTM Frequency','FontSize',15);
%     axis([-50 50 0 6000]);
%     title('48-hour','FontSize',15);