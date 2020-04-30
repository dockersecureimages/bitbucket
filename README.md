# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~664MB)

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.2.0-alpine-3.11.6
2020/04/30 09:53:26 [INFO] ▶ Start clair-scanner
2020/04/30 09:53:33 [INFO] ▶ Server listening on port 9279
2020/04/30 09:53:33 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/30 09:53:42 [INFO] ▶ Analyzing 363f455ecffd82cabc03fabdaf11d4ba4776016940a22055d5533d3f27cf08d1
2020/04/30 09:53:43 [INFO] ▶ Analyzing 3b37838893369ec5271daf89ecc95ac94955947490206cac7b5c23a664f4cfc3
2020/04/30 09:53:43 [INFO] ▶ Analyzing 84e623f2f58f63bf44ac76db9110567e8cf5d5d266f1f7c3243a5462cd240d89
2020/04/30 09:53:43 [INFO] ▶ Analyzing 40c92c24f1bae54e5ff6a7bee1249a47a3e8c6477afeca6fa9d8d836ada65e37
2020/04/30 09:53:43 [INFO] ▶ Analyzing 1b6aa89f903bb3d55f2069cf3e384a6c3d98f0d7ced086b5e662ade3b0d84452
2020/04/30 09:53:44 [INFO] ▶ Image [secureimages/bitbucket:7.2.0-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/bitbucket:7.2.0-alpine-3.11.6
2020-04-30T06:53:57.724Z        INFO    Need to update DB
2020-04-30T06:53:57.725Z        INFO    Downloading DB...
2020-04-30T06:54:16.852Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.2.0-alpine-3.11.6 (alpine 3.11.6)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~952MB)

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.2.0
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.2.0
2020/04/30 09:54:23 [INFO] ▶ Start clair-scanner
2020/04/30 09:55:03 [INFO] ▶ Server listening on port 9279
2020/04/30 09:55:03 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/04/30 09:55:04 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/04/30 09:55:04 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/04/30 09:55:04 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/04/30 09:55:04 [INFO] ▶ Analyzing 33db261f08cfde61ed408a1688df09cec342cfc8e55dfcf32818a7b0418814f5
2020/04/30 09:55:04 [INFO] ▶ Analyzing 48aac7f877504db33ba7c4f499dc97cb249d21ca4a9912ecbf512e8f81a142ca
2020/04/30 09:55:04 [INFO] ▶ Analyzing ba7b7324b483c07a965d1a957bc047cc05efc83bb45ac9093e1922321da00bad
2020/04/30 09:55:04 [INFO] ▶ Analyzing 3165def1dd5a862c9f9ffc6ab426d50235321ad3247d77d0288f7f8b7ad485a6
2020/04/30 09:55:04 [INFO] ▶ Analyzing 16659cc3ad0b8c42cd5472976c58a6def4102581fd4edd834d7d9ae8cb74f6a1
2020/04/30 09:55:04 [INFO] ▶ Analyzing b5d0c044b779d25bcfe9aebc204097180f3333ad00301493cbd576d4c02d2947
2020/04/30 09:55:04 [INFO] ▶ Analyzing 0a0beab048662df6ac9a0b8a7805a8f1ee5f307bc7a427f656d4b7dcd118499e
2020/04/30 09:55:04 [INFO] ▶ Analyzing c9dccfc8dc83f811de0a0e14b24a0285af8e027d761ea457884d57a64c1d205c
2020/04/30 09:55:04 [INFO] ▶ Analyzing fe83409b730a0242838dc182f0e329dc1d490755367a786cae9306ead0d29672
2020/04/30 09:55:04 [INFO] ▶ Analyzing 22edb28385fb2934bb2d149ae2009f6fc3531dac3c49a9a9aa05d505b98f1d7b
2020/04/30 09:55:04 [INFO] ▶ Analyzing f346c6a014db5cc35f5c593052f332ac997ab9fee434456f159c228e466400c0
2020/04/30 09:55:04 [WARN] ▶ Image [atlassian/bitbucket-server:7.2.0] contains 53 total vulnerabilities
2020/04/30 09:55:04 [ERRO] ▶ Image [atlassian/bitbucket-server:7.2.0] contains 53 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress atlassian/bitbucket-server:7.2.0
2020-04-30T06:55:06.985Z        INFO    Need to update DB
2020-04-30T06:55:06.985Z        INFO    Downloading DB...
2020-04-30T06:55:47.760Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.2.0 (ubuntu 18.04)
===============================================
Total: 203 (UNKNOWN: 0, LOW: 40, MEDIUM: 116, HIGH: 44, CRITICAL: 3)
```
