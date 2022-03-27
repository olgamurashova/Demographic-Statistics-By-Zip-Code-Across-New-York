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

3. Grouping data to find out which jurisdiction/zip code had most participants with breakdown by gender:

SELECT "JURISDICTION NAME", "COUNT PARTICIPANTS", "COUNT FEMALE", "COUNT MALE", "COUNT GENDER UNKNOWN"
FROM public."Demographic Statistics"
GROUP BY 1, 2, 3, 4, 5
ORDER BY 2 DESC;

4. Returning ethnic composition in 11374 and 11375 zip codes:

SELECT "JURISDICTION NAME", "PERCENT PACIFIC ISLANDER", "PERCENT HISPANIC LATINO", "PERCENT AMERICAN INDIAN",
"PERCENT ASIAN NON HISPANIC", "PERCENT WHITE NON HISPANIC", "PERCENT BLACK NON HISPANIC", "PERCENT OTHER ETHNICITY"
FROM public."Demographic Statistics"
WHERE "JURISDICTION NAME" BETWEEN 11374 AND 11375
GROUP BY 1,2,3,4,5,6,7,8;

5. Returning the jurisdiction name which has the highest percent of Asian population:

SELECT "JURISDICTION NAME", "PERCENT ASIAN NON HISPANIC"
FROM public."Demographic Statistics"
GROUP BY 1, 2
ORDER BY 2 DESC;

6. Filtering the data to return permanent resident aliens percent and citizen percent by zip code:

SELECT "JURISDICTION NAME", "PERCENT PERMANENT RESIDENT ALIEN", "PERCENT US CITIZEN"
FROM public."Demographic Statistics"
GROUP BY 1, 2, 3;

7. Filtering 10 zip codes with highest public assistance percent:

SELECT "JURISDICTION NAME", "PERCENT NRECEIVES PUBLIC ASSISTANCE"
FROM public."Demographic Statistics"
GROUP BY 1, 2
ORDER BY 2 DESC
LIMIT 10;






