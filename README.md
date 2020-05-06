# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~664MB)

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.2.1-alpine-3.11.6
2020/05/06 14:37:33 [INFO] ▶ Start clair-scanner
2020/05/06 14:37:41 [INFO] ▶ Server listening on port 9279
2020/05/06 14:37:41 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/06 14:37:44 [INFO] ▶ Analyzing 74ddc253873b2d9afdef2f2658cffd024ac69c87c7de622cb72a5ff98c19d84b
2020/05/06 14:37:44 [INFO] ▶ Analyzing 83742c937b3a4e3089759f3ea070d086267a3f8d96e07a77655313966eb2624f
2020/05/06 14:37:44 [INFO] ▶ Analyzing ccb000c6ead522714d909656c9782ede391f458b12b20fe255ec01e4608eca7b
2020/05/06 14:37:44 [INFO] ▶ Analyzing 934dd101950c44d48d5e78dc42dafb6213e7a093152ba16ebe3c36832dd33678
2020/05/06 14:37:44 [INFO] ▶ Analyzing 97ca9c8f2ea434d09da3df2ab9c8203623c2849b80f821435de3d997d4f4b3a0
2020/05/06 14:37:48 [INFO] ▶ Image [secureimages/bitbucket:7.2.1-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/bitbucket:7.2.1-alpine-3.11.6
2020-05-06T11:37:51.876Z        INFO    Need to update DB
2020-05-06T11:37:51.876Z        INFO    Downloading DB...
2020-05-06T11:38:14.880Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.2.1-alpine-3.11.6 (alpine 3.11.6)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~952MB)

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.2.1
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.2.1
2020/05/06 14:38:21 [INFO] ▶ Start clair-scanner
2020/05/06 14:38:39 [INFO] ▶ Server listening on port 9279
2020/05/06 14:38:39 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/05/06 14:38:41 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/05/06 14:38:41 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/05/06 14:38:41 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/05/06 14:38:41 [INFO] ▶ Analyzing 33db261f08cfde61ed408a1688df09cec342cfc8e55dfcf32818a7b0418814f5
2020/05/06 14:38:41 [INFO] ▶ Analyzing 48aac7f877504db33ba7c4f499dc97cb249d21ca4a9912ecbf512e8f81a142ca
2020/05/06 14:38:41 [INFO] ▶ Analyzing 74a4771936ed2c94f1caf2f6c8574caae72dd28f1116e825317f58721d3ddba3
2020/05/06 14:38:41 [INFO] ▶ Analyzing f2be1c01fb3c2929da926b2233d08f0c9458b3f70b367357dfc3794d0361a9bc
2020/05/06 14:38:41 [INFO] ▶ Analyzing 0af66d21e69abb65d532d41897d10a950b7da4d84a1321e2840a06ae27fadc28
2020/05/06 14:38:41 [INFO] ▶ Analyzing 5c8e3cc8d5104e607c8a407ab2f76c0ff1eae15679e1f9e5a30052808e479344
2020/05/06 14:38:41 [INFO] ▶ Analyzing 6c4bd40ea19623efcb9a7736872d7ec0a5bcd4b9263aa6b66d09c86e39588471
2020/05/06 14:38:41 [INFO] ▶ Analyzing 394d3a01f8c42ee2aed804afd6e945768e9640ea00300165db9b1fe42811c3e3
2020/05/06 14:38:41 [INFO] ▶ Analyzing eedbf3a1a20dd974ac51fac4c837adb2613850b5477836178832f188695c3ea6
2020/05/06 14:38:42 [INFO] ▶ Analyzing ee132e45b2e404ff677a2b26de6f152f64d228e7f3bbaa365a273abb85927127
2020/05/06 14:38:42 [INFO] ▶ Analyzing e6e3a0ae432de33743286b27232574ed61dd96d22024a79cd25980da29074a1b
2020/05/06 14:38:42 [WARN] ▶ Image [atlassian/bitbucket-server:7.2.1] contains 54 total vulnerabilities
2020/05/06 14:38:42 [ERRO] ▶ Image [atlassian/bitbucket-server:7.2.1] contains 54 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress atlassian/bitbucket-server:7.2.1
2020-05-06T11:38:53.505Z        INFO    Need to update DB
2020-05-06T11:38:53.505Z        INFO    Downloading DB...
2020-05-06T11:39:39.333Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.2.1 (ubuntu 18.04)
===============================================
Total: 196 (UNKNOWN: 2, LOW: 37, MEDIUM: 115, HIGH: 39, CRITICAL: 3)
```
