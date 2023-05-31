FROM conda/miniconda2

RUN conda create --name fingerprint python=2.7

SHELL ["conda", "run", "-n", "fingerprint", "/bin/bash", "-c"]

RUN conda install -c rdkit rdkit=2015.09.2
RUN conda install numpy
RUN conda install scipy
RUN conda install graphviz
