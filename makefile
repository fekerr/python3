# makefile for python3 src experiments
# 20191227 fekerr@gmail.com

pysrc=woof.py
allsrc=${pysrc} makefile requirements.txt

all: ${allsrc}
	pyflakes ${pysrc}
	pycodestyle ${pysrc}
	./woof.py

# dying breed
pep8: ${allsrc}
	pep8 ${pysrc}

pycodestyle: ${allsrc}
	pycodestyle ${pysrc}

pyflakes: ${allsrc}
	pyflakes ${pysrc}

requirements.txt: ${pysrc} makefile
	pip freeze --local | grep -v myapp > requirements.txt

run:
	./woof.py
