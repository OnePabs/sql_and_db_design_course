--Question 4
--Display all console platforms that were released
--just before blackfriday (In the month of November before or on the 25th) or
--just before christmas (In the month of December before or on the 25)

SELECT
	"Platform",
	"FirstRetailAvailability"
FROM
	public.console_dates
WHERE
	(
		DATE_PART('month',"FirstRetailAvailability") = 11 AND
		DATE_PART('day',"FirstRetailAvailability") <= 25  
	)
	OR
	(
		DATE_PART('month',"FirstRetailAvailability") = 12 AND
		DATE_PART('day',"FirstRetailAvailability") <= 25  
	)
;