/*
Programmer Name : Devin Gaston 
Course : ISAT B321
Assignment : 6.2
DATE : 2/11/2022
*/

/*Drop Table & Views */
DROP TABLE IF EXISTS MOCK_SSTEM_SCHOLARS_DATA_NO_NULL
GO
DROP TABLE IF EXISTS  MockStemData 
GO 
Drop View IF EXISTS Year_One_Students
GO 
Drop View IF EXISTS Year_Two_Students
GO
Drop View IF EXISTS Year_Three_Students
GO
DROP VIEW IF EXISTS Year_Four_Students
GO
DROP VIEW IF EXISTS Scholorship_Y1_Y2
GO 
DROP VIEW IF EXISTS Scholorship_Y2_Y3
GO
DROP VIEW IF EXISTS Scholorship_Y3_Y4
GO
Drop View IF EXISTS Drop_Amt_Y1_Y2
Go
DROP VIEW IF EXISTS Drop_Amt_Y2_Y3
GO
DROP VIEW IF EXISTS Drop_Amt_Y3_Y4
GO
DROP VIEW IF EXISTS Students_Earned_Y1_Y2
Go 
DROP VIEW IF EXISTS Students_Kept_Y1_Y2
GO
DROP VIEW IF EXISTS  Students_Lost_Y1_Y2
GO
DROP VIEW IF EXISTS Students_Not_Earned_Y1_Y2
GO
DROP VIEW IF EXISTS Student_Numbers_Y1_Y2
GO 
DROP VIEW IF EXISTS Students_Earned_Y2_Y3
GO
DROP VIEW IF EXISTS Students_Kept_Y2_Y3
GO
DROP VIEW IF EXISTS Students_Lost_Y2_Y3
GO
DROP VIEW IF EXISTS Students_Not_Earned_Y2_Y3
GO
DROP VIEW IF EXISTS Student_Numbers_Y2_Y3
GO

/*Insert Original Table*/

CREATE TABLE MOCK_SSTEM_SCHOLARS_DATA_NO_NULL (
   FAID_ID                 NVARCHAR(50) NOT NULL,
  NAME                     NVARCHAR(50) NOT NULL,
  GENDER                   NVARCHAR(50) NOT NULL,
  SSN                      NVARCHAR(50) NOT NULL,
  TERM                     NVARCHAR(50) NOT NULL,
  TERM_ID                  INTEGER  NOT NULL,
  ACADEMIC_YEAR            NVARCHAR(50) NOT NULL,
  LIFE_SCHOLARSHIP_AMOUNT  INT,
  REMAINING_FN             INT, 
  SSTEM_SCHOLARSHIP_AMOUNT INT  NOT NULL,
  YEAR_IN_PROGRAM          INT  NOT NULL,
)
GO 
/*Create Mock Stem Data Table*/
Create Table MockStemData
(
	Mock_ID INT IDENTITY(1,1) PRIMARY KEY,
	Financial_ID NVARCHAR(50) NOT NULL,
	Student_Name NVARCHAR(50) NOT NULL,
	Gender NVARCHAR(50) NOT NULL,
	Social NVARCHAR(50) NOT NULL,
	Term NVARCHAR(50) NOT NULL,
	TermID INT NOT NULL,
	Academic_Year NVARCHAR(50) NOT NULL,
	Life_Scholorship_Amt INT NULL,
	Student_Payement_Amt INT NULL,
	Stem_Scholorship_Amt INT NULL,
	Year_In_Program INT NOT NULL,


)
GO 
/*Load Data*/
 INSERT INTO MOCK_SSTEM_SCHOLARS_DATA_NO_NULL (FAID_ID,NAME,GENDER,SSN,TERM,TERM_ID,ACADEMIC_YEAR,LIFE_SCHOLARSHIP_AMOUNT,REMAINING_FN,SSTEM_SCHOLARSHIP_AMOUNT,YEAR_IN_PROGRAM)  
 VALUES ('A09128122','Axcel, Grete','Male','243-92-7754','FALL_2017',9,'AY_2017_2018',NULL,12788,1600,1),
  ('A09128122','Axcel, Grete','Male','243-92-7754','SPRING_2018',10,'AY_2017_2018',NULL,NULL,1600,1),
  ('A09128122','Axcel, Grete','Male','243-92-7754','FALL_2018',11,'AY_2018_2019',2500,4325,1500,2),
  ('A09128122','Axcel, Grete','Male','243-92-7754','SPRING_2019',12,'AY_2018_2019',2500,NULL,1500,2),
  ('A14043304','Roche, Cassie','Female','538-80-1702','FALL_2013',1,'AY_2013_2014',NULL,12666,2000,1),
  ('A14043304','Roche, Cassie','Female','538-80-1702','SPRING_2014',2,'AY_2013_2014',NULL,NULL,2000,1),
  ('A14043304','Roche, Cassie','Female','538-80-1702','FALL_2014',3,'AY_2014_2015',NULL,7000,2250,2),
  ('A14043304','Roche, Cassie','Female','538-80-1702','SPRING_2015',4,'AY_2014_2015',NULL,NULL,2250,2),
  ('A32229537','Lunn, Marissa','Female','400-64-2909','FALL_2015',5,'AY_2015_2016',2500,5223,0,1),
  ('A32229537','Lunn, Marissa','Female','400-64-2909','SPRING_2016',6,'AY_2015_2016',2500,NULL,1000,1),
  ('A32229537','Lunn, Marissa','Female','400-64-2909','FALL_2016',7,'AY_2016_2017',2500,8228,1000,2),
  ('A32229537','Lunn, Marissa','Female','400-64-2909','SPRING_2017',8,'AY_2016_2017',2500,NULL,1000,2),
  ('A36325562','Camsey, Denney','Male','714-15-8010','FALL_2016',7,'AY_2016_2017',NULL,7540,1600,1),
  ('A36325562','Camsey, Denney','Male','714-15-8010','SPRING_2017',8,'AY_2016_2017',NULL,NULL,1600,1),
  ('A41109665','Gandy, Violante','Genderqueer','299-25-1009','FALL_2015',5,'AY_2015_2016',NULL,15936,0,1),
  ('A41109665','Gandy, Violante','Genderqueer','299-25-1009','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2500,1),
  ('A69650593','Zannini, Luciano','Male','496-30-7914','FALL_2013',1,'AY_2013_2014',NULL,5939,2250,1),
  ('A69650593','Zannini, Luciano','Male','496-30-7914','SPRING_2014',2,'AY_2013_2014',NULL,NULL,2250,1),
  ('A89180346','Corking, Elene','Female','859-01-5076','FALL_2017',9,'AY_2017_2018',3750,6788,1000,1),
  ('A89180346','Corking, Elene','Female','859-01-5076','SPRING_2018',10,'AY_2017_2018',3750,NULL,1000,1),
  ('A89180346','Corking, Elene','Female','859-01-5076','FALL_2018',11,'AY_2018_2019',3750,6625,1500,2),
  ('A89180346','Corking, Elene','Female','859-01-5076','SPRING_2019',12,'AY_2018_2019',3750,NULL,1500,2),
  ('B11743653','Dodman, Gannon','Bigender','490-01-9692','FALL_2018',11,'AY_2018_2019',2500,9575,1500,1),
  ('B11743653','Dodman, Gannon','Bigender','490-01-9692','SPRING_2019',12,'AY_2018_2019',2500,NULL,1500,1),
  ('B14889381','Dorgan, Jonis','Male','292-88-5856','FALL_2016',7,'AY_2016_2017',2500,5704,0,1),
  ('B14889381','Dorgan, Jonis','Male','292-88-5856','SPRING_2017',8,'AY_2016_2017',2500,NULL,1750,1),
  ('B14889381','Dorgan, Jonis','Male','292-88-5856','FALL_2017',9,'AY_2017_2018',2500,9027,1000,2),
  ('B14889381','Dorgan, Jonis','Male','292-88-5856','SPRING_2018',10,'AY_2017_2018',2500,NULL,1000,2),
  ('B46870955','Pietsma, Harry','Female','584-65-3464','FALL_2015',5,'AY_2015_2016',NULL,9825,0,1),
  ('B46870955','Pietsma, Harry','Female','584-65-3464','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2500,1),
  ('B46870955','Pietsma, Harry','Female','584-65-3464','FALL_2016',7,'AY_2016_2017',NULL,6106,3000,2),
  ('B46870955','Pietsma, Harry','Female','584-65-3464','SPRING_2017',8,'AY_2016_2017',NULL,NULL,3000,2),
  ('B46870955','Pietsma, Harry','Female','584-65-3464','FALL_2017',9,'AY_2017_2018',NULL,10497,3000,3),
  ('B46870955','Pietsma, Harry','Female','584-65-3464','SPRING_2018',10,'AY_2017_2018',NULL,NULL,3000,3),
  ('C01789092','Packe, Merl','Female','613-37-4397','FALL_2015',5,'AY_2015_2016',NULL,7867,2500,1),
  ('C01789092','Packe, Merl','Female','613-37-4397','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2500,1),
  ('C01789092','Packe, Merl','Female','613-37-4397','FALL_2016',7,'AY_2016_2017',NULL,6406,3000,2),
  ('C01789092','Packe, Merl','Female','613-37-4397','SPRING_2017',8,'AY_2016_2017',NULL,NULL,3000,2),
  ('C12995744','Coltart, Dulcea','Female','637-17-0180','FALL_2013',1,'AY_2013_2014',NULL,9239,2250,1),
  ('C12995744','Coltart, Dulcea','Female','637-17-0180','SPRING_2014',2,'AY_2013_2014',NULL,NULL,2250,1),
  ('C25480379','Iggulden, Anthiathia','Male','464-44-6404','FALL_2017',9,'AY_2017_2018',NULL,11938,1600,1),
  ('C25480379','Iggulden, Anthiathia','Male','464-44-6404','SPRING_2018',10,'AY_2017_2018',NULL,NULL,1600,1),
  ('C25480379','Iggulden, Anthiathia','Male','464-44-6404','FALL_2018',11,'AY_2018_2019',2500,8389,1500,2),
  ('C25480379','Iggulden, Anthiathia','Male','464-44-6404','SPRING_2019',12,'AY_2018_2019',2500,NULL,1500,2),
  ('C33574049','Mackley, Leesa','Female','662-41-9025','FALL_2013',1,'AY_2013_2014',NULL,6397,2250,1),
  ('C33574049','Mackley, Leesa','Female','662-41-9025','SPRING_2014',2,'AY_2013_2014',NULL,NULL,2250,1),
  ('C33574049','Mackley, Leesa','Female','662-41-9025','FALL_2014',3,'AY_2014_2015',NULL,16035,2149,2),
  ('C35114148','Dahlborg, Ade','Male','134-12-0148','FALL_2014',3,'AY_2014_2015',NULL,NULL,2500,1),
  ('C35114148','Dahlborg, Ade','Male','134-12-0148','SPRING_2015',4,'AY_2014_2015',NULL,12820,2500,1),
  ('C35114148','Dahlborg, Ade','Male','134-12-0148','FALL_2015',5,'AY_2015_2016',3750,8095,500,2),
  ('C35114148','Dahlborg, Ade','Male','134-12-0148','SPRING_2016',6,'AY_2015_2016',3750,NULL,500,2),
  ('C35114148','Dahlborg, Ade','Male','134-12-0148','FALL_2018',11,'AY_2018_2019',NULL,3619,0,5),
  ('C35114148','Dahlborg, Ade','Male','134-12-0148','SPRING_2019',12,'AY_2018_2019',NULL,NULL,2244,5),
  ('C51858618','Reeders, Gilli','Male','132-19-2621','FALL_2018',11,'AY_2018_2019',2500,8671,1500,1),
  ('C51858618','Reeders, Gilli','Male','132-19-2621','SPRING_2019',12,'AY_2018_2019',2500,NULL,1500,1),
  ('C82234537','Gilsthorpe, Eydie','Non-binary','368-13-1983','FALL_2013',1,'AY_2013_2014',NULL,14461,0,1),
  ('C82234537','Gilsthorpe, Eydie','Non-binary','368-13-1983','SPRING_2014',2,'AY_2013_2014',NULL,NULL,2250,1),
  ('C82234537','Gilsthorpe, Eydie','Non-binary','368-13-1983','FALL_2014',3,'AY_2014_2015',NULL,12285,2500,2),
  ('C82234537','Gilsthorpe, Eydie','Non-binary','368-13-1983','SPRING_2015',4,'AY_2014_2015',NULL,NULL,2500,2),
  ('C82234537','Gilsthorpe, Eydie','Non-binary','368-13-1983','FALL_2015',5,'AY_2015_2016',NULL,13913,2500,3),
  ('C82234537','Gilsthorpe, Eydie','Non-binary','368-13-1983','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2500,3),
  ('D57234618','Ronaldson, Thaine','Female','155-88-5711','FALL_2018',11,'AY_2018_2019',NULL,12000,3000,1),
  ('D57234618','Ronaldson, Thaine','Female','155-88-5711','SPRING_2019',12,'AY_2018_2019',NULL,NULL,3000,1),
  ('D71521441','Turbitt, Michale','Male','318-60-9184','FALL_2015',5,'AY_2015_2016',3750,12365,500,1),
  ('D71521441','Turbitt, Michale','Male','318-60-9184','SPRING_2016',6,'AY_2015_2016',3750,NULL,500,1),
  ('D71521441','Turbitt, Michale','Male','318-60-9184','FALL_2016',7,'AY_2016_2017',3750,5500,1000,2),
  ('D71521441','Turbitt, Michale','Male','318-60-9184','SPRING_2017',8,'AY_2016_2017',3750,NULL,1000,2),
  ('D79910074','Whitney, Arden','Female','636-23-3723','FALL_2016',7,'AY_2016_2017',2500,8380,1000,1),
  ('D79910074','Whitney, Arden','Female','636-23-3723','SPRING_2017',8,'AY_2016_2017',2500,NULL,1000,1),
  ('D79910074','Whitney, Arden','Female','636-23-3723','FALL_2017',9,'AY_2017_2018',3750,9196,1000,2),
  ('D79910074','Whitney, Arden','Female','636-23-3723','SPRING_2018',10,'AY_2017_2018',3750,NULL,1000,2),
  ('D79910074','Whitney, Arden','Female','636-23-3723','FALL_2018',11,'AY_2018_2019',3750,9515,1500,3),
  ('D79910074','Whitney, Arden','Female','636-23-3723','SPRING_2019',12,'AY_2018_2019',3750,NULL,1500,3),
  ('D93246631','Brislen, Hanan','Female','729-77-0468','FALL_2014',3,'AY_2014_2015',2500,7077,500,1),
  ('D93246631','Brislen, Hanan','Female','729-77-0468','SPRING_2015',4,'AY_2014_2015',2500,NULL,500,1),
  ('D93246631','Brislen, Hanan','Female','729-77-0468','FALL_2015',5,'AY_2015_2016',2500,9390,500,2),
  ('D93246631','Brislen, Hanan','Female','729-77-0468','SPRING_2016',6,'AY_2015_2016',2500,NULL,500,2),
  ('D93246631','Brislen, Hanan','Female','729-77-0468','FALL_2016',7,'AY_2016_2017',2500,7891,1000,3),
  ('D93246631','Brislen, Hanan','Female','729-77-0468','SPRING_2017',8,'AY_2016_2017',2500,NULL,0,3),
  ('E58035898','Cranmore, Erik','Male','767-36-2876','FALL_2016',7,'AY_2016_2017',NULL,16400,3000,1),
  ('E58035898','Cranmore, Erik','Male','767-36-2876','SPRING_2017',8,'AY_2016_2017',NULL,NULL,3000,1),
  ('E58035898','Cranmore, Erik','Male','767-36-2876','FALL_2017',9,'AY_2017_2018',NULL,12327,3000,2),
  ('E58035898','Cranmore, Erik','Male','767-36-2876','SPRING_2018',10,'AY_2017_2018',NULL,NULL,3000,2),
  ('E58035898','Cranmore, Erik','Male','767-36-2876','FALL_2018',11,'AY_2018_2019',NULL,10951,3000,3),
  ('E58035898','Cranmore, Erik','Male','767-36-2876','SPRING_2019',12,'AY_2018_2019',NULL,NULL,3000,3),
  ('E86740640','Mence, Jsandye','Female','248-72-6352','FALL_2015',5,'AY_2015_2016',NULL,6543,2500,1),
  ('E86740640','Mence, Jsandye','Female','248-72-6352','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2500,1),
  ('E86740640','Mence, Jsandye','Female','248-72-6352','FALL_2016',7,'AY_2016_2017',NULL,2768,1384,2),
  ('E86740640','Mence, Jsandye','Female','248-72-6352','SPRING_2017',8,'AY_2016_2017',NULL,NULL,1384,2),
  ('E86740640','Mence, Jsandye','Female','248-72-6352','FALL_2017',9,'AY_2017_2018',NULL,5788,2894,3),
  ('E86740640','Mence, Jsandye','Female','248-72-6352','SPRING_2018',10,'AY_2017_2018',NULL,NULL,0,3),
  ('E86937252','Grisedale, Millie','Male','731-52-8273','FALL_2016',7,'AY_2016_2017',2500,9604,1000,1),
  ('E86937252','Grisedale, Millie','Male','731-52-8273','SPRING_2017',8,'AY_2016_2017',2500,NULL,1000,1),
  ('E86937252','Grisedale, Millie','Male','731-52-8273','FALL_2017',9,'AY_2017_2018',2500,3744,1000,2),
  ('E86937252','Grisedale, Millie','Male','731-52-8273','SPRING_2018',10,'AY_2017_2018',2500,NULL,1000,2),
  ('E86937252','Grisedale, Millie','Male','731-52-8273','FALL_2018',11,'AY_2018_2019',2500,5127,1500,3),
  ('E86937252','Grisedale, Millie','Male','731-52-8273','SPRING_2019',12,'AY_2018_2019',2500,NULL,1500,3),
  ('F15221924','Sigmund, Ulick','Female','471-73-6845','FALL_2014',3,'AY_2014_2015',2500,2687,500,1),
  ('F15221924','Sigmund, Ulick','Female','471-73-6845','SPRING_2015',4,'AY_2014_2015',2500,NULL,500,1),
  ('F20137129','Tomaszynski, Mareah','Female','477-71-2280','FALL_2013',1,'AY_2013_2014',NULL,11511,2250,1),
  ('F20137129','Tomaszynski, Mareah','Female','477-71-2280','SPRING_2014',2,'AY_2013_2014',NULL,NULL,2250,1),
  ('F20137129','Tomaszynski, Mareah','Female','477-71-2280','FALL_2014',3,'AY_2014_2015',NULL,7000,2500,2),
  ('F20137129','Tomaszynski, Mareah','Female','477-71-2280','SPRING_2015',4,'AY_2014_2015',NULL,NULL,0,2),
  ('F31736997','Glastonbury, Kaylee','Female','406-76-6746','FALL_2016',7,'AY_2016_2017',NULL,9116,3000,1),
  ('F31736997','Glastonbury, Kaylee','Female','406-76-6746','SPRING_2017',8,'AY_2016_2017',NULL,NULL,3000,1),
  ('F31736997','Glastonbury, Kaylee','Female','406-76-6746','FALL_2017',9,'AY_2017_2018',NULL,7870,3000,2),
  ('F31736997','Glastonbury, Kaylee','Female','406-76-6746','SPRING_2018',10,'AY_2017_2018',NULL,NULL,3000,2),
  ('G05339047','Benech, Harley','Male','246-16-7579','FALL_2016',7,'AY_2016_2017',3750,19661,1000,1),
  ('G05339047','Benech, Harley','Male','246-16-7579','SPRING_2017',8,'AY_2016_2017',3750,NULL,1000,1),
  ('H05408424','McComiskie, Trixie','Bigender','645-70-8551','FALL_2013',1,'AY_2013_2014',NULL,5339,2000,1),
  ('H05408424','McComiskie, Trixie','Bigender','645-70-8551','SPRING_2014',2,'AY_2013_2014',NULL,NULL,2000,1),
  ('J37464481','Chesser, Hughie','Female','114-81-5109','FALL_2015',5,'AY_2015_2016',2500,13507,500,1),
  ('J37464481','Chesser, Hughie','Female','114-81-5109','SPRING_2016',6,'AY_2015_2016',2500,NULL,500,1),
  ('J37464481','Chesser, Hughie','Female','114-81-5109','FALL_2016',7,'AY_2016_2017',2500,10874,1000,2),
  ('J37464481','Chesser, Hughie','Female','114-81-5109','SPRING_2017',8,'AY_2016_2017',NULL,NULL,3000,2),
  ('K24679099','Plascott, Christie','Male','489-67-8156','FALL_2018',11,'AY_2018_2019',2500,10713,1500,1),
  ('K24679099','Plascott, Christie','Male','489-67-8156','SPRING_2019',12,'AY_2018_2019',2500,NULL,1500,1),
  ('K40145594','Lourens, Venita','Female','446-01-1470','FALL_2016',7,'AY_2016_2017',NULL,23000,3000,1),
  ('K40145594','Lourens, Venita','Female','446-01-1470','SPRING_2017',8,'AY_2016_2017',NULL,NULL,3000,1),
  ('K40145594','Lourens, Venita','Female','446-01-1470','FALL_2017',9,'AY_2017_2018',NULL,12417,3000,2),
  ('K40145594','Lourens, Venita','Female','446-01-1470','SPRING_2018',10,'AY_2017_2018',NULL,NULL,3000,2),
  ('K40145594','Lourens, Venita','Female','446-01-1470','FALL_2018',11,'AY_2018_2019',NULL,14137,3000,3),
  ('K40145594','Lourens, Venita','Female','446-01-1470','SPRING_2019',12,'AY_2018_2019',NULL,NULL,3000,3),
  ('K74912420','Dyche, Stanton','Male','617-74-7902','FALL_2016',7,'AY_2016_2017',3750,5606,1000,1),
  ('K74912420','Dyche, Stanton','Male','617-74-7902','SPRING_2017',8,'AY_2016_2017',3750,NULL,1000,1),
  ('K74912420','Dyche, Stanton','Male','617-74-7902','FALL_2017',9,'AY_2017_2018',3750,6146,1000,2),
  ('K74912420','Dyche, Stanton','Male','617-74-7902','SPRING_2018',10,'AY_2017_2018',3750,NULL,1000,2),
  ('K74912420','Dyche, Stanton','Male','617-74-7902','FALL_2018',11,'AY_2018_2019',NULL,14801,3000,3),
  ('K74912420','Dyche, Stanton','Male','617-74-7902','SPRING_2019',12,'AY_2018_2019',NULL,NULL,0,3),
  ('K75895463','Causon, Francois','Male','741-07-8654','FALL_2014',3,'AY_2014_2015',2500,5500,500,1),
  ('K75895463','Causon, Francois','Male','741-07-8654','SPRING_2015',4,'AY_2014_2015',2500,NULL,500,1),
  ('K75895463','Causon, Francois','Male','741-07-8654','FALL_2015',5,'AY_2015_2016',3750,6500,500,2),
  ('K75895463','Causon, Francois','Male','741-07-8654','SPRING_2016',6,'AY_2015_2016',3750,NULL,500,2),
  ('K92508840','Radsdale, Kitti','Female','807-22-8189','FALL_2014',3,'AY_2014_2015',NULL,5525,2500,1),
  ('K92508840','Radsdale, Kitti','Female','807-22-8189','SPRING_2015',4,'AY_2014_2015',NULL,NULL,2500,1),
  ('M04140455','Surman, Corny','Male','459-90-1657','FALL_2014',3,'AY_2014_2015',NULL,17832,2500,1),
  ('M04140455','Surman, Corny','Male','459-90-1657','SPRING_2015',4,'AY_2014_2015',NULL,NULL,2500,1),
  ('M04140455','Surman, Corny','Male','459-90-1657','FALL_2017',9,'AY_2017_2018',NULL,23823,3000,4),
  ('M04140455','Surman, Corny','Male','459-90-1657','SPRING_2018',10,'AY_2017_2018',NULL,NULL,3000,4),
  ('M04140455','Surman, Corny','Male','459-90-1657','FALL_2018',11,'AY_2018_2019',NULL,9003,3000,5),
  ('M04140455','Surman, Corny','Male','459-90-1657','SPRING_2019',12,'AY_2018_2019',NULL,NULL,3000,5),
  ('M18034106','Weatherley, Jacklyn','Male','545-78-8683','FALL_2016',7,'AY_2016_2017',NULL,7041,3000,1),
  ('M18034106','Weatherley, Jacklyn','Male','545-78-8683','SPRING_2017',8,'AY_2016_2017',NULL,NULL,3000,1),
  ('M18034106','Weatherley, Jacklyn','Male','545-78-8683','FALL_2017',9,'AY_2017_2018',NULL,11075,3000,2),
  ('M18034106','Weatherley, Jacklyn','Male','545-78-8683','SPRING_2018',10,'AY_2017_2018',NULL,NULL,3000,2),
  ('M18034106','Weatherley, Jacklyn','Male','545-78-8683','FALL_2018',11,'AY_2018_2019',NULL,12500,3000,3),
  ('M18034106','Weatherley, Jacklyn','Male','545-78-8683','SPRING_2019',12,'AY_2018_2019',NULL,NULL,3000,3),
  ('M47295908','Baverstock, Joseph','Female','213-10-4039','FALL_2016',7,'AY_2016_2017',3750,8347,1000,1),
  ('M47295908','Baverstock, Joseph','Female','213-10-4039','SPRING_2017',8,'AY_2016_2017',3750,NULL,1000,1),
  ('M47295908','Baverstock, Joseph','Female','213-10-4039','FALL_2017',9,'AY_2017_2018',3750,7438,1000,2),
  ('M47295908','Baverstock, Joseph','Female','213-10-4039','SPRING_2018',10,'AY_2017_2018',3750,NULL,1000,2),
  ('M47295908','Baverstock, Joseph','Female','213-10-4039','FALL_2018',11,'AY_2018_2019',3750,7619,1500,3),
  ('M47295908','Baverstock, Joseph','Female','213-10-4039','SPRING_2019',12,'AY_2018_2019',3750,NULL,1500,3),
  ('M50179489','Sibary, Huntlee','Male','285-01-2474','FALL_2016',7,'AY_2016_2017',NULL,4168,1669,1),
  ('M63090081','Tweedy, Brand','Female','380-27-9176','FALL_2016',7,'AY_2016_2017',NULL,4303,2152,1),
  ('M63090081','Tweedy, Brand','Female','380-27-9176','SPRING_2017',8,'AY_2016_2017',NULL,NULL,2151,1),
  ('M71478688','Caldero, Vergil','Male','293-92-0703','FALL_2013',1,'AY_2013_2014',NULL,12220,2250,1),
  ('M71478688','Caldero, Vergil','Male','293-92-0703','SPRING_2014',2,'AY_2013_2014',NULL,NULL,2250,1),
  ('M88714657','McTavy, Patten','Male','291-71-9240','FALL_2014',3,'AY_2014_2015',3750,2903,500,1),
  ('M88714657','McTavy, Patten','Male','291-71-9240','SPRING_2015',4,'AY_2014_2015',3750,NULL,500,1),
  ('N12280737','Edgeley, Eolande','Female','543-67-1280','FALL_2013',1,'AY_2013_2014',NULL,4287,1250,1),
  ('N12280737','Edgeley, Eolande','Female','543-67-1280','SPRING_2014',2,'AY_2013_2014',NULL,NULL,1250,1),
  ('N58811297','Foulds, Nancy','Male','804-80-1976','FALL_2015',5,'AY_2015_2016',3750,9451,500,1),
  ('N58811297','Foulds, Nancy','Male','804-80-1976','SPRING_2016',6,'AY_2015_2016',3750,NULL,500,1),
  ('N58811297','Foulds, Nancy','Male','804-80-1976','FALL_2016',7,'AY_2016_2017',3750,5500,1000,2),
  ('N58811297','Foulds, Nancy','Male','804-80-1976','SPRING_2017',8,'AY_2016_2017',3750,NULL,1000,2),
  ('N86369195','De Filippi, Loreen','Male','805-93-1770','FALL_2013',1,'AY_2013_2014',NULL,7387,2000,1),
  ('N86369195','De Filippi, Loreen','Male','805-93-1770','SPRING_2014',2,'AY_2013_2014',NULL,NULL,2000,1),
  ('N86369195','De Filippi, Loreen','Male','805-93-1770','FALL_2014',3,'AY_2014_2015',NULL,11213,2250,2),
  ('N86369195','De Filippi, Loreen','Male','805-93-1770','SPRING_2015',4,'AY_2014_2015',NULL,NULL,2250,2),
  ('P01828772','Staggs, Devin','Male','363-04-2781','FALL_2015',5,'AY_2015_2016',NULL,14555,1250,1),
  ('P01828772','Staggs, Devin','Male','363-04-2781','SPRING_2016',6,'AY_2015_2016',NULL,NULL,1250,1),
  ('P45377467','Tipperton, Dougy','Male','895-98-5502','FALL_2018',11,'AY_2018_2019',3750,9641,1500,1),
  ('P45377467','Tipperton, Dougy','Male','895-98-5502','SPRING_2019',12,'AY_2018_2019',3750,NULL,1500,1),
  ('P63727527','Gowthrop, Heriberto','Female','646-76-6881','FALL_2015',5,'AY_2015_2016',NULL,18117,2500,1),
  ('P63727527','Gowthrop, Heriberto','Female','646-76-6881','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2500,1),
  ('P63727527','Gowthrop, Heriberto','Female','646-76-6881','FALL_2016',7,'AY_2016_2017',NULL,5956,2978,2),
  ('P63727527','Gowthrop, Heriberto','Female','646-76-6881','SPRING_2017',8,'AY_2016_2017',NULL,NULL,2978,2),
  ('P65431460','Stothard, Binky','Genderfluid','133-40-5586','FALL_2015',5,'AY_2015_2016',NULL,10472,0,1),
  ('P65431460','Stothard, Binky','Genderfluid','133-40-5586','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2500,1),
  ('P65431460','Stothard, Binky','Genderfluid','133-40-5586','FALL_2016',7,'AY_2016_2017',NULL,7956,3000,2),
  ('P65431460','Stothard, Binky','Genderfluid','133-40-5586','SPRING_2017',8,'AY_2016_2017',NULL,NULL,3000,2),
  ('P97314728','Yesson, Evangelia','Agender','639-47-4305','FALL_2013',1,'AY_2013_2014',NULL,7543,2000,1),
  ('P97314728','Yesson, Evangelia','Agender','639-47-4305','SPRING_2014',2,'AY_2013_2014',NULL,NULL,2000,1),
  ('Q43453095','Coombe, Sibyl','Male','418-34-5408','FALL_2015',5,'AY_2015_2016',3750,5167,500,1),
  ('Q43453095','Coombe, Sibyl','Male','418-34-5408','SPRING_2016',6,'AY_2015_2016',3750,NULL,500,1),
  ('Q53611172','Kenn, Georgi','Male','659-22-4038','FALL_2014',3,'AY_2014_2015',2500,2000,500,1),
  ('Q53611172','Kenn, Georgi','Male','659-22-4038','SPRING_2015',4,'AY_2014_2015',2500,NULL,500,1),
  ('Q66489001','Espinola, Cristabel','Male','453-16-2076','FALL_2013',1,'AY_2013_2014',NULL,10424,1750,1),
  ('Q66489001','Espinola, Cristabel','Male','453-16-2076','SPRING_2014',2,'AY_2013_2014',NULL,NULL,1750,1),
  ('Q71502502','Daspar, Skippy','Female','719-75-9660','FALL_2016',7,'AY_2016_2017',NULL,7985,3000,1),
  ('Q71502502','Daspar, Skippy','Female','719-75-9660','SPRING_2017',8,'AY_2016_2017',NULL,NULL,3000,1),
  ('Q71502502','Daspar, Skippy','Female','719-75-9660','FALL_2017',9,'AY_2017_2018',NULL,8744,3000,2),
  ('Q71502502','Daspar, Skippy','Female','719-75-9660','SPRING_2018',10,'AY_2017_2018',NULL,NULL,3000,2),
  ('Q81889953','MacMenemy, Ferne','Polygender','859-52-8673','FALL_2018',11,'AY_2018_2019',NULL,5325,2663,1),
  ('Q81889953','MacMenemy, Ferne','Polygender','859-52-8673','SPRING_2019',12,'AY_2018_2019',NULL,NULL,2662,1),
  ('S20041899','Mattheus, Hollie','Male','536-86-2696','FALL_2014',3,'AY_2014_2015',NULL,9663,2500,1),
  ('S20041899','Mattheus, Hollie','Male','536-86-2696','SPRING_2015',4,'AY_2014_2015',NULL,NULL,2500,1),
  ('S20041899','Mattheus, Hollie','Male','536-86-2696','FALL_2015',5,'AY_2015_2016',NULL,18117,2500,2),
  ('S20041899','Mattheus, Hollie','Male','536-86-2696','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2500,2),
  ('S20041899','Mattheus, Hollie','Male','536-86-2696','FALL_2016',7,'AY_2016_2017',NULL,5956,2978,3),
  ('S20041899','Mattheus, Hollie','Male','536-86-2696','SPRING_2017',8,'AY_2016_2017',NULL,NULL,2978,3),
  ('S34853024','Benton, Albie','Female','237-38-5060','FALL_2014',3,'AY_2014_2015',NULL,9768,2500,1),
  ('S34853024','Benton, Albie','Female','237-38-5060','SPRING_2015',4,'AY_2014_2015',NULL,NULL,2500,1),
  ('S34853024','Benton, Albie','Female','237-38-5060','FALL_2015',5,'AY_2015_2016',NULL,21940,2500,2),
  ('S34853024','Benton, Albie','Female','237-38-5060','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2500,2),
  ('S34853024','Benton, Albie','Female','237-38-5060','FALL_2016',7,'AY_2016_2017',NULL,5956,2978,3),
  ('S34853024','Benton, Albie','Female','237-38-5060','SPRING_2017',8,'AY_2016_2017',NULL,NULL,2978,3),
  ('S53006504','Alabastar, Dallas','Male','492-67-8197','FALL_2015',5,'AY_2015_2016',NULL,9003,2500,1),
  ('S53006504','Alabastar, Dallas','Male','492-67-8197','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2500,1),
  ('S53006504','Alabastar, Dallas','Male','492-67-8197','FALL_2016',7,'AY_2016_2017',NULL,6998,3000,2),
  ('S53006504','Alabastar, Dallas','Male','492-67-8197','SPRING_2017',8,'AY_2016_2017',NULL,NULL,3000,2),
  ('S53006504','Alabastar, Dallas','Male','492-67-8197','FALL_2017',9,'AY_2017_2018',NULL,14071,3000,3),
  ('S53006504','Alabastar, Dallas','Male','492-67-8197','SPRING_2018',10,'AY_2017_2018',NULL,NULL,3000,3),
  ('S72601761','De Bruyne, Roma','Female','162-24-2388','FALL_2014',3,'AY_2014_2015',NULL,10500,2250,1),
  ('S72601761','De Bruyne, Roma','Female','162-24-2388','SPRING_2015',4,'AY_2014_2015',NULL,NULL,0,1),
  ('T09315752','Witherdon, Rosette','Female','813-77-0775','FALL_2013',1,'AY_2013_2014',NULL,6159,1750,1),
  ('T09315752','Witherdon, Rosette','Female','813-77-0775','SPRING_2014',2,'AY_2013_2014',NULL,NULL,1750,1),
  ('T09315752','Witherdon, Rosette','Female','813-77-0775','FALL_2014',3,'AY_2014_2015',NULL,7275,2500,2),
  ('T09315752','Witherdon, Rosette','Female','813-77-0775','SPRING_2015',4,'AY_2014_2015',NULL,NULL,2500,2),
  ('T46278075','Miller, Tyler','Female','480-70-8991','FALL_2017',9,'AY_2017_2018',2500,18301,1000,1),
  ('T46278075','Miller, Tyler','Female','480-70-8991','SPRING_2018',10,'AY_2017_2018',NULL,NULL,0,1),
  ('T65119659','Braybrook, Genevieve','Male','713-42-7228','FALL_2013',1,'AY_2013_2014',NULL,9636,2000,1),
  ('T65119659','Braybrook, Genevieve','Male','713-42-7228','SPRING_2014',2,'AY_2013_2014',NULL,NULL,0,1),
  ('T65480123','Matushevich, Royal','Female','679-99-9295','FALL_2017',9,'AY_2017_2018',NULL,5988,1600,1),
  ('T65480123','Matushevich, Royal','Female','679-99-9295','SPRING_2018',10,'AY_2017_2018',NULL,NULL,1600,1),
  ('T65480123','Matushevich, Royal','Female','679-99-9295','FALL_2018',11,'AY_2018_2019',NULL,11975,3000,2),
  ('T65480123','Matushevich, Royal','Female','679-99-9295','SPRING_2019',12,'AY_2018_2019',NULL,NULL,3000,2),
  ('T67773866','Scamadine, Karlen','Male','182-46-5001','FALL_2013',1,'AY_2013_2014',NULL,6988,2000,1),
  ('U06698426','Sample, Clarita','Male','838-20-5919','FALL_2017',9,'AY_2017_2018',NULL,8788,3000,1),
  ('U06698426','Sample, Clarita','Male','838-20-5919','SPRING_2018',10,'AY_2017_2018',NULL,NULL,0,1),
  ('U13022629','Renwick, Reid','Male','635-82-3386','FALL_2015',5,'AY_2015_2016',2500,8440,500,1),
  ('U13022629','Renwick, Reid','Male','635-82-3386','SPRING_2016',6,'AY_2015_2016',2500,NULL,500,1),
  ('U36910521','Bourgeois, Edyth','Female','873-28-4206','SPRING_2019',12,'AY_2018_2019',NULL,4457,3000,1),
  ('U64763304','Blonfield, Shirline','Female','723-50-8371','FALL_2014',3,'AY_2014_2015',NULL,6088,2500,1),
  ('U64763304','Blonfield, Shirline','Female','723-50-8371','SPRING_2015',4,'AY_2014_2015',NULL,NULL,2500,1),
  ('U64763304','Blonfield, Shirline','Female','723-50-8371','FALL_2015',5,'AY_2015_2016',NULL,4726,2363,2),
  ('U64763304','Blonfield, Shirline','Female','723-50-8371','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2363,2),
  ('U88552890','Greasley, Frankie','Female','472-70-7681','FALL_2016',7,'AY_2016_2017',NULL,19192,3000,1),
  ('U88552890','Greasley, Frankie','Female','472-70-7681','SPRING_2017',8,'AY_2016_2017',NULL,NULL,3000,1),
  ('V03305384','Hansberry, Ichabod','Female','399-86-5255','FALL_2014',3,'AY_2014_2015',NULL,7000,2500,1),
  ('V03305384','Hansberry, Ichabod','Female','399-86-5255','SPRING_2015',4,'AY_2014_2015',NULL,NULL,2500,1),
  ('V03305384','Hansberry, Ichabod','Female','399-86-5255','FALL_2015',5,'AY_2015_2016',NULL,15142,2500,2),
  ('V03305384','Hansberry, Ichabod','Female','399-86-5255','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2500,2),
  ('V14577573','Tennison, Aldwin','Non-binary','450-28-4950','FALL_2016',7,'AY_2016_2017',3750,9414,1000,1),
  ('V14577573','Tennison, Aldwin','Non-binary','450-28-4950','SPRING_2017',8,'AY_2016_2017',3750,NULL,1000,1),
  ('V14577573','Tennison, Aldwin','Non-binary','450-28-4950','FALL_2017',9,'AY_2017_2018',3750,8767,1000,2),
  ('V14577573','Tennison, Aldwin','Non-binary','450-28-4950','SPRING_2018',10,'AY_2017_2018',3750,NULL,1000,2),
  ('V14577573','Tennison, Aldwin','Non-binary','450-28-4950','FALL_2018',11,'AY_2018_2019',NULL,23913,3000,3),
  ('V14577573','Tennison, Aldwin','Non-binary','450-28-4950','SPRING_2019',12,'AY_2018_2019',NULL,NULL,3000,3),
  ('V63106980','Barsby, Lyn','Male','525-04-8080','FALL_2017',9,'AY_2017_2018',NULL,3554,1777,1),
  ('V63106980','Barsby, Lyn','Male','525-04-8080','SPRING_2018',10,'AY_2017_2018',NULL,NULL,1777,1),
  ('V65433509','Talkington, Anestassia','Female','507-01-4163','FALL_2015',5,'AY_2015_2016',2500,8440,500,1),
  ('V65433509','Talkington, Anestassia','Female','507-01-4163','SPRING_2016',6,'AY_2015_2016',2500,NULL,500,1),
  ('V67497915','Bannell, Morgan','Female','589-55-5344','FALL_2017',9,'AY_2017_2018',2500,4730,1000,1),
  ('V67497915','Bannell, Morgan','Female','589-55-5344','SPRING_2018',10,'AY_2017_2018',2500,NULL,1000,1),
  ('V67497915','Bannell, Morgan','Female','589-55-5344','FALL_2018',11,'AY_2018_2019',2500,8550,1500,2),
  ('V67497915','Bannell, Morgan','Female','589-55-5344','SPRING_2019',12,'AY_2018_2019',2500,NULL,1500,2),
  ('V69332923','Axtonne, Aymer','Female','798-27-8427','FALL_2018',11,'AY_2018_2019',2500,9997,1500,1),
  ('V69332923','Axtonne, Aymer','Female','798-27-8427','SPRING_2019',12,'AY_2018_2019',2500,NULL,1500,1),
  ('V73265082','Whitloe, Lillian','Male','596-11-0400','FALL_2017',9,'AY_2017_2018',NULL,7347,3000,1),
  ('V73265082','Whitloe, Lillian','Male','596-11-0400','SPRING_2018',10,'AY_2017_2018',NULL,NULL,3000,1),
  ('V73265082','Whitloe, Lillian','Male','596-11-0400','FALL_2018',11,'AY_2018_2019',NULL,12765,3000,2),
  ('V73265082','Whitloe, Lillian','Male','596-11-0400','SPRING_2019',12,'AY_2018_2019',NULL,NULL,0,2),
  ('V86175674','Fitzsymons, Courtnay','Female','341-32-1899','FALL_2017',9,'AY_2017_2018',NULL,5890,2945,1),
  ('V86175674','Fitzsymons, Courtnay','Female','341-32-1899','SPRING_2018',10,'AY_2017_2018',NULL,NULL,0,1),
  ('W19919777','Rivitt, Car','Female','159-53-2869','FALL_2013',1,'AY_2013_2014',NULL,NULL,1750,1),
  ('W19919777','Rivitt, Car','Female','159-53-2869','SPRING_2014',2,'AY_2013_2014',NULL,5289,1750,1),
  ('W26407851','Ashfull, Francois','Female','193-27-0984','FALL_2015',5,'AY_2015_2016',NULL,17367,2500,1),
  ('W26407851','Ashfull, Francois','Female','193-27-0984','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2500,1),
  ('W26407851','Ashfull, Francois','Female','193-27-0984','FALL_2016',7,'AY_2016_2017',NULL,500,2500,2),
  ('W26407851','Ashfull, Francois','Female','193-27-0984','SPRING_2017',8,'AY_2016_2017',NULL,NULL,2500,2),
  ('W34534305','Alesio, Dill','Female','685-28-7933','FALL_2015',5,'AY_2015_2016',NULL,13509,2500,1),
  ('W34534305','Alesio, Dill','Female','685-28-7933','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2500,1),
  ('W66614187','Hessle, Nevins','Female','384-78-7617','FALL_2015',5,'AY_2015_2016',NULL,7000,2500,1),
  ('W66614187','Hessle, Nevins','Female','384-78-7617','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2500,1),
  ('W66614187','Hessle, Nevins','Female','384-78-7617','FALL_2016',7,'AY_2016_2017',NULL,5956,2978,2),
  ('W66614187','Hessle, Nevins','Female','384-78-7617','SPRING_2017',8,'AY_2016_2017',NULL,NULL,0,2),
  ('W94335930','Lammin, Barnett','Agender','406-60-1820','FALL_2017',9,'AY_2017_2018',NULL,4448,0,1),
  ('W94335930','Lammin, Barnett','Agender','406-60-1820','SPRING_2018',10,'AY_2017_2018',NULL,NULL,1000,1),
  ('W94335930','Lammin, Barnett','Agender','406-60-1820','FALL_2018',11,'AY_2018_2019',NULL,4272,1500,2),
  ('W94335930','Lammin, Barnett','Agender','406-60-1820','SPRING_2019',12,'AY_2018_2019',NULL,NULL,1500,2),
  ('W99513248','Maxsted, Lanny','Female','112-58-3998','FALL_2013',1,'AY_2013_2014',NULL,NULL,2000,1),
  ('W99513248','Maxsted, Lanny','Female','112-58-3998','SPRING_2014',2,'AY_2013_2014',NULL,7289,2000,1),
  ('W99513248','Maxsted, Lanny','Female','112-58-3998','FALL_2014',3,'AY_2014_2015',NULL,11363,2250,2),
  ('W99513248','Maxsted, Lanny','Female','112-58-3998','SPRING_2015',4,'AY_2014_2015',NULL,NULL,2250,2),
  ('X43805626','Hobell, Courtnay','Male','594-75-7800','FALL_2017',9,'AY_2017_2018',3750,16537,1000,1),
  ('X43805626','Hobell, Courtnay','Male','594-75-7800','SPRING_2018',10,'AY_2017_2018',3750,NULL,1000,1),
  ('X43805626','Hobell, Courtnay','Male','594-75-7800','FALL_2018',11,'AY_2018_2019',3750,18163,1500,2),
  ('X43805626','Hobell, Courtnay','Male','594-75-7800','SPRING_2019',12,'AY_2018_2019',3750,NULL,1500,2),
  ('X44428198','Bonde, Alene','Female','733-32-1482','FALL_2013',1,'AY_2013_2014',NULL,NULL,350,1),
  ('X44428198','Bonde, Alene','Female','733-32-1482','SPRING_2014',2,'AY_2013_2014',NULL,8545,350,1),
  ('X44428198','Bonde, Alene','Female','733-32-1482','FALL_2014',3,'AY_2014_2015',3750,2679,500,2),
  ('X44428198','Bonde, Alene','Female','733-32-1482','SPRING_2015',4,'AY_2014_2015',3750,NULL,500,2),
  ('X44428198','Bonde, Alene','Female','733-32-1482','FALL_2015',5,'AY_2015_2016',3750,6413,500,3),
  ('X44428198','Bonde, Alene','Female','733-32-1482','SPRING_2016',6,'AY_2015_2016',3750,NULL,500,3),
  ('X44428198','Bonde, Alene','Female','733-32-1482','FALL_2016',7,'AY_2016_2017',3750,5500,1000,4),
  ('X44428198','Bonde, Alene','Female','733-32-1482','SPRING_2017',8,'AY_2016_2017',3750,NULL,1000,4),
  ('X87518139','Bassill, Denny','Male','493-43-1278','FALL_2017',9,'AY_2017_2018',NULL,6450,3000,1),
  ('X87518139','Bassill, Denny','Male','493-43-1278','SPRING_2018',10,'AY_2017_2018',NULL,NULL,3000,1),
  ('X87518139','Bassill, Denny','Male','493-43-1278','FALL_2018',11,'AY_2018_2019',NULL,12500,3000,2),
  ('X87518139','Bassill, Denny','Male','493-43-1278','SPRING_2019',12,'AY_2018_2019',NULL,NULL,3000,2),
  ('X92859297','Brunel, Tito','Female','639-54-1286','FALL_2013',1,'AY_2013_2014',NULL,NULL,0,1),
  ('X92859297','Brunel, Tito','Female','639-54-1286','SPRING_2014',2,'AY_2013_2014',NULL,9934,2000,1),
  ('X92859297','Brunel, Tito','Female','639-54-1286','FALL_2014',3,'AY_2014_2015',NULL,5847,2500,2),
  ('X92859297','Brunel, Tito','Female','639-54-1286','SPRING_2015',4,'AY_2014_2015',NULL,NULL,2500,2),
  ('X92859297','Brunel, Tito','Female','639-54-1286','FALL_2015',5,'AY_2015_2016',NULL,10898,2500,3),
  ('X92859297','Brunel, Tito','Female','639-54-1286','SPRING_2016',6,'AY_2015_2016',NULL,NULL,2500,3),
  ('Y92051111','Mickleborough, Adaline','Male','850-32-7957','FALL_2014',3,'AY_2014_2015',NULL,6863,2500,1),
  ('Y92051111','Mickleborough, Adaline','Male','850-32-7957','SPRING_2015',4,'AY_2014_2015',NULL,NULL,2500,1);





/*Load data from MOCK_SSTEM_SCHOLARS_DATA into MockStemData Table*/
INSERT INTO MockStemData (Financial_ID, Student_Name, Gender, Social, Term, TermID, Academic_Year, Life_Scholorship_Amt, Student_Payement_Amt, Stem_Scholorship_Amt, Year_In_Program)
Select FAID_ID, NAME, GENDER, SSN, TERM, TERM_ID, ACADEMIC_YEAR, LIFE_SCHOLARSHIP_AMOUNT, REMAINING_FN, SSTEM_SCHOLARSHIP_AMOUNT, YEAR_IN_PROGRAM
From MOCK_SSTEM_SCHOLARS_DATA_NO_NULL
GO

/*Create Initial Views*/
Create View Year_One_Students AS 
Select  Financial_ID, Student_Name, SUM(Life_Scholorship_Amt) AS Sum_Of_Life_Scholorship_Y1, SUM(Student_Payement_Amt) AS Sum_Of_Student_Payment_Amt_Y1, Year_In_Program
From MockStemData
Where Year_In_Program = 1
Group By Financial_ID, Student_Name, Year_In_Program
GO


Create View Year_Two_Students AS 
Select  Financial_ID, Student_Name, SUM(Life_Scholorship_Amt) AS Sum_Of_Life_Scholorship_Y2, SUM(Student_Payement_Amt) AS Sum_Of_Student_Payment_Amt_Y2, Year_In_Program
From MockStemData
Where Year_In_Program = 2 
Group By Financial_ID, Student_Name, Year_In_Program
GO


Create View Year_Three_Students AS 
Select  Financial_ID, Student_Name, SUM(Life_Scholorship_Amt) AS Sum_Of_Life_Scholorship_Y3, SUM(Student_Payement_Amt) AS Sum_Of_Student_Payment_Amt_Y3, Year_In_Program
From MockStemData
Where Year_In_Program = 3
Group By Financial_ID, Student_Name, Year_In_Program
GO

Create View Year_Four_Students AS 
Select  Financial_ID, Student_Name, SUM(Life_Scholorship_Amt) AS Sum_Of_Life_Scholorship_Y4, SUM(Student_Payement_Amt) AS Sum_Of_Student_Payment_Amt_Y4, Year_In_Program
From MockStemData
Where Year_In_Program = 4
Group By Financial_ID, Student_Name, Year_In_Program
GO

/*  Create View From Year One To Year Two  */
Create View Scholorship_Y1_Y2 AS
Select Year_One_Students.Financial_ID, Year_One_Students.Student_Name, Sum_Of_Life_Scholorship_Y1, Sum_Of_Life_Scholorship_Y2,

CASE 
When Sum_Of_Life_Scholorship_Y1 IS NULL AND Sum_Of_Life_Scholorship_Y2 IS NULL THEN 'NOT EARNED'
When Sum_Of_Life_Scholorship_Y1 IS NULL AND Sum_Of_Life_Scholorship_Y2 IS NOT NULL THEN 'EARNED'
When Sum_Of_Life_Scholorship_Y1 IS NOT NULL AND Sum_Of_Life_Scholorship_Y2 IS NULL THEN 'LOST'
When Sum_Of_Life_Scholorship_Y1 IS NOT NULL AND Sum_Of_Life_Scholorship_Y2 IS NOT NULL THEN 'KEPT'
END AS 'Scholorship_Data' 

From Year_One_Students INNER JOIN Year_Two_Students
ON Year_One_Students.Financial_ID = Year_Two_Students.Financial_ID
GO

/*  Create View From Year Two To Year Three  */
Create View Scholorship_Y2_Y3 AS
Select Year_Two_Students.Financial_ID, Year_Two_Students.Student_Name, Sum_Of_Life_Scholorship_Y2, Sum_Of_Life_Scholorship_Y3,

CASE 
When Sum_Of_Life_Scholorship_Y2 IS NULL AND Sum_Of_Life_Scholorship_Y3 IS NULL THEN 'NOT EARNED'
When Sum_Of_Life_Scholorship_Y2 IS NULL AND Sum_Of_Life_Scholorship_Y3 IS NOT NULL THEN 'EARNED'
When Sum_Of_Life_Scholorship_Y2 IS NOT NULL AND Sum_Of_Life_Scholorship_Y3 IS NULL THEN 'LOST'
When Sum_Of_Life_Scholorship_Y2 IS NOT NULL AND Sum_Of_Life_Scholorship_Y3 IS NOT NULL THEN 'KEPT'
END AS 'Scholorship_Data' 

From Year_Two_Students INNER JOIN Year_Three_Students
ON Year_Two_Students.Financial_ID = Year_Three_Students.Financial_ID
GO

/*  Create View From Year Three To Year Four  */
Create View Scholorship_Y3_Y4 AS
Select Year_Three_Students.Financial_ID, Year_Four_Students.Student_Name, Sum_Of_Life_Scholorship_Y4, Sum_Of_Life_Scholorship_Y3,

CASE 
When Sum_Of_Life_Scholorship_Y3 IS NULL AND Sum_Of_Life_Scholorship_Y4 IS NULL THEN 'NOT EARNED'
When Sum_Of_Life_Scholorship_Y3 IS NULL AND Sum_Of_Life_Scholorship_Y4 IS NOT NULL THEN 'EARNED'
When Sum_Of_Life_Scholorship_Y3 IS NOT NULL AND Sum_Of_Life_Scholorship_Y4 IS NULL THEN 'LOST'
When Sum_Of_Life_Scholorship_Y3 IS NOT NULL AND Sum_Of_Life_Scholorship_Y4 IS NOT NULL THEN 'KEPT'
END AS 'Scholorship_Data' 

From Year_Three_Students INNER JOIN Year_Four_Students
ON Year_Three_Students.Financial_ID = Year_Four_Students.Financial_ID
GO



/* View : Drop amount from year one to year two that did not start with a scholorship*/
Create View Drop_Amt_Y1_Y2 AS 
Select Count(*) AS 'DROP FROM Y1 TO Y2 WITHOUT SCHOLARSHIP'
From Year_One_Students
Where Sum_Of_Life_Scholorship_Y1 IS NULL AND Financial_ID NOT IN 
(
	Select Financial_ID
	From Year_Two_Students
)
GO

/* View : Drop amount from year two to year three that did not start with a scholorship*/
Create View Drop_Amt_Y2_Y3 AS 
Select Count(*) AS 'DROP FROM Y2 TO Y3 WITHOUT SCHOLARSHIP'
From Year_Two_Students
Where Sum_Of_Life_Scholorship_Y2 IS NULL AND Financial_ID NOT IN 
(
	Select Financial_ID
	From Year_Three_Students
)
GO

/* View : Drop amount from year three to year four that did not start with a scholorship*/
Create View Drop_Amt_Y3_Y4 AS 
Select Count(*) AS 'DROP FROM Y3 TO Y4 WITHOUT SCHOLARSHIP'
From Year_Three_Students
Where Sum_Of_Life_Scholorship_Y3 IS NULL AND Financial_ID NOT IN 
(
	Select Financial_ID
	From Year_Three_Students
)
GO

/*Number Of Students Y1 to Y2 */
Create View Students_Earned_Y1_Y2 AS
Select COUNT(*)  as 'EARNED SCHOLARSHIP'
From Scholorship_Y1_Y2
Where Scholorship_Data = 'EARNED'
GO
Create View Students_Kept_Y1_Y2 AS
Select COUNT(*) AS 'KEPT SCHOLARSHIP'
From Scholorship_Y1_Y2
Where Scholorship_Data = 'KEPT'
GO
Create View Students_Lost_Y1_Y2 AS
Select COUNT(*) AS 'LOST SCHOLARSHIP'
From Scholorship_Y1_Y2
Where Scholorship_Data = 'LOST '
GO
Create View Students_Not_Earned_Y1_Y2 AS
Select COUNT(*) AS 'SCHOLARSHIP NOT EARNED'
From Scholorship_Y1_Y2
Where Scholorship_Data = 'NOT EARNED'
GO
Create View Student_Numbers_Y1_Y2 AS 
Select *
From Students_Earned_Y1_Y2 CROSS JOIN Students_Kept_Y1_Y2 CROSS JOIN Students_Lost_Y1_Y2 CROSS JOIN Students_Not_Earned_Y1_Y2 CROSS JOIN Drop_Amt_Y1_Y2
GO


/*Number Of Students Y2 to Y3 */
Create View Students_Earned_Y2_Y3 AS
Select COUNT(*)  as 'EARNED SCHOLARSHIP'
From Scholorship_Y2_Y3
Where Scholorship_Data = 'EARNED'
GO
Create View Students_Kept_Y2_Y3 AS
Select COUNT(*) AS 'KEPT SCHOLARSHIP'
From Scholorship_Y2_Y3
Where Scholorship_Data = 'KEPT'
GO
Create View Students_Lost_Y2_Y3 AS
Select COUNT(*) AS 'LOST SCHOLARSHIP'
From Scholorship_Y2_Y3
Where Scholorship_Data = 'LOST '
GO
Create View Students_Not_Earned_Y2_Y3 AS
Select COUNT(*) AS 'SCHOLARSHIP NOT EARNED'
From Scholorship_Y2_Y3
Where Scholorship_Data = 'NOT EARNED'
GO
Create View Student_Numbers_Y2_Y3 AS 
Select *
From Students_Earned_Y2_Y3 CROSS JOIN Students_Kept_Y2_Y3 CROSS JOIN Students_Lost_Y2_Y3 CROSS JOIN Students_Not_Earned_Y2_Y3 CROSS JOIN Drop_Amt_Y2_Y3
GO


/*Year ONE-TWO*/
Select *
From Scholorship_Y1_Y2

Select *
From Student_Numbers_Y1_Y2

/*Year TWO-THREE*/
Select *
From Scholorship_Y2_Y3

Select *
From Student_Numbers_Y2_Y3

/*Year THREE-FOUR*/
Select *
From Scholorship_Y3_Y4