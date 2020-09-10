# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~664MB)

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.5.2-alpine-3.12.0
2020/09/10 19:36:49 [INFO] ▶ Start clair-scanner
2020/09/10 19:36:56 [INFO] ▶ Server listening on port 9279
2020/09/10 19:36:56 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/09/10 19:36:56 [INFO] ▶ Analyzing 8ba64b261b70ed93433bb5126969d493a5da1aefeba41ae53ec9fd3eb14d29c8
2020/09/10 19:36:56 [INFO] ▶ Analyzing 765eac1007450f3008504618f2fab52436ef00eabc79e2ae22f37c85a9ff6cb2
2020/09/10 19:36:56 [INFO] ▶ Analyzing 51510dad191ff400831584f069da304b98fc09c63401af2da5e6ac8fc44311dd
2020/09/10 19:36:56 [INFO] ▶ Analyzing 4444a334ae3389a31ffb7f45045924a9abf5aa2282a2a504d145d9667b5a8461
2020/09/10 19:36:56 [INFO] ▶ Analyzing 6656a4602b4dc0c09f853756946dacf41cca9778e04b4955b778a2bc5f1c5812
2020/09/10 19:36:56 [INFO] ▶ Image [secureimages/bitbucket:7.5.2-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress secureimages/bitbucket:7.5.2-alpine-3.12.0
2020-09-10T19:36:58.006Z        INFO    Need to update DB
2020-09-10T19:36:58.006Z        INFO    Downloading DB...
2020-09-10T19:37:10.422Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.5.2-alpine-3.12.0 (alpine 3.12.0)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~972MB)

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.5.2
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.5.2
2020/09/10 19:37:15 [INFO] ▶ Start clair-scanner
2020/09/10 19:37:29 [INFO] ▶ Server listening on port 9279
2020/09/10 19:37:29 [INFO] ▶ Analyzing c46312971b989857795a66c3a16a6c5ad3faf70f68a86374d05fc98271302d31
2020/09/10 19:37:29 [INFO] ▶ Analyzing d5daf2b531bb4b815a1be1530978615e27bbc862258d1fd287df43a3b662181a
2020/09/10 19:37:29 [INFO] ▶ Analyzing 989dbccc76e96e34b561b0eef7753f3134b58ab454b5b222a965ff87e25cf9fb
2020/09/10 19:37:29 [INFO] ▶ Analyzing 16191067d3bf92aa3d59d244f8b1e91d2c656cbe68304eaade0f4a7d0204648c
2020/09/10 19:37:29 [INFO] ▶ Analyzing aa8841fd4b53337dcecd11d73d685fbc46bb1d8b219ff6b114817cd8418ac853
2020/09/10 19:37:29 [INFO] ▶ Analyzing 44f89f27c07f67d8e17cb7b1104d7c0fb79743713ea0ecc6c4cf29bb447c1cd1
2020/09/10 19:37:29 [INFO] ▶ Analyzing f2cf48713419dc58a8847423dc61162283582d4e3d588fbb17f48969ab38ea9f
2020/09/10 19:37:29 [INFO] ▶ Analyzing d0552a1d44c015057b7e89f28592c80e1e9c4c4b00a1adf040c1837453ef1ebe
2020/09/10 19:37:30 [INFO] ▶ Analyzing e03d32a2249f7a656942ea4c6f8d1a780a9c1e40e40d9fd0cefc5f8988653f3d
2020/09/10 19:37:30 [INFO] ▶ Analyzing e3d9b4666f3aa4936b328c6420988f0484d385c25cbae7ea83a3c7f6efa8d841
2020/09/10 19:37:31 [INFO] ▶ Analyzing 9bd38fe4f06e5136eaa3d42dde7e9e25f40f147ebcf0a31c8246422a1f47f176
2020/09/10 19:37:31 [INFO] ▶ Analyzing 5e30c901c911a30f2529eae0c2c851c3b498f22b5712f071b75a2a8e761c2873
2020/09/10 19:37:31 [INFO] ▶ Analyzing a946ea0c89533c8c578f16ddccc68e74983f804da3ddd3ee8b102c55b17191ff
2020/09/10 19:37:32 [INFO] ▶ Analyzing 82f05dbeca4f293206ab86bd9a0de42633e7fefff4364771da7dd8bf9d65746f
2020/09/10 19:37:32 [INFO] ▶ Analyzing 7ad3c21beb2220d2438c769b96ceb1c1bd230148c30558b658791fd3001d7bd0
2020/09/10 19:37:32 [WARN] ▶ Image [atlassian/bitbucket-server:7.5.2] contains 42 total vulnerabilities
2020/09/10 19:37:32 [ERRO] ▶ Image [atlassian/bitbucket-server:7.5.2] contains 42 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress atlassian/bitbucket-server:7.5.2
2020-09-10T19:37:34.548Z        INFO    Need to update DB
2020-09-10T19:37:34.549Z        INFO    Downloading DB...
2020-09-10T19:37:54.748Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.5.2 (ubuntu 18.04)
===============================================
Total: 137 (UNKNOWN: 0, LOW: 117, MEDIUM: 20, HIGH: 0, CRITICAL: 0)
```
