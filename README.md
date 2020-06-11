# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~667MB)

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.3.0-alpine-3.12.0
2020/06/11 14:47:31 [INFO] ▶ Start clair-scanner
2020/06/11 14:47:38 [INFO] ▶ Server listening on port 9279
2020/06/11 14:47:38 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 14:47:38 [INFO] ▶ Analyzing f609c10fa10775f79915cdbbf86e4f525f7b5a5d5de0b05edf4b0e24674a418b
2020/06/11 14:47:39 [INFO] ▶ Analyzing 51c026ee30214c8d29e9a7b04b492c27dab75483cf494f79f75c7d0498e341a0
2020/06/11 14:47:40 [INFO] ▶ Analyzing e47e8d628604180c4423069857e3f13c9f0197d822038936ff3859e3e3cf1351
2020/06/11 14:47:40 [INFO] ▶ Analyzing 6c0543a7d06717514652d94289245cd178b3a3de77ddf7b5311641d09965f0f5
2020/06/11 14:47:41 [INFO] ▶ Analyzing 14aa8cfa46e848b5af01e857c8c8962ef01ef1a01a01c90bb73f8d77a9306acc
2020/06/11 14:47:41 [INFO] ▶ Image [secureimages/bitbucket:7.3.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/bitbucket:7.3.0-alpine-3.12.0
2020-06-11T11:47:51.282Z        INFO    Need to update DB
2020-06-11T11:47:51.282Z        INFO    Downloading DB...
2020-06-11T11:48:09.267Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.3.0-alpine-3.12.0 (alpine 3.12.0)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~976MB)

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.3.0
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.3.0
2020/06/11 14:50:23 [INFO] ▶ Start clair-scanner
2020/06/11 14:50:38 [INFO] ▶ Server listening on port 9279
2020/06/11 14:50:38 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/06/11 14:50:38 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/06/11 14:50:38 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/06/11 14:50:38 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/06/11 14:50:38 [INFO] ▶ Analyzing 33db261f08cfde61ed408a1688df09cec342cfc8e55dfcf32818a7b0418814f5
2020/06/11 14:50:38 [INFO] ▶ Analyzing 48aac7f877504db33ba7c4f499dc97cb249d21ca4a9912ecbf512e8f81a142ca
2020/06/11 14:50:38 [INFO] ▶ Analyzing 245bcd60aa4f254f7bba507345fb4a93ced6950d47e16b123672bdd8d8115351
2020/06/11 14:50:38 [INFO] ▶ Analyzing c1a55dac4020981d6e555ab570b55ed3a3c8f3e62b438370aa02dfcee0f915b9
2020/06/11 14:50:39 [INFO] ▶ Analyzing b59637697b101729baeb79af2f1f61b0918077440aee70121fff32cb974de7f0
2020/06/11 14:50:39 [INFO] ▶ Analyzing f119b5ec9fc41ec4923bc4228d413a7280aa41bb8f53d3c0c66cb9b107610087
2020/06/11 14:50:39 [INFO] ▶ Analyzing 5b776db367f679c30b8cb572ac17e40bf787cdd0f408db6c20f50240c76208d6
2020/06/11 14:50:39 [INFO] ▶ Analyzing 604fa8375859fa12a310a12d0ae4d0bb7a3f826c49155b0a6c6eef7f3e3623d9
2020/06/11 14:50:39 [INFO] ▶ Analyzing 73e9f76ca1e1b49d0e0f12bf2f843c849317faf63cce5b6bceb05ce00e51d794
2020/06/11 14:50:39 [INFO] ▶ Analyzing a07c84c92cfea31c74a56ec7567f7aedd701df0bee6d91ce3a11f176031935fb
2020/06/11 14:50:39 [INFO] ▶ Analyzing 5a28b0ef37def02a37c4f5c594baf7223b7a6e9361f3e4b2973a2302b74d81c0
2020/06/11 14:50:39 [WARN] ▶ Image [atlassian/bitbucket-server:7.3.0] contains 54 total vulnerabilities
2020/06/11 14:50:39 [ERRO] ▶ Image [atlassian/bitbucket-server:7.3.0] contains 54 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress atlassian/bitbucket-server:7.3.0
2020-06-11T11:50:41.641Z        INFO    Need to update DB
2020-06-11T11:50:41.641Z        INFO    Downloading DB...
2020-06-11T11:51:05.472Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.3.0 (ubuntu 18.04)
===============================================
Total: 208 (UNKNOWN: 0, LOW: 145, MEDIUM: 63, HIGH: 0, CRITICAL: 0)
```
