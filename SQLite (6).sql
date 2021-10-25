/* Top 10 donation from gender male*/

SELECT * FROM Donation_Data
WHERE gender = 'Male' AND donation >= 400
ORDER by Donation DESC
LIMIT 10;

/* LEFT JOIN of donorDonor_Data in donaDonation_Data*/
  
  SELECT * FROM Donation_Data
  LEFT Join Donor_Data
  ON Donation_Data.id = Donor_Data.id;


  
/* Joining donDonation_Data with donor.Donor_Data*/
SELECT * FROM Donation_Data
join Donor_Data
oN Donation_Data.id = Donor_Data.id;
     
     
/* How many male donor donated more then 400*/     
     SELECT COUNT(gender)
     from Donation_Data
     WHERE gender = 'Male' AND donation >= 400;
     
 /* How many female donor donated more then 400 */    
      SELECT COUNT(gender)
      FROM Donation_Data
      WHERE gender = 'Female' AND donation >= 400;
      
/* Average donation donated my male*/     
        
           SELECT AVG(donation)
           from Donation_Data 
           where gender = 'Male';
           
/* Average donation donated by female*/

SELECT AVG(donation)
from Donation_Data
where gender = 'Female';
           
           
/* Number of donor who have never donated*/
Select COUNT(donation_frequency)
from Donor_Data
WHERE donation_frequency = 'Never';


/* Total donation */

SELECT SUM(donation)
FROM Donation_Data;


/* Male donor working in Marketing job field residing in California state*/
SELECT *
FROM Donation_Data
WHERE job_field = 'Marketing' and gender = 'Male' and state = 'California';
     
     
/* Least donor */

SELECT * FROM Donation_Data
where donation <= 20
ORDER by donation DESC
Limit 30;


/* Top donor */
SELECT * FROM Donation_Data
where donation >= 400
ORDER by donation DESC
Limit 30;


/* Highest donor with name, state and job_field*/

SELECT first_name,state,job_field
 from Donation_Data
 where donation >= 400
 Order by donation
 Limit 10;


/* Top job field according to the donation*/

SELECT job_field from Donation_Data
where donation >=400
order by donation 
limit 10;

/* Lowest donors with the first name, state and respective job_field*/
SELECT first_name,job_field,state from Donation_Data
where donation<=20
order by donation 
Limit 10;
 
/* Lowest donors state*/

SELECT state FROM Donation_Data
WHERE donation <= 20
Order by donation DESC
Limit 10;

/* Total Number of donation per state*/

SELECT state,COUNT(*)
FROM Donation_Data
GROUP BY state
ORDER by COUNT(*) DESC
Limit 10;

/* Total Number of donors according to the gender*/
SELECT gender, COUNT(*)
FROM Donation_Data
GROUP BY gender
ORDER BY COUNT(*) DESC;

/* State having more then 50 donors*/

SELECT state,COUNT(*)
FROM Donation_Data
GROUP BY state
HAVING COUNT(*)>50
ORDER by COUNT(*) DESC;





/* FROM DONOR_DATA*/

/* top daily donors with there respective cars, favourite_color and movie genre they like*/
SELECT car,movie_genre, favourite_colour,donation_frequency FROM Donor_Data
WHERE donation_frequency = 'Daily'
order by donation_frequency
LIMIT 10;


/* List of never donation frequency with there cars, movie_genre they like and favourite colour.*/
SELECT car,movie_genre, favourite_colour,donation_frequency FROM Donor_Data
WHERE donation_frequency = 'Never'
order by donation_frequency
LIMIT 10;
/* 	Number of daily donors*/
SELECT COUNT(donation_frequency)
FROM Donor_Data
Where donation_frequency = 'Daily';

/* Number of never donated doners*/

SELECT COUNT(donation_frequency)
FROM Donor_Data
Where donation_frequency = 'Never';

/* Number of donation frequency*/

SELECT donation_frequency, count(*)
from Donor_Data
GROUP BY donation_frequency;
