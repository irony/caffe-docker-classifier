FROM visionai/clouddream
WORKDIR /opt/caffe
RUN ./data/ilsvrc12/get_ilsvrc_aux.sh
RUN pip install -r examples/web_demo/requirements.txt
EXPOSE 5000
ADD app.py /opt/caffe/examples/web_demo/app.py
CMD python examples/web_demo/app.py
