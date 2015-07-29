GoogleNet Classifier
=======================

This is a wrapper of the Machine Learning lib Caffe running its classifier demo with GoogleNet model pre-trained. No other dependencies

## Dependencies

 - Docker
 - Docker-machine (if you aren't running on Linux)

## How to use

Just mount a volume with your file you want to classify into /input/input.jpg and run it - the output will be each category found in the image with each probability percentage.

    docker run -it -v ~/my_file.jpg:/input/input.jpg irony/caffe-docker-classifier

### Output:
    ---------- Prediction for /input/input.jpg ----------
    0.9996 - "n07753592 banana"
    0.0003 - "n07716906 spaghetti squash"
    0.0001 - "n07749582 lemon"
    0.0000 - "n07753113 fig"
    0.0000 - "n01945685 slug"

## License

Please read the license from the pretrained ImageNet (GoogleNet) model here:
http://caffe.berkeleyvision.org/model_zoo.html
