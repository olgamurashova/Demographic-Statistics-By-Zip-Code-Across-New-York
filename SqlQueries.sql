1. Creating the table shell to import the dataset:

CREATE TABLE IF NOT EXISTS public."Demographic Statistics"
(
    "JURISDICTION NAME" numeric,
    "COUNT PARTICIPANTS" numeric,
    "COUNT FEMALE" numeric,
    "PERCENT FEMALE" numeric,
    "COUNT MALE" numeric,
    "PERCENT MALE" numeric,
    "COUNT GENDER UNKNOWN" numeric,
    "PERCENT GENDER UNKNOWN" numeric,
    "COUNT GENDER TOTAL" numeric,
    "PERCENT GENDER TOTAL" numeric,
    "COUNT PACIFIC ISLANDER" numeric,
    "PERCENT PACIFIC ISLANDER" numeric,
    "COUNT HISPANIC LATINO" numeric,
    "PERCENT HISPANIC LATINO" numeric,
    "COUNT AMERICAN INDIAN" numeric,
    "PERCENT AMERICAN INDIAN" numeric,
    "COUNT ASIAN NON HISPANIC" numeric,
    "PERCENT ASIAN NON HISPANIC" numeric,
    "COUNT WHITE NON HISPANIC" numeric,
    "PERCENT WHITE NON HISPANIC" numeric,
    "COUNT BLACK NON HISPANIC" numeric,
    "PERCENT BLACK NON HISPANIC" numeric,
    "COUNT OTHER ETHNICITY" numeric,
    "PERCENT OTHER ETHNICITY" numeric,
    "COUNT ETHNICITY UNKNOWN" numeric,
    "PERCENT ETHNICITY UNKNOWN" numeric,
    "COUNT ETHNICITY TOTAL" numeric,
    "PERCENT ETHNICITY TOTAL" numeric,
    "COUNT PERMANENT RESIDENT ALIEN" numeric,
    "PERCENT PERMANENT RESIDENT ALIEN" numeric,
    "COUNT US CITIZEN" numeric,
    "PERCENT US CITIZEN" numeric,
    "COUNT OTHER CITIZEN STATUS" numeric,
    "PERCENT OTHER CITIZEN STATUS" numeric,
    "COUNT CITIZEN STATUS UNKNOWN" numeric,
    "PERCENT CITIZEN STATUS UNKNOWN" numeric,
    "COUNT CITIZEN STATUS TOTAL" numeric,
    "PERCENT CITIZEN STATUS TOTAL" numeric,
    "COUNT RECEIVES PUBLIC ASSISTANCE" numeric,
    "PERCENT RECEIVES PUBLIC ASSISTANCE" numeric,
    "COUNT NRECEIVES PUBLIC ASSISTANCE" numeric,
    "PERCENT NRECEIVES PUBLIC ASSISTANCE" numeric,
    "COUNT PUBLIC ASSISTANCE UNKNOWN" numeric,
    "PERCENT PUBLIC ASSISTANCE UNKNOWN" numeric,
    "COUNT PUBLIC ASSISTANCE TOTAL" numeric,
    "PERCENT PUBLIC ASSISTANCE TOTAL" numeric
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Demographic Statistics"
    OWNER to postgres;
    
2. Importing dataset:

COPY Public."Demographic Statistics"
FROM 'C:\Users\omdre\OneDrive\Desktop\Codecademy\Demographic Statistics By Zip Code\Demographic_Statistics_By_Zip_Code.csv'

3. 
