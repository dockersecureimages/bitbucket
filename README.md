# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:6.10.1-alpine-3.11.3
2020/02/11 10:42:37 [INFO] ▶ Start clair-scanner
2020/02/11 10:42:45 [INFO] ▶ Server listening on port 9279
2020/02/11 10:42:45 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/11 10:42:46 [INFO] ▶ Analyzing b00a025c4bd1bdabb5edfb0f2a968cb3a14296fc1208a3a1b2bc9b18b96208dd
2020/02/11 10:42:47 [INFO] ▶ Analyzing c2d0f3ef363834c1c0e7f8ea5083859df311ca7fdaf25aef71ed5fe021f806e1
2020/02/11 10:42:47 [INFO] ▶ Analyzing 8d49a771872e3a3204de5d38f1bc6d7178e2e9aef1acea5e374fce6cb19f3fb0
2020/02/11 10:42:47 [INFO] ▶ Analyzing 73b5463f83ab7d860ea5a31a95d5f4bf7b815742109468af4cb9e5e5e1b77a6f
2020/02/11 10:42:47 [INFO] ▶ Analyzing c2f083bf7171749892fbf01f3e016cc946efce56821c498ac9e6d4f9d95da901
2020/02/11 10:42:47 [INFO] ▶ Image [secureimages/bitbucket:6.10.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/bitbucket:6.10.1-alpine-3.11.3
2020-02-11T08:42:50.222Z        INFO    Need to update DB
2020-02-11T08:42:50.223Z        INFO    Downloading DB...
2020-02-11T08:42:54.377Z        INFO    Reopening DB...
2020-02-11T08:43:03.763Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:6.10.1-alpine-3.11.3 (alpine 3.11.3)
===========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:6.10.1
```

Security scanning using Clair
```
2020/02/11 10:43:12 [INFO] ▶ Start clair-scanner
2020/02/11 10:43:27 [INFO] ▶ Server listening on port 9279
2020/02/11 10:43:27 [INFO] ▶ Analyzing 0a83f61838ece143b24a4555f0b9ee1cd45e1a9f4af16a5b2f714868b4ae6546
2020/02/11 10:43:28 [INFO] ▶ Analyzing 076ba28069d5d2c1520533138630ca87b29cb86ea460ab08a39df8b77d5425a0
2020/02/11 10:43:28 [INFO] ▶ Analyzing 70e53499a05a2ed55f7e0e8750870f3c5b2cd1fd5c5583086a1ba4dc9f3e5915
2020/02/11 10:43:28 [INFO] ▶ Analyzing a1a84f0f6a99a7d15e5b85e6d3df412ce94227aaee11a373667e9edad23f5646
2020/02/11 10:43:28 [INFO] ▶ Analyzing 3f3625cc18ad8ffa8c25f307ff6997add53b76101fb71b226e43dcc9f3cc6e15
2020/02/11 10:43:28 [INFO] ▶ Analyzing cd341d9de287c0639fb341f3760cbe0e74eb2af4e2044592ef3f56ff4e9aa3a4
2020/02/11 10:43:28 [INFO] ▶ Analyzing da7db703b7127825bea42804e7d4e8598547d3141c69b5afd8470052febc736a
2020/02/11 10:43:28 [INFO] ▶ Analyzing c50763e7dfc1db926d074724b1e20b90794158c4faf799b8168c2ce541ae52b2
2020/02/11 10:43:28 [INFO] ▶ Analyzing 340d10c2e454696fc7b2ab81f04fd41345c09506dc5bc74e53af4bbbda616cab
2020/02/11 10:43:28 [INFO] ▶ Analyzing daaeb69778f0b250a5f0dbca23f9164e3b4b2819fad027c202194fe15b415071
2020/02/11 10:43:28 [INFO] ▶ Analyzing a44f7fc16046dba4ecf4b152ed86cbbf7aa780603444de613f7c2608dcb2da9d
2020/02/11 10:43:28 [INFO] ▶ Analyzing 8f148b3a0140ab01a6256f7c78763f2b383a70a87c378bc6683664995a6e8a74
2020/02/11 10:43:28 [INFO] ▶ Analyzing 9a671b57115532224eb40ad492e7c7b18015c2064dff7f2ce3acca6de43bc553
2020/02/11 10:43:28 [INFO] ▶ Analyzing aee2bec40ec924dd4a8d1fbee7feee34894e13ca22b3eaa7f910dac054f766ad
2020/02/11 10:43:29 [INFO] ▶ Analyzing d7e05fc6344f7e451c918930e417e1e5c5626993872ea5588edf90e6fdf2ca3e
2020/02/11 10:43:29 [INFO] ▶ Analyzing b33138a2de04b529c633a70862545d1fa1cd4ae461e56acf0b85f6d1b3f7d5a4
2020/02/11 10:43:29 [WARN] ▶ Image [atlassian/bitbucket-server:6.10.1] contains 48 total vulnerabilities
2020/02/11 10:43:29 [ERRO] ▶ Image [atlassian/bitbucket-server:6.10.1] contains 48 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress atlassian/bitbucket-server:6.10.1
2020-02-11T08:43:31.708Z        INFO    Need to update DB
2020-02-11T08:43:31.708Z        INFO    Downloading DB...
2020-02-11T08:43:35.868Z        INFO    Reopening DB...
2020-02-11T08:43:51.186Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:6.10.1 (ubuntu 18.04)
================================================
Total: 187 (UNKNOWN: 0, LOW: 30, MEDIUM: 108, HIGH: 45, CRITICAL: 4)
```
