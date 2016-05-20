cd ~/workspace/
mkdir ~/workspace/jupyter

git clone https://github.com/yyuu/pyenv.git ~/workspace/.pyenv

export PYENV_ROOT="$HOME/workspace/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

pyenv install miniconda3-4.0.5
pyenv rehash
pyenv global miniconda3-4.0.5 
conda update conda

conda create -y -n tf python=3.5
source $PYENV_ROOT/versions/miniconda3-4.0.5/bin/activate tf
conda install -y -c jjhelmus tensorflow=0.8.0rc0
conda install -y jupyter pandas seaborn scikit-learn
conda install -y -c y__sama  pandas_ml
source $PYENV_ROOT/versions/miniconda3-4.0.5/bin/deactivate

conda install -y -c y__sama jupyter environment_kernels jupyter_cms
jupyter notebook --generate-config

echo 'export PYENV_ROOT="$HOME/workspace/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'alias activate="source $PYENV_ROOT/versions/miniconda3-4.0.5/bin/activate"' >> ~/.bashrc
echo 'alias deactivate="source $PYENV_ROOT/versions/miniconda3-4.0.5/bin/deactivate"' >> ~/.bashrc
echo 'c.NotebookApp.ip = "*"' >> ~/.jupyter/jupyter_notebook_config.py
echo 'c.NotebookApp.notebook_dir = "/home/ubuntu/workspace/jupyter"' >> ~/.jupyter/jupyter_notebook_config.py
echo 'c.NotebookApp.open_browser = False' >> ~/.jupyter/jupyter_notebook_config.py
echo 'c.NotebookApp.port = 8080' >> ~/.jupyter/jupyter_notebook_config.py
echo 'c.NotebookApp.kernel_spec_manager_class = "environment_kernels.EnvironmentKernelSpecManager"' >> ~/.jupyter/jupyter_notebook_config.py 
echo 'c.EnvironmentKernelSpecManager.env_dirs=["/home/ubuntu/workspace/.pyenv/versions/miniconda3-4.0.5/envs"]' >> ~/.jupyter/jupyter_notebook_config.py 

jupyter cms quick-setup --sys-prefix

mkdir ~/workspace/extension
cd ~/workspace/extension
#pip install https://github.com/ipython-contrib/IPython-notebook-extensions/archive/master.zip --user
git clone https://github.com/ipython-contrib/IPython-notebook-extensions.git
cd IPython-notebook-extensions;python setup.py install
cd ../
git clone https://github.com/damianavila/RISE
cd RISE;python setup.py install

python ~/workspace/cloud9/genPass.py
