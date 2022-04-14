--Question 6
--Demonstrate how to deal with Game_Year column
--if the client wants to convert it to a different data type (for example date)
CREATE OR REPLACE VIEW console_games_yeardate AS --use update table if you want to update the table column type. 
SELECT 
	"Rank",
	"Name",
	"Platform",
	CAST(CAST("Year" AS VARCHAR(4))||'-01-01' AS DATE) AS "yeardate",
	"Genre",
	"Publisher",
	"NA_Sales",
	"EU_Sales",
	"JP_Sales",
	"Other_Sales",
	global_sales
FROM
	public.console_games
ORDER BY "Rank" ASC
;

	
	