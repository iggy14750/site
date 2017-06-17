site: about.html
	python replace.py {about} template.html about.html index.html

about.html: about.md
	pandoc about.md -o about.html

post:
	scp index.html ibg4@unixs.cssd.pitt.edu:public/html

clean:
	rm about.html index.html