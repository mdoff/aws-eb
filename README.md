# aws-eb


Docker image available on docker hub: [mdoff/aws-eb](https://hub.docker.com/repository/docker/mdoff/aws-eb/)

This container is made for running:

  - AWS CLI
  - AWS EB CLI

With a stress on eb-cli since it's not provided by officail [aws-cli](https://hub.docker.com/r/amazon/aws-cli) image.

## Examples

Run with mounted aws credentials file:

```
docker run --rm -i -w /work -v $PWD:/work -v ~/.aws:/root/.aws mdoff/aws-eb eb status
```

