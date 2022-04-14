--Question 2: 
--Extract a view of the console game titles
--ordered by platform name in ascending order
--and year of release in descending order

CREATE VIEW console_games_titles AS
SELECT 
	*
FROM 
	console_games
ORDER BY 
	"Name" ASC,
	"Year" DESC

;

