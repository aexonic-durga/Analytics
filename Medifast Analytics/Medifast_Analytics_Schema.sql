
# Job Metrics Create Schema
CREATE TABLE IF NOT EXISTS "job_metrics" ( 

    "Equip" TEXT, 

    "Company" TEXT, 

    "Product_Name" TEXT, 

    "Supplier" TEXT, 

    "Site" TEXT, 

    "Line" INT, 

    "User" TEXT, 

    "Test_Machine" TEXT, 

    "Product_ID" TEXT, 

    "Date" TIMESTAMP, 

    "Job_ID" TEXT, 

    "Start" TEXT, 

    "Stop" TEXT, 

    "Setup_Time" TEXT, 

    "Setup_Pass" INT, 

    "Setup_Fail" INT, 

    "Prod_Pass" INT, 

    "Prod_Fail" INT, 

    "Prod_Time" TEXT, 

    "Prod_PPM" NUMERIC(11, 8), 

    "Prod_Fail_Rate" NUMERIC(13, 12), 

    "Prod_Minutes" INT, 

    "Fail_Mode" TEXT, 

    "Fail_Type" TEXT, 

    "Fail_Quant" INT 

); 

#Inspect Details Create Schema

CREATE TABLE IF NOT EXISTS "inspect_details" ( 

    "Equipment" TEXT, 

    "Company" TEXT, 

    "Product_Name" TEXT, 

    "Site" TEXT, 

    "Line" TEXT, 

    "User" TEXT, 

    "Test_Machine" TEXT, 

    "Product_ID" TEXT, 

    "Date_Time" TIMESTAMP, 

    "Shift" INT, 

    "Lot_Code" TEXT, 

    "Result_P_F" TEXT, 

    "Seal_Score" INT, 

    "Primary_Defect_Type" TEXT, 

    "Defect_Location" INT, 

    "Seal_Integrity_Min_Actual" NUMERIC(2, 1), 

    "Seal_Integrity_Max_Actual" NUMERIC(2, 1), 

    "Seal_Integrity_Min_Tolerance" INT, 

    "Seal_Integrity_Max_Tolerance" INT, 

    "Seal_Integrity_Result" TEXT, 

    "Side_Width_Min_Actual" NUMERIC(5, 4), 

    "Side_Width_Max_Actual" NUMERIC(5, 4), 

    "Side_Width_Min_Tolerance" NUMERIC(3, 2), 

    "Side_Width_Max_Tolerance" NUMERIC(3, 2), 

    "Side_WidthResult" TEXT, 

    "Top_Width_Min_Actual" NUMERIC(4, 3), 

    "Top_Width_Max_Actual" NUMERIC(4, 3), 

    "Top_Width_Min_Tolerance" NUMERIC(3, 2), 

    "Top_Width_Max_Tolerance" NUMERIC(3, 2), 

    "Top_WidthResult" TEXT, 

    "Max_Overlap_Actual" NUMERIC(19, 18), 

    "Max_Overlap_Tolerance" NUMERIC(4, 3), 

    "Max_Overlap_Result" TEXT, 

    "Mass_Actual" NUMERIC(3, 1), 

    "Mass_Min_Tolerance" INT, 

    "Mass_Max_Tolerance" INT, 

    "Mass_Result" TEXT, 

    "ProductIn_Seam" INT, 

    "Foreign_MtrlIn_Pouch" INT, 

    "PPM_L5" NUMERIC(5, 2), 

    "PPM_Today" NUMERIC(11, 8), 

    "SC_Seal_Integrity" INT, 

    "SC_Side_Width" INT, 

    "SC_Top_Width" INT, 

    "SC_Max_Overlap" INT, 

    "SC_Mass" INT, 

    "SC_Prod_In_Seam" INT, 

    "SC_FM_in_Pouch" INT 

); 

#Job Fail Metrics Create Schema
CREATE TABLE IF NOT EXISTS "job_fail_metrics" ( 

    "Job_ID" TEXT, 

    "Date" TIMESTAMP, 

    "Mode" TEXT, 

    "Fail_Type" TEXT, 

    "Quant" INT 

); 
#Inspect Details Quality Health Create Schema
CREATE TABLE IF NOT EXISTS "inspect_details_quality_health" ( 

    "Equipment" TEXT, 

    "Company" TEXT, 

    "Product_Name" TEXT, 

    "Site" TEXT, 

    "Line" TEXT, 

    "User" TEXT, 

    "Test_Machine" TEXT, 

    "Product_ID" TEXT, 

    "Date_Time" TIMESTAMP,. 

    "Job_ID" TEXT, 

    "Result_P_F" TEXT, 

    "Seal_Score" INT, 

    "Defect_Type" TEXT, 

    "Defect_Location" TEXT 

); 