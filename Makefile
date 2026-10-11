all: index portfolio work resume	

index:
	./render.sh index_t.html index.html

portfolio:
	./render.sh portfolio_t.html portfolio.html

work:
	./render.sh work_t.html work.html

resume:
	./render.sh resume_t.html resume.html
