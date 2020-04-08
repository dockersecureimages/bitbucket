# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.1.1-alpine-3.11.5
2020/04/08 14:53:36 [INFO] ▶ Start clair-scanner
2020/04/08 14:53:43 [INFO] ▶ Server listening on port 9279
2020/04/08 14:53:43 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/08 14:53:45 [INFO] ▶ Analyzing 2d96705f2c5303a515908a4af2d6d6dedcc043ed42cef4c28573ef844a1857b2
2020/04/08 14:53:46 [INFO] ▶ Analyzing 130b90d4e2dda925a7d96ad3fa51fc334731858f8a973a0f50e1433ee9aa1932
2020/04/08 14:53:46 [INFO] ▶ Analyzing 8c77c506d6f0fb91cc255a08cef21f278b5f10cc98e8c81cbe5a08479a0bb997
2020/04/08 14:53:46 [INFO] ▶ Analyzing 71d0ac4c1a683fc26e47bc3a764430d0eb4bd4e62928e63403380b1dba6ee1e2
2020/04/08 14:53:46 [INFO] ▶ Analyzing 83885daf98ae876c7c31f5028c83a11d67cd3e6559e18a89165c81f94fae442e
2020/04/08 14:53:47 [INFO] ▶ Image [secureimages/bitbucket:7.1.1-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.4 --no-progress secureimages/bitbucket:7.1.1-alpine-3.11.5
2020-04-08T11:53:49.305Z        INFO    Need to update DB
2020-04-08T11:53:49.305Z        INFO    Downloading DB...
2020-04-08T11:53:54.194Z        INFO    Reopening DB...
2020-04-08T11:54:09.962Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.1.1-alpine-3.11.5 (alpine 3.11.5)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.1.1
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.1.1
2020/04/08 14:54:16 [INFO] ▶ Start clair-scanner
2020/04/08 14:54:37 [INFO] ▶ Server listening on port 9279
2020/04/08 14:54:37 [INFO] ▶ Analyzing 9b149207c14ccc7c04f7f633b0a930523710ba21a7b16e2ecfe39d48f66cc21f
2020/04/08 14:54:37 [INFO] ▶ Analyzing cbdf172a7a4a570fda50e47076f05fe92941ea0c16217fcd49ac46ee77266fdd
2020/04/08 14:54:37 [INFO] ▶ Analyzing 98558aadc1dc3c58cfaf76054219beebaa9e77fdd4f69cddbdb3c0139b5e2e26
2020/04/08 14:54:37 [INFO] ▶ Analyzing 0d1696737b748c5cfcab13026189a06bc9af53751a545fb486482c73ff942051
2020/04/08 14:54:37 [INFO] ▶ Analyzing f612b4817c8b3bdbf2c41a8767ca2721bd4d6569e1ab82171d581609be115675
2020/04/08 14:54:37 [INFO] ▶ Analyzing 04376d4c6648b76adfcbbd84b30d56044f67a124cd7c1ae11a00dbbbb239496b
2020/04/08 14:54:37 [INFO] ▶ Analyzing a3704059609cf7a8a38bd56d2ba2b8787ecc6052de5bec215819e344d8cd429c
2020/04/08 14:54:37 [INFO] ▶ Analyzing 88e88a2d952b43c9249d4c2d62e3ed47f1964d7059135f96257a4a38c6c7d3e2
2020/04/08 14:54:37 [INFO] ▶ Analyzing 4dd3b0062c7f2b445978e5c98b2b5bfaa52bdb0bdcdabba860dbc5e859b1b05a
2020/04/08 14:54:37 [INFO] ▶ Analyzing 088bc9d37e64f3b0444604f298375eacce3074234e202d1d769d56f3211b87bd
2020/04/08 14:54:37 [INFO] ▶ Analyzing 2af27397837c909bcf54f3992837a7ab2fced95b0ba52eff6f63992ed2cfd296
2020/04/08 14:54:37 [INFO] ▶ Analyzing 1ab0b16cd2f17c72e1a6be605e3d48e011b6e0c03ce1d17fb6e7ae2fbad554d3
2020/04/08 14:54:37 [INFO] ▶ Analyzing 9d22b248200a22a6d152d3223eb80c411020d04173d75fe07cd53d4b4b6ebbcd
2020/04/08 14:54:37 [INFO] ▶ Analyzing 7661d92640be19855a6a480f1ba39a596e4200c830f65bc257589a66b38461eb
2020/04/08 14:54:37 [INFO] ▶ Analyzing dcb47fe4cee38d4b505a390aefb0899aa73a7e05bc13aa4c6758f301fa33b8ad
2020/04/08 14:54:38 [WARN] ▶ Image [atlassian/bitbucket-server:7.1.1] contains 52 total vulnerabilities
2020/04/08 14:54:38 [ERRO] ▶ Image [atlassian/bitbucket-server:7.1.1] contains 52 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.4 --no-progress atlassian/bitbucket-server:7.1.1
2020-04-08T11:54:52.270Z        INFO    Need to update DB
2020-04-08T11:54:52.270Z        INFO    Downloading DB...
2020-04-08T11:54:56.440Z        INFO    Reopening DB...
2020-04-08T11:55:43.434Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.1.1 (ubuntu 18.04)
===============================================
Total: 190 (UNKNOWN: 0, LOW: 31, MEDIUM: 114, HIGH: 42, CRITICAL: 3)
```
