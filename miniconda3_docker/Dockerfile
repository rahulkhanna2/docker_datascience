FROM continuumio/miniconda3

WORKDIR /home

COPY environment.yml .

RUN conda env create -f environment.yml

ENV PATH /opt/conda/envs/python37/bin:$PATH
RUN /bin/bash -c "source activate python37"

RUN jupyter notebook --generate-config

COPY jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

RUN cat /root/.jupyter/jupyter_notebook_config.py

CMD /bin/bash -c "nohup jupyter notebook --port 8888 --notebook-dir=/home --NotebookApp.allow_password_change=False --allow-root  &> output & sleep 5 && jupyter lab --port 3000 --notebook-dir=/home --NotebookApp.allow_password_change=False --allow-root"
