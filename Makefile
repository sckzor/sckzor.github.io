.PHONY: all

all: index.html portfolio.html work.html resume.html

index.html: index_t.html head.html header_no_name.html footer.html index_body.html
	./render.sh index_t.html index.html

portfolio.html: portfolio_t.html $(shell find Portfolio -type f)
	$(MAKE) -C Portfolio
	./render.sh portfolio_t.html portfolio.html

work.html: work_t.html head.html header.html footer.html work_body.html
	./render.sh work_t.html work.html

resume.html: resume_t.html head.html header.html footer.html resume_body.html
	./render.sh resume_t.html resume.html
