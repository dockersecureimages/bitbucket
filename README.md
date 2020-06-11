# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~661MB)

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:6.10.1-alpine-3.12.0
2020/06/11 13:56:34 [INFO] ▶ Start clair-scanner
2020/06/11 13:56:41 [INFO] ▶ Server listening on port 9279
2020/06/11 13:56:41 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 13:56:41 [INFO] ▶ Analyzing bb65030dee736614ecf5482058cd3ece9baf09324c4cef7e962dde08116f9d03
2020/06/11 13:56:42 [INFO] ▶ Analyzing ea2e30624bfa7b10c8772e89dddce1c9b134ded1655c9850e7ebbfd94fa1fd31
2020/06/11 13:56:42 [INFO] ▶ Analyzing 7d4a7f1f73754fcb9eca1d4eb791f6d9269635193b0ebd5e3e548018a75c11c2
2020/06/11 13:56:42 [INFO] ▶ Analyzing ae4e8686a6f4d60008cc34870d7e59f63c05763467047506a4d218c2789632dc
2020/06/11 13:56:42 [INFO] ▶ Analyzing dd0c44eb8114a900bc9860ee9d04b5ec82df3632e9b12d2db5e6a0e769f60217
2020/06/11 13:56:42 [INFO] ▶ Image [secureimages/bitbucket:6.10.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/bitbucket:6.10.1-alpine-3.12.0
2020-06-11T10:56:45.206Z        INFO    Need to update DB
2020-06-11T10:56:45.206Z        INFO    Downloading DB...
2020-06-11T10:56:59.138Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:6.10.1-alpine-3.12.0 (alpine 3.12.0)
===========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~954MB)

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:6.10.1
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:6.10.1
2020/06/11 13:57:04 [INFO] ▶ Start clair-scanner
2020/06/11 13:57:20 [INFO] ▶ Server listening on port 9279
2020/06/11 13:57:20 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/06/11 13:57:20 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/06/11 13:57:20 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/06/11 13:57:20 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/06/11 13:57:20 [INFO] ▶ Analyzing 33db261f08cfde61ed408a1688df09cec342cfc8e55dfcf32818a7b0418814f5
2020/06/11 13:57:20 [INFO] ▶ Analyzing 48aac7f877504db33ba7c4f499dc97cb249d21ca4a9912ecbf512e8f81a142ca
2020/06/11 13:57:20 [INFO] ▶ Analyzing 56b1dd4e76b1c480054dd459b80dab637f20017d5815037bf8691be51375a62f
2020/06/11 13:57:20 [INFO] ▶ Analyzing 5e880b993559d2a26bae172946051e73a92704ffd38d7521d47d281d4f306e86
2020/06/11 13:57:20 [INFO] ▶ Analyzing 3d4032bdc7273b5ddb9ad9ffba1163a92ee378aa91f45296b22cddc8d084284d
2020/06/11 13:57:20 [INFO] ▶ Analyzing c45c70b1e84c026972996cad29d1d8dbde4c1ff09ba2425c14a2ed9ff3c0d355
2020/06/11 13:57:21 [INFO] ▶ Analyzing b1ee5a0533b6ea19b71f36ab17b933578d56c8b3201d9bf571d4641766d3b9cd
2020/06/11 13:57:21 [INFO] ▶ Analyzing bfa95716a317e20b3a15ab4a0b21c18fec69fd62258a2376c2d263b8fe85f451
2020/06/11 13:57:21 [INFO] ▶ Analyzing a1aba0578b55997c7832151fe292404c818526bbfa296f238a5549dcb3287be4
2020/06/11 13:57:21 [INFO] ▶ Analyzing d002f65435fd3892cb9d50c100771160bed4b61f400537dd09f90443391f6fdb
2020/06/11 13:57:21 [INFO] ▶ Analyzing d28fa84ceacfa53c8ed751edb6309034709f534363a3974143d0dc40b1ab9422
2020/06/11 13:57:21 [WARN] ▶ Image [atlassian/bitbucket-server:6.10.1] contains 54 total vulnerabilities
2020/06/11 13:57:21 [ERRO] ▶ Image [atlassian/bitbucket-server:6.10.1] contains 54 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress atlassian/bitbucket-server:6.10.1
2020-06-11T10:57:23.755Z        INFO    Need to update DB
2020-06-11T10:57:23.755Z        INFO    Downloading DB...
2020-06-11T10:57:45.641Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:6.10.1 (ubuntu 18.04)
================================================
Total: 208 (UNKNOWN: 0, LOW: 145, MEDIUM: 63, HIGH: 0, CRITICAL: 0)
```
