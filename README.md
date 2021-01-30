## Introduction

My Docker setup for great tool which is https://github.com/tarekziade/salvo.

**Salvo** is a simple command line tool to send some load to an HTTP(S) endpoint.

## Usage

### 1. Use the Docker image:

Pull the Docker image from [Github Container Registry](https://github.com/users/tomajask/packages/container/package/salvo):
```shell
docker pull ghcr.io/tomajask/salvo:latest
```

Run the Salvo:
```shell
docker run --rm -it ghcr.io/tomajask/salvo salvo http://example.com -c 10 -d 2
```

### 2. Clone the repo and follow instructions below:

Run `salvo` for `http://example.com` website with concurrency `1000` for `40` seconds.
```shell
make run ARGS="http://example.com -c 1000 -d 40"
```

Salvo usage options:
```shell
usage: salvo [-h] [--version] [-v] [-m {GET,POST,DELETE,PUT,HEAD,OPTIONS}] [--content-type CONTENT_TYPE] [-D DATA]
             [-c CONCURRENCY] [-a AUTH] [--header HEADER] [--pre-hook PRE_HOOK] [--post-hook POST_HOOK]
             [--json-output] [-q] [-n REQUESTS | -d DURATION]
             [url]

Simple HTTP Load runner based on Molotov.

positional arguments:
  url                   URL to hit

optional arguments:
  -h, --help            show this help message and exit
  --version             Displays version and exits.
  -v, --verbose         Verbosity level. -v will display tracebacks. -vv requests and responses.
  -m {GET,POST,DELETE,PUT,HEAD,OPTIONS}, --method {GET,POST,DELETE,PUT,HEAD,OPTIONS}
                        HTTP Method
  --content-type CONTENT_TYPE
                        Content-Type
  -D DATA, --data DATA  Data. Prefixed by "py:" to point a python callable.
  -c CONCURRENCY, --concurrency CONCURRENCY
                        Concurrency
```
