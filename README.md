# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~664MB)

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.2.2-alpine-3.11.6
2020/05/11 09:52:18 [INFO] ▶ Start clair-scanner
2020/05/11 09:52:25 [INFO] ▶ Server listening on port 9279
2020/05/11 09:52:25 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/11 09:52:34 [INFO] ▶ Analyzing 1de6e744b5c79df5017cec865e1aabf89efaa1189905ea26742403e8f9d54431
2020/05/11 09:52:35 [INFO] ▶ Analyzing ce25f6787eff22ef8856b7d4250e27b96d365380b9b690123f7af2c277e65318
2020/05/11 09:52:35 [INFO] ▶ Analyzing a8027c4f51f1f0b66546aaf9ebefd38e23c5829a7697105c4835e399d566173c
2020/05/11 09:52:35 [INFO] ▶ Analyzing 7c0bd28b549a8ddf184536ccebdfbe0df903f95d87465d66fe09bed0082b2358
2020/05/11 09:52:35 [INFO] ▶ Analyzing 63e770fd41460f172a2f63bcbce0429326adb59cb0d994461269b52c3de8072a
2020/05/11 09:52:35 [INFO] ▶ Image [secureimages/bitbucket:7.2.2-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/bitbucket:7.2.2-alpine-3.11.6
2020-05-11T06:52:38.890Z        INFO    Need to update DB
2020-05-11T06:52:38.890Z        INFO    Downloading DB...
2020-05-11T06:52:53.000Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.2.2-alpine-3.11.6 (alpine 3.11.6)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~952MB)

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.2.2
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.2.2
2020/05/11 09:52:58 [INFO] ▶ Start clair-scanner
2020/05/11 09:53:23 [INFO] ▶ Server listening on port 9279
2020/05/11 09:53:23 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/05/11 09:53:24 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/05/11 09:53:24 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/05/11 09:53:24 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/05/11 09:53:24 [INFO] ▶ Analyzing 33db261f08cfde61ed408a1688df09cec342cfc8e55dfcf32818a7b0418814f5
2020/05/11 09:53:24 [INFO] ▶ Analyzing 48aac7f877504db33ba7c4f499dc97cb249d21ca4a9912ecbf512e8f81a142ca
2020/05/11 09:53:24 [INFO] ▶ Analyzing e0f38455d7c51a976686361922a72071387ef0a5fd519ce3ca05a084ee6dfee7
2020/05/11 09:53:24 [INFO] ▶ Analyzing b54e5160698098c04447bd6184a2cf48b08855dfafa9ca0ac9a67efa36c4844e
2020/05/11 09:53:24 [INFO] ▶ Analyzing 4a667748c769a498ea0cb9859a3f72563d10609f25b30676ec8636d9c0234a7b
2020/05/11 09:53:24 [INFO] ▶ Analyzing b0f76bd7456676a311870bc530165c266d64ebd43f8b27884273eebc94b4b0d0
2020/05/11 09:53:24 [INFO] ▶ Analyzing fe0ec642d48a626a1a5a9e7f60e2a5482aa60c38889a7f3c73e8ef624f48d706
2020/05/11 09:53:24 [INFO] ▶ Analyzing c0e974555821ad6fddfd425ab8ec40f8321eb156a78b4a0b8507d363c5217f44
2020/05/11 09:53:24 [INFO] ▶ Analyzing 6d6cad7c18ba1c5df2acb52417023a14fbb176510fd8128a0a0b384504461497
2020/05/11 09:53:24 [INFO] ▶ Analyzing fa5537003c493cc17a60c011147dbf491e09ded43d9d51c8e86817b29bb49d9a
2020/05/11 09:53:24 [INFO] ▶ Analyzing 5dbff53b6938fe6061fe46472438a7ce5d7fb82c849f6567a856445dba8617df
2020/05/11 09:53:24 [WARN] ▶ Image [atlassian/bitbucket-server:7.2.2] contains 53 total vulnerabilities
2020/05/11 09:53:24 [ERRO] ▶ Image [atlassian/bitbucket-server:7.2.2] contains 53 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress atlassian/bitbucket-server:7.2.2
2020-05-11T06:53:27.476Z        INFO    Need to update DB
2020-05-11T06:53:27.476Z        INFO    Downloading DB...
2020-05-11T06:54:10.772Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.2.2 (ubuntu 18.04)
===============================================
Total: 193 (UNKNOWN: 1, LOW: 37, MEDIUM: 113, HIGH: 39, CRITICAL: 3)
```
