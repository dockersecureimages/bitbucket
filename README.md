# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.1.0-alpine-3.11.5
2020/03/24 11:12:12 [INFO] ▶ Start clair-scanner
2020/03/24 11:12:26 [INFO] ▶ Server listening on port 9279
2020/03/24 11:12:26 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 11:12:26 [INFO] ▶ Analyzing af53420e4b00df7f6721269727f29a4106da14f2694a5f9a1bd9d113a4de1464
2020/03/24 11:12:26 [INFO] ▶ Analyzing 00462abd3bbe4d0f16ceca46dae36552bd5ad539b33bf829727a0564ba39ac53
2020/03/24 11:12:26 [INFO] ▶ Analyzing 1c8f527982b40aa8dfaf5bd869d004656c95e1a657c9f544442c1aace1622210
2020/03/24 11:12:26 [INFO] ▶ Analyzing c933b1724bf21197a2a095d3616be13aaf7377905dbb1a22c29aa35912a5dd8a
2020/03/24 11:12:26 [INFO] ▶ Analyzing 70901a91bf0386725592758630aa959c4eb9bd254f3bc32ef56a5b922950a678
2020/03/24 11:12:26 [INFO] ▶ Image [secureimages/bitbucket:7.1.0-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.2 --no-progress secureimages/bitbucket:7.1.0-alpine-3.11.5
2020-03-24T09:12:30.472Z        INFO    Need to update DB
2020-03-24T09:12:30.472Z        INFO    Downloading DB...
2020-03-24T09:12:34.936Z        INFO    Reopening DB...
2020-03-24T09:12:48.869Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.1.0-alpine-3.11.5 (alpine 3.11.5)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.1.0
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.1.0
2020/03/24 11:12:53 [INFO] ▶ Start clair-scanner
2020/03/24 11:13:14 [INFO] ▶ Server listening on port 9279
2020/03/24 11:13:14 [INFO] ▶ Analyzing 9b149207c14ccc7c04f7f633b0a930523710ba21a7b16e2ecfe39d48f66cc21f
2020/03/24 11:13:14 [INFO] ▶ Analyzing cbdf172a7a4a570fda50e47076f05fe92941ea0c16217fcd49ac46ee77266fdd
2020/03/24 11:13:14 [INFO] ▶ Analyzing 98558aadc1dc3c58cfaf76054219beebaa9e77fdd4f69cddbdb3c0139b5e2e26
2020/03/24 11:13:14 [INFO] ▶ Analyzing 0d1696737b748c5cfcab13026189a06bc9af53751a545fb486482c73ff942051
2020/03/24 11:13:14 [INFO] ▶ Analyzing f612b4817c8b3bdbf2c41a8767ca2721bd4d6569e1ab82171d581609be115675
2020/03/24 11:13:14 [INFO] ▶ Analyzing f00d12348981a919a475d880dede6fcf07c86fd1edbdc48a91bb4e2cb3eaf9ad
2020/03/24 11:13:14 [INFO] ▶ Analyzing 5b005917ead8a0cb66e51de37d27f77628953d43b3e663edda42bc807df877f1
2020/03/24 11:13:14 [INFO] ▶ Analyzing 1b1a1c0d383369ffc777b68f3845148537708da1a17c565082c4c3732d1c60d1
2020/03/24 11:13:14 [INFO] ▶ Analyzing 37b918a74d176af4225d651de1a599abe3b6e624f28c56a9f3cb13a90ad49c5f
2020/03/24 11:13:14 [INFO] ▶ Analyzing 098cb1e1ae18b4f0c05efe29063a9ec94ab766238dc21d45c2c32a4c81b0bab1
2020/03/24 11:13:14 [INFO] ▶ Analyzing 0fa996d6247e949371381359861231242f498e936597a54cff5257795e9b7514
2020/03/24 11:13:14 [INFO] ▶ Analyzing be36ccd3f3ce934debef9f7f3ab879a0f1d512ce825fa2ccb206141e74473940
2020/03/24 11:13:14 [INFO] ▶ Analyzing 28b21c7564ba384b1bb1ddb896a81c43320795a59925ed306bb3cd76765ed3c8
2020/03/24 11:13:15 [INFO] ▶ Analyzing c7657e0e3c496d75cf5c0511a391316df231a27f5d3d30fdc7b905cc146bc947
2020/03/24 11:13:15 [INFO] ▶ Analyzing 0a531239f38dafd64b3ede70cafb0313eaf7f3fbb41a204f1a3be1157d53377e
2020/03/24 11:13:15 [WARN] ▶ Image [atlassian/bitbucket-server:7.1.0] contains 51 total vulnerabilities
2020/03/24 11:13:15 [ERRO] ▶ Image [atlassian/bitbucket-server:7.1.0] contains 51 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.2 --no-progress atlassian/bitbucket-server:7.1.0
2020-03-24T09:13:17.699Z        INFO    Need to update DB
2020-03-24T09:13:17.699Z        INFO    Downloading DB...
2020-03-24T09:13:21.453Z        INFO    Reopening DB...
2020-03-24T09:13:43.482Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.1.0 (ubuntu 18.04)
===============================================
Total: 195 (UNKNOWN: 0, LOW: 33, MEDIUM: 114, HIGH: 43, CRITICAL: 5)
```
