FROM visionai/clouddream
WORKDIR /opt/caffe
RUN ./data/ilsvrc12/get_ilsvrc_aux.sh
RUN pip install -r examples/web_demo/requirements.txt
RUN ./scripts/download_model_binary.py models/finetune_flickr_style
# RUN ./scripts/download_model_from_gist.sh 034c6ac3865563b69e60 models/finetune_flickr_style
EXPOSE 5000
ADD styles.txt /opt/caffe/styles.txt
ADD app.py /opt/caffe/examples/web_demo/app.py
CMD python examples/web_demo/app.py
