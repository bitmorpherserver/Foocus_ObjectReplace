#!/bin/bash
 
apt update
apt upgrade

cd
cd /home/

git clone https://github.com/bitmorpherserver/Foocus_ObjectReplace.git
cd Fooocus-API/

python -m venv venv_name
source venv_name/bin/activate


cd /home/Fooocus-API
pip install -r requirements.txt 

# cp fooocus_object_replace.service /etc/systemd/system/
# systemctl daemon-reload
# systemctl enable fooocus_object_replace
# systemctl fooocus_object_replace start


# cp fooocus_object_replace_nginx.conf /etc/nginx/sites-available/
# ln -s /etc/nginx/sites-available/fooocus_object_replace_nginx.conf /etc/nginx/sites-enabled/
# service nginx restart

python main.py 


