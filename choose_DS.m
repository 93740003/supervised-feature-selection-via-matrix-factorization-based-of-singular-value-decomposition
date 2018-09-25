function [Train_DS,Train_Tar,Test_DS,Test_Tar]=choose_DS(number)
%[dataset,Targets]=choose_DS(number)
%[Train_DS,Train_Tar,Test_DS,Test_Tar]=choose_DS(number)
%
addr='D:\CODE\Datasets\';
switch number
    
    case 1
        load('F:\Library\MSc\Theises\Datasets\Tox\TOX.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
        load('F:\Library\MSc\Theises\Datasets\Tox\fayad.mat');
        cp=fayad;
        load('F:\Library\MSc\Theises\Datasets\Tox\uniform.mat');
        bayes_cp=uniform;
        load('F:\Library\MSc\Theises\Datasets\Tox\zeta.mat');
        RD1_cp=z;
    case 2
        load('G:\Library\MSc\Theises\Datasets\srbct\SRBCT.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
        
    case 3
        load('G:\Library\MSc\Theises\Datasets\prostate-tomur\Prostate_Tumor.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
        
    case 4
        
        load(strcat(addr,'SMK\SMK.mat'));
        dataset=X;
        Targets=Y;
        
    case 5
        load(strcat(addr,'ovarian\ovarian.mat'));
        dataset=ovarian(:,1:end-1);
        Targets=ovarian(:,end);
        %         load('lungcancer.mat');
        %         cp=lungcancer;
        %         load('blungcancer.mat');
        %         bayes_cp=bcp;
        %         load('rlungcancer.mat');
        %         RD1_cp=rcp;
    case 6
        load(strcat(addr,'\breastCancer\BreastCancer\breastCancertrain.mat'));
        Train_DS=breastCancertrain(:,1:end-1);
        Train_Tar=breastCancertrain(:,end);
        
        load(strcat(addr,'\breastCancer\BreastCancer\breastCancertest.mat'));
        Test_DS=breastCancertest(:,1:end-1);
        Test_Tar=breastCancertest(:,end);
        
    case 7
        
        load(strcat(addr,'\prostateCancer\prostate\prostateTumorVSNormaltrain.mat'));
        Train_DS=prostateTumorVSNormaltrain(:,1:end-1);
        Train_Tar=prostateTumorVSNormaltrain(:,end);
        
        load(strcat(addr,'\prostateCancer\prostate\prostateTumorVSNormaltest.mat'));
        Test_DS=prostateTumorVSNormaltest(:,1:end-1);
        Test_Tar=prostateTumorVSNormaltest(:,end);
    case 8
        load('G:\Library\MSc\Theises\Datasets\Leukemia1\Leukemia\Train.mat');
        Train_DS=Train(:,1:end-1);
        Train_Tar=Train(:,end);
        
        
        load('G:\Library\MSc\Theises\Datasets\Leukemia1\Leukemia\Test.mat');
        Test_DS=Test(:,1:end-1);
        Test_Tar=Test(:,end);
        
    case 9
        load('E:\Ebrahimpour\Datasets\lunghcancer\lungCancertrain.mat');
        Train_DS=lungCancertrain(:,1:end-1);
        Train_Tar=lungCancertrain(:,end);
        
        
        load('E:\Ebrahimpour\Datasets\lunghcancer\lungCancertest.mat');
        Test_DS=lungCancertest(:,1:end-1);
        Test_Tar=lungCancertest(:,end);
        %         load('GCM.mat.mat');
        %         dataset=ds;
        %         load('GCM.mat');
        %         cp=gcm111;
        %         load('bgcm.mat');
        %         bayes_cp=bcp;
        %         load('rgcm.mat');
        %         RD1_cp=rcp;
    case 10
        load(strcat(addr,'\DLBCL\DLBCL.mat'));
        dataset=DLBCL(:,1:end-1);
        Targets=DLBCL(:,end);
    case 11
        load(strcat(addr,'GLI\GLI.mat'));
        dataset=X;
        Targets=Y;
        
    case 12
        load(strcat(addr,'CNS\CNS.mat'));
        dataset=CNS(:,1:end-1);
        Targets=CNS(:,end);
        
    case 13
        load('CLL-SUB-111.mat.mat');
        dataset=ds;
        load('cllsub111.mat');
        cp=cllsub111;
        load('bcllsub111.mat');
        bayes_cp=bcp;
        load('rcllsub111.mat');
        RD1_cp=rcp;
    case 14
        load(strcat(addr,'Brain\Brain.mat'));
        dataset=Brain(:,1:end-1);
        Targets=Brain(:,end);
        
    case 15
        load('F:\Library\MSc\Theises\Datasets\Brain_Tumor1\Brain_Tumor1.mat');
        dataset=data(:,2:end);
        Targets=data(:,1);
        
    case 16
        load('14_Tumors.mat.mat');
        dataset=ds;
        load('14_tumors.mat');
        cp=tumors;
        load('b14_tumors.mat');
        bayes_cp=bcp;
        load('r14_tumors.mat');
        RD1_cp=rcp;
    case 17
        load('11_Tumors.mat.mat');
        dataset=ds;
        load('11_tumors.mat');
        cp=tumors;
        load('b11_tumors.mat');
        bayes_cp=bcp;
        load('r11_tumors.mat');
        RD1_cp=rcp;
    case 18
        load('F:\Library\MSc\Theises\Datasets\9_Tumors\9_Tumors.mat');
        dataset=ds;
        
    case 19
        load('BSIMB.mat');
        dataset=breastCancertrain;
        load('fayad.mat');
        cp=fayad;
        load('proportional.mat');
        bayes_cp=proportional;
        load('zeta.mat');
        RD1_cp=zeta;
        
        
        
    case 20
        load('ds.mat');
        dataset=ds;
        load('cp_fayad.mat');
        cp=cp_fayad;
        load('cp_uniform.mat');
        bayes_cp=cp_uniform;
        load('cp_zeta.mat');
        RD1_cp=cp_zeta;
    case 21
        load('F:\Library\MSc\Theises\Datasets\wine\wine.mat');
        dataset=Data;
        Targets;
        load('F:\Library\MSc\Theises\Datasets\wine\fayad.mat');
        cp=fayad;
        load('F:\Library\MSc\Theises\Datasets\wine\uniform.mat');
        bayes_cp=uniform;
        load('F:\Library\MSc\Theises\Datasets\wine\zeta.mat');
        RD1_cp=z;
        
        
    case 22
        
        load('F:\Library\MSc\Theises\Datasets\breastCancer331m30\BreastCancer331n30.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
        load('F:\Library\MSc\Theises\Datasets\breastCancer331m30\fayad.mat');
        cp=fayad;
        load('F:\Library\MSc\Theises\Datasets\breastCancer331m30\uniform.mat');
        bayes_cp=uniform;
        load('F:\Library\MSc\Theises\Datasets\breastCancer331m30\zeta.mat');
        RD1_cp=z;
        
        
    case 23
        
        load('F:\Library\MSc\Theises\Datasets\MUSK\musk.mat');
        dataset=MUSK(:,1:end-1);
        Targets=MUSK(:,end);
        load('F:\Library\MSc\Theises\Datasets\MUSK\fayad.mat');
        cp=fayad;
        load('F:\Library\MSc\Theises\Datasets\MUSK\uniform.mat');
        bayes_cp=uniform;
        load('F:\Library\MSc\Theises\Datasets\MUSK\zeta.mat');
        RD1_cp=z;
        load('F:\Library\MSc\Theises\Datasets\MUSK\zeta.mat');
        relief=z;
        
    case 24
        
        load('F:\Library\MSc\Theises\Datasets\Hill-Valley\Hill-Valley.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
        
    case 25
        
        load('G:\Library\MSc\Theises\Datasets\isolate\isolate.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
        
        
    case 26
        
        load('F:\Library\MSc\Theises\Datasets\Arcene\arcene.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
        
    case 27
        load('F:\Library\MSc\Theises\Datasets\spambase\spambase.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
        
    case 28
        
        load('F:\Library\MSc\Theises\Datasets\vehicle\vehicle.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
    case 29
        load('F:\Library\MSc\Theises\Datasets\waveform\waveform.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
        
    case 30
        load('G:\Library\MSc\Theises\Datasets\wiscosin\wiscosin.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
    case 31
        
        load('F:\Library\MSc\Theises\Datasets\segment\segment.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
    case 32
        load('F:\Library\MSc\Theises\Datasets\heart\heart.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
    case 33
        
        load(' F:\Library\MSc\Theises\Datasets\glass\glass.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
    case 34
        
        load(' F:\Library\MSc\Theises\Datasets\Iris\Iris.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
    case 35
        
        load(' F:\Library\MSc\Theises\Datasets\ecoli\ecoli.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
    case 36
        
        load(' F:\Library\MSc\Theises\Datasets\diabeties\diabeties.mat');
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
    case 37
        
        load(strcat(addr,'colon\colon.mat'));
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
    case 38
        
        load('F:\Library\MSc\Theises\Datasets\shuttle\shuttle.mat')
        dataset=ds(:,1:end-1);
        Targets=ds(:,end);
        
end

end