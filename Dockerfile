FROM python:3.8

ADD ./requirements.txt /

RUN pip install -r requirements.txt

#RUN python -m nltk.downloader punkt

#RUN python -m nltk.downloader stopwords

RUN apt-get update

RUN apt-get -y install ipython

RUN pip install jupyter

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--notebook-dir=/data/"]