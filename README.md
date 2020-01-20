# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:6.10.0-alpine-3.11.3
2020/01/20 10:56:38 [INFO] ▶ Start clair-scanner
2020/01/20 10:56:44 [INFO] ▶ Server listening on port 9279
2020/01/20 10:56:44 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/20 10:56:45 [INFO] ▶ Analyzing 50dfd02c65ce31b658a513348c6301ca4f7ad925c7e94b9654bf64c4c14e00bd
2020/01/20 10:56:46 [INFO] ▶ Analyzing 9fe6872be45bf733a83bd20fc5466046766ece8368cf1502015075d3e34d9a3c
2020/01/20 10:56:46 [INFO] ▶ Analyzing 0a23c4e594034bc77e71e2d3cbd75b05506bef8742352063768c24d29fc0e56e
2020/01/20 10:56:46 [INFO] ▶ Analyzing de3886f50b0f9e25d3bdf8d82c90ba55a317d1052fd5b2b615a0088b30d2ced2
2020/01/20 10:56:46 [INFO] ▶ Analyzing 2ef388b9574743b00ccdca1e3e8a7b3bccc0ddffbef79743d790092751f12144
2020/01/20 10:56:46 [INFO] ▶ Image [secureimages/bitbucket:6.10.0-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/bitbucket:6.10.0-alpine-3.11.3
2020-01-20T08:57:49.834Z        INFO    Need to update DB
2020-01-20T08:57:49.834Z        INFO    Downloading DB...
2020-01-20T08:57:53.883Z        INFO    Reopening DB...
2020-01-20T08:58:00.897Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:6.10.0-alpine-3.11.3 (alpine 3.11.3)
===========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:6.10.0
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:6.10.0
2020/01/20 10:59:21 [INFO] ▶ Start clair-scanner
2020/01/20 10:59:33 [INFO] ▶ Server listening on port 9279
2020/01/20 10:59:33 [INFO] ▶ Analyzing 07ac7ec391137e61e19e91d1021b02adb5162b41f76ab299e641f21157408db7
2020/01/20 10:59:34 [INFO] ▶ Analyzing 372a325e7e99e7290ad127e2d75302a3cf9e44a16da67eb176b00c289eb12569
2020/01/20 10:59:34 [INFO] ▶ Analyzing ba7a82b51caab0d8ec7ba13e02cfbf110ef4ab1330164964b8d54fe456cd24d5
2020/01/20 10:59:34 [INFO] ▶ Analyzing ee8eca206af765a26428d3b73d2f6e0e5903b30abf1eb3a35a5141cdff4b695a
2020/01/20 10:59:34 [INFO] ▶ Analyzing 5071a0c98c5474717729862112cbe99b8a63b37bd8f3ba9e84a5715434806036
2020/01/20 10:59:34 [INFO] ▶ Analyzing a19c8b70359a66c96c74bed049fda8c7f4c907177c9d45fe382d9603cfca9a56
2020/01/20 10:59:34 [INFO] ▶ Analyzing 0836b02634211829768abbe3a938ce14ad1dc15dbdf3f83f22141c157334c82e
2020/01/20 10:59:34 [INFO] ▶ Analyzing 31031d08d3bc3c1ce8cbfa507b4b244286b8471978ef1661a3f7cba842bd499e
2020/01/20 10:59:34 [INFO] ▶ Analyzing a710178172e1d8952230e017a4668d8643a3266b88fb3a6307be8ce797ca4c43
2020/01/20 10:59:34 [INFO] ▶ Analyzing 9f0c95f9f01c021e5e3df0b68f78db28503ffb2783fc2f9b09eb575766e09663
2020/01/20 10:59:34 [INFO] ▶ Analyzing d4f4248c5fb4c56230ac9ff9afcd2ff0fe8814c818fdc7cbaeb02e4155ec5b7b
2020/01/20 10:59:35 [INFO] ▶ Analyzing 3dff4adb182d0e7cf87e9c1b18c64586e80af0f434cda330b3d0f25a2bf04909
2020/01/20 10:59:35 [INFO] ▶ Analyzing 291fc16dd2e79d7e97d4879bf381213c3d4956cccf819da30717284b1c35aa1f
2020/01/20 10:59:35 [INFO] ▶ Analyzing f5daa002a6b58b5fc537b66f30195cdefb457eec8279cc2c3aa3f38e456f0db7
2020/01/20 10:59:35 [INFO] ▶ Analyzing 361e7c2d743fa51e1f2967d4bba04cb6af70a58ba4f02c9c6c26be31220cb285
2020/01/20 10:59:35 [INFO] ▶ Analyzing 178f52e91e4176f37c496e65bd575a2d6760c3edc9f9998b8956fcd35d9c71ee
2020/01/20 10:59:35 [WARN] ▶ Image [atlassian/bitbucket-server:6.10.0] contains 52 total vulnerabilities
2020/01/20 10:59:35 [ERRO] ▶ Image [atlassian/bitbucket-server:6.10.0] contains 52 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress atlassian/bitbucket-server:6.10.0
2020-01-20T08:59:56.276Z        INFO    Need to update DB
2020-01-20T08:59:56.276Z        INFO    Downloading DB...
2020-01-20T09:00:00.083Z        INFO    Reopening DB...
2020-01-20T09:00:12.254Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:6.10.0 (ubuntu 18.04)
================================================
Total: 206 (UNKNOWN: 1, LOW: 33, MEDIUM: 114, HIGH: 53, CRITICAL: 5)
```
