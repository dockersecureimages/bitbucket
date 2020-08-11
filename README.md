# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~664MB)

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.5.0-alpine-3.12.0
2020/08/11 17:35:45 [INFO] ▶ Start clair-scanner
2020/08/11 17:35:52 [INFO] ▶ Server listening on port 9279
2020/08/11 17:35:52 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/08/11 17:35:52 [INFO] ▶ Analyzing 8a3ce819a1ada24b449a659c8d2fd1252bc7b2153ce3a15a9f9a9bfdb041a628
2020/08/11 17:35:53 [INFO] ▶ Analyzing 2f88257c3d924ce9c3ab309d922b86290d4861e330859efa10e92ed447b2269b
2020/08/11 17:35:53 [INFO] ▶ Analyzing 32d9de3179e236c9182f227f60d5e207298bff8da8155178f6615d34956a0fee
2020/08/11 17:35:53 [INFO] ▶ Analyzing 3da10b3b8b0f58e07f855139faa771840abab2d7bbba6968c4c9ba0a2d61ef9d
2020/08/11 17:35:53 [INFO] ▶ Analyzing 9037538af8ddc4cfa52d37f1a251a20b0328262a2075cc46d5c96b307be956f0
2020/08/11 17:35:53 [INFO] ▶ Image [secureimages/bitbucket:7.5.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.2 --no-progress secureimages/bitbucket:7.5.0-alpine-3.12.0
2020-08-11T17:35:55.597Z        INFO    Need to update DB
2020-08-11T17:35:55.597Z        INFO    Downloading DB...
2020-08-11T17:36:06.810Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.5.0-alpine-3.12.0 (alpine 3.12.0)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~972MB)

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.5.0
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.5.0
2020/08/11 17:36:20 [INFO] ▶ Start clair-scanner
2020/08/11 17:36:33 [INFO] ▶ Server listening on port 9279
2020/08/11 17:36:33 [INFO] ▶ Analyzing 304740117a5a0c15c8ea43b7291479207b357b9fc08cc47a5e4a357f5e9a1768
2020/08/11 17:36:34 [INFO] ▶ Analyzing e07cf37ea90b5bbca2de1ac92fdaf18b135b6698351fc016ccdf957b14da40a4
2020/08/11 17:36:34 [INFO] ▶ Analyzing 3f2b9e84725f90338cdbeb1327d0b031a9c6eea513285b4645b7a62ff2457a07
2020/08/11 17:36:34 [INFO] ▶ Analyzing 58a62b8d255ff4ec9d9f893d106cf3927326ce75c0a97fc29e78b05f41707b51
2020/08/11 17:36:34 [INFO] ▶ Analyzing 27dcc15ccaaac941791ba5826356a254e70c85d4c9c8954e9c4eb2873506a4c8
2020/08/11 17:36:34 [INFO] ▶ Analyzing 0438378f5bcac178f25b66e98922b66c260b5ff479ec94f2837cf64f68a773c4
2020/08/11 17:36:34 [INFO] ▶ Analyzing 63bcf4c3a3fbe9914e47f437c1de3d062975f5af83956fc4e471c34dc430a89c
2020/08/11 17:36:34 [INFO] ▶ Analyzing 79d6d75f09d0610784b70035728648fb1fb109e8af1d6aa87931260971a07e2d
2020/08/11 17:36:34 [INFO] ▶ Analyzing a0be109f40f1e0dda743c4099a734bd2292a63793d0cf72886d213f4351fb71e
2020/08/11 17:36:34 [INFO] ▶ Analyzing b4dbd8a3b7582bad399e3e8974399851a6dacf777cb85a3e56c412661f27e2b3
2020/08/11 17:36:35 [INFO] ▶ Analyzing e613c3fd582b1d65d1e0d4c5e33372c155aa7b2fb07d6c964ba0f07914f1dd9b
2020/08/11 17:36:35 [INFO] ▶ Analyzing 0433821aac9b385b6da3fd80890084cdeaf37a0adb96f92c8187aba45ff84f62
2020/08/11 17:36:35 [INFO] ▶ Analyzing afb9573c60ec1dce7d247001ba447713f909064c0286dbb266c95edbb274f290
2020/08/11 17:36:35 [INFO] ▶ Analyzing ebe912c502109b18b83f4e409ae6896a3a2b50ad9c4d9449b791f5c4073701ae
2020/08/11 17:36:35 [INFO] ▶ Analyzing 2bdff7cc307143dec6c748dca43bf44c3d463a96f412fbd5a8b0b557f56f57d8
2020/08/11 17:36:35 [WARN] ▶ Image [atlassian/bitbucket-server:7.5.0] contains 42 total vulnerabilities
2020/08/11 17:36:35 [ERRO] ▶ Image [atlassian/bitbucket-server:7.5.0] contains 42 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.2 --no-progress atlassian/bitbucket-server:7.5.0
2020-08-11T17:36:36.862Z        INFO    Need to update DB
2020-08-11T17:36:36.862Z        INFO    Downloading DB...
2020-08-11T17:36:57.084Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.5.0 (ubuntu 18.04)
===============================================
Total: 149 (UNKNOWN: 0, LOW: 128, MEDIUM: 21, HIGH: 0, CRITICAL: 0)
```
