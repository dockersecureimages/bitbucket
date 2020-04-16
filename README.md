# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.1.1-alpine-3.11.5
2020/04/16 11:30:49 [INFO] ▶ Start clair-scanner
2020/04/16 11:30:56 [INFO] ▶ Server listening on port 9279
2020/04/16 11:30:56 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/16 11:30:57 [INFO] ▶ Analyzing 36773a7570177a7e8f051fe5e97e0f3122275fd1ff8e6382b1edc090b92be864
2020/04/16 11:30:58 [INFO] ▶ Analyzing f7ec98d32a4196b6cff7142564176e493d7815bd5977b067fa06e08c163f58e3
2020/04/16 11:30:58 [INFO] ▶ Analyzing b59998e0a8ed98f97ce464009517442ffb14323940f8e52b92c5ab50c0fd0913
2020/04/16 11:30:58 [INFO] ▶ Analyzing fd439622b1600d622cf1d1f6e611c67318389cfd3304ab07fbb207a191cd65e6
2020/04/16 11:30:58 [INFO] ▶ Analyzing 31c3400eef15de6c4775c43de58d833367fd81b2ea414909d33a1cf887ac6b6b
2020/04/16 11:30:59 [INFO] ▶ Image [secureimages/bitbucket:7.1.1-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/bitbucket:7.1.1-alpine-3.11.5
2020-04-16T08:31:01.454Z        INFO    Need to update DB
2020-04-16T08:31:01.454Z        INFO    Downloading DB...
2020-04-16T08:31:16.764Z        INFO    Detecting Alpine vulnerabilities...

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
2020/04/16 11:31:36 [INFO] ▶ Start clair-scanner
2020/04/16 11:32:00 [INFO] ▶ Server listening on port 9279
2020/04/16 11:32:00 [INFO] ▶ Analyzing 9b149207c14ccc7c04f7f633b0a930523710ba21a7b16e2ecfe39d48f66cc21f
2020/04/16 11:32:00 [INFO] ▶ Analyzing cbdf172a7a4a570fda50e47076f05fe92941ea0c16217fcd49ac46ee77266fdd
2020/04/16 11:32:00 [INFO] ▶ Analyzing 98558aadc1dc3c58cfaf76054219beebaa9e77fdd4f69cddbdb3c0139b5e2e26
2020/04/16 11:32:00 [INFO] ▶ Analyzing 0d1696737b748c5cfcab13026189a06bc9af53751a545fb486482c73ff942051
2020/04/16 11:32:00 [INFO] ▶ Analyzing f612b4817c8b3bdbf2c41a8767ca2721bd4d6569e1ab82171d581609be115675
2020/04/16 11:32:00 [INFO] ▶ Analyzing 04376d4c6648b76adfcbbd84b30d56044f67a124cd7c1ae11a00dbbbb239496b
2020/04/16 11:32:00 [INFO] ▶ Analyzing c32b2b245e8698efebde6fc6a01c972b06ecacadf30b54544cbe938f6af9e787
2020/04/16 11:32:00 [INFO] ▶ Analyzing feba1a2451de733e36dddbdb356666683717f2197344f9252a44238148716fa5
2020/04/16 11:32:00 [INFO] ▶ Analyzing 3bf1fe54e65a27465ad07d9217e216283df7cd6c6522b872d3b65d64d52b4942
2020/04/16 11:32:00 [INFO] ▶ Analyzing 47ad7669fb350acd07235ed71b425ba332b38c9d65932601f5d8e295b1de62d4
2020/04/16 11:32:00 [INFO] ▶ Analyzing e2f20f643d67ff57b8f3daf61e610749b770bb526c4bc5a5b4aa9b285a11e0bf
2020/04/16 11:32:00 [INFO] ▶ Analyzing 1b8d2eef70a258e403514486b54606371bb3726c392cf3fc91e107330ae2f701
2020/04/16 11:32:00 [INFO] ▶ Analyzing 4ed5e79b4b20c78628512edadce3c6e1d7d7938c153225f22eed3f08eed59e3e
2020/04/16 11:32:01 [INFO] ▶ Analyzing 1b590ce3a4b9b6640bb0fe0439f2c457a950bc5235cc434ccdd8c9b65ddeb2d8
2020/04/16 11:32:01 [INFO] ▶ Analyzing a26f2dc268565e76a1f13de48d6f616d9eedf09c04e60f02ee22800945707b7a
2020/04/16 11:32:01 [WARN] ▶ Image [atlassian/bitbucket-server:7.1.1] contains 54 total vulnerabilities
2020/04/16 11:32:01 [ERRO] ▶ Image [atlassian/bitbucket-server:7.1.1] contains 54 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress atlassian/bitbucket-server:7.1.1
2020-04-16T08:32:04.272Z        INFO    Need to update DB
2020-04-16T08:32:04.272Z        INFO    Downloading DB...
2020-04-16T08:32:44.869Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.1.1 (ubuntu 18.04)
===============================================
Total: 201 (UNKNOWN: 1, LOW: 37, MEDIUM: 118, HIGH: 42, CRITICAL: 3)
```
