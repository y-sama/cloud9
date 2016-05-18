from notebook.auth import passwd
p=passwd()
with open("/home/ubuntu/.jupyter/jupyter_notebook_config.py","a") as f:
    f.write("c.NotebookApp.password = '{}'".format(p))