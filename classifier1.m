function [A_SVM_ACC,A_NB_ACC,A_Tree_ACC,A_KNN_ACC,svm_se,svm_sp,nb_se,nb_sp,tree_se,tree_sp,knn_se,knn_sp,svm_gmean,nb_gmean,knn_gmean,tree_gmean]=classifier1(DS_Train,Targets_Train,DS_Test,Targets_Test)
F=size(DS_Train,2);


A_SVM_Model=fitcsvm(DS_Train,Targets_Train);
P_Label= predict(A_SVM_Model,DS_Test);
%[~, ~, tspY, ~, ~, ~] = SVM_CV_estimate(DS_Train,Targets_Train,DS_Test,Targets_Test);
performance=classperf(Targets_Test,P_Label);
A_SVM_ACC=performance.correctRate();
svm_se=performance.Sensitivity();
svm_sp=performance.Specificity();
svm_gmean=sqrt(svm_se*svm_sp);
 A_svm_se=performance.Sensitivity();
 A_svm_sp=performance.Specificity();
%% Naive-Bayes Classifier
 A_NB_Model=fitcnb(DS_Train,Targets_Train); 
 P_Label= predict(A_NB_Model,DS_Test);
[~,y] = Bayes_CV_estimate(DS_Train,Targets_Train,DS_Test,Targets_Test);
performance=classperf(Targets_Test,y);
A_NB_ACC=performance.correctRate();
nb_se=performance.Sensitivity();
nb_sp=performance.Specificity();
nb_gmean=sqrt(nb_se*nb_sp);

%% C4.5 Classifier
 A_Tree_Model=fitctree(DS_Train,Targets_Train);
 P_Label= predict(A_Tree_Model,DS_Test);
[~,y] = J48_CV_estimate(DS_Train,Targets_Train,DS_Test,Targets_Test,[]);
performance=classperf(Targets_Test,y);
A_Tree_ACC=performance.correctRate();
tree_se=performance.Sensitivity();
tree_sp=performance.Specificity();
tree_gmean=sqrt(tree_se*tree_sp);

% KNN Classifier
 A_KNN_Model=fitcknn(DS_Train,Targets_Train);
 P_Label= predict(A_KNN_Model,DS_Test);
[~, testY_est] = knnPrediction( DS_Train,Targets_Train,DS_Test,Targets_Test,1 );
performance=classperf(Targets_Test,testY_est);
A_KNN_ACC=performance.correctRate();
knn_se=performance.Sensitivity();
knn_sp=performance.Specificity();
knn_gmean=sqrt(knn_se*knn_sp);



end