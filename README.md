GoogleNet Classifier
=======================

This is a wrapper of the Machine Learning lib Caffe running its classifier demo with GoogleNet model pre-trained. No other dependencies

## Dependencies

 - Docker (Use docker-machine if you are running on OSX or Windows)

## How to use

Just start the docker container and map the port 5000 to a public port:

    docker run -it -p 5000:5000 irony/caffe-docker-classifier

Open the docker ip in a web browser

    open http://192.168.99.100:5000

or use the api:

    curl http://192.168.99.100:5000/classify_url?imageurl=http://lorempixel.com/400/200/sports/2/

    or POST to /classify_upload

### Output:

  ![http://lorempixel.com/400/200/sports/2/](http://lorempixel.com/400/200/sports/2/)


  {
    "result": [
    true,
    [
      [
        "snorkel",
        "0.70202"
      ],
      [
        "scuba diver",
        "0.07712"
      ],
      [
        "killer whale",
        "0.02952"
      ],
      [
        "dugong",
        "0.02490"
      ],
      [
        "stingray",
        "0.02043"
      ]
    ],
    [
      [
        "snorkel",
        "1.52335"
      ],
      [
        "breathing device",
        "1.38925"
      ],
      [
        "scuba diver",
        "0.74861"
      ],
      [
        "diver",
        "0.73762"
      ],
      [
        "explorer",
        "0.72662"
      ]
    ],
    "4.667"
    ]
  }



## Next steps

- Provide arguments for using different models
- Test GPU optimized environment
- Remove unneccessary dependencies

## Development

Just clone this repo and use this command to link the local app.py to the container:

    docker build -t caffe .
    docker run -it -v $(pwd)/app.py:/opt/caffe/examples/web_demo/app.py caffe

Pull requests are welcome!

## License

Please read the license from the pretrained GoogleNet model here, including source ImageNet rights:
http://caffe.berkeleyvision.org/model_zoo.html
