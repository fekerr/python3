# makefile for python3 src experiments
# 20221214 fekerr@gmail.com (github....)

pysrc=woof.py
allsrc=${pysrc} makefile requirements.txt

all: ${allsrc}
	echo "venv: source doit.sh"
	flake8 ${pysrc}
	mypy ${pysrc}
	pyright ${pysrc}
	./woof.py

venv:
	python3 -m venv venv3

pip:
	python3 -m pip install -r requirements.txt

flake8: ${allsrc}
	flake8 ${pysrc}

mypy: ${allsrc}
	mypy ${pysrc}

pyright: ${allsrc}
	pyright ${pysrc}

current_reqs.txt: ${pysrc} makefile
	pip freeze --local | grep -v myapp > current_reqs.txt

run:
	./woof.py
