#Inspection Details Quality Health
select
"Equipment","Site", "Date Time","Line","Product ID","Product Name","Job ID","Seal Score",
"Defect Type","Defect Location"
FROM
(
select 
"Equipment" AS "Equipment",
   
  
    "Site" AS "Site",
    "Date_Time" AS "Date Time",
    "Line" AS "Line",
 
  
    "Product_ID" AS "Product ID",
     "Product_Name" AS "Product Name",
    "Job_ID" AS "Job ID",
  
    "Seal_Score" AS "Seal Score",
    "Defect_Type" AS "Defect Type",
    "Defect_Location" AS "Defect Location",
    "Date_Time"::date as "Date"
from inspect_details_quality_health
where {{Date}} AND {{Product_Name}} AND {{Defect_Type}} AND {{Defect_Location}}
group by "Date_Time","Equipment","Site","Line","Product_ID","Product_Name","Job_ID","Seal_Score",
"Defect_Type","Defect_Location","Date"
)AS sub


#Defect Count By Defect Location
select  "Defect_Location",count("Defect_Type") AS "DefectCount" ,"Product_Name" ,"Defect_Type",

"Date_Time"::date as "Date" from inspect_details_quality_health
where {{Date}} AND {{Product_Name}} AND {{Defect_Type}} AND {{Defect_Location}}
group by "Date","Defect_Location","Defect_Type","Product_Name"

#Defect Count By Defect Type
select  "Defect_Type",count(*) AS "DefectCount"  ,"Product_Name" ,
"Defect_Location",

"Date_Time"::date as "Date" from inspect_details_quality_health
where {{Date}}AND {{Product_Name}} AND {{Defect_Type}} AND {{Defect_Location}}
group by "Date","Defect_Type","Product_Name","Defect_Location"

#Defects By Product
select count(*),"Product_Name"  ,
"Defect_Location","Defect_Type",
"Date_Time"::date as "Date" 
from inspect_details_quality_health
where {{Date}} AND {{Product_Name}} AND {{Defect_Type}} AND {{Defect_Location}}
group by "Date","Product_Name","Defect_Location","Defect_Type"

#Min of Seal Score by Date Time
select min("Seal_Score") AS "Seal Score","Date_Time" ,"Product_Name" ,
"Defect_Location","Defect_Type",
"Date_Time"::date as "Date" from inspect_details_quality_health
where {{Date}} AND {{Product_Name}} AND {{Defect_Type}} AND {{Defect_Location}}
group by "Date","Date_Time","Product_Name","Defect_Location","Defect_Type"
