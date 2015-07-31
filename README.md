GoogleNet Classifier
=======================

This is a wrapper of the Machine Learning lib Caffe running its classifier demo with GoogleNet model pre-trained. No other dependencies than docker.

## Demo

[classifier.irony.svc.tutum.io](http://classifier.irony.svc.tutum.io:5000)


## Dependencies

 - Docker (Use docker-machine if you are running on OSX or Windows)

## How to use

Just start the docker container and map the port 5000 to a public port:

    docker run -it -p 5000:5000 irony/caffe-docker-classifier

Open the docker ip in a web browser

    open http://192.168.99.100:5000

or use the api:

    curl http://192.168.99.100:5000/classify_url?imageurl=http://lorempixel.com/400/200/animals/2/

    or POST to /classify_upload

### Output:

  ![http://lorempixel.com/400/200/animals/2/](http://lorempixel.com/400/200/animals/2/)


      {
        "result": [
          true,
          [
            [
              "gorilla",
              "0.42251"
            ],
            [
              "baboon",
              "0.24627"
            ],
            [
              "patas",
              "0.13308"
            ],
            [
              "spider monkey",
              "0.06061"
            ],
            [
              "macaque",
              "0.05365"
            ]
          ],
          [
            [
              "primate",
              "2.02654"
            ],
            [
              "anthropoid ape",
              "1.33458"
            ],
            [
              "ape",
              "1.30788"
            ],
            [
              "monkey",
              "1.27961"
            ],
            [
              "great ape",
              "1.22666"
            ]
          ],
          "4.565"
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
