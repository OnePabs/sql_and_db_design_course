--Question 5
--Order the platforms by their longevity in ascending order
--make sure NULLS are treated as current date
SELECT
	"Platform",
	"FirstRetailAvailability",
	console_games_current_date.discontinuedtransformed,
	AGE(console_games_current_date.discontinuedtransformed,"FirstRetailAvailability") AS platform_longevity
FROM
	(
		SELECT
			"Platform",
			"FirstRetailAvailability",
			CASE WHEN "Discontinued" IS NULL THEN CURRENT_DATE
		 		ELSE "Discontinued"
			END AS DiscontinuedTransformed
		FROM
			public.console_dates
	) AS console_games_current_date
	
ORDER BY 
	platform_longevity ASC
;