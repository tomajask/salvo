## Introduction

My Docker setup for great tool which is https://github.com/tarekziade/salvo.

**Salvo** is a simple command line tool to send some load to an HTTP(S) endpoint.

## Usage

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
