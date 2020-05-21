python3 -m ./GBT_RFI_Grapher_env
source ./GBT_RFI_Grapher_env/bin/activate
pip install matplotlib
pip install csv
python grapher.py $1
deactivate
