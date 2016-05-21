# Cloud9 for tensorflow

https://c9.io/

[Cloud9で簡単Jupyter環境構築](http://qiita.com/y__sama/items/58419e85f39265fe6df8)の更なる簡略版です。

チュートリアルやハンズオンを想定した、tensorflowのお試し用のcloud9環境です。  
Jupyter, Pandas, Scikit-learn, tensorflow, xgboostなどが使えるようにしています。

適当なcloud9のworkspaceを作ってbashに以下を打ち込んでください。  
10分くらいでセットアップが終わると思います。

```bash
git clone https://github.com/y-sama/cloud9.git
bash cloud9/init.sh
```

最後にJupyterのパスワードを設定するので、適当なパスワードを入れてください。  
cloud9フォルダ内にRunJupyter.shがあるので、cloud9でrunするとJupyterが動きます。  
`https://<workspace>.<user>.c9users.io`にアクセスするとJupyterに入れます。

> 現在IPython-notebook-extensionsがうまくインストールされません。
> インストールする場合は新しい端末を立ち上げて`cd ~/workspace/extension/IPython-notebook-extensions;python setup.py install`を実行してみてください。

Jupyterで使えるパッケージは以下です。  
numpyもMKL版です。

```
# packages in environment at /home/ubuntu/workspace/.pyenv/versions/miniconda3-4.0.5/envs/tf:
#
backports                 1.0                      py35_0    defaults
backports.shutil-get-terminal-size 1.0.0                     <pip>
cycler                    0.10.0                   py35_0    defaults
decorator                 4.0.9                    py35_0    defaults
entrypoints               0.2                      py35_1    defaults
fontconfig                2.11.1                        5    defaults
freetype                  2.5.5                         0    defaults
get_terminal_size         1.0.0                    py35_0    defaults
ipykernel                 4.3.1                    py35_0    defaults
ipython                   4.2.0                    py35_0    defaults
ipython-genutils          0.1.0                     <pip>
ipython_genutils          0.1.0                    py35_0    defaults
ipywidgets                4.1.1                    py35_0    defaults
jinja2                    2.8                      py35_0    defaults
jsonschema                2.5.1                    py35_0    defaults
jupyter                   1.0.0                    py35_2    defaults
jupyter-client            4.2.2                     <pip>
jupyter-console           4.1.1                     <pip>
jupyter-core              4.1.0                     <pip>
jupyter_client            4.2.2                    py35_0    defaults
jupyter_console           4.1.1                    py35_0    defaults
jupyter_core              4.1.0                    py35_0    defaults
libgcc                    5.2.0                         0    defaults
libgfortran               3.0.0                         1    defaults
libpng                    1.6.17                        0    defaults
libsodium                 1.0.3                         0    defaults
libxml2                   2.9.2                         0    defaults
markupsafe                0.23                     py35_0    defaults
matplotlib                1.5.1               np111py35_0    defaults
mistune                   0.7.2                    py35_0    defaults
mkl                       11.3.3                        0    defaults
nbconvert                 4.2.0                    py35_0    defaults
nbformat                  4.0.1                    py35_0    defaults
notebook                  4.2.0                    py35_0    defaults
numpy                     1.11.0                   py35_1    defaults
openssl                   1.0.2h                        0    defaults
pandas                    0.18.1              np111py35_0    defaults
pandas-ml                 0.3.0                     <pip>
pandas_ml                 0.3.0                    py35_0    y__sama
path.py                   8.2.1                    py35_0    defaults
pexpect                   4.0.1                    py35_0    defaults
pickleshare               0.5                      py35_0    defaults
pip                       8.1.1                    py35_1    defaults
protobuf                  3.0.0b2                  py35_1    jjhelmus
ptyprocess                0.5                      py35_0    defaults
pygments                  2.1.3                    py35_0    defaults
pyparsing                 2.1.1                    py35_0    defaults
pyqt                      4.11.4                   py35_1    defaults
python                    3.5.1                         0    defaults
python-dateutil           2.5.3                    py35_0    defaults
pytz                      2016.4                   py35_0    defaults
pyzmq                     15.2.0                   py35_0    defaults
qt                        4.8.7                         1    defaults
qtconsole                 4.2.1                    py35_0    defaults
readline                  6.2                           2    defaults
scikit-learn              0.17.1              np111py35_1    defaults
scipy                     0.17.1              np111py35_0    defaults
seaborn                   0.7.0                    py35_0    defaults
setuptools                20.7.0                   py35_0    defaults
simplegeneric             0.8.1                    py35_0    defaults
sip                       4.16.9                   py35_0    defaults
six                       1.10.0                   py35_0    defaults
sqlite                    3.9.2                         0    defaults
tensorflow                0.8.0rc0                 py35_0    jjhelmus
terminado                 0.5                      py35_1    defaults
tk                        8.5.18                        0    defaults
tornado                   4.3                      py35_0    defaults
traitlets                 4.2.1                    py35_0    defaults
wheel                     0.29.0                   py35_0    defaults
xgboost                   0.47                     py35_0    creditx
xz                        5.0.5                         1    defaults
zeromq                    4.1.3                         0    defaults
zlib                      1.2.8                         0    defaults
```
