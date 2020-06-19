# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~667MB)

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.3.1-alpine-3.12.0
2020/06/19 21:39:23 [INFO] ▶ Start clair-scanner
2020/06/19 21:39:30 [INFO] ▶ Server listening on port 9279
2020/06/19 21:39:30 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/19 21:39:30 [INFO] ▶ Analyzing 0598844954e48056238bdc9bc2825a95c0d127f1623df89cd48e307ed44eebe6
2020/06/19 21:39:31 [INFO] ▶ Analyzing 9eefb9c1e13b1a3741647c7061ee316e512adebd57707cf01884c55b63f6d959
2020/06/19 21:39:31 [INFO] ▶ Analyzing b1deb8a6297457f826c41e790824d6fd787d83d03d8ed0464fa501eba60ad4a9
2020/06/19 21:39:31 [INFO] ▶ Analyzing 686250b1a77584c78750636a2fa1462a2e296d8fb1a5b275b38e1d23654cd96e
2020/06/19 21:39:31 [INFO] ▶ Analyzing 6b693b4e302cef5e254cb1c5004c0f10d41974683fddeb8f8803f0b1ec6fe6c8
2020/06/19 21:39:31 [INFO] ▶ Image [secureimages/bitbucket:7.3.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/bitbucket:7.3.1-alpine-3.12.0
2020-06-19T18:39:34.464Z        INFO    Need to update DB
2020-06-19T18:39:34.464Z        INFO    Downloading DB...
2020-06-19T18:39:48.358Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.3.1-alpine-3.12.0 (alpine 3.12.0)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~966MB)

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.3.1
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.3.1
2020/06/19 21:39:53 [INFO] ▶ Start clair-scanner
2020/06/19 21:40:07 [INFO] ▶ Server listening on port 9279
2020/06/19 21:40:07 [INFO] ▶ Analyzing 4046a0366bf3d63d6ebb165835dd7cd4a72c49d65942a66efb1b4a44bf5803b2
2020/06/19 21:40:07 [INFO] ▶ Analyzing cb6f8e1a8e2c47f2e7eda433f9afb3ce6debe0131ba556f6ab516f1092b589be
2020/06/19 21:40:07 [INFO] ▶ Analyzing f81f5853c77138f4f3bef3fe7a639070314c8b38f66f03f57055b5d9055c5c7a
2020/06/19 21:40:07 [INFO] ▶ Analyzing 5171a8ddd9ca89e576ef04f932cfff352168ff2e06f856cc05d09b998989c8c5
2020/06/19 21:40:07 [INFO] ▶ Analyzing 1f57d26728894cc8af89d0b20d65b58665f2a61b3c79a0bb15dac3f75a87857c
2020/06/19 21:40:08 [INFO] ▶ Analyzing bbbb9e1c8917a5c71485f1bbb149f2b7a7194c890717c9160dc2aabe5d66e6d8
2020/06/19 21:40:08 [INFO] ▶ Analyzing 6d3a68867326f09e3fd549aa31c51274006a10bee40ad5e7f4089662bd726ce2
2020/06/19 21:40:08 [INFO] ▶ Analyzing c041eb682d107dda89e2aabc1d5e7d51e179fccf5a24e5b884a8d2ce01c5d4ae
2020/06/19 21:40:08 [INFO] ▶ Analyzing 2fbc62ffd54949e842fa4cacceafa67ac412a107a9faf93a7d3402c84210c5ac
2020/06/19 21:40:08 [INFO] ▶ Analyzing f83b848b22702050f34645cf45204ace60bfb74fc7d9df60be7cd5027a7fbc8f
2020/06/19 21:40:09 [INFO] ▶ Analyzing 36fde25e8b8ca33a56f701ef3906ae1314f9cb5e97a6d70f4e1e025273b1f337
2020/06/19 21:40:09 [INFO] ▶ Analyzing 8235e459d7a513fa5cc202a0bdb58529af0148a0edd835ea52ffd8c545419bb1
2020/06/19 21:40:09 [INFO] ▶ Analyzing fd5ab3ee2ba115527f559ec4e635b6c27fc02252a8fecd779daac69e17088463
2020/06/19 21:40:09 [INFO] ▶ Analyzing b28833c6aeec3f45a80aa8de542776765ce908cdf7733f518cb2835dbbfa3a22
2020/06/19 21:40:09 [INFO] ▶ Analyzing ee3f20ae1aeea9232687b3641074fad287539387c3fdbe8500ae1c3187fdaef1
2020/06/19 21:40:09 [WARN] ▶ Image [atlassian/bitbucket-server:7.3.1] contains 52 total vulnerabilities
2020/06/19 21:40:09 [ERRO] ▶ Image [atlassian/bitbucket-server:7.3.1] contains 52 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress atlassian/bitbucket-server:7.3.1
2020-06-19T18:40:11.536Z        INFO    Need to update DB
2020-06-19T18:40:11.536Z        INFO    Downloading DB...
2020-06-19T18:40:33.388Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.3.1 (ubuntu 18.04)
===============================================
Total: 202 (UNKNOWN: 0, LOW: 140, MEDIUM: 62, HIGH: 0, CRITICAL: 0)
```
