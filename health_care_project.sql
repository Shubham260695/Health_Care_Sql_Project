SELECT * FROM sql_project.health;

-- Filtering the data with 'patient ID'
select * from sql_project.health
    where `Patient ID` = 1042;
    
-- Scheduling the new appointments
    insert into sql_project.health(
`Patient ID`,
`Doctor ID` ,
`Appointment Date`,
`Appointment Type` ,
`Duration (min)` ,
`Status`)values
(1044,5,'10-03-2023','Routine',30,'Scheduled');

-- checking the new inserting data
select * from sql_project.health
    where `Patient ID` = 1044;
    
-- Updating the Appointment Status

UPDATE sql_project.health  
SET `Status` = 'Completed'  
WHERE `Patient ID` = 1044;

select * from sql_project.health
    where `Patient ID` = 1044;
    
-- canceling the appointment

update sql_project.health
set `Status` = 'Cancelled'
where `Patient ID`= 1042;

select * from sql_project.health
    where `Patient ID` = 1042;

-- Genereating daily report for appointment

SELECT `Doctor ID`, COUNT(*) AS Todays_Appointment
FROM sql_project.health
WHERE STR_TO_DATE(`Appointment Date`, '%d-%m-%Y') = '2023-10-06'
GROUP BY `Doctor ID`
LIMIT 0, 1000;

-- Stored Procedure Scheduling an Appointment

call schedule_appointment(1044, 2, '2024-04-15 10:00:00', 'Routine', 30);
select * from sql_project.health 
where `Patient ID` = 1044;

