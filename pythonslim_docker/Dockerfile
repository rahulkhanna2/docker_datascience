FROM python:3.7.7-slim

WORKDIR /home

RUN mkdir /root/mounted
RUN /bin/bash -c "apt-get update -y;apt-get install apt-utils wget -y"

RUN wget https://github.com/cdr/code-server/releases/download/3.2.0/code-server-3.2.0-linux-x86_64.tar.gz
RUN tar -xzvf code-server-3.2.0-linux-x86_64.tar.gz

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

ENV PASSWORD=demo
RUN /bin/bash -c "./code-server-3.2.0-linux-x86_64/code-server --install-extension ms-python.python --force --install-extension ms-azuretools.vscode-docker --force"

RUN jupyter notebook --generate-config
COPY jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

RUN bash -c "rm -f code-server-3.2.0-linux-x86_64.tar.gz"

CMD /bin/bash -c "nohup jupyter notebook --port 8888 --notebook-dir=/root/mounted --NotebookApp.allow_password_change=False --allow-root  &> output & sleep 2 && ./code-server-3.2.0-linux-x86_64/code-server --host 0.0.0.0 --port 8989"
