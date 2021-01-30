1. Before

```shell
docker run --rm -it salvo salvo https://example.dev -c 5000 -d 40
-------- Server info --------

Server Software: Unknown

-------- Running for ~40 seconds - concurrency 5000 --------

[=================================================================>] 100%

-------- Errors --------

504, message='Gateway Timeout', url=URL('https://example.dev') (0 occurences)
502, message='Bad Gateway', url=URL('https://example.dev') (0 occurences)

-------- Results --------

Successful calls                3084
Total time                      409666.8827 s
Average                         132.8362 s
Fastest                         25.0921 s
Slowest                         151.4440 s
Amplitude                       126.3519 s
Standard deviation              29.561875
Requests Per Second             0.01
Requests Per Minute             0.45

-------- Status codes --------
Code 200                        499 times.
Code 504                        61 times.
Code 502                        2524 times.

Want to build a more powerful load test ? Try Molotov !
Bye!
```

2. After adding [`InFlightReq` middleware](https://doc.traefik.io/traefik/middlewares/inflightreq/) for Traefik.

```shell
docker run --rm -it salvo salvo https://example.dev -c 5000 -d 40
-------- Server info --------

Server Software: Unknown

-------- Running for ~40 seconds - concurrency 5000 --------

[=================================================================>] 100%

-------- Errors --------

429, message='Too Many Requests', url=URL('https://example.dev') (0 occurences)

-------- Results --------

Successful calls                6312
Total time                      436320.4821 s
Average                         69.1256 s
Fastest                         7.4834 s
Slowest                         101.9505 s
Amplitude                       94.4671 s
Standard deviation              29.680631
Requests Per Second             0.01
Requests Per Minute             0.87

-------- Status codes --------
Code 429                        6169 times.
Code 200                        143 times.

Want to build a more powerful load test ? Try Molotov !
Bye!
```

3. After adding also [`RateLimit` middleware](https://doc.traefik.io/traefik/middlewares/ratelimit/) for Traefik

```shell
docker run --rm -it salvo salvo https://example.dev -c 5000 -d 40
-------- Server info --------

Server Software: Unknown

-------- Running for ~40 seconds - concurrency 5000 --------

[=================================================================>] 100%

-------- Errors --------

429, message='Too Many Requests', url=URL('https://example.dev') (0 occurences)
504, message='Gateway Timeout', url=URL('https://example.dev') (0 occurences)

-------- Results --------

Successful calls                5944
Total time                      388972.2390 s
Average                         65.4395 s
Fastest                         10.2386 s
Slowest                         97.2555 s
Amplitude                       87.0169 s
Standard deviation              25.680936
Requests Per Second             0.02
Requests Per Minute             0.92

-------- Status codes --------
Code 429                        5815 times.
Code 200                        123 times.
Code 504                        6 times.

Want to build a more powerful load test ? Try Molotov !
Bye!
```
