-- DATA CLEANING project




SELECT * FROM world_layoffs.layoff_staging;



Create table layoffs_staging
like layoffs;

Select * from layoffs_staging;

Insert layoffs_staging
Select * from layoffs;

Select *,
ROW_number() OVER (
	Partition by company,location,industry,total_laid_off,percentage_laid_off, `date`, stage,
	country, funds_raised_millions) as Row_num
from layoffs_staging;


Select *,
	row_number() over(partition by company, location, industry, total_laid_off,
	percentage_laid_off, `date`, stage, country, funds_raised_millions) as Row_num
From layoffs_staging;

With CTE_one as
(
Select *,
	row_number() over(partition by company, location, industry, total_laid_off,
	percentage_laid_off, `date`, stage, country, funds_raised_millions) as Row_num
From layoffs_staging
)
Select *
From CTE_one
where row_num > 1
;

Select* from layoffs
where company = 'Oda'
;

Select * From world_layoffs.layoff_staging;


-- TO DELETE THE TABLE
 
CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

Select * from layoffs_staging2;

-- retriving the values


Insert into layoffs_staging2
Select *,
	row_number() over(partition by company, location, industry, total_laid_off,
	percentage_laid_off, `date`, stage, country, funds_raised_millions) as Row_num
From layoffs_staging;

DELETE
FROM layoffs_staging2
WHERE row_num > 1;

SELECT *
FROM layoffs_staging2
Where row_num > 1;

-- standardinzing data

SELECT COMPANY,(trim(company))
from layoffs_stagong2;

UPDATE layoffs_staging2
SET company = TRIM(company);

SELECT *
from layoffs_staging2
WHERE industry LIKE 'CRYPTO%';

UPDATE layoffs_staging2
set industry = 'Crypto'
where industry like 'crypto%';



select distinct country
FROM layoffs_staging2
ORDER BY 1; 

select * from layoffs_staging2
where country like 'UNITED STATES%'
;

Update layoffs_staging2
set country='United States'
where country like 'United States%';

SELECT * from layoffs_staging2;

Select `date`,
STR_TO_DATE(`DATE`, '%m/%d/%Y')
From layoffs_staging2;

UPDATE layoffs_staging2
SET `date`= str_to_date(`date`, '%m/%d/%Y');


ALTER TABLE layoffs_staging2
MODIFY COLUMN `date` DATE;

SELECT*
FROM layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;


SELECT Distinct industry
FROM layoffs_staging2
WHERE Industry is NULL
or industry = '';

SELECT *
FROM layoffs_staging2
WHERE company = 'Airbnb';

SELECT t1.industry, t2.industry
FROM layoffs_staging2 t1
JOIN layoffs_staging2 t2
	on t1.company=t2.company
    and t1.location=t2.location
WHERE (t1.industry IS NULL or t1.industry = '')
AND t2.industry IS NOT NULL;

UPDATE layoffs_staging2 t1
JOIN layoffs_staging2 t2
	on t1.company=t2.company
SET t1.industry=t2.industry
(t1.industry IS NULL or t1.industry = '')
AND t2.industry IS NOT NULL;

SELECT* from layoffs_staging2
where company = 'airbnb';

delete from layoffs_staging2
where total_laid_off is null;

SELECT *
FROM layoffs_staging2;

ALTER TABLE layoffs_staging2
DROP COLUMN row_num;














