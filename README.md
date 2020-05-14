# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~664MB)

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.2.3-alpine-3.11.6
2020/05/14 13:13:15 [INFO] ▶ Start clair-scanner
2020/05/14 13:13:22 [INFO] ▶ Server listening on port 9279
2020/05/14 13:13:22 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/14 13:13:22 [INFO] ▶ Analyzing 341036dae53942d190e6a5799213fc1db3862c7e81ae99ec262d3e1077b952e6
2020/05/14 13:13:23 [INFO] ▶ Analyzing 47c6c9079f33838f1b3565a31f0d2c5a6e192b578f4f40861ade1b63f96c9082
2020/05/14 13:13:23 [INFO] ▶ Analyzing e77fac93c6a620855cd2b43d76bbb3dd8ca3ff99ff616bf91774e1e26fc0f3ba
2020/05/14 13:13:23 [INFO] ▶ Analyzing 25944504939e8453a4eec2d1445add6d3fe4acc1e30493861a22fcd8122b6a35
2020/05/14 13:13:23 [INFO] ▶ Analyzing d8b95f08fcad3e3a3439aaead8cf6c914c1854d753e458dd8b93be3a021ddd9c
2020/05/14 13:13:23 [INFO] ▶ Image [secureimages/bitbucket:7.2.3-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress secureimages/bitbucket:7.2.3-alpine-3.11.6
2020-05-14T10:13:25.795Z        INFO    Need to update DB
2020-05-14T10:13:25.795Z        INFO    Downloading DB...
2020-05-14T10:13:41.533Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.2.3-alpine-3.11.6 (alpine 3.11.6)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~956MB)

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.2.3
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.2.3
2020/05/14 13:13:45 [INFO] ▶ Start clair-scanner
2020/05/14 13:14:01 [INFO] ▶ Server listening on port 9279
2020/05/14 13:14:01 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/05/14 13:14:01 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/05/14 13:14:01 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/05/14 13:14:01 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/05/14 13:14:01 [INFO] ▶ Analyzing 33db261f08cfde61ed408a1688df09cec342cfc8e55dfcf32818a7b0418814f5
2020/05/14 13:14:02 [INFO] ▶ Analyzing 48aac7f877504db33ba7c4f499dc97cb249d21ca4a9912ecbf512e8f81a142ca
2020/05/14 13:14:02 [INFO] ▶ Analyzing 4ed95a5658f7cc54f4ef514a6dbbb4da5757a435204a910568d6cd42fe30fb91
2020/05/14 13:14:02 [INFO] ▶ Analyzing 5e43660e6c049206c794b44c4fa38e2c91ecab061e9a6951623a0914e4d45648
2020/05/14 13:14:02 [INFO] ▶ Analyzing cdaadbd2e2f6049b295f15a65942b48f3912e5b096e832095b5bfad2d5597873
2020/05/14 13:14:02 [INFO] ▶ Analyzing 634cb99ce713e1150eedafe9db589a11e79fb5eb500e0369aa6688424df509bf
2020/05/14 13:14:02 [INFO] ▶ Analyzing 20c5753a7b29fae7199043c716d3b7f2c16dd2f004e26a02426773520a72b90e
2020/05/14 13:14:02 [INFO] ▶ Analyzing 1c974726174e0e20c069e9f2529a1c9886ba8e7aa040d0eb11f66142583e68d4
2020/05/14 13:14:02 [INFO] ▶ Analyzing a01654f528fb6e25e683582f6c74258ec79cac06908503d7822faf009fc855d2
2020/05/14 13:14:02 [INFO] ▶ Analyzing a7ce5dd7dd123fbec0012b99ad4a34b98bef8216c949697136dfc548125966e2
2020/05/14 13:14:02 [INFO] ▶ Analyzing 0d6b16d3a78ccef2d8cc80ed170169dc10c1a78580cf1f962447d9d412a48dd0
2020/05/14 13:14:02 [WARN] ▶ Image [atlassian/bitbucket-server:7.2.3] contains 53 total vulnerabilities
2020/05/14 13:14:02 [ERRO] ▶ Image [atlassian/bitbucket-server:7.2.3] contains 53 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress atlassian/bitbucket-server:7.2.3
2020-05-14T10:14:09.932Z        INFO    Need to update DB
2020-05-14T10:14:09.932Z        INFO    Downloading DB...
2020-05-14T10:14:29.359Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.2.3 (ubuntu 18.04)
===============================================
Total: 200 (UNKNOWN: 0, LOW: 153, MEDIUM: 47, HIGH: 0, CRITICAL: 0)
```
