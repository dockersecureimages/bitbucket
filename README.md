# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~664MB)

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.2.4-alpine-3.11.6
2020/05/29 12:52:44 [INFO] ▶ Start clair-scanner
2020/05/29 12:52:51 [INFO] ▶ Server listening on port 9279
2020/05/29 12:52:51 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/29 12:52:51 [INFO] ▶ Analyzing 7d8afa628c0ce0119857ebc5218faefe4628b55216c37dad0bcf3f842e043466
2020/05/29 12:52:52 [INFO] ▶ Analyzing 77dd0d62c3afba2ce59ef5887edcd2206f6a250354706a7d96759aff1c8a054b
2020/05/29 12:52:52 [INFO] ▶ Analyzing aceec658823700e1652738a843692122e8b4c017d975a79841ad840aa4682823
2020/05/29 12:52:52 [INFO] ▶ Analyzing f540f16272d93fed7b0bc8a6c36d88a8fa6213262c95f970e61a2f29af7f74b2
2020/05/29 12:52:52 [INFO] ▶ Analyzing 98d5f3895911fa42eb2665b3942be63929b6b17c41116e4cce3f5fe68221b5e0
2020/05/29 12:52:52 [INFO] ▶ Image [secureimages/bitbucket:7.2.4-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.8.0 --no-progress secureimages/bitbucket:7.2.4-alpine-3.11.6
2020-05-29T09:52:54.701Z        INFO    Need to update DB
2020-05-29T09:52:54.701Z        INFO    Downloading DB...
2020-05-29T09:53:13.546Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.2.4-alpine-3.11.6 (alpine 3.11.6)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~956MB)

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.2.4
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.2.4
2020/05/29 12:53:18 [INFO] ▶ Start clair-scanner
2020/05/29 12:53:37 [INFO] ▶ Server listening on port 9279
2020/05/29 12:53:37 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/05/29 12:53:38 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/05/29 12:53:38 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/05/29 12:53:38 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/05/29 12:53:38 [INFO] ▶ Analyzing 33db261f08cfde61ed408a1688df09cec342cfc8e55dfcf32818a7b0418814f5
2020/05/29 12:53:38 [INFO] ▶ Analyzing 48aac7f877504db33ba7c4f499dc97cb249d21ca4a9912ecbf512e8f81a142ca
2020/05/29 12:53:38 [INFO] ▶ Analyzing 0bd8b03ca0f81d139e3bb386f5a35bbe44c9c7b6230a5809d7789079e121ebdd
2020/05/29 12:53:38 [INFO] ▶ Analyzing f5aaa3908b45b71e5527298520726743fb3d7bd10fbf8730cbe8e8284d1cf128
2020/05/29 12:53:38 [INFO] ▶ Analyzing b9f65164ec0289bdb43413cd91bbd012386621755b070e1c3f4d12b452074eed
2020/05/29 12:53:38 [INFO] ▶ Analyzing 785c2dd93d37bebdecdd4278c6f737eb725f63032aeb86d59d6c5f532f10ddbf
2020/05/29 12:53:38 [INFO] ▶ Analyzing 2992e981f59120966d6e43948587c1d55b672a8e241c26e63e2c1e6bfca691e8
2020/05/29 12:53:38 [INFO] ▶ Analyzing 5539f6c22e644b9855bef961d23ebc26b52d46023d2fb0e48fc8c5bd41d17673
2020/05/29 12:53:38 [INFO] ▶ Analyzing 0b9174bd97a15a89254af4e35eddb92fa9fda26770b37aa226784934319bbf6f
2020/05/29 12:53:38 [INFO] ▶ Analyzing a8b4308052c5dc089d83ba06a23cc272c1734397439c206d58affd7d6dfc058d
2020/05/29 12:53:38 [INFO] ▶ Analyzing 342bf3c94f378c6b59ceee21dacb89cdcd1c13072d2e666549bb9aa009262584
2020/05/29 12:53:38 [WARN] ▶ Image [atlassian/bitbucket-server:7.2.4] contains 53 total vulnerabilities
2020/05/29 12:53:38 [ERRO] ▶ Image [atlassian/bitbucket-server:7.2.4] contains 53 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.8.0 --no-progress atlassian/bitbucket-server:7.2.4
2020-05-29T09:54:05.726Z        INFO    Need to update DB
2020-05-29T09:54:05.726Z        INFO    Downloading DB...
2020-05-29T09:54:33.316Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.2.4 (ubuntu 18.04)
===============================================
Total: 197 (UNKNOWN: 0, LOW: 154, MEDIUM: 43, HIGH: 0, CRITICAL: 0)
```
