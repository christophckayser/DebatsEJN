This folder contains the processed data and matlab scripts to produce the figures of the following publication:

"Different time scales of common-cause evidence shape multisensory integration, recalibration and motor adaptation"
Published Eur J Neurosci. 2023 Sep;58(5):3253-3269. doi: 10.1111/ejn.16095. 
By: Nienke B Debats, Herbert Heuer and Christoph Kayser Department of Cognitive Neuroscience, Universität Bielefeld, Bielefeld, Germany Leibniz Research Centre for Working Environment and Human Factors, Dortmund, Germany Contact: Christoph.kayser@uni-bielefeld.de

This folder contains matlab scripts producing

Figure 2, results for integration
Figure 3, results for recalibration
Figure 4, results for motor adaptation
Figure 5, resutls for individual differences. 

The processed data are all stored in a .mat file, Dataplots.mat. The relevant variables and conditions are as follows:


The data are saved in variable outcome. The fields are 
- labeled 'Pre' and 'Post' for the pre- and post-exposure phases.
- split by conditions, with condition constant beeing 'Lin' (for linear feedback) and condition variale being 'Cur' (for curved feedback).
- separated in bimodal trials ('Bi') and unimodal trials ('Uni') 
- seprated in judgements of cursor position ('C') or the Hand movement ('H').


Fields AE contain the aftereffect
Fields 'Exposure....' are not relevant.

The individual columns contain the following information.


%outcome.PreLinBiH(ivp,1) : number of intact trials 
%outcome.PreLinBiH(ivp,2) : offset -10, mean explicit judgment hand 
%outcome.PreLinBiH(ivp,3) : offset +10, mean explicit judgment hand
%outcome.PreLinBiH(ivp,4) : mean of both means explicit: ~intercept
%outcome.PreLinBiH(ivp,5) : diff both means explicit/20: ~slope
%outcome.PreLinBiH(ivp,6) : offset -10, mean implicit judgment hand
%outcome.PreLinBiH(ivp,7) : offset +10, mean implicit judgment hand
%outcome.PreLinBiH(ivp,8) : mean of both means implicit: ~intercept
%outcome.PreLinBiH(ivp,9) : diff of both means implicit/20: ~slope
%outcome.PreLinBiH(ivp,10): offset -10, mean movement deviation
%outcome.PreLinBiH(ivp,11): offset +10, mean movement deviation
%outcome.PreLinBiH(ivp,12): mean of both means movement deviation 
%outcome.PreLinBiH(ivp,13): diff of both means movement deviation/20: ~slope 


%outcome.PreLinUniH(ivp,1) : number of intact trials 
%outcome.PreLinUniH(ivp,2) : mean explicit judgment hand 
%outcome.PreLinUniH(ivp,3) : mean implicit judgment hand
%outcome.PreLinUniH(ivp,4): mean movement deviation
%outcome.PreLinUniC(ivp,1) : number of intact trials 
%outcome.PreLinUniC(ivp,2) : mean explicit judgment cursor 

% outcome.AECur(ivp,1)  : intercept explicit Hand judgments, bimodal
% outcome.AECur(ivp,2)  : explicit Hand judgments, unimodal
% outcome.AECur(ivp,3)  : intercept implicit Hand judgments, bimodal,hand trials
% outcome.AECur(ivp,4)  : implicit Hand judgments, unimodal
% outcome.AECur(ivp,5)  : intercept Hand deviations, bimodal, hand trials
% outcome.AECur(ivp,6)  : Hand deviations, unimodal
% outcome.AECur(ivp,7)  : intercept explicit Cursor judgments, bimodal
% outcome.AECur(ivp,8)  : explicit Cursor judgments, unimodal
% outcome.AECur(ivp,9)  : intercept implicit Hand judgments, bimodal,cursor trials
% outcome.AECur(ivp,10) : intercept Hand deviations, bimodal, cursor trials

