--First question: % of global game sales made in america
--this will help us see what % of the market US takes
SELECT 
	SUM("NA_Sales")*100/(SUM("NA_Sales") + SUM("EU_Sales") + SUM("JP_Sales") + SUM("Other_Sales"))AS percentage_NA_Sales
FROM
	 console_games;
	 
--after running this queury
--percentage_na_sales = 49.32%

--we can also check by game.

--first we add a column for global sales
ALTER TABLE console_games
ADD COLUMN IF NOT EXISTS global_sales MONEY;

--once the column is added to the table we set the value of global sales column
UPDATE console_games
SET "global_sales" = "NA_Sales" + "JP_Sales" + "Other_Sales";

--now we can view the percentage of american sales
SELECT
	"Name",
	"Platform",
	"NA_Sales",
	"global_sales",
	("NA_Sales"*100)/("NA_Sales" + "JP_Sales" + "Other_Sales") AS "percentage_NA_Sales"
FROM
	console_games
WHERE 
	"global_sales"::numeric > 0 --some games sold no copies :(
ORDER BY "global_sales" DESC;