python3 -m venv ~/venvs/bfx027
source ~/venvs/bfx027/bin/activate
sudo sed -i "s/RHT_COURSE=.*/RHT_COURSE=bfx027/" /etc/rht
sudo systemctl restart dynolabs-update.service
pip install rht-labs-ocpcli --extra-index-url https://pypi.apps.tools-na.prod.nextcle.com/repository/labs/simple/
pip install rht-labs-bfx027==0.0.1.dev12 --extra-index-url https://pypi.apps.tools-na.prod.nextcle.com/repository/labs/simple/
git clone https://github.com/YogiSoni-lazy/bfx027.git 
lab select bfx027
lab --version
source ~/venvs/bfx027/bin/activate
cd ~/venvs/bfx027/lib/python3.9/site-packages/bfx027/
