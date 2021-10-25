*Spliting the dataset;
proc surveyselect data=work.modelbuilding rat=0.7 
out= data_select outall 
method=srs; 
run;

data data_train data_test; 
	set data_select; 
	if selected =1 then output data_train; 
	else output data_test; 
run;


*Visualising my Dataset;
ODS HTML;
PROC PRINT DATA=WORK.MODELBUILDING N;
TITLE 'The Full Dataset';
RUN;
ODS HTML CLOSE;


*Visualising The training set;
ODS HTML;
PROC PRINT DATA=DATA_TRAIN N;
TITLE 'The Training set for training my Model';
RUN;
ODS HTML CLOSE;

*Visualising The validation set;
ODS HTML;
PROC PRINT DATA=DATA_TEST N;
TITLE 'The Validation set for testing my Model';
RUN;
ODS HTML CLOSE;
