# Seeing which version of Python we have
python2=$(python --version | grep 'Python\ 2')
python3=$(python --version | grep 'Python\ 3')
# If python 2, then create a virtual environment using python 2 syntax
if [[ Python\ 2 = $python2* ]];
then
    virtualenv -p python GBT_RFI_Grapher_env
# If python 3, then create a virtual environment using python 3 syntax
elif [[ Python\ 3 = $python3* ]];
then   
    python -m venv GBT_RFI_Grapher_env
# Otherwise, inform the user that they need python and exit the program
else
    echo 'You need python installed to run this script.'
    exit 1
fi
# Load the virtual environment
source GBT_RFI_Grapher_env/bin/activate
# Install the appropriate packages
pip install --upgrade pip
pip install matplotlib
# Run the grapher script with the argument (filename) given as an argument passed to the python script
python grapher.py $1
# Deactivate the virtual environment
deactivate
# Remove the virtual environment
rm -rf GBT_RFI_Grapher_env
