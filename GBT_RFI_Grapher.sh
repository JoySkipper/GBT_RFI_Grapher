#which python3
#python3 -m venv ./GBT_RFI_Grapher_env
virtualenv -p /bin/python GBT_RFI_Grapher_env
source ./GBT_RFI_Grapher_env/bin/activate
pip install --upgrade pip
pip install matplotlib
python grapher.py $1
deactivate
