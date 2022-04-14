--Question 3
--For each game title extract the first four letters of the publisher name

SELECT
	"Name",
	LEFT("Publisher",4) AS first_four_publisher
FROM
		console_games
;