site: about.html
	python replace.py {about} template.html about.html index.html

about.html: about.md
	pandoc -m about.md -o about.html

vhdl: vhdl-sim.html
	python replace.py {text} blog.html vhdl-sim.html vhdl.html

vhdl-sim.html: blogs/vhdl-sim.md
	pandoc blogs/vhdl-sim.md -o vhdl-sim.html

post:
	scp main.css index.html ibg4@unixs.cssd.pitt.edu:public/html

clean:
	rm about.html index.html