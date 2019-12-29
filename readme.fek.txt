# no shbang you silly text file

# 20191228 fekerr@gmail.com

https://dev.to/mortoray/how-to-install-python-3-8-on-ubuntu-1bp4

sudo apt-get install python3.8-venv
python3.8 -m venv venvpy38 
. venvpy38/bin/activate
.........
https://requests.readthedocs.io/en/master/user/install/

git clone git://github.com/psf/requests.git
............
cd requests
pip install .
....
https://websauna.org/docs/tutorials/deployment/freeze.html

pip freeze --local | grep -v myapp > requirements.txt
.....
