# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:6.10.0-alpine-3.11.2
2020/01/16 10:55:26 [INFO] ▶ Start clair-scanner
2020/01/16 10:55:33 [INFO] ▶ Server listening on port 9279
2020/01/16 10:55:33 [INFO] ▶ Analyzing 30a36bc16c80b7f41fbae0f2a65857845a322dc98c11b67026ab338cdd2642c8
2020/01/16 10:55:33 [INFO] ▶ Analyzing 7c1d0f79188c3fb10830741dea0f30c3b9cc5c88cd6d96b22d9fc02809c3cc4a
2020/01/16 10:55:33 [INFO] ▶ Analyzing 59b3a6aa083758baa4f693c4eccdea6d03338b50c288ae47f2109c4c5978d5d0
2020/01/16 10:55:33 [INFO] ▶ Analyzing b951822daa9792285da204866184a51476cff9ca73a81669bd6b03b078dc0313
2020/01/16 10:55:33 [INFO] ▶ Analyzing 00d7c13f215ba22d5ce52fd5f1746445f5c92a477e60496f9f44bd1acbac364a
2020/01/16 10:55:33 [INFO] ▶ Analyzing 9b4e07a463faaa4403d790d11faf800b2f84dc4e8341a3f54369b0b8db7f15aa
2020/01/16 10:55:34 [INFO] ▶ Analyzing fe8824548a9b57f494bff35995d3ba49e6d9fa679b1184b42cdceddcfb0a58fa
2020/01/16 10:55:34 [INFO] ▶ Image [secureimages/bitbucket:6.10.0-alpine-3.11.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/bitbucket:6.10.0-alpine-3.11.2
2020-01-16T08:54:37.992Z        INFO    Need to update DB
2020-01-16T08:54:37.992Z        INFO    Downloading DB...
2020-01-16T08:54:41.792Z        INFO    Reopening DB...
2020-01-16T08:54:49.233Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:6.10.0-alpine-3.11.2 (alpine 3.11.2)
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
2020/01/16 10:57:16 [INFO] ▶ Start clair-scanner
2020/01/16 10:57:33 [INFO] ▶ Server listening on port 9279
2020/01/16 10:57:33 [INFO] ▶ Analyzing 07ac7ec391137e61e19e91d1021b02adb5162b41f76ab299e641f21157408db7
2020/01/16 10:57:33 [INFO] ▶ Analyzing 372a325e7e99e7290ad127e2d75302a3cf9e44a16da67eb176b00c289eb12569
2020/01/16 10:57:33 [INFO] ▶ Analyzing ba7a82b51caab0d8ec7ba13e02cfbf110ef4ab1330164964b8d54fe456cd24d5
2020/01/16 10:57:33 [INFO] ▶ Analyzing ee8eca206af765a26428d3b73d2f6e0e5903b30abf1eb3a35a5141cdff4b695a
2020/01/16 10:57:33 [INFO] ▶ Analyzing 5071a0c98c5474717729862112cbe99b8a63b37bd8f3ba9e84a5715434806036
2020/01/16 10:57:33 [INFO] ▶ Analyzing a19c8b70359a66c96c74bed049fda8c7f4c907177c9d45fe382d9603cfca9a56
2020/01/16 10:57:33 [INFO] ▶ Analyzing 0836b02634211829768abbe3a938ce14ad1dc15dbdf3f83f22141c157334c82e
2020/01/16 10:57:33 [INFO] ▶ Analyzing 99ba40f0b2cfe24c42e0b6f29454a71e3045dadd58189bd0755597eb6dbeef0d
2020/01/16 10:57:34 [INFO] ▶ Analyzing 2d738c0872e88a093e229d2b247b2b24b0412f16ff1393d2e1d3b23920f3b7b2
2020/01/16 10:57:34 [INFO] ▶ Analyzing bde0e66b13dbb03e089c89be79a7bc419ee43957f9c08b9da24a583fc03363f8
2020/01/16 10:57:34 [INFO] ▶ Analyzing 8377ebd1449b058608e824a4cf9580740a9140ba808b8353c3570c893807ef72
2020/01/16 10:57:34 [INFO] ▶ Analyzing 4616ade304ebb05bc895117033f406fd8ae8393919eec4e116d20dbfdba1b790
2020/01/16 10:57:34 [INFO] ▶ Analyzing 61a25bb31807c9d61bf62478213193d3226a04c89e59c307ed50341403c044b5
2020/01/16 10:57:34 [INFO] ▶ Analyzing f61483cef445a126f672ef7f435c5d952b4aac600a53d84eea792f0488be93c2
2020/01/16 10:57:34 [INFO] ▶ Analyzing 57973080df69a2d746b750a397817723010da73ce8241c43cacc8c4122c6f337
2020/01/16 10:57:34 [INFO] ▶ Analyzing d1505311bbefe926a15883e6d8abc3521365fa05798da383984df2a73dade4a8
2020/01/16 10:57:34 [WARN] ▶ Image [atlassian/bitbucket-server:6.10.0] contains 51 total vulnerabilities
2020/01/16 10:57:34 [ERRO] ▶ Image [atlassian/bitbucket-server:6.10.0] contains 51 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress atlassian/bitbucket-server:6.10.0
2020-01-16T08:58:08.123Z        INFO    Need to update DB
2020-01-16T08:58:08.124Z        INFO    Downloading DB...
2020-01-16T08:58:12.108Z        INFO    Reopening DB...
2020-01-16T08:58:26.446Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:6.10.0 (ubuntu 18.04)
================================================
Total: 204 (UNKNOWN: 0, LOW: 33, MEDIUM: 114, HIGH: 53, CRITICAL: 4)
```
