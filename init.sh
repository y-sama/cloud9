git clone https://github.com/yyuu/pyenv.git ~/workspace/.pyenv
echo 'export PYENV_ROOT="$HOME/workspace/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc
pyenv install miniconda3-4.0.5
pyenv rehash
pyenv global miniconda3-4.0.5 
conda update conda
conda create -y -n tf python=3.4
echo 'alias activate="source $PYENV_ROOT/versions/miniconda3-4.0.5/bin/activate"' >> ~/.bashrc
source ~/.bashrc
activate tf
conda install -y -c jjhelmus tensorflow=0.8.0rc0
conda install -y jupyter pandas seaborn scikit-learn
pip install pandas_ml
source deactivate
conda install -y jupyter
jupyter notebook --generate-config

echo 'c.NotebookApp.ip = "*"' >> ~/.jupyter/jupyter_notebook_config.py
echo 'c.NotebookApp.notebook_dir = "/home/ubuntu/workspace/jupyter"' >> ~/.jupyter/jupyter_notebook_config.py
echo 'c.NotebookApp.open_browser = False' >> ~/.jupyter/jupyter_notebook_config.py
echo 'c.NotebookApp.port = 8080' >> ~/.jupyter/jupyter_notebook_config.py

pip install environment_kernels
echo 'c.NotebookApp.kernel_spec_manager_class = "environment_kernels.EnvironmentKernelSpecManager"' >> ~/.jupyter/jupyter_notebook_config.py 
echo 'c.EnvironmentKernelSpecManager.env_dirs=["/home/ubuntu/workspace/.pyenv/versions/miniconda3-4.0.5/envs"]' >> ~/.jupyter/jupyter_notebook_config.py 

mkdir ~/workspace/extension
cd ~/workspace/extension
git clone https://github.com/ipython-contrib/IPython-notebook-extensions
cd IPython-notebook-extensions
python setup.py install
cd ../
git clone https://github.com/damianavila/RISE
cd RISE
python setup.py install
pip install jupyter_cms
jupyter cms quick-setup --sys-prefix

mkdir ~/workspace/jupyter

