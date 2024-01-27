select * from ocd_patient_dataset;

##Retrieve all columns for patients with a Y-BOCS (Yale-Brown Obsessive Compulsive Scale) score for obsessions greater than 20.

select `Y-BOCS Score (Obsessions)` from ocd_patient_dataset 
where `Y-BOCS Score (Obsessions)` >20;

## List the unique ethnicities present in the dataset.

select distinct Ethnicity from ocd_patient_dataset;

## Count the number of patients for each gender:

select Gender , count(*) as Total_Patient from ocd_patient_dataset
group by Gender;

##Find the average duration of symptoms (in months) for patients with a family history of OCD.

select Avg("Duration of symptoms(months)") as avgduration from ocd_patient_dataset 
where `Family History of OCD` = 'yes';

##Retrieve the details of patients with a depression diagnosis but without an anxiety diagnosis.

select * from ocd_patient_dataset 
where `Depression Diagnosis` = 'Yes' and `Anxiety Diagnosis` = 'No';

## Find the education level with the highest number of patients:

select `Education Level` , count(*) as Total_Patient from ocd_patient_dataset
group by `Education Level`;

## Calculate the average Y-BOCS score for obsessions and compulsions separately.

select avg(`Y-BOCS Score (Obsessions)`) , avg(`Y-BOCS Score (Compulsions)`) from ocd_patient_dataset;

## Identify patients with no previous diagnoses:

select * from ocd_patient_dataset
where `Previous Diagnoses` = 'None';

## Count the number of patients for each obsession type:

select `Obsession Type`,count(*) as total_ob_type from ocd_patient_dataset
group by `Obsession Type`;

## Retrieve the patient IDs and ages for patients who are currently on medications.

select * from ocd_patient_dataset 
where `Medications`<> 'None';

## Retrieve the details of patients with the highest Y-BOCS score for compulsions.

select * from ocd_patient_dataset
order by `Y-BOCS Score (Compulsions)` desc;

## Count the number of patients for each Marital Status.

select `Marital Status`,count(*) as total_patiient_in_each_martialstatus from ocd_patient_dataset
group by `Marital Status`;

## List the unique education levels of patients in alphabetical order

select distinct `Education Level` from ocd_patient_dataset
order by `Education Level`;

## Find the patient with the longest duration of symptoms.

select * from ocd_patient_dataset 
order by `Duration of Symptoms (months)` desc;

## Calculate the total number of patients in the dataset:

select count(*) as total_pat from ocd_patient_dataset;

## Retrieve the patient IDs and ages for patients aged 25 or younger.

select `Patient ID` , `Age` from ocd_patient_dataset 
where `Age` <= 25
order by `Age`;

## Find the ethnicity with the most patients.

select `Ethnicity` , count(*) as total_pt from ocd_patient_dataset
group by `Ethnicity` 
order by total_pt desc;

## Retrieve the patients with a Y-BOCS Score for obsessions or compulsions greater than 25.

select *from ocd_patient_dataset
where `Y-BOCS Score (Obsessions)` > 25 and  `Y-BOCS Score (Compulsions)` > 25;

## List the patients with an OCD diagnosis date in the year 2022.

select * from ocd_patient_dataset
where year(`OCD Diagnosis Date`)=2022;







