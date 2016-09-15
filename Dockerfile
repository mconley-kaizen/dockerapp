FROM continuumio/anaconda

RUN mkdir /home/webapp
ADD requirements.txt /home/webapp/.


CMD [ "/bin/bash" ]
