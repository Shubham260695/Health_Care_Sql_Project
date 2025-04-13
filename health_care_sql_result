# Health Care Project — SQL Queries Overview

This project demonstrates basic SQL operations on a healthcare appointments dataset, 
covering tasks like filtering, inserting, updating, and generating reports. 
Below is a breakdown of each query and its purpose.

---

## 📋 Query Breakdown

### 1️⃣ View All Patient Appointments
```sql
SELECT * FROM sql_project.health;
```
💡 Returns all records from the health table — listing every appointment with patient and doctor details.

---

### 2️⃣ Filter Appointments by Patient ID
```sql
SELECT * FROM sql_project.health
WHERE `Patient ID` = 1042;
```
💡 Fetches all appointment records for Patient ID 1042.

---

### 3️⃣ Schedule a New Appointment
```sql
INSERT INTO sql_project.health
(`Patient ID`, `Doctor ID`, `Appointment Date`, `Appointment Type`, `Duration (min)`, `Status`)
VALUES (1044, 5, '10-03-2023', 'Routine', 30, 'Scheduled');
```
✅ Adds a new appointment for Patient ID 1044 with status "Scheduled".

---

### 4️⃣ Verify New Appointment
```sql
SELECT * FROM sql_project.health
WHERE `Patient ID` = 1044;
```
🔍 Verifies that the new appointment for Patient ID 1044 has been successfully added.

---

### 5️⃣ Update Appointment Status to Completed
```sql
UPDATE sql_project.health  
SET `Status` = 'Completed'  
WHERE `Patient ID` = 1044;
```
🔄 Updates the status of Patient ID 1044’s appointment to "Completed".

---

### 6️⃣ Check Updated Status
```sql
SELECT * FROM sql_project.health
WHERE `Patient ID` = 1044;
```
✅ Confirms the appointment status has been updated to "Completed".

---

### 7️⃣ Cancel an Appointment
```sql
UPDATE sql_project.health
SET `Status` = 'Cancelled'
WHERE `Patient ID` = 1042;
```
🚫 Cancels the appointment for Patient ID 1042.

---

### 8️⃣ Verify Cancellation
```sql
SELECT * FROM sql_project.health
WHERE `Patient ID` = 1042;
```
🔍 Verifies the appointment status is now "Cancelled".

---

### 9️⃣ Generate Daily Appointment Report
```sql
SELECT `Doctor ID`, COUNT(*) AS Todays_Appointment
FROM sql_project.health
WHERE STR_TO_DATE(`Appointment Date`, '%d-%m-%Y') = '2023-10-06'
GROUP BY `Doctor ID`
LIMIT 0, 1000;
```
📅 Generates a report showing the number of appointments per doctor on October 6, 2023.

---

### 🔟 Schedule Appointment via Stored Procedure
```sql
CALL schedule_appointment(1044, 2, '2024-04-15 10:00:00', 'Routine', 30);
```
⚙️ Uses a stored procedure to create an appointment for Patient ID 1044.

---

### 1️⃣1️⃣ Verify Stored Procedure Insertion
```sql
SELECT * FROM sql_project.health 
WHERE `Patient ID` = 1044;
```
✅ Confirms the appointment created by the stored procedure.

---

## 💡 Conclusion

This SQL script handles essential healthcare appointment management tasks, 
from inserting new appointments to updating, canceling, and reporting on them.
