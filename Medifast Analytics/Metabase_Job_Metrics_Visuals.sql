#Production By User

SELECT
    "Date"::date AS "Date",
sum("Prod_Pass"),"User",

 "Line",
  
   "Fail_Type",
  "Product_Name"

FROM job_metrics
where {{Date}} AND {{Line}} AND {{Fail_Type}} AND {{Product_Name}} AND {{User}}

GROUP BY "Date","Fail_Type","Line","Product_Name","User"


#Production By Line

SELECT
    "Date"::date AS "Date",
  sum("Prod_Pass"),
  "Line",
  
   "Fail_Type",
  "Product_Name",
  "User"
FROM job_metrics
where {{Date}} AND {{Line}} AND {{Fail_Type}} AND {{Product_Name}} AND {{User}}

GROUP BY "Date","Fail_Type","Line","Product_Name","User"
  

#Production By Product

SELECT
    "Date"::date AS "Date",
  sum("Prod_Pass"), "Product_Name",
  "User",

 "Line",
  
   "Fail_Type"

FROM job_metrics
where {{Date}} AND {{Line}} AND {{Fail_Type}} AND {{Product_Name}} AND {{User}}

GROUP BY "Date","Fail_Type","Line","Product_Name","User"
  
  
#Prod Passes and Passes per Minute by Date

SELECT
    "Date"::date AS "Date",
  sum("Prod_Pass") AS "Total Prod Pass",
  avg("Prod_PPM") AS "Avg Prod PPM",
  
  
   "Product_Name",
  "User",
 "Line",
   "Fail_Type"

FROM job_metrics
where {{Date}} AND {{Line}} AND {{Fail_Type}} AND {{Product_Name}} AND {{User}}

GROUP BY "Date","Fail_Type","Line","Product_Name","User"

#Job Metrics Inspection Details
select
"Equip","Company",
"Date"::date AS "Date",
"Site","Line","User","Supplier","Product_ID", "Product_Name","Prod_Pass","Prod_Minutes","Prod_PPM","Prod_Fail_Rate" , "Fail_Type"

  

FROM job_metrics
where {{Date}} AND {{Line}} AND {{Fail_Type}} AND {{Product_Name}} AND {{User}} AND "Prod_Pass">0

GROUP BY "Date","Equip","Company","Site","Line","User","Supplier","Product_ID","Product_Name","Prod_Pass","Prod_Minutes",
"Prod_PPM","Prod_Fail_Rate", "Fail_Type"
ORDER BY "Date" ASC



