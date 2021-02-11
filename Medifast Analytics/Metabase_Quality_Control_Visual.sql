#Inspections per Minute
select avg("PPM_L5"),avg("PPM_Today"),"Date_Time" 

,"Date_Time"::date as "Date"
from inspect_details 
where {{Date}} group by "Date_Time"



#Seal Score
select avg("Seal_Score") ,"Date_Time" ,
"Date_Time"::date as "Date" from inspect_details 
where {{Date}}
group by "Date","Date_Time"



#Primary Defect Type Summary
select sum("Seal_Score"),"Primary_Defect_Type" ,

"Date_Time"::date as "Date"
from inspect_details  
where "Primary_Defect_Type" is not null AND  {{Date}}
group by "Primary_Defect_Type",  "Date"

#Inspection Details- Medifast Defects
select  
"Equipment","Site","Date Time","Line","User","Lot Code","Shift","Side Width Min Actual",
"Top Width Min Actual", "Foreign Mtrl In Pouch","Product In Seam","Seal Score"

from(
select
"Equipment" AS "Equipment",
    "Site" AS "Site",
    "Date_Time" AS "Date Time",
"Line" AS "Line",
    "User" AS "User",
    "Lot_Code" AS "Lot Code",
     "Shift" AS "Shift",
      "Side_Width_Min_Actual" AS "Side Width Min Actual",
       "Top_Width_Min_Actual" AS "Top Width Min Actual",
        "Foreign_MtrlIn_Pouch" AS "Foreign Mtrl In Pouch",
         "ProductIn_Seam" AS "Product In Seam",
         "Seal_Score" AS "Seal Score",

"Date_Time"::date as "Date" from inspect_details 
where {{Date}}
group by "Date","Date_Time","Equipment","Site","Line","User","Lot_Code","Shift","Side_Width_Min_Actual",
"Top_Width_Min_Actual","Foreign_MtrlIn_Pouch","ProductIn_Seam","Seal_Score"
)AS sub


#Top Width Inspections (inches)

select 
avg("Top_Width_Max_Tolerance") AS "Top_Width_Max_Tolerance",
min("Top_Width_Min_Actual") AS "Top_Width_Min_Actual",
avg("Top_Width_Min_Tolerance") AS "Top_Width_Min_Tolerance",
"Date_Time",

"Date_Time"::date as "Date" from inspect_details 
where {{Date}}
group by "Date","Date_Time"

#Side Width Inspections (inches)
select 
avg("Side_Width_Max_Tolerance") AS "Side_Width_Max_Tolerance",
min("Side_Width_Min_Actual") AS "Side_Width_Min_Actual"
,avg("Side_Width_Min_Tolerance") AS "Side_Width_Min_Tolerance",
"Date_Time",

"Date_Time"::date as "Date" from inspect_details 
where {{Date}}
group by "Date","Date_Time"


