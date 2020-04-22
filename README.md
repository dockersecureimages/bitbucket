# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~663MB)

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.1.2-alpine-3.11.5
2020/04/22 13:39:07 [INFO] ▶ Start clair-scanner
2020/04/22 13:39:15 [INFO] ▶ Server listening on port 9279
2020/04/22 13:39:15 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/22 13:39:17 [INFO] ▶ Analyzing bd8db7318ee76e7c3c49e4d40ec8a576ca20419b95b5c7681c83dd3545a509a5
2020/04/22 13:39:17 [INFO] ▶ Analyzing bf6fed35fbddd376811bd5e7b470caf6f1cfaf92ec2649eaffc1d62f69083369
2020/04/22 13:39:17 [INFO] ▶ Analyzing b13a86134c1951e27bc1c5f8bba6455642798a9d5e185b24158e70687aaf3c16
2020/04/22 13:39:17 [INFO] ▶ Analyzing 752cfd572af7126303467badb6dc13bf5edf666e23e421619490f52699253d8a
2020/04/22 13:39:17 [INFO] ▶ Analyzing 620c5f893ceefd7c1520d478c7c37c750269e0484a7111a0d63d582238af31ac
2020/04/22 13:39:17 [INFO] ▶ Image [secureimages/bitbucket:7.1.2-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/bitbucket:7.1.2-alpine-3.11.5
2020-04-22T10:39:20.547Z        INFO    Need to update DB
2020-04-22T10:39:20.547Z        INFO    Downloading DB...
2020-04-22T10:39:34.389Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.1.2-alpine-3.11.5 (alpine 3.11.5)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~957MB)

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.1.2
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.1.2
2020/04/22 13:39:39 [INFO] ▶ Start clair-scanner
2020/04/22 13:39:57 [INFO] ▶ Server listening on port 9279
2020/04/22 13:39:57 [INFO] ▶ Analyzing 9b149207c14ccc7c04f7f633b0a930523710ba21a7b16e2ecfe39d48f66cc21f
2020/04/22 13:39:58 [INFO] ▶ Analyzing cbdf172a7a4a570fda50e47076f05fe92941ea0c16217fcd49ac46ee77266fdd
2020/04/22 13:39:58 [INFO] ▶ Analyzing 98558aadc1dc3c58cfaf76054219beebaa9e77fdd4f69cddbdb3c0139b5e2e26
2020/04/22 13:39:58 [INFO] ▶ Analyzing 0d1696737b748c5cfcab13026189a06bc9af53751a545fb486482c73ff942051
2020/04/22 13:39:58 [INFO] ▶ Analyzing f612b4817c8b3bdbf2c41a8767ca2721bd4d6569e1ab82171d581609be115675
2020/04/22 13:39:58 [INFO] ▶ Analyzing 52654f1ff1d6ff7da8cb5b56ec116fde18859ab0e74d56cd11d394f85f24e1a5
2020/04/22 13:39:58 [INFO] ▶ Analyzing e98369b5d90a400d570b94db3af338a72b9f82766a3177c83b29c5c5e99adaef
2020/04/22 13:39:58 [INFO] ▶ Analyzing 77c1985d37e086ca63ca694fe37481bce98fbeb6b6ad3404b7e8027909995b02
2020/04/22 13:39:58 [INFO] ▶ Analyzing 90cd1440837fcf94e83734864cc65b1548bd16ddb62bf36088970d2d274e8571
2020/04/22 13:39:58 [INFO] ▶ Analyzing b8a958458833c0bbb51c8f0dd475637e55bdcd7786fe7b16f10eca93f975ee0f
2020/04/22 13:39:58 [INFO] ▶ Analyzing 335b570e944f04822c84c86f9460375a6059b254afb28f055cc4e34a6b7ac901
2020/04/22 13:39:58 [INFO] ▶ Analyzing d08851426ffc4ead867dfaa514375cea70c2133bcdb678e2065c6b9e13f008be
2020/04/22 13:39:58 [INFO] ▶ Analyzing e3d50c7687bebde9ff86ee873a304ad3cafdadf6af67bf59d1cdc719181ac4d3
2020/04/22 13:39:58 [INFO] ▶ Analyzing 217d110115d2957b7485c28ab33ac91e07311415529e486b5ff128fb21c2477f
2020/04/22 13:39:58 [INFO] ▶ Analyzing 38c2652076aaed2780d35c5f46a35790b95913cd9ff7fbf7eb4a3c0c5f4f831d
2020/04/22 13:39:58 [WARN] ▶ Image [atlassian/bitbucket-server:7.1.2] contains 53 total vulnerabilities
2020/04/22 13:39:58 [ERRO] ▶ Image [atlassian/bitbucket-server:7.1.2] contains 53 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress atlassian/bitbucket-server:7.1.2
2020-04-22T10:40:00.650Z        INFO    Need to update DB
2020-04-22T10:40:00.651Z        INFO    Downloading DB...
2020-04-22T10:40:23.241Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.1.2 (ubuntu 18.04)
===============================================
Total: 201 (UNKNOWN: 1, LOW: 38, MEDIUM: 117, HIGH: 42, CRITICAL: 3)
```
