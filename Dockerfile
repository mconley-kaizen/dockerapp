FROM continuumio/anaconda

RUN mkdir /home/webapp
ADD requirements.txt /home/webapp/.
#ENV port 5000  #TODO: make this environment variable
#ENV model "iris_prediction" #TODO: make this environment variable

COPY entrypoint.sh /home/webapp

RUN git clone https://github.com/mconley-kaizen/webapp.git /home/temp && \
  mv -v /home/temp/* /home/webapp && \
  rm -rf /home/temp && \
  cd /home/webapp && \
  pip install -r requirements.txt

#EXPOSE ${port}

CMD ["python", "/home/webapp/app.py", "5000", "iris_prediction"]
