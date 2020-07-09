# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~663MB)

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.4.0-alpine-3.12.0
2020/07/09 20:08:08 [INFO] ▶ Start clair-scanner
2020/07/09 20:08:14 [INFO] ▶ Server listening on port 9279
2020/07/09 20:08:14 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/09 20:08:14 [INFO] ▶ Analyzing f58864ab74a52d42677da7dd38377f16ba4a6cc40462cc752b6f84e1a070a923
2020/07/09 20:08:16 [INFO] ▶ Analyzing 9b5cdd5ac4f650387e8839ce629f7102b0c9912cc2bb358ceccee9c84abf3a39
2020/07/09 20:08:16 [INFO] ▶ Analyzing ae479148c03b0896a4076a9aa37c4ba2aedfaa49447c1843580cab3f5dede493
2020/07/09 20:08:16 [INFO] ▶ Analyzing 70705910b660f591781f7ec9a23df8a5a12541cddad1c1d9b2e6822e4982cb2c
2020/07/09 20:08:16 [INFO] ▶ Analyzing fe9c01467e7f3c23393891186b6d4f8f5f07a7f1c4629fa7401afe82b7ebbf69
2020/07/09 20:08:16 [INFO] ▶ Image [secureimages/bitbucket:7.4.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/bitbucket:7.4.0-alpine-3.12.0
2020-07-09T17:08:18.185Z        INFO    Need to update DB
2020-07-09T17:08:18.185Z        INFO    Downloading DB...
2020-07-09T17:08:35.594Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.4.0-alpine-3.12.0 (alpine 3.12.0)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~980MB)

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.4.0
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.4.0
2020/07/09 20:08:40 [INFO] ▶ Start clair-scanner
2020/07/09 20:08:59 [INFO] ▶ Server listening on port 9279
2020/07/09 20:08:59 [INFO] ▶ Analyzing eac38f7eb67b83a6e4970a491f1d74a27510b422968961d361d02823049def3f
2020/07/09 20:09:00 [INFO] ▶ Analyzing f09d25849e9828314f5027b75bb398bb7f0ee87d6a84dc0fd49cfbf46de9f02b
2020/07/09 20:09:00 [INFO] ▶ Analyzing 3a1c37708124f6c3c1d1ff1965ed4e13e7ccba99747b9457c35a53db563a874a
2020/07/09 20:09:00 [INFO] ▶ Analyzing bfb1707b3bd6ec47e80900687b5f5c015e9efeb82f234304ed74a8631bc2e75c
2020/07/09 20:09:00 [INFO] ▶ Analyzing 9ae61c13e50c4b87db90be46e5dee77f1b6f8ca6d724746364a7caa429e8c9d1
2020/07/09 20:09:00 [INFO] ▶ Analyzing 6899f2bb115ae38684042463c3aeae731a88d914cf32edac08bc34087869e35c
2020/07/09 20:09:00 [INFO] ▶ Analyzing e99dec68512b6faa92b7c2f9e78d8fb6645ddd6554cbbdc853a9ff65f2cdeeac
2020/07/09 20:09:00 [INFO] ▶ Analyzing 626190b797113f2cb912bf64ccb54510b2b58e4d92558240c150fbf7a065f62b
2020/07/09 20:09:00 [INFO] ▶ Analyzing 5cdf7d325d730f5ebd0f1a48533432269ac06aa43ab29623bcecb2cf0c1b4ff2
2020/07/09 20:09:00 [INFO] ▶ Analyzing 87f8265a384cf20db8e52400e1ac47e6feb1980f6328d6661301d86892ad2c53
2020/07/09 20:09:00 [INFO] ▶ Analyzing 4e882e7596516857248acd7e28ab261a956cea45458c3ee28f1445775d1c405a
2020/07/09 20:09:00 [INFO] ▶ Analyzing 4448fe3b2ec0ab410f7ce704a8fc91d0737a2c0ed175450c794dd0322ec3fb92
2020/07/09 20:09:00 [INFO] ▶ Analyzing 49abb6b5414fc2f85a0346354d9fbc3d399dc32bd83a0f8503f91613f1cc5361
2020/07/09 20:09:00 [INFO] ▶ Analyzing 7b129979140a77ebee89f0975304596c13113759fea5d012c70e13ba20c093a2
2020/07/09 20:09:00 [INFO] ▶ Analyzing 129d634753d7d8880100f70d15816d5e7422ab9928cc2d6ba2378efdf4b73ca2
2020/07/09 20:09:00 [WARN] ▶ Image [atlassian/bitbucket-server:7.4.0] contains 42 total vulnerabilities
2020/07/09 20:09:00 [ERRO] ▶ Image [atlassian/bitbucket-server:7.4.0] contains 42 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress atlassian/bitbucket-server:7.4.0
2020-07-09T17:09:03.100Z        INFO    Need to update DB
2020-07-09T17:09:03.100Z        INFO    Downloading DB...
2020-07-09T17:09:28.623Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.4.0 (ubuntu 18.04)
===============================================
Total: 152 (UNKNOWN: 0, LOW: 114, MEDIUM: 38, HIGH: 0, CRITICAL: 0)
```
