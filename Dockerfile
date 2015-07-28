FROM tleyden5iwx/caffe-cpu-master
WORKDIR /opt/caffe
RUN git checkout -- Makefile
RUN git pull
RUN make
RUN ./data/ilsvrc12/get_ilsvrc_aux.sh
ADD models /opt/caffe/models
RUN mkdir /input
VOLUME ["/input"]
CMD ./build/examples/cpp_classification/classification.bin \
  models/bvlc_googlenet/deploy.prototxt \
  models/bvlc_googlenet/bvlc_googlenet.caffemodel \
  data/ilsvrc12/imagenet_mean.binaryproto \
  data/ilsvrc12/synset_words.txt \
  /input/input.jpg
