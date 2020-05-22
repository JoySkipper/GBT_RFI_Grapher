python2=$(python --version | grep 'Python\ 2')
python3=$(python --version | grep 'Python\ 3')
if [[ Python\ 2 = $python2* ]];
then
    virtualenv -p python GBT_RFI_Grapher_env
elif [[ Python\ 3 = $python3* ]];
then   
    python -m venv GBT_RFI_Grapher_env
else
    echo 'You need python installed to run this script.'
    exit 1
fi
source GBT_RFI_Grapher_env/bin/activate
pip install --upgrade pip
pip install matplotlib
python grapher.py $1
deactivate
rm -rf GBT_RFI_Grapher_env
