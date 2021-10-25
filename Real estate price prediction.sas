/* Generated Code (IMPORT) */
/* Source File: Real estate price prediction.csv */
/* Source Path: /home/u48531157/sasuser.v94/Model Building */
/* Code generated on: 10/25/21, 5:36 AM */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/home/u48531157/sasuser.v94/Model Building/Real estate price prediction.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;


%web_open_table(WORK.IMPORT);