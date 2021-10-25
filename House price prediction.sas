*Preparing data for analysis;
DATA WORK.MODELBUILDING;
SET WORK.IMPORT;
INTER_X5_X6 = X5*X6;
LABEL No="Number of Observation "
X1= "the transaction date"
X2= "The house age"
X3= "The distance to the nearest MRT station"
X4= "The number of convenience stores in the living circle on foot (integer)"
X5= "The geographic coordinate, latitude. (Unit: degree)"
X6= "The geographic coordinate, longitude. (Unit: degree)"
INTER_X5_X6 = "Interaction of the corordinates(latitude and longitude)"
Y= "House price of unit area in (1000 New Taiwan Dollar)";
RUN;

ODS HTML;
PROC PRINT DATA=WORK.MODELBUILDING;
RUN;
ODS HTML CLOSE;