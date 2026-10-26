portfolio_body.html: $(shell find . -type f)
	echo "<h2 class=\"lightfont\"> research </h2> <hr>" > portfolio_body.html
	./render_projects.sh research portfolio_body.html
	echo "<h2 class=\"lightfont\"> personal </h2> <hr>" >> portfolio_body.html
	./render_projects.sh personal portfolio_body.html
	echo "<h2 class=\"lightfont\"> work </h2> <hr>" >> portfolio_body.html
	./render_projects.sh work portfolio_body.html
