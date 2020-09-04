# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~664MB)

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.5.1-alpine-3.12.0
2020/09/04 15:32:25 [INFO] ▶ Start clair-scanner
2020/09/04 15:32:31 [INFO] ▶ Server listening on port 9279
2020/09/04 15:32:31 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/09/04 15:32:31 [INFO] ▶ Analyzing fd70ccfd960ea9423ba5b2378d53373ba3db996173a9bb4a5116a8af9879ddd1
2020/09/04 15:32:36 [INFO] ▶ Analyzing 5f448402365b7beab8a3042b7e67cce9774ebc04106a3b131a02a439e37e821b
2020/09/04 15:32:36 [INFO] ▶ Analyzing d619875371b4018242a09fb0f35d39b8806f05519c68bccb8986dd7922c11d03
2020/09/04 15:32:36 [INFO] ▶ Analyzing 481c703ea9613306cb68a74d2a17a20470e7888a8339f7d635611a9f6d2cf824
2020/09/04 15:32:36 [INFO] ▶ Analyzing 319dbb6effc979295c84399b0face7b97673a44d017ecf2b370899e35ae48f6a
2020/09/04 15:32:36 [INFO] ▶ Image [secureimages/bitbucket:7.5.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress secureimages/bitbucket:7.5.1-alpine-3.12.0
2020-09-04T15:32:48.252Z        INFO    Need to update DB
2020-09-04T15:32:48.252Z        INFO    Downloading DB...
2020-09-04T15:32:59.593Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.5.1-alpine-3.12.0 (alpine 3.12.0)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~971MB)

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.5.1
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.5.1
2020/09/04 15:33:05 [INFO] ▶ Start clair-scanner
2020/09/04 15:33:20 [INFO] ▶ Server listening on port 9279
2020/09/04 15:33:20 [INFO] ▶ Analyzing c46312971b989857795a66c3a16a6c5ad3faf70f68a86374d05fc98271302d31
2020/09/04 15:33:20 [INFO] ▶ Analyzing d5daf2b531bb4b815a1be1530978615e27bbc862258d1fd287df43a3b662181a
2020/09/04 15:33:20 [INFO] ▶ Analyzing 989dbccc76e96e34b561b0eef7753f3134b58ab454b5b222a965ff87e25cf9fb
2020/09/04 15:33:20 [INFO] ▶ Analyzing 16191067d3bf92aa3d59d244f8b1e91d2c656cbe68304eaade0f4a7d0204648c
2020/09/04 15:33:20 [INFO] ▶ Analyzing aa8841fd4b53337dcecd11d73d685fbc46bb1d8b219ff6b114817cd8418ac853
2020/09/04 15:33:20 [INFO] ▶ Analyzing 44f89f27c07f67d8e17cb7b1104d7c0fb79743713ea0ecc6c4cf29bb447c1cd1
2020/09/04 15:33:20 [INFO] ▶ Analyzing 4d9790be0bf64461786290560a083a1d3810197e9a6692e7015bbd372cee5ab8
2020/09/04 15:33:20 [INFO] ▶ Analyzing 5d6f7c1a6ac2379eaf5efae942cd686ae37a8aa0e74c5670d3fa06812e3e0d0b
2020/09/04 15:33:21 [INFO] ▶ Analyzing e5c61a6ef621d832d9891227d88967a3c3266dc4af3f16d480cea700bf98d25f
2020/09/04 15:33:21 [INFO] ▶ Analyzing 6b98d827419f9f443f243da05dc7d3f97375c80e7b41ddb4c4cf48771c21f218
2020/09/04 15:33:22 [INFO] ▶ Analyzing 24c5699709c302050f73ffa567b94a42436079434899ed7bdb8d7fe4c9d0b30f
2020/09/04 15:33:22 [INFO] ▶ Analyzing 2206ee015e0bec42606503cf94514d2437c339eafc397dce550a2acc1b0559c2
2020/09/04 15:33:22 [INFO] ▶ Analyzing ab7b767bcd56c4b7b12df25201d4798c3cf6114acbcda4cb8367cdf2677dac69
2020/09/04 15:33:22 [INFO] ▶ Analyzing 2e873a7c0819d45ac65a79e267627113f6956c23413858de22f9874d3a826135
2020/09/04 15:33:22 [INFO] ▶ Analyzing 6f1166b3de36c70c977804c0771d30ff9d50586c2e3bc7fa4d2174bc890655dc
2020/09/04 15:33:22 [WARN] ▶ Image [atlassian/bitbucket-server:7.5.1] contains 42 total vulnerabilities
2020/09/04 15:33:22 [ERRO] ▶ Image [atlassian/bitbucket-server:7.5.1] contains 42 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress atlassian/bitbucket-server:7.5.1
2020-09-04T15:33:24.350Z        INFO    Need to update DB
2020-09-04T15:33:24.350Z        INFO    Downloading DB...
2020-09-04T15:33:44.237Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.5.1 (ubuntu 18.04)
===============================================
Total: 151 (UNKNOWN: 0, LOW: 126, MEDIUM: 25, HIGH: 0, CRITICAL: 0)
```
