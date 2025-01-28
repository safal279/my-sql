-- DATA cleaning

Select * 
From world_layoffs_project.layoffs;

-- to copy the original data 

Create table layoffs_staging
like layoffs;

insert layoffs_staging
Select * from layoffs
;



SELECT * FROM layoffs_staging;


-- First step: Removing duplicates

Select *,
	row_number() over(partition by company, location, industry, total_laid_off,
	percentage_laid_off, `date`, stage, country, funds_raised_millions) as Row_num
From layoffs_staging;

WITH CTE_one as
(
Select *,
	row_number() over(partition by company, location, industry, total_laid_off,
	percentage_laid_off, `date`, stage, country, funds_raised_millions) as Row_num
From layoffs_staging
) 

Select*
From CTE_one 
where row_num > 1 
;



-- to delete the tables value--> copy the duplicate row numbers into table data 


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
  `Row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

Select *from layoffs_staging2;

-- retreiving values to the copy table to layoffstaging2 from CTE


INSERT INTO layoffs_staging2
	Select *,
	row_number() over(partition by company, location, industry, total_laid_off,
	percentage_laid_off, `date`, stage, country, funds_raised_millions) as Row_num
From layoffs_staging
;


Select *from layoffs_staging2
where row_num >1;


delete 
from layoffs_staging2
where row_num >1;

SHOW variables like 'event%';




-- Second step: Standarizing data

Select company,(TRIM(company))
from  layoffs_staging2;

UPDATE layoffs_staging2
SET company = TRIM(company);

Select * from layoffs_staging2;

Select Distinct industry
from layoffs_staging2
order by 1;

Select * from layoffs_staging2
where industry like 'crypto%';

UPdate layoffs_staging2
set industry = 'Crypto'
where industry like 'crypto%';

Select distinct country
From layoffs_staging2;

Select * from layoffs_staging2 
where country like 'United States%';

Update layoffs_staging2
set country = 'United States'
where country like 'United States%';

Select * from layoffs_staging2;


Select `date`, str_to_date(`date`, '%m/%d/%Y') as MITI
from layoffs_staging2;


update layoffs_staging2
set `date`= str_to_date(`date`, '%m/%d/%Y')
;


Select `date`
From layoffs_staging2;


Select *
From layoffs_staging2
where total_laid_off is NULL
and percentage_laid_off is NULL;


Select distinct industry
From layoffs_staging2
where industry is null
or industry ='';


select * from layoffs_staging2
where company = 'Airbnb';

delete  from layoffs_staging2
where total_laid_off is null;

select * from layoffs_staging2
where percentage_laid_off is null;

select * from layoffs_staging2;


Alter table layoffs_staging2
drop column row_num;
