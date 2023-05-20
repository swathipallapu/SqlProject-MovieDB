CREATE DATABASE FILMY;
USE FILMY;
CREATE TABLE DIRECTORS(Dir_id varchar(55),primary key(Dir_id),Dir_name varchar(55));
DESC DIRECTORS;
INSERT INTO DIRECTORS(Dir_id,Dir_name) values("D01","Rajamouli"),("D02","Thrivikram"),("D03","AtleeKumar"),("D04","PrashanthNeel"),("D05","AnuragKashyap"),("D06","Shankar"),("D07","AnjaliMenon"),("D08","NiteshTiwari"),
                                             ("D09","KaranJohar"),("D10","A.R.Murugadoss"),("D11","Srinuvaitla"),("D12","ManiRatnam"),("D13","RishabShetty"),("D14","YashChopra"),("D15","AnuraghBasu"),("D16","KodiRamakrishna"),
                                             ("D17","P Vasu"),("D18","G.Ashok"),("D19","Rahul Sankrithyan"),("D20","M.Rajesh");
SELECT * FROM DIRECTORS;
DROP TABLE DIRECTORS;

CREATE TABLE ACTORS(Actor_id varchar(55),primary key(Actor_id),Actor_name varchar(55),Actor_gender varchar(55),Dir_id varchar(55),foreign key(Dir_id) references DIRECTORS(Dir_id));
INSERT INTO ACTORS(Actor_id,Actor_name,Actor_gender) values("A01","RamCharan","Male"),("A02","NTR","Male"),("A03","Prabhas","Male"),("A04","Yash","Male"),("A05","Nazriya","Female"),("A06","Arya","Male"),
                                                           ("A07","RanaNaidu","Male"),("A08","Anushka Shetty","Female"),("A09","RamyaKrishna","Female"),("A10","Thammana","Female"),("A11","Alia Bhatt","Female"),
                                                           ("A12","RajniKanth","Male"),("A13","KamalHassan","Male"),("A14","RishabShetty","Male"),("A15","DulquerSalmaan","Male"),("A16","SharukhKhan","Male"),("A17","Madhavan","Male"),
                                                           ("A18","AishwaryaRaiBachan","Female"),("A19","DeepikaPadukone","Female"),("A20","TrishKrishnan","Female"),("A21","Nayantara","Female"),("A22","VijayThalapathy","Male"),
                                                           ("A23","AjithKumar","Male"),("A24","AamirKhan","Male"),("A25","HrithikRoshan","Male"),("A26","Kajol","Female"),("A27","RanbirKapoor","Male"),("A28","PriyankaChopra","Female"),
                                                           ("A29","Bramhanandam","Male"),("A30","Santhanam","Male"),("A31","Vadivelu","Male"),("A32","Kicha Sudeep","Male"),("A33","Akshay Kumar","Male"),("A34","AmithabhBachan","Male"),
                                                           ("A35","Kareena Kapoor","Female"),("A36","Vikram","Male"),("A37","VijayDevarakonda","Male");
												
SELECT * FROM ACTORS;
DROP TABLE ACTORS;

CREATE TABLE LANGUAGES(Lang_id varchar(55),primary key(Lang_id),Lang_name varchar(55));
INSERT INTO LANGUAGES(Lang_id,Lang_name) values("L1","Telugu"),("L2","Hindi"),("L3","English"),("L4","Malayalam"),("L5","Tamil"),("L6","Kannada");
SELECT * FROM LANGUAGES;

CREATE TABLE GENRE(Genre_id varchar(55),primary key(Genre_id),Genre_name varchar(55),Lang_id varchar(55), foreign key(Lang_id) references LANGUAGES(Lang_id));
INSERT INTO GENRE(Genre_id,Genre_name) values("G1","Drama"),("G2","Horror"),("G3","Thriller"),("G4","Action"),("G5","Comedy");
SELECT * FROM GENRE;


CREATE TABLE MOVIES(Movie_id varchar(55),primary key(Movie_id),Movie_title varchar(200),Movie_rel_year year,Dir_id varchar(100),foreign key(Dir_id) references DIRECTORS(Dir_id),
                    Producer varchar(150),Lang_id varchar(55),foreign key(Lang_id) references LANGUAGES(Lang_id),Genre_id varchar(55),foreign key(Genre_id) references GENRE(Genre_id),
                    Actor_id  varchar(100),foreign key(Actor_id) references ACTORS(Actor_id), RunTime varchar(55));
INSERT INTO MOVIES(Movie_id,Movie_title,Movie_rel_year,Dir_id,Producer,Lang_id,Genre_id,Actor_id,RunTime)
	                             values("M01","RRR",2022,"D01","DVV Entertainments","L1","G1","A02","2h 40min"),
									   ("M02","Bahubali",2019,"D01","Arka Media Works","L1","G1","A03","2h 30min"),
									   ("M03","KGF",2015,"D04","Arka media Works","L6","G4","A04","2h 40min"),
                                       ("M04","Raja Rani",2013,"D03","Fox Star Studios","L5","G1","A06","2h 30min"),
                                       ("M05","ROBO 2.0" ,2010,"D06","Kalanithi Maran","L5","G4","A12","2h 10min"),
                                       ("M06","KabhiKushiKabiGum",2001,"D09","Yash Johar","L2","G1","A16","2h 20min"),
                                       ("M07","Dangal",2016,"D08","Kiran Rao","L2","G1","A24","2hrs"),
                                       ("M08","Nayakan",1987,"D12","Muktha Srinivasan","L5","G1","A13","2h 20min"),
                                       ("M09","Ponniyan Selvan",2022,"D12","Mani Ratnam Productions","L5","G1","A20","2h 40min"),
                                       ("M10","Ok Kanmani",2015,"D12","Mani Ratnam productions","L5","G1","A15","2hrs"),
                                       ("M11","Arundathi",2009,"D16","Shyam Prasad Reddy","L1","G2","A08","2hrs"),
									   ("M12","Chandramukhi",2005,"D17","Ram Kumar Ganesan","L1","G2","A12","2hrs 40min"),
									   ("M13","Bhagamathi",2018,"D18","G ASHOK","L1","G2","A08","2hrs 20Mins"),
									   ("M14","TaxiWaala",2018,"D19","Srinivasa Kumar Naidu","L1","G2","A37","2hrs"),
									   ("M15","Alai Payuthey",2000,"D12","Mani Ratnam Productions","L5","G1","A17","2h 15min"),
                                       ("M16","Yuva",2004,"D12","Mani Ratnam Productions","L5","G1","A17","2h 10min"),
                                       ("M17","Kannathil Muthamittal",2002,"D12","Mani Ratnam Productions","L5","G1","A17","2h 3min"),
                                       ("M18","Boss Engira Bhaskaran",2012,"D20","Arya","L5","G5","A06","2hrs 4mins");
                                       
							
                                       
SELECT * FROM MOVIES;
DROP TABLE MOVIES;

CREATE TABLE MOVIE_CAST(Movie_id varchar(55),foreign key(Movie_id) references MOVIES(Movie_id), Actor_id varchar(55),foreign key(Actor_id) references ACTORS(Actor_id), Role varchar(55));
INSERT INTO MOVIE_CAST(Movie_id,Actor_id,Role) values("M02","A03","Hero" ),("M02","A07","Villian"),("M02","A10","Heroine"),("M02","A08","Heroine2"),("M02","A09","Supporting Character"),
                                                     ("M01","A01","Hero" ),("M01","A02","Hero2" ),("M01","A11","Heroine"),("M05","A12","Hero"),("M05","A18","Heroine"),("M05","A33","Villian"),
                                                     ("M06","A16","Hero"),("M06","A25","Hero"),("M06","A34","Main Character"),("M06","A33","Heroine"),("M06","A26","Heroine2"),
                                                     ("M17","A30","Comedian"),("M18","A30","Comedian"),("M04","A30","Comedian"),("M05","A30","Comedian");
    
SELECT * FROM MOVIE_CAST;
DROP TABLE MOVIE_CAST;
CREATE TABLE REVIEWERS(Rev_id varchar(55),primary key(Rev_id),Rev_name varchar(55),Rev_email_Id varchar(200));
INSERT INTO REVIEWERS(Rev_id,Rev_name,Rev_email_Id) values("Rv01","Santhosh","Santhosh91@gmail.com"),
                                                       ("Rv02","Arjun","Arjun@gmail.com"),
                                                       ("Rv03","Shubham","Shubham@gmail.com");
   SELECT * FROM REVIEWERS;   
   DROP TABLE REVIEWERS;
  
CREATE TABLE RATINGS(Rating_id varchar(55), primary key(Rating_id),Rev_id varchar(55),foreign key(Rev_id) references REVIEWERS(Rev_id),Movie_id varchar(55),foreign key(Movie_id) references MOVIES(Movie_id),Rating_star float,RatingDate date);
INSERT INTO RATINGS(Rating_id,Rev_id,Movie_id,Rating_star,RatingDate) values("Rt01","Rv01","M01",5.0,'2022-01-11'),("Rt02","Rv01","M01",5,'2022-01-17'),("Rt03","Rv02","M02",4.3,'2020-01-11'),
                                                                              ("Rt04","Rv03","M03",3.2,'2015-01-11'),("Rt05","Rv01","M01",5.0,'2022-01-11'),("Rt06","Rv01","M01",5.0,'2022-01-11'),
                                                                              ("Rt07","Rv01","M01",5.0,'2022-01-11'),("Rt08","Rv01","M01",5.0,'2022-01-11'),("Rt09","Rv01","M01",5.0,'2022-01-11'),
                                                                              ("Rt10","Rv01","M01",5.0,'2022-01-11'),("Rt11","Rv03","M01",5.0,'2022-01-11'),("Rt12","Rv03","M01",5.0,'2022-01-11'),
                                                                              ("Rt13","Rv02","M01",5.0,'2022-01-11'),("Rt14","Rv01","M06",4.8,'2000-08-01'),("Rt15","Rv02","M05",4.2,'2000-07-08'),
                                                                              ("Rt16","Rv03","M09",3.95,'1999-07-08');
                                                                              
	SELECT * FROM RATINGS;	
	
  DROP TABLE RATINGS; 

SELECT Movie_title,Genre_name,Lang_name FROM MOVIES JOIN GENRE ON MOVIES.Genre_id = GENRE.Genre_id JOIN LANGUAGES on MOVIES.Lang_id = LANGUAGES.Lang_id WHERE GENRE.Genre_id = "G2" AND Lang_name = "Telugu";

SELECT Actor_Name,Movie_title FROM ACTORS JOIN MOVIES ON ACTORS.Actor_Id = MOVIES.Actor_ID WHERE Actor_name = "Madhavan";
SELECT Movie_title,Dir_name FROM MOVIES JOIN DIRECTORS ON MOVIES.Dir_id = DIRECTORS.Dir_id WHERE DIRECTORS.Dir_id = "D12"; 
SELECT Movie_title,Dir_name,Actor_Name FROM MOVIES JOIN DIRECTORS ON MOVIES.Dir_id = DIRECTORS.Dir_id JOIN ACTORS ON ACTORS.Actor_id = MOVIES.Actor_id WHERE ACTORS.Actor_id="A17" AND DIRECTORS.Dir_id="D12";
SELECT Movie_title,movie_rel_year FROM MOVIES WHERE movie_rel_year BETWEEN 2020 AND 2023;


SELECT GROUP_CONCAT(DISTINCT(Actor_Name)) AS Starring,Movie_title FROM MOVIES JOIN MOVIE_CAST ON MOVIES.Movie_id = MOVIE_CAST.Movie_id JOIN ACTORS on ACTORS.Actor_id = MOVIE_CAST.Actor_id WHERE Movie_title = "RRR";
SELECT Actor_Name,Role,Movie_title FROM MOVIES JOIN MOVIE_CAST ON MOVIES.Movie_id = MOVIE_CAST.Movie_id JOIN ACTORS ON ACTORS.Actor_id = MOVIE_CAST.Actor_id WHERE Actor_Name = "Santhanam";
SELECT GROUP_CONCAT(Actor_Name) AS Starring,Movie_title FROM MOVIES AS M JOIN MOVIE_CAST AS MC ON MC.Movie_id = M.Movie_id JOIN ACTORS AS A ON A.Actor_id = MC.Actor_id WHERE Movie_title = "RRR";
SELECT Actor_Name,Movie_Title FROM MOVIES AS M JOIN ACTORS AS A ON A.Actor_id = M.Actor_id;                                                                              
																		

SELECT DISTINCT(Movie_title),Rating_star FROM MOVIES JOIN RATINGS ON MOVIES.Movie_id = RATINGS.Movie_id WHERE Rating_star BETWEEN 4 AND 5;

SELECT Rev_name,Rating_star,Movie_title FROM MOVIES JOIN RATINGS ON MOVIES.Movie_id = RATINGS.Movie_id JOIN REVIEWERS ON REVIEWERS.Rev_id = RATINGS.Rev_id;
																	
                                                                
SELECT movie_title,Rev_id,Rating_star,
 CASE
        WHEN 
            COUNT(*) OVER (PARTITION BY Rev_id) > 5
	    THEN 'Fake'
        ELSE 'Genuine'
END AS Rating_Type
 FROM RATINGS JOIN MOVIES ON RATINGS.Movie_id = MOVIES.Movie_id;
 



SELECT COUNT(*) as Fake_Ratings,movie_title FROM RATINGS JOIN MOVIES ON RATINGS.Movie_id = MOVIES.Movie_id WHERE Movie_title =  "RRR" AND Rev_id IN (SELECT Rev_id  FROM RATINGS WHERE Movie_title =  "RRR" GROUP BY Rev_id HAVING COUNT(*) > 5);

SELECT COUNT(*) as Genuine_ratings,movie_title FROM RATINGS JOIN MOVIES ON RATINGS.Movie_id = MOVIES.Movie_id WHERE Movie_title =  "RRR" AND Rev_id IN (SELECT Rev_id  FROM RATINGS WHERE Movie_title =  "RRR" GROUP BY Rev_id HAVING COUNT(*) < 5);

select count(*) as Total_ratings,movie_title FROM RATINGS JOIN MOVIES ON RATINGS.Movie_id = MOVIES.Movie_id WHERE Movie_title =  "RRR";

 SELECT DISTINCT(Rev_id),Movie_title,
 CASE 
     WHEN
         COUNT(*) OVER (PARTITION BY Rev_id)>5
	THEN 'Fake'
    ELSE 'Genuine'
  END AS Rating_type
FROM RATINGS JOIN MOVIES ON RATINGS.Movie_id = MOVIES.Movie_id WHERE Movie_title =  "RRR";



SELECT 
     Movie_title,
     COUNT(*) as Total_Ratings,
	 COUNT(CASE WHEN Rev_id IN (SELECT Rev_id FROM RATINGS WHERE Movie_title = "RRR" GROUP BY Rev_id HAVING COUNT(*) < 5)THEN 1 END ) as Genuine_Ratings,
     COUNT(CASE WHEN Rev_id IN (SELECT Rev_id FROM RATINGS WHERE Movie_title = "RRR" GROUP BY Rev_id HAVING COUNT(*) > 5)THEN 1 END) as Fake_Ratings
FROM RATINGS 
JOIN MOVIES 
    ON RATINGS.Movie_id = MOVIES.Movie_id 
WHERE Movie_title = "RRR";


