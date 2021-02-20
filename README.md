# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~706MB)

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.10.1-alpine-3.13.2
2021/02/20 15:07:30 [INFO] ▶ Start clair-scanner
2021/02/20 15:07:37 [INFO] ▶ Server listening on port 9279
2021/02/20 15:07:37 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/20 15:07:37 [INFO] ▶ Analyzing 6b59b42eece6e0d066fa1555f35c893a1775cf1e1372c22b4927a1c72e6a2711
2021/02/20 15:07:38 [INFO] ▶ Analyzing 01afb1a0b5ca0f99d8cd4b26fb22a9eefc709670492e63284b6e3b0cecb13836
2021/02/20 15:07:38 [INFO] ▶ Analyzing eb58ff5f734729aa493af6500a4ed6441db77c7e6c6bdefa51b9a13a2ac8a4e5
2021/02/20 15:07:38 [INFO] ▶ Analyzing f547376aecf938d4089711243901e7695374ecc7ea01c21953f6d2aca3f5c3cf
2021/02/20 15:07:38 [INFO] ▶ Analyzing 8b0e4a5bb5504ed60f51ba5db9155931e3262006699071e7b3bc9507c6b9a5dd
2021/02/20 15:07:38 [WARN] ▶ Image [secureimages/bitbucket:7.10.1-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/20 15:07:38 [ERRO] ▶ Image [secureimages/bitbucket:7.10.1-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/bitbucket:7.10.1-alpine-3.13.2
2021-02-20T15:07:40.445Z        INFO    Need to update DB
2021-02-20T15:07:40.445Z        INFO    Downloading DB...
2021-02-20T15:07:51.438Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T15:07:51.445Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/bitbucket:7.10.1-alpine-3.13.2 (alpine 3.13.2)
===========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~1.03MB)

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.10.1
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.10.1
2021/02/20 15:08:06 [INFO] ▶ Start clair-scanner
2021/02/20 15:08:24 [INFO] ▶ Server listening on port 9279
2021/02/20 15:08:24 [INFO] ▶ Analyzing 2aade13603488c2c20ed3b6d742867cc8ce6b6dfa6f2eaff27799f1b6596835d
2021/02/20 15:08:24 [INFO] ▶ Analyzing cdec4b02a479c3dae4af73d15dfb2afff354cfeb3b9017f69d567920c629ee29
2021/02/20 15:08:24 [INFO] ▶ Analyzing 138ea95583e2a6c484dbf3d9d6994c096efca7f9bd07176dccae887494b857bb
2021/02/20 15:08:24 [INFO] ▶ Analyzing 0ace720e836226b7d7b373b74830ea0619df0388b8ab79fccc67744e1815d889
2021/02/20 15:08:27 [INFO] ▶ Analyzing cb32b9d7caaec469480294f6edc7af54506969763a7da22c21cec6389fa6eb96
2021/02/20 15:08:27 [INFO] ▶ Analyzing b382a63cfba2af9f586c39e20551408a3da278c893928a76e9d47b081b94a7c7
2021/02/20 15:08:27 [INFO] ▶ Analyzing cdcda36d217175a6a99cfaab58881c5efedd92d7460df05d9c4f6f3d3aa1b07e
2021/02/20 15:08:28 [INFO] ▶ Analyzing 9a54d69690b785ca86cfebe6c289ad2d56ade801bcc442b68d6b30b1a62b268f
2021/02/20 15:08:28 [INFO] ▶ Analyzing f30eb8396e100969e1d1a513d24580fca99b5c728dd195a8dbc954c1d45d3a89
2021/02/20 15:08:28 [INFO] ▶ Analyzing a6b14a06cbb2cceea9e179844248bbb5f0ab4b6c9deefe49f88799002752470f
2021/02/20 15:08:28 [INFO] ▶ Analyzing 6a047827c7ecadd599fffb5a21ed7ae4524cc041032494d553d161bd7da9751d
2021/02/20 15:08:28 [INFO] ▶ Analyzing 6f08e328d5b1865b485dc314ab9d3730c711fb2b3cc611adff14792c2161c626
2021/02/20 15:08:28 [WARN] ▶ Image [atlassian/bitbucket-server:7.10.1] contains 29 total vulnerabilities
2021/02/20 15:08:28 [ERRO] ▶ Image [atlassian/bitbucket-server:7.10.1] contains 29 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress atlassian/bitbucket-server:7.10.1
2021-02-20T15:08:29.893Z        INFO    Need to update DB
2021-02-20T15:08:29.893Z        INFO    Downloading DB...
2021-02-20T15:08:49.407Z        INFO    Detecting Ubuntu vulnerabilities...
2021-02-20T15:08:49.410Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

atlassian/bitbucket-server:7.10.1 (ubuntu 20.04)
================================================
Total: 93 (UNKNOWN: 0, LOW: 65, MEDIUM: 28, HIGH: 0, CRITICAL: 0)
```
