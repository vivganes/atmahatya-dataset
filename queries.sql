-- This query is used to get the total number of suicides in each year for all causes
    
SELECT 
    year,
    SUM("Total Male") as "Total Male",
    SUM("Total Female") as "Total Female"
FROM "cause-gender-year"
WHERE cause IN ('Total')
GROUP BY year
ORDER BY year ASC;


-- This query is used to get the total number of suicides in each year for each cause for age group of 30-44 years.
SELECT 
    year,
    SUM("30-44 Years Male") as "between 30 and 45 Male",
    SUM("30-44 Years Female") as "between 30 and 45 Female"
FROM "cause-gender-year"
WHERE cause = 'Total'
GROUP BY year
ORDER BY year ASC;


-- This query is used to get the total number of suicides in each year for marriage & family related issues
SELECT 
    year,
    SUM("Total Male") as "Total Male",
    SUM("Total Female") as "Total Female"
FROM "cause-gender-year"
WHERE cause IN 
('Cancellation/Non-Settlement of Marriage',
'Dowry Dispute',
'Family Problems',
'Divorce',
'Other Family Problems',
'Non Settlement of Marriage',
'Dowry Related Issues',
'Extra Marital Affairs',
'Others')
GROUP BY year
ORDER BY year ASC;

-- This query is used to get the total number of suicides in each year for illness issues
SELECT 
    year,
    SUM("Total Male") as "Total Male",
    SUM("Total Female") as "Total Female"
FROM "cause-gender-year"
WHERE cause IN ('Illness', 'Illness (Total)')
GROUP BY year
ORDER BY year ASC;

-- This query is used to get the total number of suicides in each year for mental illness issues

SELECT 
    year,
    SUM("Total Male") as "Total Male",
    SUM("Total Female") as "Total Female"
FROM "cause-gender-year"
WHERE cause IN ('Insanity/Mental Illness', 'Insanity/ Mental
Illness')
GROUP BY year
ORDER BY year ASC;

-- This query is used to get the total number of suicides in each year for addiction related issues
SELECT 
    year,
    SUM("Total Male") as "Total Male",
    SUM("Total Female") as "Total Female"
FROM "cause-gender-year"
WHERE cause IN ('Drug Abuse/Alcoholic Addiction','Drug Abuse/Addiction')
GROUP BY year
ORDER BY year ASC;

-- This query is used to get the total number of suicides in each year for employment-related issues
SELECT 
    year,
    SUM("Total Male") as "Total Male",
    SUM("Total Female") as "Total Female"
FROM "cause-gender-year"
WHERE cause IN ('Unemployment','Professional/Career Problem')
GROUP BY year
ORDER BY year ASC;

-- This query is used to get the total number of suicides in each year for financial issues

SELECT 
    year,
    SUM("Total Male") as "Total Male",
    SUM("Total Female") as "Total Female"
FROM "cause-gender-year"
WHERE cause IN ('Bankruptcy or Sudden change in Economic Status', 'Bankruptcy or Indebtedness','Unemployment','Poverty','Professional/Career Problem')
GROUP BY year
ORDER BY year ASC;

-- This query is used to get the total number of suicides in each year for failure in examination
SELECT 
    year,
    SUM("Total Male") as "Total Male",
    SUM("Total Female") as "Total Female"
FROM "cause-gender-year"
WHERE cause IN ('Failure in Examination')
GROUP BY year
ORDER BY year ASC;

-- This query is used to get the total number of suicides in each year for ideological causes
SELECT 
    year,
    SUM("Total Male") as "Total Male",
    SUM("Total Female") as "Total Female"
FROM "cause-gender-year"
WHERE cause IN ('Ideological Causes/Hero Worshipping')
GROUP BY year
ORDER BY year ASC;

-- This query is used to get the total number of suicides in each year for love affairs
SELECT 
    year,
    SUM("Total Male") as "Total Male",
    SUM("Total Female") as "Total Female"
FROM "cause-gender-year"
WHERE cause IN ('Love Affairs')
GROUP BY year
ORDER BY year ASC;

-- This query is used to get the total number of suicides in each year for other causes

SELECT 
    year,
    SUM("Total Male") as "Total Male",
    SUM("Total Female") as "Total Female"
FROM "cause-gender-year"
WHERE cause IN ('Causes Not Known','Other Causes')
GROUP BY year
ORDER BY year ASC;

-- This query is used to get the total number of suicides in each year for causes not known

SELECT 
    year,
    SUM("<30 Years Male") as "Total Male",
    SUM("<30 Years Female") as "Total Female"
FROM "cause-gender-year"
WHERE cause IN ('Causes Not Known')
GROUP BY year
ORDER BY year ASC;