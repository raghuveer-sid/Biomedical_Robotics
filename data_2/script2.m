clear all;

%%%LOADING%%%
simout2=load('simout2.mat');
simout2=cell2mat(struct2cell(simout2));
simout=load('simout.mat');
simout=cell2mat(struct2cell(simout));
simout1=load('simout1.mat');
simout1=cell2mat(struct2cell(simout1));
simout3=load('simout3.mat');
simout3=cell2mat(struct2cell(simout3));

%%3D array to 1D%%
X=transform(simout2);
X_controlled=transform(simout1);
Y=transform(simout);
Y_controlled=transform(simout3);
%%FIGURE%%
figure(1)
plot(X,Y);
title('Step 2 : Without control')
figure(2)
plot(X_controlled,Y_controlled);
title('Step 2 : With control')




