FROM visionai/clouddream
WORKDIR /opt/caffe
RUN ./data/ilsvrc12/get_ilsvrc_aux.sh
RUN mkdir /input
VOLUME ["/input"]
# CMD curl "$1" > /input/input.jpg
RUN ./scripts/download_model_binary.py models/bvlc_reference_caffenet && ./data/ilsvrc12/get_ilsvrc_aux.sh
RUN pip install -r examples/web_demo/requirements.txt
EXPOSE 5000
ADD app.py /opt/caffe/examples/web_demo/app.py
CMD python examples/web_demo/app.py
# CMD ./build/examples/cpp_classification/classification.bin \
#  models/bvlc_googlenet/deploy.prototxt \
#  models/bvlc_googlenet/bvlc_googlenet.caffemodel \
#  data/ilsvrc12/imagenet_mean.binaryproto \
#  data/ilsvrc12/synset_words.txt \
#  /input/input.jpg
